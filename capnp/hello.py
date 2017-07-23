import capnp

import addressbook_capnp

print(addressbook_capnp.qux)

my_dict = {'name' : 'alice'}
person = addressbook_capnp.Person.new_message(**my_dict)

f = open('packed.bin', 'w+b')
person.write_packed(f)
f.close

f = open('packed.bin', 'rb')
person = addressbook_capnp.Person.read_packed(f)
pd = person.to_dict()
print(pd)
f.close
