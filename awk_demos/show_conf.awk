#!/usr/bin/awk -f
# pattern { stmts;}
!/^#/  && !/^$/ && $1 ~ /^client/ {
  print $1
}