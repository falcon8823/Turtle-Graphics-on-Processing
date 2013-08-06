void setup()
{
  size(WIDTH, HEIGHT);
  smooth();
  initialize();
  
  commands();
  
  //rotate(radians(t_angle));
  PImage turtle_img = loadImage("kame03-m.gif");
  
  pushMatrix();
  translate(t_pos_x, t_pos_y);
  rotate(radians(t_angle + 90));
  image(turtle_img, -25, -30, 50, 60);
  popMatrix();
}

