cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  ear-and-upper-respiratory-tract-infections---secondary:
    run: ear-and-upper-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  nasopharyngeal-ear-and-upper-respiratory-tract-infections---secondary:
    run: nasopharyngeal-ear-and-upper-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections---secondary/output
  ear-and-upper-respiratory-tract-infections-diphtheria---secondary:
    run: ear-and-upper-respiratory-tract-infections-diphtheria---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: nasopharyngeal-ear-and-upper-respiratory-tract-infections---secondary/output
  ear-and-upper-respiratory-tract-infections-pharyngitis---secondary:
    run: ear-and-upper-respiratory-tract-infections-pharyngitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-diphtheria---secondary/output
  ear-and-upper-respiratory-tract-infections-pharynx---secondary:
    run: ear-and-upper-respiratory-tract-infections-pharynx---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-pharyngitis---secondary/output
  ear-and-upper-respiratory-tract-infections-media---secondary:
    run: ear-and-upper-respiratory-tract-infections-media---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-pharynx---secondary/output
  infectious-ear-and-upper-respiratory-tract-infections---secondary:
    run: infectious-ear-and-upper-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-media---secondary/output
  ear-and-upper-respiratory-tract-infections-myiasis---secondary:
    run: ear-and-upper-respiratory-tract-infections-myiasis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: infectious-ear-and-upper-respiratory-tract-infections---secondary/output
  ear-and-upper-respiratory-tract-infections-externa---secondary:
    run: ear-and-upper-respiratory-tract-infections-externa---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-myiasis---secondary/output
  ear-and-upper-respiratory-tract-infections-classified---secondary:
    run: ear-and-upper-respiratory-tract-infections-classified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-externa---secondary/output
  parasitic-ear-and-upper-respiratory-tract-infections---secondary:
    run: parasitic-ear-and-upper-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-classified---secondary/output
  other-ear-and-upper-respiratory-tract-infections---secondary:
    run: other-ear-and-upper-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: parasitic-ear-and-upper-respiratory-tract-infections---secondary/output
  ear-and-upper-respiratory-tract-infections-unspecified---secondary:
    run: ear-and-upper-respiratory-tract-infections-unspecified---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: other-ear-and-upper-respiratory-tract-infections---secondary/output
  ear-and-upper-respiratory-tract-infections-mastoiditis---secondary:
    run: ear-and-upper-respiratory-tract-infections-mastoiditis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-unspecified---secondary/output
  ear-and-upper-respiratory-tract-infections-myringitis---secondary:
    run: ear-and-upper-respiratory-tract-infections-myringitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-mastoiditis---secondary/output
  chronic-ear-and-upper-respiratory-tract-infections---secondary:
    run: chronic-ear-and-upper-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-myringitis---secondary/output
  acute-ear-and-upper-respiratory-tract-infections---secondary:
    run: acute-ear-and-upper-respiratory-tract-infections---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: chronic-ear-and-upper-respiratory-tract-infections---secondary/output
  ear-and-upper-respiratory-tract-infections-abscess---secondary:
    run: ear-and-upper-respiratory-tract-infections-abscess---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: acute-ear-and-upper-respiratory-tract-infections---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: ear-and-upper-respiratory-tract-infections-abscess---secondary/output
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
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
