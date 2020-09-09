import UIKit

class CommentView: UIViewController {
    
    var tableView: UITableView = {
        var tableview = UITableView()
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.tableFooterView = UIView()
        tableview.register(ConmentTableViewCell.self, forCellReuseIdentifier: "ConmentTableViewCell")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    
    var commentButton: UIButton = {
        var button = UIButton()
        button.backgroundColor = .orange
        button.heightAnchor.constraint(equalToConstant: 54).isActive = true
        button.widthAnchor.constraint(equalTo: button.heightAnchor, multiplier: 1).isActive = true
        button.layer.cornerRadius = 27
        button.setImage(UIImage(named: "icon_write"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }    
    func setupUI(){
        self.tableView.separatorStyle = .none
        self.view.addSubview(tableView)
        self.view.addSubview(commentButton)
        tableView.delegate = self
        tableView.dataSource = self
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            tableView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width),
            
            commentButton.trailingAnchor.constraint(equalTo: self.tableView.trailingAnchor, constant: 20),
            commentButton.bottomAnchor.constraint(equalTo: self.tableView.bottomAnchor, constant: 40),
        ])
    }
}
extension CommentView: UITableViewDelegate {
    
}
extension CommentView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConmentTableViewCell", for: indexPath) as! ConmentTableViewCell
        return cell
    }
}
