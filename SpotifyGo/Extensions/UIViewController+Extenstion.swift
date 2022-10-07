//
//  UIViewController+Extenstion.swift
//  SpotifyGo
//
//  Created by Huy Hà on 10/7/22.
//

import UIKit

extension UIViewController {
    func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alertController, animated: true, completion: nil)
    }
}
