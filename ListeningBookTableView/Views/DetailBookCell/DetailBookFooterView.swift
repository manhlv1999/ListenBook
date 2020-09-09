import UIKit

class DetailBookFooterView: UITableViewHeaderFooterView {
    
    var backgroundFooter: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var commentButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_comment"), for: .normal)
        button.setTitle("1.9k", for: .normal)
        button.layer.cornerRadius = 22
        button.widthAnchor.constraint(equalToConstant: 82).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var likeButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_like"), for: .normal)
        button.setTitle("249", for: .normal)
        button.layer.cornerRadius = 22
        button.widthAnchor.constraint(equalToConstant: 82).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 15)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var shareButton: UIButton = {
        var button = UIButton(type: .custom)
        button.layer.cornerRadius = 22
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        button.setImage(UIImage(named: "icon_upward"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(backgroundFooter)
        self.addSubview(stackView)
        stackView.addArrangedSubview(commentButton)
        stackView.addArrangedSubview(likeButton)
        stackView.addArrangedSubview(shareButton)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            backgroundFooter.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            backgroundFooter.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            backgroundFooter.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundFooter.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            stackView.centerXAnchor.constraint(equalTo: self.backgroundFooter.centerXAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: self.backgroundFooter.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: self.backgroundFooter.bottomAnchor, constant: -20)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
