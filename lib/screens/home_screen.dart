import 'package:facebook_ui/items/add_my_story.dart';
import 'package:facebook_ui/items/friends_story_card.dart';
import 'package:facebook_ui/items/post.dart';
import 'package:facebook_ui/models/story_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../models/post_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<StoryModel> stories = [
    StoryModel(
      profilePic: "assets/images/Profile.jpeg",
      storyPic: "assets/posts/2.jpeg",
      accountName: "Said Elhadidi",
    ),
    StoryModel(
      profilePic: "assets/posts/4.jpeg",
      storyPic: "assets/posts/3.jpeg",
      accountName: "Mohamed Ahmed",
    ),
    StoryModel(
      profilePic: "assets/posts/5.jpeg",
      storyPic: "assets/posts/1.jpeg",
      accountName: "Ali Ahmed",
    ),
    StoryModel(
      profilePic: "assets/posts/1.jpeg",
      storyPic: "assets/posts/9.jpg",
      accountName: "Sayed Ahmed",
    ),
  ];

  List<PostModel> posts = [
    PostModel(
      profileName: 'Said Elhadidi',
      profilePic: 'assets/posts/1.jpeg',
      postTime: 'Now',
      postImage: 'assets/posts/2.jpeg',
    ),
    PostModel(
      profileName: 'GitHub',
      profilePic: 'assets/posts/github.png',
      postTime: '36m',
      postImage: 'assets/posts/github.png',
    ),
    PostModel(
      profileName: 'Egypt',
      profilePic: 'assets/posts/egypt.jpg',
      postTime: '36m',
      postImage: 'assets/posts/egypt.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Facebook",
            style: TextStyle(
              color: Color(0XFF1877F2),
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          actions: [
            Icon(Icons.add_circle_sharp, color: Colors.black),
            SizedBox(width: 12),
            Icon(FontAwesomeIcons.magnifyingGlass, color: Colors.black),
            SizedBox(width: 12),
            Icon(FontAwesomeIcons.facebookMessenger, color: Colors.black),
            SizedBox(width: 20),
          ],
          bottom: TabBar(
            indicatorColor: Color(0XFF1877F2),
            indicatorWeight: 3,
            indicatorSize: TabBarIndicatorSize.tab,
            labelColor: Color(0XFF1877F2),
            unselectedLabelColor: Color(0XFF898F9C),
            tabs: [
              Tab(icon: Icon(FontAwesomeIcons.house, size: 30)),
              Tab(icon: Icon(FontAwesomeIcons.tv, size: 30)),
              Tab(icon: Icon(FontAwesomeIcons.shop, size: 30)),
              Tab(icon: Icon(FontAwesomeIcons.circleUser, size: 30)),
              Tab(icon: Icon(FontAwesomeIcons.bell, size: 30)),
              Tab(
                icon: CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage("assets/images/Profile.jpeg"),
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 8,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/Profile.jpeg"),
                    ),
                    SizedBox(width: 8),
                    Text(
                      "What’s in Your Mind?",
                      style: TextStyle(
                        color: Color(0XFF898F9C),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Spacer(flex: 1),
                    Icon(Icons.image, color: Color(0XFF0DE571)),
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(child: Divider(thickness: 2)),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 220,
                child: ListView.builder(
                  itemCount: stories.length + 1,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return AddMyStory();
                    } else {
                      return FriendsStoryCard(
                        profilePic: stories[index - 1].profilePic,
                        storyPic: stories[index - 1].storyPic,
                        accName: stories[index - 1].accountName,
                      );
                    }
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(child: Divider(thickness: 3.5)),
            SliverList.builder(
              itemCount: posts.length,
              itemBuilder: (context, index) {
                return Post(
                  profilePic: posts[index].profilePic,
                  postImage: posts[index].postImage,
                  profileName: posts[index].profileName,
                  postTime: posts[index].postTime,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
