# kenyandictionaryapp

Perfect 👌 Here’s your **fully enhanced and badge-styled `README.md`** — professionally formatted for GitHub, including all sections, credits, and a legal disclaimer:

---

# 🇰🇪 Flutter Dictionary App

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge\&logo=flutter\&logoColor=white)](https://flutter.dev)
[![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge\&logo=supabase\&logoColor=white)](https://supabase.com)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge\&logo=dart\&logoColor=white)](https://dart.dev)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

A simple and elegant **Flutter-powered dictionary app** built to help users explore and learn Kenyan words and their meanings. The app uses **Supabase** for real-time storage and retrieval of dictionary data.

---

## 🧠 Overview

The **Kenyan Dictionary App** documents and preserves Kenyan slang and cultural words for easy access and learning.
It’s built using **Flutter** (frontend) and **Supabase** (backend) to demonstrate app architecture, API integration, and UI design best practices.

> 🛠️ This project is part of my **Flutter development portfolio**, showcasing full-stack mobile development skills.

---

## 🚀 Features

* 🔤 Browse unique Kenyan words and meanings
* 🔍 Smart search functionality
* 💾 Supabase database integration
* ⚡ Real-time updates (instant word sync)
* 🧱 Modular Flutter architecture
* 🎨 Clean and responsive UI

---

## 🧰 Tech Stack

| Technology      | Purpose                         |
| --------------- | ------------------------------- |
| 🐦 **Flutter**  | Frontend framework              |
| 🔮 **Supabase** | Backend, database & API         |
| 💙 **Dart**     | Programming language            |
| 🌐 **GitHub**   | Version control & documentation |

---

## ⚙️ Getting Started

### 1️⃣ Clone the repository

```bash
git clone https://github.com/yourusername/flutter-dictionary-app.git
cd flutter-dictionary-app
```

### 2️⃣ Install dependencies

```bash
flutter pub get
```

### 3️⃣ Set up Supabase

1. Create a project on [Supabase](https://supabase.com)
2. Create a table named `words` with columns like:

   * `id` → primary key
   * `word` → text
   * `definition` → text
   * `language` → text or enum
3. Add your Supabase URL and API key in `lib/supabase_client.dart`

### 4️⃣ Run the app

```bash
flutter run
```

---

## 📂 Folder Structure

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart
│   ├── word_details_screen.dart
├── models/
│   ├── word.dart
├── services/
│   ├── supabase_service.dart
└── widgets/
    ├── word_card.dart
```

---

## 📚 Educational Purpose

This project was built to:

* Showcase full-stack mobile app development
* Demonstrate Supabase integration with Flutter
* Build a personal project portfolio
* Promote Kenyan linguistic culture and creativity

---

## ⚠️ Disclaimer

> ⚖️ **Content Ownership Notice**
> The word definitions and linguistic content used in this app **belong to the original creators** of the *Kenyan Dictionary* from their official [Instagram page](https://www.instagram.com/kenyan_dictionary/).

> 📝 I do **not own** the content. All credit goes to the original authors and creators of *Kenyan Dictionary*.
> This app is created **strictly for educational and portfolio purposes**, with **no intent to monetize or infringe** upon intellectual property rights.

If you are the content owner and would like removal, modification, or additional credit, please contact me directly.

---

## 👨‍💻 Author

**Antony Wugoma**
📍 Mombasa, Kenya
📧 [tonywugoma@gmail.com](mailto:tonywugoma@gmail.com)
🔗 [LinkedIn](https://www.linkedin.com/in/antony-wugoma-a22797157/)

---

## 🪪 License

This project is licensed under the [MIT License](LICENSE).
You’re free to use and modify the **codebase** for learning or personal projects — but the **content** remains the intellectual property of its original creators.

---


