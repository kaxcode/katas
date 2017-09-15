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
