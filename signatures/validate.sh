#/bin/bash
# Author: Paweł 'felixd' Wojciechowski
# OpenPGP: 0xE0F94FE793B71D7EC1475ECD9CC77B3A8866A558
DOC="doc.txt"
# Author of document
AUTHOR="E0F94FE793B71D7EC1475ECD9CC77B3A8866A558"

# Validator 
# As an example I am using two keys I have generatet locally.
# In real life this should be another side that is signign a document.
VALIDATOR="A32A6115CA696220C1644E98EB9E03D2EBC82F5A"

# You can verify my signature. You won't be able to validate 2nd signature ($VALIDATOR key) since that key (public) is not available online.
gpg --receive-keys E0F94FE793B71D7EC1475ECD9CC77B3A8866A558
gpg --verify $DOC.signatures.asc $DOC
