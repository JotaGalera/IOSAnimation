import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var customView: customUIView!
    
    @IBAction func drawSimpleAnimation(_ sender: Any) {
        customView.paintSimpleAnimationPath()
    }
    @IBAction func drawGroupAnimation(_ sender: Any) {
        customView.paintCombineAnimationPath(animation: .full)
    }
    
    @IBAction func drawGADifferentAnimation(_ sender: Any) {
        customView.paintCombineAnimationPath(animation: .cut)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
