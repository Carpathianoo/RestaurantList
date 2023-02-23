//
//  ThirdPageController.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

enum Sections: Int {
    
    case header = 0
    case address = 1
    case time = 2
    case image = 3
    case orderTitle = 4
    case order = 5
    case aboutTitle = 6
    case about = 7
    
}



class ThirdPageController: UIViewController {

    @IBOutlet weak var labelContainer: UIView!
    
    @IBOutlet weak var labelDaerah: UILabel!
    
    @IBOutlet weak var labelTempat: UILabel!
    
    @IBOutlet weak var table3: UITableView!
    
    var arrayOrder = ["Ayam Goreng", "Nasi Bakar", "Ketoprak", "Gado-gado"]
    var arrayHarga = ["12", "22", "11", "32"]
    
    var detailData: RestaurantModel?
    var timeList: [Time] = []
    var orderList: [Order] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.largeTitleDisplayMode = .never
        self.view.backgroundColor = UIColor(named: "ThemeColor")

        setupTable()
    }
    func setupTable() {
        table3.register(TopCell.self, forCellReuseIdentifier: TopCell.identifier)
        table3.register(AddressCell.self, forCellReuseIdentifier: AddressCell.identifier)
        table3.register(TimeCell.self, forCellReuseIdentifier: TimeCell.identifier)
        table3.register(OrderCell.self, forCellReuseIdentifier: OrderCell.identifier)
        table3.register(OrderTitleCell.self, forCellReuseIdentifier: OrderTitleCell.identifier)
        table3.register(AboutTitleCell.self, forCellReuseIdentifier: AboutTitleCell.identifier)
        table3.register(AboutCell.self, forCellReuseIdentifier: AboutCell.identifier)
        table3.register(ImageCell.self, forCellReuseIdentifier: ImageCell.identifier)
        table3.delegate = self
        table3.dataSource = self
        
        table3.separatorStyle = .none
        table3.allowsSelection = false
        
        table3.backgroundColor = UIColor(named: "ThemeColor")

        
    }

}

extension ThirdPageController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 2 {
            return timeList.count
        } else if section == 5 {
            return orderList.count
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        let Section = Sections(rawValue: indexPath.section)
        print("index section: --------------- \(indexPath.section)")

        switch Section {
        case .header:
            guard let cell = table3.dequeueReusableCell(withIdentifier: TopCell.identifier, for: indexPath) as? TopCell else {
                return UITableViewCell()
            }
            
            cell.setupTopTableCell()
            cell.restaurantLabel.text = detailData?.title
            
            return cell
        case .address:
            guard let cell = table3.dequeueReusableCell(withIdentifier: AddressCell.identifier, for: indexPath) as? AddressCell else {
                return UITableViewCell()
            }
            
            cell.setupAddressTableCell()
            cell.addressLabel.text = detailData?.address
            
            return cell
            
        case .time:
            guard let cell = table3.dequeueReusableCell(withIdentifier: TimeCell.identifier, for: indexPath) as? TimeCell else {
                return UITableViewCell()
            }
            
            cell.setupTimeTableCell()
            cell.timeLabel.text = timeList[indexPath.row].available
            
            return cell
            
        case .image:
            guard let cell = table3.dequeueReusableCell(withIdentifier: ImageCell.identifier, for: indexPath) as? ImageCell else {
                return UITableViewCell()
            }
            
            cell.setupImageTableCell()
            cell.imageTempat.image = UIImage(named: detailData?.image ?? "Kebab")
            
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
            cell.orderLabel.text = orderList[indexPath.row].name
            cell.priceLabel.text = "$\(orderList[indexPath.row].price)"
            
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
            cell.aboutLabel.text = detailData?.about

            
            return cell
            
        case .none:
            return UITableViewCell()
        }
        
    }
    
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        return UITableView.automaticDimension
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        8
    }
    
}
