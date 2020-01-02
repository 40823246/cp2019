var tipuesearch = {"pages": [{'title': 'Home', 'text': '清單 \n \n 我的網站 \n 我的倉儲 \n 我的gist \n \n \n \n \n \n \n \n \n 亂數分組: \n 學員名單 URL:   每組人數:      \n \n \n \n', 'tags': '', 'url': 'Home.html'}, {'title': 'Dartpad', 'text': 'Hello World!: \n dartpad: https://dartpad.dartlang.org/?id=82be62c70020d1e99250b6fa8078ba36 \n gist: https://gist.github.com/40823246/82be62c70020d1e99250b6fa8078ba36 \n //main()主函式\n//print()打印指令\nvoid main() {                          \n    print("Hello, World!");        \n} \n \n \n for迴圈: \n //for()迴圈指令\n//int i=0對i做賦值\n//i++=i+1\n//${}運算指令\nvoid main(){\n  for(int i=0;i<10;i++)\n  {\n    print(\'hi ${i+i}\');\n  }\n  print(\'hi hi hi\');\n} \n dartpad: https://dartpad.dartlang.org/?id=b579379b9c7838b7b844db519419ad10 \n gist : https: //gist.github.com/40823246/b579379b9c7838b7b844db519419ad10 \n \xa0 \n \n \n sum運用在for迴圈: \n //sum總和符號\nvoid main(){\n  int i=0;\n  int sum=0;\n  for(i;i<20;i++){\n    sum += i;\n  print(\'$sum\');\n  }\n  print(\'sum=$sum\');\n}\n \n dartpad: https://dartpad.dartlang.org/?id=0893e89f8a2531224ba8a277b49e1865 \n gits: https://gist.github.com/40823246/0893e89f8a2531224ba8a277b49e1865 \n \n \n 解常微分方程式: \n // 下列 Dart 程式, 利用 Runge Kutta 迭代運算法, 解常微分方程式\n// 設 t 為時間, x 則設為物體的位移\n// 假設要解 F=ma 的單一質量加上彈簧 (常數為 k) 與黏滯阻尼 (常數為 b)\n// f 為沿位移方向的施力\n// dx/dt = v, dv/dt = (f-kx-bv)/m\n// dx / dt = (t - x)/2, 起始值 t0=0, x0=1, 求 t=2 時的 x 值\n//\n// 已知起始值 t0 與 x0 後, 可以利用下列 rungeKutta 函式, 以\n// h 為每步階增量值, 求 dxdt 常微分方程式任一 t 的對應值 x\n// 定義函式 rungeKutta, 共有四個輸入變數\n// 物體質量\nconst num m = 1;\n// 對質量的施力 f\nconst num f = 0.0;\n// 彈簧係數\nconst num k = 1;\n// 阻尼係數\nconst num b = 1;\n\n// 呼叫運算時, 需要起始時間, 終點時間, 位移起始值與速度起始值, 增量 h\nrungeKutta(t0, x0, v0, t, h) {\n  // 利用步階增量值 h 與 t 的起始及終點值\n  // 計算需要迭代的次數 n\n  int n = ((t - t0) / h).toInt();\n  // 宣告 x 為雙浮點數, 且設為起始值 x0\n  double x = x0;\n  // 宣告 v 為雙浮點數, 且設為起始值 v0\n  double v = v0;\n\n  // 模擬運算前, 列出起始條件\n  // 只列到小數點第三位, 時間、位移與速度以 \\t  隔開, \\t 代表插入 tab 符號, 可將資料複製到 Excel 進行繪圖\n  print("${t0.toStringAsFixed(3)} \\t ${x.toStringAsFixed(3)} \\t ${v.toStringAsFixed(3)}");\n\n  // 利用已知的 t0, x0, t 終點值與步階增量值 h, 迭代求 x 對應值\n  // 索引值 i 將每次增量 1, 從 i=1 執行 for 環圈至 i=n\n  for (int i = 1; i <= n; i++) {\n    // 將此階段的 t 與 x 值代入 dxdt 與 dvdt 函式求下列四個浮點變數值\n    // 因為必須兩個函式耦合, 必須同時計算\n    double xk1 = h * dxdt(t0, x, v);\n    double vk1 = h * dvdt(t0, x, v);\n    double xk2 = h * dxdt(t0 + 0.5 * h, x + 0.5 * xk1, v + 0.5 * vk1);\n    double vk2 = h * dvdt(t0 + 0.5 * h, x + 0.5 * xk1, v + 0.5 * vk1);\n    double xk3 = h * dxdt(t0 + 0.5 * h, x + 0.5 * xk2, v + 0.5 * vk2);\n    double vk3 = h * dvdt(t0 + 0.5 * h, x + 0.5 * xk2, v + 0.5 * vk2);\n    double xk4 = h * dxdt(t0 + h, x + xk3, v + vk3);\n    double vk4 = h * dvdt(t0 + h, x + xk3, v + vk3);\n    // 利用上述四個變數值求此步階增量後的對應 x 值\n    x = x + (1.0 / 6.0) * (xk1 + 2 * xk2 + 2 * xk3 + xk4);\n    v = v + (1.0 / 6.0) * (vk1 + 2 * vk2 + 2 * vk3 + vk4);\n    // 每次 for 迴圈執行最後, 準備計算下一個步階增量後的 x 對應值\n    // t 起始值配合步階增量值 h, 進行增量\n    t0 = t0 + h;\n    // 列出各模擬運算時間點所得到的結果\n    // 只列到小數點第三位, 時間、位移與速度以 \\t  隔開, \\t 代表插入 tab 符號, 可將資料複製到 Excel 進行繪圖\n  print("${t0.toStringAsFixed(3)} \\t ${x.toStringAsFixed(3)} \\t ${v.toStringAsFixed(3)}");\n  }\n\n  // 完成 for 迴圈迭代後, 傳回與 t 終點值對應的 x 值\n  return [x, v];\n}\n\n// 將微分方程式 "dx / dt = v" 定義為 dxdt 函式\ndxdt(t, x, v) {\n  return v;\n}\n\n// dx/dt = v, dv/dt = (f-kx-bv)/m\ndvdt(t, x, v) {\n  return (f - k * x - b * v) / m;\n}\n\n// 定義 main() 主函式內容, 目的在利用 rungeKutta 函式\n// 解常微分方程式\nmain() {\n// Driver method\n// num 資料型別可以是整數或雙浮點數\n  num t0 = 0;\n  num x0 = 1;\n  num v0 = 0;\n  num t = 20;\n  double h = 0.1;\n  rungeKutta(t0, x0, v0, t, h);\n} \n dartpad: https://dartpad.dartlang.org/?id=46568a6b0abd2150e42d7c609ad05fba \xa0 \n gist: https://gist.github.com/40823246/46568a6b0abd2150e42d7c609ad05fba \n \n 微分方程模擬結果: \n \n', 'tags': '', 'url': 'Dartpad.html'}, {'title': 'usb2', 'text': '\n \n \n \n \n \n  取 Dart 程式的按鈕  \n', 'tags': '', 'url': 'usb2.html'}, {'title': 'dartpad2', 'text': '\n \n \n  取 Dart 程式的按鈕  \n 純 Dart 程式 \n Hello   For Loop   Sum   Runge-Kutta   RK ex1   Mass Spring Damping   Function   Function Parameter   Fat Arrow   Temp   fortemp \n Html 程式 \n ROC Flag   Grid   X-Y Plot   Slithery 亂數分組 \n Flutter 程式 \n Flutter1   Flutter2   Flutter3 \n  內建放入的 Dart 原始碼  \n 放大   回復 \n \n', 'tags': '', 'url': 'dartpad2.html'}, {'title': 'javascript', 'text': '\n \n \n \n 亂數分組: \n 學員名單 URL:   每組人數:      \n \n \n \n', 'tags': '', 'url': 'javascript.html'}, {'title': 'Video', 'text': '網站標題更改 \n \n \n 影片嵌入教學 \n \n  The video  \n \n', 'tags': '', 'url': 'Video.html'}, {'title': 'Note', 'text': 'git push指令: 到想上傳的目錄輸入 git add . \n \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0git commit -m "add 儲存名稱" \xa0 \n \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0git push \n \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0 \xa0接著打上帳號,密碼即可 \n \n 怎麼嵌入圖片到網站: \n 1.點擊image upload \n \n 2.選擇圖片,Upload all \n \n 3.到編輯,點插入圖片 \n \n 4.選擇圖片 \n \n \n 如何將Dartpad嵌入網站: \n 1.進入gist並點選想嵌入的程式碼,將代碼複製下來 \n \n 2.到Dartpad網站,把網址後綴/?id=代碼, 即:https://dartpad.dartlang.org/?id=46568a6b0abd2150e42d7c609ad05fba \n \n 3.進入編輯,點擊編輯程式碼 \n \n 4.輸入以下代碼,將紅線部分改成上述網址(width,height可改大小) \n \n', 'tags': '', 'url': 'Note.html'}, {'title': 'W16 檢驗考試', 'text': '\n \n  取 Dart 程式的按鈕  \n 純 Dart 程式 \n Hello   For Loop   Sum   Runge-Kutta   Temp   fortemp \n Html 程式 \n ROC Flag   亂數分組 \n  內建放入的 Dart 原始碼  \n 放大   回復 \n \n', 'tags': '', 'url': 'W16 檢驗考試.html'}, {'title': 'w17 檢驗考試', 'text': '\n \n  取 Dart 程式的按鈕  \n 純 Dart 程式 \n 磅轉公斤 \n Html 程式 \n 重量轉換 \n  內建放入的 Dart 原始碼  \n 放大   回復 \n \n 請輸入所要轉換的重量以數字加上 KG 或 LB:     轉換結果: \n \n \n', 'tags': '', 'url': 'w17 檢驗考試.html'}]};