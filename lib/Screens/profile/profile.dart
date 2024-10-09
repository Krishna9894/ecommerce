import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 10)),
              Center(
                child: Text(
                  "Profile ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("images/girls combo2.jpg"),
                      // image: AssetImage(categories[index].image),
                      fit: BoxFit.cover),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                        Text(
                          "My Profile",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.location_on_outlined)),
                        Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 195,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                        Text(
                          "My Orders",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 180,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                        Text(
                          "My Cart",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                        Text(
                          "Settings",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 200,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Container(
                    height: 50,
                    width: double.infinity,
                    color: Colors.white,
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                        Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 210,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_sharp,
                            size: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
