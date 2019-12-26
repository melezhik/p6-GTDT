#!perl6

my @a = ("b", "c", "a"); 
say sort &[cmp], @a;


my @b =  (2, 1, 3);
say sort &[cmp], @b;
