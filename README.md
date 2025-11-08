+# MapApp
+
+MapApp is a SwiftUI-based iOS application that showcases famous landmarks on an interactive map. Users can browse curated destinations, preview them via rich cards, and open a detailed sheet with imagery and Wikipedia links, all while navigating directly on the map.
+
+## Features
+
+- **Interactive Map** powered by MapKit displaying annotations for each location in `LocationsDataService`.
+- **Location Preview Cards** that slide in for the currently selected landmark and provide quick access to details or the next location.
+- **Expandable Location List** that reveals all available destinations and lets users jump to any landmark.
+- **Detail Sheets** presenting image carousels, descriptive text, and external links for deeper exploration.
+- **MVVM Architecture** with a single `LocationsViewModel` managing map state, selections, and sheet presentation.
+
+## Requirements
+
+- Xcode 15 or later
+- iOS 17 SDK (tested with iPhone 17 Pro simulator shown in the screenshots)
+
+## Getting Started
+
+1. Clone this repository and open `MapApp.xcodeproj` in Xcode.
+2. Select an iOS simulator (or a connected device) and build/run the project (⌘R).
+3. Pan or zoom around the map to explore locations. Tap on a map pin or choose a landmark from the list to bring up its preview card and details.
+
+## Customizing Locations
+
+To add or modify destinations, update the `LocationsDataService.locations` array. Each `Location` requires:
+
+- `name` and `cityName`
+- `coordinates` (`CLLocationCoordinate2D`)
+- `description`
+- `imageNames` corresponding to assets inside `Assets.xcassets`
+- `link` to an external resource (optional but used for the "Read more on Wikipedia" link)
+
+After updating the data, add the referenced images to the asset catalog to ensure they appear in the preview and detail views.
+
+## Screenshots
+
+The application presents a bottom preview card and a detailed sheet with imagery, description, and a mini-map (see the provided simulator captures).
<img width="349" height="739" alt="image" src="https://github.com/user-attachments/assets/0500855d-d706-4adb-86ae-9666bf12ce27" />
<img width="353" height="734" alt="image" src="https://github.com/user-attachments/assets/a6b8fe85-f2d5-4286-9339-00a046c9b04c" />


+
+## License
+
+This project was created for learning purposes. Feel free to adapt it to your needs.
 
EOF
)
