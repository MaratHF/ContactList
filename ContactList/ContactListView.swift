//
//  ContactListView.swift
//  ContactList
//
//  Created by MAC  on 26.05.2022.
//

import SwiftUI

struct ContactListView: View {
    @State private var isPresented = false
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView {
            List(contactList) { contact in
                NavigationLink(destination: ContactDetailInfoView(person: contact)) {
                    Text(contact.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("ContactList")
        }
    }
}


struct ContactListView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListView(contactList: Person.getContactList())
    }
}
