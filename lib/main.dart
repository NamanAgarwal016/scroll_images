import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('circle'),
      ),
      body: Center(
        child: CircleImages(),
      ),
    );
  }

}

class CircleImages extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CircleWidgets();
  }
}

class CircleWidgets extends State<CircleImages>{
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];
    for(var x =0 ; x < 10; x ++){
      widgets.add(
        Container(
          height: 60.0,
          width: 60.0,
          margin: EdgeInsets.all(6.0),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(100, 0, 0, 0),
                blurRadius: 5.0,
                offset: Offset(5.0, 5.0)
              )
            ],
              border: Border.all(
                  width: 2.0,
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0)
              ),
              borderRadius: BorderRadius.circular(100.0),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage("https://scontent.fjai1-2.fna.fbcdn.net/v/t1.0-9/47150953_530282957381757_5750737548922060800_n.jpg?_nc_cat=102&_nc_sid=85a577&_nc_ohc=dMdpkhNb3roAX-PTg3E&_nc_ht=scontent.fjai1-2.fna&oh=80542835f83a1f02139b0d9251206ce0&oe=5ED2ACAA")
              )
          ),
        ),
      );
    }
    return Container(
      height: 80.0,

      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.all(5.0),
        children: widgets,
      ),
    );
  }
}


