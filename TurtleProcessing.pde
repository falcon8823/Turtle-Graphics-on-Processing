void commands()
{
  /* タートルグラフィックスのプログラムを書く部分 */
  /*
  tForward(100);
  tRight(120);
  tForward(100);
  tRight(120);
  tForward(100);
  tRight(120);
  */
  
  tRight(18);
  
  for(int i = 0; i < 5; i++) {
    tForward(100);
    tRight(144);
  }

  for(int i = 0; i < 5; i++) {
    tForward(200);
    tRight(144);
  }

  for(int i = 0; i < 5; i++) {
    tForward(300);
    tRight(144);
  }

}

