//
//  CharacterView.swift
//  ViewcodeAtividade
//
//  Created by Diego Saragoza Da Silva on 24/03/26.
//

import UIKit

class CharacterView: UIView {
    let characterImage: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.image = UIImage(named: "mordekaiser")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    
    let characterName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.font = UIFont.systemFont(ofSize: 32, weight: .semibold, width: .expanded)
        label.textColor = .text
        label.textAlignment = .center
        label.text = "MORDEKAISER"
        return label
    }()
    
    let descriptionTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false

        label.font = UIFont.systemFont(ofSize: 25, weight: .bold, width: .condensed)
        label.textColor = .text
        label.textAlignment = .center
        label.text = "Descrição"
        return label
    }()
    
    let characterDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.textColor = .text
        label.textAlignment = .justified
        label.numberOfLines = 0
        label.text = """
        Morto e renascido duas vezes, Mordekaiser é um cruel comandante de uma época perdida. Ele usa a arte da necromancia para aprisionar almas e torná-las submissas pela eternidade. Hoje em dia, poucos se lembram das primeiras conquistas ou conhecem a real dimensão do poder de Mordekaiser. Porém, algumas almas ancestrais ainda se lembram, e temem que um dia ele volte para reivindicar seu domínio... tanto sobre os mortos quanto sobre os vivos.
        """
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        characterImage.setCornerRadius()
        characterImage.setBorder(color: .accent, lineWidth: 6)
    }
    
    private func setupView() {
        // Setup the view
        
        // Add subchilds
        addSubview(characterImage)
        addSubview(characterName)
        addSubview(descriptionTitle)
        addSubview(characterDescription)
        
        // Create the constraints
        NSLayoutConstraint.activate([
            characterImage.widthAnchor.constraint(equalToConstant: 150),
            characterImage.heightAnchor.constraint(equalToConstant: 150),
            characterImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            characterImage.topAnchor.constraint(equalTo: topAnchor),
            
            characterName.centerXAnchor.constraint(equalTo: centerXAnchor),
            characterName.topAnchor.constraint(equalTo: characterImage.bottomAnchor, constant: 22),
            
            descriptionTitle.topAnchor.constraint(equalTo: characterName.bottomAnchor, constant: 55),
            descriptionTitle.leadingAnchor.constraint(equalTo: leadingAnchor),
            
            characterDescription.topAnchor.constraint(equalTo: descriptionTitle.bottomAnchor, constant: 10),
            characterDescription.leadingAnchor.constraint(equalTo: leadingAnchor),
            characterDescription.bottomAnchor.constraint(equalTo: bottomAnchor),
            characterDescription.trailingAnchor.constraint(equalTo: trailingAnchor),
        ])
    }
}

#Preview {
    let characterView = CharacterView()
    characterView
}
