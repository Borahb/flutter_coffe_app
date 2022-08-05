import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_coffeeapp/buy_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:readmore/readmore.dart';

class CoffeeDetailsPage extends StatefulWidget {



  const CoffeeDetailsPage({Key key}) : super(key: key);

  @override
  State<CoffeeDetailsPage> createState() => _CoffeeDetailsPageState();
}


class _CoffeeDetailsPageState extends State<CoffeeDetailsPage> with TickerProviderStateMixin  {


  TabController tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  List<String> items = [
    "S",
    "M",
    "L",
  ];

  int current = 0;

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
                                  fontWeight: FontWeight.bold
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
                        ReadMoreText(
                        'A cappuccino is an approximately 150 ml (5 oz) beverage, with 25 ml of espresso coffee and 85ml of fresh milk the foaming action creates the additional volume. Great cappuccino is a delight available to discerning coffee lovers, right in their own kitchens.  It takes some practice with water, steam and foam, along with the right equipment on your countertop.  You’ll want an espresso machine with a built-in steaming wand. And of course, illy coffee on hand as your foundation.',
                        trimLines: 3,
                        colorClickableText: Colors.orange,
                        trimMode: TrimMode.Line,
                        trimCollapsedText: 'Read more',
                        trimExpandedText: 'Read less',
                        moreStyle: TextStyle(fontSize: 15, color: Colors.orange ),
                        style: TextStyle(color: Color(0xff948585), fontSize: 15),
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

        SizedBox(
          width: double.infinity,
          height: 60,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: items.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx,index) {
              return Column(
                children: [
                   GestureDetector(
        
                            onTap: () {
                              setState(() {
                                current = index;
                              });
                            },
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 200),
                              margin: const EdgeInsets.all(5),
                              width: 80,
                              height: 45,
                              decoration: BoxDecoration(
                                color: current == index
                                    ? Colors.orange[50]
                                    : Colors.white54,
                                borderRadius: current == index
                                    ? BorderRadius.circular(10)
                                    : BorderRadius.circular(10),
                                border: current == index
                                    ? Border.all(
                                        color: Colors.orange, width: 1)
                                    : Border.all(
                                        color: Colors.black, width: 1),
                              ),
                              child: Center(
                                child: Text(
                                  items[index],
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: current == index
                                          ? Colors.orange
                                          : Colors.black),
                                ),
                              ),
                            ),
                          ),
                        ]
                
              );
            }
            ),
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
