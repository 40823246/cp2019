import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;


 fivePointStar(x, y, r, solid, theta, color) {
  List outerPoints = [];
  List innerPoints = [];
  var degree = Math.pi / 180;
  var innerR = r * Math.cos(72 * degree) / Math.cos(36 * degree);
  print("準備畫一個位於 ($x, $y), 半徑 $r, 實心為 $solid, 顏色為 $color 的五芒星");
  ctx.beginPath();
  for (int i = 0; i <= 5; i++) {
    outerPoints.add([
      x + r * Math.sin(72 * degree * i + theta * degree),
      y - r * Math.cos(72 * degree * i + theta * degree)
    ]);
    innerPoints.add([
      x +
          innerR *
              Math.sin(72 * degree * i +
                  theta * degree -
                  36 * degree),
      y -
          innerR *
              Math.cos(72 * degree * i +
                  theta * degree -
                  36 * degree)
    ]);
  }
  print(outerPoints);
  ctx.moveTo(outerPoints[0][0], outerPoints[0][1]);
  for (int i = 1; i < 5; i++) {
    ctx.lineTo(innerPoints[i][0], innerPoints[i][1]);
    ctx.lineTo(outerPoints[i][0], outerPoints[i][1]);
    ctx.lineTo(innerPoints[i + 1][0], innerPoints[i + 1][1]);
  }
  ctx.closePath();
  if (solid == false) {
    ctx.strokeStyle = color;
    ctx.stroke();
  } else {
    ctx.fillStyle = color;
    ctx.fill();
  }
}


void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');
  
 

  drawCuba(ctx);
  querySelector("#cuba").onClick.listen((e) => drawCuba(ctx));
  querySelector("#china").onClick.listen((e) => drawCHINA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
  querySelector("#San").onClick.listen((e) => drawSAN(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#uk").onClick.listen((e) => drawUK(ctx));
  querySelector("#canada").onClick.listen((e) => drawCanada(ctx));
}
  
  drawStar(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 2 * 3;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#fff';
    ctx.beginPath();
    ctx.moveTo(cx, cy - outerRadius);
    for (int i = 0; i < spikes; i++) {
        x = cx + Math.cos(rot) * outerRadius;
        y = cy + Math.sin(rot) * outerRadius;
        ctx.lineTo(x, y);
        rot += step;

        x = cx + Math.cos(rot) * innerRadius;
        y = cy + Math.sin(rot) * innerRadius;
        ctx.lineTo(x, y);
        rot += step;
    }
    ctx.lineTo(cx, cy - outerRadius);
    ctx.closePath();
    ctx.lineWidth=5;
    ctx.strokeStyle='white';
    ctx.stroke();
    ctx.fillStyle='white';
    ctx.fill();

}
  drawStarY(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 2 * 3;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#rgb(260,180,0)';
    ctx.beginPath();
    ctx.moveTo(cx, cy - outerRadius);
    for (int i = 0; i < spikes; i++) {
        x = cx + Math.cos(rot) * outerRadius;
        y = cy + Math.sin(rot) * outerRadius;
        ctx.lineTo(x, y);
        rot += step;

        x = cx + Math.cos(rot) * innerRadius;
        y = cy + Math.sin(rot) * innerRadius;
        ctx.lineTo(x, y);
        rot += step;
    }
    ctx.lineTo(cx, cy - outerRadius);
    ctx.closePath();
    ctx.lineWidth=5;
    ctx.strokeStyle='yellow';
    ctx.stroke();
    ctx.fillStyle='yellow';
    ctx.fill();

}

  drawStarYT(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 8 *1 ;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#rgb(260,180,0)';
    ctx.beginPath();
    ctx.moveTo(cx, cy - outerRadius);
    for (int i = 0; i < spikes; i++) {
        x = cx + Math.cos(rot) * outerRadius;
        y = cy + Math.sin(rot) * outerRadius;
        ctx.lineTo(x, y);
        rot += step;

        x = cx + Math.cos(rot) * innerRadius;
        y = cy + Math.sin(rot) * innerRadius;
        ctx.lineTo(x, y);
        rot += step;
    }
    ctx.lineTo(cx, cy - outerRadius);
    ctx.closePath();
    ctx.lineWidth=5;
    ctx.strokeStyle='yellow';
    ctx.stroke();
    ctx.fillStyle='yellow';
    ctx.fill();

}

 drawStarYT1(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 4 *1 ;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#rgb(260,180,0)';
    ctx.beginPath();
    ctx.moveTo(cx, cy - outerRadius);
    for (int i = 0; i < spikes; i++) {
        x = cx + Math.cos(rot) * outerRadius;
        y = cy + Math.sin(rot) * outerRadius;
        ctx.lineTo(x, y);
        rot += step;

        x = cx + Math.cos(rot) * innerRadius;
        y = cy + Math.sin(rot) * innerRadius;
        ctx.lineTo(x, y);
        rot += step;
    }
    ctx.lineTo(cx, cy - outerRadius);
    ctx.closePath();
    ctx.lineWidth=5;
    ctx.strokeStyle='yellow';
    ctx.stroke();
    ctx.fillStyle='yellow';
    ctx.fill();

}

void drawCHINA(ctx){
  //紅底
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  drawStarY(50, 50, 5, 20, 10);  
  drawStarYT1(120, 25, 5, 5, 2.5); 
  drawStarYT(135, 50, 5, 5, 2.5); 
  drawStarY(135, 75, 5, 5, 2.5); 
  drawStarYT1(120, 100, 5, 5, 2.5); 
} 
  void drawCuba(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 40, flag_w, flag_h/5);  
  ctx.fillRect(0, 120, flag_w, flag_h/5);  
  ctx.strokeStyle="rgb(255, 0, 0)";
  ctx.stroke();  
  ctx.moveTo(0,0);
  ctx.lineTo(140,100);
  ctx.lineTo(0,200);
  ctx.fillStyle="rgb(255, 0, 0)";
  ctx.fill();  
  drawStar(50, 100, 5, 20, 10);
  
}
void drawSAN(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 200, 25)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.beginPath();
  ctx.moveTo(0, 140);
  ctx.lineTo(0, 200);
  ctx.lineTo(60, 200);
  ctx.lineTo(300, 60);
  ctx.lineTo(300, 0);
  ctx.lineTo(240, 0);
  ctx.closePath();
  ctx.fillStyle = 'rgb(240, 190, 0)';
  ctx.fill();
  ctx.beginPath();
  ctx.moveTo(0, 160);
  ctx.lineTo(0, 200);
  ctx.lineTo(40, 200);
  ctx.lineTo(300, 40);
  ctx.lineTo(300, 0);
  ctx.lineTo(260, 0);
  ctx.closePath();
  ctx.fillStyle = 'rgb(0, 0, 0)';
  ctx.fill();
  ctx.beginPath();
  ctx.moveTo(60, 200);
  ctx.lineTo(300, 200);
  ctx.lineTo(300, 60);
  ctx.closePath();
  ctx.fillStyle = 'rgb(240, 0, 0)';
  ctx.fill();
  int x = 80;
  int y = 145;
  int r = 28;
  bool solid = true;
  var theta = 180;
  var color = "white";
  fivePointStar(x, y, r, solid, theta, color);
  int a = 220;
  int b = 55;
  int c = 28;
  bool solid1 = true;
  var theta1 = 180;
  var color1 = "white";
  fivePointStar(a, b, c, solid1, theta1, color1);
}

void drawUSA(ctx){
  //紅底
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  //白線
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 15.3, flag_w, flag_h/13);
  ctx.fillRect(0, 45.9, flag_w, flag_h/13);
  ctx.fillRect(0, 75.5, flag_w, flag_h/13);
  ctx.fillRect(0, 106.1, flag_w, flag_h/13);
  ctx.fillRect(0, 136.7, flag_w, flag_h/13);
  ctx.fillRect(0, 167.3, flag_w, flag_h/13);
  //籃底
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 0, 150,106.1 );
  //星星
  drawStar(14, 17, 5, 5, 2.5);
  drawStar(38, 17, 5, 5, 2.5);
  drawStar(62, 17, 5, 5, 2.5);
  drawStar(88, 17, 5, 5, 2.5);
  drawStar(112, 17, 5, 5, 2.5);
  drawStar(136, 17, 5, 5, 2.5);
  
  drawStar(25, 36, 5, 5, 2.5);
  drawStar(50, 36, 5, 5, 2.5);
  drawStar(75, 36, 5, 5, 2.5);
  drawStar(100, 36, 5, 5, 2.5);
  drawStar(125, 36, 5, 5, 2.5);
  
  drawStar(14, 54, 5, 5, 2.5);
  drawStar(38, 54, 5, 5, 2.5);
  drawStar(62, 54, 5, 5, 2.5);
  drawStar(88, 54, 5, 5, 2.5);
  drawStar(112, 54, 5, 5, 2.5);
  drawStar(136, 54, 5, 5, 2.5);
  
  drawStar(25, 71, 5, 5, 2.5);
  drawStar(50, 71, 5, 5, 2.5);
  drawStar(75, 71, 5, 5, 2.5);
  drawStar(100, 71, 5, 5, 2.5);
  drawStar(125, 71, 5, 5, 2.5);
  
  drawStar(14, 88, 5, 5, 2.5);
  drawStar(38, 88, 5, 5, 2.5);
  drawStar(62, 88, 5, 5, 2.5);
  drawStar(88, 88, 5, 5, 2.5);
  drawStar(112, 88, 5, 5, 2.5);
  drawStar(136, 88, 5, 5, 2.5);
} 

void drawUK(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.strokeStyle="#fff";
  ctx.lineWidth = 40;
  ctx.beginPath();
  ctx.moveTo(0,0);
  ctx.lineTo(300,200);
  ctx.moveTo(0,200);
  ctx.lineTo(300,0);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(0,205);
  ctx.lineTo(150,105);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(150,95);
  ctx.lineTo(300,-5);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(160,100);
  ctx.lineTo(305,200);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(140,100);
  ctx.lineTo(-5,0);
  ctx.stroke();
  ctx.strokeStyle="#fff";
  ctx.lineWidth = 40;
    ctx.beginPath();
    ctx.moveTo(0,100);
    ctx.lineTo(300,100);
    ctx.moveTo(150,0);
    ctx.lineTo(150,200);
    ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
    ctx.beginPath();
    ctx.moveTo(0,100);
    ctx.lineTo(300,100);
    ctx.moveTo(150,0);
    ctx.lineTo(150,200);
    ctx.stroke();

  
}

void drawCanada(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(90, 0, 120,  200);
  ctx.beginPath();
  ctx.moveTo(147, 170);
  ctx.lineTo(147, 140);
  ctx.lineTo(125, 145);
  ctx.lineTo(130, 135);
  ctx.lineTo(95, 100);
  ctx.lineTo(100, 95);
  ctx.lineTo(102, 80);
  ctx.lineTo(110, 85);
  ctx.lineTo(115, 80);
  ctx.lineTo(125, 90);
  ctx.lineTo(123, 60);
  ctx.lineTo(135, 70);
  ctx.lineTo(150, 30);
  ctx.lineTo(165, 70);
  ctx.lineTo(177, 60);
  ctx.lineTo(175, 90);
  ctx.lineTo(185, 80);
  ctx.lineTo(190, 85);
  ctx.lineTo(198, 80);
  ctx.lineTo(200, 95);
  ctx.lineTo(205, 100);
  ctx.lineTo(170, 135);
  ctx.lineTo(175, 145);
  ctx.lineTo(153, 140);
  ctx.lineTo(153, 170);
  ctx.lineTo(147, 170);
  ctx.closePath();
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fill();
  }

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
