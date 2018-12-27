#!perl6

my %a = %( foo => ("a", "b", "c")); 

say %a<foo>.grep({ $_ eq "b" }).sort({.a cmp .b})
