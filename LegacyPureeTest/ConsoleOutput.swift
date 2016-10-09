import Puree

class ConsoleOutput: PUROutput {
    override func emit(log: PURLog) {
        print("[Immediate]: \(log.date) - \(log.userInfo)")
    }
}
