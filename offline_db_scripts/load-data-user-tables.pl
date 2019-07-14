print "use ndaybook;\n\n";

open (USERS, 'user-list.txt') || die "can't open user-list.txt for reading: $!";
while (<USERS>)
{
    chomp;
    my $user = $_;
    $user =~ s/^\s+//;
    $user =~ s/\s+$//;
    $filename = $user.'_subset.txt';
    $tablename = $user.'_subset';
    print <<"EOF";
truncate table $tablename;

load data local infile 'E:/as/databases/daybook/$filename' into table $tablename fields terminated by '\\t';

EOF
   
}
