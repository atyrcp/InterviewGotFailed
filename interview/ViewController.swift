//
//  ViewController.swift
//  interview
//
//  Created by 壯兔 on 2018/2/8.
//  Copyright © 2018年 Playsport Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var APItableview: UITableView!
    var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        APIservice.shared.getAPI { (users) in
//            self.users = users
//            DispatchQueue.main.async {
//                self.APItableview.reloadData()
//            }
//        }
        
        let user1 = User(id: 1, name: "asd", sex: "m", age: 20, avatar: "https://cc.tvbs.com.tw/img/upload/2019/04/15/20190415134832-86f24c9d.jpg", description: "sofhwoeifhwiehfoiwehflkwefhlkwe")
        let user2 = User(id: 2, name: "fwf", sex: "b", age: 3, avatar: "https://image.cache.storm.mg/styles/smg-800x533-fp-wm/s3/media/image/2019/05/24/20190524-102142_U13925_M522252_d93d.jpg", description: "hlhfjhwefjwehttps://image.cache.storm.mg/styles/smg-800x533-fp-wm/s3/media/image/2019/05/24/20190524-102142_U13925_M522252_d93d.jpghljhlqwfkhqwhfiqwfhqwhfoqhwf;kjhqkwf")
        let user3 = User(id: 3, name: "fwf", sex: "b", age: 3, avatar: "https://ichef.bbci.co.uk/news/624/cpsprodpb/12A64/production/_101688367_hi046097004_2014.jpg", description: "hlhfjhwefjwehttps://image.cache.storm.mg/styles/smg-800xwefk;wnef;nwefe/2019/05/24/20190524-102142_U13925_M522252_d93d.jpghljhlqwfkhqwhfiqwfhqwhfoqhwf;kjhqkwf")
        let user4 = User(id: 4, name: "fwf", sex: "b", age: 3, avatar: "https://images.chinatimes.com/newsphoto/2019-05-28/900/20190528003301.jpg", description: "hlhfjhwefjwehttps://image.cache.storm.mg/styles/smg-800xwefk;wnef;nwefe/2019/05/225_M522252_d93d.jpghljhlqwfkhqwhfiqwasdasdwwfhqwhfoqhwf;kjhqkaasdasdaswf")
        let user5 = User(id: 5, name: "aswwwwd", sex: "mwewewe", age: 20, avatar: nil, description: "sofhwoeifhwiehfoiwehflkwefhlkwe")
        let user6 = User(id: 6, name: "fwf", sex: "b", age: 3, avatar: "https://s.newtalk.tw/album/news/246/5cd8f65820102.JPG", description: "hlhfjhwefjwehttps://image.cache.storm.mg/styles/smg-800xwefk;wnef;nwefe/2019/05/225_M522252_d93d.jpghljhlqwfkhqwhfiqwasdasdwwfhqwhfoqhwf;kjhqkaasdasdaswf")
        
        users.append(user1)
        users.append(user2)
        users.append(user3)
        users.append(user4)
        users.append(user5)
        users.append(user6)
        
        
    }

}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.user = users[indexPath.row]
        
        return cell
        
    }
    

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(users[indexPath.row].id)
        tableView.reloadData()
    }
}
