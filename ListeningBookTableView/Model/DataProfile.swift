import Foundation

class cellModel {
    var icon = ""
    var title = ""
    var paypalbutton = ""
    var masterbutton = ""
    
    init(icon: String, title: String, paypalbutton: String, masterbutton: String) {
        self.icon = icon
        self.title = title
        self.paypalbutton = paypalbutton
        self.masterbutton = masterbutton
    }
}
struct HeaderAction {
    var title = ""
    var subtitle = ""
}
class HeaderModels {
    var avatar = ""
    var name = ""
    var action = [HeaderAction]()
    
    init(avatar: String, name: String, action: [HeaderAction]) {
        self.avatar = avatar
        self.name = name
        self.action = action
    }
}
class SectionModel {
    var header: HeaderModels
    var items = [cellModel]()
    
    init(header: HeaderModels, items: [cellModel]) {
        self.header = header
        self.items = items
    }
    class func getList() -> [SectionModel] {
        return [
            SectionModel(header: HeaderModels(avatar: "image_avatar", name: "Adele", action: [HeaderAction(title: "Type", subtitle: "Ordinary"), HeaderAction(title: "Expiry", subtitle: "314"), HeaderAction(title: "Follower", subtitle: "303,322")]),
                items: [
                        cellModel(icon: "icon_rechange", title: "Rechange", paypalbutton: "image_paypal", masterbutton: "image_master"),
                        cellModel(icon: "icon_puchase", title: "Puchase", paypalbutton: "", masterbutton: ""),
                        cellModel(icon: "icon_favorite", title: "Favoraties", paypalbutton: "", masterbutton: ""),
                        cellModel(icon: "icon_puchase", title: "About Us", paypalbutton: "", masterbutton: ""),
                        cellModel(icon: "icon_puchase", title: "Setting", paypalbutton: "", masterbutton: ""),
            ])
        ]
    }
}
