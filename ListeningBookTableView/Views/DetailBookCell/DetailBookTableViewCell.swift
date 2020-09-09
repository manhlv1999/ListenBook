import UIKit

class DetailBookTableViewCell: UITableViewCell {
    
    var imageViews: UIImageView = {
        var imageview = UIImageView()
        imageview.backgroundColor = .orange
        imageview.layer.cornerRadius = 4
        imageview.clipsToBounds = true
        imageview.widthAnchor.constraint(equalToConstant: 8).isActive = true
        imageview.heightAnchor.constraint(equalToConstant: 20).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Audio Intrduction"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it In your feeling , works, or family, do you have the experience of do not wiant to do it"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15)
        label.textColor = .systemGray
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
        self.addSubview(subTitleLabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            imageViews.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            imageViews.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            titleLabel.leadingAnchor.constraint(equalTo: self.imageViews.trailingAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            subTitleLabel.topAnchor.constraint(equalTo: self.imageViews.bottomAnchor, constant: 10),
            subTitleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            subTitleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            subTitleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
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
