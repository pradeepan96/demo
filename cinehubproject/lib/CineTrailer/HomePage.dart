import 'package:flutter/material.dart';

import 'CheckBox.dart';

class TheaterListpage extends StatefulWidget {
  const TheaterListpage({super.key});

  @override
  State<TheaterListpage> createState() => _TheaterListpageState();
}

class _TheaterListpageState extends State<TheaterListpage> {
  List<String> allShowTime = [
    '10:45 AM',
    '02:40 PM',
    '06:30 PM',
    '10:20 PM',
  ];
  List<String> allShowSound = [
    '3D ATMOS',
    'IMAX',
    'BIGPIX',
    'BIGPIX',
  ];
  int? selectedCheckboxIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.red[900],
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_circle_left_outlined,
              size: 30,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'INOX Theatre',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              top: 80,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Show Time:',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: allShowTime.length,
                    itemBuilder: (BuildContext contex, int index) {
                      return Padding(
                        padding: EdgeInsets.only(top: 30),
                        child: Row(
                          children: [
                            CheckboxExample(
                              isChecked: selectedCheckboxIndex == index,
                              onChanged: (bool? value) {
                                setState(() {
                                  selectedCheckboxIndex =
                                      value == true ? index : null;
                                });
                              },
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Container(
                                height: 60,
                                width: 200,
                                decoration: BoxDecoration(
                                  color: selectedCheckboxIndex == index
                                      ? Colors.blue
                                      : Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Column(
                                    children: [
                                      Text(
                                        allShowTime[index],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        allShowSound[index],
                                        style: const TextStyle(
                                            color: Colors.black,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
                Padding(
                    padding: EdgeInsets.only(top: 50, left: 100, bottom: 50),
                    child: Row(
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red[900],
                            ),
                            onPressed: () {},
                            child: const Text(
                              'Submit',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}

//  import 'package:flutter/material.dart';
//
//  void main() {
//    runApp(MyApp());
//  }
//
//  class MyApp extends StatelessWidget {
//    final List<CheckboxModel> checkboxes = [
//      CheckboxModel(title: 'Checkbox 1'),
//      CheckboxModel(title: 'Checkbox 2'),
//      CheckboxModel(title: 'Checkbox 3'),
//      CheckboxModel(title: 'Checkbox 4'),
//    ];
//
//    @override
//    Widget build(BuildContext context) {
//      return MaterialApp(
//        home: Scaffold(
//          appBar: AppBar(
//            title: Text('Multiple Checkboxes Example'),
//          ),
//          body: ListView.builder(
//            itemCount: checkboxes.length,
//            itemBuilder: (BuildContext context, int index) {
//              return CheckboxListTile(
//                title: Text(checkboxes[index].title),
//                value: checkboxes[index].isChecked,
//                activeColor: Colors.white,
//                checkColor: Colors.black,
//                onChanged: (bool? value) {
//                  if (value != null) {
//                    checkboxes[index].isChecked = value;
//                  }
//                  // Refresh the UI to reflect checkbox changes
//                  setState(() {
//
//                  });
//                },
//              );
//            },
//          ),
//        ),
//      );
//    }
//
//   void setState(Null Function() param0) {}
//  }
//
// class CheckboxModel {
//   String title;
//   bool isChecked;
//
//   CheckboxModel({required this.title, this.isChecked = false});
// }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   final List<String> options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
//   List<bool> checked = [false, false, false, false];
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Checkbox with Container Example'),
//         ),
//         body: ListView.builder(
//           itemCount: options.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Container(
//               margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
//               padding: EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(8),
//                 border: Border.all(color: Colors.grey),
//               ),
//               child: Row(
//                 children: [
//                   Checkbox(
//                     value: checked[index],
//                     onChanged: (bool? value) {
//                       if (value != null) {
//                         checked[index] = value;
//                       }
//                       // Refresh the UI to reflect checkbox changes
//                       setState(() {});
//                     },
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     options[index],
//                     style: TextStyle(fontSize: 16),
//                   ),
//                 ],
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
//
//   void setState(Null Function() param0) {}
// }
//import 'package:flutter/material.dart';
//
// class CheckboxContainerSelection extends StatefulWidget {
//   const CheckboxContainerSelection({super.key});
//
//   @override
//   _CheckboxContainerSelectionState createState() =>
//       _CheckboxContainerSelectionState();
// }
//
// class _CheckboxContainerSelectionState
//     extends State<CheckboxContainerSelection> {
//   bool isSelected = false;
//
//   void toggleSelection() {
//     setState(() {
//       isSelected = !isSelected;
//     });
//   }
//
//   List<String> allShowTime = [
//     '10:45 AM',
//     '02:40 PM',
//     '06:30 PM',
//     '10:20 PM',
//   ];
//   List<String> allShowSound = [
//     '3D ATMOS',
//     'IMAX',
//     'BIGPIX',
//     'BIGPIX',
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           backgroundColor: Colors.red[900],
//           leading: IconButton(
//             onPressed: () {},
//             icon: const Icon(
//               Icons.arrow_circle_left_outlined,
//               size: 30,
//               color: Colors.white,
//             ),
//           ),
//           title: const Text(
//             'INOX Theatre',
//             style: TextStyle(
//                 color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           centerTitle: true,
//         ),
//         body: SingleChildScrollView(
//             child: Padding(
//                 padding: const EdgeInsets.only(
//                   left: 20,
//                   top: 80,
//                 ),
//                 child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       const Text(
//                         'Show Time:',
//                         style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold),
//                       ),
//                       ListView.builder(
//                           shrinkWrap: true,
//                           itemCount: allShowTime.length,
//                           itemBuilder: (BuildContext contex, int index) {
//                             return Padding(
//                               padding: EdgeInsets.only(top: 30),
//                               child: GestureDetector(
//                                 onTap: toggleSelection,
//                                 child: Row(
//                                   children: [
//                                     Checkbox(
//                                       value: isSelected,
//                                       onChanged: (value) {
//                                         setState(() {
//                                           isSelected = value!;
//                                         });
//                                       },
//                                     ),
//                                     Container(
//                                       padding: const EdgeInsets.all(10),
//                                       decoration: BoxDecoration(
//                                         color: isSelected
//                                             ? Colors.blue
//                                             : Colors.grey,
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                       child: Padding(
//                                         padding: const EdgeInsets.only(top: 10),
//                                         child: Column(
//                                           children: [
//                                             Text(
//                                               allShowTime[index],
//                                               style: const TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                             Text(
//                                               allShowSound[index],
//                                               style: const TextStyle(
//                                                   color: Colors.black,
//                                                   fontSize: 15,
//                                                   fontWeight: FontWeight.bold),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             );
//                           }),
//                       Padding(
//                           padding: EdgeInsets.only(top: 50, left: 100, bottom: 50),
//                           child: Row(
//                             children: [
//                               ElevatedButton(
//                                   style: ElevatedButton.styleFrom(
//                                     backgroundColor: Colors.red[900],
//                                   ),
//                                   onPressed: () {},
//                                   child: const Text(
//                                     'Submit',
//                                     style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 20,
//                                         fontWeight: FontWeight.bold),
//                                   ))
//                             ],
//                           ))
//
//                     ]))));
//   }
// }

// void main() {
//   runApp(MaterialApp(
//     home: Scaffold(
//       appBar: AppBar(
//         title: Text('Checkbox and Container Selection'),
//       ),
//       body: Center(
//         child: CheckboxContainerSelection(),
//       ),
//     ),
//   ));
// }
