<?php
function checkAlive($health) {
  return $health <= 0 ? false:true;
}

//Cleverest
function clevereCheckAlive($h) {
    return $h > 0;
}
