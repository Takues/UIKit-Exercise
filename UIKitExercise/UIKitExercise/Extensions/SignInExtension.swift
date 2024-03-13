//
//  SignInExtension.swift
//  UIKitExercise
//
//  Created by Takudzwa Zindoga on 12/3/2024.
//

import Foundation
import UIKit

extension UIViewController {
    func showAlert(customTitle: String, customMessage: String ){
        let alert = UIAlertController(title: customTitle, message: customMessage, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
}
