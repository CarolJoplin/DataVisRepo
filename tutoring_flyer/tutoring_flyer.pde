PImage img;
PFont f;
void setup(){
  size(1000, 1419);
  f = createFont("Arial-Black", 16, true);
}

void draw(){
  // import the image
  img = loadImage("tutoring.jpeg");
  image(img, 0, 0);
  
  // create the top text banner
  noStroke();
  fill(#2762FF);
  //fill(#FFDB27, 200);
  //rect(0, 100, width, 60);
  rect(0, 0, width, 60);
  //fill(255);
  //rect(200, 255, 600, 60, 3, 6, 12, 18);
  
  // add the top text
  textFont(f, 48);
  fill(#FFDB27);
  //fill(#2762FF);
  textAlign(CENTER);
  //text("Welcome to SCC Main Tutoring!",width/2,145);
  text("Welcome to SCC Main Tutoring!", width/2, 45);
  // ---

  // add middle text box with hours
  
  // create the middle text box
  noStroke();
  //rect(0, 255, width, 60);
  //fill(255);
  fill(#2762FF, 150);
  //fill(#FFDB27, 200);
  rect(200, 110, 600, 470, 3, 6, 12, 18);
  
  // add middle box text
  textFont(f, 48);
  fill(#FFDB27);
  //fill(#2762FF);
  textAlign(CENTER);
  text("Hours",width/2, 160);
  
  textFont(f, 36);
  textAlign(LEFT);
  text("Monday 7:30am - 7:00pm",220, 260);
  text("Tuesday 7:30am - 7:00pm",220, 310);
  text("Wednesday 7:30am - 7:00pm",220, 360);
  text("Thursday 7:30am - 7:00pm",220, 410);
  text("Friday 7:30am - 2:30pm",220, 460);
   
  textAlign(CENTER);
  text("Closed Holidays",width/2, 560);
  
  text("For more information about:", width/2, 800);
  textAlign(LEFT);
  
  text("American Sign Language", 220, 900);
  text("Business",220, 950);
  text("Math",220, 1000);
  text("Nursing",220, 1050);
  text("Spanish",220, 1100);
  text("Sciences",220,1150);
  
  textAlign(CENTER);
  text("Please Visit:", width/2, 1250);
  text("www.scc.spokane.edu/resources/Tutoring.aspx", width/2, 1300);
  
  // ---
  // Create bottom text banner
  noStroke();
  fill(#2762FF);
  //fill(#FFDB27, 200);
  //rect(0, (1249), width, 60);
  rect(0, (height-60), width, 60);
  
  // add the bottom text
  textFont(f, 48);
  fill(#FFDB27);
  //fill(#2762FF);
  textAlign(CENTER);
  //text("Please ask us about eTutoring",width/2,1295);
  text("Please ask us about eTutoring", width/2, 1403);
  save("TutoringFlyer.jpg");
}