//
//  OrderCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class OrderCell: UITableViewCell {

    static let identifier = "OrderCellId"

    var orderLabel: UILabel = {
        let lb = UILabel()
        lb.text = "The Fried Chicken Bun"
        lb.textColor = UIColor(named: "textColor")

        return lb
    }()
    
    var priceLabel: UILabel = {
        let lb = UILabel()
        lb.text = "$12"
        lb.textColor = UIColor(named: "textColor")

        return lb
    }()
    
    func setupOrderLabel() {
        orderLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.orderLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            self.orderLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4),
            self.orderLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15)
        ])
    }
    
    func setupPriceLabel() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.priceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            self.priceLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4),
            self.priceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -60)
        ])
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupOrderTableCell() {
        registerView()
        setupOrderLabel()
        setupPriceLabel()
        self.backgroundColor = UIColor(named: "ThemeColor")

    }
    
    func registerView() {
        self.addSubview(orderLabel)
        self.addSubview(priceLabel)
    }
    
}
