//
//  Extencion + UIButton.swift
//  AnimationApplication
//
//  Created by Artur on 31.01.2023.
//

import UIKit

extension UIButton {
    func pulsate() { //функция для анимации
        let pulse = CASpringAnimation(keyPath: "transform.scale") //что будем анимировать
        pulse.fromValue = 1              //Откуда начнется анимация
        pulse.toValue = 0.8                 //до куда продолжиться анимация
        pulse.duration = 0.6                  //Длительность
        pulse.autoreverses = true
        pulse.repeatCount = 0               //сколько повторений
        pulse.initialVelocity = 0.5         //какое то увеличение скорости
        pulse.damping = 1                   //какое то затухание
        
        layer.add(pulse, forKey: nil)
    }
}
