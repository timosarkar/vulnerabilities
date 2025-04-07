{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.subfinder # subdomain enumeration
    #pkgs.naabu # superfast port scanner
    pkgs.httpx # HTTP probing tool
    pkgs.katana # web application scanner
    #pkgs.gau # Get all URLs from JS files
    #pkgs.ffuf # fuzzer
    #pkgs.inql # graphql injection tool
    #pkgs.sqlmap # SQL injection tool
    pkgs.dalfox # XSS scanner
    pkgs.nikto # web server scanner
    pkgs.nuclei # vulnerability scanner
  ];

  shellHook = ''
  # find xss: subfinder -d <domain> | httpx | katana | dalfox pipe
  # find vuln: subfinder -d <domain> | httpx | katana | nuclei -t <template>
  '';
}
