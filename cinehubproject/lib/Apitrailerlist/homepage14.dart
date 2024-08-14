
import 'package:flutter/material.dart';

import 'Dummydata14.dart';
import 'modelclass14.dart';

class Homepage14 extends StatefulWidget {
  const Homepage14({super.key});

  @override
  State<Homepage14> createState() => _Homepage14State();
}

class _Homepage14State extends State<Homepage14> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TrailerList listft = TrailerList.fromJson( DummyData14.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listft.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            listft.icon,
            color: Colors.white,
            size: 40,
          ),
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
              const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Trailer',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 0.1,
                  ),
                  filled: true,
                  isDense: true,
                  contentPadding: const EdgeInsets.symmetric(vertical: 17),
                  prefixIcon: Container(
                    decoration: BoxDecoration(
                      color: Colors.yellow[800],
                      borderRadius: BorderRadius.circular(30),
                    ),
                    margin: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 38,
                      ),
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (BuildContext context, int index) {
                  TrailerList listft = TrailerList.fromJson( DummyData14.jsonData[index]);
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      height: 300,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.white, width: 2),
                        image: DecorationImage(
                          image: AssetImage(listft.imagepath),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                }
            ),
          ],
        ),
      ),
    );
  }
}
