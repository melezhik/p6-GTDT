#perl6

use lib ".";

require Foo::Bar;

say "foo say: ",  ::('Foo::Bar::&foo')();


