//
//  ThirdTableCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class AddressCell: UITableViewCell {
    static let identifier = "AddressCellId"
    
    var container: UIView = {
        let vw = UIView()
        vw.backgroundColor = .yellow
        return vw
    }()
    
    var addressLabel: UILabel = {
        let lb = UILabel()
        lb.text = "This is the address"
        lb.backgroundColor = .yellow
        return lb
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
//    func setupContainer() {
//        container.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            self.container.topAnchor.constraint(equalTo: self.superview?.topAnchor ?? self.centerYAnchor, constant: 40),
//            self.container.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
//            self.container.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
//            self.container.bottomAnchor.constraint(equalTo: self.superview?.bottomAnchor ?? self.centerYAnchor, constant: 50),
//            self.container.heightAnchor.constraint(equalToConstant: 100)
//
//        ])
//    }
    
    func setupAddressLabel() {
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.addressLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.addressLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.addressLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            self.addressLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
        ])
    }

    func setupAddressTableCell() {
        registerView()
        
        setupAddressLabel()
//        setupContainer()
    }
    
    func registerView() {
        self.addSubview(addressLabel)
//        self.container.addSubview(addressLabel)
    }
    
    
    
}
