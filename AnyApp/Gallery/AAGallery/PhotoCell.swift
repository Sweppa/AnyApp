//
//  PhotoCell.swift
//  AnyApp
//
//  Created by Yaroslav on 12.04.2023.
//

import UIKit

class PhotoCell: UITableViewCell {
    
    var photoImageView = UIImageView()
    var photoTitleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(photoImageView)
        addSubview(photoTitleLabel)
        
        configureImageView()
        configureTitleLabel()
        setImageConstraints()
        setTitleLabelConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // Photos comes with image and title so we attaching them to TableView image and title
    func set(photo: Photo) {
        photoImageView.image = photo.image
        photoTitleLabel.text = photo.title
    }
    // Photos comes with image and title so we attaching them to TableView image and title
    
    func configureImageView() {
        photoImageView.layer.cornerRadius = 10
        photoImageView.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        photoTitleLabel.numberOfLines = 0
        photoTitleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func setImageConstraints() {
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12).isActive = true
        photoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        photoImageView.widthAnchor.constraint(equalTo: photoImageView.heightAnchor, multiplier: 16/9).isActive = true
    }
    
    func setTitleLabelConstraints() {
        photoTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        photoTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoTitleLabel.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant:  20).isActive = true
        photoTitleLabel.heightAnchor.constraint(equalToConstant: 80).isActive = true
        photoTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant:  -12).isActive = true
    }
    
}
