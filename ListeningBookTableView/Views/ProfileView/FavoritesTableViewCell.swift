import UIKit

class FavoritesTableViewCell: UITableViewCell {

    var imageViews: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_detail")
        imageview.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 76).isActive = true
        imageview.layer.cornerRadius = 5
        imageview.clipsToBounds = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.distribution = .fill
        stackview.spacing = 20
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titlelabel: UILabel = {
        var label = UILabel()
        label.numberOfLines = 2
        label.text = "Planner Weekly And Monthly"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitlelabel: UILabel = {
        var label = UILabel()
        label.text = "put forwara (someone of something) with approval as being suitable for a particular pur pose"
        label.textColor = .systemGray
        label.numberOfLines = 3
        label.font = .systemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var timeStackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var timeLabel: UILabel = {
        var label = UILabel()
        label.text = "12:12:12"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var readButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setTitle("Free", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 12)
        button.setTitleColor(UIColor.orange, for: .normal)
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.widthAnchor.constraint(equalToConstant: 50).isActive = true
        button.layer.borderColor = UIColor.orange.cgColor
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
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
        stackView.addArrangedSubview(titlelabel)
        stackView.addArrangedSubview(subTitlelabel)
        stackView.addArrangedSubview(timeStackView)
        timeStackView.addArrangedSubview(timeLabel)
        timeStackView.addArrangedSubview(readButton)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageViews.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageViews.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageViews.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            stackView.leadingAnchor.constraint(equalTo: self.imageViews.trailingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
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
