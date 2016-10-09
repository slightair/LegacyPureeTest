import Puree

class BufferdConsoleOutput: PURBufferedOutput {
    override func write(chunk: PURBufferedOutputChunk, completion: @escaping (Bool) -> Void) {
        print("[Buffered]:")
        for log in chunk.logs {
            print("\(log.date) - \(log.userInfo)")
        }
        completion(true)
    }
}
