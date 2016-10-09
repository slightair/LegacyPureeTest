import Foundation
import Puree

class GenericLogger {
    static let shared = GenericLogger()
    let pureeLogger: PURLogger

    init() {
        let configuration = PURLoggerConfiguration()
        configuration.filterSettings = [
            PURFilterSetting(filter: ScreenActivityFilter.self, tagPattern: "activity.screen"),
            PURFilterSetting(filter: EventActivityFilter.self, tagPattern: "activity.event"),
        ]
        configuration.outputSettings = [
            PUROutputSetting(output: ConsoleOutput.self, tagPattern: "activity.**"),
            PUROutputSetting(output: BufferdConsoleOutput.self, tagPattern: "activity.**"),
        ]
        pureeLogger = PURLogger(configuration: configuration)
    }

    func addScreenActivity(screenName: String) {
        pureeLogger.post(screenName, tag: "activity.screen")
    }

    func addEventActivity(eventName: String) {
        pureeLogger.post(eventName, tag: "activity.event")
    }
}
