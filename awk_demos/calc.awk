#!/usr/bin/awk  -f
BEGIN{
  sum = 0;
}
# patterns,
# 
NR >=10 && NR <= 12{
  print $1;
}
END{
  print "The sum is:",sum;
}