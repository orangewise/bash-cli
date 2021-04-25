#!/usr/bin/env bash
while getopts a:b:c: flag
do
    case "${flag}" in
        a) a=${OPTARG};;
        b) b=${OPTARG};;
        c) c=${OPTARG};;
    esac
done

: ${a:?Missing -a} ${b:?Missing -b}
# The : command is a utility that doesn't do anything,
# but its argument would still be processed by the calling shell,
# like for all commands.
# With the line above, the shell would try to expand the a and b variables,
# and if the variable is unset, or if the expansion results in an empty string,
# then the string to the right after ? will be outputted and the script will
# terminate with a non-zero exit status.

echo "a: $a";
echo "b: $b";
echo "c: $c";