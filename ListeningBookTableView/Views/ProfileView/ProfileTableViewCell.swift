import UIKit

class ProfileTableViewCell: UITableViewCell {
    
    var backGroundViews: UIView = {
        var view = UIView()
        view.layer.cornerRadius = 10
        view.heightAnchor.constraint(equalToConstant: 64).isActive = true
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.distribution = .fill
        stackview.axis = .horizontal
        stackview.spacing = 10
        stackview.alignment = .center
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var iconImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 10
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "icon_rechange")
        imageview.widthAnchor.constraint(equalToConstant: 20).isActive = true
        imageview.heightAnchor.constraint(equalTo: imageview.heightAnchor, constant: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Rechange"
        label.heightAnchor.constraint(equalToConstant: 20).isActive = true
        label.font = .systemFont(ofSize: 19)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var paypalButton: UIButton = {
        var button = UIButton()
        button.heightAnchor.constraint(equalToConstant: 29).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.setImage(UIImage(named: "image_paypal"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var masterButton: UIButton = {
        var button = UIButton()
        button.heightAnchor.constraint(equalToConstant: 29).isActive = true
        button.widthAnchor.constraint(equalToConstant: 44).isActive = true
        button.setImage(UIImage(named: "image_master"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var nextButton: UIButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "icon_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var data: cellModel! {
        didSet {
            fillData()
        }
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.selectionStyle = .none
        self.addSubview(backGroundViews)
        self.addSubview(stackView)
        stackView.addArrangedSubview(iconImageView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(paypalButton)
        stackView.addArrangedSubview(masterButton)
        stackView.addArrangedSubview(nextButton)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            backGroundViews.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            backGroundViews.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            backGroundViews.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            backGroundViews.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            stackView.leadingAnchor.constraint(equalTo: self.backGroundViews.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.backGroundViews.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.backGroundViews.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: self.backGroundViews.bottomAnchor, constant: -20)
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
    func fillData(){
        if data == nil {return}
        
        iconImageView.image = UIImage(named: data.icon)
        titleLabel.text = data.title
        
        let paypal = UIImage(named: data.paypalbutton)
        if paypal != nil {
            paypalButton.isHidden = false
        }else {
            paypalButton.isHidden = true
        }
        let master = UIImage(named: data.masterbutton)
        if master != nil {
            masterButton.isHidden = false
        }else {
            masterButton.isHidden = true
        }
        
    }

}
