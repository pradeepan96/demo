import 'package:flutter/material.dart';

import 'checkbox.dart';
import 'dummy_data4.dart';
import 'model_class4.dart';

class HomePageFour extends StatefulWidget {
  const HomePageFour({super.key});

  @override
  State<HomePageFour> createState() => _HomePageFourState();
}

class _HomePageFourState extends State<HomePageFour> {
  int? selectedCheckboxIndex;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TheatreListPageOne tpage = TheatreListPageOne.fromJson(DummyDataFour.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            tpage.icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Text(
          tpage.title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: 20,
            top: 80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                tpage.show,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: DummyDataFour.jsonData.length,
                  itemBuilder: (BuildContext contex, int index) {
                    TheatreListPageOne tpage = TheatreListPageOne.fromJson(
                        DummyDataFour.jsonData[index]);
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
                            padding: EdgeInsets.only(left: 20),
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
                                padding: EdgeInsets.only(top: 10),
                                child: Column(
                                  children: [
                                    Text(
                                      tpage.showtime,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      tpage.showsound,
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
                      child: Text(
                        tpage.submit,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
