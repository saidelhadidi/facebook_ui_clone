import 'package:flutter/material.dart';

class FriendsStoryCard extends StatelessWidget {
  const FriendsStoryCard({
    super.key,
    required this.profilePic,
    required this.storyPic,
    required this.accName,
  });

  final String profilePic;
  final String storyPic;
  final String accName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: SizedBox(
        height: 220,
        width: 112,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          child: Stack(
            children: [
              Image.asset(
                storyPic,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
              Positioned(
                top: 5,
                left: 5,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0XFF1877F2), width: 2),
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundImage: AssetImage(profilePic),
                  ),
                ),
              ),
              Positioned(
                left: 7,
                bottom: 5,
                child: Text(
                  accName,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    shadows: [
                      Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 4,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
