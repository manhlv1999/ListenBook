import UIKit

class HeaderProfileView: UITableViewHeaderFooterView {
    
    var avatarImageView: UIImageView = {
        var imageview = UIImageView()
        imageview.layer.cornerRadius = 50
        imageview.clipsToBounds = true
        imageview.image = UIImage(named: "image_avatar")
        imageview.heightAnchor.constraint(equalToConstant: 100).isActive = true
        imageview.widthAnchor.constraint(equalTo: imageview.heightAnchor, multiplier: 1).isActive = true
        imageview.translatesAutoresizingMaskIntoConstraints = false
        return imageview
    }()
    var nameLablel: UILabel = {
        var label = UILabel()
        label.text = "Le Manh"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var stackView: UIStackView = {
        var stackview = UIStackView()
        stackview.axis = .horizontal
        stackview.heightAnchor.constraint(equalToConstant: 120).isActive = true
        stackview.widthAnchor.constraint(equalToConstant: 120).isActive = true
        stackview.alignment = .center
        stackview.spacing = 20
        stackview.distribution = .fillEqually
        stackview.translatesAutoresizingMaskIntoConstraints = false
        return stackview
    }()
    let item1 = ViewStack()
    let item2 = ViewStack()
    let item3 = ViewStack()
    
    
    var data: HeaderModels! {
        didSet {
            fillData()
        }
    }
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.addSubview(avatarImageView)
        self.addSubview(stackView)
        self.addSubview(nameLablel)
        stackView.addArrangedSubview(item1)
        stackView.addArrangedSubview(item2)
        stackView.addArrangedSubview(item3)
        
        item1.backgroundColor = .orange
        item2.backgroundColor = .blue
        item3.backgroundColor = UIColor(red: 238/255, green: 189/255, blue: 10/255, alpha: 1)
        
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            
            avatarImageView.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            avatarImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 40),
            //avatarImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -50),
            
            nameLablel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            nameLablel.topAnchor.constraint(equalTo: self.avatarImageView.bottomAnchor, constant: 20),
            
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            stackView.topAnchor.constraint(equalTo: self.nameLablel.bottomAnchor, constant: 20)
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    func fillData(){
        if data == nil {return}
        
        avatarImageView.image = UIImage(named: data.avatar)
        nameLablel.text = data.name
        
        item1.titlelabel.text = data.action[0].title
        item1.subTitlelabel.text = data.action[0].subtitle
        item2.titlelabel.text = data.action[1].title
        item2.subTitlelabel.text = data.action[1].subtitle
        item3.titlelabel.text = data.action[2].title
        item3.subTitlelabel.text = data.action[2].subtitle
    }
}
