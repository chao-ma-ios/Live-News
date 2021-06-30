//
//  LiveNewsListTableViewCell.swift
//  Live News
//
//  Created by Field Employee on 6/16/21.
//
import UIKit

class LiveNewsListTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // MARK:- Methods
    func setCell(title: String, author: String, description: String) {
        titleLabel.text = title
        authorLabel.text = author
        descriptionLabel.text = description
        
    }
    
}
