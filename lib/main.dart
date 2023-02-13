import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Card(),
    ));

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 15, 15, 15),
      appBar: AppBar(
        title: Text(
          'Id_Card',
          style:
              TextStyle(color: Color.fromARGB(255, 19, 18, 17), fontSize: 20.0),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 135, 208, 218),
        elevation: 0.0,
      ),
      body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child:CircleAvatar(
                  backgroundImage:AssetImage('assets/lap.jpg'),
                  radius:50.0,
                ),
              ),
              Divider( 
                height:80.0,
                color: Color.fromARGB(255, 135, 198, 223),
              ),
            Text('Name',
                style: TextStyle(
                  color: Color.fromARGB(255, 206, 233, 236),
                  letterSpacing: 2.0,
                )),
                SizedBox(height: 10.0 ,),
            Text('ABCDE',
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 208, 218),
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                )
                ),
                SizedBox(height: 30.0 ,),
                 Text('CURRENT LEVEL',
                style: TextStyle(
                  color:  Color.fromARGB(255, 206, 233, 236),
                  letterSpacing: 2.0,
                )),
                SizedBox(height: 10.0 ,),
            Text('3',
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 208, 218),
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                )
                ),
                 SizedBox(height: 20.0),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.email,
                    color:Color.fromARGB(255, 244, 245, 245),
                    ),
                    SizedBox(width:10.0),
                   Text(
                    'abcde@gmail.com',
                style: TextStyle(
                  color: Color.fromARGB(255, 135, 208, 218),
                  letterSpacing: 1.0,
                  fontSize: 20.0,
                 
                )
                ), 

                  ],
                 )
               ]
             )
        ),
    );
  }
}
