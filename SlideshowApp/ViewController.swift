//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 安政　圭 on 2021/04/13.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var goButton: UIButton!
    @IBOutlet weak var backButton: UIButton!
    
    var nowIndex:Int = 0
    
    var timer: Timer!
    
    var imageArray:[UIImage] = [
        UIImage(named: "1")!,
        UIImage(named: "2")!,
        UIImage(named: "3")!
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = imageArray[nowIndex]
    }
    override func prepare(for segue:UIStoryboardSegue,sender:Any?){
        let nextViewController:NextViewController = segue.destination as! NextViewController
        
        if (timer == nil){
            nextViewController.image = imageView.image
            startButton.setTitle("再生", for: .normal)
            goButton.isEnabled = true
            backButton.isEnabled = true
        }else{
            nextViewController.image = imageView.image
            timer.invalidate()
            timer = nil
            startButton.setTitle("再生", for: .normal)
            goButton.isEnabled = true
            backButton.isEnabled = true
        }
    }
    
    @IBAction func slideShowButton(_ sender: Any) {
        if (timer == nil) {
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(changeImage), userInfo: nil, repeats: true)
            
            startButton.setTitle("停止", for: .normal)
            goButton.isEnabled = false
            backButton.isEnabled = false
            
        } else {
            timer.invalidate()
            timer = nil
            startButton.setTitle("再生", for: .normal)
            goButton.isEnabled = true
            backButton.isEnabled = true
        }
    }    
    
    @IBAction func changeImage(_ sender: Any) {
        nowIndex += 1
        if (nowIndex == imageArray.count) {
            nowIndex = 0
        }
        imageView.image = imageArray[nowIndex]
    }
    
    @IBAction func backImage(_ sender: Any) {
        nowIndex -= 1
        if (nowIndex == -1) {
            nowIndex = 2
        }
        imageView.image = imageArray[nowIndex]
    }
    @IBAction func unwind(_segue:UIStoryboardSegue){        
    }
}

