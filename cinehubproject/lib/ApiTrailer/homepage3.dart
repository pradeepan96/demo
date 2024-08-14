import 'package:flutter/material.dart';
import 'dummy_data3.dart'; // Ensure this path is correct
import 'model_class3.dart'; // Ensure this path is correct

class HomePageThree extends StatefulWidget {
  const HomePageThree({super.key});

  @override
  State<HomePageThree> createState() => _HomePageThreeState();
}

class _HomePageThreeState extends State<HomePageThree> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    UserData user = UserData.fromJson(DummyData3.jsonData[index]);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        leading: Icon(
          user.icon,
          size: 40,
          color: Colors.white,
        ),
        title: Text(
          user.title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Container(
                height: 380,
                width: 270,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(user.imagepath),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(
                    color: Colors.white,
                    width: 2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Text(
                      user.starring,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      user.starringone,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                user.starringtwo,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Text(
                user.starringthree,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      user.director,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      user.directorname,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    user.musicdirector,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    user.musicdirectorname,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      user.language,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      user.languagenames,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  children: [
                    Text(
                      user.duration,
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      user.durationtime,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade900,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  // Implement booking functionality here
                },
                child: Text(
                  user.ebtext,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
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