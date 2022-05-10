import 'package:flutter/material.dart';

class AboutUS extends StatefulWidget {
  AboutUS({Key? key}) : super(key: key);

  @override
  State<AboutUS> createState() => _AboutUSState();
}

class _AboutUSState extends State<AboutUS> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double sceeenWidght = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('About Us'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                    height: 350,
                    width: sceeenWidght,
                    child: Image.asset(
                      'images/abo.jpg',
                      fit: BoxFit.fill,
                    )),
                Positioned(
                  top: 170,
                  left: 150,
                  right: 150,
                  child: Text(
                    'About Us',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Padding(
                  padding: EdgeInsets.all(8),
                  child: RichText(
                    text: TextSpan(
                      text: 'Share What You Can ',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                      children: const <TextSpan>[
                        TextSpan(
                            text:
                                'is a place where anyone can help everyone. We are a group of individuals who wanted to help everyone and give a platform through which everyone can anyone who wants to help can help. on Share what you can you dont just share food you can share anything from food to anything. you got something that is working but old and can be helpful for someone just post a ad and the related person will contact you and thus clearing out the excessive material in your house and helpoing the people in need. Food is wasted on daily basis and that food can be actually given to people and help them go through the day.not only that ngos and trust can be benifitted by this as this is a free for all plateform and can help provide the trust with much material they want.',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 14)),
                      ],
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.cyan.shade100),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.delete,
                              size: 35,
                              color: Colors.green,
                            ),
                            Text(
                              'Reduce food waste\n',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Reduce food Waste by sharing the food that is leftover/excessive and help the people get good and clean food to the people.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.cyan.shade100),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.thumb_up_alt_rounded,
                              size: 35,
                              color: Colors.green,
                            ),
                            Text(
                              'Help the needy\n',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'our main goal is to help everyone and give a platorm where everyone can share anything and help the people in need.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 160,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.cyan.shade100),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Icon(
                              Icons.thumb_up_sharp,
                              size: 35,
                              color: Colors.green,
                            ),
                            Text(
                              'Clear our excessive thing\n',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'every home has excessive material that is usable but is getting wasted due to no more in use. so rather than throwing those things away just share them.',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Our Team',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(102),
                  child: Image.asset("images/alikhan.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Muhammad Ali',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Flutter Developer',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(102),
                  child: Image.asset("images/1.jpg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Usman Sarwar',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Full Stack Developer',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(102),
                  child: Image.asset("images/rana.jpeg"),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Muhammad Ans',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Text(
                  'Full Stack Developer',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: 600,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.green.shade200,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(52),
                          topLeft: Radius.circular(52))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Put Ysour Queries Here',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: double.infinity,
                          child: Card(
                            elevation: 5,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Contact Us',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Name',
                                      hintText: 'Enter Your Name',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Email',
                                      hintText: 'Enter Your Email',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Reason',
                                      hintText: 'Reason to Contact',
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    maxLines: 5,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: 'Message',
                                      hintText: 'Enter Your Message here...',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(22)),
                                      primary: Colors.green,
                                      minimumSize: const Size(150, 50),
                                      maximumSize: const Size(150, 50),
                                    ),
                                    onPressed: () {},
                                    child: Text(
                                      'Submit',
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    )),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
