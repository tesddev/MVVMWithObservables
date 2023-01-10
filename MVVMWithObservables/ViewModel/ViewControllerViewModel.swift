//
//  ViewModel.swift
//  MVVMWithObservables
//
//  Created by Tes on 10/01/2023.
//

import Foundation

class ViewControllerViewModel {

    var isLoadingData: Observable<Bool> = Observable(false)
    
    func changeIsLoadingData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.isLoadingData.value = true
        }
    }
}
