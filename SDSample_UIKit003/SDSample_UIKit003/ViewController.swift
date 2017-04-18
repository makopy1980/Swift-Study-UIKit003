//
//  ViewController.swift
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Fields
    
    private var infoDarkButton: UIButton!
    private var infoLightButton: UIButton!
    private var addButton: UIButton!
    private var detailButton: UIButton!
    private var systemButton: UIButton!
    
    // MARK: - View Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Viewの設定
        self.setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Private Methods
    
    /// Viewの設定
    private func setupView() {
        // ボタンの設定
        self.setupButtons()
    }
    
    /// ボタンの設定
    private func setupButtons() {
        
        // 基準X座標
        let posX = self.view.center.x
        
        infoDarkButton = UIButton(type: .infoDark)
        infoDarkButton.tag = 1
        infoDarkButton.layer.position = CGPoint(x: posX,
                                                y: 50.0)
        infoDarkButton.addTarget(self,
                                 action: #selector(onButtonTapped(sender:)),
                                 for: .touchDown)
        
        infoLightButton = UIButton(type: .infoLight)
        infoLightButton.tag = 2
        infoLightButton.layer.position = CGPoint(x: posX,
                                                 y: 100.0)
        infoLightButton.addTarget(self,
                                  action: #selector(onButtonTapped(sender:)),
                                  for: .touchDown)
        
        addButton = UIButton(type: .contactAdd)
        addButton.tag = 3
        addButton.layer.position = CGPoint(x: posX,
                                           y: 150.0)
        addButton.addTarget(self,
                            action: #selector(onButtonTapped(sender:)),
                            for: .touchDown)
        
        detailButton = UIButton(type: .detailDisclosure)
        detailButton.tag = 4
        detailButton.layer.position = CGPoint(x: posX,
                                              y: 200.0)
        detailButton.addTarget(self,
                               action: #selector(onButtonTapped(sender:)),
                               for: .touchDown)
        
        let systemButtonSize = CGSize(width: 200.0,
                                      height: 50.0)
        let systemButtonPoint = CGPoint(x: posX - systemButtonSize.width / 2,
                                        y: 250)
        
        systemButton = UIButton(type: .system)
        systemButton.tag = 5;
        systemButton.setTitle("SystemButton", for: .normal)
        systemButton.addTarget(self,
                               action: #selector(onButtonTapped(sender:)),
                               for: .touchDown)
        systemButton.frame = CGRect(origin: systemButtonPoint,
                                    size: systemButtonSize)
        
        self.view.addSubview(infoDarkButton)
        self.view.addSubview(infoLightButton)
        self.view.addSubview(addButton)
        self.view.addSubview(detailButton)
        self.view.addSubview(systemButton)
    }
    
    /// ボタンタップ時動作
    internal func onButtonTapped(sender: UIButton) {
        print(#function)
        print("sender.currentTitle: \(String(describing: sender.currentTitle))")
        print("sender.tag: \(sender.tag)")
    }
}

