# CirclePay

[![CI Status](https://img.shields.io/travis/Mahmoud3allam/CirclePay.svg?style=flat)](https://travis-ci.org/Mahmoud3allam/CirclePay)
[![Version](https://img.shields.io/cocoapods/v/CirclePay.svg?style=flat)](https://cocoapods.org/pods/CirclePay)
[![License](https://img.shields.io/cocoapods/l/CirclePay.svg?style=flat)](https://cocoapods.org/pods/CirclePay)
[![Platform](https://img.shields.io/cocoapods/p/CirclePay.svg?style=flat)](https://cocoapods.org/pods/CirclePay)

## Product Objectives 🎯

By using the SDK , developers gotta be allowed to use Circlepay open api from iOS  apps.
also they can use CirclePay checkout embed screens which gonna reduce a lot of effort to the developer.


## Table of Contents ⚓ 
[Integration 💻](#headers)  
[Prepare SDK & Adding Keys 🔑](#headers)  
[Change SDK environment 👀](#headers)  
[Usage 🧑‍💻](#headers)  
[Author](#author)  
[License](#license)  
<a name="headers"/>

## Integration 💻
CirclePay is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CirclePay'
```
  Then run this command in your terminal to fetch the latest version:


## Prepare SDK & Adding Keys 🔑
Once integration done you can import the SDK in your classes , but you have put your keys  and call CirclePay.prepareSDK method before using the SDK methods .
you can put it into your AppDelegate.swift file like this :

```ruby
import UIKit
import CirclePaySDK
@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window:UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        CirclePay.merchantToken = "Your Merchant Token"
        CirclePay.accountToken = "Your Account Token"
        CirclePay.accountKey = " Your Account Key"
        CirclePay.prepareSDK()
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = InitialViewController()
        self.window = window
        window.makeKeyAndVisible()
        return true
    }
}
```
## Change SDK environment 👀
You can change the environment like this :
```ruby
 CirclePay.mode = .sandbox
```
Note that there's two environments  :
 .sandbox
.production
By default the environment is set to .sandbox
Usage 🧑‍💻
Mainly the SDK contain some main modules you can call them by a class called CirclePay , below the main modules that SDK Support :
- [x] invoices
- [x] customers
- [x] merchants
- [x] payments
- [x] refunds
- [x] paymentGateways
- [x] paymentMethods

You can use those modules methods by importing the SDK into your class , then calling its methods throw CirclePay class like shown below:

```ruby
    CirclePay.invoices.getInvoice(invoiceNumber: self.invoiceNumber) { invoiceData, err in
            //Write your logic
    }
```
For more details you can visit the open API docs :

[Docs](https://circlepayapi.github.io/CirclePayApi/#introduction)


## Author 

Mahmoud3allam, mahmoudallam@circlepay.ai , allam40960@gmail.com

Adel Mohey, adelmohey@circlepay.ai


## License

CirclePay is available under the MIT license. See the LICENSE file for more info.
