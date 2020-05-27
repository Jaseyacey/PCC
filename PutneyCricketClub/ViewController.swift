//
//  ViewController.swift
//  PutneyCricketClub
//
//  Created by Jason Beedle on 27/05/2020.
//  Copyright © 2020 Jason. All rights reserved.
//

import UIKit
import FirebaseUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

// Login Button Below
    @IBAction func loginTapped(_ sender: UIButton) {
        // Get the default Auth UI Object
            let authUI = FUIAuth.defaultAuthUI()
            
            guard authUI != nil else {
                // Log the error
                return
            }
            
            // Set ourselves as the delegate
            authUI?.delegate = self
            authUI?.providers = [FUIEmailAuth()]
            
            
            // Get a reference to the auth UI view contoller
            let authViewController = authUI?.authViewController()
            
            // Show it.
            present(authViewController!, animated: true, completion: nil)
        }
        
        @IBAction func unwindToLogin(segue: UIStoryboardSegue) {}
}

// Navigation functionality
        // logo to navigation
    

extension ViewController: FUIAuthDelegate {
    
    func authUI(_ authUI: FUIAuth, didSignInWith authDataResult: AuthDataResult?, error: Error?) {
        
        // Check if there was an error?
        guard error == nil else {
            // Log the error
            return
        }
//        AuthDataResult?.user.uid
        performSegue(withIdentifier: "goHome", sender: self)
    }
}
