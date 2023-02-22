//
//  ThirdPageController.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

enum Sections: Int {
    
    case address = 0
    case time = 1
    case image = 2
    case orderTitle = 3
    case order = 4
    case aboutTitle = 5
    case about = 6
    
}



class ThirdPageController: UIViewController {

    @IBOutlet weak var labelContainer: UIView!
    
    @IBOutlet weak var labelDaerah: UILabel!
    
    @IBOutlet weak var labelTempat: UILabel!
    
    @IBOutlet weak var table3: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.navigationBar.prefersLargeTitles = false
        setupTable()
    }
    func setupTable() {
        table3.register(AddressCell.self, forCellReuseIdentifier: AddressCell.identifier)
        table3.register(TimeCell.self, forCellReuseIdentifier: TimeCell.identifier)
        table3.register(OrderCell.self, forCellReuseIdentifier: OrderCell.identifier)
        table3.register(OrderTitleCell.self, forCellReuseIdentifier: OrderTitleCell.identifier)
        table3.register(AboutTitleCell.self, forCellReuseIdentifier: AboutTitleCell.identifier)
        table3.register(AboutCell.self, forCellReuseIdentifier: AboutCell.identifier)
        table3.register(ImageCell.self, forCellReuseIdentifier: ImageCell.identifier)
        table3.delegate = self
        table3.dataSource = self
        
    }

}

extension ThirdPageController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let Section = Sections(rawValue: indexPath.section)
        print("index section: --------------- \(indexPath.section)")

        switch Section {
        case .address:
            guard let cell = table3.dequeueReusableCell(withIdentifier: AddressCell.identifier, for: indexPath) as? AddressCell else {
                return UITableViewCell()
            }
            
            cell.setupAddressTableCell()
            
            return cell
            
        case .time:
            guard let cell = table3.dequeueReusableCell(withIdentifier: TimeCell.identifier, for: indexPath) as? TimeCell else {
                return UITableViewCell()
            }
            
            cell.setupTimeTableCell()
            
            return cell
            
        case .image:
            guard let cell = table3.dequeueReusableCell(withIdentifier: ImageCell.identifier, for: indexPath) as? ImageCell else {
                return UITableViewCell()
            }
            
            cell.setupImageTableCell()
            
            return cell
            
        case .orderTitle:
            guard let cell = table3.dequeueReusableCell(withIdentifier: OrderTitleCell.identifier, for: indexPath) as? OrderTitleCell else {
                return UITableViewCell()
            }
            
            cell.setupOrderTitleTableCell()
            
            return cell

        case .order:
            guard let cell = table3.dequeueReusableCell(withIdentifier: OrderCell.identifier, for: indexPath) as? OrderCell else {
                return UITableViewCell()
            }
            
            cell.setupOrderTableCell()
            
            return cell

        case .aboutTitle:
            guard let cell = table3.dequeueReusableCell(withIdentifier: AboutTitleCell.identifier, for: indexPath) as? AboutTitleCell else {
                return UITableViewCell()
            }
            
            cell.setupAboutTitleTableCell()
            
            return cell

            
        case .about:
            guard let cell = table3.dequeueReusableCell(withIdentifier: AboutCell.identifier, for: indexPath) as? AboutCell else {
                return UITableViewCell()
            }
            
            cell.setupAboutTableCell()
            
            return cell
            
        case .none:
            return UITableViewCell()
        }
        
    }
    
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        7
    }
    
}
