#!perl6

my $string = "foo-bar";

# simple substitution
# notice that we use `.=subst`
# to change the string rather than
# returning result
# this is called in place replacement
 
$string.=subst("foo","bar");

say "1. [$string]";


# if need to replace all the occurrences
# we add :g modifier:


$string = "foo-bar-foo-bar";

$string.=subst("foo","bar",:g);

say "2. [$string]";

