//
//  MainViewController.swift
//  FootballTeam
//
//  Created by Татьяна Кочетова on 18.04.2021.
//

import UIKit

class MainViewController: UITableViewController {
    
    let teams = Team.getTeams()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teams.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CustomTableViewCell
        
        cell.nameLabel.text = teams[indexPath.row].name
        cell.locationLabel.text = teams[indexPath.row].location
        cell.foundationYearLabel.text = teams[indexPath.row].foundationYear
        cell.imageOfClub.image = UIImage(named: teams[indexPath.row].image)
        cell.imageOfClub.layer.cornerRadius = cell.imageOfClub.frame.size.height / 2
        cell.imageOfClub.clipsToBounds = true

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
    
    @IBAction func cancelAction(_ segue: UIStoryboardSegue) {}

}
