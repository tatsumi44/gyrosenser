//
//  resultViewController.swift
//  accelaretormeter
//
//  Created by tatsumi kentaro on 2018/02/06.
//  Copyright © 2018年 tatsumi kentaro. All rights reserved.
//

import UIKit


class resultViewController: UIViewController {
    @IBOutlet var resultLabel:UILabel!
    
    var accerationX:Double!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let result:Double = fabs(accerationX*100)
        resultLabel.text = String(format:"%.1f",result)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
