import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float ){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Yemek ye amk", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "normal", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "HAHAHAHHA AYI OROSPU EVLADI", color: UIColor.red)
        }
    }
    
    func getBMIValue() -> String {
        let BMIto1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        // bmi ?? 0.0 işlemi --> bmi'ın bir değeri varsa onu, yoksa 0.0'ın kullanılmasına yarar
        return BMIto1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "siktir git"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
    
    
    
}

