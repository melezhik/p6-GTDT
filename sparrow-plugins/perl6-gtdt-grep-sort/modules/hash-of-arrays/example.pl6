#!perl6

my %a = %( foo => ("a", "b", "c")); 
say sort { .a cmp .b }, grep { $_ eq "b" }, %a<foo><>

