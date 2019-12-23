//
//  FamerViewModel.swift
//  SelfLearning
//
//  Created by Mohit on 22/12/19.
//  Copyright © 2019 Mohit. All rights reserved.
//

import Foundation

protocol FarmerViewable {
    func getFarmerData()
    var test1: String
    var test2: String
    var test: String
    var farmerList: [Farmer] { get set }
}

class FarmerViewModel: FarmerViewable {
    var farmerList = [Farmer]()
    
    init(farmerList: [Farmer]) {
        self.farmerList = farmerList
    }
    
    func getFarmerData()  {
        guard let url = Bundle.main.url(forResource: "farmer", withExtension: "json") else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        guard let jsonData = try? JSONDecoder().decode(FarmerList.self, from: data) as FarmerList else { return }
        farmerList = jsonData.farmers
    }
}
