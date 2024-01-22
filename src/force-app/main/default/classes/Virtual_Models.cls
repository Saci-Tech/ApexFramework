/**
 * 
 * @author Eduardo Barbosa
 * @since January, 22, 2024
 */
public virtual class Virtual_Models {
    public virtual class BaseModel {
        String externalId { get; set; }
    }
    public virtual class ContactModel extends BaseModel {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String email { get; set; }
        public String phone { get; set; }

        public ContactModel() {}
        public ContactModel(String firstName, String lastName, String email, String phone) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.phone = phone;
        }
    }

    public virtual class AddressModel {
        public String street { get; set; }
        public String city { get; set; }
        public String state { get; set; }
        public String country { get; set; }
        public String postalCode { get; set; }

        public AddressModel() {}
        public AddressModel(String street, String city, String state, String country, String postalCode) {
            this.street = street;
            this.city = city;
            this.state = state;
            this.country = country;
            this.postalCode = postalCode;
        }
    }
}