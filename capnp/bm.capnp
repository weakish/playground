@0x934efea7f017fff0;

struct Person {
  name @0 :Text;
}

struct AddressBook {
  people @0 :List(Person);
}
