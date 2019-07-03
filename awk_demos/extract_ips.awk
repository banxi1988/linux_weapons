#!/usr/bin/awk -F: -f 
$1 ~/inet addr/{
  split($2,a," ");
  printf a[1]" "
}