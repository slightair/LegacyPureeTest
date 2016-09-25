import Puree

class ConsoleOutput: PUROutput {
    override func emitLog(_ log: PURLog) {
        print(log.date)
        print(log.userInfo)
    }
}
