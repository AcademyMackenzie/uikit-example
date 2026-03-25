//
//  CounterView.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 20/03/26.
//

import UIKit

class CounterView: UIView {
    let counterLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = UIFont.systemFont(ofSize: 122.73, weight: .black, width: .compressed)
        label.textColor = .accent
        label.textAlignment = .center
        label.text = "0"
        return label
    }()
    
    let pointsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .labelSecondary
        label.textAlignment = .center
        label.text = "pontos"
        return label
    }()
    
    let minusButton: UIButton = {
        var button = UIButton()
        if #available(iOS 26, *) {
            button = UIButton(configuration: .prominentGlass())
        }
        else {
            button = UIButton(configuration: .bordered())
        }
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setImage(UIImage(systemName: "minus")?.withTintColor(.black, renderingMode: .alwaysOriginal), for: .normal)
        button.configuration?.background.backgroundColor = .white
        button.configuration?.buttonSize = .large
        return button
    }()
    
    let plusButton: UIButton = {
        var button = UIButton()
        if #available(iOS 26, *) {
            button = UIButton(configuration: .prominentGlass())
        }
        else {
            button = UIButton(configuration: .bordered())
        }
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setImage(UIImage(systemName: "plus")?.withTintColor(.white, renderingMode: .alwaysOriginal), for: .normal)
        button.configuration?.background.backgroundColor = .accent
        button.configuration?.buttonSize = .large
        return button
    }()
    
    public var counter: Int = 0 {
        didSet {
            counterLabel.text = counter.description
        }
    }
    
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
        
        // Add subchilds
        addSubview(counterLabel)
        addSubview(pointsLabel)
        addSubview(minusButton)
        addSubview(plusButton)
        
        // Create the constraints
        NSLayoutConstraint.activate([
            minusButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            minusButton.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            plusButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            plusButton.leadingAnchor.constraint(equalTo: minusButton.trailingAnchor, constant: 41),
            plusButton.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            pointsLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            pointsLabel.bottomAnchor.constraint(equalTo: plusButton.topAnchor, constant: -39),
            
            counterLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            counterLabel.topAnchor.constraint(equalTo: topAnchor),
            counterLabel.bottomAnchor.constraint(equalTo: pointsLabel.bottomAnchor, constant: -12)
        ])
    }
}

#Preview {
    let counterView = CounterView()
    return counterView
}
