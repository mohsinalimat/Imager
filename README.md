# Imager

An image viewer for iOS.

## Requirements

* iOS 8.0+
* Xcode 8 with Swift 3

## Dependency

* [hyperoslo/Hue](https://github.com/hyperoslo/Hue)

## Installnation

#### CocoaPods

```ruby
pod 'Imager'
```
## Usage

```swift
var images = [String]()
for i in 1...16 {
    images.append("https://yourdomain.com/example.jpg")
}

Imager.show(URLStrings: images, controller: self)
// or:
// self.showImager(URLStrings: images)
```

Also support `URL`s and `UIImage`s:

```swift
Imager.show(URLs: images, controller: self)
Imager.show(images: images, controller: self)
```

## Q&A

#### Use wrong URL strings

```swift
Imager.show(URLStrings: ["abc"], controller: self)
```

> The `ImageItem.init(URLStrings: [String]...` function will use `ImagerItem.defaultImageURL`/`Imager.defaultImageURL` if URL string is wrong.
> Set a default value, or use `show(URLs: [URL]...` function.

#### Use HTTP

Paste this in your `Info.plist`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>NSAllowsArbitraryLoads</key>
	<true/>
</dict>
</plist>
```
