//
//  LoginViewController.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 19.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: - Properties
    var presenter: LoginPresenterProtocol!
    
    
    //MARK: - Views
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    
    //MARK: - Actions
    @IBAction func login(_ sender: UIButton) {
        presenter.login(name: nameTextField.text, phone: phoneTextField.text)
    }
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
}


//MARK: - Protocol Implementation
extension LoginViewController: LoginViewProtocol {
   
    func showError() {
        //TODO: Implementation Error
    }
    
    func presentPostsScene() {
        navigationController?.pushViewController(PostsSceneBuilder.build(), animated: true)
    }
}
