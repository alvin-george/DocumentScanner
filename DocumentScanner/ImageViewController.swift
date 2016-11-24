//
//  ImageViewController.swift
//  DocumentScanner
//
//  Created by Alvin George on 24/11/16.
//  Copyright © 2015 Fingent Technology Solutions. All rights reserved.
//


import UIKit
import CoreImage

class ImageViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var sourceImageView: UIImageView!
    
    var sourceImage: UIImage?
    var rectangleFeature: CIRectangleFeature?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.sourceImageView.contentMode = .ScaleAspectFit
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.sourceImageView.image = self.sourceImage
    }
    
    
    @IBAction func back(sender: UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
}
