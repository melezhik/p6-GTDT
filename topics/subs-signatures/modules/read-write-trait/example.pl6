#!perl6

sub oknicate($this is rw) {
    $this = 42;
}
my $foo = 666;
oknicate($foo); # no problem
say $foo;       # 42

