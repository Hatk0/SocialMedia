import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
            
            Image("threads")
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)
                .padding()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(TextFieldViewModifier())
                
                SecureField("Enter your password", text: $password)
                    .modifier(TextFieldViewModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .modifier(TextFieldViewModifier())
                
                TextField("Enter your username", text: $username)
                    .modifier(TextFieldViewModifier())
            }
            
            Button {
                
            } label: {
                Text("Sign up")
                    .modifier(ButtonTextViewModifier())
            }
            .padding()
            
            Spacer()
            
            Divider()
            
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have an account?")
                    
                    Text("Sign in")
                        .fontWeight(.semibold)
                }
                .foregroundStyle(.black)
                .font(.footnote)
            }
            .padding(.vertical, 15)
        }
    }
}

#Preview {
    RegistrationView()
}
