#!perl6

my %a is Map  = ( foo => ("b", "c", "a")); 
say sort &[cmp], %a<foo>
