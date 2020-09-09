import UIKit

class DetailCoursePlayViewController: UIViewController {
    
    var backButon: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_backs"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func doBackButton(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    var videoImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_coureplay")
        imageview.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.width / 375 * 256).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var tryButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .orange
        button.setImage(UIImage(named: "icon_play"), for: .normal)
        button.setTitle("Try", for: .normal)
        button.layer.cornerRadius = 22
        button.widthAnchor.constraint(equalToConstant: 114).isActive = true
        button.heightAnchor.constraint(equalToConstant: 44).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Salad Perez"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .systemGray
        label.widthAnchor.constraint(equalToConstant: 90).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var timeLabel: UILabel = {
        var label = UILabel()
        label.text = "12'45''"
        label.font = .systemFont(ofSize: 13)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var likeButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_like"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var pageView: UIView = {
        var view = UIView()
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var scrollView: UIScrollView = {
        var scrollview = UIScrollView()
        scrollview.heightAnchor.constraint(equalToConstant: 20).isActive = true
        scrollview.showsHorizontalScrollIndicator = false
        scrollview.backgroundColor = .clear
        scrollview.contentSize = CGSize(width: 1000, height: 1000)
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        return scrollview
    }()
    var pageControlStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.distribution = .fillEqually
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var introButton: UIButton = {
        var button = UIButton()
        button.setTitle("Introduction", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var coureButton: UIButton = {
        var button = UIButton()
        button.setTitle("Coure", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.titleLabel?.font = .systemFont(ofSize: 25)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var commentButton: UIButton = {
        var button = UIButton()
        button.setTitle("Comments", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    let pageViewController = PagedDetailCoureViewController()
    
    @objc func doMoveIntroview(){
        pageViewController.setViewIndex(index: 0)
    }
    @objc func doMoveCoureView(){
        pageViewController.setViewIndex(index: 1)
    }
    @objc func doMoveCommentView(){
        pageViewController.setViewIndex(index: 2)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        view.backgroundColor = .white
        self.view.addSubview(videoImageView)
        self.view.addSubview(backButon)
        self.view.addSubview(tryButton)
        self.view.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(timeLabel)
        stackView.addArrangedSubview(likeButton)
        self.view.addSubview(pageView)
        pageView.addSubview(pageViewController.view)
        pageView.addSubview(scrollView)
        scrollView.addSubview(pageControlStackView)
        pageControlStackView.addArrangedSubview(introButton)
        pageControlStackView.addArrangedSubview(coureButton)
        pageControlStackView.addArrangedSubview(commentButton)
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        backButon.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
        introButton.addTarget(self, action: #selector(doMoveIntroview), for: .touchUpInside)
        coureButton.addTarget(self, action: #selector(doMoveCoureView), for: .touchUpInside)
        commentButton.addTarget(self, action: #selector(doMoveCommentView), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            videoImageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            videoImageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            videoImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            
            backButon.leadingAnchor.constraint(equalTo: self.videoImageView.leadingAnchor, constant: 30),
            backButon.topAnchor.constraint(equalTo: self.videoImageView.topAnchor, constant: 80),
            
            tryButton.centerXAnchor.constraint(equalTo: self.videoImageView.centerXAnchor, constant: 0),
            tryButton.centerYAnchor.constraint(equalTo: self.videoImageView.centerYAnchor, constant: 0),
            
            stackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            stackView.topAnchor.constraint(equalTo: self.videoImageView.bottomAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            
            pageView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            pageView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            pageView.topAnchor.constraint(equalTo: self.stackView.bottomAnchor, constant: 10),
            pageView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            scrollView.topAnchor.constraint(equalTo: self.pageView.topAnchor, constant: 20),
            scrollView.leadingAnchor.constraint(equalTo: self.pageView.leadingAnchor, constant: 20),
            scrollView.trailingAnchor.constraint(equalTo: self.pageView.trailingAnchor, constant: 0),
            
            pageControlStackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 0),
            pageControlStackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: 0),
            pageControlStackView.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor, constant: 0),
            
            pageViewController.view.topAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: 20),
            pageViewController.view.bottomAnchor.constraint(equalTo: pageView.bottomAnchor, constant: 20),
            pageViewController.view.leadingAnchor.constraint(equalTo: pageView.leadingAnchor, constant: 0),
            pageViewController.view.trailingAnchor.constraint(equalTo: pageView.trailingAnchor, constant: 0),

        ])
    }
}
