import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/coffee_details_page.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Tab1 extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
                      },
                      
                        child: Container(
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 125,
                                width:130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('images/2.jpg'),
                                    fit: BoxFit.fill
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    SvgPicture.asset(
                                        "images/star.svg",
                                        height: 13,
                                        color: Color(0xffFBBE21),
                                      ),
                                    SizedBox(
                                        width: 10,
                                      ),
                                    Text(
                                        "4.8",
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cappuccino",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'with Chocolate',
                                        style: TextStyle(
                                            color: Color(0xff919293), fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                r'Rs ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "180",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffd17842),
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                      //SizedBox( width: 20),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
                        },
                        child: Container(
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 125,
                                width:130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('images/3_1.jpg'),
                                    fit: BoxFit.fill
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    SvgPicture.asset(
                                        "images/star.svg",
                                        height: 13,
                                        color: Color(0xffFBBE21),
                                      ),
                                    SizedBox(
                                        width: 10,
                                      ),
                                    Text(
                                        "4.9",
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cappuccino",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'with Oat Milk',
                                        style: TextStyle(
                                            color: Color(0xff919293), fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                r'Rs ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "120",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffd17842),
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
                      },
                      
                        child: Container(
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 125,
                                width:130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('images/2.jpg'),
                                    fit: BoxFit.fill
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    SvgPicture.asset(
                                        "images/star.svg",
                                        height: 13,
                                        color: Color(0xffFBBE21),
                                      ),
                                    SizedBox(
                                        width: 10,
                                      ),
                                    Text(
                                        "4.8",
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cappuccino",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'with Chocolate',
                                        style: TextStyle(
                                            color: Color(0xff919293), fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                r'Rs ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "180",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffd17842),
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CoffeeDetailsPage()));
                        },
                        child: Container(
                          height: 250,
                          width: 160,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                height: 125,
                                width:130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage('images/3_1.jpg'),
                                    fit: BoxFit.fill
                                  )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                    SvgPicture.asset(
                                        "images/star.svg",
                                        height: 13,
                                        color: Color(0xffFBBE21),
                                      ),
                                    SizedBox(
                                        width: 10,
                                      ),
                                    Text(
                                        "4.9",
                                        style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 13),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Cappuccino",
                                        style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 3,
                                      ),
                                      Text(
                                        'with Oat Milk',
                                        style: TextStyle(
                                            color: Color(0xff919293), fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Text(
                                                r'Rs ',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 20),
                                              ),
                                              Text(
                                                "120",
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold),
                                              )
                                            ],
                                          ),
                                          Container(
                                              height: 30,
                                              width: 30,
                                              decoration: BoxDecoration(
                                                  color: Color(0xffd17842),
                                                  borderRadius:
                                                      BorderRadius.circular(10)),
                                              child: Icon(
                                                Icons.add,
                                                color: Colors.white,
                                                size: 20,
                                              ))
                                        ],
                                      )
                                    ],
                                  ),
                              )
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
        ],
      ),
    );
  }
}