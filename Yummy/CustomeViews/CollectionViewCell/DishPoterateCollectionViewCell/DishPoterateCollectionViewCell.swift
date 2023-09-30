//
//  DishPoterateCollectionViewCell.swift
//  Yummy
//
//  Created by Sagar Das on 23/09/23.
//

import UIKit

class DishPoterateCollectionViewCell: UICollectionViewCell {

    static var identifier = String(describing: DishPoterateCollectionViewCell.self)
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    func setup(dish: Dish) {
        self.titleLbl.text = dish.name
        self.dishImageView.kf.setImage(with: dish.image?.asURL)
        self.caloriesLbl.text = dish.formattedCalories
        self.descriptionLbl.text = dish.description
    }
}
