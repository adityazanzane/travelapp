import 'package:flutter/material.dart';
import 'package:travelapp/screens/Home/widgets/recommended_card.dart';
import 'package:travelapp/screens/detailscreen/detail_screen.dart';
import 'package:travelapp/utilities/colors.dart';

import '../../model/place_model.dart';
import 'widgets/category_card.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteClr,
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/icons/home.png",
                height: 30,
                width: 30,
                color: kPrimaryClr,
              ),
              Image.asset("assets/icons/calendar.png",
                height: 30,
                width: 30,
                color: Colors.grey,
              ),
              Image.asset("assets/icons/bookmark.png",
                height: 30,
                width: 30,
                color: Colors.grey,
              ),
              Image.asset("assets/icons/chat-bubble.png",
                height: 30,
                width: 30,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
          child: Column(children: [
            //app bar
            Row(
              children: [
                const CircleAvatar(
                  radius: 27,
                  backgroundImage: AssetImage("assets/images/admin.png"),
                ),
                const SizedBox(
                  width: 15,
                ),
                RichText(
                    text: const TextSpan(
                        text: "Hello",
                        style: TextStyle(
                            color: kBlackClr,
                          fontSize: 18,
                        ),
                        children: [
                          TextSpan(
                            text: ", Vineetha",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ))
                        ]))
              ],
            ),
            
            //search Section
            const SizedBox(
              height: 15,
            ),
            const Text(
                "Where do you want to explore today?",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              borderRadius: BorderRadius.circular(100),
              elevation: 5,
              child: Container(
                decoration: BoxDecoration(color: kWhiteClr,borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Row(
                    children: [
                      Expanded(child:
                  TextFormField(
                    decoration:const InputDecoration(
                      hintText: "Search your destinations",
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      ),
                      ),
                      ),
                      const CircleAvatar(
                        radius: 22,
                        backgroundColor: kPrimaryClr,
                        child: Icon(
                          Icons.sort_by_alpha_sharp,
                          color: kWhiteClr,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),

            //Category
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Text(
                  "Category",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      CategoryCard(
                        press: (){},
                        image: "assets/images/mountains.jpeg",
                        title: "Mountain",
                      ),
                      CategoryCard(
                        press: (){},
                        image: "assets/images/beach.png",
                        title: "Beach",
                      ),
                      CategoryCard(
                        press: (){},
                        image: "assets/images/forests.jpeg",
                        title: "Forests",
                      ),
                      CategoryCard(
                        press: (){},
                        image: "assets/images/deserts.jpeg",
                        title: "Desert",
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //Recommended
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Text(
                  "Recommended",
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Container(
                height: 300,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: places.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index){
                  return Padding(
                    padding: const EdgeInsets.only(left: 5,right: 15),
                    child: Row(
                      children: [
                     RecommendedCard(placeInfo: places[index],
                       press: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen(placeInfo: places[index],)));
                       },
                     )
                    ],
                  ),
                  );
                }))
          ]),
        )),
    );
  }
}




