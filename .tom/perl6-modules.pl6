#!perl6

my %stories = %(
  1 => 'export-function',
  2 => 'call-none-exported-function'
);

while (True) {


  my $c = choices();

  exit if $c eq '0';

  my $story = %stories{$c};

  shell "strun --root topics/modules --task=modules --param story=$story";

  #last;
}

sub choices {

  while (True) {

say q:to/HERE/;
choose case to learn:
=====================
1 => exported functions # how to create a module with exported function in Perl5 @EXPORT way
2 => none exported functions # how to create a module with none exported function and call it outside the module
---
type 0 to exit
HERE

    my $r = prompt();
    if $r ~~ /^ 0 | 1 | 2 $/ {
      return $r;
    } else {
      say "\n";
      next
    }
  
  }
}

