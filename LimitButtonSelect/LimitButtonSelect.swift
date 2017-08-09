//
//  LimitButtonSelect.swift
//  LimitButtonSelect
//
//  Created by jeasung.lee on 2017. 8. 9..
//  Copyright © 2017년 jeasung.lee. All rights reserved.
//

import UIKit

public struct LimitButtonSelect {
    var buttons = [UIButton]()
    var selectedButtons = [UIButton]()
    var index: Int = 0
    var limit: Int = 1
    var selectCount: Int = 0
    
    public init(limit: Int, buttons: [UIButton]) {
        self.limit = limit
        self.buttons = buttons
        
        for _ in 0..<limit {
            selectedButtons.append(UIButton())
        }
    }
    
    public init(limit: Int, buttons: [UIButton], defaultIndex: [Int]) {
        self.init(limit: limit, buttons: buttons)
        
        defaultIndex.forEach {
            on(button: buttons[$0])
        }
    }
    
    public mutating func on(button: UIButton) {
        addSelectedButtons(button: button)
        buttonControl(buttons: buttons)
    }
    
    public mutating func add(button: UIButton) {
        buttons.append(button)
    }
    
    public mutating func remove(at index: Int) {
        guard index < buttons.count else {
            fatalError("Out of Array")
        }
        buttons.remove(at: index)
    }
    
    public func selectedButton() -> [UIButton] {
        var selected = [UIButton]()
        for index in 0..<selectCount {
            selected.append(selectedButtons[index])
        }
        
        return selected
    }
    
    public mutating func deselectAll() {
        buttons.forEach {
            deselectButton(button: $0)
        }
    }
    
    private mutating func addSelectedButtons(button: UIButton) {
        if isSelectable(button) {
            deselectButton(button: button)
            return
        }
        
        selectedButtons[index] = button
        index += 1
        if selectCount < limit {
            selectCount += 1
        }
        if index >= limit {
            index = 0
        }
    }
    
    private mutating func deselectButton(button: UIButton) {
        buttonStatus(button: button, isSelected: false)
        guard let index = selectedButtons.index(of: button) else { return }
        selectedButtons.remove(at: index)
        selectedButtons.append(UIButton())
        selectCount -= 1
        self.index = selectCount
    }
    
    private func isSelectable(_ loopElement: UIButton) -> Bool {
        return selectedButtons.contains(loopElement)
    }
    
    private func buttonControl(buttons: [UIButton]) {
        buttons.enumerated().forEach {
            buttonStatus(button: $0.element, isSelected: isSelectable($0.element))
        }
    }
    
    private func buttonStatus(button: UIButton, isSelected: Bool) {
        button.isSelected = isSelected
    }
}
