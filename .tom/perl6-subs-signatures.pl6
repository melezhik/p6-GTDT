#!perl6

my %stories = %(
  1 => 'defined-param',
);

while (True) {


  my $c = choices();

  exit if $c eq '0';

  my $story = %stories{$c};

  shell "strun --root topics/subs-signatures/ --task=subs-signatures --param story=$story";

  #last;
}

sub choices {

  while (True) {

say q:to/HERE/;
choose case to learn:
=====================
1 => defined-param // how to create procedure that accept only defined parameters
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

