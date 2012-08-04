void setup()
{
  size(WIDTH, HEIGHT);
  initialize();
  
  commands();
  
  //rotate(radians(t_angle));
  PImage turtle = loadImage("kame03-m.gif");
  
  pushMatrix();
  translate(t_pos_y, t_pos_x);
  rotate(radians(t_angle));
  image(turtle, -25, -30, 50, 60);
  popMatrix();
}

