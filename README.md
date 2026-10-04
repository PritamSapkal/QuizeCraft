# QuizCraft 🎯

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](LICENSE)

> **Learn. Practice. Succeed.**

QuizCraft is an interactive quiz application built using Flutter. Designed for computer science students and beginners in software development, it provides a clean, distraction-free environment to test and sharpen core programming and web development knowledge.

---

## 📌 About the Project

QuizCraft was built to master foundational Flutter concepts, focusing on multi-screen navigation, reactive state tracking across question sequences, and score evaluation logic. It delivers a fast, responsive quiz experience without requiring account creation or network setup.

---

## 🖼️ Application Showcase

| Category Selection | Quiz Interface | Results & Review |
|:---:|:---:|:---:|
| <img src="screenshots/categories.png" width="220" alt="Topic Selection Screen" /> | <img src="screenshots/quiz_screen.png" width="220" alt="Quiz Question View" /> | <img src="screenshots/result_screen.png" width="220" alt="Detailed Results Screen" /> |

*(Add your application screenshots inside a `screenshots/` directory or update the paths above.)*

---

## ✨ Features

- **Categorized Question Banks:** Dedicated quizzes across essential programming languages and web fundamentals:
  - **Languages & Frameworks:** Java, Python, C, C#, .NET, PHP
  - **Web Technologies:** HTML, CSS, JavaScript
- **Interactive Multiple-Choice Format:** Standard 4-option selection per question with auto-advancing transitions.
- **Detailed Result Evaluation:**
  - Final score calculation and display (e.g., 8/10).
  - Complete post-quiz review displaying user choices alongside correct answers.
  - Color-coded feedback (green for correct, red for incorrect).
- **Navigation Controls:** Instant restart to retry the current quiz or direct navigation back to the category menu.

---

## 🛠️ Tech Stack

- **Framework:** Flutter
- **Language:** Dart
- **UI Architecture:** Material Design Widgets
- **Platform:** Android / iOS

---

## 🧭 Application Flow

1. **Category Selection:** Users select their preferred programming language or technology from the home screen.
2. **Quiz Session:** Questions are loaded sequentially; selecting an option evaluates the choice and advances to the next question.
3. **Score Calculation:** The app tracks selections in memory and computes the total score upon completion.
4. **Answer Breakdown:** Displays an answer key highlighting missed questions and showing the correct options.

---

## 🚀 Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (stable channel)
- Android Studio or VS Code with Flutter and Dart extensions
- An Android/iOS emulator or physical test device

### Installation & Run

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/PritamSapkal/quizcraft.git](https://github.com/PritamSapkal/quizcraft.git)
   cd quizcraft
