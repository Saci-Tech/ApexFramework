/**
 * 
 * @author Eduardo Barbosa
 * @since January, 22, 2024
 */
public class RestResource_Models {
    public class ContactWrapper extends Virtual_Models.ContactModel {
        public ContactWrapper() {
            super();
        }
        public ContactWrapper(String firstName, String lastName, String email, String phone) {
            super(firstName, lastName, email, phone);
        }
    }
}