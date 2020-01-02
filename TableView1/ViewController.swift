//
//  ViewController.swift
//  TableView1
//
//  Created by R Shantha Kumar on 12/23/19.
//  Copyright © 2019 R Shantha Kumar. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
       var name1 = [String]()
       var age = [String]()
       var industry1 = [String]()
       var images = [UIImage]()

    var tableView:UITableView!

    var desinfgation2 = [String]()
    

    var tollywoodImages = [UIImage]()
    var bollywoodImages = [UIImage]()
    var hollywoodImages = [UIImage]()
   
    var imageVie:UIImageView!
    
    var text4:String?
    
 
override func viewDidLoad() {
    
                 super.viewDidLoad()
       
                 tableViewMerhod()
        
        
        // Do any additional setup after loading the view.
    }

func tableViewMerhod(){
   
        
    tableView = UITableView(frame: view.frame, style: UITableView.Style.grouped)
        
    var cellxib = UINib(nibName: "CutomTableViewCell2", bundle: nil)
    
    tableView.register(cellxib, forCellReuseIdentifier: "abc")
    
   
    
          view.addSubview(tableView)
    
           tableView.delegate = self
           tableView.dataSource = self
    
    
    }
 
    
//func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle,       forRowAt indexPath: IndexPath) {
//            if editingStyle == .delete {
//           print("Deleted")
//
//           self.items.remove(at: indexPath.row)
//
//           self.tableView.deleteRows(at: [indexPath], with: .automatic)
//
//
//           }
//         DBManager.shared.deleteData(entityName: "Contacts", deleteBasedOnColumn:"name" , value:name1[indexPath.row])
//
//        tableView.reloadData()
//        }
    
func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if(section == 0){
        
           return "tollyood"
            }
    
        else if(section == 1){
            
            
            
          return "bollywood"
            
        }
        
            
            
            return "hollywood"
            
       
    }
    
    
    
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    if(section == 0 ){
        
        return name1.count
    }
    else if(section == 1){
        return name1.count
    }
    
    return name1.count
         
         }
    
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    
    
    
//    var cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath)
   
    
    
    
//    cell.translatesAutoresizingMaskIntoConstraints = true
      
//
//      cell.imageView?.heightAnchor.constraint(equalToConstant: 100).isActive = true
//      cell.imageView?.widthAnchor.constraint(equalToConstant: 100).isActive = true
//let   cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CustomTableViewCelllet   cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CustomTableViewCell
      let   cell = tableView.dequeueReusableCell(withIdentifier: "abc", for: indexPath) as! CutomTableViewCell2
    
    if(indexPath.section == 0){
        
        
        cell.nameLAbel.text = name1[indexPath.row]
        cell.ageLabel.text = age[indexPath.row]
        cell.industryLabel.text = industry1[indexPath.row]
        cell.tollyWoodImageView.image? = tollywoodImages[indexPath.row]
       
            //cell.heightAnchor.constraint(equalToConstant: 391).isActive = true
            //cell.widthAnchor.constraint(equalToConstant: 419).isActive = true
        
        cell.tollyWoodImageView?.layer.cornerRadius = cell.tollyWoodImageView!.frame.size.width/2
        cell.tollyWoodImageView?.clipsToBounds = true
              
               cell.textLabel!.numberOfLines = 0
               
               DBManager.shared.indexPath = indexPath.row

        
    }
   else if(indexPath.section == 1){
        
      
         cell.nameLAbel2.text = name1[indexPath.row]
         cell.ageLabel2.text = age[indexPath.row]
         cell.industryLabel2.text = industry1[indexPath.row]
        
        print("$$$$$$$$$$$$$$$$$",indexPath.row)
        
         cell.bollyWoodImageVIew.image? = bollywoodImages[indexPath.row]
        
        
        
             //cell.heightAnchor.constraint(equalToConstant: 391).isActive = true
             //cell.widthAnchor.constraint(equalToConstant: 419).isActive = true
         
         cell.bollyWoodImageVIew?.layer.cornerRadius = cell.bollyWoodImageVIew!.frame.size.width/2
            cell.bollyWoodImageVIew?.clipsToBounds = true
               
                cell.textLabel!.numberOfLines = 0
                
                DBManager.shared.indexPath = indexPath.row
   
    }
    
             
        
    
     cell.nameLAbel3.text = name1[indexPath.row]
     cell.ageLabel3.text = age[indexPath.row]
     cell.industryLabel3.text = industry1[indexPath.row]
     cell.hollyWoodImageView.image? = hollywoodImages[indexPath.row]
    
         //cell.heightAnchor.constraint(equalToConstant: 391).isActive = true
         //cell.widthAnchor.constraint(equalToConstant: 419).isActive = true
     
     cell.hollyWoodImageView?.layer.cornerRadius = cell.hollyWoodImageView!.frame.size.width/2
        cell.hollyWoodImageView?.clipsToBounds = true
           
            cell.textLabel!.numberOfLines = 0
            
            DBManager.shared.indexPath = indexPath.row

            return cell

        }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
 
    
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    let target = storyboard?.instantiateViewController(identifier: "abcde")
    
    navigationController?.pushViewController(target!, animated: true)
    
//    DBManager.shared.items3.append(items[indexPath.row])
   
        
        
        
    }
    
    
@IBAction func addContact(_ sender: Any) {
        
        
   
        
        let target = storyboard?.instantiateViewController(identifier: "abcd") as! TableViewController
        
        navigationController?.pushViewController(target, animated: true)
        
        
        
    }
    
    
    

    override func viewWillAppear(_ animated: Bool) {
       

        
        let data = DBManager.shared.fetchDAta(entityName: "Contacts")
     
//  fetching
                desinfgation2 = [String]()
               
        
               name1 = [String]()
               age = [String]()
               industry1 = [String]()
        
        tollywoodImages = [UIImage]()
         bollywoodImages = [UIImage]()
         hollywoodImages = [UIImage]()
        
                images = [UIImage]()
                var text:String!
       
                       
                
                for (i,x) in data.enumerated()
                {
                    
                  let path =   x.value(forKey: "designation") as? String ?? "empty"
                    
                    
                    desinfgation2.append(path)
                    
                    let defaultImage = UIImage(named: "defaultImage")
                    
                    
                   
                    let imageData = (defaultImage!.pngData()! as NSData)
                    

                    let imaged = x.value(forKey: "imageData") as? NSData ??  imageData
                    
                    
                    
                    let uiimage = UIImage(data:(imaged as? Data)!)

                    print("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@",imaged)
                    
                    if let c = uiimage
                    {
                    if(path == "tollywood"){
                        tollywoodImages.append(c)
                        
                        print("#######################",tollywoodImages)
                        
                    }
                    if(path == "bollywood"){
                        bollywoodImages.append(c)
                        print("*************",bollywoodImages)
                    }
                    if(path == "hollywood"){
                        hollywoodImages.append(c)
                        
                    }
                    }
              
                    
                    let name = x.value(forKey: "name") as? String ?? "empty"
                  
                    let aged = x.value(forKey: "age") as? String ?? "empty"
                 
                    var industry = x.value(forKey: "industry") as? String ?? "empty"
                   
                    
                    
                    
                 if(path == "tollywood"){
                
                    name1.append(name)
                    age.append(aged)
                    industry1.append(industry)
                   
                
                     }
                    if(path == "bollywood"){
                          
                        
                        name1.append(name)
                        age.append(aged)
                        industry1.append(industry)
                        
                           }
                    if(path == "hollywood"){
                          
                        
                        name1.append(name)
                        age.append(aged)
                        industry1.append(industry)
                        
                                   
                           }
                    
        }
                   tableView.reloadData()
        }
    
    
     
    
    
    

    
    
    
    
    
    
    
    
    

}

