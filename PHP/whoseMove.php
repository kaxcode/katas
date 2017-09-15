<?php
function whose_move(string $last_player, bool $win) {
  if (!$win && $last_player === 'white') {
    return 'black';
  } elseif (!$win && $last_player === 'black') {
    return 'white';
  } else {
    return $last_player;
  }
}


//Clever answer

function clever_whose_move(string $last_player, bool $win) {
  if ($win) {
    return $last_player;
  }

  return ($last_player == 'white') ? 'black' : 'white';
}
