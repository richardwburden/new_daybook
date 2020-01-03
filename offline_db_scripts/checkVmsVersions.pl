use File::Find;
use File::Copy;
use Cwd;

#assumed: the directory listing is in ascending order by doc_id then by version, so all filenames of a given version are together and all versions of a doc_id are together.
#N.B. 'version' in this program refers to the VMS version number of the file, NOT the file's contents.  This program does not copy or otherwise alter the content of any version of any file, but it does delete files whose version number is out of order, i.e., a file that is more than six hours older than another file with the same doc id and a lower VMS version number will be deleted, so that the newest file(s) within one minute of each other will have the highest version numbers.  The six hour range is allowed because the modification times on the files are the times at which the files were FTP'd from the VMS system to this one, which might be out of order by a few minutes, whereas it is assumed that the VMS version ordering on the VMS system is correct; therefore, we wish to preserve the VMS version numbers unless it is clear that the files on this system are out of order because one or more versions have been deleted on the VMS system since the previous update; in such a case, the versions will be out of order by the length of time between updates, typically several days.

my $maximum_allowed_version_mtime_disorder = 6*3600;

#hash stores modification time (mtime) of each version of current doc_id
my %versions = ();
#list of filenames for the current version of the current doc_id
my @version_filenames = ();
#previous doc_id and version encountered in the loop.
my $doc_id = "";
my $pdoc_id = "";
my $version = "";
my $pversion = "";
my @stat = ();
my $mtime = 0;
my $lastdir = "";

#process the input file/directory/glob pattern.

if (@ARGV > 0) 
{
    while (@ARGV)
    {
	my $dir = shift @ARGV;
	find(\&wanted, $dir);
    }
}
else
{print "Usage: $0 directory [directory ...]\n"; exit}



sub wanted
{
    if (not -f $_) 
    {
	print "Entering directory $File::Find::name\n"; 
	print STDERR "Entering directory $File::Find::name\n"; 
	next
    }
    if ($_ !~ /^([a-z0-9][0-9][0-9][0-9][0-9]...\....)\.([0-9]+)/i) 
    {
	print "Skipping file $File::Find::name\n"; 
	next
    }
    $doc_id = $1;
    $version = $2;
    my $dir = getcwd;
    
    if ($pdoc_id ne "" and $doc_id ne $pdoc_id)
    {
	#we've reached a new doc_id.  If we've also begun a new directory, go back to the previous directory to finish processing the previous doc_id.
	if ($dir ne $lastdir)
	{
	    chdir ($lastdir);
	}
	$correctfn = resolveVersion("$pdoc_id.$pversion");
	#add the previous version number to the hash for this doc_id
	@stat = stat($correctfn);
	$mtime = $stat[9];
	if (! defined($mtime))
	{
	    warn "can't find modification time for $dir/$correctfn: $!";
	}
	$versions{$pversion} = $mtime;
	checkVersions($pdoc_id);
	if ($dir ne $lastdir)
	{
	    chdir ($dir);
	}
	#reset version-mtime hash, list of filenames for the current version, and previous version, and copy current doc_id to previous doc_id
	%versions = ();
	@version_filenames = ();
    }
    elsif ($pversion ne "" and $version ne $pversion)
    {
	#we've reached a new version.  no need to check whether we've reached a new directory; all versions of a doc_id will be in the same directory.
	$correctfn = resolveVersion("$doc_id.$pversion");
	
	#reset list of filenames for the previous version
	@version_filenames = ();


	#add the previous version number to the hash for this doc_id
	@stat = stat($correctfn);
	$mtime = $stat[9];
	if (! defined($mtime))
	{
	    warn "can't find modification time for $dir/$correctfn: $!";
	}
	$versions{$pversion} = $mtime;

        #copy current version to previous version (we copy the version number, NOT the contents of the file)
    }
    push @version_filenames, $_;
    $pdoc_id = $doc_id;
    $pversion = $version;
    $lastdir = $File::Find::dir;
}
$savedDir = getcwd;
chdir ($lastdir);
#process last item in loop
$correctfn = resolveVersion("$pdoc_id.$pversion");
@stat = stat($correctfn);
$mtime = $stat[9];
if (! defined($mtime))
{
    my $dir = getcwd;
    warn "can't find modification time for $dir/$correctfn: $!";
}

$versions{$pversion} = $mtime;
checkVersions($pdoc_id);
chdir ($savedDir);


sub checkVersions
{
    my $doc_id = $_[0];
    my @versions = sort {$a <=> $b} keys %versions; 
    my $maxMtime = 0;
    foreach $version (@versions)
    {
	my $mtime = $versions{$version};
	if ($mtime < $maxMtime - $maximum_allowed_version_mtime_disorder)
	{
	    my $filename = "$doc_id.$version.txt";
	    print ("VMS version $filename out of order; deleting\n");
	    unlink $filename;
	}
	else
	{
	    $maxMtime = $mtime
	}
    }
}

#replace all files with same doc_id and version with the newest, and make sure that has a .txt extension.
sub resolveVersion
{
    my $basefn = $_[0]; #doc_id.version, e.g. b9307aaa001.12
    my $correctfn = $basefn.'.txt';
    my $maxMtime = 0;
    my $vfn = "";
    foreach $fn (@version_filenames)
    {
	my @stat = stat($fn);
	my $mtime = $stat[9];
	if (! defined($mtime))
	{
	    my $dir = getcwd;
	    warn "can't find modification time for $dir/$fn: $!";
	}
	if ($mtime > $maxMtime) 
	{
	    $vfn = $fn;
	    $maxMtime = $mtime;
	}
    }
    foreach $fn (@version_filenames)
    {
	if ($fn ne $vfn)
	{
	    #remove all but the newest file with same version number
	    print ("deleting $fn\n");
	    unlink $fn;
	}
    }
    if ($vfn ne $correctfn)
    {
        print ("renaming '$vfn' as '$correctfn'\n");
	move ($vfn, $correctfn);
    }
    #for debugging purposes, don't change the filename yet
    #return $vfn;
    return $correctfn;
}
