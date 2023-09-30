//
//  OnBoardingViewController.swift
//  Yummy
//
//  Created by Sagar Das on 18/09/23.
//

import UIKit

class OnBoardingViewController: UIViewController {

    //MARK: - Properties
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var nextBtn: UIButton!
    
    
    var slider:[OnBoardingSlide] = []
    
    var currenetPage = 0 {
        didSet {
            pageControl.currentPage = currenetPage
            if currenetPage == slider.count - 1 {
                nextBtn.setTitle("Get Started", for: .normal)
            }else {
                nextBtn.setTitle("Next", for: .normal)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        slider = [
            OnBoardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different culture around the world", image: UIImage(named: "slide2")!),
            OnBoardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best.", image: UIImage(named: "slide1")!),
            OnBoardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image: UIImage(named: "slide3")!),
        ]
        pageControl.numberOfPages = slider.count
    }
    
    
    @IBAction func nextBtnClick(_ sender: UIButton) {
        if currenetPage == slider.count - 1 {
            print("go to Home page")
            let controller = storyboard?.instantiateViewController(withIdentifier: "HomeNC") as! UINavigationController
            controller.modalPresentationStyle = .fullScreen
            controller.modalTransitionStyle = .partialCurl
            present(controller, animated: true)
            
        } else {
            currenetPage += 1
            let indexPath = IndexPath(item: currenetPage, section: 0)
            collectionView.scrollToItem(at: indexPath, at: .centeredHorizontally, animated: true)
        }
        
    }
    

  

}

extension OnBoardingViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slider.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnBoardingCollectionViewCell.identifier, for: indexPath) as! OnBoardingCollectionViewCell
        cell.setUp(slider[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSizeMake(collectionView.frame.size.width, collectionView.frame.size.height)
    }
    
    ///this delegate will triger when scroll will finish
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currenetPage = Int(scrollView.contentOffset.x / width)
            }
    
    
}
