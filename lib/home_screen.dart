import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_coffeeapp/CoffeeTabScreens/tab1.dart';
import 'package:flutter_coffeeapp/CoffeeTabScreens/tab2.dart';
import 'package:flutter_coffeeapp/CoffeeTabScreens/tab3.dart';
import 'package:flutter_coffeeapp/CoffeeTabScreens/tab4.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController tabController;
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        
        children: [
          Stack(
          children:[
              Container(
           width: MediaQuery.of(context).size.width,
           height: 920,
            child: Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                      height: 350,
                    ),
          
                  TabBar(
                      isScrollable: true,
                      controller: tabController,
                      labelColor: Colors.white,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      unselectedLabelColor: Color(0xff726D6D),
                      indicator:BoxDecoration(
                                color: Color(0xffC67C4E),
                                borderRadius: BorderRadius.circular(15),
                              ),
                      tabs: [
                        Tab(
                          text: "Cappuccino",
                        ),
                        Tab(
                          text: "Machiato",
                        ),
                        Tab(
                          text: "Latte",
                        ),
                        Tab(
                          text: "Americano",
                        ),                     
                      ]),
                    SizedBox(
                      height: 20,
                    ),
                  
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Tab1(),
                        Tab2(),
                        Tab3(),
                        Tab4()
                      ],
                    ),
                  ),                 
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.white
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: const BoxDecoration(
              color: Color(0xFF141414),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left:20.0,right:20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left:20.0,right:20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                              const Text('Location',style:TextStyle(color: Color(0xffB6A9A9),fontSize: 16,fontWeight: FontWeight.w500)),
                              Row(
                                children: const [
                                Text('Guwahati, Assam',style:TextStyle(color: Color(0xffE1D2D2),fontSize: 16,fontWeight: FontWeight.bold)),
                                Icon(Icons.arrow_drop_down,color: Color(0xffE1D2D2),)
                              ],)
                            ],
                          ),
                        ),

                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/6.jpg'),
                          )
                        ),
                        
                      )
                      ],
                    ),
                SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 6.0),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff141921),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search coffee",
                          hintStyle: TextStyle(color: Color(0xffB6A9A9)),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            color: Colors.grey[600],
                          ),
                          suffixIcon: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffC67C4E),
                                borderRadius: BorderRadius.circular(10)
                              ),

                              child: Icon(Icons.menu, color: Colors.white,)),
                          )
                          ),
                    ),
                  ),

                  ],
                ),
              )
          ),

          Positioned(
            top: 150,
            left: 20,
            child: Container(
              height: 180,
              width:320 ,
              decoration: BoxDecoration(
                //color: Colors.red,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image:AssetImage('images/5.jpg'), fit:BoxFit.fill
                )
              ),
              child: Stack(
                children: [
                  Positioned(
                    top:80,
                    left:10,
                    child: Text('Buy one get \n one FREE', style:TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold,fontSize: 30
                    )),
                  ),
                  Positioned(
                    top:40,
                    left: 10,
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration:BoxDecoration(
                        color: Color(0xffED5151),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 9.0,top: 2),
                        child: Text('Promo',style:TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold,fontSize: 20
                    )),
                      ),
                    )
                    )
                ],
              ),
            )
            )
          
         ] ) 
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Color(0xff8F8888),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ""),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}


