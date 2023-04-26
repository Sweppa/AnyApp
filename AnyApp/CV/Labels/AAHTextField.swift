//
//  hTextField.swift
//  AnyApp
//
//  Created by Yaroslav on 18.04.2023.
//

import UIKit

class AAHTextField: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(textAlignment: NSTextAlignment, fontSize: CGFloat, text: String) {
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight:  .bold)
        self.text = text
        configure()
    }
    
    
    private func configure() {
        textColor = .label
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.9
        lineBreakMode = .byWordWrapping
//        font = UIFont.preferredFont(forTextStyle: .body)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
