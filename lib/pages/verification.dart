import 'package:e_commerce/Screens/nav_bar_scrren.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({super.key});

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  bool invaliedOtp = true;
  TextEditingController _Text1Controller = TextEditingController();
  TextEditingController _Text2Controller = TextEditingController();
  TextEditingController _Text3Controller = TextEditingController();
  TextEditingController _Text4Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth > 600 ? 20.0 : 16.0;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              width: 60,
            ),
            Text(
              'Verifucation',
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.only(left: 25, right: 25),
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    'Enter Your',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Text(
                    'verifucation Code ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: TextFormField(
                            controller: _Text1Controller,
                            style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            onChanged: (value) {
                              if (value.length == 1) ;
                              FocusScope.of(context).nextFocus();
                            },
                            decoration: InputDecoration(
                              filled: true,
                              focusColor: Colors.orange,
                              border: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.orange),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.orange, width: 3.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: TextFormField(
                          controller: _Text2Controller,
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            if (value.length == 1) ;
                            FocusScope.of(context).nextFocus();
                          },
                          decoration: InputDecoration(
                            filled: true,
                            focusColor: Colors.orange,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 3.0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: TextFormField(
                          controller: _Text3Controller,
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            if (value.length == 1) ;
                            FocusScope.of(context).nextFocus();
                          },
                          decoration: InputDecoration(
                            filled: true,
                            focusColor: Colors.orange,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 3.0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                        width: 60,
                        child: TextFormField(
                          controller: _Text4Controller,
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                          onChanged: (value) {
                            if (value.length == 1) ;
                            FocusScope.of(context).nextFocus();
                          },
                          decoration: InputDecoration(
                            filled: true,
                            focusColor: Colors.orange,
                            border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.orange),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.orange, width: 3.0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(15.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Text(
                      invaliedOtp ? 'inValiedOtp!' : '',
                      style: TextStyle(fontSize: 15.0, color: Colors.red),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 60.00, end: 0),
                    duration: Duration(seconds: 60),
                    builder: (context, value, child) => Text(
                      "00:${value.toInt()}",
                      style: TextStyle(color: Colors.orange),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'we send your verifucation code',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    children: [
                      Text(
                        'email',
                        style: TextStyle(fontSize: 18),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'jhon*****@gmail.com.',
                        style: TextStyle(
                          color: Colors.orange,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        'you can',
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Text(
                    'check your inbox',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: [
                      Text(
                        "i didn't recived the code? ",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.orange,
                          color: Colors.orange,
                          fontSize: 18,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'send agin',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.orange,
                            color: Colors.orange,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            final otp = _Text1Controller.text +
                                _Text2Controller.text +
                                _Text3Controller.text +
                                _Text4Controller.text;
                            print(otp);
                            if (otp.length == 4) {
                              setState(() {
                                invaliedOtp = false;
                              });

                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (cotext) => BottomNavBar()),
                              );
                            } else {
                              setState(() {
                                invaliedOtp = true;
                              });
                            }
                          },
                          child: Text(
                            'verify',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20.0),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.orange,
                            padding: EdgeInsets.symmetric(
                                horizontal: 125.0, vertical: 15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
