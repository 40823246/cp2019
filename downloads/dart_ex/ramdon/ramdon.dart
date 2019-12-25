import 'dart:html';

  InputElement grpNum = querySelector("#grpNum");
  int num;
  InputElement studListUrl = querySelector("#studListUrl");
  String studUrl;
  // 將 Label 改為 Textarea, 避免產生過程結果嵌入所在頁面
  TextAreaElement output = querySelector("#output");

main() {
  querySelector("#submit").onClick.listen((e) => Grouping());
}

Grouping() {
  output.innerHtml = "";
  if (grpNum.value != "") {
    num = int.parse(grpNum.value);
  } else {
    num = 10;
  }

  if (studListUrl.value != "") {
    studUrl = studListUrl.value;
  } else {
    studUrl = 'https://mde.tw/cp2019/downloads/2019fall_cp_1b_list.txt';
  }

  // 組序由 1 開始
  int gth = 1;
  // 迴圈序號變數
  int i;
  // 每組學員暫存數列
  var gpList = [];
  // 全班分組數列
  var cp2019 = [];

  HttpRequest.getString(studUrl).then((String resp) {
    // 利用 trim() 去除字串最後的跳行符號, 之後再利用 split() 根據 \n 轉為數列
    var studList = resp.trim().split("\n");
    // 數列利用 shuffle() 方法以隨機方法弄亂順序
    studList.shuffle();
    // 逐一讀取已經弄亂的學生學號數列, 利用模數運算每幾人分成一組
    for (i = 0; i < studList.length; i++) {
      // 0, 1~(num-1), num
      if (i % num == 0) {
        gpList = [];
        // 列印區隔符號
        output.text += '=' * 20 + "\n";
        output.text += "group $gth :" + "\n";
        output.text += studList[i] + "\n";
        // 在各分組數列中加入將對應的學員學號
        gpList.add(studList[i]);
        gth = gth + 1;
      } else {
        output.text += studList[i] + "\n";
        // 在各分組數列中加入將對應的學員學號
        gpList.add(studList[i]);
      }
      if (i % num == 0) {
        // 逐步將各組暫存的分組數列加入全班分組數列中
        cp2019.add(gpList);
      }
    }
    // 列出全班分組數列
    output.text += cp2019.toString() + "\n";
  });
}
