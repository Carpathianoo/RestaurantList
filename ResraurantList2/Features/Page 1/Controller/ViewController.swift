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
    func setupView()
    
}


class ViewController: UIViewController {

    var RestaurantData: [CuisineModel] = []
    
    @IBOutlet weak var tableNew: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    
        setupView()
        setupTable()
        dataSeeder()
    }

    @objc func menuClicked(sender: UITapGestureRecognizer) {
        print("Button clicked")
    }
    
    func moveToSecondPage(restaurant: [RestaurantModel], title: String) {
        let vc = SecondPageController()
        vc.restaurantList = restaurant
        vc.pageTitle = title
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RestaurantData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableNew.dequeueReusableCell(withIdentifier: FirstTableCell.identifier, for: indexPath) as? FirstTableCell else { return UITableViewCell() }
        
       
        
        cell.setupTableCell()
        
        cell.styleLabel.text = RestaurantData[indexPath.row].cuisineStyle
        cell.restaurantCountLabel.text = "\(RestaurantData[indexPath.row].numberOfRestaurant) Places"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveToSecondPage(restaurant: RestaurantData[indexPath.row].restaurant, title: RestaurantData[indexPath.row].cuisineStyle)
    }
    
}


extension ViewController: FirstPageProtocol {
    
    func setupTable() {
        
        tableNew.register(FirstTableCell.self, forCellReuseIdentifier: FirstTableCell.identifier)
        tableNew.delegate = self
        tableNew.dataSource = self
        tableNew.backgroundColor = UIColor(named: "ThemeColor")
        

        
    }
    
    func dataSeeder() {
        
        let data4 = CuisineModel(cuisineStyle: "Spanish", numberOfRestaurant: 12, restaurant:
                                    [
                                        RestaurantModel(image: "Kebab", title: "El Pachuchooooo", desc: "The best nachos in town", pricePerPerson: 12, address: "Carrer de la Lleialtat, 16 08001 Barcelona", time:
                                                        [
                                                        Time(available: "Mon-Fri: 19:00 - 0:00h"),
                                                        Time(available: "Sat-Sun: 12:00 - 16:00h")
                                                        ], order:
                                                                [
                                                                Order(name: "Nasi Goreng", price: 12),
                                                                Order(name: "Ayam Bakar", price: 14),
                                                                Order(name: "Tahu Goreng", price: 11)
                                                                ],
                                                                about: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. Run by Priscilla, a native Californian, and Gascon. After five years, they acquired a new partner, Juan and found their location in the Raval.  A barrio in flux with many faces: principally a migrant neighborhood, with investment funds buying up entire buildings and leaving them empty – useful for ‘drug flats’. Things are changing, Barcelona is booming and El Raval and its attractive rents are becoming a real contender." ),
                                        RestaurantModel(image: "Salad", title: "Resto Indonesia", desc: "The best lah!", pricePerPerson: 11, address: "Rumah saya", time:
                                                        [
                                                        Time(available: "Mon-Fri: 19:00 - 0:00h")
                                                        ], order:
                                                                [
                                                                Order(name: "Nasi Goreng", price: 12),
                                                                Order(name: "Ayam Bakar", price: 14),
                                                                ],
                                                                about: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food." )

           
        ])
        
        let data5 = CuisineModel(cuisineStyle: "Asian", numberOfRestaurant: 11, restaurant:
                                    [
                                        RestaurantModel(image: "Nasi_Goreng", title: "Elaaaa", desc: "Lachos in town", pricePerPerson: 14, address: "Carrer de la Lleialtat", time:
                                                        [
                                                        Time(available: "Mon-Fri: 19:00 - 0:00h"),
                                                        Time(available: "Sat-Sun: 12:00 - 16:00h")
                                                        ], order:
                                                                [
                                                                Order(name: "Nasi", price: 12),
                                                                Order(name: "Ayam Bakar", price: 14),
                                                                Order(name: "Tahu Goreng", price: 11)
                                                                ],
                                                                about: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food. " ),
                                        RestaurantModel(image: "Salad", title: "Resto Indonesia Kedua", desc: "The best lah!", pricePerPerson: 11, address: "Carrer de la Lleialtat, 16 08001 Barcelona", time:
                                                        [
                                                        Time(available: "Mon-Fri: 19:00 - 0:00h")
                                                        ], order:
                                                                [
                                                                Order(name: "Nasi Goreng", price: 12),
                                                                Order(name: "Ayam Bakar", price: 14),
                                                                ],
                                                                about: "Gringa started life out as a Food truck, one of the first in Barcelona, a blue Citroen called Eureka Street Food." )

           
        ])
        
        RestaurantData.append(data4)
        RestaurantData.append(data5)
    }
    
    func setupView() {
        self.navigationItem.title = "Barcelona"
        navigationController?.navigationBar.prefersLargeTitles = true
        self.view.backgroundColor = UIColor(named: "ThemeColor")
        let button1 = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"), style:.plain, target: self, action: #selector(menuClicked))
        button1.tintColor = .black
        self.navigationItem.leftBarButtonItems = [button1]
    }
    
    
}

