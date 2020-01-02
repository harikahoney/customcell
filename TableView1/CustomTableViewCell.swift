//
//  CustomTableViewCell.swift
//  TableView1
//
//  Created by R Shantha Kumar on 12/27/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

  //  override var imageView: UIImageView?
   
    
    @IBOutlet weak var tollyWoodImageView: UIImageView!
    
    @IBOutlet weak var nameLAbel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var industryLabel: UILabel!
    
    
    @IBOutlet weak var bollyWoodImageVIew: UIImageView!
       
       @IBOutlet weak var nameLAbel2: UILabel!
       
       @IBOutlet weak var ageLabel2: UILabel!
       
       @IBOutlet weak var industryLabel2: UILabel!
    
    
    
    
    
    
    
    @IBOutlet weak var hollyWoodImageView: UIImageView!
       
       @IBOutlet weak var nameLAbel3: UILabel!
       @IBOutlet weak var ageLabel3: UILabel!
       
       
       @IBOutlet weak var industryLabel3: UILabel!
       
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
       
    
        
        // Initialization code
    }
    
    
    
    
     

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
