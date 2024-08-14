import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CineTeaser extends StatefulWidget {
  const CineTeaser(
      {super.key,});

  @override
  State<CineTeaser> createState() => _CineTeaserState();
}
class _CineTeaserState extends State<CineTeaser> {
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
            'Thangalaan',
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
                      image: AssetImage('assets/Thangalaan.jpg'),
                      fit: BoxFit.fill),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.white, width: 1),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(
                  top: 10,
                ),
                child: Row(
                  children: [
                    Text(
                      'Starring : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Vikram,Malavika mohan,',
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
                padding: EdgeInsets.only(left: 65),
                child: Text(
                  'Parvathy thiruvothu,',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 65),
                child: Text(
                  'Pasupathy',
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
                      'Director : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Pa.Ranjith',
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
                      'Music Director : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'GV PrakashKumar',
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
                      'Language : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Tamil,Hindi,Telugu',
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
                      'Certificate : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'U/A',
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
                      'Duration : ',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '1m 06s',
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
                  child: const Text('Watch',
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