import XCTest
@testable import IMC

class IMCTests: XCTestCase {
    
    var sut: IMCCalculator!

    override func setUp() {
        super.setUp()
        sut = IMCCalculator()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testObesity() {
        
        //Gherking sintaxe
        
        //Given
        let weight = 90.0
        let height = 1.45
        
        //When
        sut.refresh(weight: weight, height: height)
        
        //Then
        let expectedResult = "42: Obesidade"
        XCTAssertEqual(expectedResult, sut.result, "Cálculo não deu o resultado esperado para obesidade!")
    }
    
    func testThinnes12() {
        //Given
        let weight = 45.0
        let height = 1.90
        
        //When
        sut.refresh(weight: weight, height: height)
        
        //Then
        let expectedResult = "12: Magreza"
        XCTAssertEqual(expectedResult, sut.result, "Cálculo não deu  resultado esperado para magreza")
    }

}
