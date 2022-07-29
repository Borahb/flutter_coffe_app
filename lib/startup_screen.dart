import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_coffeeapp/home_screen.dart';



class StartUp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            Container(
              height: 450,
            decoration: BoxDecoration(
              color:Colors.white,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('images/1.jpg')
              )
            ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Coffee so good,\nyour taste buds \n    will love it.', style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'The best grain, the finest roast, the\n                   powerful flavor.', style: TextStyle(
                        color: Color(0xff847B7B),
                        fontSize: 18,
                        fontWeight: FontWeight.w300
                      )
                    ),
                  ],
                ),
              ],
            ),
             SizedBox(height: 30,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10.0),
                  child: Container(
                    height: 60,
                    width: 300,
                    decoration: BoxDecoration(
                      color: Color(0xffD36E2F),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Get Started',style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30,),
          ],
        ),
      ),
    );
  }
}