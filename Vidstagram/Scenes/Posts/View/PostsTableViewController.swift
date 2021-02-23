//
//  PostsTableViewController.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 20.02.2021.
//

import UIKit
import Firebase

class PostsTableViewController: UITableViewController {
    
    //MARK: Injection
    var presenter: PostsPresenterProtocol!
    
    
    //MARK: - Selectors
    @objc func presentNewPostScene() {
        present(NewPostSceneBuilder.build(), animated: true)
    }
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        presenter.viewDidLoad()
    }
    
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.posts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = presenter.posts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: PostTableViewCell.cellIdentifier, for: indexPath) as! PostTableViewCell
        return cell.setup(from: post)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UIScreen.main.bounds.width + 40
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let postCell = tableView.cellForRow(at: indexPath) as? PostTableViewCell else {
            return
        }
        postCell.isVideoPlaying.toggle()
    }
}

//MARK: - Private
private extension PostsTableViewController {
    func setupViews() {
        navigationItem.setRightBarButton(.init(barButtonSystemItem: .add, target: self,
                                               action: #selector(presentNewPostScene)), animated: true)
        tableView.register(PostTableViewCell.self, forCellReuseIdentifier: PostTableViewCell.cellIdentifier)
    }
}

//MARK: - Protocol Implementation
extension PostsTableViewController: PostsViewProtocol {
    
    func displayPosts() {
        tableView.reloadData()
    }
}
