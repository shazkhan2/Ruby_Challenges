## Background and Objectives

```bash
  cd ~/karnov-ruby-challenges/spicy-01-dna-translator
  rake
  code .
```

You have it, your dog has it and even that awful boss you had once has it. Deoxyribonucleic acid, or [DNA](http://en.wikipedia.org/wiki/DNA) is the code of life. It can be described as a chemical found in the nucleus of cells and carries the "instructions" for the development and functioning of living organisms.

DNA consists of combinations of four nucleobases, each represented by a letter:
- Cytosine (C)
- Guanine (G)
- Adenine (A)
- Thymine (T)

In DNA strings, the nucleobases `A` and `T` are complements of each other, as are `C` and `G`. Your method will accept one side of the DNA, and return its complement.

## Specs

### translate_dna

- It should compute the right complement to the input DNA string.
- It should detect non-valid DNA characters and return `invalid dna strand detected`
