//
//  ViewController.swift
//  Giaodien_maytinh1
//
//  Created by Admin on 9/20/16.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceBeetweenInputTextFieldAndResultLabel: NSLayoutConstraint!
    
    @IBOutlet weak var distanceBeetweenResultLabelAndMidView: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func updateViewConstraints() {
        super.updateViewConstraints()
        updateContraints()
    }

    func updateContraints() -> Void {
        
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        print("chieu cao\(UIScreen.mainScreen().bounds.size.height)")
        distanceBeetweenResultLabelAndMidView.constant = UIScreen.mainScreen().bounds.size.height > 480 ? distanceBeetweenResultLabelAndMidView.constant * scale : distanceBeetweenResultLabelAndMidView.constant * 0.1
//        distanceBeetweenInputTextFieldAndResultLabel.constant = CGFloat(10)
        
        distanceBeetweenInputTextFieldAndResultLabel.constant = UIScreen.mainScreen().bounds.size.height > 480 ? distanceBeetweenInputTextFieldAndResultLabel.constant * scale : distanceBeetweenInputTextFieldAndResultLabel.constant * 0.1
    
    }


}

