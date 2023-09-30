//
//  OnBoardingCollectionViewCell.swift
//  Yummy
//
//  Created by Sagar Das on 18/09/23.
//

import UIKit

class OnBoardingCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: OnBoardingCollectionViewCell.self)
    
    @IBOutlet weak var slideImageView: UIImageView!
    @IBOutlet weak var slideLbl: UILabel!
    @IBOutlet weak var slideDescriptionLbl: UILabel!
    
    
    func setUp (_ slide: OnBoardingSlide) {
        slideImageView.image = slide.image
        slideLbl.text = slide.title
        slideDescriptionLbl.text = slide.description
    }
}
