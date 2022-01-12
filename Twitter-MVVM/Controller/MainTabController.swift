//
//  MainTabController.swift
//  Twitter-MVVM
//
//  Created by Justyna Kowalkowska on 11/01/2022.
//

import UIKit

class MainTabController: UITabBarController {

    
    //MARK: - Properties
    
    let actionButton: UIButton  = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .systemBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        return button
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureUI()
    }
    
    //MARK: - Helper functions
    
    private func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor,
                            paddingBottom: 64, paddingRight: 16,
                            width: 56, height: 56)
        actionButton.layer.cornerRadius = 28
    }
    
    private func configureViewController() {
        let feed = templateNavigationController(image: "home_unselected", rootViewController: FeedController())
        
        let explore = templateNavigationController(image: "search_unselected", rootViewController: ExploreController())
        
        let notifications = templateNavigationController(image: "like_unselected", rootViewController: NotificationsController())
        
        let conversations = templateNavigationController(image: "ic_mail_outline_white_2x-1", rootViewController: ConversationsController())
        
        viewControllers = [feed, explore, notifications, conversations]
    }

    private func templateNavigationController(image: String, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = UIImage(named: image)
        return nav
    }

}
