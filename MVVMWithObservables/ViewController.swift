//
//  ViewController.swift
//  MVVMWithObservables
//
//  Created by Tes on 10/01/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var viewModel: ViewControllerViewModel = ViewControllerViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        print("view loaded")
        viewModel.changeIsLoadingData()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        bind()
    }
    
    func bind(){
        viewModel.isLoadingData.bind { [weak self] loading in
            guard let loading = loading else {
                return
            }
            DispatchQueue.main.async {
                if loading {
                    print("i am loading")
                } else {
                    print("I am not loading")
                }
            }
        }
    }
    
}

