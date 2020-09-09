import Foundation
class HeaderModel {
    var title = ""
    var button = ""
    
    init(title: String, button: String) {
        self.title = title
        self.button = button
    }
    class func getList() -> [HeaderModel] {
        return [
            HeaderModel(title: "Home", button: "icon_homes"),
            HeaderModel(title: "Featured", button: "icon_next"),
            HeaderModel(title: "Latasted", button: "icon_next"),
            HeaderModel(title: "Course", button: "icon_next"),
        ]
    }
}

