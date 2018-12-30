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

  shell "strun --root topics/grep-sort/ --task=grep-sort --param story=$story";

  #last;
}

sub choices {

  while (True) {

say q:to/HERE/;
choose case to learn:
=====================
1 => is-map         # alternative way to declare Hash of Arrays, don't require decontainerization for sort/map/grep
2 => hash-of-arrays # classic way of sort/map/grep with Hash of Arrays, require decontainerization for sort/map/grep
3 => sort-function  # how to call sort function both for Ints and Strings
4 => method-form    # sort{}.map{}.grep{} like in Ruby!
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

