//
//  tableViewController.swift
//  HackwichEight
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Caitlin. All rights reserved.
//

import UIKit

class tableViewController: UIViewController {
    
    let myResturants: [String] = ["Buba Gump", "Sorabol", "Moku Kitchen", "Marukame Udon", "Poke & Box", "Forty Carrots"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.navigationItem.title = "Eateries"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
