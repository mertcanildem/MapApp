# 🗺️ MapApp

**MapApp** is a SwiftUI-based iOS application that showcases famous landmarks on an interactive map.  
Users can browse curated destinations, preview them via rich cards, and open detailed sheets with imagery and Wikipedia links — all while navigating directly on the map.

---

## ✨ Features

- 🗺️ **Interactive Map** powered by **MapKit**, displaying annotations for each location in `LocationsDataService`.
- 📍 **Location Preview Cards** that slide in for the currently selected landmark and provide quick access to details or the next location.
- 🧭 **Expandable Location List** that reveals all available destinations and lets users jump to any landmark.
- 📄 **Detail Sheets** presenting image carousels, descriptive text, and external links for deeper exploration.
- 🧩 **MVVM Architecture** with a single `LocationsViewModel` managing map state, selections, and sheet presentation.

---

## 🧰 Requirements

- Xcode **15 or later**
- iOS **17 SDK** (tested with iPhone 17 Pro simulator)
- SwiftUI and MapKit frameworks

---

## 🚀 Getting Started

1. **Clone** this repository and **open** `MapApp.xcodeproj` in Xcode.  
2. **Select** an iOS simulator (or a connected device) and **build/run** the project (`⌘R`).  
3. **Pan or zoom** around the map to explore landmarks. Tap on a map pin or choose a landmark from the list to bring up its preview card and details.

---
## Screenshots

The application presents a bottom preview card and a detailed sheet with imagery, description, and a mini-map (see the provided simulator captures).

<img width="349" height="739" alt="image" src="https://github.com/user-attachments/assets/0500855d-d706-4adb-86ae-9666bf12ce27" />
<img width="353" height="734" alt="image" src="https://github.com/user-attachments/assets/a6b8fe85-f2d5-4286-9339-00a046c9b04c" />

## 🗂️ Customizing Locations

To add or modify destinations, update the `LocationsDataService.locations` array.  
Each `Location` requires:

```swift
struct Location {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]  // Corresponding to assets inside Assets.xcassets
    let link: String?         // Optional, used for "Read more on Wikipedia"
}
```
+
+## License
+
+This project was created for learning purposes. Feel free to adapt it to your needs.
 
