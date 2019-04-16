BEGIN{
  print "{";
}
!/^#/ && !/^$/{
  print "\"" $1 "\"" ":" "\"" $2 "\",";
}
END{
  print "}";
}
#test:  awk -f awk_demos/conf_to_json.awk /usr/local/etc/redis.conf