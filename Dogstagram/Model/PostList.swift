
import Foundation

class PostList : ObservableObject {
    @Published var post_list = [PostModel]()
    init() {
        print("Fetched From Database")
        let post_1 = PostModel(post_id: "", user_id: "", user_name: "Unidentified1", caption: "This is a test cap ", date_create: Date(), like_count: 0, liked_by_user: false)
        let post_2 = PostModel(post_id: "", user_id: "", user_name: "Unidentified2", caption: "This is a test cap ", date_create: Date(), like_count: 0, liked_by_user: false)
        let post_3 = PostModel(post_id: "", user_id: "", user_name: "Unidentified3", caption: "This is a test cap ", date_create: Date(), like_count: 0, liked_by_user: false)
        let post_4 = PostModel(post_id: "", user_id: "", user_name: "Unidentified4", caption: "This is a test cap ", date_create: Date(), like_count: 0, liked_by_user: false)
        
        self.post_list.append(post_1)
        self.post_list.append(post_2)
        self.post_list.append(post_3)
        self.post_list.append(post_4)

    }
}
