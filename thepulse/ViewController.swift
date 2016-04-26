//
//  ViewController.swift
//  thepulse
//
//  Created by Kimate Richards on 4/26/16.
//  Copyright © 2016 designmind. All rights reserved.
//

import UIKit
import GoogleAPIs
import Google

class ViewController: UIViewController, GIDSignInUIDelegate{

    @IBOutlet weak var signInGoogleButton: GIDSignInButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

