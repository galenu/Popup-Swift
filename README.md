# Popup-Swift

[![CI Status](https://img.shields.io/travis/galenu/Popup-Swift.svg?style=flat)](https://travis-ci.org/galenu/Popup-Swift)
[![Version](https://img.shields.io/cocoapods/v/Popup-Swift.svg?style=flat)](https://cocoapods.org/pods/Popup-Swift)
[![License](https://img.shields.io/cocoapods/l/Popup-Swift.svg?style=flat)](https://cocoapods.org/pods/Popup-Swift)
[![Platform](https://img.shields.io/cocoapods/p/Popup-Swift.svg?style=flat)](https://cocoapods.org/pods/Popup-Swift)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Popup-Swift is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Popup-Swift'
```

```
        let alert = UIView()
        alert.backgroundColor = .red
        self.showAlert(alert, size: .size(width: 300, height: 300), offsetX: (UIScreen.main.bounds.width - 300) * 0.5)
        
        let actionsheet = UIView()
        actionsheet.backgroundColor = .red
        self.showActionSheet(actionsheet, size: .size(width: 300, height: 400), offsetX: (UIScreen.main.bounds.width - 300) * 0.5)
        
        let popopver = UIView()
        popopver.backgroundColor = .red
        self.pushPopover(popopver, size: .size(width: UIScreen.main.bounds.width, height: 400))
```

## Author

galenu, 250167616@qq.com

## License

Popup-Swift is available under the MIT license. See the LICENSE file for more info.
