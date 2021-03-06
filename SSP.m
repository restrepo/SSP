(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Input::Initialization:: *)
BeginPackage["SSP`"];

SSP`Dir=SetDirectory[DirectoryName[System`Private`FindFile[$Input]]]

ResetDirectory[]

SSP`OutputDir=ToFileName[{SSP`Dir,"Output"}]
SSP`InputDir=ToFileName[{SSP`Dir,"Input"}]
SSP`PackageDir=ToFileName[{SSP`Dir,"Package"}]


Off[CreateDirectory::ioerr];

Print["SSP - SARAH Scan and Plot 1.2.5"]
Print["by Florian Staub, 2017"]
Print[""]

Get[ToFileName[SSP`Dir,"DefaultSettings.m"]];

TimeStamp=ToString[Floor[AbsoluteTime[]]];
SSP`RunningDir=ToFileName[{SSP`OutputDir,TimeStamp}];

Block[{$Path={SSP`PackageDir}},
<< Scan`;
<<Plot`;
<<LesHouchesInterface`;

];

Start[file_]:=Block[{},
If[Head[file]=!=String,

Print[""];
Print["Name of input File must be a String!"];
Print["Evaluation aborted"];,

SSP`InputFile=ToFileName[{SSP`InputDir},file];


If[FileByteCount[SSP`InputFile]===$Failed,
Message["Input file does not exist!"];
AbortStart=True;,
Get[SSP`InputFile];
MakeParameterScans;
];


];


];



EndPackage[];
