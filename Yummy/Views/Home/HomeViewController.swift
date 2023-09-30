//
//  HomeViewController.swift
//  Yummy
//
//  Created by Sagar Das on 21/09/23.
//

import UIKit

class HomeViewController: UIViewController {
   
    //MARK: -Properties
    
    @IBOutlet weak var categoryCollectionView: UICollectionView!
    @IBOutlet weak var popularDishCollectionView: UICollectionView!
    
    
    var categories:[DishCategory] = [
        .init(id: "id1", name: "indian Dish 1", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "indian Dish 2", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "indian Dish 3", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "indian Dish 4", image: "https://picsum.photos/100/200"),
        .init(id: "id1", name: "indian Dish 5", image: "https://picsum.photos/100/200")
    ]
    
    var popularDish: [Dish] = [
        .init(id: "id1", name: "SouthIndian", description: "Good in taste", image: "https://picsum.photos/100/200", calories: 34.41),
        .init(id: "id1", name: "SouthIndian", description: "Good in taste", image: "https://picsum.photos/100/200", calories: 34.41),
        .init(id: "id1", name: "SouthIndian", description: "Good in taste", image: "https://picsum.photos/100/200", calories: 34.41),
        .init(id: "id1", name: "SouthIndian", description: "Good in taste", image: "https://picsum.photos/100/200", calories: 34.41),
        .init(id: "id1", name: "SouthIndian", description: "Good in taste", image: "https://picsum.photos/100/200", calories: 34.41),
        .init(id: "id1", name: "SouthIndian", description: "Good in taste", image: "https://picsum.photos/100/200", calories: 34.41),
    ]

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        categoryCollectionView.delegate = self
        categoryCollectionView.dataSource = self
        registerCell()
    }
    
    
    
    //MARK: - Helper
    
    private func registerCell() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularDishCollectionView.register(UINib(nibName: DishPoterateCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPoterateCollectionViewCell.identifier)
        
    }
    
   
}

//MARK: -Extensions
extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch collectionView {
        case categoryCollectionView:
            return categories.count
        case popularDishCollectionView:
            return popularDish.count
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setUp(category:categories[indexPath.row] )
            
            return cell
        case popularDishCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPoterateCollectionViewCell.identifier, for: indexPath) as! DishPoterateCollectionViewCell
            cell.setup(dish: popularDish[indexPath.row])
            
            return cell
        default:
           return UICollectionViewCell()
        }
      
    }
   
}
