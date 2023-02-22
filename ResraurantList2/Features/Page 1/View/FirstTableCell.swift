//
//  FirstTableCell.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import Foundation
import UIKit

protocol FirstTableCellProtocol {
    
    func setupTableCell()
    func registerComponent()
    
}

class FirstTableCell: UITableViewCell {

    static let identifier = "firstCellId"
    
    var containerView: UIView = {
        let vw = UIView()
        vw.backgroundColor = .systemOrange
        return vw
    }()
    
    var styleLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Test"
        return lbl
    }()
    
    var restaurantIcon: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "RestaurantIcon")
        return img
    }()
    
    var restaurantCountLabel: UILabel = {
        let lbl = UILabel()
        return lbl
    }()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupTableCell()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

//    func setupContainerView() {
//
//        containerView.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            containerView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
//            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 0)
//        ])
//
//    }
    
    func setupRestaurantIconImage() {
        
        restaurantIcon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            restaurantIcon.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            restaurantIcon.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            restaurantIcon.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            restaurantIcon.heightAnchor.constraint(equalToConstant: 15),
            restaurantIcon.widthAnchor.constraint(equalToConstant: 15)
        ])
        
    }
    
    func setupStyleLabel() {
        
        styleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            styleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            styleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            styleLabel.leadingAnchor.constraint(equalTo: restaurantIcon.trailingAnchor, constant: 10),
        ])
        
    }
    
    func setupContainerView() {
        
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            containerView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            containerView.heightAnchor.constraint(equalToConstant: 100),
            containerView.widthAnchor.constraint(equalToConstant: 100)
        ])
        
    }
    
    
    func setupRestaurantCountLabel() {
        
        restaurantCountLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            restaurantCountLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 5),
            restaurantCountLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -5),
            restaurantCountLabel.centerXAnchor.constraint(equalTo: containerView.centerXAnchor)
        ])
        
    }
    
    
    
}

extension FirstTableCell: FirstTableCellProtocol {
    
    
    func setupTableCell() {
        registerComponent()
        self.backgroundColor = UIColor(named: "ThemeColor")
        
        setupStyleLabel()
        setupRestaurantIconImage()
        setupRestaurantCountLabel()
        setupContainerView()
    }
    
    func registerComponent() {
        self.addSubview(styleLabel)
        self.addSubview(restaurantIcon)
        self.addSubview(containerView)
        self.containerView.addSubview(restaurantCountLabel)
        
    }
    
    
    
    
}

