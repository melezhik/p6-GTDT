#!bash

set -e

cd $task_dir/../$(config topic)/$(config subtopic)

echo ============
echo description:
echo ============
cat meta.txt
echo ============
echo example.pl6:
echo ============
cat example.pl6
echo ============
echo output:
echo ============
perl6 example.pl6 2>&1

