@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CML

syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Any
        = _String
        | _Link
        | _Float
        | _Integer
        | _StringArray
        | _FloatArray
        | _IntegerArray
        | _FloatMatrix
        | _Coordinate2
        | _Coordinate3
        | _Angle
        | _Torsion
        | _List
        | Molecule
        | Formula
        | Atom
        | Atom_Array
        | Bond
        | Bond_Array
        | Electron
        | Reaction
        | Crystal
        | Sequence
        | Feature
 ;
syntax AngleUnits
        = degrees: ()
        | radians: ()
 ;
syntax AtomRefs_Element
        = 
        _StringBuiltin
 ;
syntax StringBuiltin
        = id: ()
        | elementType: ()
        | atomId: ()
        | residueType: ()
        | residueId: ()
        | atomRef: ()
        | order: ()
        | stereo: ()
        | spaceground: ()
 ;
syntax _String
        = 
        ()
 ;
syntax _Link
        = 
        ()
 ;
syntax FloatBuiltin
        = x2: ()
        | y2: ()
        | x3: ()
        | y3: ()
        | z3: ()
        | xFract: ()
        | yFract: ()
        | zFract: ()
        | occupancy: ()
        | isotope: ()
        | formalCharge: ()
        | hydrogenCount: ()
        | nonHydrogenCount: ()
        | atomParity: ()
        | length: ()
        | acell: ()
        | bcell: ()
        | ccell: ()
        | alpha: ()
        | beta: ()
        | gamma: ()
        | z: ()
 ;
syntax _Float
        = 
        ()
 ;
syntax IntegerBuiltin
        = isotope: ()
        | formalCharge: ()
        | hydrogenCount: ()
        | nonHydrogenCount: ()
        | atomParity: ()
        | z: ()
 ;
syntax _Integer
        = 
        ()
 ;
syntax _StringArray
        = 
        delimiter: String
 ;
syntax _FloatArray
        = 
        ()
 ;
syntax _IntegerArray
        = 
        ()
 ;
syntax _FloatMatrix
        = 
        ()
 ;
syntax Coordinate2Builtin
        = 
        xy2: ()
 ;
syntax _Coordinate2
        = 
        ()
 ;
syntax Coordinate3Builtin
        = xyz3: ()
        | xyzFract: ()
 ;
syntax _Coordinate3
        = 
        ()
 ;
syntax _Angle
        = 
        ()
 ;
syntax _Torsion
        = 
        ()
 ;
syntax _List
        = 
        Any any+
 ;
syntax Molecule
        = 
        Any any+
 ;
syntax Formula
        = 
        Any any+
 ;
syntax Atom
        = 
        Any any+
 ;
syntax Atom_Array
        = 
        Any any+
 ;
syntax Bond
        = 
        Any any+
 ;
syntax Bond_Array
        = 
        Any any+
 ;
syntax Electron
        = 
        Any any+
 ;
syntax Reaction
        = 
        Any any+
 ;
syntax Crystal
        = 
        Any any+
 ;
syntax Sequence
        = 
        Any any+
 ;
syntax Feature
        = 
        Any any+
 ;
