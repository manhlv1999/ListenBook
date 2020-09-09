import UIKit

class PlayDetailBookViewController: UIViewController {
    
    
    var backButon: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var imageView: UIImageView = {
        let screenHeight = UIScreen.main.bounds.height
        var imageview = UIImageView()
        imageview.heightAnchor.constraint(equalToConstant: (screenHeight * 2) / 3).isActive = true
        imageview.image = UIImage(named: "image_detail")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var backgroundImage: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.8)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var bookStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 30
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var bookLabel: UILabel = {
        var label = UILabel()
        label.text = "The Forgotten Hours"
        label.font = .boldSystemFont(ofSize: 27)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var bookImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_detail")
        imageview.layer.cornerRadius = 20
        imageview.clipsToBounds = true
        imageview.heightAnchor.constraint(equalToConstant: 300).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Salad Prezes"
        label.textColor = .darkGray
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var starImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "icon_star")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fillEqually
        stackview.alignment = .center
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var replayButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_replay"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var previousButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "ic_previous"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var playButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_play_circle_filled"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var nextButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_skip_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var forwardButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_forward_30"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var tabBarstackView: UIStackView = {
        var stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.alignment = .center
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    var item1 = TabBarView()
    var item2 = TabBarView()
    var item3 = TabBarView()
    var item4 = TabBarView()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()

        
    }
    @objc func doBackButton(){
        self.navigationController?.popViewController(animated: true)
        
    }
    @objc func doListButton(){
        let listViewController = ListViewController()
        self.navigationController?.pushViewController(listViewController, animated: true)
    }
    func setupUI(){
        view.backgroundColor = .white
        self.view.addSubview(imageView)
        self.view.addSubview(backgroundImage)
        self.view.addSubview(bookStackView)
        bookStackView.addArrangedSubview(bookLabel)
        bookStackView.addArrangedSubview(bookImageView)
        bookStackView.addArrangedSubview(nameLabel)
        bookStackView.addArrangedSubview(starImageView)
        self.view.addSubview(backButon)
        self.view.addSubview(stackView)
        stackView.addArrangedSubview(replayButton)
        stackView.addArrangedSubview(previousButton)
        stackView.addArrangedSubview(playButton)
        stackView.addArrangedSubview(nextButton)
        stackView.addArrangedSubview(forwardButton)
        self.view.addSubview(tabBarstackView)
        tabBarstackView.addArrangedSubview(item1)
        tabBarstackView.addArrangedSubview(item2)
        tabBarstackView.addArrangedSubview(item3)
        tabBarstackView.addArrangedSubview(item4)
        
        backButon.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
        item1.tabBarButton.addTarget(self, action: #selector(doListButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            
            imageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            imageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            
            backgroundImage.leadingAnchor.constraint(equalTo: self.imageView.leadingAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: self.imageView.trailingAnchor, constant: 0),
            backgroundImage.topAnchor.constraint(equalTo: self.imageView.topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 0),
            
            bookStackView.centerXAnchor.constraint(equalTo: self.backgroundImage.centerXAnchor, constant: 0),
            bookStackView.centerYAnchor.constraint(equalTo: self.backgroundImage.centerYAnchor, constant: 0),
            
            backButon.topAnchor.constraint(equalTo: self.backgroundImage.topAnchor, constant: 70),
            backButon.leadingAnchor.constraint(equalTo: self.backgroundImage.leadingAnchor, constant: 40),
            
            stackView.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: self.tabBarstackView.topAnchor, constant: 20),
            
            tabBarstackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tabBarstackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tabBarstackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -20),
            
        ])
    }

}
