
import UIKit

class InterestsTableViewCell: UITableViewCell {
    
    var imageViews: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_inter")
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Every day low as 1 yuan, all the books are good"
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subtitleLabel: UILabel = {
        var label = UILabel()
        label.text = "During the memberships period, all the gegular listening produts are listned to. UPdate daily, one book a day 365 books a years"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 13)
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.selectionStyle = .none
        self.addSubview(imageViews)
        self.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subtitleLabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageViews.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageViews.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            
            stackView.leadingAnchor.constraint(equalTo: self.imageViews.trailingAnchor, constant: 10),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
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
