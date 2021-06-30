//
//  LiveNewDetailView.swift
//  Live News
//
//  Created by Field Employee on 6/22/21.
//

import Foundation
import UIKit

class LiveNewDetailView: UIViewController {
    
    
    var indexHolder: Int = 0
    var livenews:LiveNewsModel?
    var nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
    //static let identifier = "detailView"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(indexHolder)
        self.view.backgroundColor = .white
        
        title = "News"
        createView()
    }
    
    func createView() {
        self.view.addSubview(nameLabel)
        nameLabel.text = livenews?.author
    }
   
}
