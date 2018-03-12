/*
  Chris Banci
  CIS444
  10/14/17
  
  script.js
  http://cis444.cs.csusm.edu/banci002/hw5/script.js
*/
var dom;            // dom of statement
var x;              // current position
var start;          // start position of text
var end;            // end position of text
var change = false; // for direction change

function initText() {
  // get the dom for statement
  dom = document.getElementById('statement');
  
  // set the start and end
  start = parseInt(document.getElementById('xStart').value);
  end = parseInt(document.getElementById('xEnd').value);
  document.getElementById('xEnd').max = screen.width.toString();

  // loop moveText()
  setInterval(function() {moveText(); }, 1);
}

function moveText() {
  //get the current position and remove 'px' ending
  x = dom.style.left;
  x = x.match(/\d+/);
  
  // move left or right according to change status
  if (!change)
    moveLeft(); 
  else
    moveRight(); 
  
  // flash text at position x
  flashText(x);
}

function moveRight() {
  if (x > start)
    x--;
  
  // update current position
  dom.style.left = x + "px";
  
  if (x == start)
    change = false;
}

function moveLeft() {
  if (x < end)
    x++;
  
  // update current position
  dom.style.left = x + "px";
  
  if (x == end)
    change = true;
}

function flashText(pos) {
  // at every 5th step, alternate between red and blue;
  if (pos % 5 == 0)
    (dom.style.color == "red") ? (dom.style.color = "blue") : (dom.style.color = "red");
}

function setRange() {
  // set the start and end
  start = parseInt(document.getElementById('xStart').value);
  end = parseInt(document.getElementById('xEnd').value);

  // update position and reset direction
  dom.style.left = start + "px";
  change = false;
}

function setMinMax() {
  document.getElementById("xStart").max = document.getElementById("xEnd").value;
  document.getElementById("xEnd").min = document.getElementById("xStart").value;
}