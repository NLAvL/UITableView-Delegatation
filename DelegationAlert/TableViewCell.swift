//
//  TableViewCell.swift
//  DelegationAlert
//
//  Created by Arthur Loo on 10-10-16.
//  Copyright © 2016 Arthur van Loo. All rights reserved.
//

import UIKit

protocol CellDelegate {
    func infoButtonClicked()
}

class TableViewCell: UITableViewCell {
    
    
    var modelCell : Model! {
        didSet {
            updateUI()
        }
    }
    
    
    var delegate : CellDelegate? {
        didSet {
            print("delegate did set")
        }
    }
    
    @IBOutlet weak var testLabel : UILabel!
    
    func updateUI() {
        testLabel.text = modelCell.labelTest
        
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    @IBAction func buttonTapped(_ sender: AnyObject) {
        delegate!.infoButtonClicked()
        print("cell button tapped")
    }

}
