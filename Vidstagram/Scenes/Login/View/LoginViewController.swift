//
//  LoginViewController.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 19.02.2021.
//

import UIKit

class LoginViewController: UIViewController {
    
    //MARK: Injection
    var presenter: LoginPresenterProtocol!
    
    
    //MARK: - IBOutlets
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    @IBOutlet weak var errorLabel: UILabel!
    
    
    //MARK: - IBActions
    @IBAction func login(_ sender: UIButton) {
        presenter.login(with: nameTextField.text, phone: phoneTextField.text)
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
    
    func showError(message: String?) {
        errorLabel.text = message
    }
    
    func presentPostsScene() {
        navigationController?.pushViewController(PostsSceneBuilder.build(), animated: true)
    }
}
