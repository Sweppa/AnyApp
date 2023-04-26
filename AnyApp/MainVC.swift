//
//  MainVC.swift
//  AnyApp
//
//  Created by Yaroslav on 12.04.2023.
//

import UIKit

class MainVC: UIViewController {
    
    let logoImageView = UIImageView()
    let callToActionButton = AAButton(backgroundColor: .systemIndigo, title: "TableView")
    let callToActionButton2 = AAButton(backgroundColor: .systemMint, title: "NetMan")
    let callToActionButton3 = AAButton(backgroundColor: .systemCyan, title: "Map")
    let callToActionButton4 = AAButton(backgroundColor: .systemTeal, title: "CV")
    let callToActionButton5 = AAButton(backgroundColor: .systemPurple, title: "NetCall")
    let callToActionButton6 = AAButton(backgroundColor: .systemOrange, title: "Gallery")

    //bg
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "bg"))
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    //bg
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        title = "Main"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        //bg
        view.addSubview(imageView)
        imageView.frame = view.bounds
        createBlur()
        //bg
        
        configureLogoImageView()
        configureCallToAction()
        configureCallToAction2()
        configureCallToAction3()
        configureCallToAction4()
        configureCallToAction5()
        configureCallToAction6()
    }
    
    func createBlur() {
        let blurEffect = UIBlurEffect(style: .regular)
        let visualEffectView = UIVisualEffectView(effect: blurEffect)
        visualEffectView.frame = view.bounds
        visualEffectView.alpha = 0
        view.addSubview(visualEffectView)
        
        DispatchQueue.main.asyncAfter(deadline: .now()+2) {
            UIView.animate(withDuration: 3.5) {
                visualEffectView.alpha = 1
            }
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    
    func configureLogoImageView() {
        view.addSubview(logoImageView)
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.image = UIImage(named: "AppIcon")!
        
        NSLayoutConstraint.activate([
            logoImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            logoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoImageView.heightAnchor.constraint(equalToConstant: 150),
            logoImageView.widthAnchor.constraint(equalToConstant: 150)
        ])
    }

    
    func configureCallToAction() {
        view.addSubview(callToActionButton)
        
        NSLayoutConstraint.activate([
            callToActionButton.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 75),
            callToActionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            callToActionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -205),
            callToActionButton.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        callToActionButton.addTarget(self, action: #selector(goToTableView), for: .touchUpInside)
    }
    
    @objc func goToTableView() {
        let nextScreen = AATableView()
        nextScreen.title = "TableView"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
    func configureCallToAction2() {
        view.addSubview(callToActionButton2)
        
        NSLayoutConstraint.activate([
            callToActionButton2.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 75),
            callToActionButton2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 205),
            callToActionButton2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            callToActionButton2.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        callToActionButton2.addTarget(self, action: #selector(goToAANetworkManager), for: .touchUpInside)
    }
    
    @objc func goToAANetworkManager() {
        let nextScreen = AANetCall3()
        nextScreen.title = "NetCall 1th attempt"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
    func configureCallToAction3() {
        view.addSubview(callToActionButton3)
        
        NSLayoutConstraint.activate([
            callToActionButton3.topAnchor.constraint(equalTo: callToActionButton.bottomAnchor, constant: 15),
            callToActionButton3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            callToActionButton3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -205),
            callToActionButton3.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        callToActionButton3.addTarget(self, action: #selector(goToAAMap), for: .touchUpInside)
    }
    
    @objc func goToAAMap() {
        let nextScreen = AAMap()
        nextScreen.title = "Map"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
    func configureCallToAction4() {
        view.addSubview(callToActionButton4)
        
        NSLayoutConstraint.activate([
            callToActionButton4.topAnchor.constraint(equalTo: callToActionButton2.bottomAnchor, constant: 15),
            callToActionButton4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 205),
            callToActionButton4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            callToActionButton4.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        callToActionButton4.addTarget(self, action: #selector(goToAACV), for: .touchUpInside)
    }
    
    @objc func goToAACV() {
        let nextScreen = AACV()
        nextScreen.title = "CV"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
    func configureCallToAction5() {
        view.addSubview(callToActionButton5)
        
        NSLayoutConstraint.activate([
            callToActionButton5.topAnchor.constraint(equalTo: callToActionButton3.bottomAnchor, constant: 15),
            callToActionButton5.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25),
            callToActionButton5.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -205),
            callToActionButton5.heightAnchor.constraint(equalToConstant: 75)
        ])
        
        callToActionButton5.addTarget(self, action: #selector(goToAANetCall), for: .touchUpInside)
    }
    
    @objc func goToAANetCall() {
        let nextScreen = AANetCall2()
        nextScreen.title = "NetCall in console"
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
    func configureCallToAction6() {
        view.addSubview(callToActionButton6)
        callToActionButton6.addTarget(self, action: #selector(goToAAGallery), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            callToActionButton6.topAnchor.constraint(equalTo: callToActionButton4.bottomAnchor, constant: 15),
            callToActionButton6.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 205),
            callToActionButton6.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25),
            callToActionButton6.heightAnchor.constraint(equalToConstant: 75)
        ])
        
    }
    @objc func goToAAGallery() {
        let nextScreen = AAGallery()
        nextScreen.title = "Gallery"
        //view.backgroundColor = .systemOrange
        navigationController?.pushViewController(nextScreen, animated: true)
    }
    
    
}
