# HTML Parser - Subdomain Finder

A simple Bash script to parse HTML from a given domain and extract subdomains by resolving URLs found in the page source.

## 📌 Features

- Downloads the HTML content of a given domain
- Extracts all URLs from `href` attributes
- Resolves hostnames to IP addresses
- Filters and deduplicates results
- Saves output to a file named `<domain>.ip.txt`

## 🛠️ Requirements

- `wget`
- `grep`
- `awk`
- `host` (usually part of the `bind-utils` or `dnsutils` package)

## 🚀 Usage

```bash
./html_parser.sh <domain>
```
## Example
./html_parser.sh google.com

## 📂 Output
- The script creates a file named <domain>.ip.txt containing the resolved IP addresses of the extracted subdomains.
- Temporary files (index.html, lista) are removed after execution.
## ⚠️ Notes
- This script is intended for educational and informational purposes only.
- Ensure you have permission to scan or parse the target domain.
## 📄 License
This project is open-source and available under the MIT License.

## Author
Marcos Pereira – Contributions welcome!
