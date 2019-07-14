use File::Spec;
use File::Find;
use File::Copy;

#process the input file/directory/glob pattern.
my $inpath = "";
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
    if (not -f $_) {print "Working directory: $File::Find::dir\n"; next}
    if ($_ !~ /^[a-z0-9][0-9][0-9][0-9][0-9][a-z][a-z][a-z_]\.[0-9][0-9][0-9]\.[0-9]+/i) {next}
    if (lc(substr($_,-4)) ne ".txt") 
    {
    #print "Working directory: $File::Find::dir\n";
    #print "move($_,$_.'.txt')\n";
	move($_,$_.'.txt');
	$_ .= '.txt';
    }
    open(INPUT,$_) || die "can't open $File::Find::dir\\$_ for reading: $!";
    open (TMP,"+>unix2dos-temp.txt") || die "can't open $File::Find::dir\\unix2dos-temp.txt for writing: $!";
    print "Reading $File::Find::dir\\$_\n";
    
    while ($line = <INPUT>)
    {
	chomp $line;
	print TMP $line."\n";
    }
    close TMP;
    close INPUT;
    open (TMP ,"unix2dos-temp.txt") || die "can't open $File::Find::dir\\unix2dos-temp.txt for reading: $!";
    open(OUTPUT ,">$_") || die "can't open $File::Find::name.txt for writing: $!";
    print "Writing $File::Find::dir\\$_\n";
    while ($line = <TMP>)
    {print OUTPUT $line;}
    close TMP;
    close OUTPUT;
}
