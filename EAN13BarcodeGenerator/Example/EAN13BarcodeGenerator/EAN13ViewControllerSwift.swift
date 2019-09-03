//
//  EAN13ViewControllerSwift.swift
//  EAN13BarcodeGenerator_Example
//
//  Created by Aliaksei Strokin on 10/27/18.
//  Copyright © 2018 Alexey Strokin. All rights reserved.
//

import UIKit
import EAN13BarcodeGenerator

class EAN13ViewControllerSwift: UIViewController {
    var barCodeView: BarCodeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        barCodeView = BarCodeView(frame: CGRect(x: 20.0, y: 155.0, width: 350.0, height: 100.0))
        view.addSubview(barCodeView)
        barCodeView.barCode = "2036759580362"
    }

    @IBAction func newBarcodePressed() {
        barCodeView.barCode = GetNewRandomEAN13BarCode()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
