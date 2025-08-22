/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package murach.data;

/**
 *
 * @author ADMIN
 */
import murach.business.User;
public class UserDB {
    public static int insert(User user) {
        // Tạm return 1 để giả lập lưu thành công
        System.out.println("Inserting user: " + user.getEmail());
        return 1;
    }

    public static User selectUser(String email) {
        // Tạm trả về user giả lập
        return new User("Test", "User", email);
}
}
