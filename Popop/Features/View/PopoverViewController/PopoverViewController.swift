//
//  PopoverViewController.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 6.06.2023.
//

import UIKit

class PopoverViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    var infoText: String

    init(infoText: String) {
            self.infoText = infoText
            super.init(nibName: "PopoverViewController", bundle: nil)
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            textLabel.text = infoText
        }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
