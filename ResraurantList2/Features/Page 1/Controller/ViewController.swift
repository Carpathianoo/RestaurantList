//
//  ViewController.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

protocol FirstPageProtocol {
    
    func setupTable()
    func dataSeeder()
    
}


class ViewController: UIViewController {

    var cityData: [CityModel] = []
    
    @IBOutlet weak var tableNew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationItem.title = "Barcelona"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.view.backgroundColor = UIColor(named: "ThemeColor")
        
        setupTable()
        dataSeeder()
    }


}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableNew.dequeueReusableCell(withIdentifier: FirstTableCell.identifier, for: indexPath) as? FirstTableCell else { return UITableViewCell() }
        
       
        
        cell.setupTableCell()
        
        cell.styleLabel.text = cityData[indexPath.row].styleName
        cell.restaurantCountLabel.text = "\(cityData[indexPath.row].numberOfRestaurant) Places"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveToSecondPage()
    }
    
}


extension ViewController: FirstPageProtocol {
    
    func setupTable() {
        
        tableNew.register(FirstTableCell.self, forCellReuseIdentifier: FirstTableCell.identifier)
        tableNew.delegate = self
        tableNew.dataSource = self
        
    }
    
    func dataSeeder() {
        
        let data1 = CityModel(styleName: "Spanish", numberOfRestaurant: 12)
        let data2 = CityModel(styleName: "Asian", numberOfRestaurant: 14)
        let data3 = CityModel(styleName: "Latino", numberOfRestaurant: 11)
        
        cityData.append(data1)
        cityData.append(data2)
        cityData.append(data3)
    }
    
    
}

