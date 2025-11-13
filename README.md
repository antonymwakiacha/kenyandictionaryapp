Perfect — I’ve updated your README content to include that your **Django proxy backend is deployed on Railway**. Here’s the polished version ready for GitHub:

---

# 🇰🇪 Kenyan Dictionary App

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge\&logo=flutter\&logoColor=white)](https://flutter.dev)
[![Supabase](https://img.shields.io/badge/Supabase-3ECF8E?style=for-the-badge\&logo=supabase\&logoColor=white)](https://supabase.com)
[![Django](https://img.shields.io/badge/Django-092E20?style=for-the-badge\&logo=django\&logoColor=white)](https://www.djangoproject.com/)
[![Railway](https://img.shields.io/badge/Railway-FF0000?style=for-the-badge\&logo=railway\&logoColor=white)](https://railway.app/)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)

A **Flutter-powered dictionary app** that curates and presents popular Kenyan idioms, slang, and cultural expressions.
It uses **Supabase** for real-time data storage and a **Django backend proxy**, deployed on **Railway**, for secure API communication.

---

## 🧠 Overview

The **Kenyan Dictionary App** documents and preserves Kenyan idioms and phrases in a fun, accessible way.
It’s built with **Flutter** (frontend), **Supabase** (database), and a **Django proxy API** (backend) deployed on **Railway** for secure, full-stack architecture.

> 🛠️ This project is part of my **Flutter portfolio**, demonstrating complete mobile app development — from backend to UI.

---

## 🚀 Features

* 🔤 Explore Kenyan idioms and their meanings
* 🔍 Smart search functionality
* 💾 Supabase database integration
* ⚡ Real-time updates through API
* 🧱 Modular Flutter architecture
* 🎨 Clean and responsive user interface

---

## 🧰 Tech Stack

| Technology      | Purpose                               |
| --------------- | ------------------------------------- |
| 🐦 **Flutter**  | Frontend development                  |
| 💙 **Dart**     | Core programming language             |
| 🔮 **Supabase** | Database & backend services           |
| 🧩 **Django**   | API proxy backend                     |
| 🌐 **REST API** | Communication between app and backend |
| 🛤️ **Railway** | Hosting the Django proxy              |
| 🧾 **GitHub**   | Version control & documentation       |

---

## ⚙️ Architecture Overview

```
Flutter App 
   ↓
Django Backend Proxy (API Layer, deployed on Railway)
   ↓
Supabase Database (Idioms & Words Tables)
```

The **Django proxy** acts as a secure API middle layer to:

* Hide Supabase service keys
* Enforce authentication and access control
* Manage request and response logic securely

Repository: [supabase_proxy_backend](https://github.com/antonymwakiacha/supabase_proxy_backend)

---

## 🗄️ Database Schema

### **Table: `idioms`**

```sql
create table public.idioms (
  id bigint generated always as identity not null,
  phrase text not null,
  meaning text not null,
  is_bookmarked boolean null default false,
  created_at timestamp with time zone null default now(),
  constraint idioms_pkey primary key (id)
) TABLESPACE pg_default;
```

### **Table: `words`**

```sql
create table public.words (
  id bigint generated always as identity not null,
  name text not null,
  type text null,
  meaning text not null,
  is_bookmarked boolean null default false,
  created_at timestamp with time zone null default now(),
  constraint words_pkey primary key (id)
) TABLESPACE pg_default;
```

---

## 💡 Features

* View a collection of Kenyan idioms and words
* Learn meanings and cultural context behind each expression
* Bookmark favorite idioms or words
* Search functionality to quickly find terms

---

## 🚀 Future Improvements

* User authentication and profiles
* Cloud syncing of bookmarks
* Admin dashboard for adding/editing content
* Support for regional dialects and translations

---

## ⚠️ Disclaimer

> ⚖️ **Content Ownership Notice**
> The idioms and words featured in this app belong to the original creators of **Kenyan Dictionary**, from their official [Instagram page](https://www.instagram.com/kenyan_dictionary/).
>
> 📝 I do **not own** the content. All credit goes to the original authors.
> This app is created **strictly for educational and portfolio purposes**, with **no intent to monetize or infringe** on intellectual property rights.

If you are the content owner and wish to request modification, attribution, or removal, please contact me directly.

---

## 👨‍💻 Author

**Antony Wugoma**
📍 Mombasa, Kenya
📧 [tonywugoma@gmail.com](mailto:tonywugoma@gmail.com)
🔗 [LinkedIn](https://www.linkedin.com/in/antony-wugoma-a22797157/)

---

## 🪪 License

This project is licensed under the [MIT License](LICENSE).
You’re free to use and modify the **codebase** for learning or personal projects — but the **content** remains the property of its original creators.

---

