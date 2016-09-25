import Puree

class ScreenActivityFilter: PURFilter {
    override func logs(with object: Any, tag: String, captured: String?) -> [PURLog] {
        let screenName = object as! String
        return [PURLog(tag: tag, date: logger.currentDate(), userInfo: ["screenName": screenName])]
    }
}
