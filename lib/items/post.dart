import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  const Post({
    super.key,
    required this.profileName,
    required this.profilePic,
    required this.postTime,
    required this.postImage,
  });

  final String profileName;
  final String profilePic;
  final String postTime;
  final String postImage;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              CircleAvatar(backgroundImage: AssetImage(profilePic), radius: 25),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    profileName,
                    style: TextStyle(
                      color: Color(0XFF242527),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "$postTime .",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color(0XFF898F9C),
                        ),
                      ),
                      Icon(Icons.public, size: 12, color: Color(0XFF898F9C)),
                    ],
                  ),
                ],
              ),
              Spacer(flex: 1),
              Icon(Icons.more_horiz),
            ],
          ),
        ),
        Image(
          image: AssetImage(postImage),
          fit: BoxFit.cover,
          width: double.infinity,
          height: 290,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Icon(FontAwesomeIcons.heart),
              SizedBox(width: 8),
              Icon(FontAwesomeIcons.comment),
              SizedBox(width: 8),
              Icon(FontAwesomeIcons.paperPlane),
              Spacer(flex: 1),
              Icon(FontAwesomeIcons.bookmark),
            ],
          ),
        ),
        Divider(height: 5, thickness: 2, color: Color(0xFFB7B7B7)),
      ],
    );
  }
}
