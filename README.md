<h1 align="center" style="margin-top: 0px;">lazy</h1>

<p align="center">
<a href="https://github.com/space-code/lazy/blob/main/LICENSE"><img alt="License" src="https://img.shields.io/github/license/space-code/lazy?style=flat"></a> 
<a href="https://swiftpackageindex.com/space-code/lazy"><img alt="Swift Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Flazy%2Fbadge%3Ftype%3Dswift-versions"/></a> 
<a href="https://swiftpackageindex.com/space-code/lazy"><img alt="Platform Compatibility" src="https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fspace-code%2Flazy%2Fbadge%3Ftype%3Dplatforms"/></a> 
<a href="https://github.com/space-code/lazy"><img alt="CI" src="https://github.com/space-code/Lazy/actions/workflows/ci.yml/badge.svg?branch=main"></a>
<a href="https://codecov.io/gh/space-code/lazy"><img src="https://codecov.io/gh/space-code/lazy/graph/badge.svg?token=XyRCZMlYWg"/></a>
</p>

## Description
`Lazy` is a small, handy tool for lazily initializing a value.

- [Usage](#usage)
- [Requirements](#requirements)
- [Installation](#installation)
- [Communication](#communication)
- [Contributing](#contributing)
- [Author](#author)
- [License](#license)

## Usage

```swift
import Lazy

let objectLazy = Lazy {
    // Create an instance here ...
}

// Initialize the object
let object = objectLazy.value
```

## Requirements
- iOS 11.0+ / macOS 10.13+ / tvOS 11.0+ / watchOS 4.0+ / visionOS 1.0+
- Xcode 14.0
- Swift 5.7

## Installation
### Swift Package Manager

The [Swift Package Manager](https://swift.org/package-manager/) is a tool for automating the distribution of Swift code and is integrated into the `swift` compiler. It is in early development, but `lazy` does support its use on supported platforms.

Once you have your Swift package set up, adding `lazy` as a dependency is as easy as adding it to the `dependencies` value of your `Package.swift`.

```swift
dependencies: [
    .package(url: "https://github.com/space-code/lazy.git", .upToNextMajor(from: "1.0.0"))
]
```

## Communication
- If you **found a bug**, open an issue.
- If you **have a feature request**, open an issue.
- If you **want to contribute**, submit a pull request.

## Contributing
Bootstrapping development environment

```
make bootstrap
```

Please feel free to help out with this project! If you see something that could be made better or want a new feature, open up an issue or send a Pull Request!

## Author
Nikita Vasilev, nv3212@gmail.com

## License
lazy is available under the MIT license. See the LICENSE file for more info.
