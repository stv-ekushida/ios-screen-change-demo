# ios-screen-change-demo

## サンプル

```swift:SecondViewController.swift
import UIKit

class SecondViewController: UIViewController {
    
    /// 引数
    private var viewModel: SecondViewModel?

    // MARK: Initializer    
    /// ViewControllerのインスタンスを取得する
    static func create(viewModel: SecondViewModel) -> SecondViewController{
        let vc = UIStoryboard.getViewController(storyboardName: "Main",
                                                identifier: identifier) as! SecondViewController
        vc.viewModel = viewModel
        return vc
    }
    
    // MARK: View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        print(viewModel?.title ?? "")
    }
}
```



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
