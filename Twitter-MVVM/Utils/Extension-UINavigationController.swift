//
//  Extension-UINavigationController.swift
//  Twitter-MVVM
//
//  Created by Justyna Kowalkowska on 12/01/2022.
//

import UIKit

extension UINavigationController {
    
    func setupTitle(title: String? = nil) {
        navigationItem.title = title
    }
    
    func setupImage(image: String) {
        guard let logo = UIImage(named: image) else { return }
        let imageView = UIImageView(image: logo)
        imageView.contentMode = .scaleAspectFit
        navigationItem.titleView = imageView
    }
}
