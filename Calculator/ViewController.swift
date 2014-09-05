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
    var opStack: [String] = [] // Operator stack
    
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
    
    @IBAction func btnACPress(sender: UIButton) {
        userInput = ""
        accumulator = 0
        updateDisplay()
        // TODO: Clear the stack
    }
    
    
    
    @IBAction func btnEqualsPress(sender: UIButton) {
    }
    
    @IBAction func btnPlusPress(sender: UIButton) {
    }
    
    @IBAction func btnMinusPress(sender: UIButton) {
    }
    
    @IBAction func btnMultiplyPress(sender: UIButton) {
    }
    
    @IBAction func btnDividePress(sender: UIButton) {
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
    
    
    func add(intA: Int, intB: Int ) -> Int {
        var result = intA + intB
        return result
    }
    
//    func getMathematical(fieldNum str: String, operationSymbol oper: String) -> Double {
//        
//        var myDouble = Double((str as NSString).doubleValue)
//        
//        switch oper {
//        case "+":
//            curTotal = myDouble + curTotal
//            curOper = "+"
//            
//        case "-":
//            curTotal = myDouble - curTotal
//            curOper = "-"
//            
//        case "*":
//            curTotal = myDouble * curTotal
//            curOper = "*"
//            
//        case "/":
//            curTotal = myDouble * curTotal
//            curOper = "/"
//            
//        default:
//            println("Something horribly confusing has occurred.")
//        }
//        
//        userInput = ""
//        println(curTotal)
//        numField.text = "\(curTotal)"
//        
//        return curTotal
//    }
    

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

