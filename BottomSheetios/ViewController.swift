//
//  ViewController.swift
//  BottomSheetios
//
//  Created by developersancho on 13.06.2018.
//  Copyright © 2018 developersancho. All rights reserved.
//

import UIKit
import AppBottomActionSheet

class ViewController: UIViewController, HalfSheetPresentingProtocol {
    var transitionManager: HalfSheetPresentationManager!
    
    @IBOutlet weak var btnBottomSheet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showBottomSheet(_ sender: Any) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "detailViewController") as! DetailViewController
        presentUsingHalfSheet(vc)
    }
}

