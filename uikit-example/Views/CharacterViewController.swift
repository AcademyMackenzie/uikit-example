//
//  CharacterViewController.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 24/03/26.
//

import UIKit

class CharacterViewController: UIViewController {
    let characterView: CharacterView = {
        let view = CharacterView()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
    }
    
    private func setupController() {
        view.addSubview(characterView)
        
        NSLayoutConstraint.activate([
//            characterView.centerYAnchor.constraint(equalTo: view.centerXAnchor),
            characterView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            characterView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            characterView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
    }
}

#Preview {
    let characterVC = CharacterViewController()
    return characterVC.view
}
