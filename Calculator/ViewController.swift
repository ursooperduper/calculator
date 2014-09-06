import UIKit

//extension Array {
//    mutating func push(val: T) {
//        self.append(val)
//    }
//    
//    mutating func pop() -> T {
//        return self.removeLast()
//    }
//}

class ViewController: UIViewController {
    
    var accumulator: Double = 0.0
    var userInput = "" // User-entered digits
    
    var numStack: [Double] = [] // Number stack
    var opStack: [(Double, Double) -> Double] = [] // Operator stack
    
    @IBOutlet var numField: UITextField!
    @IBOutlet var btnClear: UIButton!
    @IBOutlet var bntEquals: UIButton!
    @IBOutlet var btnAdd: UIButton!
    @IBOutlet var btnSubtract: UIButton!
    @IBOutlet var btnMultiply: UIButton!
    @IBOutlet var btnDivide: UIButton!
    @IBOutlet var btnDecimal: UIButton!
    
    @IBOutlet var btn0: UIButton!
    @IBOutlet var btn1: UIButton!
    @IBOutlet var btn2: UIButton!
    @IBOutlet var btn3: UIButton!
    @IBOutlet var btn4: UIButton!
    @IBOutlet var btn5: UIButton!
    @IBOutlet var btn6: UIButton!
    @IBOutlet var btn7: UIButton!
    @IBOutlet var btn8: UIButton!
    @IBOutlet var btn9: UIButton!

    func handleInput(str: String) {
        userInput += str
        accumulator = Double((userInput as NSString).doubleValue)
        updateDisplay()
    }


    func updateDisplay() {
        numField.text = "\(accumulator)"
    }

    
    
    
    @IBAction func btn0Press(sender: UIButton) {
        handleInput("0")
    }
    
    @IBAction func btn1Press(sender: UIButton) {
        handleInput("1")
    }
    
    @IBAction func btn2Press(sender: UIButton) {
        handleInput("2")
    }
    
    @IBAction func btn3Press(sender: UIButton) {
        handleInput("3")
    }
    
    @IBAction func btn4Press(sender: UIButton) {
        handleInput("4")
    }
    
    @IBAction func btn5Press(sender: UIButton) {
        handleInput("5")
    }

    @IBAction func btn6Press(sender: UIButton) {
        handleInput("6")
    }
    
    @IBAction func btn7Press(sender: UIButton) {
        handleInput("7")
    }
    
    @IBAction func btn8Press(sender: UIButton) {
        handleInput("8")
    }

    @IBAction func btn9Press(sender: UIButton) {
        handleInput("9")
    }
    
    @IBAction func btnDecPress(sender: UIButton) {
        if hasIndex(stringToSearch: userInput, characterToFind: ".") == false {
            handleInput(".")
        }
    }
    
    @IBAction func btnCHSPress(sender: UIButton) {
        println("WORKS!")
    
    }
    
    
    @IBAction func btnACPress(sender: UIButton) {
        userInput = ""
        accumulator = 0
        updateDisplay()
        numStack.removeAll()
        opStack.removeAll()
    }
    
    
    
    func doMath(functor: (Double, Double) -> Double) {
        if userInput == "" {
            return
        }
        if numStack.isEmpty {
            numStack.append(accumulator) // push
        } else {
            
            var oper = opStack.removeLast()
            accumulator = oper(numStack.removeLast(), accumulator)
            numStack.append(accumulator)
            
        }
        userInput = ""
        opStack.append(functor)
        updateDisplay()
    }

    func doEquals() {
        if userInput == "" {
            return
        }
        if !numStack.isEmpty {
            var oper = opStack.removeLast()
            accumulator = oper(numStack.removeLast(), accumulator)
            numStack.append(accumulator)
        }
        userInput = ""
        updateDisplay()
    }
    
    @IBAction func btnPlusPress(sender: UIButton) {
        doMath(add)
    }
    
    @IBAction func btnMinusPress(sender: UIButton) {
        doMath(sub)
    }
    
    @IBAction func btnMultiplyPress(sender: UIButton) {
        doMath(mul)
    }
    
    @IBAction func btnDividePress(sender: UIButton) {
        doMath(div)
    }
    
    @IBAction func btnEqualsPress(sender: UIButton) {
        doEquals()
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
//        for num in nums {
//            println( "A number is \(num)" )
//        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func add(a: Double, b: Double ) -> Double {
        var result = a + b
        return result
    }
    func sub(a: Double, b: Double ) -> Double {
        var result = a - b
        return result
    }
    func mul(a: Double, b: Double ) -> Double {
        var result = a * b
        return result
    }
    func div(a: Double, b: Double ) -> Double {
        var result = a / b
        return result
    }

    

    // Looks for a single character in a string.
    // Returns TRUE if the character is found.
    func hasIndex(stringToSearch str: String, characterToFind chr: Character) -> Bool {
        for c in str {
            if c == chr {
                return true
            }
        }
        return false
    }

}

