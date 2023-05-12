//
//  Photos.swift
//  Navigation
//
//  Created by Ekaterina Saveleva on 03.04.2023.
//

import UIKit


struct Photo {
    
    let image: UIImage?
    
    static func makeCollectionPhotos() -> [Photo] {
        var collection: [Photo] = []
        for image in 0...19 {
            collection.append(Photo(image: UIImage(named: "\(image)")))
        }
        return collection
    }
}
