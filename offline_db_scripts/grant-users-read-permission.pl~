

open (USERS, 'user-list.txt') || die "can't open user-list.txt for reading: $!";
while (<USERS>)
{
    chomp;
    my $user = $_;
    $user =~ s/^\s+//;
    $user =~ s/\s+$//;
    my $pwd = genpwd(8);
    my $table_name = $user.'_subset';
    my $index_name = $table_name.'_ind';
    my $view_name = $user.'_full_rpt';

 print "create table $table_name (doc_id char(11) not null, note char(1) not null);\n\
create index $index_name on $table_name(doc_id, note);\n\
create view $view_name as select  m.doc_id, m.doc_class, m.gpo, m.issue_date, m.title, m.security,  m.first_page, m.last_page,  m.sys_code00, m.sys_code01, m.sys_code02, m.sys_code03,  m.sys_text00, m.sys_text01, m.sys_text02, m.sys_text03,  m.stand00, m.stand01, m.stand02, m.subjt00, m.subjt01, m.subjt02,  m.topic_code00, m.topic_code01, m.topic_text00, m.topic_text01,  s.note from  headera m, $table_name s where  m.doc_id = s.doc_id;\n\n\n";

    print <<"EOF";
CREATE USER '$user'\@'%' IDENTIFIED BY '$pwd'; GRANT SELECT, INSERT, UPDATE, DELETE ON ndaybook.$table_name TO '$user'\@'%' REQUIRE NONE WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0;

EOF
   
}

sub genpwd
{
    my $pwdlength = $_[0];
    my $pwd = "";
    for ($i = 0; $i < $pwdlength; $i++)
    {
	my $letter = chr(int(rand(128)));
	if ($letter !~ m%[a-z0-9\-_~!@#$\%^&*()+=;:,<.>/?|\[{\]}]%i)
	{$i--; next}
	else {$pwd .= $letter}
    }
    return $pwd;
}
