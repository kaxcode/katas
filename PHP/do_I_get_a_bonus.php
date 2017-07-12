function bonusTime($salary, $bonus) {
  if ($bonus === true){
    $salary = (string)($salary*10);
    return "$$salary";
  } else {
    $salary = (string)($salary);
    return "$$salary";
  }
}

---Clever Solution
function bonusTime($salary, $bonous) {
  return "$" . $salary * ($bonus ? 10 : 1);
}
