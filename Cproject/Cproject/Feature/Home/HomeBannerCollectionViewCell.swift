//
//  HomeBannerCollectionViewCell.swift
//  Cproject
//
//  Created by KMUSER on 2024/04/26.
//

import UIKit

class HomeBannerCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    
    func setImage(_ image: UIImage) {
        imageView.image = image
    }
}
