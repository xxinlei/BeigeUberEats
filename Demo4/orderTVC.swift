//
//  orderTVC.swift
//  Demo4
//
//  Created by 楊昕蕾 on 2021/7/19.
//

import UIKit

class orderTVC: UITableViewCell {
    
    @IBOutlet weak var orderImgView: UIImageView!
    
    @IBOutlet weak var firstLbl: UILabel!
    
    @IBOutlet weak var thirdLbl: UILabel!
    
    @IBOutlet weak var secondLbl: UILabel!
    
    @IBOutlet weak var orderTableView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
