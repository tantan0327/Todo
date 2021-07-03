//
//  CheckBox.swift
//  Todo
//
//  Created by Atsuya Tange on 2021/07/03.
//

import SwiftUI

struct CheckBox: View {
    // SwiftUIで管理。変数の変更を自動的に画面に反映
    @State var checked: Bool = false
    var body: some View {
        // バインディング。$をつけることで複数のViewで共有。
        Toggle(isOn: $checked) {
            Text("チェックボックス")
        }
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        CheckBox()
    }
}
