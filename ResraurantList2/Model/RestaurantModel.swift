//
//  CityModel.swift
//  ResraurantList2
//
//  Created by Adlan Nourindiaz on 22/02/23.
//

import Foundation

    
struct CuisineModel {
        
    let cuisineStyle: String
    let numberOfRestaurant: Int
    let restaurant: [RestaurantModel]
}

struct RestaurantModel {
    
    let image: String
    let title: String
    let desc: String
    let pricePerPerson: Int
    let address: String
    let time: [Time]
    let order: [Order]
    let about: String
    
}

struct Time {
    let available: String
}

struct Order {
    let name: String
    let price: Int
}
