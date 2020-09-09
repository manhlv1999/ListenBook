
import UIKit

class ProfileViewController: UIViewController {
    
    var tableView: UITableView = {
        var tableview = UITableView(frame: .zero, style: .grouped)
        tableview.rowHeight = UITableView.automaticDimension
        tableview.estimatedRowHeight = 200
        tableview.backgroundColor = UIColor(red: 248/255, green: 248/255, blue: 248/255, alpha: 1)
        tableview.register(ProfileTableViewCell.self, forCellReuseIdentifier: "ProfileTableViewCell")
        tableview.register(HeaderProfileView.self, forHeaderFooterViewReuseIdentifier: "HeaderProfileView")
        tableview.translatesAutoresizingMaskIntoConstraints = false
        return tableview
    }()
    var dataSource = [SectionModel]() {
        didSet {
            tableView.reloadData()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUI()
        setUpConstraints()
        dataSource = SectionModel.getList()
    }
    func setUpUI(){
        self.tableView.separatorStyle = .none
        self.view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
    }
    func setUpConstraints(){
        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 0),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: 0),
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 0),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: 0),
        ])
    }
}
extension ProfileViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: "HeaderProfileView") as! HeaderProfileView
        header.backgroundColor = UIColor(red: 242/255, green: 242/255, blue: 242/255, alpha: 1)
        header.data = dataSource[section].header
        return header
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return UITableView.automaticDimension
    }
    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
        return 500
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            let rechangeViewController = RechangeViewController()
            rechangeViewController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(rechangeViewController, animated: true)
        }
        else if indexPath.row == 1 {
            let purchageViewcontroller = PurchaseViewController()
            purchageViewcontroller.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(purchageViewcontroller, animated: true)
        }
        else if indexPath.row == 2 {
            let favoriteViewController = FavoritesViewController()
            favoriteViewController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(favoriteViewController, animated: true)
        }
        else if indexPath.row == 3 {
            let aboutViewController = AboutusViewController()
            aboutViewController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(aboutViewController, animated: true)
        }
        else if indexPath.row == 4 {
            let addressViewController = AddressViewController()
            addressViewController.hidesBottomBarWhenPushed = true
            self.navigationController?.pushViewController(addressViewController, animated: true)
        }
    }
}
extension ProfileViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileTableViewCell", for: indexPath) as! ProfileTableViewCell
        cell.backgroundColor = .clear
        cell.data = dataSource[indexPath.section].items[indexPath.row]
        return cell
    }
    
    
}
