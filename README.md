# MySet

### Implementation of a set module driven out by tests
* A set can contain any kind of elements
* elements in a set don't have to be of the same type 
* sets can't contain duplicate elements 
    - when inserting an element in a set where it's already present, the insertion is simply a no-op.


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `kv` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:kv, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/kv](https://hexdocs.pm/kv).

