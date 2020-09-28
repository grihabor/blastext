# Install

```bash
sudo apt install python3-dev python3-venv
python3 -n venv venv
source venv/bin/activate
pip install cython
BLAST_ROOT=/home/grihabor/Downloads/ncbi-blast/ncbi-blast-2.10.1+-src/c++/ BLAST_RELEASE=/home/grihabor/Downloads/ncbi-blast/ncbi-blast-2.10.1+-src/c++/ReleaseMT/ pip install .
```

## Library order

```bash
cat ./src/build-system/library_relations.txt | awk '{print $1 " " $3}'| grep -v "(" | grep -v "#"  | tsort | jq -R . | jq -s .
```
