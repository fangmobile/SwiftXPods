# SwiftXPods

## What's this repo about
It shows an issue when using CocoaPods and Swift Packages together. When both of them bring in the same framework, Xcode issues warnings about it. Potential runtime issues can occur too.

The example app uses `ViewRow` via CocoaPods and `ImageRow` through SPM, both of which depend on another common library, `Eureka`. As a result, Eureka is added to the workspace twice.

ViewRow:
```
s.dependencies = {
  	'Eureka' => '>= 5.0.0'
  }
```
ImageRow:
```
dependencies: [
        .package(url: "https://github.com/xmartlabs/Eureka.git", from: "5.3.5"),
    ]
```

Note: I understand both ViewRow and ImageRow are available through both Cocoapods and SPM. So the problem in THIS example can be solved by stick with one source. But this serves as an example where one framework are available only via newer SPM, but depend on another framework that is already depended on by the other Cocoapods framework.

Xcode issues fourteen warnings about duplicate class implementations. For example:

>objc[34221]: Class _TtC6Eureka7BaseRow is implemented in both /Users/jfang1/Library/Developer/CoreSimulator/Devices/1254166F-7697-45C2-AE0A-4B3E8629A24C/data/Containers/Bundle/Application/562AAF1F-437A-4956-90BD-7682DAAA2BAD/Mixed.app/Frameworks/Eureka.framework/Eureka (0x102c0da80) and /Users/jfang1/Library/Developer/CoreSimulator/Devices/1254166F-7697-45C2-AE0A-4B3E8629A24C/data/Containers/Bundle/Application/562AAF1F-437A-4956-90BD-7682DAAA2BAD/Mixed.app/Mixed.debug.dylib (0x1029038e8). One of the two will be used. Which one is undefined.

## Running the example
```
cd example/Mixed
pod install
open Mixed.xcworkspace
```
