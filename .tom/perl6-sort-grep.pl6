#!perl6

my %stories = %(
  1 => 'is-map',
  2 => 'hash-of-arrays',
  3 => 'sort-function',
  4 => 'method-form'
);

while (True) {


  my $c = choices();

  exit if $c eq '0';

  my $story = %stories{$c};

  shell "strun --root topics/perl6-gtdt-grep-sort/ --task=perl6-gtdt-grep-sort --param story=$story";

  #last;
}

sub choices {

  while (True) {

say q:to/HERE/;
choose case to learn:
=====================
1 => is-map
2 => hash-of-arrays
3 => sort-function
4 => method-form
---
type 0 to exit
HERE

    my $r = prompt();
    if $r ~~ /^ 0| 1 | 2 | 3 | 4 $/ {
      return $r;
    } else {
      say "\n";
      next
    }
  
  }
}

