//
//  ContactListWithDetailInfoView.swift
//  ContactList
//
//  Created by MAC  on 26.05.2022.
//

import SwiftUI

struct ContactListWithDetailInfoView: View {
    @State private var singleSelection: UUID?
    
    let contactList: [Person]
    
    var body: some View {
        NavigationView{
            List(selection: $singleSelection) {
                ForEach(contactList) { contact in
                    Section(header: Text(contact.fullName)) {
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
            }
            .navigationTitle("Contact List")
        }
    }
}

struct ContactListWithDetailInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactListWithDetailInfoView(contactList: Person.getContactList())
    }
}
