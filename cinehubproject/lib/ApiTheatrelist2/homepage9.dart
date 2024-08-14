import 'package:flutter/material.dart';

import 'checkbox9.dart';
import 'dummydata9.dart';
import 'model_class9.dart';

class HomePagenine extends StatefulWidget {
  const HomePagenine({super.key});

  @override
  State<HomePagenine> createState() => _HomePagenineState();
}

class _HomePagenineState extends State<HomePagenine> {
  int? selectedCheckboxIndex;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TheatreListPagefour tpage = TheatreListPagefour.fromJson(DummyDatanine.jsonData[index]);
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
                  itemCount: DummyDatanine.jsonData.length,
                  itemBuilder: (BuildContext contex, int index) {
                    TheatreListPagefour tpage = TheatreListPagefour.fromJson(
                        DummyDatanine.jsonData[index]);
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
