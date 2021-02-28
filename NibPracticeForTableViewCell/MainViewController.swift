//
//  ViewController.swift
//  NibPracticeForTableViewCell
//
//  Created by Michelle Grover on 2/26/21.
//

import UIKit

struct CellData {
    var title:String?
    var img:UIImage?
    var age:Int?
    
}

class MainViewController: UIViewController {
    
    var cellDataArray = [CellData]()
    
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
         cellDataArray = [
            CellData(title: "Janasha", img: UIImage(named: "9"), age: 34), CellData(title: "Misha", img: UIImage(named: "9"), age: 47), CellData(title: "Muer", img: UIImage(named: "9"), age: 34)
        ]
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    


}

extension MainViewController:UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellDataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if cellDataArray[indexPath.row].age == 47 {
            let cell = Bundle.main.loadNibNamed("CustomCell_1", owner: self, options: nil)?.first as? CustomCell_1
            cell?.customImageView1.image = cellDataArray[indexPath.row].img
            cell?.customLabel1.text = cellDataArray[indexPath.row].title
            return cell!
        } else {
            let cell = Bundle.main.loadNibNamed("CustomCell_2", owner: self, options: nil)?.first as? CustomCell_2
            cell?.customImageView2.image = cellDataArray[indexPath.row].img
            cell?.customLabel2.text = cellDataArray[indexPath.row].title
            return cell!
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 205
    }
    
    
    
}



