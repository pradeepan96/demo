import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConcertsPage extends StatefulWidget {
  const ConcertsPage(
      {super.key,});

  @override
  State<ConcertsPage> createState() => _ConcertsPageState();
}
class _ConcertsPageState extends State<ConcertsPage> {
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
          'RAHMANIA',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 30,right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 380,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/arrahman.jpg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white, width: 1),
                ),
              ),
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 30,left:60),
                    child: Row(
                      children: [
                        Text(
                          'Greatest',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:5),
                          child: Text(
                            'Hits of',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:5),
                          child: Text(
                            'AR RAHMAN,',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 60),
                child: Row(
                  children: [
                    Text(
                      'A RAHMAN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:5),
                      child: Text(
                        'Rhapsody',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:5),
                      child: Text(
                        'Live in',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 110),
                child: Text(
                  'Singapore',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Venue : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'SNS stadium',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(top:10),
                child: Row(
                  children: [
                    Text(
                      'Location : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Singapore',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:5),
                      child: Text(
                        'National',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 67),
                child: Row(
                  children: [
                    Text(
                      ' Stadium,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:5),
                      child: Text(
                        'Singapore.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Date : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Aug31,2024',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Price : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'RS.10,000',
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
                padding: const EdgeInsets.only(top:20,left:120,bottom: 20,),
                child: ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(maximumSize: const Size(200, 100), alignment: Alignment.center,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.red[900]),
                  child: const Text('Book Tickets',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}