import 'package:flutter/material.dart';
import 'package:travelapp/screens/Home/home_screen.dart';
import 'package:travelapp/utilities/colors.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}
class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
              "assets/images/welcome.jpeg",
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          SafeArea(
            child: Center(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(vertical: 20,horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Spacer(),
                    Text(
                      "Welcome",
                      style: TextStyle(
                        fontSize: 30, color: kWhiteClr,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "The journey is your home. Explore the world with our travel app and get the feeling like your own house",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: kWhiteClr, fontSize: 16, height: 1.6),
                  ),
                    const SizedBox(height: 15),

                    //login buttons
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>const HomeScreen()));
                      },
                      child: Container(
                        height: 55,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kWhiteClr,
                          borderRadius: BorderRadius.circular(100)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/google.png",
                              height: 30,
                              width: 30,
                            ),
                            Text("Continue with Google",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                          ],
                        )
                        ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context)=>const HomeScreen()));
                      },
                      child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: kWhiteClr,
                              borderRadius: BorderRadius.circular(100)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/icons/facebook.png",
                                height: 30,
                                width: 30,
                              ),
                              Text("Continue with Facebook",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)
                            ],
                          )
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height *0.06,
                    ),
                ],
              ),
            ),
          ),
          )
        ],
      ),
    );
  }
}
