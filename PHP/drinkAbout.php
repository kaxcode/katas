<?php

function people_with_age_drink(int $old) {
  if ($old <= 13) {
    return "drink toddy";
  } elseif ($old <= 17) {
    return "drink coke";
  } elseif ($old < 21) {
    return "drink beer";
  } else {
    return 'drink whisky';
  }
}


//cleverest

function clever_people_with_age_drink(int $n) {
  return 'drink ' . ($n < 21 ? $n < 18 ? $n < 14 ? 'toddy' : 'coke' : 'beer' : 'whisky');
}
