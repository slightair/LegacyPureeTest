import Puree

class ScreenActivityFilter: PURFilter {
    override func logs(object: Any, tag: String, captured: String?) -> [PURLog] {
        guard let screenName = object as? String else {
            fatalError("unexpected log object")
        }
        return [PURLog(tag: tag, date: logger.currentDate(), userInfo: ["screenName": screenName])]
    }
}
