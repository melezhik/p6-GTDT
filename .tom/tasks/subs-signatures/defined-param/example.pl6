#!perl6

sub foo(Int:D $bar) { 1 }   # only accept instances of Int
foo(Int);                   # call with a type object

