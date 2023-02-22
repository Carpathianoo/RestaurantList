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
//            imageTempat.leadingAnchor.constraint(equalTo: imageTempat.leadingAnchor, constant: 0),
//            imageTempat.trailingAnchor.constraint(equalTo: imageTempat.trailingAnchor, constant: -0),
            imageTempat.heightAnchor.constraint(equalToConstant: 274),
            imageTempat.widthAnchor.constraint(equalToConstant: 375)
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
