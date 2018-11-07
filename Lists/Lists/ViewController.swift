import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var label: UILabel!
    
    @IBAction func shouldAdd(_ sender: Any) {
        
        //if there is text in text field return the text if not return empty
        guard let text = textField.text,
            !text.isEmpty else { return }
        
        Model.shared.add(text)
        updateViews()
    }
    
    @IBAction func shouldReset(_ sender: Any) {
        //reset items using model set up
        Model.shared.resetItems()
        updateViews()
    }
    
    private func updateViews() {
        let joined = Model.shared.items.joined(separator: "\n")
        label.text = joined
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}

