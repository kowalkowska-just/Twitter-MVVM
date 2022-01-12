//
//  MainTabController.swift
//  Twitter-MVVM
//
//  Created by Justyna Kowalkowska on 11/01/2022.
//

import UIKit

class MainTabController: UITabBarController {

    
    //MARK: - Properties
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        
        view.backgroundColor = .systemPink
    }
    
    //MARK: - Helper functions
    
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
