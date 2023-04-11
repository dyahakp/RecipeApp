
//
//  FavoritesView.swift
//  RecipeApp
//
//  Created by Macbook Pro on 29/03/23.
//

import SwiftUI

import CoreData
struct FavoritesView: View {
   
        @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest (
        sortDescriptors:
            [
            NSSortDescriptor(keyPath:\Saving.name, ascending:
                                            true),
            NSSortDescriptor(keyPath:\Saving.imageD, ascending:true
            )])
    private var saving: FetchedResults<Saving>
    @State private var show: Bool = false
    @State private var image: Data = .init(count:0)
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                ForEach(saving, id: \.name) { save in
                    VStack{
                        Image(uiImage: UIImage(data: save.imageD ?? self.image)!)
                            .resizable()
                            .frame(width: UIScreen.main.bounds.width - 28,height: 200)
                            .cornerRadius(10)
                            .shadow(radius: 8)
                        Text(save.name!)
                    }
                }
                }.navigationTitle("Upload Your Recipe Cook Result")
                .toolbar{
                    ToolbarItem(placement: .navigationBarTrailing){
                        Button(action : {
                            self.show.toggle()
                            }){
                                Image(systemName: "Plus")
                            }
                    }
            }
        }.sheet(isPresented: self.$show){
            AddInfo().environment(\.managedObjectContext, self.viewContext)
           
        }
        
    }
   
}
struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}




struct AddInfo: View {
    @Environment(\.managedObjectContext) private var moc
    @Environment(\.dismiss) private var dismiss

    @State private var name: String = ""
    @State private var image: Data = .init(count: 0)
    @State private var show: Bool = false
    var body: some View{
        NavigationView{
            VStack{
                
                if self.image.count != 0 {
                    Button(action: {
                        self.show.toggle()
                        //call the image picker
                    }){
                        Image(uiImage: UIImage(data: self.image)!)
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 150, height: 150)
                            .cornerRadius(20)
                            .shadow(radius: 8)
                    }
                }else{
                    Button(action: {
                        self.show.toggle()
                        //call the image picker
                    }){
                        Image(systemName: "photo.fill")
                            .resizable()
                            .frame(width: 150,height: 150)
                            .cornerRadius(20)
                            .shadow(radius: 8)
                            .foregroundColor(.gray)
                        
                    }
                }
                TextField("Name", text: self.$name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: {
                    let save = Saving(context : self.moc)
                    save.imageD = self.image
                    save.name = self.name
                    
                    try! self.moc.save()
                    self.name = ""
                    dismiss()
                    
                }){
                    Text("Save Data")
                }
            }
        }.sheet(isPresented: self.$show){
            //Image picker
            ImagePicker(images: self.$image, show: self.$show)
        }
        
    }
}


//Done
struct ImagePicker: UIViewControllerRepresentable{
    @Binding var images : Data
    @Binding var show : Bool
    func makeCoordinator() -> Coordinator {
        return ImagePicker.Coordinator(img1: self)
    }

    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.delegate = context.coordinator
        picker.sourceType = .photoLibrary
    
        return picker
    }
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //
    }
    class Coordinator: NSObject, UIImagePickerControllerDelegate, UINavigationControllerDelegate{
        var img0 : ImagePicker
        init(img1: ImagePicker){
            img0 = img1
        }
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            self.img0.show.toggle()
        }
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            let image = info [.originalImage] as? UIImage
            let data = image?.jpegData(compressionQuality: 0.50)
            self.img0.images = data!
           
            
        }
    }
}
