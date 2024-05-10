//
//  HomeBannerCollectionViewCell.swift
//  Cproject
//
//  Created by KMUSER on 2024/04/26.
//

import UIKit
import Kingfisher

struct HomeBannerCollectionViewCellViewModel: Hashable {
    let bannerImageUrl: String
}

final class HomeBannerCollectionViewCell: UICollectionViewCell {
    static let reusableId: String = "HomeBannerCollectionViewCell"
    
    @IBOutlet private weak var imageView: UIImageView!
    
    func setViewModel(_ viewModel: HomeBannerCollectionViewCellViewModel) {
        imageView.kf.setImage(with: URL(string: viewModel.bannerImageUrl))
    }
}

extension HomeBannerCollectionViewCell {
    static func bannerLayout() -> NSCollectionLayoutSection {
        let itemSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item: NSCollectionLayoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(80 / 393))
        let group: NSCollectionLayoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section: NSCollectionLayoutSection = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        return section
    }
}
