import UIKit

class DetailBookViewController: UIViewController {
    
    
    var navigationView: UIView = {
        var view = UIView()
        view.heightAnchor.constraint(equalToConstant: 80).isActive = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var backButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var upwardButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_upward"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var likeButton: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_like"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    var tableView: UITableView = {
        var tableview = UITableView()
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.register(DetailBookTableViewCell.self, forCellReuseIdentifier: "DetailBookTableViewCell")
        tableview.register(DetailBookHeaderView.self, forHeaderFooterViewReuseIdentifier: "DetailBookHeaderView")
        tableview.register(DetailBookFooterView.self, forHeaderFooterViewReuseIdentifier: "DetailBookFooterView")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    @objc func doBackButton(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpConstraints()
        
    }
    func setUpUI(){
        
        self.tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        view.backgroundColor = .white
        self.view.addSubview(tableView)
        self.view.addSubview(navigationView)
        self.view.addSubview(backButton)
        self.view.addSubview(upwardButton)
        self.view.addSubview(likeButton)
        
        backButton.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
            
            navigationView.leadingAnchor.constraint(equalTo: self.tableView.leadingAnchor, constant: 20),
            navigationView.trailingAnchor.constraint(equalTo: self.tableView.trailingAnchor, constant: -20),
            navigationView.topAnchor.constraint(equalTo: self.tableView.topAnchor, constant: 40),
            
            backButton.leadingAnchor.constraint(equalTo: self.navigationView.leadingAnchor, constant: 20),
            backButton.topAnchor.constraint(equalTo: self.navigationView.topAnchor, constant: 40),
            
            upwardButton.trailingAnchor.constraint(equalTo: self.navigationView.trailingAnchor, constant: -20),
            upwardButton.topAnchor.constraint(equalTo: self.navigationView.topAnchor, constant: 40),
            
            likeButton.trailingAnchor.constraint(equalTo: self.navigationView.trailingAnchor, constant: -20),
            likeButton.topAnchor.constraint(equalTo: self.upwardButton.bottomAnchor, constant: 10)
            
            
        ])
    }
    @objc func playButtonTapped(_ sender: UIButton){
        _ = sender.tag
        
        let playDetailBookViewControoler = PlayDetailBookViewController()
        self.navigationController?.pushViewController(playDetailBookViewControoler, animated: true)
    }
}
extension DetailBookViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "DetailBookHeaderView") as! DetailBookHeaderView
        header.playButton.tag = section
        header.playButton.addTarget(self, action: #selector(playButtonTapped(_:)), for: .touchUpInside)
        return header
        
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 700
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: "DetailBookFooterView") as! DetailBookFooterView
        return footer
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 500
    }
}
extension DetailBookViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailBookTableViewCell", for: indexPath) as! DetailBookTableViewCell
        return cell
    }
    
    
}
