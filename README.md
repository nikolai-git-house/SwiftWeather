Swift Weather
============

SwiftWeather is an iOS weather app developed in Swift language. The app can support iPhone 4(s), iPhone 5(s), iPhone 6 and iPhone 6 Plus. The app also support Today Widgets.


## Version 2
This is version 2. I have ugraded the entire project to use [Carthage](https://github.com/Carthage/Carthage), [Alamofire](https://github.com/Alamofire/Alamofire) and [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON). And the app can only support iOS8+, if you want to support iOS7 or use CocoaPods and AFNetworking. Please have a look at [README.v1.md](https://github.com/JakeLin/SwiftWeather/blob/master/README.v1.md) and Release [Using Cocoapods and AFNetworking](https://github.com/JakeLin/SwiftWeather/releases/tag/V1). Happy coding.

## Screenshots
![Loading](https://raw.githubusercontent.com/JakeLin/SwiftWeather/master/screenshots/loading-33.png)

![Loading](https://raw.githubusercontent.com/JakeLin/SwiftWeather/master/screenshots/6-Today-smallsize.png)

![Swift Weather](https://raw.githubusercontent.com/JakeLin/SwiftWeather/master/screenshots/6-smallsize.png)

## Notices
Because Apple keeps changing the Swift compiler, the current version can be compiled in Xcode 6.2 beta. 
 
## Used features
* Swift Programming Language
* [Carthage](https://github.com/Carthage/Carthage)
* [Alamofire](https://github.com/Alamofire/Alamofire)
* [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON)
* Core Location
* Using Framework to share code between targets(app and widget).


## Known issues
Because we are using [Carthage](https://github.com/Carthage/Carthage) to build the third party packages. There are some build warings like `ld: warning: linking against dylib not safe for use in application extensions: /Build/Products/Debug-iphoneos/Alamofire.framework/Alamofire`

## How to build
Because the app uses carthage, we need to install carthage. To install the carthage tool on your system, please download and run the Carthage.pkg file for the latest [release](https://github.com/Carthage/Carthage/releases), then follow the on-screen instructions..

1. Open Terminal app.
2. Change directory to the project folder. `cd $project_dir`
3. Use `ls` to list all the file to check whether *Cartfile* file is in the folder? 
4. If the *Cartfile* has been found, then execute `carthage update`.This will fetch dependencies into a Carthage/Checkouts folder, then build each one.
5. On your application targets’ “General” settings tab, in the “Linked Frameworks and Libraries” section, drag and drop each framework you want to use from the Carthage/Build folder on disk. In our project, which are `Alamofire` and `SwiftyJSON`
7. Press *Cmd + B* to build the app.
8. Press *Cmd + R* to run the app on Simulator.

## Credits
* Thanks to [johnsonjake](https://github.com/johnsonjake) for adding iOS 8 support and improving the UI/UX.
* Thanks to [Marc](https://github.com/gizmou) for adding forcast feature, widget and app icon.
