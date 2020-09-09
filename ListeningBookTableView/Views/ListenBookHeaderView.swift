

import UIKit

class ListenBookHeaderView: UITableViewHeaderFooterView {
    
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "Home"
        label.font = .systemFont(ofSize: 23)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var nextButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_next"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpConstraints()
    }
    var data: HeaderModel! {
        didSet {
            fillData()
        }
    }
    func setUpUI(){
        self.addSubview(titleLabel)
        self.addSubview(nextButton)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
            
            nextButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            nextButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 30),
            nextButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func fillData() {
        if data == nil {return}
        
        titleLabel.text = data.title
        
        let button = nextButton
        let image = UIImage(named: data.button)
        button.setImage(image, for: .normal)
    }
}

