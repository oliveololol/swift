
import UIKit

class ViewController: UIViewController {
    private let mainStackView = UIStackView()
    let oneButton = UIButton()
    let twoButton = UIButton()
    let thirdButton = UIButton()
    let fourButton = UIButton()
    let fiveButton = UIButton()
    let sixButton = UIButton()
    let sevenButton = UIButton()
    let eightButton = UIButton()
    let nineButton = UIButton()
    let plusButton = UIButton()
    let minusButton = UIButton()
    let multiplaireButton = UIButton()
    let fissionButton = UIButton()
    let equaileButton = UIButton()
    let procenteButton = UIButton()
    let plusminusButton = UIButton()
    let deleteButton = UIButton()
    let dotButton = UIButton()
    let zeroButton = UIButton()
    let leftParenthesisButton = UIButton()
    let rightParenthesisButton = UIButton()
    let mcButton = UIButton()
    let mPLButton = UIButton()
    let mMINButton = UIButton()
    let mrButton = UIButton()
    let twoNDButton = UIButton()
    let qudratButton = UIButton()
    let kubButton = UIButton()
    let StepenButton = UIButton()
    let EstepenButton = UIButton()
    let tenstepenXButton = UIButton()
    let oneFissionNumButton = UIButton()
    let korenButton = UIButton()
    let korenKubButton = UIButton()
    let korenStepenButton = UIButton()
    let lnButton = UIButton()
    let logtenButton = UIButton()
    let xOButton = UIButton()
    let sinButton = UIButton()
    let cosButton = UIButton()
    let tanButton = UIButton()
    let eButton = UIButton()
    let EEButton = UIButton()
    let RadButton = UIButton()
    let sinhButton = UIButton()
    let coshButton = UIButton()
    let tanhButton = UIButton()
    let PipiButton = UIButton()
    let RandButton = UIButton()
    
    var allButtons: [UIButton] = []
    var allButtonswidth: [UIButton] = []
    var secondwid: [UIButton] = []
    
    let resultLabel = UILabel()
    private let firstStackView = UIStackView()
    private let secondStackView = UIStackView()
    private let thirdStackView = UIStackView()
    private let fourStackView = UIStackView()
    private let fiveStackView = UIStackView()
    private var AllStackView: [UIStackView] = []
    
    
    private let Label = UILabel()
    
    private var q: Int = 0
    private let Pi:Float = 3.14
    private let e: Float = 2.71
    private var mr: Float?
    private var LabelTextToFloat: Float = 0.0
    private var simvol = ""
    private var peremena = ""
    private var spacingBetweenButtons: CGFloat = (UIScreen.main.bounds.height > UIScreen.main.bounds.width) ? 16 : 8
    let numberBackgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
    let optionsBackgroundColor = #colorLiteral(red: 0.9710975289, green: 0.625523746, blue: 0.04640433192, alpha: 1)
    let otherButtonsBackgroundColor = #colorLiteral(red: 0.2701663375, green: 0.2417458594, blue: 0.2413925231, alpha: 1)
    
    private var bottomcostrainforesultLabel = NSLayoutConstraint()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .black
        allButtons = [oneButton, twoButton,thirdButton,fourButton,fiveButton,sixButton,sevenButton,eightButton,nineButton,plusButton,minusButton,multiplaireButton,fissionButton,equaileButton,procenteButton,plusminusButton,deleteButton,dotButton,zeroButton, leftParenthesisButton, rightParenthesisButton, mcButton, mPLButton, mMINButton, mrButton, twoNDButton, qudratButton, kubButton, StepenButton, tenstepenXButton, oneFissionNumButton, korenButton, korenKubButton, korenStepenButton, lnButton, logtenButton, xOButton, sinButton, cosButton, tanButton, eButton, EEButton, RadButton, sinhButton, coshButton, tanhButton, PipiButton, RandButton,EstepenButton]
        
        AllStackView = [firstStackView, secondStackView, thirdStackView, fourStackView, fiveStackView]
        
        configStackMain()
        configChildStackViews()
        configButtons()
        configResultLabel()
    }
    
    
    
    private func roundButtons() {
        allButtons.forEach {
            $0.layer.cornerRadius = $0.bounds.height / 2
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        roundButtons()
        
    }
    
    override func willRotate(to toInterfaceOrientation: UIInterfaceOrientation, duration: TimeInterval) {
        
        switch toInterfaceOrientation {
        case .portrait, .portraitUpsideDown:
            mainStackView.spacing = spacingBetweenButtons
            allButtons.forEach {
                $0.titleLabel?.font = .systemFont(ofSize: 32)
            }
            
        default:
            spacingBetweenButtons = 8
            mainStackView.spacing = spacingBetweenButtons
            allButtons.forEach {
                $0.titleLabel?.font = .systemFont(ofSize: 16)
            }
            
        }
        
        bottomcostrainforesultLabel.constant = -spacingBetweenButtons
        
        mainStackView.arrangedSubviews.forEach {
            if let stack = $0 as? UIStackView {
                stack.arrangedSubviews.forEach {
                    $0.removeFromSuperview()
                }
            }
        }
        configChildStackViews()
        if UIScreen.main.bounds.height > UIScreen.main.bounds.width {
            // Portrait orientation
            if let labelText = Label.text {
                if labelText.count > 5 {
                    Label.text = String(labelText.prefix(5))
                }
            }
        } else {
            // Landscape orientation
            if let labelText = Label.text {
                if labelText.count > 14 {
                    Label.text = String(labelText.prefix(14))
                }
            }
        }
    }
    
    override func didRotate(from fromInterfaceOrientation: UIInterfaceOrientation) {
        roundButtons()
        setFontForAllLabels()
    }
    
    private func configButtons() {
        testTitleForButtons()
        setBackgroundColorForButtons()
        addTargetsForButtons()
    }
    
    
    private func setFontForAllLabels() {
        if !(UIScreen.main.bounds.height > UIScreen.main.bounds.width) {
            Label.font = .systemFont(ofSize: 30)
            
        } else {
            Label.font = .systemFont(ofSize: 100)
            
        }
        
        allButtons.forEach {
            $0.titleLabel?.font = .systemFont(ofSize: ((UIScreen.main.bounds.height > UIScreen.main.bounds.width) ? 32 : 16))
        }
    }
    
    private func configResultLabel() {
        self.view.addSubview(Label)
        
        Label.translatesAutoresizingMaskIntoConstraints = false
        bottomcostrainforesultLabel = Label.bottomAnchor.constraint(equalTo: mainStackView.topAnchor, constant: -spacingBetweenButtons)
        bottomcostrainforesultLabel.isActive = true
        NSLayoutConstraint.activate([
            Label.leadingAnchor.constraint(equalTo: self.mainStackView.leadingAnchor),
            Label.trailingAnchor.constraint(equalTo: self.mainStackView.trailingAnchor)
        ])
        
        Label.text = "0"
        Label.textAlignment = .right
        setFontForAllLabels()
        
        
        Label.textColor = .white
    }
    
    private func configChildStackViews() {
        if UIScreen.main.bounds.height > UIScreen.main.bounds.width {
            configStackview(stackView: firstStackView, buttons:[deleteButton, plusminusButton, procenteButton, fissionButton] )
            configStackview(stackView: secondStackView, buttons: [sevenButton, eightButton, nineButton, multiplaireButton])
            configStackview(stackView: thirdStackView, buttons: [fourButton, fiveButton, sixButton, minusButton])
            configStackview(stackView: fourStackView, buttons: [oneButton, twoButton, thirdButton, plusButton])
            configStackview(stackView: fiveStackView, buttons: [zeroButton,dotButton,equaileButton])
            
        } else {
            configStackview(stackView: firstStackView, buttons:[leftParenthesisButton, rightParenthesisButton, mcButton,mPLButton, mMINButton, mrButton, deleteButton, plusminusButton, procenteButton, fissionButton] )
            configStackview(stackView: secondStackView, buttons: [twoNDButton, qudratButton, kubButton, StepenButton, EstepenButton, tenstepenXButton, sevenButton, eightButton, nineButton, multiplaireButton])
            configStackview(stackView: thirdStackView, buttons:[oneFissionNumButton, korenButton, korenKubButton, korenStepenButton, lnButton, logtenButton, fourButton, fiveButton, sixButton, minusButton] )
            configStackview(stackView: fourStackView, buttons: [xOButton, sinButton, cosButton, tanButton, eButton, EEButton, oneButton, twoButton, thirdButton, plusButton])
            configStackview(stackView: fiveStackView, buttons: [RadButton,sinhButton,coshButton,tanhButton,PipiButton,RandButton,zeroButton,dotButton,equaileButton])
        }
        
        
    }
    
    private func configStackview(stackView: UIStackView, buttons: [UIButton]) {
        
        stackView.axis = .horizontal
        stackView.spacing = spacingBetweenButtons
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        buttons.forEach {
            stackView.addArrangedSubview($0)
        }
        
        if stackView != fiveStackView {
            stackView.distribution = .fillEqually
            stackView.heightAnchor.constraint(equalTo: buttons[0].widthAnchor , multiplier: 1).isActive = true
        } else {
            stackView.distribution = .fill
            buttons.forEach {
                if $0 != zeroButton {
                    $0.widthAnchor.constraint(equalTo: oneButton.widthAnchor, multiplier: 1).isActive = true
                    
                } else {
                    zeroButton.leadingAnchor.constraint(equalTo: oneButton.leadingAnchor).isActive = true
                    zeroButton.trailingAnchor.constraint(equalTo: twoButton.trailingAnchor).isActive = true
                }
                stackView.heightAnchor.constraint(equalTo: oneButton.widthAnchor , multiplier: 1).isActive = true
                
            }
            
        }
    }
    
    
    private func testTitleForButtons() {
        
        let numButtons = [zeroButton, oneButton, twoButton,thirdButton,fourButton,fiveButton,sixButton,sevenButton,eightButton,nineButton]
        numButtons.forEach {
            $0.setTitle("\(numButtons.firstIndex(of: $0) ?? 0)", for: .normal)
            $0.setTitleColor(.white, for: .normal)
        }
        dotButton.setTitle(".", for: .normal)
        deleteButton.setTitle("AC", for: .normal)
        deleteButton.setTitleColor(.black, for: .normal)
        plusminusButton.setTitle("+/-", for: .normal)
        plusminusButton.setTitleColor(.black, for: .normal)
        plusButton.setTitle("+", for: .normal)
        procenteButton.setTitle("%", for: .normal)
        procenteButton.setTitleColor(.black, for: .normal)
        multiplaireButton.setTitle("x", for: .normal)
        fissionButton.setTitle("÷", for: .normal)
        equaileButton.setTitle("=", for: .normal)
        minusButton.setTitle("-", for: .normal)
        leftParenthesisButton.setTitle("(", for: .normal)
        rightParenthesisButton.setTitle(")", for: .normal)
        mcButton.setTitle("mc", for: .normal)
        mPLButton.setTitle("m+", for: .normal)
        mMINButton.setTitle("m-", for: .normal)
        mrButton.setTitle("mr", for: .normal)
        twoNDButton.setTitle("2nd", for: .normal)
        qudratButton.setTitle("^2", for: .normal)
        kubButton.setTitle("^3", for: .normal)
        StepenButton.setTitle("x^y", for: .normal)
        EstepenButton.setTitle("e^", for: .normal)
        tenstepenXButton.setTitle("10^x", for: .normal)
        oneFissionNumButton.setTitle("1/x", for: .normal)
        korenButton.setTitle("√", for: .normal)
        korenKubButton.setTitle("3√", for: .normal)
        korenStepenButton.setTitle("y√x", for: .normal)
        lnButton.setTitle("ln", for: .normal)
        logtenButton.setTitle("log10", for: .normal)
        xOButton.setTitle("x!", for: .normal)
        sinButton.setTitle("sin", for: .normal)
        cosButton.setTitle("cos", for: .normal)
        tanButton.setTitle("tan", for: .normal)
        eButton.setTitle("e", for: .normal)
        EEButton.setTitle("EE", for: .normal)
        RadButton.setTitle("Rad", for: .normal)
        sinhButton.setTitle("sinh", for: .normal)
        coshButton.setTitle("cosh", for: .normal)
        tanhButton.setTitle("tanh", for: .normal)
        PipiButton.setTitle("π", for: .normal)
        RandButton.setTitle("Rand", for: .normal)
        
        
    }
    
    
    private func setBackgroundColorForButtons() {
        [ leftParenthesisButton, rightParenthesisButton, mcButton, mPLButton, mMINButton, mrButton, twoNDButton, qudratButton, kubButton, StepenButton, tenstepenXButton, oneFissionNumButton, korenButton, korenKubButton, korenStepenButton, lnButton, logtenButton, xOButton, sinButton, cosButton, tanButton, eButton, EEButton, RadButton, sinhButton, coshButton, tanhButton, PipiButton, RandButton,EstepenButton].forEach {
            $0.backgroundColor = otherButtonsBackgroundColor
        }
        [zeroButton, oneButton, dotButton,twoButton,thirdButton,fourButton,fiveButton,sixButton,sevenButton,eightButton,nineButton].forEach {
            $0.backgroundColor = otherButtonsBackgroundColor
        }
        [plusButton,minusButton,multiplaireButton,fissionButton,equaileButton].forEach {
            $0.backgroundColor =  optionsBackgroundColor
        }
        [procenteButton,plusminusButton,deleteButton].forEach {
            $0.backgroundColor = numberBackgroundColor
        }
    }
    
    private func configStackMain() {
        
        
        mainStackView.axis = .vertical
        mainStackView.spacing = spacingBetweenButtons
        mainStackView.distribution = .fill
        
        self.view.addSubview(mainStackView)
        
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        fiveStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        
        [firstStackView, secondStackView, thirdStackView, fourStackView, fiveStackView].forEach{
            mainStackView.addArrangedSubview($0)
        }
        
        NSLayoutConstraint.activate([
            
            mainStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: spacingBetweenButtons / 2),
            mainStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -spacingBetweenButtons / 2),
            mainStackView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -spacingBetweenButtons / 2),
        ])
        
        
        
        
    }
    //MARK: Action for buttons
    private func addTargetsForButtons() {
        oneButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        twoButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        thirdButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        fourButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        fiveButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        sixButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        sevenButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        eightButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        nineButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        zeroButton.addTarget(self, action: #selector(numButtonIsPressed), for: .touchUpInside)
        plusButton.addTarget(self, action: #selector(simvolButtonIsPressed), for: .touchUpInside)
        minusButton.addTarget(self, action: #selector(simvolButtonIsPressed), for: .touchUpInside)
        procenteButton.addTarget(self, action: #selector(simvolButtonIsPressed), for: .touchUpInside)
        multiplaireButton.addTarget(self, action: #selector(simvolButtonIsPressed), for: .touchUpInside)
        fissionButton.addTarget(self, action: #selector(simvolButtonIsPressed), for: .touchUpInside)
        deleteButton.addTarget(self, action: #selector(deleteButtonIsPresesed), for: .touchUpInside)
        equaileButton.addTarget(self, action: #selector(EqualButtonIsPresed), for: .touchUpInside)
        dotButton.addTarget(self, action: #selector(dotButtonIsPresed), for: .touchUpInside)
        plusminusButton.addTarget(self, action: #selector(plusminusButtonIsPresed), for: .touchUpInside)
        leftParenthesisButton.addTarget(self, action: #selector(leftParenthesisButtonIsPresed), for: .touchUpInside)
        rightParenthesisButton.addTarget(self, action: #selector(rigthParenthesisButtonIsPresed), for: .touchUpInside)
        mcButton.addTarget(self, action: #selector(mcButtonIsPresed), for: .touchUpInside)
        mPLButton.addTarget(self, action: #selector(mPLSButtonIsPresed), for: .touchUpInside)
        mMINButton.addTarget(self, action: #selector(mMINButtonIsPresed), for: .touchUpInside)
        mrButton.addTarget(self, action: #selector(mrButtonIPresed), for: .touchUpInside)
        qudratButton.addTarget(self, action: #selector(quadratButtonIsPresed), for: .touchUpInside)
        kubButton.addTarget(self, action: #selector(kubButtonIsPresed), for: .touchUpInside)
        StepenButton.addTarget(self, action: #selector(StepenButtonIsPresed), for: .touchUpInside)
        EstepenButton.addTarget(self, action: #selector(EstepenButtonIsPresed), for: .touchUpInside)
        tenstepenXButton.addTarget(self,action: #selector(stepentenButtonIsPresed), for: .touchUpInside)
        oneFissionNumButton.addTarget(self, action: #selector(oneFissionButtonIsPresed), for: .touchUpInside)
        korenButton.addTarget(self, action: #selector(korenButtonIsPresed), for: .touchUpInside)
        korenKubButton.addTarget(self, action: #selector(korenKubButtonIsPresed), for: .touchUpInside)
        korenStepenButton.addTarget(self, action: #selector(korenStepenButtonIsPresed), for: .touchUpInside)
        lnButton.addTarget(self, action: #selector(lnButtonIsPresed), for: .touchUpInside)
        logtenButton.addTarget(self, action: #selector(logtenButtonIsPresed), for: .touchUpInside)
        xOButton.addTarget(self, action: #selector(x0ButtonIsPresed), for: .touchUpInside)
        sinButton.addTarget(self, action: #selector(sinButtonIsPresed), for: .touchUpInside)
        cosButton.addTarget(self, action: #selector(cosButtonIsPresed), for: .touchUpInside)
        tanButton.addTarget(self, action: #selector(tanButtonIsPresed), for: .touchUpInside)
        eButton.addTarget(self, action: #selector(eButtonIsPresed), for: .touchUpInside)
        EEButton.addTarget(self, action: #selector(EEButoonIsPresed), for: .touchUpInside)
        RadButton.addTarget(self, action: #selector(RadButtonIsPresed), for: .touchUpInside)
        sinhButton.addTarget(self, action: #selector(SinhButtonIsPresed), for: .touchUpInside)
        coshButton.addTarget(self, action: #selector(coshButtonIsPresed), for: .touchUpInside)
        tanhButton.addTarget(self, action: #selector(tanhButtonIsPresed), for: .touchUpInside)
        PipiButton.addTarget(self, action: #selector(PipiButtonIsPresed), for: .touchUpInside)
        RandButton.addTarget(self, action: #selector(randButtonIsPresed), for: .touchUpInside)
        for button in allButtons {
            button.addTarget(self, action: #selector(animationButtons), for: .touchUpInside)
            
        }
        twoNDButton.addTarget(self, action: #selector(secondButtonIsPresed), for: .touchUpInside)
        
        //        twoNDButton.setTitle("2nd", for: .normal)
        
        
        
    }
    
    @objc private func numButtonIsPressed(sender: UIButton) {
        if(Label.text == "0") {
            Label.text = ""
        } else if Label.text == "-0" {
            Label.text = "-"
        }
        
        Label.text = (Label.text ?? "0") + (sender.titleLabel?.text ?? "0")
        
        
        if(Label.text != "0") {
            deleteButton.setTitle("C", for: .normal)
            
        }
        
    }
    
    @objc private func simvolButtonIsPressed(sender: UIButton) {
        
        simvol =  (sender.titleLabel?.text ?? "0")
        
        peremena = (Label.text ?? "0")
        
        Label.text = "0"
        
        
    }
    
    @objc private func deleteButtonIsPresesed(sender: UIButton) {
        
        
        
        if ((Label.text!.isEmpty || Label.text == "0" || (Label.text!.first == "-" && Label.text?.count == 2 )  ) ) {
            
            Label.text = "0"
            
        } else if Label.text?.count ??  0 > 1  {
            
            Label.text?.removeLast()
            
        } else {
            
            Label.text = "0"
        }
        
        if Label.text == "0" {
            sender.setTitle("AC", for: .normal)
        }
        
    }
    @objc private func EqualButtonIsPresed(sender: UIButton) {
        
        deleteButton.setTitle("AC", for: .normal)
        
        switch simvol {
        case "+":
            Label.text = "\((Double(peremena) ?? 0)  + (Double((Label.text ?? "0")) ?? 0))"
        case "-":
            Label.text = "\((Double(peremena) ?? 0)  - (Double((Label.text ?? "0")) ?? 0))"
        case "x":
            Label.text = "\((Double(peremena) ?? 0)  * (Double((Label.text ?? "0")) ?? 0))"
        case "÷":
            if Label.text == "0" {
                Label.text = "Mistake"
            } else {
                Label.text = "\((Double(peremena) ?? 0)  / (Double((Label.text ?? "0")) ?? 0))"
            }
        case "%":
            Label.text = "\((Int(peremena) ?? 0)  % (Int((Label.text ?? "0")) ?? 0))"
        case "^":
            Label.text = "\(pow(LabelTextToFloat,Float(Label.text!)!))"
        case "√":
            Label.text = "\(pow(LabelTextToFloat,1/Float(Label.text!)!))"
        case "EE":
            Label.text = "\(LabelTextToFloat * pow(10, Float(Label.text!)!))"
        case "^^":
            Label.text = "\(pow(Float(Label.text!)!, LabelTextToFloat))"
        case "ln":
            Label.text = "\(log(LabelTextToFloat) / log(Float(Label.text!)!))"
        default:
            break
            
        }
    }
    
    
    @objc private func dotButtonIsPresed(sender: UIButton) {
        
        if !(Label.text?.contains(where: {$0 == "."}))! {
            
            Label.text! = Label.text! + "."
            
        }
        if(Label.text != "0") {
            deleteButton.setTitle("C", for: .normal)
            
        }
    }
    
    @objc private func plusminusButtonIsPresed(sender: UIButton) {
        
        if !(Label.text?.contains(where: {$0 == "-"}))! {
            
            Label.text! =  "-" + Label.text!
            
        } else if (Label.text?.contains(where: {$0 == "-"}))! {
            
            Label.text?.removeFirst()
            
        }
    }
    
    @objc private func mcButtonIsPresed(sender: UIButton) {
        mr = 0
    }
    @objc private func mPLSButtonIsPresed(sender: UIButton) {
        mr = Float(Label.text ?? "0")! + (mr ?? 0)
        
    }
    @objc private func mMINButtonIsPresed(sender: UIButton) {
        mr = Float(Label.text ?? "0")! - (mr ?? 0)
        
    }
    @objc private func mrButtonIPresed(sender: UIButton) {
        Label.text = String(mr ?? 0)
        
    }
    @objc private func quadratButtonIsPresed(sender: UIButton) {
        LabelTextToFloat = Float(pow(Float(Label.text!)!,2))
        Label.text = String(LabelTextToFloat)
        
    }
    @objc private func kubButtonIsPresed(sender: UIButton) {
        LabelTextToFloat = Float(pow(Float(Label.text!)!,3))
        Label.text = String(LabelTextToFloat)
        
    }
    @objc private func StepenButtonIsPresed(sender: UIButton) {
        simvol = "^"
        LabelTextToFloat = Float(Label.text!)!
        Label.text = "0"
        
    }
    @objc private func EstepenButtonIsPresed(sender: UIButton){
        if q % 2 != 0 {
            simvol = "^^"
            LabelTextToFloat = Float(Label.text!)!
            Label.text = "0"
        } else {
            
            Label.text = "\(pow(e, Float(Label.text!)!))"
        }
    }
    @objc private func stepentenButtonIsPresed(sender: UIButton) {
        if q % 2 != 0 {
            Label.text = "\(pow(2,Float(Label.text!)!))"
        } else {
            Label.text = "\(pow(10,Float(Label.text!)!))"
        }
    }
    @objc private func oneFissionButtonIsPresed(sender: UIButton) {
        Label.text = "\(1/Float(Label.text!)!)"
        
    }
    @objc private func korenButtonIsPresed(sender: UIButton) {
        Label.text = "\(sqrt(Float(Label.text!)!))"
        
    }
    @objc private func korenKubButtonIsPresed(sender: UIButton) {
        Label.text = "\(pow(Float(Label.text!)!,1/3))"
        
    }
    @objc private func korenStepenButtonIsPresed(sender: UIButton) {
        LabelTextToFloat = Float(Label.text!)!
        simvol = "√"
        Label.text = "0"
        
    }
    @objc private func lnButtonIsPresed(sender: UIButton) {
        if q % 2 != 0 {
            simvol = "ln"
            LabelTextToFloat = Float(Label.text!)!
            
        } else {
            Label.text = "\(log(Float(Label.text!)!))"
        }
    }
    @objc private func logtenButtonIsPresed(sender: UIButton) {
        if q % 2 != 0 {
            Label.text = "\(log2(Float(Label.text!)!))"
        } else {
            Label.text = "\(log10(Float(Label.text!)!))"
        }
    }
    
    @objc private func x0ButtonIsPresed(sender: UIButton) {
        let n = Int(Label.text!)!
        var mass: [Int] = []
        mass = []
        if n == 0 {
            Label.text = "1"
        } else {
            for i in 1 ... n {
                mass.append(i)
            }
            let sum = mass.reduce(1, *)
            
            Label.text = "\(sum)"
        }
    }
    @objc private func sinButtonIsPresed(sender: UIButton) {
        if q % 2 != 0 {
            if Int(Label.text!)! > 360 {
                Label.text = "\(1 / (sin((Float(Label.text!)! - 360) * Pi / 180)))"
            } else {
                Label.text = "\(1 / (sin(Float(Label.text!)! * Pi / 180)))"
            }
        } else {
            if Int(Label.text!)! > 360 {
                Label.text = "\(sin((Float(Label.text!)! - 360) * Pi / 180))"
            } else {
                Label.text = "\(sin(Float(Label.text!)! * Pi / 180))"
            }
        }
    }
    @objc private func cosButtonIsPresed(sender: UIButton) {
        
        if q % 2 != 0 {
            if Int(Label.text!)! > 360 {
                Label.text = "\(1 / (cos((Float(Label.text!)! - 360) * Pi / 180)))"
            } else {
                Label.text = "\(1 / (cos(Float(Label.text!)! * Pi / 180)))"
            }
        } else {
            if Int(Label.text!)! > 360 {
                Label.text = "\(cos((Float(Label.text!)! - 360) * Pi / 180))"
            } else {
                Label.text = "\(cos(Float(Label.text!)! * Pi / 180))"
            }
        }
    }
    @objc private func tanButtonIsPresed(sender: UIButton) {
        
        if q % 2 != 0 {
            if Int(Label.text!)! > 360 {
                Label.text = "\(1 / (tan((Float(Label.text!)! - 360) * Pi / 180)))"
            } else {
                Label.text = "\(1 / (tan(Float(Label.text!)! * Pi / 180)))"
            }
        } else {
            if Int(Label.text!)! > 360 {
                Label.text = "\(tan((Float(Label.text!)! - 360) * Pi / 180))"
            } else {
                Label.text = "\(tan(Float(Label.text!)! * Pi / 180))"
            }
        }
    }
    @objc private func eButtonIsPresed(sender: UIButton) {
        Label.text = "\(e * Float(Label.text!)!)"
    }
    @objc private func EEButoonIsPresed(sender: UIButton) {
        simvol = "EE"
        LabelTextToFloat = Float(Label.text!)!
    }
    @objc private func RadButtonIsPresed(sender: UIButton) {
        Label.text = "\(Double(Label.text!)!)"
    }
    @objc private func SinhButtonIsPresed(sender: UIButton) {
        if q % 2 != 0 {
            Label.text = "\(1 / (exp(Float(Label.text!)!) - (exp((-Float(Label.text!)!))) / 2.0) )"
        } else {
            Label.text = "\(exp(Float(Label.text!)!) - (exp((-Float(Label.text!)!))) / 2.0 )"
        }
    }
    @objc private func coshButtonIsPresed(sender: UIButton) {
        if q % 2 != 0 {
            Label.text = "\(1 / (exp(Float(Label.text!)!) + (exp((-Float(Label.text!)!))) / 2.0 ))"
        } else {
            Label.text = "\(exp(Float(Label.text!)!) + (exp((-Float(Label.text!)!))) / 2.0 )"
        }
    }
    @objc private func tanhButtonIsPresed(sender: UIButton) {
        if q % 2 != 0 {
            Label.text = "\(1 / (exp(Float(Label.text!)!) - (exp((-Float(Label.text!)!)) / (exp(Float(Label.text!)!) + (exp((-Float(Label.text!)!)))))))"
        } else {
            Label.text = "\(exp(Float(Label.text!)!) - (exp((-Float(Label.text!)!)) / (exp(Float(Label.text!)!) + (exp((-Float(Label.text!)!))))))"
        }
    }
    @objc private func PipiButtonIsPresed(sender: UIButton) {
        Label.text = "\(Float(Label.text!)! * Pi)"
    }
    @objc private func randButtonIsPresed(sender: UIButton) {
        Label.text = "\(Int.random(in: 0 ... 1000))"
    }
    @objc private func leftParenthesisButtonIsPresed(sender: UIButton) {
        Label.text = "(\(Label.text!))"
    }
    @objc private func rigthParenthesisButtonIsPresed(sender: UIButton) {
        Label.text = "\(Label.text!))"
    }
    @objc private func animationButtons(_ sender: UIButton) {
        let originalBackgroundColor = sender.backgroundColor
        UIView.transition(with: sender, duration: 0.2, options: .transitionCrossDissolve, animations: {
            sender.backgroundColor = .white 
        }) { (completed) in
            UIView.transition(with: sender, duration: 0.2, options: .transitionCrossDissolve, animations: {
                sender.backgroundColor = originalBackgroundColor
            })
        }
    
    
        if UIScreen.main.bounds.height > UIScreen.main.bounds.width {
            // Portrait orientation
            if let labelText = Label.text {
                if labelText.count > 5 {
                    Label.text = String(labelText.prefix(5))
                }
            }
        } else {
            // Landscape orientation
            if let labelText = Label.text {
                if labelText.count > 14 {
                    Label.text = String(labelText.prefix(14))
                }
            }
        }
    }
    @objc private func secondButtonIsPresed(sender: UIButton) {
        q += 1
        if ((q % 2) != 0) {
            EstepenButton.setTitle("y^x", for: .normal)
            tenstepenXButton.setTitle("2^x", for: .normal)
            lnButton.setTitle("logX", for: .normal)
            logtenButton.setTitle("log2", for: .normal)
            sinButton.setTitle("sin^-1", for: .normal)
            cosButton.setTitle("cos^-1", for: .normal)
            tanButton.setTitle("tan^-1", for: .normal)
            sinhButton.setTitle("senh^-1", for: .normal)
            coshButton.setTitle("cosh^-1", for: .normal)
            tanhButton.setTitle("tanh^-1", for: .normal)
        } else {
            EstepenButton.setTitle("e^", for: .normal)
            tenstepenXButton.setTitle("10^x", for: .normal)
            lnButton.setTitle("ln", for: .normal)
            logtenButton.setTitle("log10", for: .normal)
            sinButton.setTitle("sin", for: .normal)
            cosButton.setTitle("cos", for: .normal)
            tanButton.setTitle("tan", for: .normal)
            sinhButton.setTitle("sinh", for: .normal)
            coshButton.setTitle("cosh", for: .normal)
            tanhButton.setTitle("tanh", for: .normal)
        }
        
    }
}


extension ViewController {
    // test commit
}
