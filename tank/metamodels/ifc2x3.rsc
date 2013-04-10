@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ifc2x3

syntax IfcValue
        = 
        ANY IfcAbsorbedDoseMeasurevalue ANY IfcAccelerationMeasurevalue ANY IfcAmountOfSubstanceMeasurevalue ANY IfcAngularVelocityMeasurevalue ANY IfcAreaMeasurevalue ANY IfcBooleanvalue ANY IfcContextDependentMeasurevalue ANY IfcCountMeasurevalue ANY IfcCurvatureMeasurevalue ANY IfcDescriptiveMeasurevalue ANY IfcDoseEquivalentMeasurevalue ANY IfcDynamicViscosityMeasurevalue ANY IfcElectricCapacitanceMeasurevalue ANY IfcElectricChargeMeasurevalue ANY IfcElectricConductanceMeasurevalue ANY IfcElectricCurrentMeasurevalue ANY IfcElectricResistanceMeasurevalue ANY IfcElectricVoltageMeasurevalue ANY IfcEnergyMeasurevalue ANY IfcForceMeasurevalue ANY IfcFrequencyMeasurevalue ANY IfcHeatFluxDensityMeasurevalue ANY IfcHeatingValueMeasurevalue ANY IfcIdentifiervalue ANY IfcIlluminanceMeasurevalue ANY IfcInductanceMeasurevalue ANY IfcIntegervalue ANY IfcIntegerCountRateMeasurevalue ANY IfcIonConcentrationMeasurevalue ANY IfcIsothermalMoistureCapacityMeasurevalue ANY IfcKinematicViscosityMeasurevalue ANY IfcLabelvalue ANY IfcPositiveLengthMeasurevalue ANY IfcLengthMeasurevalue ANY IfcLinearForceMeasurevalue ANY IfcLinearMomentMeasurevalue ANY IfcLinearStiffnessMeasurevalue ANY IfcLinearVelocityMeasurevalue ANY IfcLogicalvalue ANY IfcLuminousFluxMeasurevalue ANY IfcLuminousIntensityDistributionMeasurevalue ANY IfcLuminousIntensityMeasurevalue ANY IfcMagneticFluxDensityMeasurevalue ANY IfcMagneticFluxMeasurevalue ANY IfcMassDensityMeasurevalue ANY IfcMassFlowRateMeasurevalue ANY IfcMassMeasurevalue ANY IfcMassPerLengthMeasurevalue ANY IfcModulusOfElasticityMeasurevalue ANY IfcModulusOfLinearSubgradeReactionMeasurevalue ANY IfcModulusOfRotationalSubgradeReactionMeasurevalue ANY IfcModulusOfSubgradeReactionMeasurevalue ANY IfcMoistureDiffusivityMeasurevalue ANY IfcMolecularWeightMeasurevalue ANY IfcMomentOfInertiaMeasurevalue ANY IfcMonetaryMeasurevalue ANY IfcNormalisedRatioMeasurevalue ANY IfcNumericMeasurevalue ANY IfcPHMeasurevalue ANY IfcParameterValuevalue ANY IfcPlanarForceMeasurevalue ANY IfcPositivePlaneAngleMeasurevalue ANY IfcPlaneAngleMeasurevalue ANY IfcPositiveRatioMeasurevalue ANY IfcPowerMeasurevalue ANY IfcPressureMeasurevalue ANY IfcRadioActivityMeasurevalue ANY IfcRatioMeasurevalue ANY IfcRealvalue ANY IfcRotationalFrequencyMeasurevalue ANY IfcRotationalMassMeasurevalue ANY IfcRotationalStiffnessMeasurevalue ANY IfcSectionModulusMeasurevalue ANY IfcSectionalAreaIntegralMeasurevalue ANY IfcShearModulusMeasurevalue ANY IfcSolidAngleMeasurevalue ANY IfcSoundPowerMeasurevalue ANY IfcSoundPressureMeasurevalue ANY IfcSpecificHeatCapacityMeasurevalue ANY IfcTemperatureGradientMeasurevalue ANY IfcTextvalue ANY IfcThermalAdmittanceMeasurevalue ANY IfcThermalConductivityMeasurevalue ANY IfcThermalExpansionCoefficientMeasurevalue ANY IfcThermalResistanceMeasurevalue ANY IfcThermalTransmittanceMeasurevalue ANY IfcThermodynamicTemperatureMeasurevalue ANY IfcTimeMeasurevalue ANY IfcTimeStampvalue ANY IfcTorqueMeasurevalue ANY IfcVaporPermeabilityMeasurevalue ANY IfcVolumeMeasurevalue ANY IfcVolumetricFlowRateMeasurevalue ANY IfcWarpingConstantMeasurevalue ANY IfcWarpingMomentMeasurevalue
 ;
syntax IfcTrimmingSelect
        = 
        ANY IfcParameterValuevalue ANY IfcCartesianPointvalue
 ;
syntax IfcSpecularHighlightSelect
        = 
        ANY IfcSpecularRoughnessvalue ANY IfcSpecularExponentvalue
 ;
syntax IfcSizeSelect
        = 
        ANY IfcPositiveRatioMeasurevalue ANY IfcNormalisedRatioMeasurevalue ANY IfcPositiveLengthMeasurevalue ANY IfcDescriptiveMeasurevalue ANY IfcLengthMeasurevalue ANY IfcRatioMeasurevalue
 ;
syntax IfcSimpleValue
        = 
        ANY IfcLogicalvalue ANY IfcLabelvalue ANY IfcTextvalue ANY IfcIdentifiervalue ANY IfcBooleanvalue ANY IfcRealvalue ANY IfcIntegervalue
 ;
syntax IfcPresentationStyleSelect
        = 
        ANY IfcNullStylevalue ANY IfcSurfaceStylevalue ANY IfcTextStylevalue ANY IfcFillAreaStylevalue ANY IfcSymbolStylevalue ANY IfcCurveStylevalue
 ;
syntax IfcOrientationSelect
        = 
        ANY IfcPlaneAngleMeasurevalue ANY IfcDirectionvalue
 ;
syntax IfcMetricValueSelect
        = 
        ANY IfcDateTimeSelectvalue ANY IfcTextvalue ANY IfcCostValuevalue ANY IfcTimeSeriesvalue ANY IfcTablevalue ANY IfcMeasureWithUnitvalue
 ;
syntax IfcMeasureValue
        = 
        ANY IfcNormalisedRatioMeasurevalue ANY IfcLuminousIntensityMeasurevalue ANY IfcAmountOfSubstanceMeasurevalue ANY IfcAreaMeasurevalue ANY IfcContextDependentMeasurevalue ANY IfcCountMeasurevalue ANY IfcDescriptiveMeasurevalue ANY IfcElectricCurrentMeasurevalue ANY IfcLengthMeasurevalue ANY IfcPositiveLengthMeasurevalue ANY IfcMassMeasurevalue ANY IfcNumericMeasurevalue ANY IfcParameterValuevalue ANY IfcPlaneAngleMeasurevalue ANY IfcPositivePlaneAngleMeasurevalue ANY IfcRatioMeasurevalue ANY IfcPositiveRatioMeasurevalue ANY IfcSolidAngleMeasurevalue ANY IfcThermodynamicTemperatureMeasurevalue ANY IfcTimeMeasurevalue ANY IfcVolumeMeasurevalue
 ;
syntax IfcHatchLineDistanceSelect
        = 
        ANY IfcPositiveLengthMeasurevalue ANY IfcOneDirectionRepeatFactorvalue
 ;
syntax IfcDerivedMeasureValue
        = 
        ANY IfcIonConcentrationMeasurevalue ANY IfcPHMeasurevalue ANY IfcHeatingValueMeasurevalue ANY IfcSoundPressureMeasurevalue ANY IfcSoundPowerMeasurevalue ANY IfcWarpingMomentMeasurevalue ANY IfcWarpingConstantMeasurevalue ANY IfcThermalExpansionCoefficientMeasurevalue ANY IfcTemperatureGradientMeasurevalue ANY IfcSectionModulusMeasurevalue ANY IfcSectionalAreaIntegralMeasurevalue ANY IfcRotationalMassMeasurevalue ANY IfcModulusOfRotationalSubgradeReactionMeasurevalue ANY IfcModulusOfLinearSubgradeReactionMeasurevalue ANY IfcMassPerLengthMeasurevalue ANY IfcCurvatureMeasurevalue ANY IfcLuminousIntensityDistributionMeasurevalue ANY IfcLinearMomentMeasurevalue ANY IfcShearModulusMeasurevalue ANY IfcRotationalStiffnessMeasurevalue ANY IfcPlanarForceMeasurevalue ANY IfcMomentOfInertiaMeasurevalue ANY IfcModulusOfElasticityMeasurevalue ANY IfcModulusOfSubgradeReactionMeasurevalue ANY IfcLinearStiffnessMeasurevalue ANY IfcLinearForceMeasurevalue ANY IfcAccelerationMeasurevalue ANY IfcTorqueMeasurevalue ANY IfcRotationalFrequencyMeasurevalue ANY IfcRadioActivityMeasurevalue ANY IfcAbsorbedDoseMeasurevalue ANY IfcElectricCapacitanceMeasurevalue ANY IfcDoseEquivalentMeasurevalue ANY IfcElectricChargeMeasurevalue ANY IfcElectricConductanceMeasurevalue ANY IfcElectricResistanceMeasurevalue ANY IfcIlluminanceMeasurevalue ANY IfcInductanceMeasurevalue ANY IfcForceMeasurevalue ANY IfcLuminousFluxMeasurevalue ANY IfcMagneticFluxMeasurevalue ANY IfcMagneticFluxDensityMeasurevalue ANY IfcMonetaryMeasurevalue ANY IfcSpecificHeatCapacityMeasurevalue ANY IfcIsothermalMoistureCapacityMeasurevalue ANY IfcMoistureDiffusivityMeasurevalue ANY IfcVaporPermeabilityMeasurevalue ANY IfcMolecularWeightMeasurevalue ANY IfcThermalConductivityMeasurevalue ANY IfcAngularVelocityMeasurevalue ANY IfcDynamicViscosityMeasurevalue ANY IfcElectricVoltageMeasurevalue ANY IfcEnergyMeasurevalue ANY IfcFrequencyMeasurevalue ANY IfcHeatFluxDensityMeasurevalue ANY IfcIntegerCountRateMeasurevalue ANY IfcKinematicViscosityMeasurevalue ANY IfcLinearVelocityMeasurevalue ANY IfcMassDensityMeasurevalue ANY IfcMassFlowRateMeasurevalue ANY IfcPowerMeasurevalue ANY IfcPressureMeasurevalue ANY IfcThermalAdmittanceMeasurevalue ANY IfcThermalResistanceMeasurevalue ANY IfcThermalTransmittanceMeasurevalue ANY IfcTimeStampvalue ANY IfcVolumetricFlowRateMeasurevalue
 ;
syntax IfcConditionCriterionSelect
        = 
        ANY IfcLabelvalue ANY IfcMeasureWithUnitvalue
 ;
syntax IfcColourOrFactor
        = 
        ANY IfcNormalisedRatioMeasurevalue ANY IfcColourRgbvalue
 ;
syntax IfcAppliedValueSelect
        = 
        ANY IfcMonetaryMeasurevalue ANY IfcRatioMeasurevalue ANY IfcMeasureWithUnitvalue
 ;
syntax Ifc2DCompositeCurve
        = 
        ()
 ;
syntax IfcActionRequest
        = 
        RequestID: ANY
 ;
syntax IfcActor
        = 
        ANY IsActingUpon ANY TheActor
 ;
syntax IfcActorRole
        = 
        ANY Role ANY UserDefinedRole ANY Description
 ;
syntax IfcActuatorType
        = 
        PredefinedType: ANY
 ;
syntax IfcAddress
        = 
        ANY Purpose ANY Description ANY UserDefinedPurpose ANY OfPerson ANY OfOrganization
 ;
syntax IfcAirTerminalBoxType
        = 
        PredefinedType: ANY
 ;
syntax IfcAirTerminalType
        = 
        PredefinedType: ANY
 ;
syntax IfcAirToAirHeatRecoveryType
        = 
        PredefinedType: ANY
 ;
syntax IfcAlarmType
        = 
        PredefinedType: ANY
 ;
syntax IfcAngularDimension
        = 
        ()
 ;
syntax IfcAnnotation
        = 
        ()
 ;
syntax IfcAnnotationCurveOccurrence
        = 
        AnnotatedBySymbols: ANY
 ;
syntax IfcAnnotationFillArea
        = 
        ANY OuterBoundary ANY InnerBoundaries+
 ;
syntax IfcAnnotationFillAreaOccurrence
        = 
        ANY FillStyleTarget ANY GlobalOrLocal
 ;
syntax IfcAnnotationOccurrence
        = 
        ()
 ;
syntax IfcAnnotationSurface
        = 
        ANY Item ANY TextureCoordinates
 ;
syntax IfcAnnotationSurfaceOccurrence
        = 
        ()
 ;
syntax IfcAnnotationSymbolOccurrence
        = 
        ()
 ;
syntax IfcAnnotationTextOccurrence
        = 
        ()
 ;
syntax IfcApplication
        = 
        ANY Version ANY ApplicationFullName ANY ApplicationIdentifier ANY ApplicationDeveloper
 ;
syntax IfcAppliedValue
        = 
        ANY Name ANY Description ANY AppliedValue ANY ValuesReferenced ANY ValueOfComponents ANY IsComponentIn ANY UnitBasis ANY ApplicableDate ANY FixedUntilDate
 ;
syntax IfcAppliedValueRelationship
        = 
        ANY ArithmeticOperator ANY Name ANY Description ANY ComponentOfTotal ANY Components+
 ;
syntax IfcApproval
        = 
        ANY Description ANY ApprovalStatus ANY ApprovalLevel ANY ApprovalQualifier ANY Name ANY Identifier ANY Actors ANY IsRelatedWith ANY Relates ANY ApprovalDateTime
 ;
syntax IfcApprovalActorRelationship
        = 
        ANY Actor ANY Approval ANY Role
 ;
syntax IfcApprovalPropertyRelationship
        = 
        ANY ApprovedProperties+ ANY Approval
 ;
syntax IfcApprovalRelationship
        = 
        ANY Description ANY Name ANY RelatedApproval ANY RelatingApproval
 ;
syntax IfcArbitraryClosedProfileDef
        = 
        OuterCurve: ANY
 ;
syntax IfcArbitraryOpenProfileDef
        = 
        Curve: ANY
 ;
syntax IfcArbitraryProfileDefWithVoids
        = 
        ANY InnerCurves+
 ;
syntax IfcAsset
        = 
        ANY OriginalValue ANY CurrentValue ANY TotalReplacementCost ANY Owner ANY User ANY ResponsiblePerson ANY IncorporationDate ANY DepreciatedValue ANY AssetID
 ;
syntax IfcAsymmetricIShapeProfileDef
        = 
        ANY TopFlangeWidth ANY TopFlangeThickness ANY TopFlangeFilletRadius ANY CentreOfGravityInY
 ;
syntax IfcAxis1Placement
        = 
        Axis: ANY
 ;
syntax IfcAxis2Placement2D
        = 
        RefDirection: ANY
 ;
syntax IfcAxis2Placement3D
        = 
        ANY Axis ANY RefDirection
 ;
syntax IfcBSplineCurve
        = 
        ANY Degree ANY CurveForm ANY ClosedCurve ANY SelfIntersect ANY ControlPointsList
 ;
syntax IfcBeam
        = 
        ()
 ;
syntax IfcBeamType
        = 
        PredefinedType: ANY
 ;
syntax IfcBezierCurve
        = 
        ()
 ;
syntax IfcBlobTexture
        = 
        ANY RasterFormat ANY RasterCode
 ;
syntax IfcBlock
        = 
        ANY XLength ANY YLength ANY ZLength
 ;
syntax IfcBoilerType
        = 
        PredefinedType: ANY
 ;
syntax IfcBooleanClippingResult
        = 
        ()
 ;
syntax IfcBooleanResult
        = 
        ANY FirstOperand ANY SecondOperand ANY Operator
 ;
syntax IfcBoundaryCondition
        = 
        Name: ANY
 ;
syntax IfcBoundaryEdgeCondition
        = 
        ANY LinearStiffnessByLengthX ANY LinearStiffnessByLengthY ANY LinearStiffnessByLengthZ ANY RotationalStiffnessByLengthX ANY RotationalStiffnessByLengthY ANY RotationalStiffnessByLengthZ
 ;
syntax IfcBoundaryFaceCondition
        = 
        ANY LinearStiffnessByAreaX ANY LinearStiffnessByAreaY ANY LinearStiffnessByAreaZ
 ;
syntax IfcBoundaryNodeCondition
        = 
        ANY LinearStiffnessX ANY LinearStiffnessY ANY LinearStiffnessZ ANY RotationalStiffnessX ANY RotationalStiffnessY ANY RotationalStiffnessZ
 ;
syntax IfcBoundaryNodeConditionWarping
        = 
        WarpingStiffness: ANY
 ;
syntax IfcBoundedCurve
        = 
        ()
 ;
syntax IfcBoundedSurface
        = 
        ()
 ;
syntax IfcBoundingBox
        = 
        ANY XDim ANY YDim ANY ZDim ANY Corner
 ;
syntax IfcBoxedHalfSpace
        = 
        Enclosure: ANY
 ;
syntax IfcBuilding
        = 
        ANY ElevationOfRefHeight ANY ElevationOfTerrain ANY BuildingAddress
 ;
syntax IfcBuildingElement
        = 
        ()
 ;
syntax IfcBuildingElementComponent
        = 
        ()
 ;
syntax IfcBuildingElementPart
        = 
        ()
 ;
syntax IfcBuildingElementProxy
        = 
        CompositionType: ANY
 ;
syntax IfcBuildingElementProxyType
        = 
        PredefinedType: ANY
 ;
syntax IfcBuildingElementType
        = 
        ()
 ;
syntax IfcBuildingStorey
        = 
        Elevation: ANY
 ;
syntax IfcCShapeProfileDef
        = 
        ANY Depth ANY Width ANY WallThickness ANY Girth ANY InternalFilletRadius ANY CentreOfGravityInX
 ;
syntax IfcCableCarrierFittingType
        = 
        PredefinedType: ANY
 ;
syntax IfcCableCarrierSegmentType
        = 
        PredefinedType: ANY
 ;
syntax IfcCableSegmentType
        = 
        PredefinedType: ANY
 ;
syntax IfcCalendarDate
        = 
        ANY DayComponent ANY MonthComponent ANY YearComponent
 ;
syntax IfcCartesianPoint
        = 
        Coordinates: ANY
 ;
syntax IfcCartesianTransformationOperator
        = 
        ANY Axis1 ANY Axis2 ANY LocalOrigin ANY Scale
 ;
syntax IfcCartesianTransformationOperator2D
        = 
        ()
 ;
syntax IfcCartesianTransformationOperator2DnonUniform
        = 
        Scale2: ANY
 ;
syntax IfcCartesianTransformationOperator3D
        = 
        Axis3: ANY
 ;
syntax IfcCartesianTransformationOperator3DnonUniform
        = 
        ANY Scale2 ANY Scale3
 ;
syntax IfcCenterLineProfileDef
        = 
        Thickness: ANY
 ;
syntax IfcChamferEdgeFeature
        = 
        ANY Width ANY Height
 ;
syntax IfcChillerType
        = 
        PredefinedType: ANY
 ;
syntax IfcCircle
        = 
        Radius: ANY
 ;
syntax IfcCircleHollowProfileDef
        = 
        WallThickness: ANY
 ;
syntax IfcCircleProfileDef
        = 
        Radius: ANY
 ;
syntax IfcClassification
        = 
        ANY Source ANY Edition ANY Name ANY Contains ANY EditionDate
 ;
syntax IfcClassificationItem
        = 
        ANY IsClassifiedItemIn ANY IsClassifyingItemIn ANY Notation ANY ItemOf ANY Title
 ;
syntax IfcClassificationItemRelationship
        = 
        ANY RelatingItem ANY RelatedItems+
 ;
syntax IfcClassificationNotation
        = 
        ANY NotationFacets+
 ;
syntax IfcClassificationNotationFacet
        = 
        NotationValue: ANY
 ;
syntax IfcClassificationReference
        = 
        ReferencedSource: ANY
 ;
syntax IfcClosedShell
        = 
        ()
 ;
syntax IfcCoilType
        = 
        PredefinedType: ANY
 ;
syntax IfcColourRgb
        = 
        ANY Red ANY Green ANY Blue
 ;
syntax IfcColourSpecification
        = 
        Name: ANY
 ;
syntax IfcColumn
        = 
        ()
 ;
syntax IfcColumnType
        = 
        PredefinedType: ANY
 ;
syntax IfcComplexProperty
        = 
        ANY HasProperties+ ANY UsageName
 ;
syntax IfcCompositeCurve
        = 
        ANY Segments+ ANY SelfIntersect
 ;
syntax IfcCompositeCurveSegment
        = 
        ANY Transition ANY SameSense ANY UsingCurves ANY ParentCurve
 ;
syntax IfcCompositeProfileDef
        = 
        ANY Profiles ANY Label
 ;
syntax IfcCompressorType
        = 
        PredefinedType: ANY
 ;
syntax IfcCondenserType
        = 
        PredefinedType: ANY
 ;
syntax IfcCondition
        = 
        ()
 ;
syntax IfcConditionCriterion
        = 
        ANY Criterion ANY CriterionDateTime
 ;
syntax IfcConic
        = 
        Position: ANY
 ;
syntax IfcConnectedFaceSet
        = 
        ANY CfsFaces+
 ;
syntax IfcConnectionCurveGeometry
        = 
        ANY CurveOnRelatingElement ANY CurveOnRelatedElement
 ;
syntax IfcConnectionGeometry
        = 
        ()
 ;
syntax IfcConnectionPointEccentricity
        = 
        ANY EccentricityInX ANY EccentricityInY ANY EccentricityInZ
 ;
syntax IfcConnectionPointGeometry
        = 
        ANY PointOnRelatingElement ANY PointOnRelatedElement
 ;
syntax IfcConnectionPortGeometry
        = 
        ANY LocationAtRelatingElement ANY LocationAtRelatedElement ANY ProfileOfPort
 ;
syntax IfcConnectionSurfaceGeometry
        = 
        ANY SurfaceOnRelatingElement ANY SurfaceOnRelatedElement
 ;
syntax IfcConstraint
        = 
        ANY Name ANY Description ANY ConstraintGrade ANY ConstraintSource ANY UserDefinedGrade ANY ClassifiedAs ANY RelatesConstraints ANY IsRelatedWith ANY PropertiesForConstraint ANY Aggregates ANY IsAggregatedIn ANY CreatingActor ANY CreationTime
 ;
syntax IfcConstraintAggregationRelationship
        = 
        ANY Name ANY Description ANY LogicalAggregator ANY RelatingConstraint ANY RelatedConstraints+
 ;
syntax IfcConstraintClassificationRelationship
        = 
        ANY ClassifiedConstraint ANY RelatedClassifications+
 ;
syntax IfcConstraintRelationship
        = 
        ANY Name ANY Description ANY RelatingConstraint ANY RelatedConstraints+
 ;
syntax IfcConstructionEquipmentResource
        = 
        ()
 ;
syntax IfcConstructionMaterialResource
        = 
        ANY Suppliers+ ANY UsageRatio
 ;
syntax IfcConstructionProductResource
        = 
        ()
 ;
syntax IfcConstructionResource
        = 
        ANY ResourceIdentifier ANY ResourceGroup ANY ResourceConsumption ANY BaseQuantity
 ;
syntax IfcContextDependentUnit
        = 
        Name: ANY
 ;
syntax IfcControl
        = 
        Controls: ANY
 ;
syntax IfcControllerType
        = 
        PredefinedType: ANY
 ;
syntax IfcConversionBasedUnit
        = 
        ANY ConversionFactor ANY Name
 ;
syntax IfcCooledBeamType
        = 
        PredefinedType: ANY
 ;
syntax IfcCoolingTowerType
        = 
        PredefinedType: ANY
 ;
syntax IfcCoordinatedUniversalTimeOffset
        = 
        ANY HourOffset ANY MinuteOffset ANY Sense
 ;
syntax IfcCostItem
        = 
        ()
 ;
syntax IfcCostSchedule
        = 
        ANY Status ANY ID ANY PredefinedType ANY SubmittedBy ANY PreparedBy ANY SubmittedOn ANY TargetUsers+ ANY UpdateDate
 ;
syntax IfcCostValue
        = 
        ANY CostType ANY Condition
 ;
syntax IfcCovering
        = 
        ANY CoversSpaces ANY Covers ANY PredefinedType
 ;
syntax IfcCoveringType
        = 
        PredefinedType: ANY
 ;
syntax IfcCraneRailAShapeProfileDef
        = 
        ANY OverallHeight ANY BaseWidth2 ANY Radius ANY HeadWidth ANY HeadDepth2 ANY HeadDepth3 ANY WebThickness ANY BaseWidth4 ANY BaseDepth1 ANY BaseDepth2 ANY BaseDepth3 ANY CentreOfGravityInY
 ;
syntax IfcCraneRailFShapeProfileDef
        = 
        ANY OverallHeight ANY HeadWidth ANY Radius ANY HeadDepth2 ANY HeadDepth3 ANY WebThickness ANY BaseDepth1 ANY BaseDepth2 ANY CentreOfGravityInY
 ;
syntax IfcCrewResource
        = 
        ()
 ;
syntax IfcCsgPrimitive3D
        = 
        Position: ANY
 ;
syntax IfcCsgSolid
        = 
        TreeRootExpression: ANY
 ;
syntax IfcCurrencyRelationship
        = 
        ANY RelatingMonetaryUnit ANY RelatedMonetaryUnit ANY RateDateTime ANY RateSource ANY ExchangeRate
 ;
syntax IfcCurtainWall
        = 
        ()
 ;
syntax IfcCurtainWallType
        = 
        PredefinedType: ANY
 ;
syntax IfcCurve
        = 
        ()
 ;
syntax IfcCurveBoundedPlane
        = 
        ANY BasisSurface ANY OuterBoundary ANY InnerBoundaries+
 ;
syntax IfcCurveStyle
        = 
        ANY CurveFont ANY CurveWidth ANY CurveColour
 ;
syntax IfcCurveStyleFont
        = 
        ANY PatternList+ ANY Name
 ;
syntax IfcCurveStyleFontAndScaling
        = 
        ANY Name ANY CurveFontScaling ANY CurveFont
 ;
syntax IfcCurveStyleFontPattern
        = 
        ANY VisibleSegmentLength ANY InvisibleSegmentLength
 ;
syntax IfcDamperType
        = 
        PredefinedType: ANY
 ;
syntax IfcDateAndTime
        = 
        ANY DateComponent ANY TimeComponent
 ;
syntax IfcDefinedSymbol
        = 
        ANY Definition ANY Target
 ;
syntax IfcDerivedProfileDef
        = 
        ANY ParentProfile ANY Operator ANY Label
 ;
syntax IfcDerivedUnit
        = 
        ANY UnitType ANY UserDefinedType ANY Elements+
 ;
syntax IfcDerivedUnitElement
        = 
        ANY Unit ANY Exponent
 ;
syntax IfcDiameterDimension
        = 
        ()
 ;
syntax IfcDimensionCalloutRelationship
        = 
        ()
 ;
syntax IfcDimensionCurve
        = 
        ()
 ;
syntax IfcDimensionCurveDirectedCallout
        = 
        ()
 ;
syntax IfcDimensionCurveTerminator
        = 
        Role: ANY
 ;
syntax IfcDimensionPair
        = 
        ()
 ;
syntax IfcDimensionalExponents
        = 
        ANY LengthExponent ANY MassExponent ANY TimeExponent ANY ElectricCurrentExponent ANY ThermodynamicTemperatureExponent ANY AmountOfSubstanceExponent ANY LuminousIntensityExponent
 ;
syntax IfcDirection
        = 
        DirectionRatios: ANY
 ;
syntax IfcDiscreteAccessory
        = 
        ()
 ;
syntax IfcDiscreteAccessoryType
        = 
        ()
 ;
syntax IfcDistributionChamberElement
        = 
        ()
 ;
syntax IfcDistributionChamberElementType
        = 
        PredefinedType: ANY
 ;
syntax IfcDistributionControlElement
        = 
        ANY AssignedToFlowElement ANY ControlElementId
 ;
syntax IfcDistributionControlElementType
        = 
        ()
 ;
syntax IfcDistributionElement
        = 
        ()
 ;
syntax IfcDistributionElementType
        = 
        ()
 ;
syntax IfcDistributionFlowElement
        = 
        HasControlElements: ANY
 ;
syntax IfcDistributionFlowElementType
        = 
        ()
 ;
syntax IfcDistributionPort
        = 
        FlowDirection: ANY
 ;
syntax IfcDocumentElectronicFormat
        = 
        ANY FileExtension ANY MimeContentType ANY MimeSubtype
 ;
syntax IfcDocumentInformation
        = 
        ANY DocumentId ANY Name ANY Description ANY Purpose ANY IntendedUse ANY Scope ANY Revision ANY Confidentiality ANY Status ANY IsPointedTo ANY IsPointer ANY DocumentReferences+ ANY DocumentOwner ANY Editors+ ANY CreationTime ANY LastRevisionTime ANY ElectronicFormat ANY ValidFrom ANY ValidUntil
 ;
syntax IfcDocumentInformationRelationship
        = 
        ANY RelatingDocument ANY RelatedDocuments+ ANY RelationshipType
 ;
syntax IfcDocumentReference
        = 
        ReferenceToDocument: ANY
 ;
syntax IfcDoor
        = 
        ANY OverallHeight ANY OverallWidth
 ;
syntax IfcDoorLiningProperties
        = 
        ANY LiningDepth ANY LiningThickness ANY ThresholdDepth ANY ThresholdThickness ANY TransomThickness ANY TransomOffset ANY LiningOffset ANY ThresholdOffset ANY CasingThickness ANY CasingDepth ANY ShapeAspectStyle
 ;
syntax IfcDoorPanelProperties
        = 
        ANY PanelDepth ANY PanelOperation ANY PanelWidth ANY PanelPosition ANY ShapeAspectStyle
 ;
syntax IfcDoorStyle
        = 
        ANY OperationType ANY ConstructionType ANY ParameterTakesPrecedence ANY Sizeable
 ;
syntax IfcDraughtingCallout
        = 
        ANY IsRelatedFromCallout ANY IsRelatedToCallout ANY Contents+
 ;
syntax IfcDraughtingCalloutRelationship
        = 
        ANY Name ANY Description ANY RelatingDraughtingCallout ANY RelatedDraughtingCallout
 ;
syntax IfcDraughtingPreDefinedColour
        = 
        ()
 ;
syntax IfcDraughtingPreDefinedCurveFont
        = 
        ()
 ;
syntax IfcDraughtingPreDefinedTextFont
        = 
        ()
 ;
syntax IfcDuctFittingType
        = 
        PredefinedType: ANY
 ;
syntax IfcDuctSegmentType
        = 
        PredefinedType: ANY
 ;
syntax IfcDuctSilencerType
        = 
        PredefinedType: ANY
 ;
syntax IfcEdge
        = 
        ANY EdgeStart ANY EdgeEnd
 ;
syntax IfcEdgeCurve
        = 
        ANY EdgeGeometry ANY SameSense
 ;
syntax IfcEdgeFeature
        = 
        FeatureLength: ANY
 ;
syntax IfcEdgeLoop
        = 
        ANY EdgeList+
 ;
syntax IfcElectricApplianceType
        = 
        PredefinedType: ANY
 ;
syntax IfcElectricDistributionPoint
        = 
        ANY DistributionPointFunction ANY UserDefinedFunction
 ;
syntax IfcElectricFlowStorageDeviceType
        = 
        PredefinedType: ANY
 ;
syntax IfcElectricGeneratorType
        = 
        PredefinedType: ANY
 ;
syntax IfcElectricHeaterType
        = 
        PredefinedType: ANY
 ;
syntax IfcElectricMotorType
        = 
        PredefinedType: ANY
 ;
syntax IfcElectricTimeControlType
        = 
        PredefinedType: ANY
 ;
syntax IfcElectricalBaseProperties
        = 
        ANY ElectricCurrentType ANY InputVoltage ANY InputFrequency ANY FullLoadCurrent ANY MinimumCircuitCurrent ANY MaximumPowerInput ANY RatedPowerInput ANY InputPhase
 ;
syntax IfcElectricalCircuit
        = 
        ()
 ;
syntax IfcElectricalElement
        = 
        ()
 ;
syntax IfcElement
        = 
        ANY FillsVoids ANY ConnectedTo ANY HasCoverings ANY HasProjections ANY HasStructuralMember ANY HasPorts ANY HasOpenings ANY IsConnectionRealization ANY ProvidesBoundaries ANY ConnectedFrom ANY Tag
 ;
syntax IfcElementAssembly
        = 
        ANY AssemblyPlace ANY PredefinedType
 ;
syntax IfcElementComponent
        = 
        ()
 ;
syntax IfcElementComponentType
        = 
        ()
 ;
syntax IfcElementQuantity
        = 
        ANY Quantities+ ANY MethodOfMeasurement
 ;
syntax IfcElementType
        = 
        ElementType: ANY
 ;
syntax IfcElementarySurface
        = 
        Position: ANY
 ;
syntax IfcEllipse
        = 
        ANY SemiAxis1 ANY SemiAxis2
 ;
syntax IfcEllipseProfileDef
        = 
        ANY SemiAxis1 ANY SemiAxis2
 ;
syntax IfcEnergyConversionDevice
        = 
        ()
 ;
syntax IfcEnergyConversionDeviceType
        = 
        ()
 ;
syntax IfcEnergyProperties
        = 
        ANY EnergySequence ANY UserDefinedEnergySequence
 ;
syntax IfcEnvironmentalImpactValue
        = 
        ANY ImpactType ANY Category ANY UserDefinedCategory
 ;
syntax IfcEquipmentElement
        = 
        ()
 ;
syntax IfcEquipmentStandard
        = 
        ()
 ;
syntax IfcEvaporativeCoolerType
        = 
        PredefinedType: ANY
 ;
syntax IfcEvaporatorType
        = 
        PredefinedType: ANY
 ;
syntax IfcExtendedMaterialProperties
        = 
        ANY Description ANY Name ANY ExtendedProperties+
 ;
syntax IfcExternalReference
        = 
        ANY Location ANY ItemReference ANY Name
 ;
syntax IfcExternallyDefinedHatchStyle
        = 
        ()
 ;
syntax IfcExternallyDefinedSurfaceStyle
        = 
        ()
 ;
syntax IfcExternallyDefinedSymbol
        = 
        ()
 ;
syntax IfcExternallyDefinedTextFont
        = 
        ()
 ;
syntax IfcExtrudedAreaSolid
        = 
        ANY ExtrudedDirection ANY Depth
 ;
syntax IfcFace
        = 
        ANY Bounds+
 ;
syntax IfcFaceBasedSurfaceModel
        = 
        ANY FbsmFaces+
 ;
syntax IfcFaceBound
        = 
        ANY Bound ANY Orientation
 ;
syntax IfcFaceOuterBound
        = 
        ()
 ;
syntax IfcFaceSurface
        = 
        ANY FaceSurface ANY SameSense
 ;
syntax IfcFacetedBrep
        = 
        ()
 ;
syntax IfcFacetedBrepWithVoids
        = 
        ANY Voids+
 ;
syntax IfcFailureConnectionCondition
        = 
        ANY TensionFailureX ANY TensionFailureY ANY TensionFailureZ ANY CompressionFailureX ANY CompressionFailureY ANY CompressionFailureZ
 ;
syntax IfcFanType
        = 
        PredefinedType: ANY
 ;
syntax IfcFastener
        = 
        ()
 ;
syntax IfcFastenerType
        = 
        ()
 ;
syntax IfcFeatureElement
        = 
        ()
 ;
syntax IfcFeatureElementAddition
        = 
        ProjectsElements: ANY
 ;
syntax IfcFeatureElementSubtraction
        = 
        VoidsElements: ANY
 ;
syntax IfcFillAreaStyle
        = 
        ANY FillStyles+
 ;
syntax IfcFillAreaStyleHatching
        = 
        ANY StartOfNextHatchLine ANY HatchLineAppearance ANY PointOfReferenceHatchLine ANY PatternStart ANY HatchLineAngle
 ;
syntax IfcFillAreaStyleTileSymbolWithStyle
        = 
        Symbol: ANY
 ;
syntax IfcFillAreaStyleTiles
        = 
        ANY TilingPattern ANY Tiles+ ANY TilingScale
 ;
syntax IfcFilterType
        = 
        PredefinedType: ANY
 ;
syntax IfcFireSuppressionTerminalType
        = 
        PredefinedType: ANY
 ;
syntax IfcFlowController
        = 
        ()
 ;
syntax IfcFlowControllerType
        = 
        ()
 ;
syntax IfcFlowFitting
        = 
        ()
 ;
syntax IfcFlowFittingType
        = 
        ()
 ;
syntax IfcFlowInstrumentType
        = 
        PredefinedType: ANY
 ;
syntax IfcFlowMeterType
        = 
        PredefinedType: ANY
 ;
syntax IfcFlowMovingDevice
        = 
        ()
 ;
syntax IfcFlowMovingDeviceType
        = 
        ()
 ;
syntax IfcFlowSegment
        = 
        ()
 ;
syntax IfcFlowSegmentType
        = 
        ()
 ;
syntax IfcFlowStorageDevice
        = 
        ()
 ;
syntax IfcFlowStorageDeviceType
        = 
        ()
 ;
syntax IfcFlowTerminal
        = 
        ()
 ;
syntax IfcFlowTerminalType
        = 
        ()
 ;
syntax IfcFlowTreatmentDevice
        = 
        ()
 ;
syntax IfcFlowTreatmentDeviceType
        = 
        ()
 ;
syntax IfcFluidFlowProperties
        = 
        ANY PropertySource ANY UserDefinedPropertySource ANY TemperatureSingleValue ANY WetBulbTemperatureSingleValue ANY FlowConditionSingleValue ANY VelocitySingleValue ANY PressureSingleValue ANY FlowrateSingleValue ANY FlowConditionTimeSeries ANY VelocityTimeSeries ANY FlowrateTimeSeries ANY Fluid ANY PressureTimeSeries ANY WetBulbTemperatureTimeSeries ANY TemperatureTimeSeries
 ;
syntax IfcFooting
        = 
        PredefinedType: ANY
 ;
syntax IfcFuelProperties
        = 
        ANY CombustionTemperature ANY CarbonContent ANY LowerHeatingValue ANY HigherHeatingValue
 ;
syntax IfcFurnishingElement
        = 
        ()
 ;
syntax IfcFurnishingElementType
        = 
        ()
 ;
syntax IfcFurnitureStandard
        = 
        ()
 ;
syntax IfcFurnitureType
        = 
        AssemblyPlace: ANY
 ;
syntax IfcGasTerminalType
        = 
        PredefinedType: ANY
 ;
syntax IfcGeneralMaterialProperties
        = 
        ANY MolecularWeight ANY Porosity ANY MassDensity
 ;
syntax IfcGeneralProfileProperties
        = 
        ANY PhysicalWeight ANY Perimeter ANY MinimumPlateThickness ANY MaximumPlateThickness ANY CrossSectionArea
 ;
syntax IfcGeometricCurveSet
        = 
        ()
 ;
syntax IfcGeometricRepresentationContext
        = 
        ANY CoordinateSpaceDimension ANY Precision ANY HasSubContexts ANY WorldCoordinateSystem ANY TrueNorth
 ;
syntax IfcGeometricRepresentationItem
        = 
        ()
 ;
syntax IfcGeometricRepresentationSubContext
        = 
        ANY TargetScale ANY TargetView ANY UserDefinedTargetView ANY ParentContext
 ;
syntax IfcGeometricSet
        = 
        ANY Elements+
 ;
syntax IfcGrid
        = 
        ANY UAxes+ ANY VAxes+ ANY WAxes+
 ;
syntax IfcGridAxis
        = 
        ANY AxisTag ANY SameSense ANY PartOfW ANY PartOfV ANY PartOfU ANY HasIntersections ANY AxisCurve
 ;
syntax IfcGridPlacement
        = 
        ANY PlacementLocation ANY PlacementRefDirection
 ;
syntax IfcGroup
        = 
        IsGroupedBy: ANY
 ;
syntax IfcHalfSpaceSolid
        = 
        ANY BaseSurface ANY AgreementFlag
 ;
syntax IfcHeatExchangerType
        = 
        PredefinedType: ANY
 ;
syntax IfcHumidifierType
        = 
        PredefinedType: ANY
 ;
syntax IfcHygroscopicMaterialProperties
        = 
        ANY UpperVaporResistanceFactor ANY LowerVaporResistanceFactor ANY IsothermalMoistureCapacity ANY VaporPermeability ANY MoistureDiffusivity
 ;
syntax IfcIShapeProfileDef
        = 
        ANY OverallWidth ANY OverallDepth ANY WebThickness ANY FlangeThickness ANY FilletRadius
 ;
syntax IfcImageTexture
        = 
        UrlReference: ANY
 ;
syntax IfcInventory
        = 
        ANY Jurisdiction ANY ResponsiblePersons+ ANY LastUpdateDate ANY CurrentValue ANY OriginalValue ANY InventoryType
 ;
syntax IfcIrregularTimeSeries
        = 
        ANY Values+
 ;
syntax IfcIrregularTimeSeriesValue
        = 
        ANY ListValues+ ANY TimeStamp
 ;
syntax IfcJunctionBoxType
        = 
        PredefinedType: ANY
 ;
syntax IfcLShapeProfileDef
        = 
        ANY Depth ANY Width ANY Thickness ANY FilletRadius ANY EdgeRadius ANY LegSlope ANY CentreOfGravityInX ANY CentreOfGravityInY
 ;
syntax IfcLaborResource
        = 
        SkillSet: ANY
 ;
syntax IfcLampType
        = 
        PredefinedType: ANY
 ;
syntax IfcLibraryInformation
        = 
        ANY Name ANY Version ANY Publisher ANY VersionDate ANY LibraryReference+
 ;
syntax IfcLibraryReference
        = 
        ReferenceIntoLibrary: ANY
 ;
syntax IfcLightDistributionData
        = 
        ANY MainPlaneAngle ANY SecondaryPlaneAngle+ ANY LuminousIntensity+
 ;
syntax IfcLightFixtureType
        = 
        PredefinedType: ANY
 ;
syntax IfcLightIntensityDistribution
        = 
        ANY DistributionData+ ANY LightDistributionCurve
 ;
syntax IfcLightSource
        = 
        ANY Name ANY AmbientIntensity ANY Intensity ANY LightColour
 ;
syntax IfcLightSourceAmbient
        = 
        ()
 ;
syntax IfcLightSourceDirectional
        = 
        Orientation: ANY
 ;
syntax IfcLightSourceGoniometric
        = 
        ANY ColourTemperature ANY LuminousFlux ANY LightEmissionSource ANY Position ANY ColourAppearance ANY LightDistributionDataSource
 ;
syntax IfcLightSourcePositional
        = 
        ANY Radius ANY ConstantAttenuation ANY DistanceAttenuation ANY QuadricAttenuation ANY Position
 ;
syntax IfcLightSourceSpot
        = 
        ANY ConcentrationExponent ANY SpreadAngle ANY BeamWidthAngle ANY Orientation
 ;
syntax IfcLine
        = 
        ANY Pnt ANY Dir
 ;
syntax IfcLinearDimension
        = 
        ()
 ;
syntax IfcLocalPlacement
        = 
        ANY PlacementRelTo ANY RelativePlacement
 ;
syntax IfcLocalTime
        = 
        ANY HourComponent ANY MinuteComponent ANY SecondComponent ANY DaylightSavingOffset ANY Zone
 ;
syntax IfcLoop
        = 
        ()
 ;
syntax IfcManifoldSolidBrep
        = 
        Outer: ANY
 ;
syntax IfcMappedItem
        = 
        ANY MappingSource ANY MappingTarget
 ;
syntax IfcMaterial
        = 
        ANY HasRepresentation ANY ClassifiedAs ANY Name
 ;
syntax IfcMaterialClassificationRelationship
        = 
        ANY MaterialClassifications+ ANY ClassifiedMaterial
 ;
syntax IfcMaterialDefinitionRepresentation
        = 
        RepresentedMaterial: ANY
 ;
syntax IfcMaterialLayer
        = 
        ANY LayerThickness ANY IsVentilated ANY ToMaterialLayerSet ANY Material
 ;
syntax IfcMaterialLayerSet
        = 
        ANY MaterialLayers+ ANY LayerSetName
 ;
syntax IfcMaterialLayerSetUsage
        = 
        ANY LayerSetDirection ANY DirectionSense ANY OffsetFromReferenceLine ANY ForLayerSet
 ;
syntax IfcMaterialList
        = 
        ANY Materials+
 ;
syntax IfcMaterialProperties
        = 
        Material: ANY
 ;
syntax IfcMeasureWithUnit
        = 
        ANY ValueComponent ANY UnitComponent
 ;
syntax IfcMechanicalConcreteMaterialProperties
        = 
        ANY CompressiveStrength ANY MaxAggregateSize ANY AdmixturesDescription ANY Workability ANY ProtectivePoreRatio ANY WaterImpermeability
 ;
syntax IfcMechanicalFastener
        = 
        ANY NominalDiameter ANY NominalLength
 ;
syntax IfcMechanicalFastenerType
        = 
        ()
 ;
syntax IfcMechanicalMaterialProperties
        = 
        ANY DynamicViscosity ANY YoungModulus ANY ShearModulus ANY PoissonRatio ANY ThermalExpansionCoefficient
 ;
syntax IfcMechanicalSteelMaterialProperties
        = 
        ANY YieldStress ANY UltimateStress ANY UltimateStrain ANY HardeningModule ANY ProportionalStress ANY PlasticStrain ANY Relaxations+
 ;
syntax IfcMember
        = 
        ()
 ;
syntax IfcMemberType
        = 
        PredefinedType: ANY
 ;
syntax IfcMetric
        = 
        ANY Benchmark ANY ValueSource ANY DataValue
 ;
syntax IfcMonetaryUnit
        = 
        Currency: ANY
 ;
syntax IfcMotorConnectionType
        = 
        PredefinedType: ANY
 ;
syntax IfcMove
        = 
        ANY MoveFrom ANY MoveTo ANY PunchList+
 ;
syntax IfcNamedUnit
        = 
        ANY Dimensions ANY UnitType
 ;
syntax IfcObject
        = 
        ANY IsDefinedBy ANY ObjectType
 ;
syntax IfcObjectDefinition
        = 
        ANY HasAssignments ANY IsDecomposedBy ANY Decomposes
 ;
syntax IfcObjectPlacement
        = 
        ANY PlacesObject ANY ReferencedByPlacements
 ;
syntax IfcObjective
        = 
        ANY ObjectiveQualifier ANY UserDefinedQualifier ANY BenchmarkValues ANY ResultValues
 ;
syntax IfcOccupant
        = 
        PredefinedType: ANY
 ;
syntax IfcOffsetCurve2D
        = 
        ANY Distance ANY SelfIntersect ANY BasisCurve
 ;
syntax IfcOffsetCurve3D
        = 
        ANY Distance ANY SelfIntersect ANY BasisCurve ANY RefDirection
 ;
syntax IfcOneDirectionRepeatFactor
        = 
        RepeatFactor: ANY
 ;
syntax IfcOpenShell
        = 
        ()
 ;
syntax IfcOpeningElement
        = 
        HasFillings: ANY
 ;
syntax IfcOpticalMaterialProperties
        = 
        ANY VisibleTransmittance ANY SolarTransmittance ANY ThermalIrTransmittance ANY ThermalIrEmissivityBack ANY ThermalIrEmissivityFront ANY VisibleReflectanceBack ANY VisibleReflectanceFront ANY SolarReflectanceFront ANY SolarReflectanceBack
 ;
syntax IfcOrderAction
        = 
        ActionID: ANY
 ;
syntax IfcOrganization
        = 
        ANY Id ANY Name ANY Description ANY IsRelatedBy ANY Relates ANY Engages ANY Roles+ ANY Addresses+
 ;
syntax IfcOrganizationRelationship
        = 
        ANY Name ANY Description ANY RelatingOrganization ANY RelatedOrganizations+
 ;
syntax IfcOrientedEdge
        = 
        ANY EdgeElement ANY Orientation
 ;
syntax IfcOutletType
        = 
        PredefinedType: ANY
 ;
syntax IfcOwnerHistory
        = 
        ANY State ANY ChangeAction ANY LastModifiedDate ANY CreationDate ANY OwningUser ANY OwningApplication ANY LastModifyingUser ANY LastModifyingApplication
 ;
syntax IfcParameterizedProfileDef
        = 
        Position: ANY
 ;
syntax IfcPath
        = 
        ANY EdgeList+
 ;
syntax IfcPerformanceHistory
        = 
        LifeCyclePhase: ANY
 ;
syntax IfcPermeableCoveringProperties
        = 
        ANY OperationType ANY PanelPosition ANY FrameDepth ANY FrameThickness ANY ShapeAspectStyle
 ;
syntax IfcPermit
        = 
        PermitID: ANY
 ;
syntax IfcPerson
        = 
        ANY Id ANY FamilyName ANY GivenName ANY MiddleNames+ ANY PrefixTitles+ ANY SuffixTitles+ ANY EngagedIn ANY Roles+ ANY Addresses+
 ;
syntax IfcPersonAndOrganization
        = 
        ANY ThePerson ANY TheOrganization ANY Roles+
 ;
syntax IfcPhysicalComplexQuantity
        = 
        ANY Discrimination ANY Quality ANY Usage ANY HasQuantities+
 ;
syntax IfcPhysicalQuantity
        = 
        ANY Name ANY Description ANY PartOfComplex
 ;
syntax IfcPhysicalSimpleQuantity
        = 
        Unit: ANY
 ;
syntax IfcPile
        = 
        ANY PredefinedType ANY ConstructionType
 ;
syntax IfcPipeFittingType
        = 
        PredefinedType: ANY
 ;
syntax IfcPipeSegmentType
        = 
        PredefinedType: ANY
 ;
syntax IfcPixelTexture
        = 
        ANY Width ANY Height ANY ColourComponents ANY Pixel+
 ;
syntax IfcPlacement
        = 
        Location: ANY
 ;
syntax IfcPlanarBox
        = 
        Placement: ANY
 ;
syntax IfcPlanarExtent
        = 
        ANY SizeInX ANY SizeInY
 ;
syntax IfcPlane
        = 
        ()
 ;
syntax IfcPlate
        = 
        ()
 ;
syntax IfcPlateType
        = 
        PredefinedType: ANY
 ;
syntax IfcPoint
        = 
        ()
 ;
syntax IfcPointOnCurve
        = 
        ANY BasisCurve ANY PointParameter
 ;
syntax IfcPointOnSurface
        = 
        ANY PointParameterU ANY PointParameterV ANY BasisSurface
 ;
syntax IfcPolyLoop
        = 
        Polygon: ANY
 ;
syntax IfcPolygonalBoundedHalfSpace
        = 
        ANY Position ANY PolygonalBoundary
 ;
syntax IfcPolyline
        = 
        Points: ANY
 ;
syntax IfcPort
        = 
        ANY ContainedIn ANY ConnectedFrom ANY ConnectedTo
 ;
syntax IfcPostalAddress
        = 
        ANY InternalLocation ANY AddressLines+ ANY PostalBox ANY Town ANY Region ANY PostalCode ANY Country
 ;
syntax IfcPreDefinedColour
        = 
        ()
 ;
syntax IfcPreDefinedCurveFont
        = 
        ()
 ;
syntax IfcPreDefinedDimensionSymbol
        = 
        ()
 ;
syntax IfcPreDefinedItem
        = 
        Name: ANY
 ;
syntax IfcPreDefinedPointMarkerSymbol
        = 
        ()
 ;
syntax IfcPreDefinedSymbol
        = 
        ()
 ;
syntax IfcPreDefinedTerminatorSymbol
        = 
        ()
 ;
syntax IfcPreDefinedTextFont
        = 
        ()
 ;
syntax IfcPresentationLayerAssignment
        = 
        ANY Name ANY Description ANY Identifier ANY AssignedItems+
 ;
syntax IfcPresentationLayerWithStyle
        = 
        ANY LayerOn ANY LayerFrozen ANY LayerBlocked ANY LayerStyles+
 ;
syntax IfcPresentationStyle
        = 
        Name: ANY
 ;
syntax IfcPresentationStyleAssignment
        = 
        ANY Styles+
 ;
syntax IfcProcedure
        = 
        ANY ProcedureID ANY ProcedureType ANY UserDefinedProcedureType
 ;
syntax IfcProcess
        = 
        ANY OperatesOn ANY IsSuccessorFrom ANY IsPredecessorTo
 ;
syntax IfcProduct
        = 
        ANY ReferencedBy ANY ObjectPlacement ANY Representation ANY ReferencedInStructures ANY ContainedInStructure
 ;
syntax IfcProductDefinitionShape
        = 
        HasShapeAspects: ANY
 ;
syntax IfcProductRepresentation
        = 
        ANY Name ANY Description ANY ShapeOfProduct ANY Representations+
 ;
syntax IfcProductsOfCombustionProperties
        = 
        ANY SpecificHeatCapacity ANY N20Content ANY COContent ANY CO2Content
 ;
syntax IfcProfileDef
        = 
        ANY ProfileType ANY ProfileName
 ;
syntax IfcProfileProperties
        = 
        ANY ProfileDefinition ANY ProfileName
 ;
syntax IfcProject
        = 
        ANY LongName ANY Phase ANY RepresentationContexts+ ANY UnitsInContext
 ;
syntax IfcProjectOrder
        = 
        ANY ID ANY PredefinedType ANY Status
 ;
syntax IfcProjectOrderRecord
        = 
        ANY Records+ ANY PredefinedType
 ;
syntax IfcProjectionCurve
        = 
        ()
 ;
syntax IfcProjectionElement
        = 
        ()
 ;
syntax IfcProperty
        = 
        ANY Name ANY Description ANY PropertyForDependance ANY PropertyDependsOn ANY PartOfComplex
 ;
syntax IfcPropertyBoundedValue
        = 
        ANY UpperBoundValue ANY LowerBoundValue ANY Unit
 ;
syntax IfcPropertyConstraintRelationship
        = 
        ANY Name ANY Description ANY RelatingConstraint ANY RelatedProperties+
 ;
syntax IfcPropertyDefinition
        = 
        ()
 ;
syntax IfcPropertyDependencyRelationship
        = 
        ANY Name ANY Description ANY Expression ANY DependingProperty ANY DependantProperty
 ;
syntax IfcPropertyEnumeratedValue
        = 
        ANY EnumerationValues+ ANY EnumerationReference
 ;
syntax IfcPropertyEnumeration
        = 
        ANY EnumerationValues+ ANY Unit ANY Name
 ;
syntax IfcPropertyListValue
        = 
        ANY ListValues+ ANY Unit
 ;
syntax IfcPropertyReferenceValue
        = 
        ANY PropertyReference ANY UsageName
 ;
syntax IfcPropertySet
        = 
        ANY HasProperties+
 ;
syntax IfcPropertySetDefinition
        = 
        ANY PropertyDefinitionOf ANY DefinesType
 ;
syntax IfcPropertySingleValue
        = 
        ANY NominalValue ANY Unit
 ;
syntax IfcPropertyTableValue
        = 
        ANY DefiningValues+ ANY DefinedValues+ ANY DefiningUnit ANY DefinedUnit ANY Expression
 ;
syntax IfcProtectiveDeviceType
        = 
        PredefinedType: ANY
 ;
syntax IfcProxy
        = 
        ANY ProxyType ANY Tag
 ;
syntax IfcPumpType
        = 
        PredefinedType: ANY
 ;
syntax IfcQuantityArea
        = 
        AreaValue: ANY
 ;
syntax IfcQuantityCount
        = 
        CountValue: ANY
 ;
syntax IfcQuantityLength
        = 
        LengthValue: ANY
 ;
syntax IfcQuantityTime
        = 
        TimeValue: ANY
 ;
syntax IfcQuantityVolume
        = 
        VolumeValue: ANY
 ;
syntax IfcQuantityWeight
        = 
        WeightValue: ANY
 ;
syntax IfcRadiusDimension
        = 
        ()
 ;
syntax IfcRailing
        = 
        PredefinedType: ANY
 ;
syntax IfcRailingType
        = 
        PredefinedType: ANY
 ;
syntax IfcRamp
        = 
        ShapeType: ANY
 ;
syntax IfcRampFlight
        = 
        ()
 ;
syntax IfcRampFlightType
        = 
        PredefinedType: ANY
 ;
syntax IfcRationalBezierCurve
        = 
        WeightsData: ANY
 ;
syntax IfcRectangleHollowProfileDef
        = 
        ANY WallThickness ANY InnerFilletRadius ANY OuterFilletRadius
 ;
syntax IfcRectangleProfileDef
        = 
        ANY XDim ANY YDim
 ;
syntax IfcRectangularPyramid
        = 
        ANY XLength ANY YLength ANY Height
 ;
syntax IfcRectangularTrimmedSurface
        = 
        ANY U1 ANY V1 ANY U2 ANY V2 ANY Usense ANY Vsense ANY BasisSurface
 ;
syntax IfcReferencesValueDocument
        = 
        ANY Name ANY Description ANY ReferencedDocument ANY ReferencingValues+
 ;
syntax IfcRegularTimeSeries
        = 
        ANY Values+ ANY TimeStep
 ;
syntax IfcReinforcementBarProperties
        = 
        ANY TotalCrossSectionArea ANY SteelGrade ANY BarSurface ANY EffectiveDepth ANY NominalBarDiameter ANY BarCount
 ;
syntax IfcReinforcementDefinitionProperties
        = 
        ANY ReinforcementSectionDefinitions+ ANY DefinitionType
 ;
syntax IfcReinforcingBar
        = 
        ANY NominalDiameter ANY CrossSectionArea ANY BarLength ANY BarRole ANY BarSurface
 ;
syntax IfcReinforcingElement
        = 
        SteelGrade: ANY
 ;
syntax IfcReinforcingMesh
        = 
        ANY MeshLength ANY MeshWidth ANY LongitudinalBarNominalDiameter ANY TransverseBarNominalDiameter ANY LongitudinalBarCrossSectionArea ANY TransverseBarCrossSectionArea ANY LongitudinalBarSpacing ANY TransverseBarSpacing
 ;
syntax IfcRelAggregates
        = 
        ()
 ;
syntax IfcRelAssigns
        = 
        ANY RelatedObjects+ ANY RelatedObjectsType
 ;
syntax IfcRelAssignsTasks
        = 
        TimeForTask: ANY
 ;
syntax IfcRelAssignsToActor
        = 
        ANY RelatingActor ANY ActingRole
 ;
syntax IfcRelAssignsToControl
        = 
        RelatingControl: ANY
 ;
syntax IfcRelAssignsToGroup
        = 
        RelatingGroup: ANY
 ;
syntax IfcRelAssignsToProcess
        = 
        ANY RelatingProcess ANY QuantityInProcess
 ;
syntax IfcRelAssignsToProduct
        = 
        RelatingProduct: ANY
 ;
syntax IfcRelAssignsToProjectOrder
        = 
        ()
 ;
syntax IfcRelAssignsToResource
        = 
        RelatingResource: ANY
 ;
syntax IfcRelAssociates
        = 
        ANY RelatedObjects+
 ;
syntax IfcRelAssociatesAppliedValue
        = 
        RelatingAppliedValue: ANY
 ;
syntax IfcRelAssociatesApproval
        = 
        RelatingApproval: ANY
 ;
syntax IfcRelAssociatesClassification
        = 
        RelatingClassification: ANY
 ;
syntax IfcRelAssociatesConstraint
        = 
        ANY RelatingConstraint ANY Intent
 ;
syntax IfcRelAssociatesDocument
        = 
        RelatingDocument: ANY
 ;
syntax IfcRelAssociatesLibrary
        = 
        RelatingLibrary: ANY
 ;
syntax IfcRelAssociatesMaterial
        = 
        RelatingMaterial: ANY
 ;
syntax IfcRelAssociatesProfileProperties
        = 
        ANY ProfileOrientation ANY RelatingProfileProperties ANY ProfileSectionLocation
 ;
syntax IfcRelConnects
        = 
        ()
 ;
syntax IfcRelConnectsElements
        = 
        ANY ConnectionGeometry ANY RelatingElement ANY RelatedElement
 ;
syntax IfcRelConnectsPathElements
        = 
        ANY RelatingPriorities+ ANY RelatedPriorities+ ANY RelatedConnectionType ANY RelatingConnectionType
 ;
syntax IfcRelConnectsPortToElement
        = 
        ANY RelatingPort ANY RelatedElement
 ;
syntax IfcRelConnectsPorts
        = 
        ANY RelatingPort ANY RelatedPort ANY RealizingElement
 ;
syntax IfcRelConnectsStructuralActivity
        = 
        ANY RelatingElement ANY RelatedStructuralActivity
 ;
syntax IfcRelConnectsStructuralElement
        = 
        ANY RelatingElement ANY RelatedStructuralMember
 ;
syntax IfcRelConnectsStructuralMember
        = 
        ANY RelatingStructuralMember ANY RelatedStructuralConnection ANY AppliedCondition ANY AdditionalConditions ANY ConditionCoordinateSystem ANY SupportedLength
 ;
syntax IfcRelConnectsWithEccentricity
        = 
        ConnectionConstraint: ANY
 ;
syntax IfcRelConnectsWithRealizingElements
        = 
        ANY RealizingElements+ ANY ConnectionType
 ;
syntax IfcRelContainedInSpatialStructure
        = 
        ANY RelatedElements+ ANY RelatingStructure
 ;
syntax IfcRelCoversBldgElements
        = 
        ANY RelatingBuildingElement ANY RelatedCoverings+
 ;
syntax IfcRelCoversSpaces
        = 
        ANY RelatedSpace ANY RelatedCoverings+
 ;
syntax IfcRelDecomposes
        = 
        ANY RelatingObject ANY RelatedObjects+
 ;
syntax IfcRelDefines
        = 
        ANY RelatedObjects+
 ;
syntax IfcRelDefinesByProperties
        = 
        RelatingPropertyDefinition: ANY
 ;
syntax IfcRelDefinesByType
        = 
        RelatingType: ANY
 ;
syntax IfcRelFillsElement
        = 
        ANY RelatingOpeningElement ANY RelatedBuildingElement
 ;
syntax IfcRelFlowControlElements
        = 
        ANY RelatedControlElements+ ANY RelatingFlowElement
 ;
syntax IfcRelInteractionRequirements
        = 
        ANY DailyInteraction ANY ImportanceRating ANY LocationOfInteraction ANY RelatedSpaceProgram ANY RelatingSpaceProgram
 ;
syntax IfcRelNests
        = 
        ()
 ;
syntax IfcRelOccupiesSpaces
        = 
        ()
 ;
syntax IfcRelOverridesProperties
        = 
        ANY OverridingProperties+
 ;
syntax IfcRelProjectsElement
        = 
        ANY RelatingElement ANY RelatedFeatureElement
 ;
syntax IfcRelReferencedInSpatialStructure
        = 
        ANY RelatedElements+ ANY RelatingStructure
 ;
syntax IfcRelSchedulesCostItems
        = 
        ()
 ;
syntax IfcRelSequence
        = 
        ANY TimeLag ANY SequenceType ANY RelatingProcess ANY RelatedProcess
 ;
syntax IfcRelServicesBuildings
        = 
        ANY RelatingSystem ANY RelatedBuildings+
 ;
syntax IfcRelSpaceBoundary
        = 
        ANY PhysicalOrVirtualBoundary ANY InternalOrExternalBoundary ANY RelatingSpace ANY RelatedBuildingElement ANY ConnectionGeometry
 ;
syntax IfcRelVoidsElement
        = 
        ANY RelatingBuildingElement ANY RelatedOpeningElement
 ;
syntax IfcRelationship
        = 
        ()
 ;
syntax IfcRelaxation
        = 
        ANY RelaxationValue ANY InitialStress
 ;
syntax IfcRepresentation
        = 
        ANY RepresentationIdentifier ANY RepresentationType ANY RepresentationMap ANY OfProductRepresentation ANY ContextOfItems ANY Items+
 ;
syntax IfcRepresentationContext
        = 
        ANY ContextIdentifier ANY ContextType ANY RepresentationsInContext
 ;
syntax IfcRepresentationItem
        = 
        StyledByItem: ANY
 ;
syntax IfcRepresentationMap
        = 
        ANY MapUsage ANY MappingOrigin ANY MappedRepresentation
 ;
syntax IfcResource
        = 
        ResourceOf: ANY
 ;
syntax IfcRevolvedAreaSolid
        = 
        ANY Axis ANY Angle
 ;
syntax IfcRibPlateProfileProperties
        = 
        ANY Thickness ANY RibHeight ANY RibWidth ANY RibSpacing ANY Direction
 ;
syntax IfcRightCircularCone
        = 
        ANY Height ANY BottomRadius
 ;
syntax IfcRightCircularCylinder
        = 
        ANY Height ANY Radius
 ;
syntax IfcRoof
        = 
        ShapeType: ANY
 ;
syntax IfcRoot
        = 
        ANY GlobalId ANY Name ANY Description ANY OwnerHistory ANY HasAssociations
 ;
syntax IfcRoundedEdgeFeature
        = 
        Radius: ANY
 ;
syntax IfcRoundedRectangleProfileDef
        = 
        RoundingRadius: ANY
 ;
syntax IfcSIUnit
        = 
        ANY Prefix ANY Name
 ;
syntax IfcSanitaryTerminalType
        = 
        PredefinedType: ANY
 ;
syntax IfcScheduleTimeControl
        = 
        ANY ScheduleDuration ANY ActualDuration ANY RemainingTime ANY FreeFloat ANY TotalFloat ANY IsCritical ANY StartFloat ANY FinishFloat ANY Completion ANY ScheduleTimeControlAssigned ANY ActualStart ANY EarlyStart ANY LateStart ANY ScheduleStart ANY ActualFinish ANY EarlyFinish ANY LateFinish ANY ScheduleFinish ANY StatusTime
 ;
syntax IfcSectionProperties
        = 
        ANY StartProfile ANY EndProfile ANY SectionType
 ;
syntax IfcSectionReinforcementProperties
        = 
        ANY LongitudinalStartPosition ANY LongitudinalEndPosition ANY TransversePosition ANY ReinforcementRole ANY SectionDefinition ANY CrossSectionReinforcementDefinitions+
 ;
syntax IfcSectionedSpine
        = 
        ANY SpineCurve ANY CrossSections ANY CrossSectionPositions
 ;
syntax IfcSensorType
        = 
        PredefinedType: ANY
 ;
syntax IfcServiceLife
        = 
        ANY ServiceLifeType ANY ServiceLifeDuration
 ;
syntax IfcServiceLifeFactor
        = 
        ANY UpperValue ANY MostUsedValue ANY LowerValue ANY PredefinedType
 ;
syntax IfcShapeAspect
        = 
        ANY Name ANY Description ANY ProductDefinitional ANY ShapeRepresentations+ ANY PartOfProductDefinitionShape
 ;
syntax IfcShapeModel
        = 
        OfShapeAspect: ANY
 ;
syntax IfcShapeRepresentation
        = 
        ()
 ;
syntax IfcShellBasedSurfaceModel
        = 
        ANY SbsmBoundary+
 ;
syntax IfcSimpleProperty
        = 
        ()
 ;
syntax IfcSite
        = 
        ANY RefLatitude ANY RefLongitude ANY RefElevation ANY LandTitleNumber ANY SiteAddress
 ;
syntax IfcSlab
        = 
        PredefinedType: ANY
 ;
syntax IfcSlabType
        = 
        PredefinedType: ANY
 ;
syntax IfcSlippageConnectionCondition
        = 
        ANY SlippageX ANY SlippageY ANY SlippageZ
 ;
syntax IfcSolidModel
        = 
        ()
 ;
syntax IfcSoundProperties
        = 
        ANY IsAttenuating ANY SoundScale ANY SoundValues
 ;
syntax IfcSoundValue
        = 
        ANY SoundLevelSingleValue ANY SoundLevelTimeSeries ANY Frequency
 ;
syntax IfcSpace
        = 
        ANY InteriorOrExteriorSpace ANY ElevationWithFlooring ANY HasCoverings ANY BoundedBy
 ;
syntax IfcSpaceHeaterType
        = 
        PredefinedType: ANY
 ;
syntax IfcSpaceProgram
        = 
        ANY SpaceProgramIdentifier ANY MaxRequiredArea ANY MinRequiredArea ANY StandardRequiredArea ANY HasInteractionReqsFrom ANY HasInteractionReqsTo ANY RequestedLocation
 ;
syntax IfcSpaceThermalLoadProperties
        = 
        ANY ApplicableValueRatio ANY ThermalLoadSource ANY PropertySource ANY SourceDescription ANY MaximumValue ANY MinimumValue ANY UserDefinedThermalLoadSource ANY UserDefinedPropertySource ANY ThermalLoadType ANY ThermalLoadTimeSeriesValues
 ;
syntax IfcSpaceType
        = 
        PredefinedType: ANY
 ;
syntax IfcSpatialStructureElement
        = 
        ANY LongName ANY CompositionType ANY ReferencesElements ANY ServicedBySystems ANY ContainsElements
 ;
syntax IfcSpatialStructureElementType
        = 
        ()
 ;
syntax IfcSphere
        = 
        Radius: ANY
 ;
syntax IfcStackTerminalType
        = 
        PredefinedType: ANY
 ;
syntax IfcStair
        = 
        ShapeType: ANY
 ;
syntax IfcStairFlight
        = 
        ANY NumberOfRiser ANY NumberOfTreads ANY RiserHeight ANY TreadLength
 ;
syntax IfcStairFlightType
        = 
        PredefinedType: ANY
 ;
syntax IfcStructuralAction
        = 
        ANY CausedBy ANY DestabilizingLoad
 ;
syntax IfcStructuralActivity
        = 
        ANY AssignedToStructuralItem ANY AppliedLoad ANY GlobalOrLocal
 ;
syntax IfcStructuralAnalysisModel
        = 
        ANY OrientationOf2DPlane ANY LoadedBy+ ANY HasResults+ ANY PredefinedType
 ;
syntax IfcStructuralConnection
        = 
        ANY ConnectsStructuralMembers ANY AppliedCondition
 ;
syntax IfcStructuralConnectionCondition
        = 
        Name: ANY
 ;
syntax IfcStructuralCurveConnection
        = 
        ()
 ;
syntax IfcStructuralCurveMember
        = 
        PredefinedType: ANY
 ;
syntax IfcStructuralCurveMemberVarying
        = 
        ()
 ;
syntax IfcStructuralItem
        = 
        ()
 ;
syntax IfcStructuralLinearAction
        = 
        ProjectedOrTrue: ANY
 ;
syntax IfcStructuralLinearActionVarying
        = 
        ANY VaryingAppliedLoadLocation ANY SubsequentAppliedLoads+
 ;
syntax IfcStructuralLoad
        = 
        Name: ANY
 ;
syntax IfcStructuralLoadGroup
        = 
        ANY PredefinedType ANY ActionType ANY ActionSource ANY Coefficient ANY Purpose ANY SourceOfResultGroup ANY LoadGroupFor
 ;
syntax IfcStructuralLoadLinearForce
        = 
        ANY LinearForceX ANY LinearForceY ANY LinearForceZ ANY LinearMomentX ANY LinearMomentY ANY LinearMomentZ
 ;
syntax IfcStructuralLoadPlanarForce
        = 
        ANY PlanarForceX ANY PlanarForceY ANY PlanarForceZ
 ;
syntax IfcStructuralLoadSingleDisplacement
        = 
        ANY DisplacementX ANY DisplacementY ANY DisplacementZ ANY RotationalDisplacementRX ANY RotationalDisplacementRY ANY RotationalDisplacementRZ
 ;
syntax IfcStructuralLoadSingleDisplacementDistortion
        = 
        Distortion: ANY
 ;
syntax IfcStructuralLoadSingleForce
        = 
        ANY ForceX ANY ForceY ANY ForceZ ANY MomentX ANY MomentY ANY MomentZ
 ;
syntax IfcStructuralLoadSingleForceWarping
        = 
        WarpingMoment: ANY
 ;
syntax IfcStructuralLoadStatic
        = 
        ()
 ;
syntax IfcStructuralLoadTemperature
        = 
        ANY DeltaT_Constant ANY DeltaT_Y ANY DeltaT_Z
 ;
syntax IfcStructuralMember
        = 
        ANY ReferencesElement ANY ConnectedBy
 ;
syntax IfcStructuralPlanarAction
        = 
        ProjectedOrTrue: ANY
 ;
syntax IfcStructuralPlanarActionVarying
        = 
        ANY VaryingAppliedLoadLocation ANY SubsequentAppliedLoads
 ;
syntax IfcStructuralPointAction
        = 
        ()
 ;
syntax IfcStructuralPointConnection
        = 
        ()
 ;
syntax IfcStructuralPointReaction
        = 
        ()
 ;
syntax IfcStructuralProfileProperties
        = 
        ANY TorsionalConstantX ANY MomentOfInertiaYZ ANY MomentOfInertiaY ANY MomentOfInertiaZ ANY WarpingConstant ANY ShearCentreZ ANY ShearCentreY ANY ShearDeformationAreaZ ANY ShearDeformationAreaY ANY MaximumSectionModulusY ANY MinimumSectionModulusY ANY MaximumSectionModulusZ ANY MinimumSectionModulusZ ANY TorsionalSectionModulus ANY CentreOfGravityInX ANY CentreOfGravityInY
 ;
syntax IfcStructuralReaction
        = 
        Causes: ANY
 ;
syntax IfcStructuralResultGroup
        = 
        ANY TheoryType ANY IsLinear ANY ResultGroupFor ANY ResultForLoadGroup
 ;
syntax IfcStructuralSteelProfileProperties
        = 
        ANY ShearAreaZ ANY ShearAreaY ANY PlasticShapeFactorY ANY PlasticShapeFactorZ
 ;
syntax IfcStructuralSurfaceConnection
        = 
        ()
 ;
syntax IfcStructuralSurfaceMember
        = 
        ANY PredefinedType ANY Thickness
 ;
syntax IfcStructuralSurfaceMemberVarying
        = 
        ANY VaryingThicknessLocation ANY SubsequentThickness
 ;
syntax IfcStructuredDimensionCallout
        = 
        ()
 ;
syntax IfcStyleModel
        = 
        ()
 ;
syntax IfcStyledItem
        = 
        ANY Item ANY Styles+ ANY Name
 ;
syntax IfcStyledRepresentation
        = 
        ()
 ;
syntax IfcSubContractResource
        = 
        ANY SubContractor ANY JobDescription
 ;
syntax IfcSubedge
        = 
        ParentEdge: ANY
 ;
syntax IfcSurface
        = 
        ()
 ;
syntax IfcSurfaceCurveSweptAreaSolid
        = 
        ANY StartParam ANY EndParam ANY Directrix ANY ReferenceSurface
 ;
syntax IfcSurfaceOfLinearExtrusion
        = 
        ANY ExtrudedDirection ANY Depth
 ;
syntax IfcSurfaceOfRevolution
        = 
        AxisPosition: ANY
 ;
syntax IfcSurfaceStyle
        = 
        ANY Styles ANY Side
 ;
syntax IfcSurfaceStyleLighting
        = 
        ANY DiffuseTransmissionColour ANY DiffuseReflectionColour ANY TransmissionColour ANY ReflectanceColour
 ;
syntax IfcSurfaceStyleRefraction
        = 
        ANY RefractionIndex ANY DispersionFactor
 ;
syntax IfcSurfaceStyleRendering
        = 
        ANY Transparency ANY ReflectanceMethod ANY DiffuseColour ANY TransmissionColour ANY DiffuseTransmissionColour ANY ReflectionColour ANY SpecularColour ANY SpecularHighlight
 ;
syntax IfcSurfaceStyleShading
        = 
        SurfaceColour: ANY
 ;
syntax IfcSurfaceStyleWithTextures
        = 
        ANY Textures+
 ;
syntax IfcSurfaceTexture
        = 
        ANY RepeatS ANY RepeatT ANY TextureType ANY TextureTransform
 ;
syntax IfcSweptAreaSolid
        = 
        ANY SweptArea ANY Position
 ;
syntax IfcSweptDiskSolid
        = 
        ANY Radius ANY InnerRadius ANY StartParam ANY EndParam ANY Directrix
 ;
syntax IfcSweptSurface
        = 
        ANY SweptCurve ANY Position
 ;
syntax IfcSwitchingDeviceType
        = 
        PredefinedType: ANY
 ;
syntax IfcSymbolStyle
        = 
        StyleOfSymbol: ANY
 ;
syntax IfcSystem
        = 
        ServicesBuildings: ANY
 ;
syntax IfcSystemFurnitureElementType
        = 
        ()
 ;
syntax IfcTShapeProfileDef
        = 
        ANY Depth ANY FlangeWidth ANY WebThickness ANY FlangeThickness ANY FilletRadius ANY FlangeEdgeRadius ANY WebEdgeRadius ANY WebSlope ANY FlangeSlope ANY CentreOfGravityInY
 ;
syntax IfcTable
        = 
        ANY Rows+ ANY Name
 ;
syntax IfcTableRow
        = 
        ANY RowCells+ ANY OfTable ANY IsHeading
 ;
syntax IfcTankType
        = 
        PredefinedType: ANY
 ;
syntax IfcTask
        = 
        ANY TaskId ANY Status ANY WorkMethod ANY IsMilestone ANY Priority
 ;
syntax IfcTelecomAddress
        = 
        ANY TelephoneNumbers+ ANY FacsimileNumbers+ ANY PagerNumber ANY ElectronicMailAddresses+ ANY WWWHomePageURL
 ;
syntax IfcTendon
        = 
        ANY PredefinedType ANY NominalDiameter ANY CrossSectionArea ANY TensionForce ANY PreStress ANY FrictionCoefficient ANY AnchorageSlip ANY MinCurvatureRadius
 ;
syntax IfcTendonAnchor
        = 
        ()
 ;
syntax IfcTerminatorSymbol
        = 
        AnnotatedCurve: ANY
 ;
syntax IfcTextLiteral
        = 
        ANY Literal ANY Path ANY Placement
 ;
syntax IfcTextLiteralWithExtent
        = 
        ANY Extent ANY BoxAlignment
 ;
syntax IfcTextStyle
        = 
        ANY TextCharacterAppearance ANY TextStyle ANY TextFontStyle
 ;
syntax IfcTextStyleFontModel
        = 
        ANY FontFamily+ ANY FontStyle ANY FontVariant ANY FontWeight ANY FontSize
 ;
syntax IfcTextStyleForDefinedFont
        = 
        ANY Colour ANY BackgroundColour
 ;
syntax IfcTextStyleTextModel
        = 
        ANY TextAlign ANY TextDecoration ANY TextTransform ANY TextIndent ANY LetterSpacing ANY WordSpacing ANY LineHeight
 ;
syntax IfcTextStyleWithBoxCharacteristics
        = 
        ANY BoxHeight ANY BoxWidth ANY BoxSlantAngle ANY BoxRotateAngle ANY CharacterSpacing
 ;
syntax IfcTextureCoordinate
        = 
        AnnotatedSurface: ANY
 ;
syntax IfcTextureCoordinateGenerator
        = 
        ANY Parameter+ ANY Mode
 ;
syntax IfcTextureMap
        = 
        ANY TextureMaps+
 ;
syntax IfcTextureVertex
        = 
        Coordinates: ANY
 ;
syntax IfcThermalMaterialProperties
        = 
        ANY SpecificHeatCapacity ANY BoilingPoint ANY FreezingPoint ANY ThermalConductivity
 ;
syntax IfcTimeSeries
        = 
        ANY Name ANY Description ANY TimeSeriesDataType ANY DataOrigin ANY UserDefinedDataOrigin ANY DocumentedBy ANY StartTime ANY EndTime ANY Unit
 ;
syntax IfcTimeSeriesReferenceRelationship
        = 
        ANY ReferencedTimeSeries ANY TimeSeriesReferences+
 ;
syntax IfcTimeSeriesSchedule
        = 
        ANY ApplicableDates+ ANY TimeSeries ANY TimeSeriesScheduleType
 ;
syntax IfcTimeSeriesValue
        = 
        ANY ListValues+
 ;
syntax IfcTopologicalRepresentationItem
        = 
        ()
 ;
syntax IfcTopologyRepresentation
        = 
        ()
 ;
syntax IfcTransformerType
        = 
        PredefinedType: ANY
 ;
syntax IfcTransportElement
        = 
        ANY OperationType ANY CapacityByWeight ANY CapacityByNumber
 ;
syntax IfcTransportElementType
        = 
        PredefinedType: ANY
 ;
syntax IfcTrapeziumProfileDef
        = 
        ANY BottomXDim ANY TopXDim ANY YDim ANY TopXOffset
 ;
syntax IfcTrimmedCurve
        = 
        ANY SenseAgreement ANY MasterRepresentation ANY Trim1 ANY Trim2 ANY BasisCurve
 ;
syntax IfcTubeBundleType
        = 
        PredefinedType: ANY
 ;
syntax IfcTwoDirectionRepeatFactor
        = 
        SecondRepeatFactor: ANY
 ;
syntax IfcTypeObject
        = 
        ANY ObjectTypeOf ANY HasPropertySets+ ANY ApplicableOccurrence
 ;
syntax IfcTypeProduct
        = 
        ANY RepresentationMaps+ ANY Tag
 ;
syntax IfcUShapeProfileDef
        = 
        ANY Depth ANY FlangeWidth ANY WebThickness ANY FlangeThickness ANY FilletRadius ANY EdgeRadius ANY FlangeSlope ANY CentreOfGravityInX
 ;
syntax IfcUnitAssignment
        = 
        ANY Units+
 ;
syntax IfcUnitaryEquipmentType
        = 
        PredefinedType: ANY
 ;
syntax IfcValveType
        = 
        PredefinedType: ANY
 ;
syntax IfcVector
        = 
        ANY Orientation ANY Magnitude
 ;
syntax IfcVertex
        = 
        ()
 ;
syntax IfcVertexBasedTextureMap
        = 
        ANY TextureVertices ANY TexturePoints
 ;
syntax IfcVertexLoop
        = 
        LoopVertex: ANY
 ;
syntax IfcVertexPoint
        = 
        VertexGeometry: ANY
 ;
syntax IfcVibrationIsolatorType
        = 
        PredefinedType: ANY
 ;
syntax IfcVirtualElement
        = 
        ()
 ;
syntax IfcVirtualGridIntersection
        = 
        ANY IntersectingAxes ANY OffsetDistances
 ;
syntax IfcWall
        = 
        ()
 ;
syntax IfcWallStandardCase
        = 
        ()
 ;
syntax IfcWallType
        = 
        PredefinedType: ANY
 ;
syntax IfcWasteTerminalType
        = 
        PredefinedType: ANY
 ;
syntax IfcWaterProperties
        = 
        ANY IsPotable ANY Hardness ANY AlkalinityConcentration ANY AcidityConcentration ANY ImpuritiesContent ANY PHLevel ANY DissolvedSolidsContent
 ;
syntax IfcWindow
        = 
        ANY OverallHeight ANY OverallWidth
 ;
syntax IfcWindowLiningProperties
        = 
        ANY LiningDepth ANY LiningThickness ANY TransomThickness ANY MullionThickness ANY FirstTransomOffset ANY SecondTransomOffset ANY FirstMullionOffset ANY SecondMullionOffset ANY ShapeAspectStyle
 ;
syntax IfcWindowPanelProperties
        = 
        ANY OperationType ANY PanelPosition ANY FrameDepth ANY FrameThickness ANY ShapeAspectStyle
 ;
syntax IfcWindowStyle
        = 
        ANY ConstructionType ANY OperationType ANY ParameterTakesPrecedence ANY Sizeable
 ;
syntax IfcWorkControl
        = 
        ANY Identifier ANY Purpose ANY Duration ANY TotalFloat ANY WorkControlType ANY UserDefinedControlType ANY CreationDate ANY Creators+ ANY StartTime ANY FinishTime
 ;
syntax IfcWorkPlan
        = 
        ()
 ;
syntax IfcWorkSchedule
        = 
        ()
 ;
syntax IfcZShapeProfileDef
        = 
        ANY Depth ANY FlangeWidth ANY WebThickness ANY FlangeThickness ANY FilletRadius ANY EdgeRadius
 ;
syntax IfcZone
        = 
        ()
 ;
syntax IfcActionSourceTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | BRAKES: ()
        | RAIN: ()
        | WAVE: ()
        | CURRENT: ()
        | ICE: ()
        | BUOYANCY: ()
        | LACK_OF_FIT: ()
        | CREEP: ()
        | SHRINKAGE: ()
        | SYSTEM_IMPERFECTION: ()
        | PROPPING: ()
        | ERECTION: ()
        | TRANSPORT: ()
        | IMPACT: ()
        | IMPULSE: ()
        | FIRE: ()
        | EARTHQUAKE_E: ()
        | TEMPERATURE_T: ()
        | SETTLEMENT_U: ()
        | PRESTRESSING_P: ()
        | WIND_W: ()
        | SNOW_S: ()
        | LIVE_LOAD_Q: ()
        | COMPLETION_G1: ()
        | DEAD_LOAD_G: ()
 ;
syntax IfcActionTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | EXTRAORDINARY_A: ()
        | VARIABLE_Q: ()
        | PERMANENT_G: ()
 ;
syntax IfcActuatorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | THERMOSTATICACTUATOR: ()
        | PNEUMATICACTUATOR: ()
        | HYDRAULICACTUATOR: ()
        | HANDOPERATEDACTUATOR: ()
        | ELECTRICACTUATOR: ()
 ;
syntax IfcAddressTypeEnum
        = USERDEFINED: ()
        | DISTRIBUTIONPOINT: ()
        | HOME: ()
        | SITE: ()
        | OFFICE: ()
 ;
syntax IfcAheadOrBehind
        = BEHIND: ()
        | AHEAD: ()
 ;
syntax IfcAirTerminalBoxTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | VARIABLEFLOWPRESSUREINDEPENDANT: ()
        | VARIABLEFLOWPRESSUREDEPENDANT: ()
        | CONSTANTFLOW: ()
 ;
syntax IfcAirTerminalTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | LINEARDIFFUSER: ()
        | LINEARGRILLE: ()
        | IRIS: ()
        | EYEBALL: ()
        | DIFFUSER: ()
        | REGISTER: ()
        | GRILLE: ()
 ;
syntax IfcAirToAirHeatRecoveryTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | THERMOSIPHONCOILTYPEHEATEXCHANGERS: ()
        | THERMOSIPHONSEALEDTUBEHEATEXCHANGERS: ()
        | TWINTOWERENTHALPYRECOVERYLOOPS: ()
        | HEATPIPE: ()
        | RUNAROUNDCOILLOOP: ()
        | ROTARYWHEEL: ()
        | FIXEDPLATEPARALLELFLOWEXCHANGER: ()
        | FIXEDPLATECROSSFLOWEXCHANGER: ()
        | FIXEDPLATECOUNTERFLOWEXCHANGER: ()
 ;
syntax IfcAlarmTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WHISTLE: ()
        | SIREN: ()
        | MANUALPULLBOX: ()
        | LIGHT: ()
        | BREAKGLASSBUTTON: ()
        | BELL: ()
 ;
syntax IfcAnalysisModelTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | LOADING_3D: ()
        | OUT_PLANE_LOADING_2D: ()
        | IN_PLANE_LOADING_2D: ()
 ;
syntax IfcAnalysisTheoryTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | FULL_NONLINEAR_THEORY: ()
        | THIRD_ORDER_THEORY: ()
        | SECOND_ORDER_THEORY: ()
        | FIRST_ORDER_THEORY: ()
 ;
syntax IfcArithmeticOperatorEnum
        = SUBTRACT: ()
        | MULTIPLY: ()
        | DIVIDE: ()
        | ADD: ()
 ;
syntax IfcAssemblyPlaceEnum
        = NOTDEFINED: ()
        | FACTORY: ()
        | SITE: ()
 ;
syntax IfcBSplineCurveForm
        = UNSPECIFIED: ()
        | HYPERBOLIC_ARC: ()
        | PARABOLIC_ARC: ()
        | ELLIPTIC_ARC: ()
        | CIRCULAR_ARC: ()
        | POLYLINE_FORM: ()
 ;
syntax IfcBeamTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | T_BEAM: ()
        | LINTEL: ()
        | JOIST: ()
        | BEAM: ()
 ;
syntax IfcBenchmarkEnum
        = NOTEQUALTO: ()
        | EQUALTO: ()
        | LESSTHANOREQUALTO: ()
        | LESSTHAN: ()
        | GREATERTHANOREQUALTO: ()
        | GREATERTHAN: ()
 ;
syntax IfcBoilerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | STEAM: ()
        | WATER: ()
 ;
syntax IfcBooleanOperator
        = DIFFERENCE: ()
        | INTERSECTION: ()
        | UNION: ()
 ;
syntax IfcBuildingElementProxyTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
 ;
syntax IfcCableCarrierFittingTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TEE: ()
        | REDUCER: ()
        | CROSS: ()
        | BEND: ()
 ;
syntax IfcCableCarrierSegmentTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | CONDUITSEGMENT: ()
        | CABLETRUNKINGSEGMENT: ()
        | CABLETRAYSEGMENT: ()
        | CABLELADDERSEGMENT: ()
 ;
syntax IfcCableSegmentTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | CONDUCTORSEGMENT: ()
        | CABLESEGMENT: ()
 ;
syntax IfcChangeActionEnum
        = MODIFIEDDELETED: ()
        | MODIFIEDADDED: ()
        | DELETED: ()
        | ADDED: ()
        | MODIFIED: ()
        | NOCHANGE: ()
 ;
syntax IfcChillerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | HEATRECOVERY: ()
        | WATERCOOLED: ()
        | AIRCOOLED: ()
 ;
syntax IfcCoilTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | GASHEATINGCOIL: ()
        | ELECTRICHEATINGCOIL: ()
        | WATERHEATINGCOIL: ()
        | STEAMHEATINGCOIL: ()
        | WATERCOOLINGCOIL: ()
        | DXCOOLINGCOIL: ()
 ;
syntax IfcColumnTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | COLUMN: ()
 ;
syntax IfcCompressorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TWINSCREW: ()
        | SINGLESCREW: ()
        | ROTARYVANE: ()
        | ROLLINGPISTON: ()
        | WELDEDSHELLHERMETIC: ()
        | SEMIHERMETIC: ()
        | HERMETIC: ()
        | OPENTYPE: ()
        | BOOSTER: ()
        | SINGLESTAGE: ()
        | TROCHOIDAL: ()
        | SCROLL: ()
        | ROTARY: ()
        | RECIPROCATING: ()
        | DYNAMIC: ()
 ;
syntax IfcCondenserTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | EVAPORATIVECOOLED: ()
        | AIRCOOLED: ()
        | WATERCOOLEDBRAZEDPLATE: ()
        | WATERCOOLEDTUBEINTUBE: ()
        | WATERCOOLEDSHELLCOIL: ()
        | WATERCOOLEDSHELLTUBE: ()
 ;
syntax IfcConnectionTypeEnum
        = NOTDEFINED: ()
        | ATEND: ()
        | ATSTART: ()
        | ATPATH: ()
 ;
syntax IfcConstraintEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ADVISORY: ()
        | SOFT: ()
        | HARD: ()
 ;
syntax IfcControllerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TWOPOSITION: ()
        | TIMEDTWOPOSITION: ()
        | PROPORTIONALINTEGRALDERIVATIVE: ()
        | PROPORTIONALINTEGRAL: ()
        | PROPORTIONAL: ()
        | FLOATING: ()
 ;
syntax IfcCooledBeamTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PASSIVE: ()
        | ACTIVE: ()
 ;
syntax IfcCoolingTowerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | MECHANICALFORCEDDRAFT: ()
        | MECHANICALINDUCEDDRAFT: ()
        | NATURALDRAFT: ()
 ;
syntax IfcCostScheduleTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SCHEDULEOFRATES: ()
        | UNPRICEDBILLOFQUANTITIES: ()
        | PRICEDBILLOFQUANTITIES: ()
        | TENDER: ()
        | ESTIMATE: ()
        | COSTPLAN: ()
        | BUDGET: ()
 ;
syntax IfcCoveringTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WRAPPING: ()
        | SLEEVING: ()
        | MEMBRANE: ()
        | INSULATION: ()
        | ROOFING: ()
        | CLADDING: ()
        | FLOORING: ()
        | CEILING: ()
 ;
syntax IfcCurrencyEnum
        = NOK: ()
        | ZWD: ()
        | ZAR: ()
        | XEU: ()
        | VND: ()
        | VEB: ()
        | USD: ()
        | TWD: ()
        | TTD: ()
        | TRL: ()
        | THB: ()
        | SKP: ()
        | SGD: ()
        | SEK: ()
        | SCR: ()
        | SAR: ()
        | RUR: ()
        | QAR: ()
        | PTN: ()
        | PLN: ()
        | PKR: ()
        | PHP: ()
        | PGK: ()
        | OMR: ()
        | NZD: ()
        | NLG: ()
        | MYR: ()
        | MXN: ()
        | MUR: ()
        | MTL: ()
        | LUF: ()
        | LKR: ()
        | KYD: ()
        | KWD: ()
        | KRW: ()
        | KES: ()
        | JPY: ()
        | JOD: ()
        | JMD: ()
        | ITL: ()
        | IRP: ()
        | INR: ()
        | ILS: ()
        | IDR: ()
        | ICK: ()
        | HUF: ()
        | HKD: ()
        | GRX: ()
        | GMD: ()
        | GIP: ()
        | GBP: ()
        | FRF: ()
        | FKP: ()
        | FJD: ()
        | FIM: ()
        | FAK: ()
        | EUR: ()
        | EST: ()
        | EGL: ()
        | DKK: ()
        | DEM: ()
        | DDP: ()
        | CZK: ()
        | CYS: ()
        | CNY: ()
        | CLP: ()
        | CHF: ()
        | CBD: ()
        | CAD: ()
        | BZD: ()
        | BWP: ()
        | BSD: ()
        | BRL: ()
        | BND: ()
        | BMD: ()
        | BHD: ()
        | BGL: ()
        | BEG: ()
        | BBD: ()
        | AUD: ()
        | ATS: ()
        | AES: ()
        | AED: ()
 ;
syntax IfcCurtainWallTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
 ;
syntax IfcDamperTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | FUMEHOODEXHAUST: ()
        | BALANCINGDAMPER: ()
        | GRAVITYRELIEFDAMPER: ()
        | GRAVITYDAMPER: ()
        | BLASTDAMPER: ()
        | RELIEFDAMPER: ()
        | BACKDRAFTDAMPER: ()
        | FIRESMOKEDAMPER: ()
        | SMOKEDAMPER: ()
        | FIREDAMPER: ()
        | CONTROLDAMPER: ()
 ;
syntax IfcDataOriginEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SIMULATED: ()
        | PREDICTED: ()
        | MEASURED: ()
 ;
syntax IfcDerivedUnitEnum
        = USERDEFINED: ()
        | WARPINGMOMENTUNIT: ()
        | WARPINGCONSTANTUNIT: ()
        | THERMALEXPANSIONCOEFFICIENTUNIT: ()
        | TEMPERATUREGRADIENTUNIT: ()
        | SOUNDPRESSUREUNIT: ()
        | SOUNDPOWERUNIT: ()
        | SECTIONMODULUSUNIT: ()
        | SECTIONAREAINTEGRALUNIT: ()
        | ROTATIONALMASSUNIT: ()
        | PHUNIT: ()
        | MODULUSOFROTATIONALSUBGRADEREACTIONUNIT: ()
        | MODULUSOFLINEARSUBGRADEREACTIONUNIT: ()
        | MASSPERLENGTHUNIT: ()
        | LUMINOUSINTENSITYDISTRIBUTIONUNIT: ()
        | IONCONCENTRATIONUNIT: ()
        | HEATINGVALUEUNIT: ()
        | CURVATUREUNIT: ()
        | ACCELERATIONUNIT: ()
        | MODULUSOFSUBGRADEREACTIONUNIT: ()
        | ROTATIONALSTIFFNESSUNIT: ()
        | LINEARSTIFFNESSUNIT: ()
        | SHEARMODULUSUNIT: ()
        | MODULUSOFELASTICITYUNIT: ()
        | PLANARFORCEUNIT: ()
        | LINEARFORCEUNIT: ()
        | LINEARMOMENTUNIT: ()
        | MOMENTOFINERTIAUNIT: ()
        | TORQUEUNIT: ()
        | ROTATIONALFREQUENCYUNIT: ()
        | VOLUMETRICFLOWRATEUNIT: ()
        | VAPORPERMEABILITYUNIT: ()
        | THERMALTRANSMITTANCEUNIT: ()
        | THERMALRESISTANCEUNIT: ()
        | THERMALCONDUCTANCEUNIT: ()
        | THERMALADMITTANCEUNIT: ()
        | SPECIFICHEATCAPACITYUNIT: ()
        | MOLECULARWEIGHTUNIT: ()
        | MOISTUREDIFFUSIVITYUNIT: ()
        | MASSFLOWRATEUNIT: ()
        | MASSDENSITYUNIT: ()
        | LINEARVELOCITYUNIT: ()
        | KINEMATICVISCOSITYUNIT: ()
        | ISOTHERMALMOISTURECAPACITYUNIT: ()
        | INTEGERCOUNTRATEUNIT: ()
        | HEATFLUXDENSITYUNIT: ()
        | DYNAMICVISCOSITYUNIT: ()
        | COMPOUNDPLANEANGLEUNIT: ()
        | ANGULARVELOCITYUNIT: ()
 ;
syntax IfcDimensionExtentUsage
        = TARGET: ()
        | ORIGIN: ()
 ;
syntax IfcDirectionSenseEnum
        = NEGATIVE: ()
        | POSITIVE: ()
 ;
syntax IfcDistributionChamberElementTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | VALVECHAMBER: ()
        | TRENCH: ()
        | SUMP: ()
        | METERCHAMBER: ()
        | MANHOLE: ()
        | INSPECTIONPIT: ()
        | INSPECTIONCHAMBER: ()
        | FORMEDDUCT: ()
 ;
syntax IfcDocumentConfidentialityEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PERSONAL: ()
        | CONFIDENTIAL: ()
        | RESTRICTED: ()
        | PUBLIC: ()
 ;
syntax IfcDocumentStatusEnum
        = NOTDEFINED: ()
        | REVISION: ()
        | FINAL: ()
        | FINALDRAFT: ()
        | DRAFT: ()
 ;
syntax IfcDoorPanelOperationEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ROLLINGUP: ()
        | REVOLVING: ()
        | FOLDING: ()
        | SLIDING: ()
        | DOUBLE_ACTING: ()
        | SWINGING: ()
 ;
syntax IfcDoorPanelPositionEnum
        = NOTDEFINED: ()
        | RIGHT: ()
        | MIDDLE: ()
        | LEFT: ()
 ;
syntax IfcDoorStyleConstructionEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PLASTIC: ()
        | ALUMINIUM_PLASTIC: ()
        | ALUMINIUM_WOOD: ()
        | WOOD: ()
        | STEEL: ()
        | HIGH_GRADE_STEEL: ()
        | ALUMINIUM: ()
 ;
syntax IfcDoorStyleOperationEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ROLLINGUP: ()
        | REVOLVING: ()
        | DOUBLE_DOOR_FOLDING: ()
        | FOLDING_TO_RIGHT: ()
        | FOLDING_TO_LEFT: ()
        | DOUBLE_DOOR_SLIDING: ()
        | SLIDING_TO_RIGHT: ()
        | SLIDING_TO_LEFT: ()
        | DOUBLE_DOOR_DOUBLE_SWING: ()
        | DOUBLE_SWING_RIGHT: ()
        | DOUBLE_SWING_LEFT: ()
        | DOUBLE_DOOR_SINGLE_SWING_OPPOSITE_RIGHT: ()
        | DOUBLE_DOOR_SINGLE_SWING_OPPOSITE_LEFT: ()
        | DOUBLE_DOOR_SINGLE_SWING: ()
        | SINGLE_SWING_RIGHT: ()
        | SINGLE_SWING_LEFT: ()
 ;
syntax IfcDuctFittingTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TRANSITION: ()
        | OBSTRUCTION: ()
        | JUNCTION: ()
        | EXIT: ()
        | ENTRY: ()
        | CONNECTOR: ()
        | BEND: ()
 ;
syntax IfcDuctSegmentTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | FLEXIBLESEGMENT: ()
        | RIGIDSEGMENT: ()
 ;
syntax IfcDuctSilencerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ROUND: ()
        | RECTANGULAR: ()
        | FLATOVAL: ()
 ;
syntax IfcElectricApplianceTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WATERCOOLER: ()
        | WATERHEATER: ()
        | WASHINGMACHINE: ()
        | VENDINGMACHINE: ()
        | TV: ()
        | TUMBLEDRYER: ()
        | TELEPHONE: ()
        | SCANNER: ()
        | RADIANTHEATER: ()
        | REFRIGERATOR: ()
        | PRINTER: ()
        | PHOTOCOPIER: ()
        | MICROWAVE: ()
        | INDIRECTWATERHEATER: ()
        | HANDDRYER: ()
        | FRIDGE_FREEZER: ()
        | FREEZER: ()
        | FREESTANDINGFAN: ()
        | FACSIMILE: ()
        | ELECTRICHEATER: ()
        | ELECTRICCOOKER: ()
        | DISHWASHER: ()
        | DIRECTWATERHEATER: ()
        | COMPUTER: ()
 ;
syntax IfcElectricCurrentEnum
        = NOTDEFINED: ()
        | DIRECT: ()
        | ALTERNATING: ()
 ;
syntax IfcElectricDistributionPointFunctionEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SWITCHBOARD: ()
        | MOTORCONTROLCENTRE: ()
        | MIMICPANEL: ()
        | INDICATORPANEL: ()
        | GASDETECTORPANEL: ()
        | DISTRIBUTIONBOARD: ()
        | CONTROLPANEL: ()
        | CONSUMERUNIT: ()
        | ALARMPANEL: ()
 ;
syntax IfcElectricFlowStorageDeviceTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | UPS: ()
        | INDUCTORBANK: ()
        | HARMONICFILTER: ()
        | CAPACITORBANK: ()
        | BATTERY: ()
 ;
syntax IfcElectricGeneratorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
 ;
syntax IfcElectricHeaterTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ELECTRICMATHEATER: ()
        | ELECTRICCABLEHEATER: ()
        | ELECTRICPOINTHEATER: ()
 ;
syntax IfcElectricMotorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SYNCHRONOUS: ()
        | RELUCTANCESYNCHRONOUS: ()
        | POLYPHASE: ()
        | INDUCTION: ()
        | DC: ()
 ;
syntax IfcElectricTimeControlTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | RELAY: ()
        | TIMEDELAY: ()
        | TIMECLOCK: ()
 ;
syntax IfcElementAssemblyTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TRUSS: ()
        | SLAB_FIELD: ()
        | RIGID_FRAME: ()
        | REINFORCEMENT_UNIT: ()
        | GIRDER: ()
        | BRACED_FRAME: ()
        | BEAM_GRID: ()
        | ARCH: ()
        | ACCESSORY_ASSEMBLY: ()
 ;
syntax IfcElementCompositionEnum
        = PARTIAL: ()
        | ELEMENT: ()
        | COMPLEX: ()
 ;
syntax IfcEnergySequenceEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | AUXILIARY: ()
        | TERTIARY: ()
        | SECONDARY: ()
        | PRIMARY: ()
 ;
syntax IfcEnvironmentalImpactCategoryEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TRANSPORTATION: ()
        | MANUFACTURE: ()
        | INSTALLATION: ()
        | EXTRACTION: ()
        | DISPOSAL: ()
        | COMBINEDVALUE: ()
 ;
syntax IfcEvaporativeCoolerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | INDIRECTDIRECTCOMBINATION: ()
        | INDIRECTEVAPORATIVECOOLINGTOWERORCOILCOOLER: ()
        | INDIRECTEVAPORATIVEWETCOIL: ()
        | INDIRECTEVAPORATIVEPACKAGEAIRCOOLER: ()
        | DIRECTEVAPORATIVEAIRWASHER: ()
        | DIRECTEVAPORATIVEPACKAGEDROTARYAIRCOOLER: ()
        | DIRECTEVAPORATIVESLINGERSPACKAGEDAIRCOOLER: ()
        | DIRECTEVAPORATIVERIGIDMEDIAAIRCOOLER: ()
        | DIRECTEVAPORATIVERANDOMMEDIAAIRCOOLER: ()
 ;
syntax IfcEvaporatorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SHELLANDCOIL: ()
        | FLOODEDSHELLANDTUBE: ()
        | DIRECTEXPANSIONBRAZEDPLATE: ()
        | DIRECTEXPANSIONTUBEINTUBE: ()
        | DIRECTEXPANSIONSHELLANDTUBE: ()
 ;
syntax IfcFanTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PROPELLORAXIAL: ()
        | VANEAXIAL: ()
        | TUBEAXIAL: ()
        | CENTRIFUGALAIRFOIL: ()
        | CENTRIFUGALBACKWARDINCLINEDCURVED: ()
        | CENTRIFUGALRADIAL: ()
        | CENTRIFUGALFORWARDCURVED: ()
 ;
syntax IfcFilterTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WATERFILTER: ()
        | STRAINER: ()
        | OILFILTER: ()
        | ODORFILTER: ()
        | AIRPARTICLEFILTER: ()
 ;
syntax IfcFireSuppressionTerminalTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SPRINKLERDEFLECTOR: ()
        | SPRINKLER: ()
        | HOSEREEL: ()
        | FIREHYDRANT: ()
        | BREECHINGINLET: ()
 ;
syntax IfcFlowDirectionEnum
        = NOTDEFINED: ()
        | SOURCEANDSINK: ()
        | SINK: ()
        | SOURCE: ()
 ;
syntax IfcFlowInstrumentTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | VOLTMETER_RMS: ()
        | VOLTMETER_PEAK: ()
        | PHASEANGLEMETER: ()
        | POWERFACTORMETER: ()
        | FREQUENCYMETER: ()
        | AMMETER: ()
        | THERMOMETER: ()
        | PRESSUREGAUGE: ()
 ;
syntax IfcFlowMeterTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WATERMETER: ()
        | OILMETER: ()
        | GASMETER: ()
        | FLOWMETER: ()
        | ENERGYMETER: ()
        | ELECTRICMETER: ()
 ;
syntax IfcFootingTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | STRIP_FOOTING: ()
        | PILE_CAP: ()
        | PAD_FOOTING: ()
        | FOOTING_BEAM: ()
 ;
syntax IfcGasTerminalTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | GASBURNER: ()
        | GASBOOSTER: ()
        | GASAPPLIANCE: ()
 ;
syntax IfcGeometricProjectionEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ELEVATION_VIEW: ()
        | SECTION_VIEW: ()
        | REFLECTED_PLAN_VIEW: ()
        | PLAN_VIEW: ()
        | MODEL_VIEW: ()
        | SKETCH_VIEW: ()
        | GRAPH_VIEW: ()
 ;
syntax IfcGlobalOrLocalEnum
        = LOCAL_COORDS: ()
        | GLOBAL_COORDS: ()
 ;
syntax IfcHeatExchangerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SHELLANDTUBE: ()
        | PLATE: ()
 ;
syntax IfcHumidifierTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ASSISTEDSTEAM: ()
        | ASSISTEDBUTANE: ()
        | ASSISTEDPROPANE: ()
        | ASSISTEDNATURALGAS: ()
        | ASSISTEDELECTRIC: ()
        | ADIABATICCOMPRESSEDAIRNOZZLE: ()
        | ADIABATICRIGIDMEDIA: ()
        | ADIABATICULTRASONIC: ()
        | ADIABATICATOMIZING: ()
        | ADIABATICWETTEDELEMENT: ()
        | ADIABATICPAN: ()
        | ADIABATICAIRWASHER: ()
        | STEAMINJECTION: ()
 ;
syntax IfcInternalOrExternalEnum
        = NOTDEFINED: ()
        | EXTERNAL: ()
        | INTERNAL: ()
 ;
syntax IfcInventoryTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | FURNITUREINVENTORY: ()
        | SPACEINVENTORY: ()
        | ASSETINVENTORY: ()
 ;
syntax IfcJunctionBoxTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
 ;
syntax IfcLampTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TUNGSTENFILAMENT: ()
        | METALHALIDE: ()
        | HIGHPRESSURESODIUM: ()
        | HIGHPRESSUREMERCURY: ()
        | FLUORESCENT: ()
        | COMPACTFLUORESCENT: ()
 ;
syntax IfcLayerSetDirectionEnum
        = AXIS3: ()
        | AXIS2: ()
        | AXIS1: ()
 ;
syntax IfcLightDistributionCurveEnum
        = NOTDEFINED: ()
        | TYPE_C: ()
        | TYPE_B: ()
        | TYPE_A: ()
 ;
syntax IfcLightEmissionSourceEnum
        = NOTDEFINED: ()
        | TUNGSTENFILAMENT: ()
        | METALHALIDE: ()
        | MAINVOLTAGEHALOGEN: ()
        | LOWVOLTAGEHALOGEN: ()
        | LOWPRESSURESODIUM: ()
        | LIGHTEMITTINGDIODE: ()
        | HIGHPRESSURESODIUM: ()
        | HIGHPRESSUREMERCURY: ()
        | FLUORESCENT: ()
        | COMPACTFLUORESCENT: ()
 ;
syntax IfcLightFixtureTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | DIRECTIONSOURCE: ()
        | POINTSOURCE: ()
 ;
syntax IfcLoadGroupTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | LOAD_COMBINATION: ()
        | LOAD_COMBINATION_GROUP: ()
        | LOAD_CASE: ()
        | LOAD_GROUP: ()
 ;
syntax IfcLogicalOperatorEnum
        = LOGICALOR: ()
        | LOGICALAND: ()
 ;
syntax IfcMemberTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | STUD: ()
        | STRUT: ()
        | STRINGER: ()
        | RAFTER: ()
        | PURLIN: ()
        | POST: ()
        | PLATE: ()
        | MULLION: ()
        | MEMBER: ()
        | COLLAR: ()
        | CHORD: ()
        | BRACE: ()
 ;
syntax IfcMotorConnectionTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | DIRECTDRIVE: ()
        | COUPLING: ()
        | BELTDRIVE: ()
 ;
syntax IfcNullStyle
        = 
        NULL: ()
 ;
syntax IfcObjectTypeEnum
        = NOTDEFINED: ()
        | PROJECT: ()
        | GROUP: ()
        | ACTOR: ()
        | RESOURCE: ()
        | CONTROL: ()
        | PROCESS: ()
        | PRODUCT: ()
 ;
syntax IfcObjectiveEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TRIGGERCONDITION: ()
        | SPECIFICATION: ()
        | REQUIREMENT: ()
        | HEALTHANDSAFETY: ()
        | DESIGNINTENT: ()
        | CODECOMPLIANCE: ()
 ;
syntax IfcOccupantTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TENANT: ()
        | OWNER: ()
        | LETTINGAGENT: ()
        | LESSOR: ()
        | LESSEE: ()
        | ASSIGNOR: ()
        | ASSIGNEE: ()
 ;
syntax IfcOutletTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | POWEROUTLET: ()
        | COMMUNICATIONSOUTLET: ()
        | AUDIOVISUALOUTLET: ()
 ;
syntax IfcPermeableCoveringOperationEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SCREEN: ()
        | LOUVER: ()
        | GRILL: ()
 ;
syntax IfcPhysicalOrVirtualEnum
        = NOTDEFINED: ()
        | VIRTUAL: ()
        | PHYSICAL: ()
 ;
syntax IfcPileConstructionEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PREFAB_STEEL: ()
        | PRECAST_CONCRETE: ()
        | COMPOSITE: ()
        | CAST_IN_PLACE: ()
 ;
syntax IfcPileTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SUPPORT: ()
        | FRICTION: ()
        | COHESION: ()
 ;
syntax IfcPipeFittingTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TRANSITION: ()
        | OBSTRUCTION: ()
        | JUNCTION: ()
        | EXIT: ()
        | ENTRY: ()
        | CONNECTOR: ()
        | BEND: ()
 ;
syntax IfcPipeSegmentTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SPOOL: ()
        | GUTTER: ()
        | RIGIDSEGMENT: ()
        | FLEXIBLESEGMENT: ()
 ;
syntax IfcPlateTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SHEET: ()
        | CURTAIN_PANEL: ()
 ;
syntax IfcProcedureTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | STARTUP: ()
        | SHUTDOWN: ()
        | DIAGNOSTIC: ()
        | CALIBRATION: ()
        | ADVICE_WARNING: ()
        | ADVICE_NOTE: ()
        | ADVICE_CAUTION: ()
 ;
syntax IfcProfileTypeEnum
        = AREA: ()
        | CURVE: ()
 ;
syntax IfcProjectOrderRecordTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WORK: ()
        | PURCHASE: ()
        | MOVE: ()
        | MAINTENANCE: ()
        | CHANGE: ()
 ;
syntax IfcProjectOrderTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WORKORDER: ()
        | PURCHASEORDER: ()
        | MOVEORDER: ()
        | MAINTENANCEWORKORDER: ()
        | CHANGEORDER: ()
 ;
syntax IfcProjectedOrTrueLengthEnum
        = TRUE_LENGTH: ()
        | PROJECTED_LENGTH: ()
 ;
syntax IfcPropertySourceEnum
        = NOTKNOWN: ()
        | USERDEFINED: ()
        | MEASURED: ()
        | COMMISSIONING: ()
        | ASBUILT: ()
        | SIMULATED: ()
        | DESIGNMINIMUM: ()
        | DESIGNMAXIMUM: ()
        | DESIGN: ()
 ;
syntax IfcProtectiveDeviceTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | VARISTOR: ()
        | RESIDUALCURRENTSWITCH: ()
        | RESIDUALCURRENTCIRCUITBREAKER: ()
        | EARTHFAILUREDEVICE: ()
        | CIRCUITBREAKER: ()
        | FUSEDISCONNECTOR: ()
 ;
syntax IfcPumpTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | VERTICALTURBINE: ()
        | VERTICALINLINE: ()
        | SPLITCASE: ()
        | ENDSUCTION: ()
        | CIRCULATOR: ()
 ;
syntax IfcRailingTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | BALUSTRADE: ()
        | GUARDRAIL: ()
        | HANDRAIL: ()
 ;
syntax IfcRampFlightTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SPIRAL: ()
        | STRAIGHT: ()
 ;
syntax IfcRampTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SPIRAL_RAMP: ()
        | HALF_TURN_RAMP: ()
        | TWO_QUARTER_TURN_RAMP: ()
        | QUARTER_TURN_RAMP: ()
        | TWO_STRAIGHT_RUN_RAMP: ()
        | STRAIGHT_RUN_RAMP: ()
 ;
syntax IfcReflectanceMethodEnum
        = NOTDEFINED: ()
        | STRAUSS: ()
        | PLASTIC: ()
        | PHONG: ()
        | MIRROR: ()
        | METAL: ()
        | MATT: ()
        | GLASS: ()
        | FLAT: ()
        | BLINN: ()
 ;
syntax IfcReinforcingBarRoleEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | RING: ()
        | EDGE: ()
        | PUNCHING: ()
        | STUD: ()
        | LIGATURE: ()
        | SHEAR: ()
        | MAIN: ()
 ;
syntax IfcReinforcingBarSurfaceEnum
        = TEXTURED: ()
        | PLAIN: ()
 ;
syntax IfcResourceConsumptionEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | NOTOCCUPIED: ()
        | PARTIALLYOCCUPIED: ()
        | OCCUPIED: ()
        | NOTCONSUMED: ()
        | PARTIALLYCONSUMED: ()
        | CONSUMED: ()
 ;
syntax IfcRibPlateDirectionEnum
        = DIRECTION_Y: ()
        | DIRECTION_X: ()
 ;
syntax IfcRoleEnum
        = USERDEFINED: ()
        | RESELLER: ()
        | FIELDCONSTRUCTIONMANAGER: ()
        | CONSTRUCTIONMANAGER: ()
        | CONSULTANT: ()
        | OWNER: ()
        | ENGINEER: ()
        | COMISSIONINGENGINEER: ()
        | CIVILENGINEER: ()
        | FACILITIESMANAGER: ()
        | PROJECTMANAGER: ()
        | ELECTRICALENGINEER: ()
        | MECHANICALENGINEER: ()
        | BUILDINGOPERATOR: ()
        | BUILDINGOWNER: ()
        | CLIENT: ()
        | COSTENGINEER: ()
        | STRUCTURALENGINEER: ()
        | ARCHITECT: ()
        | SUBCONTRACTOR: ()
        | CONTRACTOR: ()
        | MANUFACTURER: ()
        | SUPPLIER: ()
 ;
syntax IfcRoofTypeEnum
        = NOTDEFINED: ()
        | FREEFORM: ()
        | DOME_ROOF: ()
        | PAVILION_ROOF: ()
        | BUTTERFLY_ROOF: ()
        | RAINBOW_ROOF: ()
        | BARREL_ROOF: ()
        | MANSARD_ROOF: ()
        | GAMBREL_ROOF: ()
        | HIPPED_GABLE_ROOF: ()
        | HIP_ROOF: ()
        | GABLE_ROOF: ()
        | SHED_ROOF: ()
        | FLAT_ROOF: ()
 ;
syntax IfcSIPrefix
        = ATTO: ()
        | FEMTO: ()
        | PICO: ()
        | NANO: ()
        | MICRO: ()
        | MILLI: ()
        | CENTI: ()
        | DECI: ()
        | DECA: ()
        | HECTO: ()
        | KILO: ()
        | MEGA: ()
        | GIGA: ()
        | TERA: ()
        | PETA: ()
        | EXA: ()
 ;
syntax IfcSIUnitName
        = WEBER: ()
        | WATT: ()
        | VOLT: ()
        | TESLA: ()
        | STERADIAN: ()
        | SQUARE_METRE: ()
        | SIEVERT: ()
        | SIEMENS: ()
        | SECOND: ()
        | RADIAN: ()
        | PASCAL: ()
        | OHM: ()
        | NEWTON: ()
        | MOLE: ()
        | METRE: ()
        | LUX: ()
        | LUMEN: ()
        | KELVIN: ()
        | JOULE: ()
        | HERTZ: ()
        | HENRY: ()
        | GRAY: ()
        | GRAM: ()
        | FARAD: ()
        | DEGREE_CELSIUS: ()
        | CUBIC_METRE: ()
        | COULOMB: ()
        | CANDELA: ()
        | BECQUEREL: ()
        | AMPERE: ()
 ;
syntax IfcSanitaryTerminalTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WCSEAT: ()
        | WASHHANDBASIN: ()
        | URINAL: ()
        | TOILETPAN: ()
        | SANITARYFOUNTAIN: ()
        | SINK: ()
        | SHOWER: ()
        | CISTERN: ()
        | BIDET: ()
        | BATH: ()
 ;
syntax IfcSectionTypeEnum
        = TAPERED: ()
        | UNIFORM: ()
 ;
syntax IfcSensorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TEMPERATURESENSOR: ()
        | SOUNDSENSOR: ()
        | SMOKESENSOR: ()
        | PRESSURESENSOR: ()
        | MOVEMENTSENSOR: ()
        | MOISTURESENSOR: ()
        | LIGHTSENSOR: ()
        | HUMIDITYSENSOR: ()
        | HEATSENSOR: ()
        | GASSENSOR: ()
        | FLOWSENSOR: ()
        | FIRESENSOR: ()
        | CO2SENSOR: ()
 ;
syntax IfcSequenceEnum
        = NOTDEFINED: ()
        | FINISH_FINISH: ()
        | FINISH_START: ()
        | START_FINISH: ()
        | START_START: ()
 ;
syntax IfcServiceLifeFactorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | G_MAINTENANCELEVEL: ()
        | F_INUSECONDITIONS: ()
        | E_OUTDOORENVIRONMENT: ()
        | D_INDOORENVIRONMENT: ()
        | C_WORKEXECUTIONLEVEL: ()
        | B_DESIGNLEVEL: ()
        | A_QUALITYOFCOMPONENTS: ()
 ;
syntax IfcServiceLifeTypeEnum
        = REFERENCESERVICELIFE: ()
        | PESSIMISTICREFERENCESERVICELIFE: ()
        | OPTIMISTICREFERENCESERVICELIFE: ()
        | EXPECTEDSERVICELIFE: ()
        | ACTUALSERVICELIFE: ()
 ;
syntax IfcSlabTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | BASESLAB: ()
        | LANDING: ()
        | ROOF: ()
        | FLOOR: ()
 ;
syntax IfcSoundScaleEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | NR: ()
        | NC: ()
        | DBC: ()
        | DBB: ()
        | DBA: ()
 ;
syntax IfcSpaceHeaterTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | UNITHEATER: ()
        | FINNEDTUBEUNIT: ()
        | BASEBOARDHEATER: ()
        | CONVECTOR: ()
        | TUBULARRADIATOR: ()
        | PANELRADIATOR: ()
        | SECTIONALRADIATOR: ()
 ;
syntax IfcSpaceTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
 ;
syntax IfcStackTerminalTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | RAINWATERHOPPER: ()
        | COWL: ()
        | BIRDCAGE: ()
 ;
syntax IfcStairFlightTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | FREEFORM: ()
        | CURVED: ()
        | SPIRAL: ()
        | WINDER: ()
        | STRAIGHT: ()
 ;
syntax IfcStairTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TWO_CURVED_RUN_STAIR: ()
        | CURVED_RUN_STAIR: ()
        | DOUBLE_RETURN_STAIR: ()
        | SPIRAL_STAIR: ()
        | THREE_QUARTER_TURN_STAIR: ()
        | THREE_QUARTER_WINDING_STAIR: ()
        | TWO_QUARTER_TURN_STAIR: ()
        | TWO_QUARTER_WINDING_STAIR: ()
        | HALF_TURN_STAIR: ()
        | HALF_WINDING_STAIR: ()
        | QUARTER_TURN_STAIR: ()
        | QUARTER_WINDING_STAIR: ()
        | TWO_STRAIGHT_RUN_STAIR: ()
        | STRAIGHT_RUN_STAIR: ()
 ;
syntax IfcStateEnum
        = READONLYLOCKED: ()
        | READWRITELOCKED: ()
        | LOCKED: ()
        | READONLY: ()
        | READWRITE: ()
 ;
syntax IfcStructuralCurveTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | COMPRESSION_MEMBER: ()
        | TENSION_MEMBER: ()
        | CABLE: ()
        | PIN_JOINED_MEMBER: ()
        | RIGID_JOINED_MEMBER: ()
 ;
syntax IfcStructuralSurfaceTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SHELL: ()
        | MEMBRANE_ELEMENT: ()
        | BENDING_ELEMENT: ()
 ;
syntax IfcSurfaceSide
        = BOTH: ()
        | NEGATIVE: ()
        | POSITIVE: ()
 ;
syntax IfcSurfaceTextureEnum
        = NOTDEFINED: ()
        | TRANSPARENCYMAP: ()
        | TEXTURE: ()
        | SPECULAR: ()
        | SHININESS: ()
        | SELFILLUMINATION: ()
        | REFLECTION: ()
        | OPACITY: ()
        | BUMP: ()
 ;
syntax IfcSwitchingDeviceTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TOGGLESWITCH: ()
        | SWITCHDISCONNECTOR: ()
        | STARTER: ()
        | EMERGENCYSTOP: ()
        | CONTACTOR: ()
 ;
syntax IfcTankTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PRESSUREVESSEL: ()
        | EXPANSION: ()
        | SECTIONAL: ()
        | PREFORMED: ()
 ;
syntax IfcTendonTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | COATED: ()
        | BAR: ()
        | WIRE: ()
        | STRAND: ()
 ;
syntax IfcTextPath
        = DOWN: ()
        | UP: ()
        | RIGHT: ()
        | LEFT: ()
 ;
syntax IfcThermalLoadSourceEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | INFILTRATION: ()
        | RELATIVEHUMIDITY: ()
        | DRYBULBTEMPERATURE: ()
        | AIREXCHANGERATE: ()
        | EXHAUSTAIR: ()
        | RECIRCULATEDAIR: ()
        | VENTILATIONOUTSIDEAIR: ()
        | VENTILATIONINDOORAIR: ()
        | EQUIPMENT: ()
        | LIGHTING: ()
        | PEOPLE: ()
 ;
syntax IfcThermalLoadTypeEnum
        = NOTDEFINED: ()
        | RADIANT: ()
        | LATENT: ()
        | SENSIBLE: ()
 ;
syntax IfcTimeSeriesDataTypeEnum
        = NOTDEFINED: ()
        | PIECEWISECONTINUOUS: ()
        | PIECEWISECONSTANT: ()
        | PIECEWISEBINARY: ()
        | DISCRETEBINARY: ()
        | DISCRETE: ()
        | CONTINUOUS: ()
 ;
syntax IfcTimeSeriesScheduleTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | DAILY: ()
        | WEEKLY: ()
        | MONTHLY: ()
        | ANNUAL: ()
 ;
syntax IfcTransformerTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | VOLTAGE: ()
        | FREQUENCY: ()
        | CURRENT: ()
 ;
syntax IfcTransitionCode
        = CONTSAMEGRADIENTSAMECURVATURE: ()
        | CONTSAMEGRADIENT: ()
        | CONTINUOUS: ()
        | DISCONTINUOUS: ()
 ;
syntax IfcTransportElementTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | MOVINGWALKWAY: ()
        | ESCALATOR: ()
        | ELEVATOR: ()
 ;
syntax IfcTrimmingPreference
        = UNSPECIFIED: ()
        | PARAMETER: ()
        | CARTESIAN: ()
 ;
syntax IfcTubeBundleTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | FINNED: ()
 ;
syntax IfcUnitEnum
        = USERDEFINED: ()
        | VOLUMEUNIT: ()
        | TIMEUNIT: ()
        | THERMODYNAMICTEMPERATUREUNIT: ()
        | SOLIDANGLEUNIT: ()
        | RADIOACTIVITYUNIT: ()
        | PRESSUREUNIT: ()
        | POWERUNIT: ()
        | PLANEANGLEUNIT: ()
        | MASSUNIT: ()
        | MAGNETICFLUXUNIT: ()
        | MAGNETICFLUXDENSITYUNIT: ()
        | LUMINOUSINTENSITYUNIT: ()
        | LUMINOUSFLUXUNIT: ()
        | LENGTHUNIT: ()
        | INDUCTANCEUNIT: ()
        | ILLUMINANCEUNIT: ()
        | FREQUENCYUNIT: ()
        | FORCEUNIT: ()
        | ENERGYUNIT: ()
        | ELECTRICVOLTAGEUNIT: ()
        | ELECTRICRESISTANCEUNIT: ()
        | ELECTRICCURRENTUNIT: ()
        | ELECTRICCONDUCTANCEUNIT: ()
        | ELECTRICCHARGEUNIT: ()
        | ELECTRICCAPACITANCEUNIT: ()
        | DOSEEQUIVALENTUNIT: ()
        | AREAUNIT: ()
        | AMOUNTOFSUBSTANCEUNIT: ()
        | ABSORBEDDOSEUNIT: ()
 ;
syntax IfcUnitaryEquipmentTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | ROOFTOPUNIT: ()
        | SPLITSYSTEM: ()
        | AIRCONDITIONINGUNIT: ()
        | AIRHANDLER: ()
 ;
syntax IfcValveTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | STOPCOCK: ()
        | STEAMTRAP: ()
        | SAFETYCUTOFF: ()
        | REGULATING: ()
        | PRESSURERELIEF: ()
        | PRESSUREREDUCING: ()
        | MIXING: ()
        | ISOLATING: ()
        | GASTAP: ()
        | GASCOCK: ()
        | FLUSHING: ()
        | FAUCET: ()
        | DOUBLEREGULATING: ()
        | DOUBLECHECK: ()
        | DRAWOFFCOCK: ()
        | DIVERTING: ()
        | COMMISSIONING: ()
        | CHECK: ()
        | CHANGEOVER: ()
        | ANTIVACUUM: ()
        | AIRRELEASE: ()
 ;
syntax IfcVibrationIsolatorTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | SPRING: ()
        | COMPRESSION: ()
 ;
syntax IfcWallTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PLUMBINGWALL: ()
        | ELEMENTEDWALL: ()
        | SHEAR: ()
        | POLYGONAL: ()
        | STANDARD: ()
 ;
syntax IfcWasteTerminalTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | WASTETRAP: ()
        | WASTEDISPOSALUNIT: ()
        | ROOFDRAIN: ()
        | PETROLINTERCEPTOR: ()
        | OILINTERCEPTOR: ()
        | GREASEINTERCEPTOR: ()
        | GULLYTRAP: ()
        | GULLYSUMP: ()
        | FLOORWASTE: ()
        | FLOORTRAP: ()
 ;
syntax IfcWindowPanelOperationEnum
        = NOTDEFINED: ()
        | OTHEROPERATION: ()
        | FIXEDCASEMENT: ()
        | REMOVABLECASEMENT: ()
        | SLIDINGVERTICAL: ()
        | SLIDINGHORIZONTAL: ()
        | PIVOTVERTICAL: ()
        | PIVOTHORIZONTAL: ()
        | BOTTOMHUNG: ()
        | TOPHUNG: ()
        | TILTANDTURNLEFTHAND: ()
        | TILTANDTURNRIGHTHAND: ()
        | SIDEHUNGLEFTHAND: ()
        | SIDEHUNGRIGHTHAND: ()
 ;
syntax IfcWindowPanelPositionEnum
        = NOTDEFINED: ()
        | TOP: ()
        | BOTTOM: ()
        | RIGHT: ()
        | MIDDLE: ()
        | LEFT: ()
 ;
syntax IfcWindowStyleConstructionEnum
        = NOTDEFINED: ()
        | OTHER_CONSTRUCTION: ()
        | PLASTIC: ()
        | ALUMINIUM_WOOD: ()
        | WOOD: ()
        | STEEL: ()
        | HIGH_GRADE_STEEL: ()
        | ALUMINIUM: ()
 ;
syntax IfcWindowStyleOperationEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | TRIPLE_PANEL_HORIZONTAL: ()
        | TRIPLE_PANEL_RIGHT: ()
        | TRIPLE_PANEL_LEFT: ()
        | TRIPLE_PANEL_TOP: ()
        | TRIPLE_PANEL_BOTTOM: ()
        | TRIPLE_PANEL_VERTICAL: ()
        | DOUBLE_PANEL_HORIZONTAL: ()
        | DOUBLE_PANEL_VERTICAL: ()
        | SINGLE_PANEL: ()
 ;
syntax IfcWorkControlTypeEnum
        = NOTDEFINED: ()
        | USERDEFINED: ()
        | PLANNED: ()
        | BASELINE: ()
        | ACTUAL: ()
 ;
