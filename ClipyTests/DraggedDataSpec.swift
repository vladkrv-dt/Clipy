import Quick
import Nimble
@testable import Clipy

class DraggedDataSpec: QuickSpec {
    override func spec() {

        describe("NSSecureCoding") {

            it("Archive and unarchive data") {
                let draggedData = CPYDraggedData(type: .folder, folderIdentifier: NSUUID().uuidString, snippetIdentifier: nil, index: 10)
                let data = draggedData.archive()

                let unarchiveData: CPYDraggedData?
                if #available(macOS 10.13, *) {
                    unarchiveData = try? NSKeyedUnarchiver.unarchivedObject(ofClass: CPYDraggedData.self, from: data)
                } else {
                    unarchiveData = NSKeyedUnarchiver.unarchiveObject(with: data) as? CPYDraggedData
                }
                expect(unarchiveData).toNot(beNil())
                expect(unarchiveData?.type) == draggedData.type
                expect(unarchiveData?.folderIdentifier) == draggedData.folderIdentifier
                expect(unarchiveData?.snippetIdentifier).to(beNil())
                expect(unarchiveData?.index) == draggedData.index
            }

        }

    }
}
