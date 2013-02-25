# CreditCardValidator

This task is to write a ruby program that accepts credit card numbers. Card numbers will be passed in line by line (one set of numbers per line). This program prints the card in the following print format "TYPE: NUMBERS (VALIDITY)".

### Input and Output

For the following credit cards:

1. 4111111111111111
2. 4111111111111
3. 4012888888881881
4. 378282246310005
5. 6011111111111117
6. 5105105105105100
7. 5105 1051 0510 5106
8. 9111111111111111

Expect:

VISA: 4111111111111111       (valid)
VISA: 4111111111111          (invalid)
VISA: 4012888888881881       (valid)
AMEX: 378282246310005        (valid)
Discover: 6011111111111117   (valid)
MasterCard: 5105105105105100 (valid)
MasterCard: 5105105105105106 (invalid)
Unknown: 9111111111111111    (invalid)


### To run credit card number validator:

1. Clone and Navigate to this project's root dir and then run
2. ./validate \<credit card number\>
