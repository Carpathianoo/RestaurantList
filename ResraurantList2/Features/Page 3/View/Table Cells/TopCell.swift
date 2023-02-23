//
//  TopCellTableViewCell.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class TopCell: UITableViewCell {

    static let identifier = "TopCellid"
    
    var containerView: UIView = {
        let vw = UIView()
        vw.backgroundColor = .systemYellow
        vw.layer.cornerRadius = 6
        return vw
    }()
    
    var mapIcon: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(systemName: "location.circle.fill")
        img.tintColor = .black
        return img
    }()
    
    var locationLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "Rumah Saya"
        lbl.textColor = UIColor(named: "textColor")

        return lbl
    }()
    
    var restaurantLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "La Gringa"
        lbl.font = UIFont.systemFont(ofSize: 32, weight: .bold)
        return lbl
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupContainerView() {
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            containerView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            containerView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    func setupMapIcon() {
        mapIcon.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mapIcon.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            mapIcon.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 10),
            mapIcon.trailingAnchor.constraint(equalTo: locationLabel.leadingAnchor, constant: -8)
        ])
        
        
    }
    
    func setupLocationLabel() {
        locationLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            locationLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            locationLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -10)
        ])
    }
    
    func setupRestaurantLabel() {
        restaurantLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            restaurantLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 20),
            restaurantLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            restaurantLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15)
        ])
    }
    func setupTopTableCell() {
        registerView()
        
        setupContainerView()
        setupMapIcon()
        setupLocationLabel()
        setupRestaurantLabel()
        self.backgroundColor = UIColor(named: "ThemeColor")

    }
    
    func registerView() {
        self.addSubview(containerView)
        self.containerView.addSubview(locationLabel)
        self.containerView.addSubview(mapIcon)
        self.addSubview(restaurantLabel)
    }
    
}
