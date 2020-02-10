# <img src="./docs/logo256.jpg" width="40" height="40" alt="skyRoute66 logo" style="vertical-align:middle"> HKDeviceUtilities #

![Swift](https://img.shields.io/static/v1?label=Swift&message=4.0%20or%20above&color=%23FF4400&style=plastic) ![iOS](https://img.shields.io/static/v1?label=iOS&&message=8.0%20or%20above&color=yellow&style=plastic) ![Cocoapods](https://img.shields.io/cocoapods/v/HKDeviceUtilities?label=pod&color=brightgreen&style=plastic) ![Cocoapods](https://img.shields.io/cocoapods/l/HKDeviceUtilities?color=blue&style=plastic) ![Category](https://img.shields.io/static/v1?label=category&message=User%20Interface&color=blueviolet&style=plastic) 
#### HK Utilities for UIDevice

<img src="./docs/cloudline.png" alt="---line---">

## VERSION HISTORY ##

1.0.0 - 2020/02/04 - Initial release

## MINIMUM REQUIREMENTS ##

**Swift** 4.0 or above

**iOS** 8.0 or above

<img src="./docs/cloudline.png" alt="---line---">

## WHAT IS IT? ##

This module provides methods that return information about UIDevice. This is a required module for many other Swift HK modules.

<img src="./docs/cloudline.png" alt="---line---">

## HOW TO INSTALL IT ##

Use one of the following methods:

### 1. Using CocoaPod ###

The module is avabilable via CocoaPods Trunk. Below is an example podfile. If you already use a podfile for your project, all you have to do is add the line that specifies `HKDeviceUtilities`. The other dependencies will also be automatically installed in the xcworkspace.

```
platform :ios, '11.0'

target 'MyTarget' do

  use_frameworks!

  pod 'HKDeviceUtilities', '~> 1.0.0'
  # other pods for your project

end

```

Don't forget to import the module in your source code:

```
import HKDeviceUtilities
```

### 2. BY INCLUDING THE SOURCE FILES ###

You can also simply include the following source files in your project:

```
HKDeviceUtilities.swift

```

<img src="./docs/cloudline.png" alt="---line---">

## HOW TO USE IT ##

Note: It is advised that you call these methods after a slight delay when responding to the UIDevice.orientationDidChangeNotification notification so that the width and height have a chance to update.

Example:

```
DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {

    let screenWidth = hkScreenWidth()
    let screenHeight = hkScreenHeight()
    // other code
}
```

### public func hkIsLandscape() -> Bool ###

Uses `UIDevice.current.orientation`:
For `.portrait`, `.portraitUpsideDown`: return false
For `.landscapeLeft`, `.landscapeRight`: return true
Any other status: test `UIScreen.main.bounds.height` against `UIScreen.main.bounds.weight`

### public func hkIsPortrait() -> Bool ###

Uses `UIDevice.current.orientation`:
For `.portrait`, `.portraitUpsideDown`: return true
For `.landscapeLeft`, `.landscapeRight`: return false
Any other status: test `UIScreen.main.bounds.height` against `UIScreen.main.bounds.weight`

### public func hkScreenHeight() -> CGFloat ###

Return `UIScreen.main.bounds.height`

### public func hkScreenWidth() -> CGFloat ###

Return `UIScreen.main.bounds.width`

### public func hkScreenLongerEdge() -> CGFloat ###

Returns the longer of `UIScreen.main.bounds.width` and `UIScreen.main.bounds.height`

### public func hkScreenShorterEdge() -> CGFloat ###

Returns the shorter of `UIScreen.main.bounds.width` and `UIScreen.main.bounds.height`

### public func hkScreenSize() -> CGSize ###

Return a CGSize made up of `UIScreen.main.bounds.width` and `UIScreen.main.bounds.height`

<img src="./docs/cloudline.png" alt="---line---">

## KNOWN ISSUES ##

There are no known issues currently.
