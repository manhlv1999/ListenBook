import UIKit

class AddressViewController: UIViewController {

 var tableView: UITableView = {
        var tableview = UITableView(frame: .zero, style: .grouped)
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        tableview.register(AddressTableViewCell.self, forCellReuseIdentifier: "AddressTableViewCell")
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
extension AddressViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Mailling"
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let title = UILabel()
        title.frame = CGRect(x: 20, y: 8, width: 320, height: 120)
        title.font = .systemFont(ofSize: 27)
        title.text = self.tableView(tableView, titleForHeaderInSection: section)
        
        let headerView = UIView()
        headerView.addSubview(title)
        return headerView
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let button = UIButton()
        
        button.setTitle("Save", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = .orange
        button.layer.cornerRadius = 5
        button.frame = CGRect(x: 20, y: 20, width: UIScreen.main.bounds.width - 40, height: 44)
        
        let footerView = UIView()
        footerView.addSubview(button)
        return footerView
    }
}
extension AddressViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AddressTableViewCell", for: indexPath) as! AddressTableViewCell
        cell.backgroundColor = .clear
        return cell
    }
}
