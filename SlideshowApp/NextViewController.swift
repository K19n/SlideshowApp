//
//  NextViewController.swift
//  SlideshowApp
//
//  Created by 安政　圭 on 2021/04/13.
//

import UIKit

class NextViewController: UIViewController {
    @IBOutlet weak var nextImageView: UIImageView!
    var image : UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        nextImageView.image = image
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
