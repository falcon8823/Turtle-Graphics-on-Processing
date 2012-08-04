/* カメを操作するメソッド */

// 座標系をグラフ用紙と同じ形式にしてあるが，
// x軸とy軸が逆なので注意すること
// パラメータのxとyは逆に使うこと

// 初期化
void initialize() {
  background(WHITE);

  translate(width / 2, height / 2);
  rotate(-PI / 2);
  
  // カメの初期状態
  t_pos_x = 0;
  t_pos_y = 0;
  t_angle = 90;
  t_pen_color = BLACK;
  t_pen_enable = true;
}

// 前進
void tForward(int dst)
{
  // 線の色を変える
  stroke(t_pen_color);

  // 線を引く
  if (t_pen_enable) {
    line(
      t_pos_y,
      t_pos_x, 
      dst * sin(radians(t_angle)) + t_pos_y, 
      dst * cos(radians(t_angle)) + t_pos_x
    );
  }

  // カメの位置を移動
  t_pos_y += (int)(dst * sin(radians(t_angle)));
  t_pos_x += (int)(dst * cos(radians(t_angle)));
}

// 右に回転
void tRight(int angle_deg)
{
  t_angle -= angle_deg;
}

// 左に回転
void tLeft(int angle_deg)
{
  t_angle += angle_deg;
}

