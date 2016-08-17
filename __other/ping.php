<?php
 /**
  *@param $ip target ip
  *@param $times ping times
  */
 function ping($ip,$times=4)
 {  
     $info = array();
      if(!is_numeric($times) ||  $times-4<0)
      {
           $times = 4;
      }
      if (PATH_SEPARATOR==':' || DIRECTORY_SEPARATOR=='/')//linux
      {
           exec("ping $ip -c $times",$info);
           if (count($info) < 9)
           {
            $info['error']='timeout';
        }
  }
  else //windows
  {
       exec("ping $ip -n $times",$info);
       if (count($info) < 10)
       {
         $info['error']='timeout';
       }
  }
  return $info;
 }
 $ip = '52.90.77.25';//IPµØÖ·
 print_r(ping($ip));
?>