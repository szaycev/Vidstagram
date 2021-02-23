//
//  NewPostViewController.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import UIKit
import Firebase
import FirebaseFirestore
import Photos
import PhotosUI

class NewPostViewController: UIViewController {
    
    //MARK: Injection
    var presenter: NewPostPresenterProtocol!
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var titleTextField: UITextField!
    
    
    //MARK: - IBActions
    @IBAction func publishPost(_ sender: UIButton) {
        guard let creatorUID = Auth.auth().currentUser?.uid,
              let creatorName = Auth.auth().currentUser?.displayName,
              let title = titleTextField.text else {
            return
        }
        presenter.createPost(.init(creator: creatorUID, creatorName: creatorName, title: title))
    }
    
    @IBAction func selectVideo(_ sender: UIButton) {
        
    }
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


//MARK: - Protocol Implementation
extension NewPostViewController: NewPostViewProtocol {
   
    func dissmissScreen(animated: Bool) {
        dismiss(animated: animated)
    }
}
