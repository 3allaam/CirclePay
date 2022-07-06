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
[Checkout Embed 📲](#headers)  
[Call Backs 🔙](#license)  
[UI Configuration <Dynamic> 🎨](#headers)  
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
Once integration done you can import the SDK in your classes like below:

```ruby
import CirclePaySDK
```

Now you have put your keys  and call CirclePay.prepareSDK method before using the SDK methods .
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

## Usage 🧑‍💻
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

## Checkout Embed 📲
<table>
  <tr>
    <td>Invoice Summary</td>
     <td>Invoice Details</td>
     <td>Payment Methods</td>
     <td>Sucsessfully Transaction</td>

  </tr>
  <tr>
    <td><img src="https://user-images.githubusercontent.com/79041707/177437629-22b10a92-6a02-49c7-b84a-468fd9c43c0a.png" width="200" height="400" width=270 height=480></td>
    <td><img src="https://user-images.githubusercontent.com/79041707/177437625-118e47fa-aae2-4790-bb72-ef235773bd18.png" width="200" height="400" width=270 height=480></td>
    <td><img src="https://user-images.githubusercontent.com/79041707/177437622-f66f85aa-3c5e-43c8-9cc8-90fc664bd932.png" width="200" height="400" width=270 height=480></td>
        <td><img src="https://user-images.githubusercontent.com/79041707/177437619-7c3c97fe-8893-473f-b01f-207605c3691b.png" width="200" height="400" width=270 height=480></td>
  </tr>
 </table>
 
 To use  checkout embed you have to call execute methods which is in our main class CirclePay like below:
 ```ruby
  CirclePay.excutePayment(with: .Invoice(invoiceNumber: unwrappedInvoiceNumber))
```
By passing the invoice number argument you should start the checkout embed jounry easily , and carry on.

## Call Backs 🔙 
By Conforming to CirclePayDelegete Interface you will be able to receive the transaction result call back .
First You have to assign delegete like below :
```ruby
    CirclePay.delegete = self
```
Then you should implement CirclePayDelegete in your class like below:

```ruby
extension InitialViewController: CirclePayDelegete {
    
    func didGetErrorAtCheckoutProcess(error: CirclePayError) {
        print("Check out error :- " , error.errorMsg )
    }
    
    func didPaidTransactionSucsessfully(transaction: TransactionResult) {
        print("Sucsessfully Paid :-", transaction)
    }
    
    func didGetErrorAtPayingTransaction(transaction: TransactionResult, error: CirclePayError) {
        print("Failed to Pay :-", transaction)
    }
}
```
Transaction Result object contains:
```ruby
 var paymentGatewayName: String?
 var paymentMethodName: String?
 var transactionId: String?
 var transactoinStatus: String?
 var transactionType: Int
```

## UI Configuration <Dynamic> 🎨

The UI is fully dynamic based on your configuration on the dashboard , it will reflect directly checkout embed screens like image below : 

<td><img src="https://user-images.githubusercontent.com/79041707/177439560-11beff9e-a6c6-4eb2-9764-a14cbb2e390a.png" width="250" height="400" width=270 height=480></td>

UI Will be reflected directly with your configuration like primary colors , hiding/showing elements 


## Author 

Mahmoud3allam, mahmoudallam@circlepay.ai , https://github.com/Mahmoud3allam

Adel Mohey, adelmohey@circlepay.ai


## License

CirclePay is available under the MIT license. See the LICENSE file for more info.
