//
//  AAButton.swift
//  AnyApp
//
//  Created by Yaroslav on 12.04.2023.
//

import UIKit

class AAButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String) {
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
    private func configure () {
        layer.cornerRadius    = 15
        titleLabel?.textColor = .white
        titleLabel?.font      = UIFont.preferredFont(forTextStyle: .largeTitle)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
