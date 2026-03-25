//
//  ShapesView.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 19/03/26.
//

import UIKit

class ShapesViewController: UIViewController {
    let shapesView: ShapesView = {
        let shapesView = ShapesView()
        
        shapesView.translatesAutoresizingMaskIntoConstraints = false
        return shapesView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
    }
    
    private func setupController() {
        // Setup the view
        view.backgroundColor = .background
        
        // Add subchilds
        view.addSubview(shapesView)
        
        // Create the constraints
        NSLayoutConstraint.activate([
            shapesView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            shapesView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        ])
    }
}

#Preview {
    let shapesVC = ShapesViewController()
    return shapesVC.view
}
