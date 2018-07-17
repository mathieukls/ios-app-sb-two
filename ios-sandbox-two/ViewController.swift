//
//  ViewController.swift
//  ios-sandbox-two
//
//  Created by Mathieu Stiehl on 17/07/2018.
//  Copyright © 2018 Mathieu Stiehl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var quoteLabel: UILabel!
    

    @IBAction func startTesting(_ sender: UIButton) {
        //original data
        var findings = ["Mathieu sait maintenant faire une application.","J'ai oublié de faire ton lit.",
                        "Seb n'est pas un vrai roux.","Je pars bientôt en vacances."]
        var conclusions = ["Ah mais quel génie !","Je devrais repenser à ma vie.",
                           "Maintenant, plus qu'à démissionner.","Finalement le travail, c'est pas si mal."]
        
        //pickout findings
        let randomIndex1 = Int(arc4random_uniform(UInt32(findings.count)))
        let finding = findings[randomIndex1]
        print (finding)
        
        
        //pickout conclusion
        let randomIndex2 = Int(arc4random_uniform(UInt32(conclusions.count)))
        let conclusion = conclusions[randomIndex2]
        print (conclusion)
        
        
        //  Change label
        let quote = finding + " " + conclusion
        quoteLabel.text = quote
	    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

