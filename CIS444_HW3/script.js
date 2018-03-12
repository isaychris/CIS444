// Name: Chris Banci
// Course: CIS444
// Date: Sept 29, 2017

// Assignment: Homework 3
// Description: A script to calculate factorials.
// URL: http://cis444.cs.csusm.edu/banci003/hw3/script.js

function factorial(n) {
  var result = 1;
  for (var i = 2; i <= n; i++) {
    result = result * i;
  }
  return result;
}
