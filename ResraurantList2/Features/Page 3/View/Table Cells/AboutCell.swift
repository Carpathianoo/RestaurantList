//
//  AboutCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class AboutCell: UITableViewCell {

    static let identifier = "AboutCellId"

    var aboutLabel: UILabel = {
        let lbl = UILabel()
        lbl.numberOfLines = 0
        lbl.text = "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender."
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

    func setupAboutLabel() {
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            aboutLabel.topAnchor.constraint(equalTo: self.topAnchor),
            aboutLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            aboutLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            aboutLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15)
        ])
    }
    
    
    func setupAboutTableCell() {
        registerView()
        setupAboutLabel()
    }
    
    func registerView() {
        self.addSubview(aboutLabel)
    }
    
}
