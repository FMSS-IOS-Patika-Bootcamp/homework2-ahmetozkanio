//
//  NewsCollectionViewCell.swift
//  PatikaBootcampNews
//
//  Created by Ahmet Ozkan on 16.09.2022.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {

 
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    //this function allows me to initialize values ​​in model
    func setup(with news: NewsModel){
        imageView.image = news.image
        title.text = news.title
        subtitle.text = news.subtitle
    }
  
}
