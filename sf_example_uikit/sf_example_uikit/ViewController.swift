
import UIKit

class ViewController: UIViewController {

    let userName = "Aliisa Moon";
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let stack = UIStackView()
        stack.axis = .vertical;
        stack.alignment = .center;
        stack.spacing = 20;
        stack.translatesAutoresizingMaskIntoConstraints = false;
        self.view.addSubview(stack)
        stack.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true;
        stack.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true

        let label1 = UILabel();
        stack.addArrangedSubview(label1)
        let label2 = UILabel();
        stack.addArrangedSubview(label2)
        let label3 = UILabel();
        stack.addArrangedSubview(label3)
        let button = UIButton(type: .system)
        button.addTarget(self, action: #selector(showDetail), for: .touchUpInside)
        stack.addArrangedSubview(button)
        
        ///

        label1.text = Localizations.MainScreen.titleScreen
        label2.text = Localizations.MainScreen.helloUser.replacingOccurrences(of: "{USER}", with: userName)
        label3.text = Localizations.MainScreen.yourTodayTask
        button.setTitle(Localizations.MainScreen.Buttons.details, for: .normal)
    }
    
    @objc func showDetail() {
        let sheetViewController = UIAlertController(title: Localizations.SecondScreen.titleScreen, message: Localizations.SecondScreen.ta, preferredStyle: .alert)
        sheetViewController.addAction(UIAlertAction(title: Localizations.SecondScreen.Buttons.later, style: .cancel))
        present(sheetViewController, animated: true, completion: nil)
    }

}

