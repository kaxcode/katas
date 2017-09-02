<?php

function getAge($response) {
  return intval(preg_replace('/[^0-9]+/', '', $response), 10);
}


// cleverest
function getAgeCleverly($response) {
  return (int)$response{0};
}
