//
//  HomeCouponButtonCollectionViewCell.swift
//  Cproject
//
//  Created by KMUSER on 2024/05/07.
//

import Combine
import UIKit

struct HomeCouponButtonCollectionViewCellViewModel: Hashable {
    enum CouponState {
        case enable
        case disable
    }
    var state: CouponState
}

final class HomeCouponButtonCollectionViewCell: UICollectionViewCell {
    static let reusableId: String = "HomeCouponButtonCollectionViewCell"
    private weak var didTabCouponDownload: PassthroughSubject<Void, Never>?
    @IBOutlet weak var couponButton: UIButton! {
        didSet {
            couponButton.setImage(CPImage.buttonActivate, for: .normal)
            couponButton.setImage(CPImage.buttonComplete, for: .disabled)
        }
    }
    
    func setViewModel(_ viewModel: HomeCouponButtonCollectionViewCellViewModel, _ didTabCouponDownload: PassthroughSubject<Void, Never>?) {
        self.didTabCouponDownload = didTabCouponDownload
        switch viewModel.state {
        case .enable:
            couponButton.isEnabled = true
        case .disable:
            couponButton.isEnabled = false
        }
    }
    
    @IBAction private func didTapCouponButton(_ sender: Any) {
        didTabCouponDownload?.send()
    }
}

extension HomeCouponButtonCollectionViewCell {
    static func couponButtonItemLayout() -> NSCollectionLayoutSection {
        let itemSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item: NSCollectionLayoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .absolute(37))
        let group: NSCollectionLayoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section: NSCollectionLayoutSection = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .none
        section.contentInsets = .init(top: 28, leading: 22, bottom: 0, trailing: 22)
        return section
    }
}
