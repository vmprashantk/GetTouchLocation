//
//  ViewController.swift
//  GetTouchPoint
//
//  Created by Prashant on 07/03/18.
//  Copyright © 2018 DivySoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,ImageTouchDelegate{

    @IBOutlet var tblView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.dataSource = self
        tblView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tblView.dequeueReusableCell(withIdentifier: "cell") as! TblCell
        if( cell.objImageDelegate == nil){
            
            cell.objImageDelegate = self
        }
        cell.imgView.backgroundColor = UIColor.red
        return cell
        
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func imageTapped(cell:TblCell,point:CGPoint){
        
        print(point)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

