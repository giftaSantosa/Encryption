# Encryption

A Ruby method that encrypts a string using a 3-letter left shift (Caesar cipher), similar to the classic Caesar cipher used by Julius Caesar to send secret messages to his generals.

## How it works

The `encrypt` method shifts every letter in the input string 3 positions back in the alphabet:

- `A → X`, `B → Y`, `C → Z` (wraps around to the end of the alphabet)
- `D → A`, `E → B`, `F → C`, and so on through `Z → W`

Non-letter characters (spaces, punctuation, numbers) are left unchanged.

### Example

| Input | Output |
|---|---|
| `E` | `B` |
| `THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG` | `QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD` |
| `THE QUICK BROWN, FOX JUMPS OVER THE LAZY DOG!` | `QEB NRFZH YOLTK, CLU GRJMP LSBO QEB IXWV ALD!` |

## Usage

```ruby
require_relative 'encryption'

encrypt("HELLO")
# => "EBIIL"
```

## Running the tests

Tests are written with RSpec and located in `spec/encryption_spec.rb`.

```bash
bundle exec rspec
```

or simply:

```bash
rspec spec/encryption_spec.rb
```
