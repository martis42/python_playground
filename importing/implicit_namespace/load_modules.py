from my_namespace.foo.foo_module import my_function as foo_function
from my_namespace.bar import my_function as bar_function
from my_namespace.foobar_module import my_function as foobar_function

print("")
print(f"Foo    : {foo_function()}")
print(f"Bor    : {bar_function()}")
print(f"Foobar : {foobar_function()}")
