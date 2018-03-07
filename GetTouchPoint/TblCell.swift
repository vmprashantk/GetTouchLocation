//
//  TblCell.swift
//  GetTouchPoint
//
//  Created by Prashant on 07/03/18.
//  Copyright © 2018 DivySoft. All rights reserved.
//

import UIKit

protocol ImageTouchDelegate {
    
    func imageTapped(cell:TblCell,point:CGPoint)
}

class TblCell: UITableViewCell {

    @IBOutlet var imgView: UIImageView!
    
    var objImageDelegate:ImageTouchDelegate? = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        let tapGesture = UITapGestureRecognizer()
        tapGesture.addTarget(self, action: #selector(tappedAction(gesture:)))
        imgView.addGestureRecognizer(tapGesture)
        // Initialization code
    }

  @objc  func tappedAction(gesture:UITapGestureRecognizer){
        
    if(objImageDelegate != nil){
        
        let point = gesture.location(in: imgView)
        objImageDelegate?.imageTapped(cell: self, point: point)
    }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
