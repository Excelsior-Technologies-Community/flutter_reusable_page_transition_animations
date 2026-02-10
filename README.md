# 🚀 FlutterReusablePageTransitionAnimations

A simple Flutter project that demonstrates **reusable page transition animations** using a custom PageTransition helper.
A simple and reusable Flutter utility to add custom page transition animations like slide, fade, and scale when navigating between screens.

This project demonstrates how to create reusable page transitions in a clean and scalable way.

---
## ✨ Features
* ✅ Reusable PageTransition.createRoute() helper
* 🎬 Multiple built-in animations:
  * Fade
  * Slide (Left, Right, Up, Down)
  * Scale
  * Rotate
  * Scale + Fade
  * Slide + Fade
  * Size (Grow from center)
  * Flip X (3D)
  * Flip Y (3D)
* ⏱ Custom duration support
* 📐 Custom animation curve support
* 🧱 Clean project structure
* 🔮 Future-ready for package conversion
---
## ✨ Preview
![screen-20260210-1722032](https://github.com/user-attachments/assets/c6e800a6-d5cc-4fdf-9460-c91c45be28cf)

---
## ✨ Installation
Add this to your package's pubspec.yaml file:
```
dependencies:
  flutter_reusable_page_transition_animations:
    path: ../flutter_reusable_page_transition_animations  # For local development
```
from git:
```
dependencies:
  flutter_reusable_page_transition_animations:
    git:
      url: https://github.com/yourusername/flutter_reusable_page_transition_animations.git  # Your github path
``` 
Then run:
```
flutter pub get
```
---
## 📁 Project Structure
```
lib/
├── main.dart
├── app.dart
├── routes/
│   └── page_transitions.dart
├── screens/
│   ├── home_screen.dart
│   ├── detail_screen.dart
│   └── settings_screen.dart
└── widgets/
    └── transition_button.dart   (optional)

```
---
## 🧭 Core File
The main logic lives in:
```
lib/routes/page_transitions.dart

```
It contains:
 - **PageTransitionType** enum
 - **PageTransition.createRoute()** method
 - All animation implementations
---
## 📦 Supported Animations
```
enum PageTransitionType {
  fade,
  slideRight,
  slideLeft,
  slideUp,
  slideDown,
  scale,
  rotate,
  scaleFade,
  slideFade,
  size,
  flipX,
  flipY,
}

```
---
## ▶️ How to Use
### 1️⃣ Import
```
import 'package:flutter_reusable_page_transition_animations/routes/page_transitions.dart';

```
---
### 2️⃣ Navigate with Animation
```
Navigator.push(
  context,
  PageTransition.createRoute(
    const DetailScreen(),
    type: PageTransitionType.flipY,
  ),
);

```
---
## ⚙️ Customization
You can also control **duration** and **curve**:
```
Navigator.push(
  context,
  PageTransition.createRoute(
    const DetailScreen(),
    type: PageTransitionType.scaleFade,
    duration: const Duration(milliseconds: 500),
    curve: Curves.easeOutCubic,
  ),
);

```
---
## 🧪 Example Buttons (Home Screen)
```
ElevatedButton(
  onPressed: () {
    Navigator.push(
      context,
      PageTransition.createRoute(
        const DetailScreen(),
        type: PageTransitionType.flipX,
      ),
    );
  },
  child: const Text('Go to Detail (Flip X)'),
);

```
---
## 📜 License
MIT License
```
Copyright (c) 2025 Excelsior Technologies

Permission is hereby granted, free of charge, to any person obtaining a copy  
of this software and associated documentation files (the "Software"), to deal  
in the Software without restriction, including without limitation the rights  
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell  
copies of the Software, and to permit persons to whom the Software is  
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all  
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED **"AS IS"**, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR  
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,  
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
```
---
