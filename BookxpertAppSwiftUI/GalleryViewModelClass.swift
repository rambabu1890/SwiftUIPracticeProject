

import Foundation
import UIKit
class GalleryViewModelClass:ObservableObject{
    @Published var galleryItems:[UIImage] = []
    @Published var counter:Int = 0
    
}
