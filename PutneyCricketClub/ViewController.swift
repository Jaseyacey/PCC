//
//  ViewController.swift
//  PutneyCricketClub
//
//  Created by Jason Beedle on 27/05/2020.
//  Copyright © 2020 Jason. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        // Declaring the Database
        let db = Firestore.firestore()
           db.collection ("members").addDocument(data:
           [
           "FirstName" : "Jason",
           "LastName":"Beedle",
           "Nickname": "Truckfist275",
           "Overs Bowled": 210,
           "Runs": 973,
           "Maidens": 21,
           "Wickets": 48,
           "Average": 20.27,
           ])
    }
}

