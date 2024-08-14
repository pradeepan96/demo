import 'package:flutter/material.dart';

import 'CustomAppbar.dart';
import 'CustomWidgets.dart';

class ProjectPage extends StatefulWidget {
  const ProjectPage({super.key});

  @override
  State<ProjectPage> createState() => _ProjectPageState();
}

class _ProjectPageState extends State<ProjectPage> {
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
            'KALKI 2898 AD',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(top: 30, left: 30, right: 30),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 380,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/Kalki.jpg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Colors.white, width: 1),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Starring:",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Prabhas, Kamal hasan",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          // Text(
                          //   widget.text3,
                          //   style: TextStyle(
                          //     color: Colors.white,
                          //     fontSize: 15,
                          //     fontWeight: FontWeight.normal,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 65),
                      child: Text(
                        "Amitabh bachchan,",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 65),
                      child: Text(
                        "Deepika padukone",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "Director:",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Nag Ashwin.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Music director:",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Santosh",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: [
                          Text(
                            "Rating:",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "7.8/10 (33k votes)",
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "Book tickets",
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            maximumSize: Size(200, 100),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.red[900]),
                      ),
                    ),
                  ])),
        ));

    //   );Column(
    //     children: [
    //       ImageWidget(
    //         imagePath: 'assets/Kalki.jpg',
    //         text1: 'Starring : ',
    //         text2: 'Prabhas,',
    //         text3: 'Kamal hasan,',
    //         text4: 'Amitabh bachachan',
    //         text5: 'Deepika padukone',
    //         text6: 'Director : ',
    //         text7: 'Nag Ashwin',
    //       ),
    //       TextWidgetOne(
    //         text1: 'Music Director : ',
    //         text2: 'Santosh narayanan', text3: 'Rating : ', text4: '7.8/10 (33k votes)',
    //         text5: 'Books Tickets',
    //       ),
    //     ],
    //   ),
    // ));
  }
}
