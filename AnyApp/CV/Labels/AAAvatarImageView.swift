//
//  AAAvatarImageView.swift
//  AnyApp
//
//  Created by Yaroslav on 16.04.2023.
//

import UIKit

class AAAvatarImageView: UIImageView {
    
    let placeholderImage = UIImage(named: AACLabel.AAPhoto)

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
        

}
