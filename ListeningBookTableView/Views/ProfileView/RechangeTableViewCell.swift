import UIKit

class RechangeTableViewCell: UITableViewCell {
    
    var backgroundCell: UIView = {
        var view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.heightAnchor.constraint(equalToConstant: 64).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.alignment = .center
        stackview.distribution = .fill
        stackview.spacing = 10
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Month Card"
        label.textColor = .systemGray
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label.font = .systemFont(ofSize: 17)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var saleLabel: UILabel = {
        var label = UILabel()
        label.text = "Off 5%"
        label.layer.cornerRadius = 3
        label.layer.borderWidth = 0.2
        label.textColor = .gray
        label.font = .systemFont(ofSize: 13)
        label.textAlignment = .center
        label.widthAnchor.constraint(equalToConstant: 46).isActive = true
        label.heightAnchor.constraint(equalToConstant: 24).isActive = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var priceLabel: UILabel = {
        var label = UILabel()
        label.text = "$ 6"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpConstrainst()
    }
    func setUpUI(){
        self.selectionStyle = .none
        self.addSubview(backgroundCell)
        self.addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(saleLabel)
        stackView.addArrangedSubview(priceLabel)
    }
    func setUpConstrainst(){
        NSLayoutConstraint.activate([
            backgroundCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            backgroundCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            backgroundCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            backgroundCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            
            stackView.leadingAnchor.constraint(equalTo: self.backgroundCell.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.backgroundCell.trailingAnchor, constant: -20),
            stackView.topAnchor.constraint(equalTo: self.backgroundCell.topAnchor, constant: 20),
            stackView.bottomAnchor.constraint(equalTo: self.backgroundCell.bottomAnchor, constant: -20)
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
