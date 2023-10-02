//
//  CardView.swift
//  Yummy
//
//  Created by Sagar Das on 23/09/23.
//

import UIKit

class CardView: UIView {
     
    override init(frame: CGRect) {
        super.init(frame: frame)
        requiredSetUp()
    }
    
    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
        super.init(coder: coder)
        requiredSetUp()
    }
    
    private func requiredSetUp() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        layer.shadowOpacity = 0.1
        layer.shadowRadius = 10
        cornerRadius = 10
    }
}
