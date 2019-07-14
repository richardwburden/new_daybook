$/ = 'Xeol%X%X';
while (<>)
{
    chomp;
    $_ =~ s%\n%<line break>%g;
    $_ =~ s%\t%<tab in column>%g;
    $_ =~ s/Xeoc%X%X/\t/g;
    print $_."\n";
}
