String changeToEnglish(String input) {
  const english = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'];
  const farsi = ['۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹', '۰'];

  for (var i = 0; i < english.length; i++) {
    input = input.replaceAll(farsi[i], english[i]);
  }

  return input;
}
