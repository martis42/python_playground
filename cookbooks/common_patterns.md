## Print list without for loop

Use `join`, more precisely `"separator_string".join(<something_iteratable>)`

`print("\n".join(["a", "b", "c"]))`
will print:
```
a
b
c
```

`print("\n".join(f"- {x}_" for x in ["a", "b", "c"]))`
will print:
```
- a_
- b_
- c_
```

