//
//  Alert.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 12.06.2023.
//

import Foundation
import UIKit

extension UIViewController {
    func presentAlert(title: String?,
                      message: String?,
                      preferredStyle: UIAlertController.Style = .alert,
                      defaultButtonTitle: String? = nil,
                      cancelButtonTitle: String?,
                      isTextFieldAvailable: Bool = false,
                      defaultButtonHandler: ((UIAlertAction) -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: preferredStyle)

        if defaultButtonTitle != nil {
            let defaultButton = UIAlertAction(title: defaultButtonTitle, style: .default, handler: defaultButtonHandler)
            alertController.addAction(defaultButton)
        }

        let cancelButton = UIAlertAction(title: cancelButtonTitle, style: .cancel)

        if isTextFieldAvailable {
            alertController.addTextField()
        }

        alertController.addAction(cancelButton)

        present(alertController, animated: true)
    }

    func presentWarning() {
        presentAlert(title: "UYARI", message: "Bir hatayla karşılaştınız", cancelButtonTitle: "Tamam")
    }
}
