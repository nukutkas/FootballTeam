//
//  TeamModel.swift
//  FootballTeam
//
//  Created by Татьяна Кочетова on 21.04.2021.
//

import Foundation

struct Team {
    
    var name: String
    var location: String
    var foundationYear: String
    var image: String
    
  static  let footballclubNames = [
        "Lokomotiv", "CSKA" , "Zenit"
    ]
    
  static  func getTeams() -> [Team] {
        
        var teams = [Team]()
        
        for team in footballclubNames {
            teams.append(Team(name: team, location: "Moscow", foundationYear: "1923", image: team))
        }
        
        return teams
    }
}
