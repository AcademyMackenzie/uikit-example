//
//  SquareView.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 19/03/26.
//

import UIKit

class SquareView: UIView {
//    let square: UIView = {
//        let square = UIView()
//        square.translatesAutoresizingMaskIntoConstraints = false
//        
//        square.backgroundColor = .darkGreen
//        return square
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        // Setup the view
        backgroundColor = .darkGreen
        
        // Add subchilds
        
        // Create the constraints
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 80.56),
            heightAnchor.constraint(equalToConstant: 80.56),
        ])
    }
}

#Preview {
    let squareView = SquareView()
    return squareView
}
