//
//  ViewController.swift
//  DelegationAlert
//
//  Created by Arthur Loo on 10-10-16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var controllerModel : Model! = Model.loadData
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource
{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
    
        cell.modelCell = controllerModel
        cell.delegate = self 
    
        return cell
    }
    
}

extension ViewController : CellDelegate {
    func infoButtonClicked() {
        print("VC received call from delegate")
    }
}
