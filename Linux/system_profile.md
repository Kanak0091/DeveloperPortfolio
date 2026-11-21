# System Profile & Binary Number Representation

## Hardware & OS Specifications

| Component | Specification |
| :--- | :--- |
| **CPU Model Name & Cores** | AMD Ryzen 9 8940HX with Radeon Graphics — 32 Cores |
| **Total & Available RAM** | 7.4Gi Total / 6.6Gi Available |
| **Primary Storage** | 722.9M  HDD |
| **OS Name & Kernel Version** | Ubuntu 26.04.1 LTS — Linux 6.18.58.1-microsoft-standard-WSL2 |

---

## Binary Number Representation

### 1. Decimal `75` to Binary (Repeated Division by 2)

* $75 \div 2 = 37$ remainder **$1$** (LSB)
* $37 \div 2 = 18$ remainder **$1$**
* $18 \div 2 = 9$ remainder **$0$**
* $9 \div 2 = 4$ remainder **$1$**
* $4 \div 2 = 2$ remainder **$0$**
* $2 \div 2 = 1$ remainder **$0$**
* $1 \div 2 = 0$ remainder **$1$** (MSB)

Reading the remainders from bottom to top (MSB to LSB):
$$75_{10} = 1001011_2$$

### 2. Binary `110101` to Decimal (Positional Weight Method)

Each bit is multiplied by $2^n$, starting from $n = 0$ on the right:

$$(1 \times 2^5) + (1 \times 2^4) + (0 \times 2^3) + (1 \times 2^2) + (0 \times 2^1) + (1 \times 2^0)$$
$$= (1 \times 32) + (1 \times 16) + (0 \times 8) + (1 \times 4) + (0 \times 2) + (1 \times 1)$$
$$= 32 + 16 + 0 + 4 + 0 + 1 = 53$$

$$110101_2 = 53_{10}$$

### Why Computers Use Binary Internally
Computers use binary internally because digital circuits rely on millions of microscopic transistors that operate most reliably in two distinct electrical voltage states—ON (1) and OFF (0)—minimizing signal interference and hardware error.
