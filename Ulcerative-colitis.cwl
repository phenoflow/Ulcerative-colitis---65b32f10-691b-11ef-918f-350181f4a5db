cwlVersion: v1.0
steps:
  read-potential-cases-omop:
    run: read-potential-cases-omop.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  large-ulcerative-colitis---secondary:
    run: large-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-omop/output
  ulcerative-colitis-proctosigmoiditis---secondary:
    run: ulcerative-colitis-proctosigmoiditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: large-ulcerative-colitis---secondary/output
  ulcerative-colitis-unspecified---secondary:
    run: ulcerative-colitis-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-proctosigmoiditis---secondary/output
  ulcerative-colitis-diverticulosis---secondary:
    run: ulcerative-colitis-diverticulosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-unspecified---secondary/output
  ulcerative-colitis-fistula---secondary:
    run: ulcerative-colitis-fistula---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-diverticulosis---secondary/output
  ulcerative-colitis-leftsided---secondary:
    run: ulcerative-colitis-leftsided---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-fistula---secondary/output
  other-ulcerative-colitis---secondary:
    run: other-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-leftsided---secondary/output
  ulcerative-colitis-diverticulitis---secondary:
    run: ulcerative-colitis-diverticulitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: other-ulcerative-colitis---secondary/output
  rectal-ulcerative-colitis---secondary:
    run: rectal-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-diverticulitis---secondary/output
  ulcerative-colitis-proctitis---secondary:
    run: ulcerative-colitis-proctitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: rectal-ulcerative-colitis---secondary/output
  colitis---secondary:
    run: colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-proctitis---secondary/output
  universal-ulcerative-colitis---secondary:
    run: universal-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: colitis---secondary/output
  ulcerative-colitis-ileocolitis---secondary:
    run: ulcerative-colitis-ileocolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: universal-ulcerative-colitis---secondary/output
  acute-ulcerative-colitis---secondary:
    run: acute-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-ileocolitis---secondary/output
  severe-ulcerative-colitis---secondary:
    run: severe-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: acute-ulcerative-colitis---secondary/output
  chronic-ulcerative-colitis---secondary:
    run: chronic-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: severe-ulcerative-colitis---secondary/output
  ulcerative-colitis-pancolitis---secondary:
    run: ulcerative-colitis-pancolitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-ulcerative-colitis---secondary/output
  ulcerative-colitis-exacerbation---secondary:
    run: ulcerative-colitis-exacerbation---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-pancolitis---secondary/output
  ulcerative-colitis-iritis---secondary:
    run: ulcerative-colitis-iritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-exacerbation---secondary/output
  moderate-ulcerative-colitis---secondary:
    run: moderate-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-iritis---secondary/output
  ulcerative-colitis-remission---secondary:
    run: ulcerative-colitis-remission---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: moderate-ulcerative-colitis---secondary/output
  cooccurrent-ulcerative-colitis---secondary:
    run: cooccurrent-ulcerative-colitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: ulcerative-colitis-remission---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: cooccurrent-ulcerative-colitis---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
