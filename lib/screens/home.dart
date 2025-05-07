import 'package:newtask8/models/chat_model.dart';
import 'package:newtask8/models/stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/1.jfif"),
              radius: 30,
            ),
            SizedBox(width: 30),
            Text(
              "Chats",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.camera_enhance)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.edit_document))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: const Color.fromARGB(255, 5, 67, 118),
                    ),
                  ),
                  hintText: "search",
                  prefixIcon: const Icon(Icons.search),
                  fillColor:const Color.fromARGB(255, 231, 227, 227),
                  filled: true,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16.0, vertical: 8.0),
              child: SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0), 
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blue, width: 2),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(stories[i].image),
                            ),
                          ),
                          const SizedBox(height: 6), 
                          Text(
                            stories[i].name,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: chats.length,
                itemBuilder: (context, i) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage(chats[i].image),
                    ),
                    title: Text(chats[i].name),
                    subtitle: Text(
                        "${chats[i].message}              ${chats[i].time}"),
                    trailing: Icon(chats[i].icon),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
