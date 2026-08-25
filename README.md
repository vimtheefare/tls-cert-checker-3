# TLS Certificate Checker

This is a straightforward shell script that checks the expiration date of TLS certificates for a list of specified domains. It's a handy tool for anyone managing web services to ensure that their certificates are valid and to avoid any unexpected downtime.

## Usage
1. Add your domains to the `domains.txt` file, one domain per line.
2. Run the script:
   ```
   ./check_cert_expiry.sh
   ```
3. The script will output the expiry dates for each domain.

## Requirements
- `openssl` must be installed on your system.

## License
This project is open-source and available under the MIT License.
