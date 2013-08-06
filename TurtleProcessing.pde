/** --定数宣言 -- ****************************/
// 色を使いやすく定義
final color WHITE = color(255, 255, 255);
final color BLACK = color(0, 0, 0);
// 画面サイズ
final int WIDTH = 500;
final int HEIGHT = 500;
/*********************************************/

/** --変数宣言 -- ****************************/
// カメの座標
int t_pos_x;
int t_pos_y;

// カメの向き
int t_angle; // 弧度法[°]での角度

// ペンの色
color t_pen_color;

// ペンの状態
boolean t_pen_enable;

// カメの画像
PImage t_img;
/*********************************************/

/** --カメを操作するメソッド-- ***************/
// 座標系をグラフ用紙と同じ中心がゼロになる座標にしてあるが，
// x軸が逆なので注意すること

// 初期化
void tInitialize()
{
  // カメの初期状態
  t_pos_x = 0;
  t_pos_y = 0;
  t_angle = 90;
  t_pen_color = BLACK;
  t_pen_enable = true;
  t_img = loadImage("kame03-m.gif");
}

// 前進
void tForward(int dst)
{
  // 線の色を変える
  stroke(t_pen_color);

  // 移動後の座標を計算
  // 距離と角度から移動後の位置を計算（三角関数を使う）
  int t_next_x = (int)(t_pos_x + (dst * cos(radians(t_angle)))); 
  int t_next_y = (int)(t_pos_y + (dst * sin(radians(t_angle))));

  // 線を引く
  //if (t_pen_enable == true) {
  if (t_pen_enable) { // if文はtrueかどうかを見分けるので、このようにも書ける
    // 始点：現在位置
    // 終点：移動後の座標
    line(t_pos_x, t_pos_y, t_next_x, t_next_y);
  }

  // カメの位置を移動
  t_pos_x = t_next_x;
  t_pos_y = t_next_y;
}

// 右に回転
void tRight(int angle_deg)
{
  t_angle += angle_deg;
}

// 左に回転
void tLeft(int angle_deg)
{
  t_angle -= angle_deg;
}

// カメの画像を置く
void tPutSelfImg()
{
  pushMatrix();
  translate(t_pos_x, t_pos_y);
  rotate(radians(t_angle + 90));
  image(t_img, -25, -30, 50, 60);
  popMatrix();
}
/*********************************************/

/** --setup-- ********************************/
void setup()
{
  size(WIDTH, HEIGHT);
  smooth();
  background(WHITE);
  translate(width / 2, height / 2);
  rotate(radians(180));

  // カメの状態を初期化
  tInitialize();
  
  // ここでユーザの書いたプログラムを呼び出す
  program();

  // カメの画像を表示
  tPutSelfImg();
}
/*********************************************/

/** --program-- ********************************/
/* タートルグラフィックスのプログラムを書く部分 */
// 利用者はこの中にカメに対する命令を書く
void program()
{
  // 星をかくサンプルコード
  tRight(18); //右に18度
  for (int i = 0; i < 5; i++) {
    tForward(200); //200px前進
    tRight(144); // 右に144度
  }
}
/*********************************************/

