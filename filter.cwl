cwlVersion: v1.0
class: CommandLineTool
baseCommand: filter.sh
hints:
  DockerRequirement:
    dockerPull: esanzgar/util_cwl

stdout: out.txt

inputs:
  file-accessions:
    type: File
    doc: File with proteins accessions codes
    inputBinding:
      position: 1
  codes:
    type: string
    doc: Protein accessions that should be included
    inputBinding:
      position: 2

outputs:
  out:
    type: File
    outputBinding:
      glob: out.txt
