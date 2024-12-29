import 'package:flutter/material.dart';
import 'package:washme/core/widget/customAppBar.dart';
import 'package:sizer/sizer.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Container(
          width: 100.w,
          height: 100.h,
          padding: EdgeInsets.all(3),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomAppBar(nameOfScreen: "Profile"),
              Container(
                width: 100.w,
                height: 0.4,
                color: Colors.black,
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 100.w,
                height: 140,
                child: Stack(
                  children: [
                    SizedBox(
                        width: 100.w,
                        height: 140,
                        child: Center(
                          child: Container(
                            width: 140,
                            height: 140,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(70),
                                image: DecorationImage(
                                  image: NetworkImage(""),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        )),
                    SizedBox(
                        width: 100.w,
                        height: 140,
                        child: Center(
                          child: Container(
                            width: 140,
                            height: 140,
                            alignment: Alignment.bottomRight,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(70),
                                  border: Border.all(
                                      width: 1, color: Colors.black)),
                              child: GestureDetector(
                                  onTap: () async {},
                                  child: Center(
                                      child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 25),
                                  ))),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 100.w,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.person_outlined,
                      color: Colors.grey.shade500,
                    ),
                    Container(
                      width: 80.w,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Colors.grey.shade500,
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Name", // Add this line
                          hintStyle: TextStyle(
                            color: Colors.grey.shade400, // Light gray color
                            fontSize: 14, // Adjust font size if needed
                          ),
                          prefixIcon: Icon(Icons.edit),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
