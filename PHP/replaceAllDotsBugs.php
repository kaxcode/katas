<!-- The code provided is supposed replace all the dots . in the specified String str with dashes - -->

function replace_dots(string $str): string {
  return str_replace('.', '-', $str);
}


<!-- Clever -->

function replace_dots(string $str): string {
  return preg_replace('/\./', '-', $str);
}
