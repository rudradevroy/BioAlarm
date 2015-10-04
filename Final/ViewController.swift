//
//  ViewController.swift
//  Final
//
//  Created by Rudradev Roy on 03/10/15.
//  Copyright © 2015 Rudradev Roy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        dateReciever.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var myDatePicker: UIDatePicker!

    @IBAction func myDatePicker(sender: AnyObject) {
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.timeStyle = NSDateFormatterStyle.ShortStyle
        let strDate = dateFormatter.stringFromDate(myDatePicker.date)
        dateReciever.text = strDate
    }
    @IBOutlet weak var dateReciever: UILabel!
}

