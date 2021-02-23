//
//  PostTableViewCell.swift
//  Vidstagram
//
//  Created by Sergey Zaycev on 23.02.2021.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    static let cellIdentifier = "PostTableViewCell"
    
    // MARK: Views
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.spacing = 4
        stack.axis = .vertical
        return stack
    }()
    
    private let headerStackView: UIStackView = {
        let stack = UIStackView()
        stack.spacing = 4
        stack.axis = .horizontal
        stack.alignment = .firstBaseline
        return stack
    }()
    

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14)
        label.numberOfLines = 0
        return label
    }()
    
    private let usernameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .black
        return label
    }()
    
    private let timeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = .systemGray
        return label
    }()
    
    
    // MARK: - Initialization
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(headerStackView)
        stackView.addArrangedSubview(titleLabel)
        headerStackView.addArrangedSubview(usernameLabel)
        headerStackView.addArrangedSubview(timeLabel)
        
        NSLayoutConstraint.activate([
//            heightAnchor.constraint(greaterThanOrEqualToConstant: 15),
            
            stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 8),
            stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -8),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8),
        ])
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: - Life Cycle
    override func prepareForReuse() {
        super.prepareForReuse()
        titleLabel.text = nil
        usernameLabel.text = nil
        timeLabel.text = nil
    }
    
    
    // MARK: - Setup
    func setup(from post: PostPresentationModel) -> PostTableViewCell {
        titleLabel.text = post.title
        usernameLabel.text = post.creatorName
        timeLabel.text = post.publicationDate
        return self
    }
}
