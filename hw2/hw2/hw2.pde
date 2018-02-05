//Ariana Hibbard
//Carol Joplin
//CPSC 313 Data Visualization HW#2
//1-1-18
//This program loads in weather data from a CSV file 
//and displays the weather information in a bar chart format
//https://processing.org/tutorials/data/

Table table;
int[] meanTemps;
int[] barHeights;
float[] ratioArray;

int numRows;
float barWidth;
float barHeight;
float ratio;

void setup()
{
  size(1000,800);
  background(255);
  stroke(255);
  table = loadTable("hw2.csv","header");
  numRows = table.getRowCount();
  meanTemps = new int[numRows];
  ratioArray = new float[numRows];
  getMeanTemps();
  fillRatioArray();
  setBarWidth();
  drawTable();
  save("barChart.png");
}
void drawTable()
{
  int x = 0;
  //manipulate the grid so that the bars are drawn in the right direction
  //rect(0,0,20,40);
  scale(1, -1);
  translate(0,-height);
  //rect(0,0,20,40);
  
  //draw the rectangles
  for(int i=0; i<ratioArray.length; i++){
    barHeight = ratioArray[i]*=height;
    fill(#C492FA);
    rect(x, 0, barWidth, barHeight);
    x+=barWidth;
  }
  String s = "32ºF";
  pushMatrix();
  scale(1, -1);
  translate(0,-height);
  fill(50);
  text(s, 10, height-(calculateRatio(32)*height)+5, width, height-(calculateRatio(32)*height)+5);  // Text wraps within text box
  stroke(#7C27D8);
  popMatrix();
  line(0, calculateRatio(32)*height, width, calculateRatio(32)*height);
}
//this function retrieves the mean temperatures from the csv file and stores them in an array called meanTemps
void getMeanTemps()
{
  for(int mt_i = 0; mt_i < numRows; mt_i++)
  {
    meanTemps[mt_i] = table.getInt(mt_i,"Mean TemperatureF");
  }
}
//this function gets the highest mean temperature in the weather data
int getHighestMeanTemp()
{
  int[] sortedTemps = sort(meanTemps);
  return sortedTemps[sortedTemps.length-1];
}

int getLowestMeanTemp()
{
  int[] sortedTemps = sort(meanTemps);
  return sortedTemps[0];
}

float calculateRatio(float temp)
{
  //if 35 is highest mean temp, set temp 35 to height of the window
  float maxHeight = getHighestMeanTemp();
  float minHeight = getLowestMeanTemp();
  float denominator = maxHeight - minHeight;
  ratio = (temp-minHeight)/denominator;
  return ratio;
}

void fillRatioArray()
{
  for(int i=0; i<meanTemps.length; i++){
    ratioArray[i] = calculateRatio(meanTemps[i]);
  }
}

void setBarWidth()
{
  for (int i=0; i < numRows; i++){
    barWidth = width / numRows;
  } 
}