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
    var farmerList: [Farmer] { get set }
}
class FarmerViewModel: FarmerViewable {
    var farmerList = [Farmer]()
    
    init(farmerList: [Farmer]) {
        self.farmerList = farmerList
    }
    
    func getFarmerData1()  {
          guard let url = Bundle.main.url(forResource: "farmer", withExtension: "json") else { return }
          guard let data = try? Data(contentsOf: url) else { return }
          guard let jsonData = try? JSONDecoder().decode(FarmerList.self, from: data) as FarmerList else { return }
          farmerList = jsonData.farmers
      }
      
    func getFarmerData34()  {
        guard let url = Bundle.main.url(forResource: "farmer", withExtension: "json") else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        guard let jsonData = try? JSONDecoder().decode(FarmerList.self, from: data) as FarmerList else { return }
        farmerList = jsonData.farmers
    }
      
    func getFarmerData43()  {
        guard let url = Bundle.main.url(forResource: "farmer", withExtension: "json") else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        guard let jsonData = try? JSONDecoder().decode(FarmerList.self, from: data) as FarmerList else { return }
        farmerList = jsonData.farmers
    }
      
    func getFarmerData44()  {
        guard let url = Bundle.main.url(forResource: "farmer", withExtension: "json") else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        guard let jsonData = try? JSONDecoder().decode(FarmerList.self, from: data) as FarmerList else { return }
        farmerList = jsonData.farmers
    }
    func getFarmerData()  {
        guard let url = Bundle.main.url(forResource: "farmer", withExtension: "json") else { return }
        guard let data = try? Data(contentsOf: url) else { return }
        guard let jsonData = try? JSONDecoder().decode(FarmerList.self, from: data) as FarmerList else { return }
        farmerList = jsonData.farmers
    }
    
    //Test 1
    //Test2
    //Test2
    //Test3
    //Test4
    //Test4
    //Test4
    //Test4
    //Test5

}
