import XCTest
@testable import IMC

class IMCViewControllerTests: XCTestCase {
    
    var sut: ViewController!

    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }

    func testShowResults() {
        //Given
        sut.loadView()
        sut.tfHeight.text = "1.70"
        sut.tfWeight.text = "70"
        
        //When
        sut.calculate(nil)
        
        //Then
        XCTAssertEqual(sut.lbResult.text!, "24: Peso ideal", "Resultado apresentado para o IMC está errado!")
    }
    

}
