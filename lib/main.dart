import 'package:flutter/material.dart';

void main() => runApp(new MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Calculator",
      home: homepage(),
      theme: ThemeData.dark(),
     
      
    );
  }
}
class homepage extends StatefulWidget {
  @override
  _homepageState createState() => _homepageState();
}

class _homepageState extends State<homepage> {
 double sum=0,num1=0,num2=0;
  final TextEditingController t1 =new TextEditingController(text:"");
  final TextEditingController t2 =new TextEditingController(text:"");
  void add()
  {
    setState(() {
         num1= double.parse(t1.text);
          num2=double.parse(t2.text);
          sum=num1+num2;
        });
  }
  void subtract()
  {
    setState(() {
          num1=double.parse(t1.text);
          num2=double.parse(t2.text);
          sum=num1-num2;
        });
  }
  void mul()
  {
    setState(() {
          num1=double.parse(t1.text);
          num2=double.parse(t2.text);
          sum=num1*num2;
        });
  }
  void divide()
  {
    setState(() {
          num1=double.parse(t1.text);
          num2=double.parse(t2.text);
          sum=num1/num2;
        });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
  
      
appBar: new AppBar(
  
  title: new Text("Calculator"),
  centerTitle: true,
  
),
body: new Container(
   padding: EdgeInsets.all(40.0),
  child: new Column(
  
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Text("output : $sum",style: TextStyle(fontSize: 29.0,color: Colors.red),),
      new TextField(
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
          hintText: "Enter number 1"
        ),
        controller: t1,
      ),
       new TextField(
        keyboardType: TextInputType.number,
        decoration: new InputDecoration(
          hintText: "Enter number 2"
        ),
        controller: t2,
      ),new Padding(
        padding: const EdgeInsets.only(top: 20),
      ),
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new RaisedButton(
              child: new Text("+",style: TextStyle(fontSize: 29),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8
                )
                
              ),
              onPressed: (){
                add();
              },
              color: Colors.greenAccent,
          ),
          new RaisedButton(
              child: new Text("-",style: TextStyle(fontSize: 29),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8
                )
                
              ),
              onPressed: (){subtract();},
              color: Colors.greenAccent,
          )
        ],
      ),
      new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new RaisedButton(
              child: new Text("*",style: TextStyle(fontSize: 29),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8
                )
                
              ),
              onPressed: (){mul();},
              color: Colors.greenAccent,
          ),
          new RaisedButton(
              child: new Text("%",style: TextStyle(fontSize: 29),),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8
                )
                
              ),
              onPressed: (){divide();},
              color: Colors.greenAccent,
          )
        ],
      )


     
    ],
  ),
),
    
      
    );
  }
}