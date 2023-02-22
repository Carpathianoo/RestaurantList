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
        return lb
    }()
    
    var priceLabel: UILabel = {
        let lb = UILabel()
        lb.text = "$12"
        return lb
    }()
    
    func setupOrderLabel() {
        orderLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.orderLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            self.orderLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4)
        ])
    }
    
    func setupPriceLabel() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.priceLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            self.priceLabel.leadingAnchor.constraint(equalTo: orderLabel.trailingAnchor, constant: 10)
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
    }
    
    func registerView() {
        self.addSubview(orderLabel)
        self.addSubview(priceLabel)
    }
    
}
