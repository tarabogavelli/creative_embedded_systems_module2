import processing.serial.*;
Serial myPort;

int x;
int y;
int b;
PFont f;
int count;
String portName;
String input;
void setup()
{
  size(1500, 800);
  portName = "dev/cu.wchusbserial54F40095661";
  myPort = new Serial(this, portName, 115200);
  myPort.bufferUntil(10);
  f = createFont("Times New Roman", 200, true);
  textFont(f, 200);
  count = 0;
}

void draw()
{
  //fill(0);
  background(0);

  fill(255);

  if (b == 1)
  {

    if (count%6 == 0) {
      fill(#d11919);
    } else if (count%6 == 1) {
      fill(#d16f19);
    } else if  (count%6==2) {
      fill(#ded414);
    } else if  (count%6==3) {
      fill(#7dde2f);
    } else if  (count%6==4) {
      fill(#2fd2de);
    } else if  (count%6==5) {
      fill(#8c2fde);
    }


    ellipse(x/5, 512-(y/5), 100, 100);
    //textFont(f, 200);
    text("R", 250, 400);
    text("A", 370, 450);
    text("I", 490, 400);
    text("N", 570, 450);
    text("B", 670, 400);
    text("O", 770, 450);
    text("W", 890, 400);
  } else
  {
    ellipse(x/5, 512-(y/5), 25, 25);
    //textFont(f, 200);
    fill(#d11919);
    text("R", 250, 400);
    fill(#d16f19);
    text("A", 370, 450);
    fill(#ded414);
    text("I", 490, 400);
    fill(#7dde2f);
    text("N", 570, 450);
    fill(#2fd2de);
    text("B", 670, 400);
    fill(#8c2fde);
    text("O", 770, 450);
    fill(#FFC0CB);
    text("W", 890, 400);
  }
  count++;



  String vals[] = split(input, ',');
  x = int(vals[0]);
  y = int(vals[1]);
  b = int(vals[2]);
  
  
}

void serialEvent(Serial Port)
{
  try {
    input = Port.readString();
  }

  catch(RuntimeException e) {
    e.printStackTrace();
  }
}
