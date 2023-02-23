//
//  ThirdTableCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class AddressCell: UITableViewCell {
    static let identifier = "AddressCellId"
    
    var addressLabel: UILabel = {
        let lb = UILabel()
        lb.text = "This is the address"
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
    
    func setupAddressLabel() {
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.addressLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.addressLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            self.addressLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            
        ])
    }

    func setupAddressTableCell() {
        registerView()
        
        setupAddressLabel()
        self.backgroundColor = UIColor(named: "ThemeColor")

    }
    
    func registerView() {
        self.addSubview(addressLabel)
//        self.container.addSubview(addressLabel)
    }
    
    
    
}
