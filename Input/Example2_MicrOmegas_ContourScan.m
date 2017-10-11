(* ::Package:: *)

(* Several scans can be done in a row. Give each one a name... *)
 RunScans = {A0,TANB,MTOP}; 

(* Load the file which defines the properties of the different tools *)
LoadSettings="DefaultSettings.m.MSSM";



(* ---------------------------------------------------------------------------------------- *)
(* Define the parameter ranges and all other information for the LesHouches input file *)
(* ---------------------------------------------------------------------------------------- *)

(* Names of all blocks *)

DEFINITION[a_][Blocks]={MODSEL,SMINPUTS,MINPAR,SPhenoInput};


(* Include MicrOmegas and define the dark matter candidate *)

DEFINITION[TANBm0][IncludeMicrOmegas]=True;
DEFINITION[TANBm0][DarkMatterCandidate]=1000022;




DEFINITION[a_][MakeContourScan]=True;

(* Last option defines, if the value (PlotLog->False) or the log (PlotLog->True) of the value should be plotted *)
DEFINITION[A0][CountourScan]={{DARKMATTER,1},{CONTOURSCANPARAMETER[1],0,1500},{CONTOURSCANPARAMETER[2],0,1500},CStyle1,"DM_A0.eps",PlotLog->False};
DEFINITION[TANB][CountourScan]={{DARKMATTER,1},{CONTOURSCANPARAMETER[1],0,1500},{CONTOURSCANPARAMETER[2],0,1500},CStyle2,"DM_TanB.eps",PlotLog->False};
DEFINITION[MTOP][CountourScan]={{DARKMATTER,1},{CONTOURSCANPARAMETER[1],0,1500},{CONTOURSCANPARAMETER[2],0,1500},CStyle3,"DM_mTop.eps",PlotLog->True};
CStyle1={PlotPoints->30, PrecisionGoal->"Quality", PlotRange->{0.005,1.5},Contours->{0.01,0.1,1}};
CStyle2={PlotPoints->30, PrecisionGoal->"Quality", PlotRange->{0.005,1.5},Contours->{0.01,0.1,1}};
CStyle3={PlotPoints->30, PrecisionGoal->"Quality", Contours->{-2,-1,0}};


DEFINITION[a_][MODSEL]={
  {{1},{Value->1}},
  {{6},{Value->1}}
};

DEFINITION[A0][SMINPUTS]={
  {{2},{Value->1.166390*10^-5}},
  {{3},{Value->0.1172}},
  {{4},{Value->91.18760}},
  {{5},{Value->4.2}},
  {{6},{Value->172.9}},
  {{7},{Value->1.777}}
};

DEFINITION[TANB][SMINPUTS]=DEFINITION[A0][SMINPUTS];

DEFINITION[MTOP][SMINPUTS]={
  {{2},{Value->1.166390*10^-5}},
  {{3},{Value->0.1172}},
  {{4},{Value->91.18760}},
  {{5},{Value->4.2}},
  {{6},{Min->170,Max->175,Steps->2,Distribution->LINEAR}},
  {{7},{Value->1.777}}
};

DEFINITION[A0][MINPAR]={
  {{1}, {Value->CONTOURSCANPARAMETER[1]}},
  {{2}, {Value->CONTOURSCANPARAMETER[2]}},
  {{3}, {Value->10}},
  {{4}, {Value->1}},
  {{5}, {Min->1,Max->100,Steps->2,Distribution->LOG}}
  };

DEFINITION[TANB][MINPAR]={
  {{1}, {Value->CONTOURSCANPARAMETER[1]}},
  {{2}, {Value->CONTOURSCANPARAMETER[2]}},
  {{3}, {Min->5,Max->10,Steps->2,Distribution->LINEAR}},
  {{4}, {Value->1}},
  {{5}, {Value->0}}
  };


DEFINITION[MTOP][MINPAR]={
  {{1}, {Value->CONTOURSCANPARAMETER[1]}},
  {{2}, {Value->CONTOURSCANPARAMETER[2]}},
  {{3}, {Value->10}},
  {{4}, {Value->1}},
  {{5}, {Value->0}}
  };



DEFINITION[a_][SPhenoInput]={
  {{1},{Value->-1}},
  {{2},{Value->1}},
  {{11},{Value->0}},
  {{12},{Value->12}},
  {{21},{Value->0}}
};


