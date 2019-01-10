#!perl6

my %stories = %(
  1 => 'substitute'
);

while (True) {


  my $c = choices();

  exit if $c eq '0';

  my $story = %stories{$c};

  shell "strun --root topics/strings --task=strings --param story=$story";

  #last;
}

sub choices {

  while (True) {

say q:to/HERE/;
choose case to learn:
=====================
1 => substitue # hwo to make replacements in strings
---
type 0 to exit
HERE

    my $r = prompt();
    if $r ~~ /^ 0 | 1 $/ {
      return $r;
    } else {
      say "\n";
      next
    }
  
  }
}

