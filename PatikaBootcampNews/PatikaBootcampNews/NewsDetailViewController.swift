//
//  NewsDetailViewController.swift
//  PatikaBootcampNews
//
//  Created by Ahmet Ozkan on 16.09.2022.
//

import UIKit

class NewsDetailViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var navigationBar: UINavigationItem!
    
    var urlWebView: String?
    var newsModel: NewsModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Values ​​in the model are placed in UI elements
        navigationBar.title = newsModel?.title
        imageView.image = newsModel?.image
        subtitleLabel.text = newsModel?.subtitle
        dateLabel.text = newsModel?.date
        textView.text = newsModel?.content
        urlWebView = newsModel?.url
        
        
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        //To go to the detail page of the WebViewController
        if segue.identifier == "toNewsWebView" {
            if let destinationVC = segue.destination as? WebViewController{
               
                //the model on page a has been sent
                destinationVC.newsItem = newsModel
            }
        }
    }
}
