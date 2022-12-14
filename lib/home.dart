import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {},
            icon: 
                Icon(Icons.arrow_back, color: Color.fromRGBO(99, 203, 157, 1)),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.settings,
                  color: Color.fromRGBO(99, 203, 157, 1),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Edit Profile",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("img/messi.jpg"),
                  )
                ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText: "Full Name", hintText: "Mahmoud hassan"),
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                    labelText: "Email", hintText: "mahmoudhassan@gmail.com"),
              ),
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                decoration: const InputDecoration(
                  labelText: "Password",
                  suffix: Icon(
                    Icons.remove_red_eye,
                  ),
                ),
                obscureText: true,
              ),
              TextFormField(
                  decoration: const InputDecoration(
                labelText: "location",
              )
            ),
            SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Row(
                  children: [
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child:
                          Text("CANCEL", style: TextStyle(color: Colors.black)),
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.white),
                        fixedSize: MaterialStateProperty.all(Size(150, 35)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(35))),
                        elevation: MaterialStateProperty.all(10),
                      ),
                    ),
                    Spacer(),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("SAVE"),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Color.fromRGBO(99, 203, 157, 1)),
                          fixedSize: MaterialStateProperty.all(Size(150, 35)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(35))),
                          elevation: MaterialStateProperty.all(10)),
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
