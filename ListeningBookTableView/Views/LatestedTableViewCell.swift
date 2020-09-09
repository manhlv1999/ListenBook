import UIKit

class LatestedTableViewCell: UITableViewCell {
    
    var imageViews: UIImageView = {
        var imageview = UIImageView()
        imageview.clipsToBounds = true
        imageview.layer.cornerRadius = 10
        imageview.layer.borderWidth = 0.2
        imageview.heightAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.image = UIImage(named: "image_late")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()       
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Blood for Blood"
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "Push hours, London, A packed computer trains is torn part in a colisition"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .systemGray
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var timeStckView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var timeLabel: UILabel = {
        var label = UILabel()
        label.text = "12:35:12"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .systemGray
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
        stackView.addArrangedSubview(subTitleLabel)
        stackView.addArrangedSubview(timeStckView)
        timeStckView.addArrangedSubview(timeLabel)
        timeStckView.addArrangedSubview(princeLabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageViews.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageViews.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            imageViews.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            stackView.leadingAnchor.constraint(equalTo: self.imageViews.trailingAnchor, constant: 10),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
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
