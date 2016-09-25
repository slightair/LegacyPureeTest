import Foundation
import Puree

class GenericLogger {
    static let shared = GenericLogger()
    let pureeLogger: PURLogger

    init() {
        let configuration = PURLoggerConfiguration()
        configuration.filterSettings = [
            PURFilterSetting(filter: ScreenActivityFilter.self, tagPattern: "activity.screen")
        ]
        configuration.outputSettings = [
            PUROutputSetting(output: ConsoleOutput.self, tagPattern: "activity.**")
        ]
        pureeLogger = PURLogger(configuration: configuration)
    }

    func addScreenActivity(screenName: String) {
        pureeLogger.post(screenName, tag: "activity.screen")
    }
}
