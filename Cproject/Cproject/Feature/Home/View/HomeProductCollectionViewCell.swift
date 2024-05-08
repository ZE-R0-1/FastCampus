//
//  HomeProductCollectionViewCell.swift
//  Cproject
//
//  Created by KMUSER on 2024/04/29.
//

import UIKit
import Kingfisher

struct HomeProductCollectionViewCellViewModel: Hashable {
    let imageUrlString: String
    let title: String
    let reasonDiscountString: String
    let originalPrice: String
    let discountPrice: String
}


final class HomeProductCollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var productItemImageView: UIImageView! {
        didSet {
            productItemImageView.layer.cornerRadius = 5
        }
    }
    @IBOutlet private weak var productTitleLabel: UILabel!
    @IBOutlet private weak var productReasonDiscountLabel: UILabel!
    @IBOutlet private weak var originalPriceLabel: UILabel!
    @IBOutlet private weak var discountPriceLabel: UILabel!
   
    func setViewModel(_ viewModel: HomeProductCollectionViewCellViewModel) {
        productItemImageView.kf.setImage(with: URL(string: viewModel.imageUrlString))
        productTitleLabel.text = viewModel.title
        productReasonDiscountLabel.text = viewModel.reasonDiscountString
        originalPriceLabel.attributedText = NSMutableAttributedString(string: viewModel.originalPrice,attributes: [NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue])
        discountPriceLabel.text = viewModel.discountPrice
    }
}

extension HomeProductCollectionViewCell {
    static func horizontalProductItemLayout() -> NSCollectionLayoutSection {
        let itemSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item: NSCollectionLayoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .absolute(117), heightDimension: .estimated(224))
        let group: NSCollectionLayoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section: NSCollectionLayoutSection = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .continuous
        section.contentInsets = .init(top: 40, leading: 33, bottom: 0, trailing: 33)
        section.interGroupSpacing = 10
        return section
    }
    
    static func verticalProductItemLayout() -> NSCollectionLayoutSection {
        let itemSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1/2), heightDimension: .estimated(277))
        let item: NSCollectionLayoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        item.contentInsets = .init(top: 0, leading: 2.5, bottom: 0, trailing: 2.5)
        let groupSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .estimated(277))
        let group: NSCollectionLayoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section: NSCollectionLayoutSection = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .none
        section.contentInsets = .init(top: 40, leading: 19 - 2.5, bottom: 0, trailing: 19 - 2.5)
        return section
    }
}
