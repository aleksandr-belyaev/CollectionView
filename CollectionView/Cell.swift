//
//  Cell.swift
//  CollectionView
//
//  Created by Александр Беляев on 21.01.2021.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    @IBOutlet weak var smileImage: UIImageView!
    
    func setTemperatureImage(imageName: String) {
        temperatureImage.image = UIImage(named: imageName)!
    }
    
    func setSmileImage(imageName: String!) {
        smileImage.image = UIImage(named: imageName)!
    }
}
