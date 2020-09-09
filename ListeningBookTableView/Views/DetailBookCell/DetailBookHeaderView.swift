import UIKit

class DetailBookHeaderView: UITableViewHeaderFooterView {
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_detail")
        imageview.heightAnchor.constraint(equalToConstant: 400).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var playButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_play"), for: .normal)
        button.setTitle("Play", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.cornerRadius = 20
        button.backgroundColor = .orange
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var backgroundImage: UIView = {
        var view = UIView()
        view.heightAnchor.constraint(equalToConstant: 400).isActive = true
        view.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 0.95)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var detailImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_detail")
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.widthAnchor.constraint(equalToConstant: 150).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 220).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var tilteLabel: UILabel = {
        var label = UILabel()
        label.text = "The Forgotten Hours"
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "Sarah Perez"
        label.textColor = .systemGray
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
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.addSubview(imageView)
        self.addSubview(backgroundImage)
        self.addSubview(detailImageView)
        self.addSubview(playButton)
        self.addSubview(stackView)
        stackView.addArrangedSubview(tilteLabel)
        stackView.addArrangedSubview(subTitleLabel)
        stackView.addArrangedSubview(starImageView)
        
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            backgroundImage.leadingAnchor.constraint(equalTo: self.imageView.leadingAnchor, constant: 0),
            backgroundImage.trailingAnchor.constraint(equalTo: self.imageView.trailingAnchor, constant: 0),
            backgroundImage.topAnchor.constraint(equalTo: self.imageView.topAnchor, constant: 0),
            backgroundImage.bottomAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 0),
            
            detailImageView.topAnchor.constraint(equalTo: self.backgroundImage.topAnchor, constant: 40),
            detailImageView.centerXAnchor.constraint(equalTo: self.backgroundImage.centerXAnchor, constant: 0),
            
            playButton.leadingAnchor.constraint(equalTo: self.detailImageView.leadingAnchor, constant: 20),
            playButton.trailingAnchor.constraint(equalTo: self.detailImageView.trailingAnchor, constant: -20),
            playButton.bottomAnchor.constraint(equalTo: self.detailImageView.bottomAnchor, constant: 20),
            
            //stackView.topAnchor.constraint(equalTo: self.detailImageView.bottomAnchor, constant: 40),
            stackView.bottomAnchor.constraint(equalTo: self.backgroundImage.bottomAnchor, constant: -20),
            stackView.centerXAnchor.constraint(equalTo: self.backgroundImage.centerXAnchor, constant: 0)
            
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
