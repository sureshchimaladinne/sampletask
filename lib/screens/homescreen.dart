import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
        title: const Text('Z News'),
        backgroundColor: Colors.black,
        actions: [Icon(Icons.dashboard)],
      ),
      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Colors.black),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Trends",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Colors.black),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Sports",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10), color: Colors.black),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Finance",
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),

        ],
      ),
    ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Container(
              child: Column(
                children: [
                  Center(
                    child: Card(
                      elevation: 50,
                      shadowColor: Colors.black,
                      color: Color(0xfffB87333),
                      child: SizedBox(
                        width: 300,
                        height: 500,
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            children: [
                              Text('Demand for indian\ngeneric druugs\nskyrockets in china\namid Covid surge',
                                style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              Text(
                               'Updated 1 mins ago',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                ), //Textstyle
                              ), //Text
                              const SizedBox(
                                height: 10,
                              ),
                              Card(
                                color:  Color(0xfffB87333),
                                child: ListTile(
                                  leading: Image.asset('imagess/111.png'),
                                  title: Text('published by'),
                                  subtitle: Text('Wode Warren'),
                                  textColor:  Color(0xfffB87333),
                                  trailing: Text('follow',selectionColor: Colors.black,),
                                  onTap: (){
                                  },
                                ),
                              ),//SizedBox
                              const Text(
                                'Hospital dryyugd fgjhrrh ghjkrekfy is a computer science portal for geeks at geeksforgeeks.org. It contains well written, ',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ), //Textstyle
                              ), //Text
                              const SizedBox(
                                height: 10,
                              ), //SizedBox
                              SizedBox(
                                width: 100,

                                child: ElevatedButton(
                                  onPressed: () => 'Null',
                                  style: ButtonStyle(
                                      backgroundColor:
                                      MaterialStateProperty.all(Colors.brown)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(4),
                                    child: Row(
                                      children: const [
                                        Icon(Icons.touch_app,color: Colors.black,),
                                        Text('Like',style: TextStyle(color: Colors.black),)
                                      ],
                                    ),
                                  ),
                                ),
                              ) //SizedBox
                            ],
                          ), //Column
                      ), //Padding  `sus~ `git config --global user.name  ````````````````` q`e
                      ), //SizedBox
                    ), //Card
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}