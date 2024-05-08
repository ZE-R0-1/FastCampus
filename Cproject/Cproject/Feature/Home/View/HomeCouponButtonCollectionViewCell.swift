//
//  HomeCouponButtonCollectionViewCell.swift
//  Cproject
//
//  Created by KMUSER on 2024/05/07.
//

import UIKit

struct HomeCouponButtonCollectionViewCellViewModel: Hashable {
    enum CouponState {
        case enable
        case disable
    }
    var state: CouponState
}

final class HomeCouponButtonCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var couponButton: UIButton!
    
    func setViewModel(_ viewModel: HomeCouponButtonCollectionViewCellViewModel ) {
        switch viewModel.state {
        case .enable:
            couponButtonImageView.image = CPImage.buttonActivate
        case .disable:
            couponButtonImageView.image = CPImage.buttonComplete
        }
    }
}
