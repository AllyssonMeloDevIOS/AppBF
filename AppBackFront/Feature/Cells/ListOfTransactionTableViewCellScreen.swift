//
//  ListOfTransactionTableViewCellScreen.swift
//  AppBackFront
//
//  Created by admin on 08/12/23.
//

import UIKit

class ListOfTransactionTableViewCellScreen: UIView {
    
    lazy var idTransactionlabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.backgroundColor = UIColor(red: 52/255, green: 52/255, blue: 52/255, alpha: 1)
        
        return label
    }()
    
    lazy var transactionImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        
        return imageView
    }()
    
    lazy var priceEthLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 14)
        
        return label
    }()
    
    lazy var valueInDollarLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        
        return label
    }()
    
    lazy var dateEndHourLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 12)
        
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        addviews()
        configConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addviews() {
     addSubview(idTransactionlabel)
     addSubview(transactionImageView)
     addSubview(priceEthLabel)
     addSubview(valueInDollarLabel)
     addSubview(dateEndHourLabel)
    }
    
    private func configConstraints() {
        NSLayoutConstraint.activate([
            transactionImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            transactionImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            transactionImageView.heightAnchor.constraint(equalToConstant: 20),
            transactionImageView.widthAnchor.constraint(equalToConstant: 20),
            
            idTransactionlabel.topAnchor.constraint(equalTo: topAnchor,constant: 15),
            idTransactionlabel.leadingAnchor.constraint(equalTo: transactionImageView.trailingAnchor,constant: 10),
            
            dateEndHourLabel.topAnchor.constraint(equalTo: idTransactionlabel.bottomAnchor, constant: 5),
            dateEndHourLabel.leadingAnchor.constraint(equalTo: idTransactionlabel.leadingAnchor),
            
            priceEthLabel.topAnchor.constraint(equalTo: topAnchor, constant: 15),
            priceEthLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            
            valueInDollarLabel.topAnchor.constraint(equalTo: priceEthLabel.bottomAnchor, constant: 5),
            valueInDollarLabel.trailingAnchor.constraint(equalTo: priceEthLabel.trailingAnchor)
        ])
    }
    
}
