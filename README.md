# Yelp Search

![Swift](https://img.shields.io/badge/Swift-6.0-F05138?logo=swift&logoColor=white)
![iOS 16+](https://img.shields.io/badge/iOS-16%2B-000000?logo=apple&logoColor=white)
![UIKit](https://img.shields.io/badge/UIKit-Auto%20Layout-blue)
![Yelp API](https://img.shields.io/badge/API-Yelp%20v2-FF1A1A)

![Demo](docs/assets/demo2.gif)

> Restaurant search app that queries the Yelp v2 API via a navigation bar `UISearchBar`, displays results in a `UITableView` with `UITableViewAutomaticDimension`-driven dynamic-height cells, and loads business thumbnails asynchronously with `UIImageView+URLSession (native)| Layer | Technology |
|---|---|
| Language | Swift 6.0 |
| UI | UIKit, Auto Layout, UITableViewAutomaticDimension |
| Networking | URLSession (native)|
| Image Loading | `UIImageView+URLSession (native)|
| API | Yelp API v2 (`/v2/search`) |
| Dependencies | CocoaPods |

## Architecture

`BusinessesViewController` owns the `UITableView`, acts as both data source and search bar delegate, and calls `YelpClient.sharedInstance.searchWithTerm` on every text change. `YelpClient` is a singleton that holds the authenticated `BDBOAuth1RequestOperationManager`. `Business` parses each venue dictionary in its `init(dictionary:)`. `BusinessCell` uses a `didSet` observer to bind model data to outlets synchronously on every dequeue.

## Key Implementation

**Dynamic cell height:** `UITableViewAutomaticDimension` + `estimatedRowHeight` runs Auto Layout on each cell to derive height from constraints — no parallel `heightForRowAt` that could diverge from the actual layout.

**Singleton OAuth client:** `YelpClient.sharedInstance` is initialized once with `BDBOAuth1Credential`. Every network call is signed without repeating credential setup per view controller.

## Setup

```bash
git clone https://github.com/gerardrecinto/yelp-search-ios.git
cd yelp-search-ios
pod install
open Yelp.xcworkspace
```

Add your Yelp consumer key, consumer secret, access token, and access secret to `YelpClient.swift` before building.
