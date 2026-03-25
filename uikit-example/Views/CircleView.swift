//
//  CircleView.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 19/03/26.
//

import UIKit

class CircleView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setCornerRadius()
    }
    
    private func setupView() {
        // Setup the view
        backgroundColor = .accent
        
        // Add subchilds
        
        // Create the constraints
        NSLayoutConstraint.activate([
            widthAnchor.constraint(equalToConstant: 109.51),
            heightAnchor.constraint(equalToConstant: 109.51),
        ])
    }
}

#Preview {
    let circleView = CircleView()    
    return circleView
}
