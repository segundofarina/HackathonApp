//
//  Lessons.swift
//  Hackathon
//
//  Created by Martin Victory on 4/11/17.
//  Copyright © 2017 Segundo Fariña. All rights reserved.
//

import Foundation
import UIKit



class Lessons {

    var allLessons = [Lesson]()
    
    func UIColorFromRGB(rgbValue: UInt) -> UIColor {
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }
    
    
    init() {
        var titles = [Title]()
        titles.append(Title("Tasa de interes nominal", video: "Test", text: "La tasa de interés nominal es una tasa expresada anualmente que genera intereses varias veces al año. Para saber los intereses generados realmente necesitaremos cambiar esta tasa nominal a una efectiva.\nRetomando el ejemplo anterior, si invertimos $100 al 24% capitalizable trimestralmente, significa que obtendremos intereses a una tasa del 6% cada tres meses. La tasa de interés la calculamos así:\n•    i=24%/4, dónde 4 es el numero de veces que se capitaliza al año (12 meses/3 meses)\n•    i=6% (Cada 3 meses se paga el interés del 6%)"))
        titles.append(Title("Tasa de interes efectiva", video: "Test", text: "La tasa efectiva nos da el porcentaje de interés total que se genera o que se aplica sobre una cantidad de dinero durante un periodo de tiempo determinado."))
        titles.append(Title("Amortizacion", video: "Test", text: "En una amortización el deudor da al prestamista (institución financiera) un reembolso del dinero otorgado por este último en un plazo convenido y con tasas de interés (fijas o variables) previamente acordadas."))
        titles.append(Title("Rentabilidad y riesgo", video: "Test", text: "La capacidad de generar rendimientos se conoce como rentabilidad.\nEn una inversión, los rendimientos futuros no son seguros. Pueden ser grandes o modestos, pueden no producirse, e incluso puede significar perder el capital invertido. Esta incertidumbre se conoce como riesgo.\nNo existe inversión sin riesgo. Pero algunos productos implican más riesgo que otros.\nLa única razón para elegir una inversión con riesgo ante una alternativa de ahorro sin riesgo es la posibilidad de obtener de ella una rentabilidad mayor.\n•    A iguales condiciones de riesgo, hay que optar por la inversión con mayor rentabilidad.\n•    A iguales condiciones de rentabilidad, hay que optar por la inversión con menos riesgo."))
        
        
        allLessons.append(Lesson(image: UIImage(named: "moneyBag")!,title: "Conceptos Financieros",percentage: 60,color: UIColorFromRGB(rgbValue: 0x44CBF3),titles: titles))
        
        titles.removeAll()
        titles.append(Title("Mercado de valores", video: "Test", text: "El mercado de valores es un tipo de mercado de capitales de los que operan alrededor del mundo en el que se negocia la renta variable y la renta fija de una forma estructurada, a través de la compraventa de valores negociables. Permite la canalización de capital a medio y largo plazo de los inversores a los usuarios."))
        titles.append(Title("Indices bursatiles", video: "Test", text: "Miden el rendimiento de las acciones cotizantes en la Bolsa. Los Índices de Acciones, representan una cartera teórica de acciones elegida según diferentes criterios"))
        titles.append(Title("Bonos y obligaciones", video: "Test", text: "Los bonos son instrumentos financieros de deuda utilizados tanto por entidades privadas como por entidades de gobierno. El bono es una de las formas de materializarse los títulos de deuda, de renta fija o variable. Pueden ser emitidos por una institución pública (un Estado, un gobierno regional o un municipio) o por una institución privada (empresa industrial, comercial o de servicios)."))
        titles.append(Title("Accion", video: "Test", text: "Una acción en el mercado financiero es un título emitido por una sociedad que representa el valor de una de las fracciones iguales en que se divide su capital social. Las acciones, generalmente, confieren a su titular, llamado accionista, derechos políticos, como el de voto en la junta de accionistas de la entidad, y económicos, como participar en los beneficios de la empresa."))
        titles.append(Title("Fondos comunes de inversión", video: "Test", text: "Los Fondos Comunes de Inversión (FCI) son un instrumento financiero muy atractivo para aquellos inversores individuales que buscan tener liquidez y diversificar su cartera a un costo accesible. Se constituyen cuando un grupo de personas con objetivos parecidos de inversión aporta su dinero para que un profesional (un banco o una institución financiera) lo administre y lo invierta en una cartera diversificada de activos, con montos mínimos de entrada determinados."))
        
        allLessons.append(Lesson(image: UIImage(named: "caculator")!,title: "Instrumentos Financieros",percentage: 60,color: UIColorFromRGB(rgbValue: 0xFF8B36),titles: titles))
       
        
    }
    
    
}

class Lesson {
    /*Image, title, percentage, color*/
    let image: UIImage
    let title: String
    let percentage: Int
    let color: UIColor
    let titles: [Title]
    
    init(image: UIImage, title: String, percentage: Int, color: UIColor, titles: [Title]) {
        self.image = image
        self.title = title
        self.percentage = percentage
        self.color = color
        self.titles = titles
    }
}
