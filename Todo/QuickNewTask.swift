//
//  QuickNewTask.swift
//  Todo
//
//  Created by Atsuya Tange on 2021/09/01.
//

import SwiftUI

struct QuickNewTask: View {
    
    let category: TodoEntity.Category
    
    @State var newTask: String = ""
    
    fileprivate func cancelTask() {
        self.newTask = ""
    }
    
    fileprivate func addNewTask() {
        self.newTask = ""
    }
    
    var body: some View {
        HStack {
            TextField("新しいタスク", text: $newTask, onCommit:  {
                self.addNewTask()
            }).textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action: {
                self.addNewTask()
            }) {
                Text("追加")
            }
            Button(action: {
                self.cancelTask()
            }) {
                Text("キャンセル").foregroundColor(.red)
            }
        }
    }
}

struct QuickNewTask_Previews: PreviewProvider {
    static var previews: some View {
        QuickNewTask(category: .ImpUrg_1st)
    }
}
