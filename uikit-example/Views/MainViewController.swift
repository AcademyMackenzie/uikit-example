//
//  MainViewController.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 19/03/26.
//

import UIKit

class MainViewController: UITabBarController {
    let shapesVC: ShapesViewController = {
        let shapesVC = ShapesViewController()
        
        return shapesVC
    }()
    
    let counterVC: CounterViewController = {
        let counterVC = CounterViewController()
        
        return counterVC
    }()
    
    let characterVC: CharacterViewController = {
        let characterVC = CharacterViewController()
        
        return characterVC
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
        setupController()
    }
    
    private func setupTabBar() {
        shapesVC.tabBarItem = UITabBarItem(
            title: "Cartão",
            image: UIImage(systemName: "square.text.square"),
            tag: 0
        )
        let shapesNC = UINavigationController(rootViewController: shapesVC)
        
        counterVC.tabBarItem = UITabBarItem(
            title: "Contador",
            image: UIImage(systemName: "numbers"),
            tag: 1
        )
        let counterNC = UINavigationController(rootViewController: counterVC)
        
        characterVC.tabBarItem = UITabBarItem(
            title: "Perfil",
            image: UIImage(systemName: "person"),
            tag: 2
        )
        let characterNC = UINavigationController(rootViewController: characterVC)
        
        viewControllers = [shapesNC, counterNC, characterNC]
        view.backgroundColor = .background
    }
    
    private func setupController() {
        // Setup the view
        
        // Add subchilds
        
        // Create the constraints
    }
}

#Preview {
    let mainVC = MainViewController()
    return mainVC.view
}
