

import 'package:flutter/material.dart';

class ListviewDemoScreen extends StatelessWidget {
  const ListviewDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView Demo"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
        body: ListView(

            children: [

              Container(
                color: Colors.purple[200],
                child: ListTile(

                  leading: CircleAvatar(),
                  title: Text('Babar Azam', style: TextStyle(color: Colors.white),),
                  subtitle: Text('Batsman'),
                  trailing: Text('Pak'),
                  onTap: (){

                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                color: Colors.purple[200],
                child: ListTile(

                  leading: CircleAvatar(),
                  title: Text('Virat Kohli', style: TextStyle(color: Colors.white),),
                  subtitle: Text('Batsman'),
                  trailing: Text('Ind'),
                  onTap: (){

                  },
                ),
              ),
              Card(
                elevation: 10,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                color: Colors.purple[200],
                child: ListTile(

                  leading: CircleAvatar(),
                  title: Text('Zack Crawley', style: TextStyle(color: Colors.white),),
                  subtitle: Text('Batsman'),
                  trailing: Text('Eng'),
                  onTap: (){

                  },
                ),
              ),
              Icon(Icons.settings, size: 50, color: Colors.red),
              Icon(Icons.shopping_cart, size: 50, color: Colors.red),
              CircleAvatar(
                radius: 100,
                backgroundColor: Colors.orange,
                backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'),
                child: Text('Abid', style: TextStyle( color: Colors.white)),
              ),

              Image(
                image: NetworkImage('https://avatars.githubusercontent.com/u/17814795?v=4'),
                width: 200,
                height: 200,
              ),

              Image.network('https://avatars.githubusercontent.com/u/17814795?v=4',
                width: 300,
              ),

              Image(
                image: AssetImage('images/abid.png',),
                width: 200,
              ),

              Image.asset('images/abid.png'),
            ]
        )
    );
  }
}
