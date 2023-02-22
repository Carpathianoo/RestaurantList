//
//  AboutTitleCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class AboutTitleCell: UITableViewCell {

    static let identifier = "AboutTitleCellId"
    
    var aboutTitle: UILabel = {
        let lb = UILabel()
        return lb
    }()
    
    func setupAboutTitle() {
        aboutTitle.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.aboutTitle.topAnchor.constraint(equalTo: self.topAnchor ),
            self.aboutTitle.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 4),
            self.aboutTitle.bottomAnchor.constraint(equalTo: self.bottomAnchor)
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

    func setupAboutTitleTableCell() {
        registerView()
        setupAboutTitle()
        
    }
    
    func registerView() {
        self.addSubview(aboutTitle)
    }
    
}
