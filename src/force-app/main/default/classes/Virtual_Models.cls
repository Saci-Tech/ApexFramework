/**
 * Virtual Class Virtual_Models
 * @author Eduardo Barbosa
 * @since January, 22, 2024
 */
public virtual class Virtual_Models {
    /**
     * Virtual Class BaseModel
     * Contains a single variable, which is inherited by all other classes.
     * Good for when you are sure that an SObject has an External Id field.
     */
    public virtual class BaseModel {
        String externalId { get; set; }
        public BaseModel() {}

        /**
         * @param externalId String representing an external system's unique identifier for the record
         */
        public BaseModel(String externalId) {
            this.externalId = externalId;
        }
    }
    /**
     * Virtual Class ContactModel
     * Contains the basic field variables for the Contact SObject.
     * Once extended, additional fields can be included for specific purposes
     */
    public virtual class ContactModel extends BaseModel {
        public String firstName { get; set; }
        public String lastName { get; set; }
        public String email { get; set; }
        public String phone { get; set; }

        public ContactModel() {}
        /**
         * @param firstName String representing the first name
         * @param lastName String representing the last name
         * @param email String representing the email address
         * @param phone String representing the phone number
         * @param externalId String representing another system's exclusive identifier
         */
        public ContactModel(String firstName, String lastName, String email, String phone, String externalId) {
            super(externalId);
            this.firstName = firstName;
            this.lastName = lastName;
            this.email = email;
            this.phone = phone;
        }
    }
    /**
     * Virtual Class AddressModel
     * Contains basic field variables for the Address SObject
     * Once extended, additional fields can be included for specific purposes
     */
    public virtual class AddressModel extends BaseModel {
        public String street { get; set; }
        public String city { get; set; }
        public String state { get; set; }
        public String country { get; set; }
        public String postalCode { get; set; }

        public AddressModel() {
            super();
        }
        /**
         * @param street String representing a street name
         * @param city String representing the city name where the street is
         * @param state String representing the state where the city is
         * @param country String representing the country where the state is
         * @param postalCode String representing the local or global addressing system code
         * @param externalId String representing the unique identifier for a record in an external system
         */
        public AddressModel(String street, String city, String state, String country, String postalCode, String externalId) {
            super(externalId);
            this.street = street;
            this.city = city;
            this.state = state;
            this.country = country;
            this.postalCode = postalCode;
        }
    }
    public virtual class AccountModel extends BaseModel {
        public String name { get; set; }
        public String phone { get; set; }
        public AddressModel billingAddress { get; set; }

        public AccountModel() {
            super();
        }
        public AccountModel(String name, String phone, AddressModel billingAddress, String externalId) {
            super(externalId);
            this.name = name;
            this.phone = phone;
            this.billingAddress = new AddressModel();
            this.billingAddress = billingAddress;
        }
    }
}