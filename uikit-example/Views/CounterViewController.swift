//
//  CounterViewController.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 20/03/26.
//

import UIKit

class CounterViewController: UIViewController {
    let counterView: CounterView = {
        let view = CounterView()
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupController()
    }
    
    private func increment() {
        counterView.counter += 1
    }
    
    private func decrement() {
        counterView.counter -= 1
    }
    
    private func setupController() {
        // Setup the view
        let incrementAction = UIAction { _ in
            self.increment()
        }
        counterView.plusButton.addAction(incrementAction, for: .touchUpInside)
        
        let decrementAction = UIAction { _ in
            self.decrement()
        }
        counterView.minusButton.addAction(decrementAction, for: .touchUpInside)
        
        // Add subchilds
        view.addSubview(counterView)
        
        // Create the constraints
        NSLayoutConstraint.activate([
            counterView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            counterView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
//            counterView.topAnchor.constraint(equalTo: view.topAnchor, constant: 290),
//            counterView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 100.5),
//            counterView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -240),
//            counterView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -100.5),
        ])
    }
}

#Preview {
    let counterVC = CounterViewController()
    return counterVC.view
}
