use File::Spec;
use File::Find;
use File::Copy;
use File::Path qw(make_path);

#process the input file/directory/glob pattern.
my $inpath = "";
my $pday = "";
my $day = "";
my $pyear = "";

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
	print "Working directory: $File::Find::dir\n"; 
	next
    }
    if ($_ !~ /^[a-z0-9][0-9][0-9][0-9][0-9][a-z][a-z][a-z_]\.[0-9][0-9][0-9]\.[0-9]+\.txt/i) {next}
    $day = substr($_,2,3);
    if ($day ne $pday or $File::Find::dir ne $pyear)
    {
	#print 'make_path('.$day.')'."\n";
	if (! (make_path($day)))
	{
	    warn "Can't create directory $day in $File::Find::dir : $!";
	    next
	}
	$pday = $day;
	$pyear = $File::Find::dir;
    }
    #print 'move('.$_.','.$day.')'."\n";
    move($_,$day);
}
