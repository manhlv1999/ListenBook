import UIKit

class ConmentTableViewCell: UITableViewCell {

    var backgroundCell: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_avatar")
        imageview.layer.cornerRadius = 32
        imageview.clipsToBounds = true
        imageview.widthAnchor.constraint(equalToConstant: 64).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.widthAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        //stackview.alignment = .leading
        stackview.spacing = 10
        stackview.distribution = .fill
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var nameLabel: UILabel = {
        var label = UILabel()
        label.text = "Maria Lopez"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var commentLabel: UILabel = {
        var label = UILabel()
        label.text = "Lorem ipsum dolor sitamets, consectertur adipicscing elit, sed do "
        label.numberOfLines = 3
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var timeLabel: UILabel = {
        var label = UILabel()
        label.text = "2020-12-12 17:24:22"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
        setupCOnstraints()
    }
    func setupUI(){
        self.selectionStyle = .none
        self.addSubview(avatarImageView)
        self.addSubview(stackView)
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(commentLabel)
        stackView.addArrangedSubview(timeLabel)
    }
    func setupCOnstraints(){
        NSLayoutConstraint.activate([
            avatarImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            
            stackView.leadingAnchor.constraint(equalTo: self.avatarImageView.trailingAnchor, constant: 10),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
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
