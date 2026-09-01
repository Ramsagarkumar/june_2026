#!/bin/user/python


# ip.py
import socket

hostname = socket.gethostname()
ip = socket.gethostbyname(hostname)

print(f"IP address: {ip}")
