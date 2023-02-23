//
//  OrderTitleCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class OrderTitleCell: UITableViewCell {

    static let identifier = "OrderTitleCellId"

    var orderTitle: UILabel = {
        let lb = UILabel()
        lb.text = "Order"
        lb.textColor = .systemBlue
        lb.font = UIFont.systemFont(ofSize: 18)
        return lb
    }()
    
    func setupOrderTitle() {
        orderTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.orderTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            self.orderTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            self.orderTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
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

    func setupOrderTitleTableCell() {
        registerView()
        setupOrderTitle()
        self.backgroundColor = UIColor(named: "ThemeColor")

    }
    
    func registerView() {
        self.addSubview(orderTitle)
    }
    
}
