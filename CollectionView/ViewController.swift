//
//  ViewController.swift
//  CollectionView
//
//  Created by Александр Беляев on 21.01.2021.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    @IBOutlet weak var collectionViewOne: UICollectionView!
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    
    let arrayTemperature = ["temp.green",
                            "temp.blackGreen",
                            "temp.lightYellow",
                            "temp.darkYellow",
                            "temp.orange",
                            "temp.red"]
    let arraySmiles = ["bad",
                       "favorite",
                       "hate",
                       "nice",
                       "notPleasant",
                       "routine"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewOne.dataSource = self
        collectionViewOne.delegate = self
        collectionViewTwo.dataSource = self
        collectionViewTwo.delegate = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else { return }
        var currentSelectedImage: String!
        
        if collectionView == collectionViewOne {
            currentSelectedImage = arrayTemperature[indexPath.row]
        }
        
        if collectionView == collectionViewTwo {
            currentSelectedImage = arraySmiles[indexPath.row]
        }
        
        vc.setImageName(name: currentSelectedImage)
        present(vc, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == collectionViewOne {
            return arrayTemperature.count
        }
        
        if collectionView == collectionViewTwo {
            return arraySmiles.count
        }
        
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewOne {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell {
                let imageName = arrayTemperature[indexPath.row]
                cell.setTemperatureImage(imageName: imageName)
                return cell
            }
        }
        
        if collectionView == collectionViewTwo {
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell {
                let imageName = arraySmiles[indexPath.row]
                cell.setSmileImage(imageName: imageName)
                return cell
            }
        }
        return UICollectionViewCell()
    }
    
    
}

