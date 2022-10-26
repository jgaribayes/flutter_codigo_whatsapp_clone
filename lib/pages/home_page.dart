import 'package:flutter/material.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/call_page.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/chat_page.dart';
import 'package:flutter_codigo_whatsapp_clone/pages/status_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _taController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _taController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
        bottom: TabBar(
          controller: _taController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.5,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                "CHAT",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.message,
        ),
      ),
      body: TabBarView(
        controller: _taController,
        children: [
          Center(child: Text("Camera")),
          ChatPage(),
          StatusPage(),
          CallPage(),


        ],
      ),
    );
  }
}