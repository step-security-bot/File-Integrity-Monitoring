# File-Integrity-Monitoring
File Integrity Monitoring


## Requirements
- Program must take the following arguments:  
    - <code>--build-hash-db</code>: Generate hash for given directory.  
    - <code>--dir</code>: Directory for which hash must be generated/monitored.  

- Generate hash for all files in a given directory  
    - Generate hash for all symlinks  
    - Symlinks must only be scanned once.  
