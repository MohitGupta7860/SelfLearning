//
//  FarmerTableViewCell.swift
//  SelfLearning
//
//  Created by Mohit on 22/12/19.
//  Copyright © 2019 Mohit. All rights reserved.
//

import UIKit
import SnapKit

class FarmerTableViewCell: UITableViewCell {
    let lblName = UILabel()
    let lblPhone = UILabel()
    let lblHarvestName = UILabel()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.contentView.addSubview(lblName)
        self.contentView.addSubview(lblPhone)
        self.contentView.addSubview(lblHarvestName)
        
        lblName.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview()
        }
        
        lblPhone.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview()
            make.top.equalTo(lblName.snp.bottom).offset(3)
        }
        
        lblHarvestName.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview()
            make.top.equalTo(lblPhone.snp.bottom).offset(3)
            make.bottom.equalToSuperview().offset(-3)
        }
    }
    
    public func configureCell(farmer: Farmer) {
        lblName.text = farmer.firstName
        lblPhone.text = farmer.phoneNumber
        lblHarvestName.text = farmer.harvestName
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
