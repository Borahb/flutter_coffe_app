import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/delivery_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';



class Buy extends StatefulWidget {
 

  @override
  State<Buy> createState() => _BuyState();
}

class _BuyState extends State<Buy> with TickerProviderStateMixin  {

  TabController tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

int text = 1;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
          children: [
            Column(
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
                        Text('Order',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        Text('..........',style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),),
                        

                      ],
                    ),

                  ),

                  SizedBox(height: 20,),

                Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Color(0xffF5EEEE),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: TabBar(
                          
                          controller: tabController,
                          indicatorWeight: 2,
                          labelColor: Colors.white,
                          labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          unselectedLabelColor: Colors.black,
                          indicator:BoxDecoration(
                                    color: Color(0xffC67C4E),
                                     borderRadius: BorderRadius.circular(15),
                                    ),
                          tabs: [
                            Tab(
                              text: 'Delivery'
                            ),
                            Tab(
                              text: 'Pick Up'
                            ),
                          ]
                          ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(height:20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Delivery Address', style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                      ],
                    ),

                    SizedBox(height:20),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Biraj Das', style: TextStyle(
                          color:Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 17
                        ),),
                      ],
                    ),

                    SizedBox(height:10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Nabagiri Road, Chandmari, Assam', style: TextStyle(
                          color:Color(0xff817E7E),
                          fontSize: 15
                        ),),
                      ],
                    ),

                    SizedBox(height:10),

                    Row(
                      children: [
                        Container(
                          height: 30,
                          width:100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black38,)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.edit, color: Colors.black ,size: 15,),
                              SizedBox(width:5),
                              Text('Edit Address', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:10 
                              ),)
                            ],
                          ),
                        ),
                        SizedBox(width:10),
                      Container(
                          height: 30,
                          width:90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black38)
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.note_add, color: Colors.black,size: 15, ),
                              SizedBox(width:5),
                              Text('Add Note', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:10 
                              ),)
                            ],
                          ),
                        )
                      ],
                    ),

                  SizedBox(
                        height: 30,
                        width:370,
                        child: Divider( 
                              color: Colors.black,
                            )
                          ),
                  SizedBox(height:20),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width:60,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                fit:BoxFit.cover,
                                image: AssetImage('images/3_1.jpg')
                                 ),
                            ),
                          ),
                          SizedBox(width: 10,),
                         Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Cappuccino',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:20 
                              ),),
                          SizedBox(height:5),
                          Text('with Chocolate',style: TextStyle(
                                color: Color(0xff948585),
                                fontWeight: FontWeight.w300,
                                fontSize:15
                              ),)
                        ],
                      ),
                        ],
                      ),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              if(text > 1)
                              {text = text - 1;}
                              else{
                                text = text;
                              }
                            });
                          },
                          child: Icon(Icons.remove_circle_outline, color: Color(0xff000000),)
                        ),
                         SizedBox(width:20),
                        Text(text.toString(),style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:20 
                          ),),
                        SizedBox(width:20),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              text = text + 1;
                            });
                          },
                          child: Icon(Icons.add_circle_outline, color: Color(0xff000000),)
                          ),
                      ],
                     ),
                     
 
                    ],
                  )

                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width:MediaQuery.of(context).size.width,
                child: Divider( 
                      color: Color(0xffF9ECEC),
                      thickness: 4,
                    )
                  ), 
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Color(0xff000000))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children:[
                        
                         Image.asset('images/11.png', height:20,width: 20,),
                          SizedBox(width: 15,),
                         Text('1 Discount is applied', style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:20
                              ),)
                          ]
                        ),
                        Icon(Icons.arrow_forward_ios, color: Colors.black,)
                      ],
                      ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                      Text('Payment Summary',style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize:20
                              ), ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Price',style: TextStyle(
                                      color: Color(0xff5F5858),
                                      fontWeight: FontWeight.bold,
                                      fontSize:15
                                    ), ),
                            Text('Rs 180',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:15
                                ), )
                          ],
                        ),
                      ),
                    SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.only(left:20.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Delivery Fee',style: TextStyle(
                                      color: Color(0xff5F5858),
                                      fontWeight: FontWeight.bold,
                                      fontSize:15
                                    ), ),
                            Text('Rs 40',style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:15
                                ), )
                          ],
                        ),
                      )
                  ]
                ),
              ),
              SizedBox(
                    height: 40,
                    width:370,
                    child: Divider( 
                          color: Colors.black,
                        )
                      ), 
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:20.0),
                 child: Padding(
                   padding: const EdgeInsets.only(left:20.0),
                   child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Total Payment',style: TextStyle(
                                  color: Color(0xff5F5858),
                                  fontWeight: FontWeight.bold,
                                  fontSize:15
                                ), ),
                        Text('Rs 220',style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize:15
                            ), )
                      ],
                    ),
                 ),
               ),

               SizedBox(height: 20,)   ,

               Padding(
                 padding: const EdgeInsets.symmetric(horizontal:20.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                    Row(
                      
                      children: [
                          Container(
                            height: 30,
                            width:70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffC67C4E)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                Text('Cash', style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize:16 
                                ),)
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
                         Text('Rs 220.00', style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize:16 
                                ),)
                      ],
                    ),
                    Icon(Icons.more_horiz_rounded)
                  ]
                 ),
               ),  

               SizedBox(height: 20,),
                ButtonTheme(
                  
                    minWidth: 330,
                    height: 60,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> Delivery()));
                      },
                      color: Color(0xffd17842),
                      child: Text(
                        "Order",
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                SizedBox(height: 20,),

                
              ],
            ),
          ],
        ),
      ),
    );
  }
}