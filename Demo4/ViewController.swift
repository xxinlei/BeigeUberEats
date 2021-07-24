//
//  ViewController.swift
//  Demo4
//
//  Created by 楊昕蕾 on 2021/7/19.
//

import UIKit

class ViewController: UIViewController {
    

     var shop = ["丸亀製麵", "人从众厚切牛排", "烏弄", "福樂寶早午餐", "More飯養生飯糰", "Subway", "Isaac Coffee & Toast", "豆腐村", "爭鮮迴轉"]
     
     var img = ["order1.png", "order2.png", "order3.png", "order4.png","order5.png", "order6.png", "order7.png", "order8.png", "order9.png"]
     
     var secondLbl = ["3份餐點・360TWD", "2份餐點・421TWD", "2份餐點・150TWD", "5份餐點・250TWD", "2份餐點・160TWD", "2份餐點・383TWD", "2份餐點・307TWD", "1份餐點・389TWD", "4份餐點・375TWD"]
     
     var thirdLbl = ["7月18日・已完成",  "7月17日・已完成", "7月17日・已完成", "7月16日・已完成", "7月15日・已完成", "7月14日・已完成", "7月14日・已完成","7月13日・已完成", "7月12日・已完成"]
     
     
    @IBOutlet weak var orderTableView: UITableView!
    
     override func viewDidLoad() {
         super.viewDidLoad()
         
         orderTableView.dataSource = self
         
     }

 }


 extension ViewController: UITableViewDataSource {
     

     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
     
     return shop.count
         
     }

     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = orderTableView.dequeueReusableCell(withIdentifier: "orderCell") as! orderTVC
     let firstLbl = shop[indexPath.row]
     let secondLbl = secondLbl[indexPath.row]
     let thirdLbl = thirdLbl[indexPath.row]
     
     cell.firstLbl.text = firstLbl
     cell.orderImgView.image = UIImage(named: img[indexPath.row])
     cell.secondLbl.text = secondLbl
     cell.thirdLbl.text = thirdLbl
         
     
     return cell
         
     }

 }


