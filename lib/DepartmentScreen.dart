import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:minor_project/Faculty.dart';
import 'package:minor_project/Firstscreen.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Department extends StatefulWidget {
  const Department({Key? key}) : super(key: key);

  @override
  _DepartmentState createState() => _DepartmentState();
}

class _DepartmentState extends State<Department> {

  int myTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}, child: Icon(Icons.filter_alt_rounded),),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Visibility(
                visible: myTabIndex == 0 ? true : false,
                child: const Text(
                  "Department of Computer Science and Engineering",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Visibility(
                visible: myTabIndex == 1 ? true : false,
                child:const Text(
                  "Department of Information Technology",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Visibility(
                visible: myTabIndex == 2 ? true : false,
                child: const Text(
                  "Department of Computer Science and Communication",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                children:  [
                  Visibility(
                    visible: myTabIndex == 0 ? true : false,
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
                  ),
                  Visibility(
                    visible: myTabIndex == 1? true : false,
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
                  ),
                  Visibility(
                    visible: myTabIndex == 2 ? true : false,
                    child: const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, "),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _tabSection(context),
           /* Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Visibility(
                    visible: myTabIndex == 0? true : false, //meaning if tab ==0 nd its true then show floating action button of tab0
                    child: FloatingActionButton( onPressed: () {
                    },
                      backgroundColor: Colors.green,
                      child:Icon(
                        Icons.filter_alt_rounded,
                      ),
                  ),
                  ),
                ],
              ),
            ),*/
          ],
        ),
      ),
    );
  }

  Widget _tabSection(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            child: TabBar(
                onTap: (index) {
                  setState(() {
                    myTabIndex = index;
                  });
                },
                labelStyle: TextStyle(color: Colors.black),
                unselectedLabelStyle: TextStyle(color: Colors.black),
                labelColor: Colors.black,
                tabs: [
                  Tab(text: "CSE"),
                  Tab(text: "IT"),
                  Tab(text: "CCE"),
                ]),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(children: [
              Container( // 1st tab
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>new Faculty())
                        );
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Card(
                          child: Container(
                            height: 120.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  height: 90,
                                  width: 90,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.0),
                                      child: Image.asset(
                                        'images/muj3.jpg',
                                        fit: BoxFit.cover,
                                      )),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: const Text(
                                        'Dr.A Rathi-Assistant Proffeser'),
                                    subtitle: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("Arathi12@gmail.com"),
                                        Text("8527273408"),
                                        Text("Joined On-1/2/2023"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              Container(// 2nd tab
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              Container( //3rd tab
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        child: Container(
                          height: 120.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                height: 90,
                                width: 90,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12.0),
                                    child: Image.asset(
                                      'images/muj3.jpg',
                                      fit: BoxFit.cover,
                                    )),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: const Text(
                                      'Dr.A Rathi-Assistant Proffeser'),
                                  subtitle: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Arathi12@gmail.com"),
                                      Text("8527273408"),
                                      Text("Joined On-1/2/2023"),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
            ]),
          ),
        ],
      ),
    );
  }
}
