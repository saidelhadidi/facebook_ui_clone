# Facebook UI Clone 📱

A comprehensive and high-performance UI clone of the Facebook application built using Flutter. This project goes beyond simple layouts by implementing advanced scrolling techniques, data modeling, and proper form validation.

## 🎯 Project Highlights & Architecture

* **🚀 Advanced Scrolling (Slivers):**
  Implemented `CustomScrollView` with `SliverToBoxAdapter` and `SliverList.builder` to achieve a seamless and highly performant scrolling experience, combining horizontal stories and vertical posts without jank.
* **🧠 Data Modeling:**
  Separated UI from Data by creating `StoryModel` and `PostModel`. This clean architecture approach makes the `ListView` and `SliverList` dynamic and ready for future API integration.
* **🔐 Robust Form Validation:**
  The `LoginScreen` features comprehensive validation using **Regular Expressions (Regex)** to ensure secure password policies (requiring uppercase, lowercase, numbers, and special characters) and proper email formatting.
* **🧩 Component-Based UI:**
  Created reusable components such as `Post`, `FriendsStoryCard`, and `AddMyStory`, keeping the `HomeScreen` clean and maintainable.
* **🎨 Custom Assets & Icons:**
  Integrated custom fonts and the `font_awesome_flutter` package to precisely match Facebook's UI elements (e.g., interaction buttons like Heart, Comment, Share).
* **✨ Native App Polish:**
  Configured `flutter_native_splash` and `flutter_launcher_icons` in the `pubspec.yaml` to provide a professional, native-like startup experience with Meta branding.

## 🛠️ Tech Stack & Key Widgets
* **Core Layouts:** `CustomScrollView`, `Slivers`, `Stack`, `Positioned`, `ClipRRect`.
* **State Management:** `StatefulWidget` (for handling password visibility toggles in the login screen).
* **Dependencies:** `font_awesome_flutter`, `flutter_native_splash`, `flutter_launcher_icons`.

## 🚀 How to Run
Clone the repository, ensure Flutter is installed, run `flutter pub get` to fetch dependencies, and then `flutter run`.