//
//  SecondPageController.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import UIKit

class SecondPageController: UIViewController {

    @IBOutlet weak var table2: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Latino"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        setupTable()
    }

    func setupTable() {
        
        table2.register(SecondTableCell.self, forCellReuseIdentifier: SecondTableCell.identifier)
        table2.delegate = self
        table2.dataSource = self
        
    }
    
}

extension SecondPageController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = table2.dequeueReusableCell(withIdentifier: SecondTableCell.identifier, for: indexPath) as? SecondTableCell else {
            return UITableViewCell()
        }
        
        cell.setupTableCell()
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        moveToThirdPage()
    }
    
    
}


extension UIViewController {
    
    func moveToSecondPage() {
        let vc = SecondPageController()
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    func moveToThirdPage() {
        let vc = ThirdPageController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}
