import UIKit

class HeaderAboutusProfileView: UITableViewHeaderFooterView {
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 20
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    
    var bookImageView: UIImageView = {
        var imageview = UIImageView()
        //imageview.image = UIImage(named: "")
        imageview.backgroundColor = .orange
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.widthAnchor.constraint(equalTo: imageview.heightAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Listen Book"
        label.font = .systemFont(ofSize: 21)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "V1.2.0"
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(stackView)
        stackView.addArrangedSubview(bookImageView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subTitleLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 100),
            stackView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}
