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
        return lb
    }()
    
    func setupOrderTitle() {
        orderTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.orderTitle.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            self.orderTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            
            
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
    }
    
    func registerView() {
        self.addSubview(orderTitle)
    }
    
}
