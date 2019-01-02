#!perl6

my %stories = %(
  1 => 'defined-param',
  2 => 'read-write-trait',
  3 => 'no-return-value'
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
1 => defined-param      # how to create procedure that accept only defined parameters
2 => read-write-trait   # how to create procedure that change input parameters
3 => no-return-value    # How can I force a function signature to indicate no return value?
---
type 0 to exit
HERE

    my $r = prompt();
    if $r ~~ /^ 0| 1 | 2 | 3 $/ {
      return $r;
    } else {
      say "\n";
      next
    }
  
  }
}

