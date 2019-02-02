import leancloud

def test_key_type():
    leancloud.init("r7WOBCoFgBlpuRoBTIWjb7XI-gzGzoHsz", "PT4FpSvABfO0wKCD4WYA0wdK")
    TestObject = leancloud.Object.extend("TestObject")
    test_object = TestObject.create_without_data("5c45436a7565716f24d459ae")
    test_object.fetch()
    test_object.set(123, "number")
    print(f'123: {test_object.get(123)}')
    print(f'"123": {test_object.get("123")}')
    test_object.save()
    test_object.fetch()
    print(f'[FETCHED] 123: {test_object.get(123)}')
    print(f'[FETCHED] "123": {test_object.get("123")}')
    test_object.set(123, "new number")
    test_object.save()
    print(f'[UPDATED] 123: {test_object.get(123)}')
    print(f'[UPDATED] "123": {test_object.get("123")}')
    test_object.fetch()
    print(f'[UPDATED & FETCHED] 123: {test_object.get(123)}')
    print(f'[UPDATED & FETCHED] "123": {test_object.get("123")}')


if __name__ == '__main__':
    test_key_type()