use File::Find;
use File::Copy;


my %versions = ();
my @version_filenames = ();
$pdoc_id = "";
$pversion = "";

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
	print "Working directory: $File::Find::name\n"; 
	next
    }
    if ($_ !~ /^([a-z0-9][0-9][0-9][0-9][0-9][a-z][a-z][a-z_]\.[0-9][0-9][0-9])\.([0-9]+)/i) {next}
    my $doc_id = $1;
    my $version = $2;
 
    if ($pversion ne "" and $version ne $pversion)
    {
	if (@version_filenames > 1)
	{
	    resolveVersion($doc_id.$pversion);
	}
	@version_filenames = ();
    }
    else
    {
	push @version_filenames, $_;
    }
    $pversion = $version;

    if ($doc_id eq $pdoc_id)
    {
	my @stat = stat($_);
	my $mtime = $stat[9];
	$versions{$version} = $mtime;
    }
    else
    {
	checkVersions($pdoc_id);
	$pdoc_id = $doc_id;
    }
}


sub checkVersions
{
    my $doc_id = $_[0];
    my @versions = sort {$a <=> $b} keys %versions; 
    my $maxMtime = 0;
    foreach $version (@versions)
    {
	my $mtime = $versions{$version};
	if ($mtime < $maxMtime - 60)
	{
	    my $filename = "$doc_id.$version.txt";
	    print ("VMS version $filename out of order\n");
	   # unlink $filename;
	}
	else
	{
	    $maxMtime = $mtime
	}
    }
    %versions = ();
}

#replace all files with same doc_id and version with the newest, and make sure that has a .txt extension.
sub resolveVersion
{
    my $basefn = $_[0]; #doc_id.version, e.g. b9307aaa001.12
    my $maxMtime = 0;
    my $vfn = "";
    foreach $fn (@version_filenames)
    {
	my @stat = stat($fn);
	my $mtime = $stat[9];
	if ($mtime > $maxMtime) {$vfn = $fn}
    }
    foreach $fn (@version_filenames)
    {
	if ($fn ne $vfn)
	{
	    #remove all but the newest file with same version number
	    unlink $fn;
	}
    }
    if ($vfn ne $basefn.'.txt')
    {
	move ($vfn, $basefn.'.txt');
    }
}
