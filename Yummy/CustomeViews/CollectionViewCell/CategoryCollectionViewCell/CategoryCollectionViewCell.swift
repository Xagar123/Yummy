//
//  CategoryCollectionViewCell.swift
//  Yummy
//
//  Created by Sagar Das on 23/09/23.
//

import UIKit
import Kingfisher

class CategoryCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: CategoryCollectionViewCell.self)

    @IBOutlet weak var categoryImageView: UIImageView!
    @IBOutlet weak var categoryTitleLbl: UILabel!
    
    func setUp(category: DishCategory) {
//        self.categoryImageView.image = category.image
        self.categoryTitleLbl.text = category.name
        self.categoryImageView.kf.setImage(with: category.image?.asURL)
    }
    
    
    
}
