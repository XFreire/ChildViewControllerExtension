import UIKit

extension UIViewController {
    func add(_ child: UIViewController, in container: UIView) {
        addChildViewController(child)
        container.addSubview(child.view)
        child.view.frame = container.bounds
        child.didMove(toParentViewController: self)
    }
    
    func add(_ child: UIViewController) {
        add(child, in: view)
    }
    
    func remove(from view: UIView) {
        guard parent != nil else {
            return
        }
        
        willMove(toParentViewController: nil)
        removeFromParentViewController()
        view.removeFromSuperview()
    }
    
    func remove() {
        remove(from: view)
    }
}
