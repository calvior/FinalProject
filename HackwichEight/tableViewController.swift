//
//  tableViewController.swift
//  HackwichEight
//
//  Created by CM Student on 4/9/18.
//  Copyright © 2018 Caitlin. All rights reserved.
//

import UIKit

class tableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let myResturants: [String] = ["Buba Gump", "Sorabol", "Moku Kitchen", "Marukame Udon", "Murphy's Bar & Grill", "Downbeat"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.navigationItem.title = "Town Eateries"
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int  {
        return myResturants.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
        UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier:"cellReuseidentifier")!
            let text = myResturants[indexPath.row]
            cell.textLabel?.text = text
            return cell
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
