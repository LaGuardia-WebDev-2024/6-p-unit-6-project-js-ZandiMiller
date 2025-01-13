//🟢 Setup Procedure - Runs Once to Set The Canvas
void setup() {
  size(400, 400); 
  background(255, 255, 255, 100); // White background with slight transparency
}


//🟢 Draw Procedure - Runs on Repeat
void draw(){
  fill(255, 255, 255); // White fill for the skull
  stroke(0); // Black stroke for outline
  strokeWeight(3);

 //💡⬇️⬇️⬇️💡 Your Code For This Unit Goes Here

  ellipse(200, 200, 200, 240); // Skull shape

  fill(0, 255, 0); // Green color for the left eye (RGB)
  ellipse(150, 160, 40, 50); // Left eye
  fill(0, 0, 255); // Blue color for the right eye (RGB)
  ellipse(250, 160, 40, 50); // Right eye

  fill(0); // Black for the nose
  triangle(190, 210, 210, 210, 200, 240); // Nose shape

  fill(255, 255, 0); // Yellow for left tooth
  rect(145, 275, 30, 20); // Left tooth
  fill(255, 165, 0); // Orange for center tooth
  rect(185, 275, 30, 20); // Center tooth
  fill(255, 20, 147); // Deep pink for right tooth
  rect(225, 275, 30, 20); // Right tooth

  noFill();
  stroke(0);
  strokeWeight(5);
  beginShape();
  vertex(150, 300); // Start left
  vertex(170, 320); // Jawline left
  vertex(230, 320); // Jawline right
  vertex(250, 300); // End right
  endShape();
}

//🟡Extra FUN Features Ms. Hall Added
//Proceed with Caution (and Curiosity!)

var fillR = 255;
var fillG = 0;
var fillB = 255;

//🟡Mouse Pressed Procedue - Runs When Mouse is Pressed on Canvas
void mousePressed(){
  fill(fillR,fillG,fillB);
  strokeWeight(1);
  ellipse(mouseX, mouseY, 12, 12);
  var myText = "x: " + mouseX + "\ny: " + mouseY;
  text(myText, mouseX + 15, mouseY);
  console.log(myText);
}

//🟡Key Pressed Procedure - Runs When Keyboard Key is Pressed
void keyPressed(){
  if(key == 'c' || key == 'C'){
    background(255,255,255,100);
  }

  if(key == 'r' || key == 'R'){
    fillR = random(100,255);
    fillG = 0;
    fillB = 0;
  }

  if(key == 'g' || key == 'G'){
    fillR = 0;
    fillG = random(100,255);
    fillB = 0;
  }
}

