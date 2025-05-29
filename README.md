# FAQ iOS App

A simple, clean iOS application built using **SwiftUI** and **MVVM architecture** that fetches data from a remote API and displays:
- A horizontally scrollable carousel.
- An expandable/collapsible vertical FAQ list.

## 🚀 Features

- ✅ SwiftUI-based interface.
- ✅ MVVM architecture.
- ✅ URLSession networking.
- ✅ Codable models.
- ✅ Horizontal carousel with images.
- ✅ FAQ section with expand/collapse toggle.
- ✅ Clean code and folder structure.

## 🛠 Technologies Used

- Swift 5
- SwiftUI
- MVVM Architecture
- URLSession for API call
- Codable for JSON parsing

## 📸 Screenshots

> Add screenshots here if you have them!

## 📡 API Used

The app fetches data from the following GET API:


https://gist.githubusercontent.com/sanjeevworkstation/c27e6cc85b7d4bcaf8ec73d96a0ae25b/raw/4a2ce8c5215f2d7a7201338a6af49a77c0f81f6a/assignment.json



- **"rail"** → used to populate the horizontal carousel.
- **"railPageFaqs"** → used to populate the vertical FAQ section.

## 📁 Project Structure

```bash
FAQApp/
├── Models/
│   └── Rail.swift
│   └── FAQ.swift
├── ViewModels/
│   └── FAQViewModel.swift
├── Views/
│   └── CarouselView.swift
│   └── FAQListView.swift
├── ContentView.swift
└── FAQAppApp.swift (@main)

- **"rail"** → used to populate the horizontal carousel.
- **"railPageFaqs"** → used to populate the vertical FAQ section.

## 📁 Project Structure

```bash
FAQApp/
├── Models/
│   └── Rail.swift
│   └── FAQ.swift
├── ViewModels/
│   └── FAQViewModel.swift
├── Views/
│   └── CarouselView.swift
│   └── FAQListView.swift
├── ContentView.swift
└── FAQAppApp.swift (@main)

---

## ▶️ Running the App

1. Open `FAQApp.xcodeproj` in **Xcode 15+**.
2. Choose an iOS Simulator (e.g., iPhone 15 Pro or later).
3. Click the **Run** ▶️ button or press `Cmd + R`.

> Ensure internet access is available for data fetching.

---

## 👨‍💻 Developer

**Lakshay**  
B.E. Student – Chandigarh  
Built as part of an iOS development assessment task.

---

