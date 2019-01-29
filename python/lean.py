import leancloud


def test_null():
    leancloud.init("r7WOBCoFgBlpuRoBTIWjb7XI-gzGzoHsz", "PT4FpSvABfO0wKCD4WYA0wdK")
    TestObject = leancloud.Object.extend("TestObject")
    test_object = TestObject.create_without_data("5c45436a7565716f24d459ae")
    empty = test_object.get("empty")
    print(f"empty: {empty}")  # None
    nonexist = test_object.get("nonexist")
    print(f"nonexist: {nonexist}")  # None

    test_object.set("new", None)
    test_object.set("hello", None)
    test_object.save()

    test_object.fetch()
    print(f"new: {test_object.get('new')}")  # None
    print(f"hello: {test_object.get('hello')}") # None


if __name__ == "__main__":
    test_null()
