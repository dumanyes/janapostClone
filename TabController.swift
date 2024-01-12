//
//  TabController.swift
//  JanaPostClone
//
//  Created by Duman Yessenbay on 16.12.2023.
//

import UIKit

class TabController: UITabBarController {
    
    let topLineHeight: CGFloat = 2
    let topLine = UIView()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTabs()
        
        self.tabBar.backgroundColor = .white
        
        self.tabBar.barTintColor = UIColor.white
        self.tabBar.tintColor = .jp
        self.tabBar.unselectedItemTintColor = .gray
        self.tabBar.layer.borderWidth = 1.0
        self.tabBar.layer.borderColor = UIColor.lightGray.cgColor
        topLine.backgroundColor = .jp
        tabBar.addSubview(topLine)
        
    }
    
    override func viewWillLayoutSubviews() {
            super.viewWillLayoutSubviews()
            updateTopLinePosition()
        }
    
    
    private func setupTabs() {
        let home = self.createNav(with: "Басты бет", and: UIImage(named: "home"), vc: ViewController())
        let orders = self.createNav(with: "Тапсырыс", and: UIImage(named: "orders"), vc: OrdersController())
        let notif = self.createNav(with: "Хабарлама", and: UIImage(named: "bell"), vc: NotifController())
        let profile = self.createNav(with: "Профиль", and: UIImage(named: "profile"), vc: ProfileController())

        self.setViewControllers([home, orders, notif, profile], animated: true)
    }

    
    private func createNav(with title: String, and image: UIImage?, vc: UIViewController) ->UINavigationController {
        let nav = UINavigationController(rootViewController: vc)
        nav.tabBarItem.title = title
        nav.tabBarItem.image = image
        return nav
    }
    
    private func updateTopLinePosition() {
        guard let selectedTab = tabBar.selectedItem else { return }
        if let index = tabBar.items?.firstIndex(of: selectedTab) {
            let itemWidth = tabBar.frame.width / CGFloat(tabBar.items?.count ?? 1)
            let lineX = CGFloat(index) * itemWidth
            topLine.frame = CGRect(x: lineX, y: 0, width: itemWidth, height: topLineHeight)
        }
    }
}
