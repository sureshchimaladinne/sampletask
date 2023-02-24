import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swipe_deck/swipe_deck.dart';

class images extends StatelessWidget {
  const images({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const IMAGES = ["apex", "cod", "destiny", "fc3", "game_4", "ghost", "mk11", "nfs", "pubg", "mk112"];
    final borderRadius = BorderRadius.circular(20.0);
    return  Scaffold(
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
        title: Text('Saved News'),
        actions: [Icon(Icons.arrow_back)],
        backgroundColor: Colors.black,

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
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    padding: EdgeInsets.all(15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          width: 250,
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Search here....",
                                border: InputBorder.none),
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.filter_list)
                      ],
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
                    child: Container(
                      width: 500,
                      height: 400,
                      color: Color(0xfffB87333),
                      child: Center(
                        child: SwipeDeck(
                          startIndex: 3,
                          emptyIndicator: Container(
                            child: Center(
                              child: Text("Nothing Here"),
                            ),
                          ),
                          cardSpreadInDegrees: 5, // Change the Spread of Background Cards
                          onSwipeLeft: (){
                            print("USER SWIPED LEFT -> GOING TO NEXT WIDGET");
                          },
                          onSwipeRight: (){
                            print("USER SWIPED RIGHT -> GOING TO PREVIOUS WIDGET");
                          },
                          onChange: (index){
                            print(IMAGES[index]);
                          },
                          widgets: IMAGES
                              .map((e) => GestureDetector(
                            onTap: () {
                              print(e);
                            },
                            child: ClipRRect(
                                borderRadius: borderRadius,
                                child: Image.asset(
                                  "imagess/$e.jpg",
                                  fit: BoxFit.cover,
                                )),
                          ))
                              .toList(),
                        ),
                      ),
                    ),
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
