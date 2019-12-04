// 定義一個 C to F function
ctof(num c){
return c*9/5 + 32;
}
// define a F to C function
ftoc(num f){
return (f - 32)*5/9;
}
// 每一個 Dart 程式都從 main() 開始執行
main() {
  // 宣告 len 整數變數, 準備設為各字串的長度
  int len;
  // 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 C 或 F
  var type;
  // 宣告 var 變數 number, 準備設為各字串中的數字
  var number;
  List temp = ["20C", "30C", "50F", "40C", "23F"];
  // 利用重複迴圈, 逐一讀出各筆資料
  for (var data in temp) {
    //print(i);
    //print(i[2]);
    // https://api.dartlang.org/stable/2.6.1/dart-core/String/length.html
    len = data.length;
    // 取得各筆資料的最後一個字元
    //print(data[len-1]);
    type = data[len-1];
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 type 變數資料型別為: ${type.runtimeType}");
    // 根據溫度類別轉給對應函式進行溫度轉換
    // https://api.dartlang.org/stable/2.6.1/dart-core/String/substring.html
    number = data.substring(0, len-1);
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 number 變數資料型別為: ${number.runtimeType}");
    // 由於取得的 number 為字串, 必須設法轉為數字
   // https://stackoverflow.com/questions/13167496/how-do-i-parse-a-string-into-a-number-with-dart
    number = int.parse(number);
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 number 變數資料型別為: ${number.runtimeType}");
    // 之後就可以根據 type 與 number 執行各數列元素的溫度轉換
    
    if (type == "C"){
      print("攝氏C $number° = 華氏F ${ctof(number)}°");
    }else{
      print("華氏F $number° = 攝氏C ${ftoc(number)}°");
    }
      
  } // for
} // main