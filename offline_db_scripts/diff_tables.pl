use File::Spec;
use Fcntl ':mode';

#process the input file/directory/glob pattern.
my $newpath = "";
my $dryRun = 0;
if (defined $ARGV[0]) {$newpath = $ARGV[0]} else {usage();}
if (defined $ARGV[1]) {$oldpath = $ARGV[1]} else {usage();}
if (defined $ARGV[2]) {$dryRun = 1}

my $diffpath = File::Spec->catdir($oldpath,"update");


#Extract filenames from $newpath

$newpath =~ s%/%\\%g;

@newpath = File::Spec->splitpath($newpath);
@newfiles = ();

my $is_directory = 0;
my $mode = undef;
$mode = (stat($newpath))[2];
if (defined $mode)
{$is_directory = S_ISDIR($mode)}

if ($is_directory)
{
    my $globpath = File::Spec->join($newpath,'*.*');
    print "globpath: $globpath\n";
    @newfiles = glob ($globpath);
}
elsif ($newpath[2] =~ /[\?\*]/)
{
    print "globpath: $newpath\n";
    @newfiles = glob ($newpath);
}

else
{@newfiles = ($newpath)}


foreach $newfilepath (@newfiles)
{
    my $filename = (File::Spec->splitpath($newfilepath))[2];
    my $oldfilepath = File::Spec->join($oldpath,$filename);
    my $difffilepath = File::Spec->join($diffpath,$filename);
    my $cmd = "diff \"$oldfilepath\" \"$newfilepath\"  > \"$difffilepath\"";
    if ($dryRun)
    {
	print "$cmd\n";
    }
    else
    {
	system $cmd;
    }
}

sub usage
{
    print "perl $0 <newdir> <olddir> [dry run]\n";
    exit;
}
