//
//  SecondTableCell.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

protocol SecondTableCellProtocol {
    
    func setupTableCell()
    func registerComponent()
    
}

class SecondTableCell: UITableViewCell {

    static let identifier = "secondTableCellId"
    
    var placeImage: UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "Kebab")
        return img
    }()
    
    var namaRestoranLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "nama restoran"
        lbl.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        lbl.textColor = UIColor(named: "textColor")

        return lbl
    }()
    
    var descriptionLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "lorem ipsum dolor sit amet"
        lbl.textColor = UIColor(named: "textColor")

        return lbl
    }()
    
    var hargaLabel: UILabel = {
        let lbl = UILabel()
        lbl.text = "€15/person"
        lbl.textColor = .systemBlue
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
    
    func setupPlaceImg() {
        placeImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.placeImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.placeImage.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.placeImage.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.placeImage.heightAnchor.constraint(equalToConstant: 143)
        ])
    }
    
    func setupNamaRestoranLabel() {
        namaRestoranLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.namaRestoranLabel.topAnchor.constraint(equalTo: placeImage.bottomAnchor, constant: 20),
            self.namaRestoranLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
        ])
    }
    
    func setupDescRestoranLabel() {
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.descriptionLabel.topAnchor.constraint(equalTo: namaRestoranLabel.bottomAnchor, constant: 5),
            self.descriptionLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            
        ])
    }
    
    func setupHargaLabel() {
        hargaLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            self.hargaLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 10),
            self.hargaLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            self.hargaLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    
    
    

}

extension SecondTableCell: SecondTableCellProtocol {
    
    func setupTableCell() {
        registerComponent()
        setupPlaceImg()
        setupNamaRestoranLabel()
        setupDescRestoranLabel()
        setupHargaLabel()
        
        
        
    }
    
    func registerComponent() {
        self.addSubview(placeImage)
        self.addSubview(namaRestoranLabel)
        self.addSubview(descriptionLabel)
        self.addSubview(hargaLabel)
    }
    
    
    
    
    
}
