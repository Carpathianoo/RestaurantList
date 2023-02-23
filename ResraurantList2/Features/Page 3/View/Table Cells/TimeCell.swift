//
//  TimeCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class TimeCell: UITableViewCell {

    static let identifier = "TimeCellId"

    var timeLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "12 Desember 3021"
        lbl.textColor = UIColor(named: "textColor")

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

    func setupTimeLabel() {
        timeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.timeLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 4),
            self.timeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            self.timeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4),
        ])
    }
    
    func setupTimeTableCell() {
        registerView()
        
        setupTimeLabel()
        self.backgroundColor = UIColor(named: "ThemeColor")

    }
    
    func registerView() {
        self.addSubview(timeLabel)
    }
    
}
