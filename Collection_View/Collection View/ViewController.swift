//
//  ViewController.swift
//  Collection View
//
//  Created by Mac on 05/05/2021 / india.
//

import UIKit

class ViewController: UIViewController {
    
    var imageArray: [UIImage] = [#imageLiteral(resourceName: "stones"),#imageLiteral(resourceName: "dear"),#imageLiteral(resourceName: "nature5"),#imageLiteral(resourceName: "blue-sea-sunset"),#imageLiteral(resourceName: "ridge"),#imageLiteral(resourceName: "nature"),#imageLiteral(resourceName: "tree"),#imageLiteral(resourceName: "nature2"),#imageLiteral(resourceName: "night"),#imageLiteral(resourceName: "drop"),#imageLiteral(resourceName: "baloons"),#imageLiteral(resourceName: "colors"),#imageLiteral(resourceName: "nature1")]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = imageArray[indexPath.row]
        return cell
    }
    
    
}
