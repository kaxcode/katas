<?php
function datingRange($age) {
  if ($age <= 14) {
    $min = floor($age - 0.10 * $age);
    $max = floor($age + 0.10 * $age);
    return $min .'-'. $max;
  }

  $min = floor(($age/2)+7);
  $max = floor(($age-7)*2);
  return $min .'-'. $max;
}


function cleverDatingRange($age) {
  #return min-max
  if($age > 14){
    $min = $age / 2 + 7;
    $max = ($age - 7) * 2;
  } else {
    $min = $age - 0.1 * $age;
    $max = $age + 0.1 * $age;
  }

  return floor($min).'-'.floor($max);
}
