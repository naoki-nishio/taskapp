//
//  ViewController.swift
//  taskapp
//
//  Created by 中西八洋 on 2021/08/16.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
    }
    func tableView(_ tableView:UITableView,number0fRowsInSection section: Int)->Int{
        return 0
    }
    
    
    
    
    func tableView(_ tableView:UITableView,cellForRowAtindexPath: IndexPath)->UITableViewCell{
        let cell=tableView.dequeueReusableCell(withIdentifier:"Cell",for: indexPath)
        
        return cell
        
    }
    
    func tableView(_ tableView:UITableView,didSelectRowAt indexPath: IndexPath){
        
    }
    
    func tableView(_ tableView:UITableView,editingStyleForRowAt indexPath:IndexPath)->UITableViewCell.EditingStyle{
        return .delete
    }
    func tableView(_ tableView: UITableView,commit editingStyle:UITableViewCell.EditingStyle,forRowAt indexPath:IndexPath){
        
    }
/*
    func tableView(_ tableView:UITableView,didSelectRowAt IndexPath){
        performSegue(withIdentifier:"cellSegue",sender:nil)
    }*/
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
         performSegue(withIdentifier: "cellSegue",sender: nil) 
     }
    
}

