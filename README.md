# GNLazy

[![CI Status](http://img.shields.io/travis/games-neox/GNLazy.svg?style=flat)](https://travis-ci.org/games-neox/GNLazy)
[![Version](https://img.shields.io/cocoapods/v/GNLazy.svg?style=flat)](http://cocoapods.org/pods/GNLazy)
[![License](https://img.shields.io/cocoapods/l/GNLazy.svg?style=flat)](http://cocoapods.org/pods/GNLazy)
[![Platform](https://img.shields.io/cocoapods/p/GNLazy.svg?style=flat)](http://cocoapods.org/pods/GNLazy)

Simple [lazy](https://en.wikipedia.org/wiki/Lazy_initialization) loader for Objective-C/Swift.
Basis usage:
```objective-c
#import <GNLazy/GNLazy.h>

GNLazy<NSString*>* lazyString = [GNLazy createFromLoader:^{
    return @"lazy string";
}];

NSString* stringLoadedSafely = [lazy safeGet];
NSString* stringLoadedFast = [lazy fastGet];
```  

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

Minimum supported `iOS` version: `8.x`  
Dependencies: `GNExceptions`, `GNLog` & `GNPreconditions`

## Installation

GNLazy is available through [CocoaPods](http://cocoapods.org). To install it, simply add the following line to your Podfile:

```ruby
pod "GNLazy"
```  

## Author

Games Neox, games.neox@gmail.com

## License

GNLazy is available under the MIT license. See the LICENSE file for more info.
