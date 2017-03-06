# ios-screen-change-demo

## 画面遷移用のヘルパー

```swift:UIStoryboard.swift
import UIKit

extension UIStoryboard {
    
    static func getViewController<T: UIViewController>(storyboardName: String, identifier: String) -> T? {
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: identifier) as? T
    }
}
```

```swift:UIViewController.swift
import UIKit

extension UIViewController {
    
    static var identifier: String {
        get {
            return String(describing: self)
        }
    }
}
```
