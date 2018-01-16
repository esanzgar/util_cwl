cwlVersion: v1.0
label: Retrieve biological records
doc: Retrieve biological records by accession identifier
class: Workflow

inputs:
  file-accessions:
    type: File
    doc: File with proteins accessions codes
  codes:
    type: string
    doc: Protein accessions that should be included
  dbName:
    type: string
    doc: Database to be searched

outputs:
  ids:
    label: Sequence in FASTA format
    doc: Output file contains sequences in FASTA format
    type: File
    outputSource: fetch/out

steps:
  filter:
    label: Filter sequences
    doc: Filter sequences by matching identifiers
    run: filter_ids.cwl
    in:
      file-accessions: file-accessions
      codes: codes
    out: [out]

  fetch:
    label: Dbfetch
    doc: Retrieve biological records from identifiers
    run: https://raw.githubusercontent.com/esanzgar/webservice-cwl/webprod/docker_cwls/dbfetch.cwl
    in:
      idList: filter/out
      dbName: dbName
      method:
        default: fetchBatch
      outFormat:
        default: fasta

    out: [out]
