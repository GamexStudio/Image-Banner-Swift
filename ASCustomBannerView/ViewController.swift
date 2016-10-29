//
//  ViewController.swift
//  ASCustomBannerView
//
//  Created by Alan Roldán Maillo on 29/10/16.
//  Copyright © 2016 Alan Roldán Maillo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bannerView: BannerView!
    var simulateRefresh = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //at this step, you download images from a URL or local directory
        let imageName = ["bnr1","bnr2","bnr3","bnr5"]
        
        //you create array of type UIImage
        var arrayImages = [UIImage]()
        for i in 0 ... imageName.count-1
        {
            arrayImages.append(UIImage(named: imageName[i])!)
        }
        
        //instance the class BannerView
        bannerView.createBanner(imagesArray: arrayImages)
    }
    
    @IBAction func refresAction(_ sender: Any) {
        
        //at this step, you download images from a URL or local directory
        var imageName = [String]()
        
        /*** This step is only useful for example ***/
        if simulateRefresh
        {
            //Simulate URL 1
            imageName = ["bnr1","bnr2","bnr3","bnr5"]
            simulateRefresh = false
        }
        else
        {
            //Simulate URL 2
            imageName = ["bnr6","bnr7","bnr8","bnr9"]
            simulateRefresh = true
        }
        /***  ***/
        
        //you create array of type UIImage
        var arrayImages = [UIImage]()
        for i in 0 ... imageName.count-1
        {
            arrayImages.append(UIImage(named: imageName[i])!)
        }
        
        //instance the class BannerView
        bannerView.refreshBanner(imagesArray: arrayImages)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

