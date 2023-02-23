//
//  ImageCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class ImageCell: UITableViewCell {

    static let identifier = "ImageCellId"

    var imageTempat: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Kebab")
        img.contentMode = .scaleAspectFill
        img.backgroundColor = UIColor(named: "ThemeColor")
        return img
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setupImageTempat() {
        imageTempat.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageTempat.topAnchor.constraint(equalTo: self.topAnchor),
            imageTempat.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            imageTempat.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageTempat.leadingAnchor.constraint(equalTo: backgroundView?.leadingAnchor ?? self.leadingAnchor),
            imageTempat.trailingAnchor.constraint(equalTo: backgroundView?.trailingAnchor ?? self.trailingAnchor),
            imageTempat.heightAnchor.constraint(equalToConstant: 274),
        ])
    }
    
    func setupImageTableCell() {
        registerView()
        
        setupImageTempat()
    }
    
    func registerView() {
        self.addSubview(imageTempat)
    }
    
}
