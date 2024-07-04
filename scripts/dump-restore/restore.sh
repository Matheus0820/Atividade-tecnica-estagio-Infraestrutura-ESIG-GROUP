#!/bin/bash

BDRESTORE='bdesig'
DUMPARQ='bdesig_bkp.bkp'

sudo -u postgres psql $BDRESTORE < $DUMPARQ

echo 'RESTORE realizado com sucesso!'
