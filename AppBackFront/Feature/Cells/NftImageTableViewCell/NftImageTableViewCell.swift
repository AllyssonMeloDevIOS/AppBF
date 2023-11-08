//
//  NftImageTableViewCell.swift
//  AppBackFront
//
//  Created by admin on 08/11/23.
//

import UIKit
import AlamofireImage

class NftImageTableViewCell: UITableViewCell {

    static let identifier: String = String(describing: NftImageTableViewCell.self)
    
    lazy var screen: NftImageTableViewCellScreen = {
        let view = NftImageTableViewCellScreen()
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addViews()
        configConstraints()
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addViews() {
        contentView.addSubview(screen)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
        
    }
    
    public func setupCell(urlImage: String) {
        guard let url: URL = URL(string: urlImage) else { return }
        screen.NftImageView.af.setImage(withURL: url)
    }
}
