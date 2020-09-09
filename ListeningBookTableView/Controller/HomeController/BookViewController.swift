import UIKit

class BookViewController: UIViewController {

    var scrollView: UIScrollView = {
        var scrollview = UIScrollView()
        scrollview.heightAnchor.constraint(equalToConstant: 55).isActive = true
        scrollview.showsHorizontalScrollIndicator = false
        scrollview.backgroundColor = .clear
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        return scrollview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.spacing = 30
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var featuredButton: UIButton = {
        var button = UIButton()
        button.setTitle("Featured", for: .normal)
        button.contentHorizontalAlignment = .left
        button.titleLabel?.font = .systemFont(ofSize: 23)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var listenButton: UIButton = {
        var button = UIButton()
        button.setTitle("Listen", for: .normal)
        button.contentHorizontalAlignment = .left
        button.titleLabel?.font = .systemFont(ofSize: 23)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var freeColumButton: UIButton = {
        var button = UIButton()
        button.setTitle("Free Colum", for: .normal)
        button.contentHorizontalAlignment = .left
        button.titleLabel?.font = .systemFont(ofSize: 23)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var insparitonButton: UIButton = {
        var button = UIButton()
        button.setTitle("Inspariton", for: .normal)
        
        button.contentHorizontalAlignment = .left
        button.titleLabel?.font = .systemFont(ofSize: 23)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.black, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var pageViewController = PageViewController()
    
    @objc func doMoveFeatured(){
        pageViewController.setViewControllerIndex(index: 0)
    }
    @objc func doMoveListen(){
        pageViewController.setViewControllerIndex(index: 1)
    }
    @objc func doMoveFreeColum(){
        pageViewController.setViewControllerIndex(index: 2)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setUpConstraints()
    }
    func setupUI(){
        view.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        self.view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        stackView.addArrangedSubview(featuredButton)
        stackView.addArrangedSubview(listenButton)
        stackView.addArrangedSubview(freeColumButton)
        stackView.addArrangedSubview(insparitonButton)
        
        self.view.addSubview(pageViewController.view)
        pageViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        featuredButton.addTarget(self, action: #selector(doMoveFeatured), for: .touchUpInside)
        listenButton.addTarget(self, action: #selector(doMoveListen), for: .touchUpInside)
        freeColumButton.addTarget(self, action: #selector(doMoveFreeColum), for: .touchUpInside)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            scrollView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            scrollView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 44),
            
            stackView.leadingAnchor.constraint(equalTo: self.scrollView.leadingAnchor, constant: 0),
            stackView.trailingAnchor.constraint(equalTo: self.scrollView.trailingAnchor, constant: 0),
            stackView.centerYAnchor.constraint(equalTo: self.scrollView.centerYAnchor, constant: 0),
            
            pageViewController.view.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            pageViewController.view.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            pageViewController.view.topAnchor.constraint(equalTo: self.scrollView.bottomAnchor, constant: 0),
            pageViewController.view.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        ])
    }
}
