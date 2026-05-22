# Yelp Search

![Swift](https://img.shields.io/badge/Swift-3%2B-F05138?logo=swift&logoColor=white)
![iOS 9+](https://img.shields.io/badge/iOS-9%2B-000000?logo=apple&logoColor=white)
![UIKit](https://img.shields.io/badge/UIKit-Auto%20Layout-blue)
![Yelp API](https://img.shields.io/badge/API-Yelp%20v2-FF1A1A)

![Demo](docs/assets/demo2.gif)

Restaurant search app powered by the Yelp API with dynamic-height table cells and a navigation bar search bar.

## Features

- Restaurant search with results in a dynamic-height table view
- Auto Layout for variable-length business names and addresses
- Search bar integrated in the navigation bar
- Custom table view cells with proper content sizing

## Tech Stack

| Layer | Technology |
|---|---|
| Language | Swift |
| UI | UIKit, Auto Layout |
| Networking | Yelp API v2 |
| Dependencies | CocoaPods |

## Setup

```bash
git clone https://github.com/gerardrecinto/yelp-search-ios.git
cd yelp-search-ios
pod install
open Yelp.xcworkspace
```

Add your Yelp API key before building.
