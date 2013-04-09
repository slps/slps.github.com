@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CML

syntax PCDATA
        = 
        ()
 ;
syntax Any
        = 
        ()
 ;
syntax TitledElement
        = 
        ()
 ;
syntax IdedElement
        = 
        ()
 ;
syntax ConventionnedElement
        = 
        ()
 ;
syntax DictRefElement
        = 
        ()
 ;
syntax SimpleLink_Element
        = 
        ()
 ;
syntax Counted_Element
        = 
        ()
 ;
syntax Sized_Element
        = 
        ()
 ;
syntax Rows_Element
        = 
        ()
 ;
syntax Columns_Element
        = 
        ()
 ;
syntax Min_Element
        = 
        ()
 ;
syntax Max_Element
        = 
        ()
 ;
syntax Units_Element
        = 
        ()
 ;
syntax AngleUnits
        = degrees: ()
        | radians: ()
 ;
syntax AngleUnits_Element
        = 
        ()
 ;
syntax UnitsRef_Element
        = 
        ()
 ;
syntax AtomRefs_Element
        = 
        ()
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
syntax _StringBuiltin
        = 
        ()
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
syntax _FloatBuiltin
        = 
        ()
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
syntax _IntegerBuiltin
        = 
        ()
 ;
syntax _Integer
        = 
        ()
 ;
syntax _StringArray
        = 
        delimiter: ANY
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
syntax _Coordinate2Builtin
        = 
        ()
 ;
syntax _Coordinate2
        = 
        ()
 ;
syntax Coordinate3Builtin
        = xyz3: ()
        | xyzFract: ()
 ;
syntax _Coordinate3Builtin
        = 
        ()
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
        ANY any+
 ;
syntax Molecule
        = 
        ANY any+
 ;
syntax Formula
        = 
        ANY any+
 ;
syntax Atom
        = 
        ANY any+
 ;
syntax Atom_Array
        = 
        ANY any+
 ;
syntax Bond
        = 
        ANY any+
 ;
syntax Bond_Array
        = 
        ANY any+
 ;
syntax Electron
        = 
        ANY any+
 ;
syntax Reaction
        = 
        ANY any+
 ;
syntax Crystal
        = 
        ANY any+
 ;
syntax Sequence
        = 
        ANY any+
 ;
syntax Feature
        = 
        ANY any+
 ;
