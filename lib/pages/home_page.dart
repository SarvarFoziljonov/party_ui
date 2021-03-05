import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final id ="home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/im_party.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Colors.black.withOpacity(0.8),
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.2),
              ]
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30,),
              Container(
                child: Column(
                  children: [
                    Text("Find the best parties near you", style: TextStyle(color: Colors.yellow, fontSize: 40, fontWeight: FontWeight.bold),),
                    SizedBox(height: 30,),
                    Text("Let's find a part for your interest ", style: TextStyle(color: Colors.green, fontSize: 25, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              SizedBox(height: 90,),

              _isLogin?
              Container(
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.yellow[900],
                ),
                child: Center(
                  child: Text("Start", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ):
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 55,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red
                        ),
                        child: Center(
                            child: Text(
                              "Google+",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                      SizedBox(width: 20,),
                      Container(
                        height: 55,
                        width: 140,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blue,
                        ),
                        child: Center(
                            child: Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white, fontSize: 18),
                            )),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      )
    );
  }
}
