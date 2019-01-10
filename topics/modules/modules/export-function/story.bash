#!bash

set -e

cd $story_dir

echo ============
echo Foo/Bar.pm6:
echo ============
cat Foo/Bar.pm6
echo ============
echo example.pl6:
echo ============
cat example.pl6
echo ============
echo output:
echo ============
perl6 example.pl6 2>&1

