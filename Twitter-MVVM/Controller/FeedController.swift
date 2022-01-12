//
//  FeedController.swift
//  Twitter-MVVM
//
//  Created by Justyna Kowalkowska on 12/01/2022.
//

import UIKit

class FeedController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    //MARK: - Helper functions
    
    private func configureUI() {
        view.backgroundColor = .white
        
        // Setting the logo in navigation controller
        
        guard let logo = UIImage(named: "twitter_logo_blue") else { return }
        let imageView = UIImageView(image: logo)
        imageView.contentMode = .scaleAspectFit
        self.navigationItem.titleView = imageView
    }
}

