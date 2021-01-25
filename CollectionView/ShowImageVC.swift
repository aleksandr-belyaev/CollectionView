//
//  ShowImageVC.swift
//  CollectionView
//
//  Created by Александр Беляев on 22.01.2021.
//

import UIKit

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    var imageName: String!
    
    func setImageName(name: String) {
        imageName = name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentImage.image = UIImage(named: imageName)

    }

}
