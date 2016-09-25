import Puree

class ConsoleOutput: PUROutput {
    override func emit(log: PURLog) {
        print(log.date)
        print(log.userInfo)
    }
}
