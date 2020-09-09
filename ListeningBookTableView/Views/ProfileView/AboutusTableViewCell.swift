import UIKit

class AboutusTableViewCell: UITableViewCell {
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var imageViews: UIImageView = {
        var imageview = UIImageView()
        imageview.backgroundColor = .orange
        imageview.layer.cornerRadius = 5
        imageview.widthAnchor.constraint(equalToConstant: 8).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Description"
        label.font = .systemFont(ofSize: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.selectionStyle = .none
        self.addSubview(stackView)
        stackView.addArrangedSubview(imageViews)
        stackView.addArrangedSubview(titleLabel)
        self.addSubview(subTitleLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            
            subTitleLabel.topAnchor.constraint(equalTo: self.imageViews.bottomAnchor, constant: 20),
            subTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            subTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            subTitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
