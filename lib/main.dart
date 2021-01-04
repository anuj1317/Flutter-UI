import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:homepage/sample.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'BlackGentry Premium'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Container blocks (String img,String head,String subhead){
    return Container(
      color: Colors.deepPurple,

      width: 230.0,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.network(img),
            Align(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text(head),
                subtitle: Text(subhead),
              ),
            )

          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            Container(
              height: 120.0,
              color: Colors.deepPurple,
              child: Align(
                alignment: Alignment.topCenter,
                child: CircleAvatar(
                  radius: 65,
                  backgroundColor: Colors.blueGrey,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.grey,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                          'https://as2.ftcdn.net/jpg/01/77/28/73/500_F_177287342_mNeAFJ7jvqSOpnGtSthDL1DZ2u1K6sEi.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 10.0,
              color: Colors.deepPurple,
              child: Text(
                "View Unlimited Profiles",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                ),
              ),
              alignment: Alignment.center,
            ),
            Container(
              height: 12.0,
              //padding: EdgeInsets.fromLTRB(10, 10, 2, 0),
              color: Colors.deepPurple,
              child: Row(mainAxisSize: MainAxisSize.min, children: [
                Icon(Icons.album, color: Colors.white, size: 12),
                Icon(Icons.album, color: Colors.white, size: 12)
              ]),
              alignment: Alignment.center,
            ),
            Container(
              height: 17,
              color: Colors.deepPurple,
              //padding: EdgeInsets.fromLTRB(10, 10, 2, 0),
              child: Text(
                "Blackgently premium enables unlimited profilessend unlimited files,& hide ads "
                "Consider Deluxe subscription to get more features",
                maxLines: 2,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 9,
                ),
              ),
              alignment: Alignment.center,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:<Widget> [

                  blocks("https://searchengineland.com/figz/wp-content/seloads/2015/07/apps-mobile-smartphone-ss-1920-800x450.jpg","19.99","1 Month"),
                  blocks("https://searchengineland.com/figz/wp-content/seloads/2015/07/apps-mobile-smartphone-ss-1920-800x450.jpg","19.99","1 Month"),




                ],
              ),

              ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:<Widget> [
                  blocks("https://searchengineland.com/figz/wp-content/seloads/2015/07/apps-mobile-smartphone-ss-1920-800x450.jpg","19.99","1 Month"),
                  blocks("https://searchengineland.com/figz/wp-content/seloads/2015/07/apps-mobile-smartphone-ss-1920-800x450.jpg","19.99","1 Month"),




                ],
              ),

            ),

            Container(
              color: Colors.deepPurple,
              child: Text("This terms and conditions of use (hereinafter referred to as the “Terms and Condition”) defines the conditions",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 9,
                  )

              ),
              alignment: Alignment.bottomCenter,
            ),

            Container(
              child: FlatButton(
                color: Colors.deepPurple,
                textColor: Colors.white,
                disabledColor: Colors.grey,
                disabledTextColor: Colors.black,
                padding: EdgeInsets.all(8.0),
                splashColor: Colors.blueAccent,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                  );

                },
                child: Text(
                  "Continue",
                  style: TextStyle(fontSize: 30.0),
                ),
              ),

            )

          ],
        ));
  }
}
