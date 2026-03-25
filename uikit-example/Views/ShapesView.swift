//
//  ShapesView.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 19/03/26.
//

import UIKit

class ShapesView: UIView {
    let squareStack: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        
        stack.axis = .vertical
        stack.spacing = 26.15
        return stack
    }()
    
    let squareOne: SquareView = {
        let square = SquareView()
        
        square.translatesAutoresizingMaskIntoConstraints = false
        return square
    }()
    
    let squareTwo: SquareView = {
        let square = SquareView()
        
        square.translatesAutoresizingMaskIntoConstraints = false
        return square
    }()
    
    let squareThree: SquareView = {
        let square = SquareView()
        
        square.translatesAutoresizingMaskIntoConstraints = false
        return square
    }()
    
    let circle: CircleView = {
        let circle = CircleView()
        
        circle.translatesAutoresizingMaskIntoConstraints = false
        return circle
    }()
    
    let capsule: CapsuleView = {
        let capsule = CapsuleView()
        
        capsule.translatesAutoresizingMaskIntoConstraints = false
        return capsule
    }()
    
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
        
        setCornerRadius(radius: 32)
        setBorder(color: .accent, lineWidth: 3)
        setDropShadow(color: .shadow, opacity: 1.0, radius: 4, offset: .init(width: 0, height: 4))
    }
    
    private func setupView() {
        // Setup the view
        backgroundColor = .white
        
        // Add subchilds
        addSubview(squareStack)
        addSubview(circle)
        addSubview(capsule)
        
        squareStack.addArrangedSubview(squareOne)
        squareStack.addArrangedSubview(squareTwo)
        squareStack.addArrangedSubview(squareThree)
        
        // Create the constraints
        NSLayoutConstraint.activate([
            squareStack.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            squareStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            squareStack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),

            circle.topAnchor.constraint(equalTo: topAnchor, constant: 30),
            circle.leadingAnchor.constraint(equalTo: squareStack.trailingAnchor, constant: 26.09),
            circle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -26.09),
            
            capsule.topAnchor.constraint(equalTo: circle.bottomAnchor, constant: 22.26),
            capsule.leadingAnchor.constraint(equalTo: squareStack.trailingAnchor, constant: 30),
            capsule.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            capsule.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30)
        ])
    }
}

#Preview {
    let shapesVC = ShapesViewController()
    return ShapesView()
}
