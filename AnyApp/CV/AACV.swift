//
//  AACV.swift
//  AnyApp
//
//  Created by Yaroslav on 12.04.2023.
//

import UIKit

class AACV: UIViewController {
        
    //  let logoImageView = UIImageView()
    let logoImageView = AAAvatarImageView(frame: .zero)
    let bioTextField = AABioLabel(textAlignment: .left, fontSize: 34, text: AACLabel.AABio)
    let positionTextField = AAPTextField(textAlignment: .left, fontSize: 16, text: AACLabel.AAPosition)
    let hTextField = AAHTextField(textAlignment: .left, fontSize: 28, text: AACLabel.AAHText)
    let listTextField = AALTextField(textAlignment: .left, fontSize: 18,  text: AACLabel.AAList)
    let list2TextField = AALTextField(textAlignment: .center, fontSize: 18, text: AACLabel.AAL2ist)
    let h2TextField = AAHTextField(textAlignment: .center, fontSize: 28, text: AACLabel.AAH2Text)
    
    let AAmail: UIImageView = {
        let AAmail = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        AAmail.contentMode = .scaleAspectFit
        
        return AAmail
    }()
    
    func AAmailConfig() {
//        AAmail.center = view.center
        AAmail.tintColor = .secondaryLabel
        AAmail.image = UIImage(systemName: SFSymbols.mail)
    }
    
    //bg
    let AACVBg: UIImageView = {
        let AACVBg = UIImageView(image: UIImage(named: "bg_2"))
        AACVBg.contentMode = .scaleAspectFill
        AACVBg.clipsToBounds = true
        return AACVBg
    }()
    //bg
    
    //    private let bioTextField: UILabel = {
    //        let label = UILabel()
    //        label.text = "Yaroslav\nHoncharenko"
    //        label.font = UIFont.systemFont(ofSize: 34)
    //        label.isUserInteractionEnabled = false
    //        label.numberOfLines = 2
    //        label.lineBreakMode = .byTruncatingTail
    //        label.sizeToFit()
    //        return label
    //    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(AACVBg)
        AACVBg.frame = view.bounds
        createBlur2()

        AAmailConfig()
        addSubviews()
        layOutUI()
    }
    
    
    func createBlur2() {
        let blurEffect = UIBlurEffect(style: .regular)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = view.bounds
        visualEffectView.alpha = 1
        view.addSubview(visualEffectView)
    }
    
    
    func addSubviews() {
        view.addSubview(logoImageView)
        view.addSubview(bioTextField)
        view.addSubview(positionTextField)
        view.addSubview(hTextField)
        view.addSubview(listTextField)
        view.addSubview(h2TextField)
        view.addSubview(list2TextField)
        view.addSubview(AAmail)
    }

    
    func layOutUI() {
        let paddind20: CGFloat = 20
        let paddind10: CGFloat = 10
        AAmail.translatesAutoresizingMaskIntoConstraints = false
        //        logoImageView.image = UIImage(named: AACLabel.AAPhoto)!
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: paddind20),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddind20),
            logoImageView.heightAnchor.constraint(equalToConstant: 150),
            logoImageView.widthAnchor.constraint(equalToConstant: 150)
        ])
        
        
        //        bioTextField.text = AACLabel.AABio
        NSLayoutConstraint.activate([
            bioTextField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: paddind20),
            bioTextField.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: paddind10),
            bioTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddind10)
        ])
        
        
        NSLayoutConstraint.activate([
            positionTextField.topAnchor.constraint(equalTo: bioTextField.bottomAnchor, constant: 0),
            positionTextField.leadingAnchor.constraint(equalTo: logoImageView.trailingAnchor, constant: paddind10),
            positionTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddind10)
        ])
        
        
        NSLayoutConstraint.activate([
            hTextField.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 40),
            hTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddind20),
            hTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddind10)
        ])
        
        
        NSLayoutConstraint.activate([
            listTextField.topAnchor.constraint(equalTo: hTextField.bottomAnchor, constant: paddind10),
            listTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddind20),
            listTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddind10)
        ])
        
        
        NSLayoutConstraint.activate([
            h2TextField.bottomAnchor.constraint(equalTo: list2TextField.topAnchor, constant: -paddind10),
            h2TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddind20),
            h2TextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddind20)
        ])
        
        
        NSLayoutConstraint.activate([
            list2TextField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            list2TextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: paddind20),
            list2TextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -paddind20)
        ])
        
        
        NSLayoutConstraint.activate([
            AAmail.topAnchor.constraint(equalTo: h2TextField.topAnchor),
            AAmail.trailingAnchor.constraint(equalTo: h2TextField.leadingAnchor, constant: 105)
        ])
    }
}
