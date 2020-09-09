import UIKit

class FeturedCell: UITableViewCell {
    
    var bookImagaView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "image_detail")
        imageview.heightAnchor.constraint(equalToConstant: 176).isActive = true
        imageview.widthAnchor.constraint(equalToConstant: 120).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var backgroundViews: UIView = {
        let screenWidth = UIScreen.main.bounds.width - 40
        var view = UIView()
        view.widthAnchor.constraint(equalToConstant: screenWidth).isActive = true
        view.heightAnchor.constraint(equalToConstant: screenWidth / 335 * 150).isActive = true
        view.layer.cornerRadius = 10
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .vertical
        stackview.spacing = 10
        stackview.distribution = .fill
        stackview.alignment = .leading
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "The Forgetten Hours"
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 27)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitleLabel: UILabel = {
        var label = UILabel()
        label.text = "Sarah Perez"
        label.font = .systemFont(ofSize: 15)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var starImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.image = UIImage(named: "icon_star")
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var priceLabel: UILabel = {
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
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    func setUpUI(){
        self.selectionStyle = .none
        self.addSubview(backgroundViews)
        self.addSubview(bookImagaView)
        self.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(subTitleLabel)
        stackView.addArrangedSubview(starImageView)
        stackView.addArrangedSubview(priceLabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            backgroundViews.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            backgroundViews.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            backgroundViews.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            backgroundViews.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -26),
            
            bookImagaView.leadingAnchor.constraint(equalTo: self.backgroundViews.leadingAnchor, constant: 0),
            bookImagaView.topAnchor.constraint(equalTo: self.backgroundViews.topAnchor, constant: -26),
            bookImagaView.bottomAnchor.constraint(equalTo: self.backgroundViews.bottomAnchor, constant: 0),
            
            stackView.leadingAnchor.constraint(equalTo: self.bookImagaView.trailingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.backgroundViews.trailingAnchor, constant: 0),
            stackView.topAnchor.constraint(equalTo: self.bookImagaView.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: self.bookImagaView.bottomAnchor, constant: -20)
        ])
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
