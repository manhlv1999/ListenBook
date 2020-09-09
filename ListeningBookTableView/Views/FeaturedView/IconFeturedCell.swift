import UIKit

class IconFeturedCell: UICollectionViewCell {
    
    var imageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_featered")
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.alignment = .center
        stackview.spacing = 5
        stackview.backgroundColor = .orange
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var backgroundStack: UIView = {
        var view = UIView()
        view.backgroundColor = .orange
        view.layer.cornerRadius = 5
        view.widthAnchor.constraint(equalToConstant: 26).isActive = true
        view.heightAnchor.constraint(equalToConstant: 36).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var starImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_star")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var numberStarLabel: UILabel = {
        var label = UILabel()
        label.text = "5.0"
        label.font = .boldSystemFont(ofSize: 13)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "The Forgotten Hours"
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var princeLabel: UILabel = {
        var label = UILabel()
        label.text = "$ 2.99"
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.addSubview(imageView)
        self.addSubview(backgroundStack)
        self.addSubview(stackView)
        stackView.addArrangedSubview(starImageView)
        stackView.addArrangedSubview(numberStarLabel)
        self.addSubview(titleLabel)
        self.addSubview(princeLabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            imageView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            imageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            
            stackView.trailingAnchor.constraint(equalTo: self.backgroundStack.trailingAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: self.backgroundStack.topAnchor, constant: 4),
            stackView.leadingAnchor.constraint(equalTo: self.backgroundStack.leadingAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: self.backgroundStack.bottomAnchor, constant: -2),
            
            backgroundStack.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            backgroundStack.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            titleLabel.topAnchor.constraint(equalTo: self.imageView.bottomAnchor, constant: 20),
            
            princeLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0),
            princeLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 0),
            princeLabel.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 20),
            princeLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
