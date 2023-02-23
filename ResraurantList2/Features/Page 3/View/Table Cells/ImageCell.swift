//
//  ImageCell.swift
//  RestaurantList
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class ImageCell: UITableViewCell {

    static let identifier = "ImageCellId"

    var placeholderView: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor(named: "ThemeColor")
        return vw
    }()
    
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

    func setupPlaceholderView() {
        placeholderView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            placeholderView.topAnchor.constraint(equalTo: self.topAnchor),
            placeholderView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 20),
            placeholderView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            placeholderView.heightAnchor.constraint(equalToConstant: 400)
        ])
    }
    
    func setupImageTempat() {
        imageTempat.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            imageTempat.topAnchor.constraint(equalTo: placeholderView.topAnchor, constant: 20),
            imageTempat.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            imageTempat.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            imageTempat.leadingAnchor.constraint(equalTo: backgroundView?.leadingAnchor ?? self.leadingAnchor),
            imageTempat.centerYAnchor.constraint(equalTo: placeholderView.centerYAnchor),
            imageTempat.trailingAnchor.constraint(equalTo: placeholderView.trailingAnchor, constant: -10),
            imageTempat.heightAnchor.constraint(equalToConstant: 274),
        ])
    }
    
    func setupImageTableCell() {
        registerView()
        
        setupImageTempat()
        setupPlaceholderView()
    }
    
    func registerView() {
        self.addSubview(placeholderView)
        self.placeholderView.addSubview(imageTempat)
    }
    
}
