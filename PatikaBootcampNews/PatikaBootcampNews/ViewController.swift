//
//  ViewController.swift
//  PatikaBootcampNews
//
//  Created by Ahmet Ozkan on 16.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var newsCollectionView: UICollectionView!
    @IBOutlet weak var topNavBar: UINavigationItem!

    var newsItem: NewsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        topBarLogo()
      
        
        // NewsCollectionViewCell.xib  - cell in file is defined.
        newsCollectionView.register(.init(nibName: "NewsCollectionViewCell",bundle:nil),forCellWithReuseIdentifier: "NewsCollectionViewCell")
        

        newsCollectionView.dataSource = self
        newsCollectionView.delegate = self
        
        // Adjusted the view size in Cell
        newsCollectionView.collectionViewLayout = UICollectionViewFlowLayout()
        
       
    }
    //The function where we set the logo in the topBar
    func topBarLogo(){
        let logoContainer = UIView(frame: CGRect(x: 0, y: 0, width: 270, height: 64))
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 270, height: 64))
        imageView.contentMode = .scaleAspectFit
        let image = UIImage(named: "patika")
        imageView.image = image
        logoContainer.addSubview(imageView)
        topNavBar.titleView = logoContainer
    }
         
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //To go to the detail page of the NewsDetailViewController
        if segue.identifier == "toNewsDetail" {
            if let destinationVC = segue.destination as? NewsDetailViewController{
                
                //the model on page a has been sent
                destinationVC.newsModel = newsItem
            }
        }
    }

}

//CollectionView data manager
extension ViewController: UICollectionViewDataSource{
    
    // the number to return with the cell in the model list
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return news.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        // The process of getting the cell according to the index
        let cell = newsCollectionView.dequeueReusableCell(withReuseIdentifier: "NewsCollectionViewCell", for: indexPath) as! NewsCollectionViewCell
        
        //Sending model data on detail page by index
        cell.setup(with: news[indexPath.row])
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        newsItem = news[indexPath.row]
        performSegue(withIdentifier: "toNewsDetail", sender: nil)
      
    }
        
}

extension ViewController: UICollectionViewDelegate{
}

extension ViewController: UICollectionViewDelegateFlowLayout{
  
    //The size of the page in the cell and how many pieces can be side by side.
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = self.view.frame.width * 0.485
        let height: CGFloat = 167.0
        return CGSize(width: width, height: height)
    }
}
