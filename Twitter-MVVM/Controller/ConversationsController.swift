//
//  ConversationsController.swift
//  Twitter-MVVM
//
//  Created by Justyna Kowalkowska on 12/01/2022.
//

import UIKit

class ConversationsController: UIViewController {
    
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
    }
    
    //MARK: - Helper functions
    
    private func configureUI() {
        view.backgroundColor = .white
        
        
        self.navigationItem.title = "Messages"
    }
}
