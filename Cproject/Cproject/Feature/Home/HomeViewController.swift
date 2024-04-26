//
//  HomeViewController.swift
//  Cproject
//
//  Created by KMUSER on 2024/04/26.
//

import UIKit

class HomeViewController: UIViewController {
    enum Section {
        case banner
    }
    
    @IBOutlet weak var collectionVIew: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Section, UIImage>?
    private var compositionalLayout: UICollectionViewCompositionalLayout = {
        let itemSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
        let item: NSCollectionLayoutItem = NSCollectionLayoutItem(layoutSize: itemSize)
        let groupSize: NSCollectionLayoutSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(165 / 393))
        let group: NSCollectionLayoutGroup = NSCollectionLayoutGroup.horizontal(layoutSize: groupSize, subitems: [item])
        let section: NSCollectionLayoutSection = NSCollectionLayoutSection(group: group)
        section.orthogonalScrollingBehavior = .groupPaging
        return UICollectionViewCompositionalLayout(section: section)
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = UICollectionViewDiffableDataSource(collectionView: collectionVIew, cellProvider: { collectionView, indexPath, itemIdentifier in
            let cell: HomeBannerCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "HomeBannerCollectionViewCell", for: indexPath) as! HomeBannerCollectionViewCell
            cell.setImage(itemIdentifier)
            return cell
        })
        
        var snapShot: NSDiffableDataSourceSnapshot<Section, UIImage> = NSDiffableDataSourceSnapshot<Section, UIImage>()
        snapShot.appendSections([.banner])
        var images: [UIImage] = []
        if let image1 = UIImage(named: "slide1") {
            images.append(image1)
        }
        if let image2 = UIImage(named: "slide2") {
            images.append(image2)
        }
        if let image3 = UIImage(named: "slide3") {
            images.append(image3)
        }
        snapShot.appendItems(images, toSection: .banner)

//        snapShot.appendItems([UIImage(named: "slide1")!, UIImage(named: "slide2")!, UIImage(named: "slide3)")!], toSection: .banner)
        dataSource?.apply(snapShot)
        
        collectionVIew.collectionViewLayout = compositionalLayout
    }
}
