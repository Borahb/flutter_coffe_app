import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/buy_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CoffeeDetailsPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: (){
                            Navigator.pop(context);
                          }, 
                          icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
                        Text('Details',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        Icon(Icons.favorite_border)
            
                      ],
                    ),
            
                  ),
                  Container(
                    height: 280,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: AssetImage(
                                "images/3_1.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cappuccino",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "With Chocolate",
                            style: TextStyle(
                              color: Color(0xff948585),
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "images/star.svg",
                                height: 20,
                                color: Color(0xffFBBE21),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "4.8",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Text(
                                "(230)",
                                style: TextStyle(color: Color(0xff948585)),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                            width:320,
                            child: Divider(
                              
                              color: Colors.black,
                            )
                          )
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        RichText(
                          text:
                         TextSpan(
                        text:  "A cappuccino is an approximately 150ml beverage, with 25 ml of espresso coffee and 85 ml of fresh milk the fo....",
                        style: TextStyle(color: Color(0xff948585), fontSize: 15),
                        children:[
                          TextSpan(text: "Read More",style: TextStyle(color: Color(0xffD36E2F), fontSize: 15, fontWeight: FontWeight.bold))
                        ]
                        
                        
                        ),
                        
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Size",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 37,
                              width: 100,
                              child: Center(
                                  child: Text(
                                    "S",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        ),
                                  )),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black)
                                  ),
                            ),
                            
                            Container(
                              height: 37,
                              width: 100,
                              child: Center(
                                  child: Text(
                                    "M",
                                    style: TextStyle(
                                        color: Colors.orange,
                                        fontSize: 18,
                                        ),
                                  )),
                              decoration: BoxDecoration(
                                  color: Colors.orange[50],
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.orange)
                                  ),
                                  
                            ),
                            
                            Container(
                              height: 37,
                              width: 100,
                              child: Center(
                                  child: Text(
                                    "L",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        ),
                                  )),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                   border: Border.all(color: Colors.black)
                                  ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Price",
                                  style: TextStyle(
                                      color: Color(0xff919296),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: [
                                    Text(
                                      r'Rs',
                                      style: TextStyle(
                                          color: Color(0xffd17842), fontSize: 21,fontWeight: FontWeight.bold  ),
                                    ),
                                    Text(
                                      " 180.00",
                                      style: TextStyle(
                                          color: Color(0xffd17842), fontSize: 21,  fontWeight: FontWeight.bold),
                                    )
                                  ],
                                )
                              ],
                            ),
                            // ignore: deprecated_member_use
                            ButtonTheme(
                              minWidth: 200,
                              height: 50,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                onPressed: () {
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Buy()));
                                },
                                color: Color(0xffd17842),
                                child: Text(
                                  "Buy Now",
                                  style: TextStyle(color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
