#!perl6

my %a is Map  = ( foo => ("a", "b", "c")); 
say sort { .a cmp .b }, grep { $_ eq "b" }, %a<foo>
