import UIKit

class TabBarView: UIView {
    
    var tabBarButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_list"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var titleLabel: UILabel = {
        var label = UILabel()
        label.text = "1/12"
        label.textColor = .systemGray
        label.font = .systemFont(ofSize: 13)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.addSubview(tabBarButton)
        self.addSubview(titleLabel)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            tabBarButton.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            tabBarButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            
            titleLabel.topAnchor.constraint(equalTo: self.tabBarButton.bottomAnchor, constant: 5),
            titleLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0)
        ])
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
