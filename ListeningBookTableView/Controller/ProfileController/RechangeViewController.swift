
import UIKit

class RechangeViewController: UIViewController {
    
    var tableView: UITableView = {
        var tableview = UITableView(frame: .zero, style: .grouped)
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        tableview.register(RechangeTableViewCell.self, forCellReuseIdentifier: "RechangeTableViewCell")
        tableview.register(InterestsTableViewCell.self, forCellReuseIdentifier: "InterestsTableViewCell")
        tableview.register(FooterRechange.self, forHeaderFooterViewReuseIdentifier: "FooterRechange")
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
        setUpUI()
        setUpConstraints()
    }
    func setUpUI(){
        self.tableView.separatorStyle = .none
        tableView.dataSource = self
        tableView.delegate = self
        self.view.addSubview(tableView)
        self.view.addSubview(backButon)
        
        backButon.addTarget(self, action: #selector(doBackButton), for: .touchUpInside)
    }
    func setUpConstraints(){
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
extension RechangeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {return "Rechange"}
        else {
            return "Interest"
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
       let title = UILabel()
        title.frame = CGRect(x: 20, y: 8, width: 320, height: 100)
        title.font = .systemFont(ofSize: 27)
        title.text = self.tableView(tableView, titleForHeaderInSection: section)
        
        let headerView = UIView()
        headerView.addSubview(title)
        
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        if section == 0 {
            return nil
        }
        let footer = tableView.dequeueReusableHeaderFooterView(withIdentifier: "FooterRechange") as! FooterRechange
        return footer
    }
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForFooterInSection section: Int) -> CGFloat {
        return 300
    }
}
extension RechangeViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {return 3}
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "RechangeTableViewCell", for: indexPath) as! RechangeTableViewCell
            cell.backgroundColor = .clear
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "InterestsTableViewCell", for: indexPath) as! InterestsTableViewCell
        cell.backgroundColor = .white
        return cell
    }
    
    
}
