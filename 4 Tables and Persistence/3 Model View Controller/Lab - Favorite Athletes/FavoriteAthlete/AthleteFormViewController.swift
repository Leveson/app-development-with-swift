//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Tshaka Lekholoane on 09/06/2019.
//

import UIKit

class AthleteFormViewController: UIViewController {
    
    struct PropertyKeys {
        static let unwind = "UnwindToAthleteTable"
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    var athlete: Athlete?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        updateView()
    }
    
    func updateView() {
        guard let athelte = athlete else {return}
        
        nameTextField.text = athelte.name
        ageTextField.text = athelte.age
        leagueTextField.text = athelte.league
        teamTextField.text = athelte.team
    }

    
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let name = nameTextField.text,
            let age = ageTextField.text,
            let league = leagueTextField.text,
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
    }
    
}
