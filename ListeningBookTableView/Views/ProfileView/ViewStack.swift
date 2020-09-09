import UIKit

class ViewStack: UIView {
    
    var titlelabel: UILabel = {
        var label = UILabel()
        label.font = .systemFont(ofSize: 15)
        label.textColor = .white
        label.text = "Type"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var subTitlelabel: UILabel = {
        var label = UILabel()
        label.font = .boldSystemFont(ofSize: 17)
        label.textColor = .white
        label.text = "Ordinary"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.backgroundColor = .white
        self.layer.cornerRadius = 10
        self.addSubview(titlelabel)
        self.addSubview(subTitlelabel)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            titlelabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            titlelabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            
            subTitlelabel.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            subTitlelabel.topAnchor.constraint(equalTo: self.titlelabel.bottomAnchor, constant: 10),
            subTitlelabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20),
        ])
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }

}

//subTitlelabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
//subTitlelabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
