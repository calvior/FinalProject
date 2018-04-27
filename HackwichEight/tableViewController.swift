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
   

    @IBOutlet var tableView: UITableView!
    
    var restaurantImageData = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
            self.navigationItem.title = "Town Eateries"
        
            self.tableView.dataSource = self
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        let path = Bundle.main.path(forResource:"Property List", ofType: "plist")
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey:"restaurantImages") as! [String]
        
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
            let cell = tableView.dequeueReusableCell(withIdentifier:"cellReuseIdentifier")!
            let text = myResturants[indexPath.row]
            cell.textLabel?.text = text
            return cell
    }
 
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"
        {
            let s1 = segue.destination as! detailViewController
            let imageIndex = tableView.indexPathForSelectedRow?.row
            s1.imagePass = restaurantImageData[imageIndex!]
        }
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
