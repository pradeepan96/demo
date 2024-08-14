import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConcertsPage2 extends StatefulWidget {
  const ConcertsPage2(
      {super.key,});

  @override
  State<ConcertsPage2> createState() => _ConcertsPage2State();
}
class _ConcertsPage2State extends State<ConcertsPage2> {
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
          'yuvanism',
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
                height: 300,
                decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/yuvanr.jpg'),
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
                          'U1' ,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left:5),
                          child: Text(
                            'Long Drive -',
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
                            'Live In Concert',
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
                padding: EdgeInsets.only(left: 110),
                child: Text(
                  'Chennai',
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
                      'YMCA, Nandanam',
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
                      'YMCA,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:5),
                      child: Text(
                        'kamarajar',
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
                      ' Street,',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left:5),
                      child: Text(
                        'Nandanam,',
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
                      ' Chennai - 600326.',
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
                      'Date : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '5th,Aug 2024',
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
                      'RS.2200',
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