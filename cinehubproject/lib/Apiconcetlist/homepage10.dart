
import 'package:flutter/material.dart';

import 'dummydata10.dart';
import 'model_class10.dart';

class Homepageten extends StatefulWidget {
  const Homepageten({super.key});

  @override
  State<Homepageten> createState() => _HomepagetenState();
}

class _HomepagetenState extends State<Homepageten> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    ConcertList listpt = ConcertList.fromJson(DummyDataten.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          listpt.title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            listpt.icon,
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
                    hintText: 'Search Concerts',
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
                    ConcertList listpt =
                        ConcertList.fromJson(DummyDataten.jsonData[index]);
                    return Padding(
                      padding: EdgeInsets.all(15),
                      child: Container(
                        height: 200,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white, width: 2),
                          image: DecorationImage(
                            image: AssetImage(listpt.imagepath),
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
