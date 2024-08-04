#!/bin/bash

conda activate main
quarto render ~/repos/notes
~/auto-commit.sh ~/repos/notes
conda deactivate
