#! /usr/bin/awk -f

BEGIN{
  sum=0
}
{  
  sum+=$0
}
END{
  printf "%.101e\n" sum
}
