# Lecture 1

### Binary Number System

> Numbers that have two digits. 

 | Nomenclature  | Bits   |
 |  :-----:      | :---:  |
 | Byte          | 8      |
 | Nibble        | 4      |
 | bit           | 1      |


### Converting Bases

#### Logarithms

> logA(x) = logB(x)/logB(A)



#### Example
```
(101.01)_2

```

|  1   |   0   |   1   |   0  |   1  |
| :---:| :---: | :---: | :---:| :---:|
| MSB  |       |       |      |  LSB |

 
```
1x(2^2) + 0 X (2^1) + 1x(2^0)  + 0x(2^-1) + 1x(2^-2)

101.01 base_2 = 5.25 base_10
```


### Floating Point Numbers

> MSB will be the sign bit
```
11010 is a negative number for signed data
01101 is a positive number for signed data
```
#### Example
```
floating point value
0100000111100000000000000000000000
```

| 0 | 10000011 | 1100000000000000000000000 |
| :---: | :---: | :---: |
| sign  |exponent | fraction|


### Binary Codes

> Determine the number of bits needed to store the data

- C = 20,234,567 - data to store

- B = 2 - desired Base

```
logB(C)

log2(20,234,567) = 24.27031

25 bits needed to store this data
```

#### Binary Coded Decimal

#### Gray Code
> Karnaugh Maps 

> Binary Algebra


- Invented by Frank Gray 
- Only one 

##### Conversion 
Binary Number - > Gray Code

Number %+  = refelctive Gray Code

1010

0 +% 0 -> 0

0 +% 1 -> 1

1 +% 0 -> 1

1 +% 1 -> 10 -> Carry bit ignored, -> 0

G(n) = B(n) +% B(n+1) 
- n+1 will be assumed 0 if not supplied

