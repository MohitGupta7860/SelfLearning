//
//  FarmerModel.swift
//  SelfLearning
//
//  Created by Mohit on 22/12/19.
//  Copyright © 2019 Mohit. All rights reserved.
//

import Foundation

struct FarmerList: Decodable {
    let farmers: [Farmer]
}

struct Farmer: Decodable {
    let firstName: String
    let lastName: String
    let phoneNumber: String
    let harvestName: String
    
    enum CodingKeys: String, CodingKey {
        case firstName =  "first_Name"
        case lastName, phoneNumber, harvestName
    }
}



