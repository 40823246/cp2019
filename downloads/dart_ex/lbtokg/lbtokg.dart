lbtokg(num lb){
return lb*0.45359237;
}

kgtolb(num kg){
return kg*2.20462262;
}

main() { 
  int len; 
  var type;  
  var number;
  List weight = ["25kg", "30lb", "56lb", "14kg", "68lb", "198kg"];
  for (var data in weight) {
    
    len = data.length;    
    type = data[len-1];   
    number = data.substring(0, len-2);   
    number = int.parse(number);
   
    if (type == "b"){     
      print("$number 磅 =  ${lbtokg(number).toStringAsFixed(4)} 公斤");
      
    }else{     
      print("$number 公斤 =  ${kgtolb(number).toStringAsFixed(4)} 磅");
    }
      
  } 
} 