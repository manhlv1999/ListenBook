import UIKit

class AboutusFooterView: UITableViewHeaderFooterView {
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.distribution = .fillEqually
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    
    var twitterButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_twitter"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var facebookButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_facebook"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var googleButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_google"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var instagramButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_instrgam"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var githubButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_github"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(stackView)
        stackView.addArrangedSubview(twitterButton)
        stackView.addArrangedSubview(facebookButton)
        stackView.addArrangedSubview(googleButton)
        stackView.addArrangedSubview(instagramButton)
        stackView.addArrangedSubview(githubButton)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
