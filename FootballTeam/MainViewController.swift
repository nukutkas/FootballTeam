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
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = footballclubNames[indexPath.row]
        cell.imageView?.image = UIImage(named: footballclubNames[indexPath.row])

        return cell
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
