# 03-lib-cli11 

## Example run 

```
./steps/03-lib-cli11/scripts/05_run.sh
```
```
App test running without required argument -----------------------------
Raw argv:
argv[0] = build/app
argv[1] = -l
argv[2] = 03-lib-cli11
argv[3] = --mode
argv[4] = develop
--confs is required
Run with --help for more information.
App return: 106
App running ------------------------------------------------------------
Raw argv:
argv[0] = build/app
argv[1] = --confs
argv[2] = 03-lib-cli11/cofns/dev.json
argv[3] = -l
argv[4] = 03-lib-cli11
argv[5] = --mode
argv[6] = develop
argv[7] = -t
argv[8] = test
argv[9] = --unknownarg


Parsed options:
Option: --help
Option: --confs
  Value: 03-lib-cli11/cofns/dev.json
Option: --location
  Value: 03-lib-cli11
Option: --mode
  Value: develop
Option: --intvalue
Option: --floatvalue
Option: --boolvalue


Checking unknown arguments:
Warning: unknown arguments: -t test --unknownarg


Reconstructed:
## App cli
# Path to confs file
confs="03-lib-cli11/cofns/dev.json"

# App location path
location="03-lib-cli11"

# App start mode
mode="develop"

# App int value
intvalue=""

# App float value
floatvalue=""

# App bool value
boolvalue=""



Value from app:
Confs path: 03-lib-cli11/cofns/dev.json
Int value: 0
Float value: 0
Bool value: false
App return: 0

```