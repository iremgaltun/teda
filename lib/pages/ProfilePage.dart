import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              children: [
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    CircleAvatar(
                      maxRadius: 65,
                      backgroundImage: AssetImage("assets/images/1.png"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),

                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Thomas Shelby",
                      style:
                          TextStyle(fontWeight: FontWeight.w900, fontSize: 26),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [Text("@peakyBlinders")],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Master manipulator, deal-maker and\n  entrepreneur",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),const SizedBox(
                  height: 15,
                ),
                Container(
                  child: Expanded(
                      child: ListView(
                    children: [
                      Card(
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        color: Color(0xFF475269),
                        shadowColor: Color(0xFF475629).withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Tedarik Ekle',
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color: Color(0xFF475269),
                        shadowColor: Color(0xFF475629).withOpacity(0.8),
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.bookmark_add_outlined,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Başvurduklarim',
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),
                      Card(
                        color:  Color(0xFF475269),
                        shadowColor: Color(0xFF475629).withOpacity(0.8),
                        margin:
                            const EdgeInsets.only(left: 35, right: 35, bottom: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                        child: const ListTile(
                          leading: Icon(
                            Icons.logout,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Logout',
                            style: TextStyle(
                              color: Colors.white,
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        trailing:
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            color: Colors.white
                          ),
                        ),
                      )
                    ],
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
