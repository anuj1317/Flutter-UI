import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        )
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(243, 243, 243, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Colors.black87,),
        ),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget> [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text('Find Your',style: TextStyle(color: Colors.black87,fontSize: 25),),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Inspiration',style: TextStyle(color: Colors.black,fontSize: 40),),
                  SizedBox(
                    height:15 ,
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,color: Colors.black87,),
                        hintText: "Search you're looking for",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15)
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:<Widget> [
                  Text('Promo Today',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  SizedBox(height: 10,),
                  Container(
                    height:180 ,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[

                        promocard('https://cdn.pixabay.com/photo/2015/06/19/21/24/the-road-815297__340.jpg'),
                        promocard('data:image/jpeg;base64,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'),
                        promocard('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSuiuiYY--ENGKHCxoshOIavDEMIyHjKkpARw&usqp=CAU'),
                        promocard('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg')



                      ],


                    ),
                  ),
                  SizedBox(
                    height: 10 ,
                  ),
                  Container(
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://assets.website-files.com/5e3c45dea042cf97f3689681/5e417cd336a72b06a86c73e7_Flutter-Tutorial-Header%402x.jpg'),
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            stops: [0.1,0.9],
                            colors: [
                              Colors.black.withOpacity(.9),
                              Colors.black.withOpacity(.1)
                            ]
                        )),
                     child: Align(
                       alignment: Alignment.bottomLeft,
                       child: Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: Text('Flutter Design',style: TextStyle(color: Colors.white,fontSize: 20),),
                       ),


                     ),

                    ),
                  )




                ],
              ),
            ),


          ],

        ),


      ),

    );

  }

  Widget promocard(image){
    return AspectRatio(
        aspectRatio: 2.5/3,
      child: Container(
        margin: EdgeInsets.only(right: 15.0),

        decoration: BoxDecoration(
         color: Colors.orange,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(image),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              stops: [0.1,0.9],
              colors: [
                Colors.black.withOpacity(.9),
                Colors.black.withOpacity(.1)
              ]
            )
          ),
        ),

      ),

    );


  }

}
