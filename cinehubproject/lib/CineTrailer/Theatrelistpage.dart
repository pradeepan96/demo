import 'package:flutter/material.dart';

class ProjectPage4 extends StatefulWidget {
  const ProjectPage4({Key? key}) : super(key: key);

  @override
  State<ProjectPage4> createState() => _ProjectPage4State();
}

class _ProjectPage4State extends State<ProjectPage4> {
  final List<String> AllImages = [
    'assets/kmtheatre.jpg',
    'assets/vettritheatre.jpg',
    'assets/pvrtheatre.jpg',
    'assets/inoxtheatre.jpg',
  ];
  final List<String> AllFirstText = [
    'Kamala Multiplex',
    'Vettri Cinemas',
    'PVR Theatre',
    'INOX Theatre',
  ];
  final List<String> AllSecondText = [
    '156 Arcot Road -Vadapalani',
    'No.511,G.S.T.ROAD,Chromepet',
    'PVR LTD,Grand Galada Mall,',
    'Arcot Road, Virugambakkam',
  ];
  final List<String> AllThirdText = [
    'Chennai,TamilNadu - 600026',
    'Chennai,TamilNadu - 600044',
    'Chennai,TamilNadu - 600043',
    'Chennai,TamilNadu - 600043',
  ];
  final List<String> Alltime = [
    'OPen',
    'OPen',
    'OPen',
    'OPen',
  ];
  final List<String> AllTime = [
    '. Closes 00:00',
    '. Closes 00:00',
    '. Closes 00:00',
    '. Closes 00:00',
  ];
  final List<String> AllRatings = [
    'Rating : ',
    'Rating : ',
    'Rating : ',
    'Rating : ',
  ];
  final List<String> Allratings = [
    '9.4/10',
    '9/10',
    '9.4/10',
    '9.4/10',
  ];
  final List<String> AllNumbers = [
    '044 2365 2000',
    '044 456 2020',
    '044 2574 2011',
    '044 2574 2011',
  ];

  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Theatres List',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 40,
          ),
          onPressed: () {},
        ),
        backgroundColor: Colors.red[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Search Theatres',
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
                      icon: Icon(
                        Icons.search,
                        color: Colors.black54,
                        size: 38,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.69,
                crossAxisSpacing: 4,
              ),
              itemCount: AllImages.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = (selectedIndex == index) ? null : index;
                    });
                  },
                  child:  GridViewDecoration(
                    text1: AllFirstText[index],
                    text2: AllSecondText[index],
                    text3: AllThirdText[index],
                    imagePath: AllImages[index],
                    time1: Alltime[index],
                    time2: AllTime[index],
                    ratings1: AllRatings[index],
                    ratings2: Allratings[index],
                    numbers: AllNumbers[index],
                    icon1: Icons.access_time_outlined,
                    icon2: Icons.star,
                    icon3: Icons.phone_in_talk_outlined,
                    isSelected: selectedIndex == index,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class GridViewDecoration extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String imagePath;
  final String time1;
  final String time2;
  final String ratings1;
  final String ratings2;
  final String numbers;
  final IconData icon1;
  final IconData icon2;
  final IconData icon3;
  final bool isSelected;

  const GridViewDecoration({
    required this.text1,
    required this.text2,
    required this.text3,
    required this.imagePath,
    required this.time1,
    required this.time2,
    required this.ratings1,
    required this.ratings2,
    required this.numbers,
    required this.icon1,
    required this.icon2,
    required this.icon3,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 200,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: isSelected ? Colors.blue[100] : Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 13.5, top: 15,),
            child: Container(
              height: 150,
              width: 170,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width:3),
                color: Colors.white,
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8,left: 8),
            child: Text(
              text1,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text2,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text3,
              style: TextStyle(
                fontSize: 8,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
            child: Row(
              children: [
                Icon(icon1, size: 16, color: Colors.black),
                const SizedBox(width: 4),
                Text(
                  time1,
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.green,
                  ),
                ),
                Text(
                  time2,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: Row(
              children: [
                Icon(icon2, size: 16, color: Colors.yellow),
                const SizedBox(width: 4),
                Text(
                  ratings1,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
                Text(
                  ratings2,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
            child: Row(
              children: [
                Icon(icon3, size: 16, color: Colors.green),
                const SizedBox(width: 4),
                Text(
                  numbers,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}