Explicit namespace packages mark the namespace explicitly through a `__init__.py` file with the content
```python
from pkgutil import extend_path
__path__ = extend_path(__path__, __name__)
```

Marking a directory explicitly as namespace like this is compatible with implicit namespace packages. Meaning any
of the following files can be deleted and the example still works:
* [root1/my_namespace/__init__.py](root1/my_namespace/__init__.py)
* [root2/my_namespace/__init__.py](root2/my_namespace/__init__.py)
* [root3/my_namespace/__init__.py](root3/my_namespace/__init__.py)

---

There exist an alternative approach to specify a namespace package based on `pkg_resources`.
This approach has however some disadvantages:
* Not compatible with impplicit namespace packages
* `pkg_resources` is part of `setuptools` and not always present on the system, wheras `pkgutil` is part of the standard library.
