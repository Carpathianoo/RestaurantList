//
//  SecondPageController.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class SecondPageController: UIViewController {

    var restaurantList: [RestaurantModel] = []
    var pageTitle: String = ""
    
    @IBOutlet weak var table2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationItem.largeTitleDisplayMode = .never
        self.view.backgroundColor = UIColor(named: "ThemeColor")
        
        setupTable()
    }

    func setupTable() {
        
        table2.register(SecondTableCell.self, forCellReuseIdentifier: SecondTableCell.identifier)
        table2.delegate = self
        table2.dataSource = self
        table2.backgroundColor = UIColor(named: "ThemeColor")
        
    }
    
    func moveToThirdPage(restaurant: RestaurantModel?, time: [Time], order: [Order]) {
        let vc = ThirdPageController()
        vc.detailData = restaurant
        vc.timeList = time
        vc.orderList = order
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

extension SecondPageController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = table2.dequeueReusableCell(withIdentifier: SecondTableCell.identifier, for: indexPath) as? SecondTableCell else {
            return UITableViewCell()
        }
        
        cell.setupTableCell()
        cell.backgroundColor = UIColor(named: "ThemeColor")
        cell.selectionStyle = .none

        cell.placeImage.image = UIImage(named: restaurantList[indexPath.row].image)
        cell.namaRestoranLabel.text = restaurantList[indexPath.row].title
        cell.descriptionLabel.text = restaurantList[indexPath.row].desc
        cell.hargaLabel.text = "$\(restaurantList[indexPath.row].pricePerPerson)/person"
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveToThirdPage(restaurant: restaurantList[indexPath.row], time: restaurantList[indexPath.row].time, order: restaurantList[indexPath.row].order)
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return pageTitle
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        guard let header = view as? UITableViewHeaderFooterView else { return }
            header.textLabel?.textColor = UIColor.black
            header.textLabel?.font = UIFont.boldSystemFont(ofSize: 32)
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        34
    }
    
}


extension UIViewController {
    
    
    
   
    
}
