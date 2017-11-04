//  Questions.swift
//  Hackathon
//
//  Created by Segundo Fariña on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import Foundation
import UIKit

class Question {
    let q : String
    let ans1 : String
    let ans2 : String
    let ans3 : String
    let ans4 : String
    let correct : String
    
    
    init(q: String, ans1: String, ans2: String, ans3: String, ans4: String, correct: String) {
        self.q = q
        self.ans1 = ans1
        self.ans2 = ans2
        self.ans3 = ans3
        self.ans4 = ans4
        self.correct = correct
    }
}

class DataBase {
    var category1 = [Question] ()
    var category2 = [Question] ()
    var counter1 : Int = 0
    var counter2 : Int = 0
    
    func nextCategory1()-> Question?{
        if counter1 == category1.count{
            return nil
        }
        let q = category1[counter1]
        counter1+=1
        return q
    }
    
    func nextCategory2()-> Question?{
        if counter2 == category2.count{
            return nil
        }
        let q = category2[counter2]
        counter2+=1
        return q
    }
    
    init() {
        category1.append(Question( q:"La tasa de interés nominal es la rentabilidad obtenida en una operación financiera que se capitaliza de forma: ", ans1: "Simple.", ans2: "Compuesta.", ans3: "Ambas son correctas.", ans4:"Ambas son incorrectas.", correct: "Simple") )
       
        category1.append(Question( q:"La amortización del capital es:", ans1: "El pago de intereses que realiza la empresa por la deuda adquirida.", ans2: "La extinción de la deuda de la empresa por medio de pagos periódicos.", ans3: "Los pagos periódicos que una empresa hace al tomar una deuda (incluyendo devolución de parte de la plata prestada e intereses).", ans4:"La utilización del dinero prestado por parte de la empresa.", correct: "La extinción de la deuda de la empresa por medio de pagos periódicos.") )
        
        category1.append(Question( q:"Si se invierten $10000 a una tasa mensual efectiva del 1% con capitalización mensual por cinco meses, sin retirar nunca la plata hasta el mes 5, al cabo del período se obtendrá de ganancia:", ans1: "Más de $500.", ans2: "Menos de $500.", ans3: "Exactamente $500.", ans4:"Ninguna es correcta.", correct: "Más de $500.") )
        
        
        
        
        
        
        category2.append(Question( q:"¿Qué instrumento financiero es de renta variable?", ans1: "Acciones de empresas", ans2: "LEBACs", ans3: "NOVACs", ans4:"Obligaciones negociables", correct: "Acciones de empresas") )
        
        category2.append(Question( q:"¿Qué es la TIR de un bono?", ans1: "El rendimiento del bono.", ans2: "El plazo del bono.", ans3: "El riesgo del bono.", ans4:"El precio del bono.", correct: "El rendimiento del bono.") )
        
        category2.append(Question( q:"¿Qué opción de inversión es menos riesgosa?", ans1: "Invertir en varios negocios.", ans2: "Invertir en un solo negocio.", ans3: "Es indiferente.", ans4:"Ambas.", correct: "Invertir en varios negocios.") )
        
    }
    
    
}
