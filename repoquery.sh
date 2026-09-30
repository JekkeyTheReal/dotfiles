#!/bin/bash

dnf repoquery --userinstalled --qf "%{name}\n" > dnf-repoquery
