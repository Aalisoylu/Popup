//
//  MainViewController.swift
//  Popop
//
//  Created by Muhammed Ali SOYLU on 12.06.2023.
//

import UIKit




class MainViewController: UIViewController {

    // MARK: - UI Elements
    
    @IBOutlet weak var popOverButton: UIButton!
    // MARK: - Properties
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Functions
    
    // MARK: - Actions
    @IBAction func popOverButtonTapped(_ sender: Any) {
        // Popover on Button
        let popoverContent = PopoverViewController(infoText: "Succesfully")
        presentPopover(self, popoverContent, sender: popOverButton, size: CGSize(width: 350, height: 130), arrowDirection: .any)
    }
    
    
    @IBAction func postButtonTapped(_ sender: Any) {
        
        let newViewController = JsonPlaceHolderViewController()
        newViewController.modalPresentationStyle = .overCurrentContext
        present(newViewController, animated: true, completion: nil)
        
    }
    
    
    
    
    


}
