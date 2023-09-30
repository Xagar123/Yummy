//
//  String+Extension.swift
//  Yummy
//
//  Created by Sagar Das on 23/09/23.
//

import Foundation

extension String {
    
    var asURL: URL? {
        return URL(string: self)
    }
}
