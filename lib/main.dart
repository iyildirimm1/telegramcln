import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  const AnaSayfa({Key? key}) : super(key: key);
  ListTile listeElemani(context,String yazi,IconData simge ) {
    return ListTile(
      title:  Text(yazi),
      leading: Icon(simge),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("images/545.JPG"),
                          maxRadius: 35,
                          minRadius: 20.0,
                        )
                      ],
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            children: [
                              Text("İmran YILDIRIM"),
                            ],
                          ),
                          Row(
                            children: [Text("+90(123) 456 78 89")],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              ListTile(
                title: Text('Yeni Grup'),
                leading: Icon(Icons.group),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Kişiler'),
                leading: Icon(Icons.person_pin_outlined),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Aramalar'),
                leading: Icon(Icons.call),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Yakındaki Kişiler'),
                leading: Icon(Icons.emoji_people_rounded),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Kayıtlı Measajlar'),
                leading: Icon(Icons.star_rate_sharp),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              listeElemani(context, "Ayarlar", Icons.settings_rounded),
              listeElemani(context, "Arkadaşlarınızı Davet Edin", Icons.share_outlined),

              listeElemani(context, "Telegram Özellikleri", Icons.add_box),

            ],
          ),
        ),
        appBar: AppBar(
          title: Text("Telegram"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}
