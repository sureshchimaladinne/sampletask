import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Drugs extends StatefulWidget {
  const Drugs({Key? key}) : super(key: key);

  @override
  _DrugsState createState() => _DrugsState();
}

class _DrugsState extends State<Drugs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor:  Color(0xfffB87333),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'save',
          ),
        ],
      ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [Icon(Icons.arrow_back,),],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Demand for indian tfgetyy\ngeneric druugs sdfgrtyuis\nskyrockets in china vfgb\namid Covid surge bdgh',
                style: TextStyle(fontSize: 35,color: Colors.black,fontWeight: FontWeight.bold),
              ),
              // Padding(
              //     padding: EdgeInsets.only(left: 40,top: 20),
              // ),
              Text('Updated 1 mins ago',style: TextStyle(
                  fontSize: 25 ,color: Colors.black),),
              Card(
                color:  Color(0xfffB87333),
                child: ListTile(
                  leading: Image.asset('imagess/111.png'),
                  title: Text('published by'),
                  subtitle: Text('Wode Warren'),
                  textColor:  Color(0xfffB87333),
                  trailing: Text('follow',selectionColor: Colors.white,),
                  onTap: (){
                  },
                ),
              ),
              SizedBox(height: 10,),
              Text('The demand for indian generic dugs has shot\n up in China amid the massive Covd surge in \n the country ,with Chinese experts cautioning\\n '
                  'that fake versions of these  durgs are flooding \n the market. Chin s National Healt Security\n Administion said on Sunday that Pfzer s\n '
                  ' Paxlovid aral medication\n the market. Chin s National Healt Security\n Administion said on Sunday that Pfzer s\n '
                  ' Paxlovid aral medication\n ',style: TextStyle(fontSize: 18,color:Colors.black ),),
              Column(
                children: [
                  Image.asset('imagess/222.jpeg'),
                ],
              ),
            ],
        ),
        );
    }
}