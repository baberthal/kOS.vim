" Vim syntax file
" Language: kOS (kerboscript)
" Maintainer: J. Morgan Lieberthal (morgan@jmorgan.org)
" Original Author: Steven Mading (madings@gmail.com)
" Last Change: 20 July 2015


if exists("b:current_syntax")
    finish
endif

syn clear

syn case ignore

" Define keywords
syn keyword kosBooleanOperator NOT AND OR TRUE FALSE <> >= <= = < >

syn keyword kosVariableDeclaration SET TO DECLARE PARAMETER TOGGLE ON OFF UNSET

syn keyword kosBuiltInCommand PRINT CLEARSCREEN LOG COPY REMOVE RENAME VOLUME FILE DELETE EDIT RUN COMPILE LIST REBOOT SHUTDOWN SWITCH skipwhite

syn keyword kosInstructionKeyword STEP DO WAIT STAGE ADD BATCH DEPLOY ALL

syn keyword kosFlowControl BREAK IF ELSE LOCK UNLOCK WAIT WHEN THEN PRESERVE skipwhite

syn keyword kosLoop UNTIL FOR FROM

syn keyword kosCommandWord AT

syn keyword kosTODO contained TODO

syn keyword kosBuiltInVar ABORT AG1 AG2 AG3 AG4 AG5 AG6 AG7 AG8 AG9 AG10 BRAKES CHUTES GEAR LEGS LIGHTS PANELS RCS SAS CONFIG LOADDISTANCE WARP ALT APOAPSIS PERIAPSIS RADAR ANGULARVELOCITY COMMRANGE ENCOUNTER ETA TRANSITION INCOMMRANGE MISSIONTIME NEXTNODE OBT SHIP STAGE STATUS TIME VESSELNAME TARGET HEADING SESSIONTIME VERSION NAME FACING

syn keyword AtmosphereSuffix BODY EXISTS OXYGEN SCALE SEALEVELPRESSURE HEIGHT

syn keyword BodySuffix NAME DESCRIPTION MASS ALTITUDE ROTATIONPERIOD RADIUS MU ATM ANGULARVEL GEOPOSITIONOF ALTITUDEOF SOIRADIUS

syn keyword VesselAggregateResourceSuffix NAME AMOUNT CAPACITY PARTS

syn keyword VesselDockingPortSuffix ACQUIRERANGE ACQUIREFORCE ACQUIRETORQUE REENGAGEDDISTANCE DOCKEDSHIPNAME PORTFACING STATE UNDOCK TARGETABLE

syn keyword VesselElementSuffix UID NAME PARTS DOCKINGPORTS VESSEL RESOURCES
" TODO: maxthrustat(), availablethrustat(), ispat()

syn keyword VesselEngineSuffix ACTIVATE SHUTDOWN THRUSTLIMIT MAXTHRUST THRUST AVAILABLETHRUST FUELFLOW ISP VACUUMISP VISP SEALEVELISP SLISP FLAMEOUT IGNITION ALLOWRESTART ALLOWSHUTDOWN THROTTLELOCK

syn keyword GimbalSuffix RANGE RESPONSESPEED PITCHANGLE YAWANGLE ROLLANGLE LOCK

syn keyword ManeuverNodeSuffix DELTAV BURNVECTOR ETA PROGRADE RADIALOUT NORMAL ORBIT
" TODO: getmodule()

syn keyword PartSuffix NAME TITLE MASS DRYMASS WETMASS TAG CONTROLFROM STAGE UID ROTATION POSITION FACING RESOURCES TARGETABLE SHIP MODULES ALLMODULES PARENT HASPARENT HASPHYSICS CHILDREN
" TODO: getfield() setfield() doevent() doaction() hasfield() hasevent() hasaction()

syn keyword PartModuleSuffix NAME PART ALLFIELDS ALLFIELDNAMES ALLEVENTS ALLEVENTNAMES ALLACTIONS ALLACTIONNAMES

syn keyword SensorSuffix ACTIVE TYPE DISPLAY POWERCONSUMPTION TOGGLE

syn keyword ResourceSuffix NAME AMOUNT CAPACITY TOGGLEABLE ENABLED

syn keyword StageSuffix READY NUMBER RESOURCES
"
" TODO: maxthrustat() availablethrustat() partsnamed() partstitled()
" partstagged() partsdubbed() modulesnamed() partsingroup() modulesingroup()
syn keyword VesselSuffix CONTROL BEARING HEADING MAXTHRUST AVAILABLETHRUST FACING MASS WETMASS DRYMASS VERTICALSPEED SURFACESPEED AIRSPEED TERMVELOCITY SHIPNAME NAME STATUS TYPE ANGULARMOMENTUM ANGULARVEL SENSORS LOADED ISDEAD PATCHES ROOTPART PARTS DOCKINGPORTS ELEMENTS RESOURCES ALLPARTSTAGGED

syn keyword VesselSensorSuffix ACC PRES TEMP GRAV LIGHT

syn keyword WaypointSuffix NAME BODY GEOPOSITION POSITION ALTITUDE AGL NEARSURFACE GROUNDED INDEX CLUSTERED

syn keyword CoreSuffix PART VESSEL ELEMENT VERSION BOOTFILENAME CURRENTVOLUME
syn keyword kosStructure Orbit Orbitable OrbitableVelocity Body Atmosphere Vessel Control ManeuverNode Engine AggregateResource DockingPort Gimbal Stage Part PartModule Sensor VesselSensors

syn keyword OrbitSuffix NAME APOAPSIS PERIAPSIS BODY PERIOD INCLINATION ECCENTRICITY SEMIMAJORAXIS SEMIMINORAXIS LAN LONGITUDEOFASCENDINGNODE ARGUMENTOFPERIAPSIS TRUEANOMALY MEANANOMALYATEPOCH TRANSITION POSITION VELOCITY NEXTPATCH HASNEXTPATCH

syn keyword OrbitableSuffix NAME BODY HASBODY HASORBIT HASOBT OBT UP NORTH PROGRADE SRFPROGRADE RETROGRADE SRFRETROGRADE POSITION VELOCITY DISTANCE DIRECTION LATITUDE LONGITUDE ALTITUDE GEOPOSITION PATCHES APOAPSIS PERIAPSIS

syn keyword OrbitableVelocitySuffix ORBIT SURFACE

syn cluster kosBuildInSuffix contains=AtmosphereSuffix,BodySuffix,VesselAggregateResourceSuffix,VesselDockingPortSuffix,VesselElementSuffix,VesselEngineSuffix,GimbalSuffix,ManeuverNodeSuffix,PartSuffix,PartModuleSuffix,SensorSuffix,ResourceSuffix,StageSuffix,VesselSuffix,VesselSensorSuffix,WaypointSuffix,CoreSuffix,OrbitSuffix,OrbitableSuffix,OrbitableVelocitySuffix


let b:current_syntax = "kerboscript"
hi! def link kosVariableDeclaration Identifier
hi! def link kosBuiltInCommand      Constant
hi! def link kosInstructionKeyword  Constant
hi! def link kosFlowControl         Conditional
hi! def link kosLoop                Repeat
hi! def link kosCommandWord         Statement
hi! def link kosTODO                Todo
hi! def link kosBuiltInVar          Constant
hi! def link kosBuildInSuffix       Keyword
hi! def link kosStructure           Structure

" vim: set ts=8 sw=4 tw=78 ft=vim et :
