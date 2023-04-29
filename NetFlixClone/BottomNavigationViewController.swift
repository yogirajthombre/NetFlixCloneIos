//
//  ViewController.swift
//  NetFlixClone
//
//  Created by Yogiraj Thombre on 4/29/23.
//

import UIKit

class BottomNavigationViewController : UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemPink
        
        let homeVC = UINavigationController(rootViewController: HomeViewController())
        
        let upcomingVC = UINavigationController(rootViewController: UpComingViewController())
        
        let searchViewVC = UINavigationController(rootViewController: SearchViewController())
        
        let downloadsVC = UINavigationController(rootViewController: DownloadsViewController())
        
        homeVC.tabBarItem.image = UIImage(systemName : "house")
        
        upcomingVC.tabBarItem.image = UIImage(systemName : "play.circle")
        
        searchViewVC.tabBarItem.image = UIImage(systemName : "magnifyingglass")
        
        downloadsVC.tabBarItem.image = UIImage(systemName : "arrow.down.to.line")
        
        homeVC.title = "Home"
        
        upcomingVC.title = "Play"
        
        searchViewVC.title = "Search"
        
        downloadsVC.title = "Downloads"
        
        tabBar.tintColor = .systemBlue
        
        setViewControllers([homeVC,upcomingVC,searchViewVC,downloadsVC], animated: true)
        
    }


}

