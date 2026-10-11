import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lol",
      home: HomeScreen(),
      // home: Module6_2(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List <String> name = ["Jawad", "Ferdous", "Hasan", "Hasan", "Hasan"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title:
        Text("Contact List", style: TextStyle(color: Colors.white, fontSize: 25),),
        centerTitle: true,
        shape: Border(
          left: BorderSide(color: Colors.black, width: 10),
          right: BorderSide(color: Colors.black, width: 10),
        ),
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.vertical(),),
                      hintStyle: TextStyle(
                        fontSize: 20,
                      )
                  ),

                ),
                SizedBox(height: 10,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Phone Number",
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                      border: OutlineInputBorder(borderRadius: BorderRadius.vertical(),),
                      hintStyle: TextStyle(
                        fontSize: 20,
                      )
                  ),

                ),
                SizedBox(height: 10,),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton(onPressed: (){},

                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueGrey,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          )

                      ),
                      child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 18),)),

                ),
                SizedBox(height: 30,),
                Expanded(
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            bottomRight: Radius.circular(5),
                          ),
                        ),
                        child: ListTile(
                          minTileHeight: 90,
                          title: Text("${name[index]}", style:  TextStyle(color: Colors.red[900], fontSize: 18),),
                          subtitle: Text("01877777777"),
                          leading: Icon(Icons.person, color: Colors.brown[400],),
                          trailing: Icon(Icons.phone, color: Colors.blue,),
                        ),
                      );
                    },
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

    );

  }
}
