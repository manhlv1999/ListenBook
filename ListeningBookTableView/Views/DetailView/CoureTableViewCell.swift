import UIKit

class CoureTableViewCell: UITableViewCell {
    
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var numberLabel: UILabel = {
        var label = UILabel()
        label.text = "1"
        label.textColor = .systemGray
        label.widthAnchor.constraint(equalToConstant: 10).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Course 002"
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var playImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "icon_play_circle")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.selectionStyle = .none
        self.addSubview(stackView)
        stackView.addArrangedSubview(numberLabel)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(playImageView)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
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
