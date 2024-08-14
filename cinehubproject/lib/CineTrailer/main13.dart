import 'package:cinehubproject/CineTrailer/ConcertsPage2.dart';
import 'package:flutter/material.dart';
import 'ConcertsPage.dart';
import 'ConcertsPage2.dart';
import 'HomePage.dart';
import 'Theatrelistpage.dart';
import 'TicketFormatpage.dart';
import 'TrailerScreen2.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       //home: CineTrailer(),
      // home: CineTrailer2(),
      //home: ConcertsPage(),
      //   home:ProjectPage4(),
      //home:ConcertsPage2(),
      //home: TheaterListpage(),
        home:TicketFormatPage(),
    );
  }
}
// import 'package:flutter/material.dart';
//
// class SeatGrid extends StatelessWidget {
//   final List<Seat> seats;
//   final void Function(int) onSeatTap;
//
//   SeatGrid({required this.seats, required this.onSeatTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 6, // Number of columns
//         crossAxisSpacing: 4.0,
//         mainAxisSpacing: 4.0,
//       ),
//       itemCount: seats.length,
//       itemBuilder: (context, index) {
//         final seat = seats[index];
//         return GestureDetector(
//           onTap: () => onSeatTap(seat.id),
//           child: Container(
//             decoration: BoxDecoration(
//               color: seat.isBooked ? Colors.green : Colors.grey,
//               borderRadius: BorderRadius.circular(4.0),
//             ),
//             child: Center(
//               child: Text(
//                 '${seat.id}',
//                 style: TextStyle(color: Colors.white),
//               ),
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List<Seat> seats = List.generate(
//     30, // Total number of seats
//         (index) => Seat(id: index + 1),
//   );
//
//   void _onSeatTap(int seatId) {
//     setState(() {
//       final seatIndex = seats.indexWhere((seat) => seat.id == seatId);
//       if (seatIndex != -1) {
//         seats[seatIndex] = Seat(
//           id: seats[seatIndex].id,
//           isBooked: !seats[seatIndex].isBooked,
//         );
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Seat Booking')),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: SeatGrid(
//           seats: seats,
//           onSeatTap: _onSeatTap,
//         ),
//       ),
//     );
//   }
// }
//
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Seat Booking App',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
// class Seat {
//   final int id;
//   final bool isBooked;
//
//   Seat({required this.id, this.isBooked = false});
// }
//
// import 'package:flutter/material.dart';
//
// class Seat {
//   final int id;
//   final String seatNumber;
//   bool isBooked;
//
//   Seat({
//     required this.id,
//     required this.seatNumber,
//     this.isBooked = false,
//   });
// }
//
// class Section {
//   final String name;
//   final List<List<Seat>> rows;
//
//   Section({
//     required this.name,
//     required this.rows,
//   });
// }
//
//
// // import 'models.dart';
//
// class SeatWidget extends StatelessWidget {
//   final Seat seat;
//   final VoidCallback onTap;
//
//   SeatWidget({required this.seat, required this.onTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         margin: EdgeInsets.all(4.0),
//         padding: EdgeInsets.all(8.0),
//         decoration: BoxDecoration(
//           color: seat.isBooked ? Colors.red : Colors.green,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Center(
//           child: Text(
//             seat.seatNumber,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'models.dart';
// // import 'seat_widget.dart';
//
// class SectionWidget extends StatelessWidget {
//   final Section section;
//   final void Function(int, int) onSeatTap;
//
//   SectionWidget({required this.section, required this.onSeatTap});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           section.name,
//           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//         ),
//         ...section.rows.map((row) {
//           return Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: row.map((seat) {
//               final seatIndex = row.indexOf(seat);
//               final rowIndex = section.rows.indexOf(row);
//               return SeatWidget(
//                 seat: seat,
//                 onTap: () => onSeatTap(rowIndex, seatIndex),
//               );
//             }).toList(),
//           );
//         }).toList(),
//       ],
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'models.dart';
// // import 'section_widget.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   List<Section> sections = [
//     Section(
//       name: 'VIP Section',
//       rows: [
//         [Seat(id: 1, seatNumber: 'A1'), Seat(id: 2, seatNumber: 'A2')],
//         [Seat(id: 3, seatNumber: 'B1'), Seat(id: 4, seatNumber: 'B2')],
//       ],
//     ),
//     Section(
//       name: 'Regular Section',
//       rows: [
//         [Seat(id: 5, seatNumber: 'C1'), Seat(id: 6, seatNumber: 'C2')],
//         [Seat(id: 7, seatNumber: 'D1'), Seat(id: 8, seatNumber: 'D2')],
//       ],
//     ),
//   ];
//
//   void _onSeatTap(int sectionIndex, int rowIndex) {
//     setState(() {
//       final section = sections[sectionIndex];
//       final seat = section.rows[rowIndex].firstWhere((seat) => !seat.isBooked);
//       seat.isBooked = !seat.isBooked;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Theater Seat Booking')),
//       body: ListView(
//         padding: EdgeInsets.all(8.0),
//         children: sections.asMap().entries.map((entry) {
//           final sectionIndex = entry.key;
//           final section = entry.value;
//           return SectionWidget(
//             section: section,
//             onSeatTap: (rowIndex, seatIndex) {
//               _onSeatTap(sectionIndex, rowIndex);
//             },
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
// // import 'package:flutter/material.dart';
// // import 'home_page.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Theater Seat Booking',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: HomePage(),
//     );
//   }
// }
