import Puree

class EventActivityFilter: PURFilter {
    override func logs(object: Any, tag: String, captured: String?) -> [PURLog] {
        guard let eventName = object as? String else {
            fatalError("unexpected log object")
        }
        return [PURLog(tag: tag, date: logger.currentDate(), userInfo: ["eventName": eventName])]
    }
}
