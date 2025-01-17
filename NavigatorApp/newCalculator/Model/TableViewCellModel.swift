//
//  TableViewCellModel.swift
//  newCalculator
//
//  Created by admin on 10/07/24.
//

import Foundation
import UIKit

public struct TableViewCellModel {
    let title:String?
    let subTitle:String?
    let image:UIImage?
    
    init(title: String? = nil, subTitle:String? = nil, image: UIImage? = nil) {
        self.title = title
        self.subTitle = subTitle
        self.image = image
    }
    
    public func getTitle() -> String {
        guard let title = self.title else {
            return ""
        }
        return title
    }
    
    public func getSubTitle()->String {
        guard let subTitle = self.subTitle else {
            return ""
        }
        return subTitle
    }
    
    public func getImage() -> UIImage {
        guard let image = self.image else {
            return UIImage(systemName: "info.circle")!
        }
        return image
    }
}
