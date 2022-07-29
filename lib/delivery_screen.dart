import 'package:flutter/material.dart';




class Delivery extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomSheet: Container( 
        
        height: 300,
              decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
              ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text('15 minutes left', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                    SizedBox(height: 5,),
                    RichText(
                          text:
                         TextSpan(
                        text:  "Delivery to ",
                        style: TextStyle(color: Color(0xff948585), fontSize: 15),
                        children:[
                          TextSpan(text: "Biraj Das",style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold))
                        ]
                        
                        
                        ),
                        
                        )
                  ],
                )
              ],
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width:MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height:5,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Container(
                      height:5,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Container(
                      height:5,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.green[600],
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                    Container(
                      height:5,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.black26,
                        borderRadius: BorderRadius.circular(15)
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black38)
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.black26),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('images/13.jpg'),
                            
                          )
                        ),
                      ),
                      SizedBox(width: 25,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 10,),
                          Text('Delivery of your order',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
                          SizedBox(height: 5,),
                          Text('We deliver your goods to you in\n the shortest possible time.',style: TextStyle(color: Color(0xff948585), fontWeight: FontWeight.w300, fontSize: 15))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding:  const EdgeInsets.symmetric(horizontal: 10),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  //height: 90,
                  
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('images/14.jpg'),
                                  
                                )
                              ),
                            ),
                            SizedBox(width: 25,),
                            Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //SizedBox(height: ,),
                            Text('Manash Pratim',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15)),
                            SizedBox(height: 5,),
                            Text('Personal Courier',style: TextStyle(color: Color(0xff948585), fontWeight: FontWeight.w400, fontSize: 10))
                          ],
                        )
                          ],
                        ),
                      Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: Colors.black26)
                              ),
                              child: Icon(Icons.phone_in_talk_outlined, color: Colors.black,),
                            ),
                        
                      ],
                    ),
                  ),
                ),
            )
          ],
        ),
            ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 500,
             // width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('images/12.png')
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}