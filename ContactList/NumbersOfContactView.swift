//
//  NumbersOfContact.swift
//  ContactList
//
//  Created by MAC  on 28.05.2022.
//

import SwiftUI

struct NumbersOfContactView: View {
    
    let contact: Person
    
    var body: some View {
        HStack {
            Image(systemName: "phone")
                .foregroundColor(.blue)
            Text(contact.phoneNumber)
        }
        HStack {
            Image(systemName: "tray")
                .foregroundColor(.blue)
            Text(contact.email)
        }
    }
}

struct NumbersOfContact_Previews: PreviewProvider {
    static var previews: some View {
        NumbersOfContactView(contact: Person.getContactList().first!)
    }
}
