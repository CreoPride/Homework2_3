    //
    //  ViewController.swift
    //  Homework2_3
    //
    //  Created by Konstantin Fomenkov on 02.04.2023.
    //

import UIKit

class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!

    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!


    override func viewDidLoad() {
        super.viewDidLoad()

        colorView.layer.cornerRadius = 10

        redSlider.value = 0.3
        greenSlider.value = 0.7
        blueSlider.value = 0.9

        setValueFrom(redSlider, to: redLabel)
        setValueFrom(greenSlider, to: greenLabel)
        setValueFrom(blueSlider, to: blueLabel)

        setViewColor()
    }

    @IBAction func sliderAction(_ sender: UISlider) {
        switch sender.tag {
        case 0:
            setValueFrom(sender, to: redLabel)
        case 1:
            setValueFrom(sender, to: greenLabel)
        default:
            setValueFrom(sender, to: blueLabel)
        }
        setViewColor()
    }

    private func setViewColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }

    private func setValueFrom(_ slider: UISlider, to label: UILabel) {
        label.text = String(format: "%.2f", slider.value)
    }
}

