

open (USERS, 'user-list.txt') || die "can't open user-list.txt for reading: $!";
while (<USERS>)
{
    chomp;
    my $user = $_;
    $user =~ s/^\s+//;
    $user =~ s/\s+$//;

    print <<"EOF";
GRANT SELECT ON ndaybook.* TO '$user'\@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

EOF
   
}
