//
//  QuestViewController.swift
//  CroceRossa2
//
//  Created by Informatica on 23/04/18.
//  Copyright © 2018 Informatica_4Binf. All rights reserved.
//

import UIKit

class QuestViewController: UIViewController{
    
    @IBOutlet weak var labelMalattie: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //labelMalattie.text = Database.malattie.joined(separator: ", ")
    }
    
    
    
    @IBAction func showPopUpMalattie(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUpMalattieID") as! PopUpMalattieViewController
        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    
    @IBAction func showPopUpInterventiChirurgici(_ sender: Any) {
        let popOverVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PopUpInterventiSubitiID") as! PopUpInterventiSubitiViewController;        self.addChildViewController(popOverVC)
        popOverVC.view.frame = self.view.frame
        self.view.addSubview(popOverVC.view)
        popOverVC.didMove(toParentViewController: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
}
