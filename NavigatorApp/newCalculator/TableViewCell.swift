//
//  TableViewCell.swift
//  newCalculator
//
//  Created by admin on 04/07/24.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var cellImage: UIImageView!
    @IBOutlet weak var cellLabel: UILabel!
    
    var item = ["Calculator","Green Screen","Alert1","Alert2","Alert3"]
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func setUp(tableCell:inout TableViewCellModel,index:Int){
        tableCell.setItem(item: item[index])
        tableCell.setImage(image: UIImage(named: "anyImage")!)
        self.cellImage.frame = CGRect(x: 5, y: 5 , width: 50, height: 50)
        self.cellImage.image = tableCell.getImage()
        self.cellLabel?.text = tableCell.getItem()
    }
}
