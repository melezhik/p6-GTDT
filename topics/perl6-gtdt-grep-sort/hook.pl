#!perl

use strict;

my $story=config()->{story};
my $stories=config()->{stories};

if ($story) {
  run_story($story)
} else {
  for my $s (@$stories){
    run_story($s)
  }
}

