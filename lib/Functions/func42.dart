import 'dart:async';
import 'dart:math';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

settingResult7(resultdata) {
  var numbers = [4,2];
  var list = [];
  get3uniquevalue(list);
  get3uniquevalue(list);
  print("a" + list.toString());
  var array = new List<int>.generate(6, (int index) => index + 1);
  array.shuffle();
  print(list + array);
  assignvalue7(numbers,resultdata,array,list);
}

get3uniquevalue(lis) {
  print("hello");
  var rand = new Random();
  var r = 1 + rand.nextInt(6);
  if (lis.contains(r)) {
    get3uniquevalue(lis);
  } else {
    lis.add(r);
  }
}

assignvalue7(numbers,resultdata,array,list){
  int n1=numbers[0];
  int n2=n1+numbers[1];

  int index=0;
  for(var i=index;i<n1;i++){
    resultdata[array[i]]=list[0];
  }
    for(var i=n1;i<n2;i++){
    resultdata[array[i]]=list[1];
  }



}

// var lis = [];
// var lisposition = [];

// shuffleresult(list)  {
//   var rand = new Random();
//   // var r = 1 + rand.nextInt(3);
//   var ra = 1;

//   switch (ra) {
//     case 1:
//       {
//         for (int i = 1; i < 3; i++) {
//           print(i.toString() + "1st loop");
//           var rand=new Random();
//           var r=1 + rand.nextInt(6);
//           lisposition.add(r);

//           while (lisposition.contains(r)) {
//             var rand = new Random();
//             r = 1 + rand.nextInt(6);
//             print("Aaaaaa"+r.toString());

//             if(!lisposition.contains(r)) {
//               lisposition.add(r);
//             }
//           }
//            assignval(r, list);

//         }

//         for (int i = 1; i < 3; i++) {
//           print(i.toString() + "2nd loop");
//           var rand=new Random();
//           var r=1 + rand.nextInt(6);
//           lisposition.add(r);

//            while (lisposition.contains(r)) {
//             var rand = new Random();
//             r = 1 + rand.nextInt(6);
//             print("Aaaaaa"+r.toString());
//             if(!lisposition.contains(r)) lisposition.add(r);
//           }
//            assignval(r, list);
//         }
//       }
//       break;
//     case 2:
//       {}
//       break;
//     case 3:
//       {}
//       break;
//     case 4:
//       {}
//       break;
//     case 5:
//       {}
//       break;
//     case 6:
//       {}
//       break;
//     case 7:
//       {}
//       break;
//     case 8:
//       {}
//       break;
//     case 9:
//       {}
//       break;
//     case 10:
//       {}
//       break;
//   }
//   // await assignval(1, list);
//   // await assignval(2, list);
//   // await assignval(3, list);
//   // print("ASDADDDA");
//   // await assignval(4, list);
//   // print("ASDADDDA2");
//   // await assignval(5, list);
//   // print("ASDADDDA3");
//   // await assignval(6, list);
//   // await print("A"+lis.toString());
//   lisposition.clear();

//   print(lis);
//   lis.clear();
// }

// assignval(i, a) async {
//   var rnd = new Random();
//   var r = 1 + rnd.nextInt(6);

//   if (lis.contains(r)) {
//     assignval(i, a);
//     print("Again called");
//   } else {
//     print("AHHAHAHA");
//     a[i] = r;
//     lis.add(r);
//     // lis.add(r);
//   }
// }
