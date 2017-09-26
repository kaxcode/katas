<?php

function sentencify($words){
  return ucfirst(implode($words, ' ')) . '.';
}
