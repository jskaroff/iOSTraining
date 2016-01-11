//
//  SwiftViewController.swift
//  iOSTraining
//
//  Created by Joshua Skaroff on 1/7/16.
//  Copyright © 2016 Joshua Skaroff. All rights reserved.
//

import UIKit


class SwiftViewController: UIViewController {
    
    var label1: UILabel = UILabel()
    var textField: UITextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.whiteColor()
        
        self.label1.frame = CGRectMake(10.0, 100.0, 50.0, 10.0)
        self.label1.textAlignment = NSTextAlignment.Left
        //self.label1.backgroundColor = UIColor.darkGrayColor()
        self.label1.text = "Welcome to the exciting world of Swift!"
        self.label1.sizeToFit()
        self.view.addSubview(self.label1)
        
        
        let button1 = UIButton()
        button1.frame = CGRectMake(self.view.center.x, self.view.center.y, 5.0, 5.0)
        button1.backgroundColor = .redColor()
        button1.setTitle("Reset", forState: UIControlState.Normal)
        button1.sizeToFit()
        button1.addTarget(self, action: "buttonTouched:", forControlEvents: .TouchUpInside)
        self.view.addSubview(button1)
        
        //self.textField: UITextField = UITextField()
        self.textField.frame = CGRectMake(10.0, self.view.frame.height - 50.0, self.view.frame.width - 150, 40.0)
        self.textField.backgroundColor = .lightGrayColor()
        self.view.addSubview(self.textField)
        
        let buttonUpdate = UIButton()
        buttonUpdate.frame = CGRectMake(self.view.center.x + textField.frame.width / 2, self.view.frame.height - 50.0, 100.0, 5.0)
        buttonUpdate.backgroundColor = .grayColor()
        buttonUpdate.setTitle("GO", forState: .Normal)
        buttonUpdate.sizeToFit()
        buttonUpdate.addTarget(self, action: "updateLabel:", forControlEvents: .TouchUpInside)
        self.view.addSubview(buttonUpdate)
    }
    
    
    func buttonTouched(sender: UIButton!)
    {
        
    }
    
    func updateLabel(sender: UIButton!)
    {
        self.label1.text = self.textField.text
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
