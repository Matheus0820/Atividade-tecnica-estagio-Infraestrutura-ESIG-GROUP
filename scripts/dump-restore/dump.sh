#!/bin/bash

export BDNAME='bdesig'
export DUMPARQ='bdesig_bkp.bkp'

sudo -u postgres pg_dump $BDNAME > $DUMPARQ

echo "DUMP realizado com sucesso!"
