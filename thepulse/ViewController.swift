//
//  ViewController.swift
//  thepulse
//
//  Created by Kimate Richards on 4/26/16.
//  Copyright © 2016 designmind. All rights reserved.
//

import UIKit
import CoreData
import Google

class ViewController: UIViewController, GIDSignInUIDelegate{

    @IBOutlet weak var signInGoogleButton: GIDSignInButton!
    @IBOutlet weak var emailLbl: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        GIDSignIn.sharedInstance().uiDelegate = self
        GIDSignIn.sharedInstance().signInSilently()
        signInGoogleButton.style = GIDSignInButtonStyle.Wide
        signInGoogleButton.colorScheme = GIDSignInButtonColorScheme.Dark
    
        
        let fetchRequest = NSFetchRequest(entityName: "GooglePersonEntity")
        let managedObjectContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        do{
            
            let fetchedEntity = try managedObjectContext.executeFetchRequest(fetchRequest) as! [GooglePersonEntity]
            let email = fetchedEntity.first?.email
            if (email != " " ){
                signInGoogleButton.hidden = true
                emailLbl.text = email
            }
            
            
        }catch{
            fatalError("ooooo \(error)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

