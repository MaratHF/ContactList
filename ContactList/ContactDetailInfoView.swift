//
//  ContactDetailInfoView.swift
//  ContactList
//
//  Created by MAC  on 26.05.2022.
//

import SwiftUI

struct ContactDetailInfoView: View {
    
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding()
                Spacer()
            }
            NumbersOfContactView(contact: person)
        }
        .navigationTitle(person.fullName)
    }
}

struct ContactDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactDetailInfoView(person: Person.getContactList().first!)
    }
}
