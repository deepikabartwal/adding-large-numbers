#! /usr/bin/awk -f

BEGIN{
  firstpart_sum=0
  secondpart_sum=0
  thirdpart_sum=0
  lastpart_sum=0
}

{
  firstpart_sum+=substr($0,1,25)
  secondpart_sum+=substr($0,length($0)-74,25)
  thirdpart_sum+=substr($0,length($0)-49,25)
  lastpart_sum+=substr($0,length($0)-24,25)
}

END{
  print (firstpart_sum+substr(secondpart_sum,1,2)) (substr(secondpart_sum,3,25)+substr(thirdpart_sum,1,2)) (substr(thirdpart_sum,3,25)+substr(lastpart_sum,1,2)) substr(lastpart_sum,3,25)
}
