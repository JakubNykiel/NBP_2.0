//
//  ExchangeRates.swift
//  NBP_2.0
//
//  Created by Jakub Nykiel on 10.05.2017.
//  Copyright © 2017 Jakub Nykiel. All rights reserved.
//

import UIKit

class ExchangeRates: UIViewController {

    @IBOutlet weak var historyView: UIView!
    @IBOutlet weak var ratesView: UIView!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    @IBAction func chooseDate(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0
        {
            historyView.isHidden = true
            ratesView.isHidden = false
        }
        else
        {
            historyView.isHidden = false
            ratesView.isHidden = true
        }
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
