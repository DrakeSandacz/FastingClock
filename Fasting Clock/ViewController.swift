//
//  ViewController.swift
//  Fasting Clock
//
//  Created by Drake Sandacz on 10/12/17.
//  Copyright © 2017 Drake Sandacz. All rights reserved.
//

import UIKit


class ViewController: UIViewController, UIScrollViewDelegate {
    
 
    @IBOutlet var mainScrollView: UIScrollView!
    @IBOutlet var featurePageControl: UIPageControl!
    
    // Gets the hours and minute for time of ending meal.
//    @IBOutlet weak var timePicker: UIDatePicker!
    
//    @IBAction func setFastingTimerButton(_ sender: UIButton) {
//        // This function gets the hours and minutes the user chose for when they go to bed, it then adds 16 hours to whatever they had and notifies them everyday.
//        let date = timePicker.date
//        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
//        let hour = components.hour
//        let minutes = components.minute
//        print("\(hour!):\(minutes!)")
//
//
//    }
    
    
    var imageArray = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Begin Slideshow Code
        if mainScrollView == nil {
            mainScrollView = nil
        }
        else {
        mainScrollView.frame = view.frame
        imageArray = [#imageLiteral(resourceName: "image__1_of_3__360"),#imageLiteral(resourceName: "image__2_of_3__360"),#imageLiteral(resourceName: "group_2_360")]
        for i in 0..<imageArray.count{
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            let xPosition = self.view.frame.width * CGFloat(i);
            imageView.contentMode = .top
            imageView.frame = CGRect(x: xPosition, y: 0, width: self.mainScrollView.frame.size.width, height: self.mainScrollView.frame.size.height)
            mainScrollView.contentSize.width = mainScrollView.frame.width * CGFloat(i + 1)
            mainScrollView.addSubview(imageView)
            mainScrollView.delegate = self
            }
            // End Slideshow Code

        
        
    }
    
    }
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        featurePageControl.currentPage = Int(page)
        
    }
    
    



    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

    



