import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Text("Whatsapp UI"),
          bottom: TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.groups),
              ),
              Tab(
                child: Text("Chats"),
              ),
              Tab(
                child: Text("Status"),
              ),
              Tab(
                child: Text("Calls"),
              )
            ],
          ),
          actions: [
            Icon(Icons.search),
            SizedBox(width: 20),
            PopupMenuButton(
                child: Icon(Icons.more_vert),
                itemBuilder: (contex) => [
                      PopupMenuItem(
                        value: 1,
                        child: Text("New Groups"),
                      ),
                      PopupMenuItem(
                        value: 2,
                        child: Text("New broadCast"),
                      ),
                      PopupMenuItem(
                        value: 3,
                        child: Text("Settings"),
                      ),
                      PopupMenuItem(
                        value: 4,
                        child: Text("Log Out"),
                      )
                    ]),
            SizedBox(width: 20),
          ],
        ),
        body: TabBarView(
          children: [
            Text("1"),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 50,
                      child: Icon(
                        Icons.person,
                        size: 35,
                      ),
                    ),
                    title: Text(
                      "Sadiq Hussain",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    subtitle: Text(
                      "alaka sanga chal de khana",
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
                    ),
                    trailing: Text("8:10 AM"),
                  ),
                );
              },
            ),
            Text("5"),
            ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ListTile(
                      leading: CircleAvatar(
                        radius: 50,
                        child: Icon(
                          Icons.person,
                          size: 35,
                        ),
                      ),
                      title: Text(
                        "Sadiq Hussain",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      subtitle: Text( index / 2== 0? 'You missed call': "you missed video call, 12:20 Am"),
                      trailing: Icon(
                        index / 4 == 0
                            ? Icons.call_received
                            : Icons.video_call,
                      )),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
