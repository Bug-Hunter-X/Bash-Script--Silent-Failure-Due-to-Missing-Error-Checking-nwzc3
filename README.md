# Bash Script: Silent Failure Due to Missing Error Checking

This repository demonstrates a common error in bash scripting: failing to check the exit status of commands. The `bug.sh` script uses `grep`, but it doesn't handle cases where `grep` fails (e.g., file not found, pattern not matched). The improved version (`bugSolution.sh`) shows how to properly check the exit status and handle errors gracefully.

## Bug

The `bug.sh` script attempts to search for a pattern in a file.  However, it doesn't check if the `grep` command was successful. This means that if `grep` fails (e.g., because the file doesn't exist or the pattern isn't found), the script will continue execution without indicating any error.

## Solution

The `bugSolution.sh` script addresses this by checking the exit status of `grep` using `$?`. If `grep` fails (exit status is non-zero), the script prints an error message and exits with a non-zero status code, signaling failure.