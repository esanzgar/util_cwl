cwlVersion: v1.0
class: CommandLineTool
baseCommand: filter_seq.sh
requirements:
    - class: InlineJavascriptRequirement
hints:
  DockerRequirement:
    dockerPull: esanzgar/util_cwl

stdout: out.txt

inputs:
  file-sequences:
    type: File
    doc: File with proteins sequences
    inputBinding:
      position: 1
  sequences:
    type: string
    doc: Protein sequences that should be included
    inputBinding:
      position: 2

outputs:
  ids:
    type: File
    outputBinding:
      glob: out.txt
