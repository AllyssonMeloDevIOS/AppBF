//
//  NftImageTableViewCellScreen.swift
//  AppBackFront
//
//  Created by admin on 08/11/23.
//

import UIKit

class NftImageTableViewCellScreen: UIView {

    lazy var NftImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleToFill
        imageView.tintColor = .white
        
        return imageView
    }()
    
    lazy var closedButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setImage(UIImage(systemName: "xmark"), for: .normal)
        button.addTarget(self, action: #selector(tappedCloseButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc func tappedCloseButton() {
        print(#function)
        
    }
    
    lazy var maginfyingGlassButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = UIColor(red: 187/255, green: 187/255, blue: 187/255, alpha: 1)
        button.clipsToBounds = true
        button.layer.cornerRadius = 8
        button.tintColor = .white
        button.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        button.addTarget(self, action: #selector(tappedMaginfyingGlassButton), for: .touchUpInside)
        
        return button
    }()
    
    @objc func tappedMaginfyingGlassButton() {
        print(#function)
        
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addViews()
        configConstraints()
    }
    
    private func addViews() {
        addSubview(NftImageView)
        addSubview(closedButton)
        addSubview(maginfyingGlassButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            NftImageView.topAnchor.constraint(equalTo: topAnchor),
            NftImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            NftImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            NftImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            closedButton.topAnchor.constraint(equalTo: NftImageView.topAnchor, constant: 30),
            closedButton.trailingAnchor.constraint(equalTo: NftImageView.trailingAnchor, constant: -20),
            closedButton.heightAnchor.constraint(equalToConstant: 35),
            closedButton.widthAnchor.constraint(equalToConstant: 35),
            
            maginfyingGlassButton.bottomAnchor.constraint(equalTo: NftImageView.bottomAnchor, constant: -30),
            maginfyingGlassButton.trailingAnchor.constraint(equalTo: NftImageView.trailingAnchor, constant: -20),
            maginfyingGlassButton.heightAnchor.constraint(equalToConstant: 35),
            maginfyingGlassButton.widthAnchor.constraint(equalToConstant: 35),
            
            
        ])
        
    }
    
}
