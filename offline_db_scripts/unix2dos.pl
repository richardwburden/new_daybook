use File::Spec;
use Fcntl ':mode';

#process the input file/directory/glob pattern.
my $inpath = "";
if (defined $ARGV[0]) {$inpath = $ARGV[0]}
#Extract filenames from $inpath

$inpath =~ s%/%\\%g;

@inpath = File::Spec->splitpath($inpath);
@infiles = ();

my $is_directory = 0;
my $mode = undef;
$mode = (stat($inpath))[2];
if (defined $mode)
{$is_directory = S_ISDIR($mode)}

if ($is_directory)
{
    my $globpath = File::Spec->join($inpath,'*.*');
    print "globpath: $globpath\n";
    @infiles = glob ($globpath);
}
elsif ($inpath[2] =~ /[\?\*]/)
{
    print "globpath: $inpath\n";
    @infiles = glob ($inpath);
}

else
{@infiles = ($inpath)}


foreach $infilepath (@infiles)
{
    open(INPUT,$infilepath) || die "can't open $infilepath for reading: $!";
    open (TMP,"+>unix2dos-temp.txt") || die "can't open unix2dos-temp.txt for writing: $!";
    print "Reading $infilepath\n";
    
while (<INPUT>)
{
chomp;
print TMP $_."\n";
}
close TMP;
close INPUT;
    open (TMP ,"unix2dos-temp.txt") || die "can't open unix2dos-temp.txt for reading: $!";
    open(OUTPUT ,">$infilepath") || die "can't open $infilepath for writing: $!";
print "Writing $infilepath\n";
while (<TMP>)
{print OUTPUT $_;}
close TMP;
close OUTPUT;

}
