//
//  MainViewController.swift
//  FootballTeam
//
//  Created by Татьяна Кочетова on 18.04.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let footballclubNames = [
        "Lokomotiv", "CSKA" , "Zenit"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return footballclubNames.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = footballclubNames[indexPath.row]
        cell.imageOfClub.image = UIImage(named: footballclubNames[indexPath.row])
        cell.imageOfClub.layer.cornerRadius = cell.imageOfClub.frame.size.height / 2
        cell.imageOfClub.clipsToBounds = true

        return cell
    }
   
    // MARK: - Table view delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
