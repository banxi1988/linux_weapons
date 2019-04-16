#!/usr/bin/awk  -f
BEGIN{
  print "用户名\t用户ID\t组ID";
  FS=":";
  OFS="\t";
}
{
 print $1,$3,$4;
}