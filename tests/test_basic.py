import nanobind_example as m

def test_add():
    assert m.add(1, 2) == 3

if __name__ == "__main__":
    test_add()
