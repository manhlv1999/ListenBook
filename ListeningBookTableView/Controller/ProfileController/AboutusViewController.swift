import UIKit

class AboutusViewController: UIViewController {
    
    var tableView: UITableView = {
        var tableview = UITableView(frame: .zero, style: .grouped)
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        tableview.register(AboutusTableViewCell.self, forCellReuseIdentifier: "AboutusTableViewCell")
        tableview.register(HeaderAboutusProfileView.self, forHeaderFooterViewReuseIdentifier: "HeaderAboutusProfileView")
        tableview.register(AboutusFooterView.self, forHeaderFooterViewReuseIdentifier: "AboutusFooterView")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    var backButon: UIButton = {
        var button = UIButton(type: .custom)
        button.setImage(UIImage(named: "icon_back"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    @objc func doBackButton(){
        self.navigationController?.popToRootViewController(animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupConstraints()
    }
    func setupUI(){
        self.tableView.separatorStyle = .none
        self.view.addSubview(tableView)
        self.view.addSubview(backButon)
        tableView.delegate = self
        tableView.dataSource = self
        
        backButon.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
    }
    func setupConstraints(){
        NSLayoutConstraint.activate([
           tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
           tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
           tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
           tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
           
           backButon.leadingAnchor.constraint(equalTo: self.tableView.leadingAnchor, constant: 20),
           backButon.topAnchor.constraint(equalTo: self.tableView.topAnchor, constant: 50)
       ])
    }
}
extension AboutusViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderAboutusProfileView") as! HeaderAboutusProfileView
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 500
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: "AboutusFooterView") as! AboutusFooterView
        return footer
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 300
    }
}
extension AboutusViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutusTableViewCell", for: indexPath) as! AboutusTableViewCell
        return cell
    }
    
    
}
