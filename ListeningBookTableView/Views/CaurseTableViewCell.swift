import UIKit

class CaurseTableViewCell: UITableViewCell {
    
    var imageViews: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "image_course")
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.heightAnchor.constraint(equalToConstant: (UIScreen.main.bounds.width - 40)/335 * 160).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Learn - Online Courses Educational App UI KIT"
        label.numberOfLines = 2
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var recImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 3
        imageview.clipsToBounds = true
        imageview.layer.borderWidth = 0.1
        imageview.image = UIImage(named: "image_rec")
        imageview.widthAnchor.constraint(equalToConstant: 200).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 8).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var numberLabel: UILabel = {
        var label = UILabel()
        label.text = "12/40"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 12)
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
        self.addSubview(titleLabel)
        self.addSubview(stackView)
        stackView.addArrangedSubview(recImageView)
        stackView.addArrangedSubview(numberLabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageViews.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            imageViews.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            imageViews.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            titleLabel.topAnchor.constraint(equalTo: self.imageViews.bottomAnchor, constant: 10),
            
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.titleLabel.bottomAnchor, constant: 10),
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
