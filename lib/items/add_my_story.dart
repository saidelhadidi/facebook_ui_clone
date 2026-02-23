import 'package:flutter/material.dart';

class AddMyStory extends StatelessWidget {
  const AddMyStory({super.key});

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
              Container(
                color: Colors.white,
                padding: EdgeInsets.only(bottom: 1),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/images/Profile.jpeg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 140,
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Create a\n  Story",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 120,
                right: 0,
                left: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.add_circle_sharp,
                    color: Color(0XFF1877F2),
                    size: 35,
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
