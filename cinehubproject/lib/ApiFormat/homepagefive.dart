import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Dummydata.dart';
import 'model_class.dart';

class HomePagefive extends StatefulWidget {
  const HomePagefive({super.key});

  @override
  State<HomePagefive> createState() => _HomePagefiveState();
}

class _HomePagefiveState extends State<HomePagefive> {
  int? isSelected;

  void data(int val) {
    setState(() {
      isSelected = val;
    });
  }
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TicketformatPageOne pageft = TicketformatPageOne.fromJson( DummyDataFive.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: IconButton(
          onPressed: () {},
          icon:  Icon(
              pageft.icon,
            size: 30,
            color: Colors.white,
          ),
        ),
        title: Text(
          pageft.title,
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pageft.print,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: EdgeInsets.only(top: 20,right:20,),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 30,
                    crossAxisSpacing: 30,
                  ),
                  itemCount:4,
                  itemBuilder: (context, index) {
                    TicketformatPageOne pageft = TicketformatPageOne.fromJson( DummyDataFive.jsonData[index]);
                    return  GestureDetector(
                      onTap: () {
                        data(index);
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 180,
                            decoration: BoxDecoration(
                              color: isSelected == index
                                  ? Colors.blue[200]
                                  : Colors.white,
                              borderRadius: BorderRadius.circular(35.0),
                            ),
                            child: Padding(
                              padding:  EdgeInsets.only(top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      // Handle image tap
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content:
                                          Text('Tapped on ${pageft.formatname}'),
                                        ),
                                      );
                                    },
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20.0),
                                      child: Stack(
                                        children: [
                                          Image.asset(
                                            pageft.imagepath,
                                            fit: BoxFit.cover,
                                            width: 140,
                                            height: 90,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 25),
                                    child: Text(
                                      pageft.formatname,
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );

                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 120, bottom: 50),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[900],
                      ),
                      onPressed: () {},
                      child:  Text(
                        pageft.submit,
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
