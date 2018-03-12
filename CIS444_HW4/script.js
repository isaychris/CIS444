function clicked() {
  var a = document.getElementById("apple").value;
  var b = document.getElementById("orange").value;
  var c = document.getElementById("banana").value;

  total = a * 0.59 + b * 0.49 + c * 0.39;
  taxtotal = total * 1.0775;
  alert(
    "Thank you for shopping. Your total cost is $" + taxtotal.toFixed(2) + "."
  );
  return false;
}

function validate(num) {
  if (isNaN(num) || num < 0 || num > 99) {
    alert("[Error] Please enter a quantity value between 1-99.");
  }
  return false;
}
