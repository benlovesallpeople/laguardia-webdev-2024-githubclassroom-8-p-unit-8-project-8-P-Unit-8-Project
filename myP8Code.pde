function setup() {
  createCanvas(800, 600);
  noStroke();
}

function draw() {
  background(30, 50, 70);

  // Draw taller seaweed
  drawSeaweed(width / 2, height, 100, 300);
  drawSeaweed(width / 4, height, 80, 250); 
  drawSeaweed((3 * width) / 4, height, 120, 350);

  // Draw the shark at the mouse position
  drawShark(mouseX, mouseY);
}

function drawSeaweed(x, y, numLines, maxHeight) {
  for (let i = 0; i < numLines; i++) {
    // Randomize the position and height of each line
    let lineX = x + random(-30, 30);
    let lineHeight = random(maxHeight / 2, maxHeight);
    let lineY = y - lineHeight;

    // Set a green color with slight variations
    fill(random(50, 100), random(150, 200), random(50, 100), 200);

    // Draw a vertical line (as a thin rectangle)
    rect(lineX, lineY, 3, lineHeight);
  }
}

function drawShark(x, y) {
  noStroke();
  fill(100, 100, 100); // Gray color
  ellipse(x, y, 100, 50); // Body
  triangle(x - 50, y, x - 80, y - 20, x - 80, y + 20);
  triangle(x + 10, y - 20, x - 10, y - 50, x - 30, y - 20);
  fill(255);
  ellipse(x + 30, y - 10, 10, 10);
  fill(0);
  ellipse(x + 32, y - 10, 5, 5);
  fill(200, 0, 0);
  arc(x + 40, y + 10, 20, 10, 0, PI);
}

let showText = false; // Variable to track if text should be shown
let textX, textY; // Variables to store text positions
let randomSharkX, randomSharkY; // Variables to store random shark position

function setup() {
  createCanvas(800, 600);
  noStroke();
  textSize(20);

  randomSharkX = random(100, width - 100);
  randomSharkY = random(100, height - 100);
}

function draw() {
  background(30, 50, 70);

  drawSeaweed(width / 2, height, 100, 300);
  drawSeaweed(width / 4, height, 80, 250);  
  drawSeaweed((3 * width) / 4, height, 120, 350);
 
  drawShark(mouseX, mouseY);


  drawShark(randomSharkX, randomSharkY);

  fill(255); // White text
  text("My favorite saxophonists are …", 200, 60);
  text("Click anywhere to find out!", 200, 100);


  if (showText) {
    fill(random(255), random(255), random(255));
    text("John Coltrane", textX, textY);
    text("Charlie Parker", textX, textY + 30);
  }
}

function drawSeaweed(x, y, numLines, maxHeight) {
  for (let i = 0; i < numLines; i++) {
   
    let lineX = x + random(-30, 30);
    let lineHeight = random(maxHeight / 2, maxHeight);
    let lineY = y - lineHeight;
   
    fill(random(50, 100), random(150, 200), random(50, 100), 200);

    rect(lineX, lineY, 3, lineHeight);
  }
}

function drawShark(x, y) {
  noStroke();
  fill(100, 100, 100);
  ellipse(x, y, 100, 50);
  triangle(x - 50, y, x - 80, y - 20, x - 80, y + 20);
  triangle(x + 10, y - 20, x - 10, y - 50, x - 30, y - 20);
  fill(255);
  ellipse(x + 30, y - 10, 10, 10);
  fill(0);
  ellipse(x + 32, y - 10, 5, 5);
  fill(200, 0, 0);
  arc(x + 40, y + 10, 20, 10, 0, PI);
}

function mousePressed() {
  showText = true;
  textX = random(100, width - 100);
  textY = random(100, height - 100);
}
