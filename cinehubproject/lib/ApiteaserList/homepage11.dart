
import 'package:flutter/material.dart';

import 'dummydata11.dart';
import 'modelclass11.dart';

class Homepageeleven extends StatefulWidget {
  const Homepageeleven({super.key});

  @override
  State<Homepageeleven> createState() => _HomepageelevenState();
}

class _HomepageelevenState extends State<Homepageeleven> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    TeaserList listft = TeaserList.fromJson( DummyDataeleven.jsonData[index]);
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
                  hintText: 'Search Teaser',
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    height: 0.1,
                  ),
                  prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black54,
                      size: 38,
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
                  TeaserList listft =
                  TeaserList.fromJson( DummyDataeleven.jsonData[index]);
                  return Padding(
                    padding: EdgeInsets.all(15),
                    child: Container(
                      height: 250,
                      width: 250,
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
