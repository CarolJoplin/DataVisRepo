void setup(){
  //use for loading data files
  size(600,400); 
}



void draw(){
   for (int i=0; i<10; i++){
      fill(i*25);
      rect(i*60, 30, 25, 200);
   }
}

//function that takes a data val and gives a y-coordinate