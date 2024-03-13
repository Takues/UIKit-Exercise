//
//  SignInViewController.swift
//  UIKitExercise
//
//  Created by Takudzwa Zindoga on 12/3/2024.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var titleLabe: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBAction func signInAction(_ sender: Any) {
        if let username = usernameTextField.text,
            let password = passwordTextField.text,
           !username.isEmpty && !password.isEmpty {

            let appsTableViewControllerv = AppsViewController(nibName: "AppsViewController", bundle: Bundle.main)
            navigationController?.pushViewController(appsTableViewControllerv, animated: true)


        } else {
            self.showAlert(customTitle: "Sign In Successful!", customMessage: "Click OK to continue")

        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
