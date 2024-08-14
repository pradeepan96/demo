import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TicketFormatPage extends StatefulWidget {
  const TicketFormatPage({super.key});

  @override
  State<TicketFormatPage> createState() => _TicketFormatPageState();
}

class _TicketFormatPageState extends State<TicketFormatPage> {
  int? isSelected;

  void data(int val) {
    setState(() {
      isSelected = val;
    });
  }

  final List<String> allImages = [
    'assets/pdfimage.jpg',
    'assets/document.png',
    'assets/imageformat.png',
    'assets/HEIC.png',
  ];
  final List<String> allText = [
    'Pdf format',
    'Document Format',
    'Image Format',
    'HEIC Format',
  ];

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
          'Ticket Page',
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
          padding: const EdgeInsets.only(left: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Print Format Page:',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GridView.builder(
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 8.0,
                    crossAxisSpacing: 8.0,
                  ),
                  itemCount: allImages.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
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
                              padding: const EdgeInsets.only(top: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Stack(
                                      children: [
                                        Image.asset(
                                          allImages[index],
                                          fit: BoxFit.cover,
                                          width: 140,
                                          height: 90,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 25),
                                    child: Text(
                                      allText[index],
                                      style: const TextStyle(
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
                padding: const EdgeInsets.only(top: 50, left: 120, bottom: 50),
                child: Row(
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red[900],
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Submit',
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
