//Maya ASCII 2015 scene
//Name: water.ma
//Last modified: Tue, Oct 27, 2015 09:07:41 PM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
requires -nodeType "Unfold3DUnfold" -nodeType "Unfold3DOptimize" "Unfold3D" "Maya2015SP1.r1568.release.Apr  3 2014|15:09:24";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode fosterParent -n "_UNKNOWN_REF_NODE_fosterParent1";
createNode transform -s -n "persp" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.9943252676097352 -7.9156479445936254 72.355943867261516 ;
	setAttr ".r" -type "double3" 720.86164733254509 6.999999999759515 2.5034688218609212e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 73.033027852282672;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 23.525179856115109;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 33.309389712639458;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 -3.4469645785266603 -1.2467744220202832 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 27.584018190554964;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".t" -type "double3" 0 0.0205092399215836 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 2.9182828086736841 2.4214254597601985 2.9182828086736841 ;
createNode transform -n "transform2" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".t" -type "double3" 0 -5.4496402877697863 0 ;
	setAttr ".s" -type "double3" 3.4921594353509038 3.4921594353509038 2.7336081667971284 ;
createNode transform -n "transform1" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".t" -type "double3" -0.068880311524379678 -3.0616266158090975 3.6258926213137204 ;
	setAttr ".r" -type "double3" 13.34205698299615 0 0 ;
	setAttr ".s" -type "double3" 6.3645282336878388 6.3189956570777825 0.46326838163577788 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.40941435098648071 0.42198222875595093 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4" -p "_UNKNOWN_REF_NODE_fosterParent1";
createNode transform -n "transform4" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCube4Shape" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.2083333358168602 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5" -p "_UNKNOWN_REF_NODE_fosterParent1";
	setAttr ".t" -type "double3" -6.764163075676727 -3.95791336271897 0 ;
	setAttr ".s" -type "double3" 1.8719249456168283 0.83059541965740269 0.83059541965740269 ;
createNode transform -n "transform3" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6" -p "_UNKNOWN_REF_NODE_fosterParent1";
createNode mesh -n "pCube6Shape" -p "pCube6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.60620248317718506 0.61412549018859863 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -0.022405175724317772 2.6120583798008763 0.70372531866017152 ;
	setAttr ".s" -type "double3" 0.33542763367804213 0.65232691752444272 0.65232691752444272 ;
createNode mesh -n "pCubeShape5" -p "pCube7";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49325677275191993 0.48732250335160643 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane2";
	setAttr ".t" -type "double3" 0.027836926801052545 3.6253714229125684 0.81635932975797809 ;
	setAttr ".r" -type "double3" -90 0 0 ;
	setAttr ".s" -type "double3" 0.70441105589432507 1 1 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75443881750106812 0.4639139324426651 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 0.21875001
		 1 0.21875001 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[0]" -type "float3" 0.3595354 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.35404569 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.35468072 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.35314769 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.17732966 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.73820305 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.44430339 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.11277489 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.2784155 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.73860455 0 0 ;
	setAttr ".pt[11]" -type "float3" 0.45252305 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.12588425 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.0005084009 0 0 ;
	setAttr -s 14 ".vt[0:13]"  -1.26734972 0 0.27723289 1.2673496 0 0.27723289
		 -1.26734972 0 -0.27723289 1.2673496 0 -0.27723289 -1.24398553 -0.56118876 1.58391023
		 -1.098516464 -0.93827707 3.066465616 -0.95050049 -0.93102545 4.30263996 -0.80248451 -0.55040127 5.33300686
		 -0.65446854 0.01840204 6.2472496 0.9798677 -0.46163803 1.72660279 0.83439863 -0.82250208 3.096417665
		 0.68638265 -0.82975382 4.30263901 0.53836668 -0.47242564 5.30469418 0.39035061 0.073550165 6.21352577;
	setAttr -s 19 ".ed[0:18]"  0 1 1 0 2 0 1 3 0 2 3 0 0 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 1 9 0 9 10 0 10 11 0 11 12 0 12 13 0 4 9 1 5 10 1 6 11 1 7 12 1 8 13 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -1 4 14 -10
		mu 0 4 4 5 6 7
		f 4 -15 5 15 -11
		mu 0 4 8 9 10 11
		f 4 -16 6 16 -12
		mu 0 4 12 13 14 15
		f 4 -17 7 17 -13
		mu 0 4 16 17 18 19
		f 4 -18 8 18 -14
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane3";
	setAttr ".t" -type "double3" -0.78602696046880971 3.425854310263122 0.85695952355921823 ;
	setAttr ".r" -type "double3" -89.999999999999972 -3.1805546814635176e-015 36.016587463694997 ;
	setAttr ".s" -type "double3" 0.43970422778952906 0.62421539825390415 0.62421539825390415 ;
createNode mesh -n "pPlaneShape3" -p "pPlane3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.66683673858642578 0.68540705740451813 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pPlane3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 0.21875001
		 1 0.21875001 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[0]" -type "float3" 0.3595354 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.35404569 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.35468072 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.35314769 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.17732966 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.73820305 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.44430339 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.11277489 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.2784155 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.73860455 0 0 ;
	setAttr ".pt[11]" -type "float3" 0.45252305 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.12588425 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.0005084009 0 0 ;
	setAttr -s 14 ".vt[0:13]"  -1.26734972 0 0.27723289 1.2673496 0 0.27723289
		 -1.26734972 0 -0.27723289 1.2673496 0 -0.27723289 -1.24398553 -0.56118876 1.58391023
		 -1.098516464 -0.93827707 3.066465616 -0.95050049 -0.93102545 4.30263996 -0.80248451 -0.55040127 5.33300686
		 -0.65446854 0.01840204 6.2472496 0.9798677 -0.46163803 1.72660279 0.83439863 -0.82250208 3.096417665
		 0.68638265 -0.82975382 4.30263901 0.53836668 -0.47242564 5.30469418 0.39035061 0.073550165 6.21352577;
	setAttr -s 19 ".ed[0:18]"  0 1 1 0 2 0 1 3 0 2 3 0 0 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 1 9 0 9 10 0 10 11 0 11 12 0 12 13 0 4 9 1 5 10 1 6 11 1 7 12 1 8 13 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -1 4 14 -10
		mu 0 4 4 5 6 7
		f 4 -15 5 15 -11
		mu 0 4 8 9 10 11
		f 4 -16 6 16 -12
		mu 0 4 12 13 14 15
		f 4 -17 7 17 -13
		mu 0 4 16 17 18 19
		f 4 -18 8 18 -14
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape2" -p "pPlane3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 0.21875001
		 1 0.21875001 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -0.90781432 0 0.27723289 0.91330391 0 0.27723289
		 -0.912669 0 -0.27723289 0.91420192 0 -0.27723289 -1.42131519 -0.56118876 1.58391023
		 -1.83671951 -0.93827707 3.066465616 -1.39480388 -0.93102545 4.30263996 -0.91525942 -0.55040127 5.33300686
		 -0.65446854 0.01840204 6.2472496 1.25828314 -0.46163803 1.72660279 1.57300317 -0.82250208 3.096417665
		 1.13890576 -0.82975382 4.30263901 0.66425091 -0.47242564 5.30469418 0.39085901 0.073550165 6.21352577;
	setAttr -s 19 ".ed[0:18]"  0 1 1 0 2 0 1 3 0 2 3 0 0 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 1 9 0 9 10 0 10 11 0 11 12 0 12 13 0 4 9 1 5 10 1 6 11 1 7 12 1 8 13 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1
		f 4 9 -15 -5 0
		mu 0 4 4 7 6 5
		f 4 10 -16 -6 14
		mu 0 4 8 11 10 9
		f 4 11 -17 -7 15
		mu 0 4 12 15 14 13
		f 4 12 -18 -8 16
		mu 0 4 16 19 18 17
		f 4 13 -19 -9 17
		mu 0 4 20 23 22 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane4";
	setAttr ".t" -type "double3" 0.61348457935000611 3.4258543102631247 0.85695952355922145 ;
	setAttr ".r" -type "double3" -89.999999999999972 3.180554681463516e-015 -40.239969906865753 ;
	setAttr ".s" -type "double3" 0.43970422778952906 0.62421539825390415 0.62421539825390415 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.76723432540893555 0.25988262891769409 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape1" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 0.21875001
		 1 0.21875001 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[0]" -type "float3" 0.3595354 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.35404569 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.35468072 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.35314769 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.17732966 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.73820305 0 0 ;
	setAttr ".pt[6]" -type "float3" -0.44430339 0 0 ;
	setAttr ".pt[7]" -type "float3" -0.11277489 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.2784155 0 0 ;
	setAttr ".pt[10]" -type "float3" 0.73860455 0 0 ;
	setAttr ".pt[11]" -type "float3" 0.45252305 0 0 ;
	setAttr ".pt[12]" -type "float3" 0.12588425 0 0 ;
	setAttr ".pt[13]" -type "float3" 0.0005084009 0 0 ;
	setAttr -s 14 ".vt[0:13]"  -1.26734972 0 0.27723289 1.2673496 0 0.27723289
		 -1.26734972 0 -0.27723289 1.2673496 0 -0.27723289 -1.24398553 -0.56118876 1.58391023
		 -1.098516464 -0.93827707 3.066465616 -0.95050049 -0.93102545 4.30263996 -0.80248451 -0.55040127 5.33300686
		 -0.65446854 0.01840204 6.2472496 0.9798677 -0.46163803 1.72660279 0.83439863 -0.82250208 3.096417665
		 0.68638265 -0.82975382 4.30263901 0.53836668 -0.47242564 5.30469418 0.39035061 0.073550165 6.21352577;
	setAttr -s 19 ".ed[0:18]"  0 1 1 0 2 0 1 3 0 2 3 0 0 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 1 9 0 9 10 0 10 11 0 11 12 0 12 13 0 4 9 1 5 10 1 6 11 1 7 12 1 8 13 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 -1 4 14 -10
		mu 0 4 4 5 6 7
		f 4 -15 5 15 -11
		mu 0 4 8 9 10 11
		f 4 -16 6 16 -12
		mu 0 4 12 13 14 15
		f 4 -17 7 17 -13
		mu 0 4 16 17 18 19
		f 4 -18 8 18 -14
		mu 0 4 20 21 22 23;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "polySurfaceShape3" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 24 ".uvst[0].uvsp[0:23]" -type "float2" 0 0 1 0 0 0.21875001
		 1 0.21875001 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 14 ".vt[0:13]"  -0.90781432 0 0.27723289 0.91330391 0 0.27723289
		 -0.912669 0 -0.27723289 0.91420192 0 -0.27723289 -1.42131519 -0.56118876 1.58391023
		 -1.83671951 -0.93827707 3.066465616 -1.39480388 -0.93102545 4.30263996 -0.91525942 -0.55040127 5.33300686
		 -0.65446854 0.01840204 6.2472496 1.25828314 -0.46163803 1.72660279 1.57300317 -0.82250208 3.096417665
		 1.13890576 -0.82975382 4.30263901 0.66425091 -0.47242564 5.30469418 0.39085901 0.073550165 6.21352577;
	setAttr -s 19 ".ed[0:18]"  0 1 1 0 2 0 1 3 0 2 3 0 0 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 1 9 0 9 10 0 10 11 0 11 12 0 12 13 0 4 9 1 5 10 1 6 11 1 7 12 1 8 13 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 1 3 -3 -1
		mu 0 4 0 2 3 1
		f 4 9 -15 -5 0
		mu 0 4 4 7 6 5
		f 4 10 -16 -6 14
		mu 0 4 8 11 10 9
		f 4 11 -17 -7 15
		mu 0 4 12 15 14 13
		f 4 12 -18 -8 16
		mu 0 4 16 19 18 17
		f 4 13 -19 -9 17
		mu 0 4 20 23 22 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 81 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "64";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "false";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.25 0.25 0.25 0.25";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "4";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.2";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
	setAttr ".stringOptions[45].name" -type "string" "environment lighting resolution";
	setAttr ".stringOptions[45].value" -type "string" "512";
	setAttr ".stringOptions[45].type" -type "string" "integer";
	setAttr ".stringOptions[46].name" -type "string" "environment lighting shader samples";
	setAttr ".stringOptions[46].value" -type "string" "2";
	setAttr ".stringOptions[46].type" -type "string" "integer";
	setAttr ".stringOptions[47].name" -type "string" "environment lighting scale";
	setAttr ".stringOptions[47].value" -type "string" "1 1 1";
	setAttr ".stringOptions[47].type" -type "string" "color";
	setAttr ".stringOptions[48].name" -type "string" "environment lighting caustic photons";
	setAttr ".stringOptions[48].value" -type "string" "0";
	setAttr ".stringOptions[48].type" -type "string" "integer";
	setAttr ".stringOptions[49].name" -type "string" "environment lighting global illum photons";
	setAttr ".stringOptions[49].value" -type "string" "0";
	setAttr ".stringOptions[49].type" -type "string" "integer";
	setAttr ".stringOptions[50].name" -type "string" "light importance sampling";
	setAttr ".stringOptions[50].value" -type "string" "all";
	setAttr ".stringOptions[50].type" -type "string" "string";
	setAttr ".stringOptions[51].name" -type "string" "light importance sampling quality";
	setAttr ".stringOptions[51].value" -type "string" "1.0";
	setAttr ".stringOptions[51].type" -type "string" "scalar";
	setAttr ".stringOptions[52].name" -type "string" "light importance sampling samples";
	setAttr ".stringOptions[52].value" -type "string" "4";
	setAttr ".stringOptions[52].type" -type "string" "integer";
	setAttr ".stringOptions[53].name" -type "string" "light importance sampling resolution";
	setAttr ".stringOptions[53].value" -type "string" "1.0";
	setAttr ".stringOptions[53].type" -type "string" "scalar";
	setAttr ".stringOptions[54].name" -type "string" "light importance sampling precomputed";
	setAttr ".stringOptions[54].value" -type "string" "false";
	setAttr ".stringOptions[54].type" -type "string" "boolean";
	setAttr ".stringOptions[55].name" -type "string" "mila quality";
	setAttr ".stringOptions[55].value" -type "string" "1.0";
	setAttr ".stringOptions[55].type" -type "string" "scalar";
	setAttr ".stringOptions[56].name" -type "string" "mila glossy quality";
	setAttr ".stringOptions[56].value" -type "string" "1.0";
	setAttr ".stringOptions[56].type" -type "string" "scalar";
	setAttr ".stringOptions[57].name" -type "string" "mila scatter quality";
	setAttr ".stringOptions[57].value" -type "string" "1.0";
	setAttr ".stringOptions[57].type" -type "string" "scalar";
	setAttr ".stringOptions[58].name" -type "string" "mila scatter scale";
	setAttr ".stringOptions[58].value" -type "string" "1.0";
	setAttr ".stringOptions[58].type" -type "string" "scalar";
	setAttr ".stringOptions[59].name" -type "string" "mila diffuse quality";
	setAttr ".stringOptions[59].value" -type "string" "1.0";
	setAttr ".stringOptions[59].type" -type "string" "scalar";
	setAttr ".stringOptions[60].name" -type "string" "mila diffuse detail";
	setAttr ".stringOptions[60].value" -type "string" "false";
	setAttr ".stringOptions[60].type" -type "string" "boolean";
	setAttr ".stringOptions[61].name" -type "string" "mila diffuse detail distance";
	setAttr ".stringOptions[61].value" -type "string" "10.0";
	setAttr ".stringOptions[61].type" -type "string" "scalar";
	setAttr ".stringOptions[62].name" -type "string" "mila use max distance inside";
	setAttr ".stringOptions[62].value" -type "string" "true";
	setAttr ".stringOptions[62].type" -type "string" "boolean";
	setAttr ".stringOptions[63].name" -type "string" "mila clamp output";
	setAttr ".stringOptions[63].value" -type "string" "false";
	setAttr ".stringOptions[63].type" -type "string" "boolean";
	setAttr ".stringOptions[64].name" -type "string" "mila clamp level";
	setAttr ".stringOptions[64].value" -type "string" "1.0";
	setAttr ".stringOptions[64].type" -type "string" "scalar";
	setAttr ".stringOptions[65].name" -type "string" "gi gpu";
	setAttr ".stringOptions[65].value" -type "string" "off";
	setAttr ".stringOptions[65].type" -type "string" "string";
	setAttr ".stringOptions[66].name" -type "string" "gi gpu rays";
	setAttr ".stringOptions[66].value" -type "string" "34";
	setAttr ".stringOptions[66].type" -type "string" "integer";
	setAttr ".stringOptions[67].name" -type "string" "gi gpu passes";
	setAttr ".stringOptions[67].value" -type "string" "4";
	setAttr ".stringOptions[67].type" -type "string" "integer";
	setAttr ".stringOptions[68].name" -type "string" "gi gpu presample density";
	setAttr ".stringOptions[68].value" -type "string" "1.0";
	setAttr ".stringOptions[68].type" -type "string" "scalar";
	setAttr ".stringOptions[69].name" -type "string" "gi gpu presample depth";
	setAttr ".stringOptions[69].value" -type "string" "2";
	setAttr ".stringOptions[69].type" -type "string" "integer";
	setAttr ".stringOptions[70].name" -type "string" "gi gpu filter";
	setAttr ".stringOptions[70].value" -type "string" "1.0";
	setAttr ".stringOptions[70].type" -type "string" "integer";
	setAttr ".stringOptions[71].name" -type "string" "gi gpu depth";
	setAttr ".stringOptions[71].value" -type "string" "3";
	setAttr ".stringOptions[71].type" -type "string" "integer";
	setAttr ".stringOptions[72].name" -type "string" "gi gpu devices";
	setAttr ".stringOptions[72].value" -type "string" "0";
	setAttr ".stringOptions[72].type" -type "string" "integer";
	setAttr ".stringOptions[73].name" -type "string" "shutter shape function";
	setAttr ".stringOptions[73].value" -type "string" "none";
	setAttr ".stringOptions[73].type" -type "string" "string";
	setAttr ".stringOptions[74].name" -type "string" "shutter full open";
	setAttr ".stringOptions[74].value" -type "string" "0.2";
	setAttr ".stringOptions[74].type" -type "string" "scalar";
	setAttr ".stringOptions[75].name" -type "string" "shutter full close";
	setAttr ".stringOptions[75].value" -type "string" "0.8";
	setAttr ".stringOptions[75].type" -type "string" "scalar";
	setAttr ".stringOptions[76].name" -type "string" "gi";
	setAttr ".stringOptions[76].value" -type "string" "off";
	setAttr ".stringOptions[76].type" -type "string" "boolean";
	setAttr ".stringOptions[77].name" -type "string" "gi rays";
	setAttr ".stringOptions[77].value" -type "string" "100";
	setAttr ".stringOptions[77].type" -type "string" "integer";
	setAttr ".stringOptions[78].name" -type "string" "gi depth";
	setAttr ".stringOptions[78].value" -type "string" "0";
	setAttr ".stringOptions[78].type" -type "string" "integer";
	setAttr ".stringOptions[79].name" -type "string" "gi freeze";
	setAttr ".stringOptions[79].value" -type "string" "off";
	setAttr ".stringOptions[79].type" -type "string" "boolean";
	setAttr ".stringOptions[80].name" -type "string" "gi filter";
	setAttr ".stringOptions[80].value" -type "string" "1.0";
	setAttr ".stringOptions[80].type" -type "string" "scalar";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 2.9182828086736841 0 0 0 0 5.3766445956786558e-016 2.4214254597601985 0
		 0 -2.9182828086736841 6.4798895331145891e-016 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 48 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.23248754 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.23248754 ;
	setAttr ".tk[4]" -type "float3" -0.063629821 -0.021209938 0.059725545 ;
	setAttr ".tk[5]" -type "float3" -0.021209938 -0.021209938 0.32179937 ;
	setAttr ".tk[6]" -type "float3" 0.021209938 -0.021209938 0.32179937 ;
	setAttr ".tk[7]" -type "float3" 0.063629821 -0.021209938 0.059725545 ;
	setAttr ".tk[8]" -type "float3" -0.063629821 0.021209938 0.059725545 ;
	setAttr ".tk[9]" -type "float3" -0.021209938 0.021209938 0.32179937 ;
	setAttr ".tk[10]" -type "float3" 0.021209938 0.021209938 0.32179937 ;
	setAttr ".tk[11]" -type "float3" 0.063629821 0.021209938 0.059725545 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.23248754 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.23248754 ;
	setAttr ".tk[16]" -type "float3" -0.1549917 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.088064648 0.23248756 0.088064648 ;
	setAttr ".tk[18]" -type "float3" 0.088064596 0.23248756 0.088064648 ;
	setAttr ".tk[19]" -type "float3" 0.1549917 0 0 ;
	setAttr ".tk[20]" -type "float3" -0.1549917 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.088064648 0.23248756 -0.088064596 ;
	setAttr ".tk[22]" -type "float3" 0.088064596 0.23248756 -0.088064596 ;
	setAttr ".tk[23]" -type "float3" 0.1549917 0 0 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.17112841 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.17112841 ;
	setAttr ".tk[28]" -type "float3" -0.063629821 0.021209938 -0.067534089 ;
	setAttr ".tk[29]" -type "float3" -0.021209938 0.021209938 -0.26044026 ;
	setAttr ".tk[30]" -type "float3" 0.021209938 0.021209938 -0.26044026 ;
	setAttr ".tk[31]" -type "float3" 0.063629821 0.021209938 -0.067534089 ;
	setAttr ".tk[32]" -type "float3" -0.063629821 -0.021209938 -0.067534089 ;
	setAttr ".tk[33]" -type "float3" -0.021209938 -0.021209938 -0.26044026 ;
	setAttr ".tk[34]" -type "float3" 0.021209938 -0.021209938 -0.26044026 ;
	setAttr ".tk[35]" -type "float3" 0.063629821 -0.021209938 -0.067534089 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.17112841 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.17112841 ;
	setAttr ".tk[40]" -type "float3" -0.1549917 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.088064648 -0.23248756 -0.088064581 ;
	setAttr ".tk[42]" -type "float3" 0.088064596 -0.23248756 -0.088064581 ;
	setAttr ".tk[43]" -type "float3" 0.1549917 0 0 ;
	setAttr ".tk[44]" -type "float3" -0.1549917 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.088064648 -0.23248756 0.088064678 ;
	setAttr ".tk[46]" -type "float3" 0.088064596 -0.23248756 0.088064678 ;
	setAttr ".tk[47]" -type "float3" 0.1549917 0 0 ;
	setAttr ".tk[48]" -type "float3" 0.2383457 -0.021209938 -0.02511421 ;
	setAttr ".tk[49]" -type "float3" 0.2383457 -0.021209938 0.017305668 ;
	setAttr ".tk[50]" -type "float3" 0.2383457 0.021209938 -0.02511421 ;
	setAttr ".tk[51]" -type "float3" 0.2383457 0.021209938 0.017305668 ;
	setAttr ".tk[52]" -type "float3" -0.2383457 -0.021209938 -0.02511421 ;
	setAttr ".tk[53]" -type "float3" -0.2383457 -0.021209938 0.017305668 ;
	setAttr ".tk[54]" -type "float3" -0.2383457 0.021209938 -0.02511421 ;
	setAttr ".tk[55]" -type "float3" -0.2383457 0.021209938 0.017305668 ;
createNode polyCube -n "polyCube2";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 3.4921594353509038 0
		 0 -5.4496402877697863 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -7.9973474 5.203723e-008 ;
	setAttr ".rs" 56227;
	setAttr ".lt" -type "double3" 1.1102230246251565e-015 -9.5147454362570059e-017 4.048790773643665 ;
	setAttr ".kft" no;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.047511828894621 -8.3112689703313958 -0.75249686290556528 ;
	setAttr ".cbx" -type "double3" 2.047511828894621 -7.6834258364312706 0.75249696698002666 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 40 ".tk";
	setAttr ".tk[1]" -type "float3" 0 -0.13905767 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.13905767 0 ;
	setAttr ".tk[4]" -type "float3" -0.077254258 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.077254258 0 0 ;
	setAttr ".tk[12]" -type "float3" 0.1854102 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.077254258 0.092705108 0 ;
	setAttr ".tk[14]" -type "float3" -0.077254258 0.092705108 0 ;
	setAttr ".tk[15]" -type "float3" -0.1854102 0 0 ;
	setAttr ".tk[16]" -type "float3" 0.15339845 0.15323365 0.048815165 ;
	setAttr ".tk[17]" -type "float3" 0.11119487 0.2730912 0.048815165 ;
	setAttr ".tk[18]" -type "float3" -0.11119487 0.2730912 0.048815165 ;
	setAttr ".tk[19]" -type "float3" -0.15339845 0.15323365 0.048815165 ;
	setAttr ".tk[20]" -type "float3" 0.15339845 0.15323365 -0.048815165 ;
	setAttr ".tk[21]" -type "float3" 0.11119487 0.2730912 -0.048815165 ;
	setAttr ".tk[22]" -type "float3" -0.11119487 0.2730912 -0.048815165 ;
	setAttr ".tk[23]" -type "float3" -0.15339845 0.15323365 -0.048815165 ;
	setAttr ".tk[24]" -type "float3" 0.1854102 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.077254258 0.092705108 0 ;
	setAttr ".tk[26]" -type "float3" -0.077254258 0.092705108 0 ;
	setAttr ".tk[27]" -type "float3" -0.1854102 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.077254258 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.077254258 0 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.13905767 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.13905767 0 ;
	setAttr ".tk[40]" -type "float3" -0.086316809 -0.13965741 -0.048815165 ;
	setAttr ".tk[41]" -type "float3" 0.011313541 -0.31944388 -0.048815165 ;
	setAttr ".tk[42]" -type "float3" -0.011313531 -0.31944388 -0.048815165 ;
	setAttr ".tk[43]" -type "float3" 0.086316809 -0.13965741 -0.048815165 ;
	setAttr ".tk[44]" -type "float3" -0.086316809 -0.13965741 0.048815165 ;
	setAttr ".tk[45]" -type "float3" 0.011313541 -0.31944388 0.048815165 ;
	setAttr ".tk[46]" -type "float3" -0.011313531 -0.31944388 0.048815165 ;
	setAttr ".tk[47]" -type "float3" 0.086316809 -0.13965741 0.048815165 ;
	setAttr ".tk[48]" -type "float3" 0.18619813 -0.042027049 -0.048815165 ;
	setAttr ".tk[49]" -type "float3" 0.18619813 -0.042027049 0.048815165 ;
	setAttr ".tk[50]" -type "float3" 0.086316809 0.055603296 -0.048815165 ;
	setAttr ".tk[51]" -type "float3" 0.086316809 0.055603296 0.048815165 ;
	setAttr ".tk[52]" -type "float3" -0.18619813 -0.042027049 -0.048815165 ;
	setAttr ".tk[53]" -type "float3" -0.18619813 -0.042027049 0.048815165 ;
	setAttr ".tk[54]" -type "float3" -0.086316809 0.055603296 -0.048815165 ;
	setAttr ".tk[55]" -type "float3" -0.086316809 0.055603296 0.048815165 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[43]" "f[52]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 3.4921594353509038 0
		 0 -5.4496402877697863 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -3.9209411 0 ;
	setAttr ".rs" 32947;
	setAttr ".lt" -type "double3" -6.6613381477509392e-016 2.2781162964685877e-016 4.6960276263371838 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.047511828894621 -4.6734379685111644 -0.75249696698002666 ;
	setAttr ".cbx" -type "double3" 2.047511828894621 -3.1684442427000334 0.75249696698002666 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[56:63]" -type "float3"  0.44486636 0 0 0.44486636
		 0.17420869 0 0.44486636 0.17420869 0 0.44486636 0 0 -0.44486636 0.17420869 0 -0.44486636
		 0 0 -0.44486636 0 0 -0.44486636 0.17420869 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n"
		+ "            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n"
		+ "        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n"
		+ "                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n"
		+ "            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n"
		+ "\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n"
		+ "                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n"
		+ "\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n"
		+ "                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n"
		+ "                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n"
		+ "                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n"
		+ "                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[5]" -type "float3" -0.12318417 -0.27561668 0.21825118 ;
	setAttr ".tk[6]" -type "float3" 0.12318414 -0.27561668 0.21825118 ;
	setAttr ".tk[9]" -type "float3" -0.12318417 -0.029248515 0.21825118 ;
	setAttr ".tk[10]" -type "float3" 0.12318414 -0.029248515 0.21825118 ;
	setAttr ".tk[29]" -type "float3" -0.12318417 -0.029248515 -0.21825118 ;
	setAttr ".tk[30]" -type "float3" 0.12318414 -0.029248515 -0.21825118 ;
	setAttr ".tk[33]" -type "float3" -0.12318417 -0.27561668 -0.21825118 ;
	setAttr ".tk[34]" -type "float3" 0.12318414 -0.27561668 -0.21825118 ;
	setAttr ".tk[56]" -type "float3" 0.11253002 -0.0014563744 0.11253001 ;
	setAttr ".tk[57]" -type "float3" -0.11253002 0.0014563744 0.11253001 ;
	setAttr ".tk[58]" -type "float3" -0.11253002 0.0014563744 -0.11253001 ;
	setAttr ".tk[59]" -type "float3" 0.11253002 -0.0014563744 -0.11253001 ;
	setAttr ".tk[60]" -type "float3" 0.11252998 0.0014563744 0.11253001 ;
	setAttr ".tk[61]" -type "float3" -0.11253002 -0.0014563744 0.11253001 ;
	setAttr ".tk[62]" -type "float3" -0.11253002 -0.0014563744 -0.11253001 ;
	setAttr ".tk[63]" -type "float3" 0.11252998 0.0014563744 -0.11253001 ;
	setAttr ".tk[64]" -type "float3" -0.25487259 -0.54332787 0.12851204 ;
	setAttr ".tk[65]" -type "float3" -0.25487259 -0.54332787 -0.12851208 ;
	setAttr ".tk[66]" -type "float3" -0.0064403205 -0.80035204 0.12851208 ;
	setAttr ".tk[67]" -type "float3" -0.0064403205 -0.80035204 -0.12851204 ;
	setAttr ".tk[68]" -type "float3" 0.25487259 -0.54332787 0.12851204 ;
	setAttr ".tk[69]" -type "float3" 0.25487259 -0.54332787 -0.12851208 ;
	setAttr ".tk[70]" -type "float3" 0.0064403205 -0.80035204 -0.12851204 ;
	setAttr ".tk[71]" -type "float3" 0.0064403205 -0.80035204 0.12851208 ;
createNode polyCube -n "polyCube3";
	setAttr ".sw" 4;
	setAttr ".sh" 4;
	setAttr ".cuv" 4;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.3189956570777825 0 0 0 0 0.46326838163577788 0
		 0 -1.6187050359712214 2.4280575539568359 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 -1.6726618 ;
	setAttr ".tk[1]" -type "float3" -0.059462637 -0.18102098 -0.43165463 ;
	setAttr ".tk[2]" -type "float3" 0 -0.25322765 0 ;
	setAttr ".tk[3]" -type "float3" 0.059462637 -0.18102098 -0.43165463 ;
	setAttr ".tk[4]" -type "float3" 0 0 -1.6726618 ;
	setAttr ".tk[5]" -type "float3" -0.10753507 0 -2.9538305 ;
	setAttr ".tk[6]" -type "float3" -0.059462637 0 -0.43165463 ;
	setAttr ".tk[8]" -type "float3" 0.059462637 0 -0.43165463 ;
	setAttr ".tk[9]" -type "float3" 0.10753507 0 -2.9538305 ;
	setAttr ".tk[10]" -type "float3" -0.0836384 0 -2.9538305 ;
	setAttr ".tk[11]" -type "float3" -0.059462637 0 -0.43165463 ;
	setAttr ".tk[13]" -type "float3" 0.059462637 0 -0.43165463 ;
	setAttr ".tk[14]" -type "float3" 0.0836384 0 -2.9538305 ;
	setAttr ".tk[15]" -type "float3" 0 0 -2.3714812 ;
	setAttr ".tk[16]" -type "float3" -0.059462637 0 -1.1304742 ;
	setAttr ".tk[17]" -type "float3" 0 0 -0.69881958 ;
	setAttr ".tk[18]" -type "float3" 0.059462637 0 -1.1304742 ;
	setAttr ".tk[19]" -type "float3" 0 0 -2.3714812 ;
	setAttr ".tk[20]" -type "float3" 0.071690053 -0.10830995 -3.4197099 ;
	setAttr ".tk[21]" -type "float3" 0.024175763 0.1044105 -3.5763421 ;
	setAttr ".tk[22]" -type "float3" 0 0.32103041 -4.5423265 ;
	setAttr ".tk[23]" -type "float3" -0.024175763 0.1044105 -3.5763421 ;
	setAttr ".tk[24]" -type "float3" -0.071690053 -0.10830995 -3.4197099 ;
	setAttr ".tk[25]" -type "float3" 0.071690053 -0.10830995 -3.4197099 ;
	setAttr ".tk[26]" -type "float3" 0.024175763 0.1044105 -3.5763421 ;
	setAttr ".tk[27]" -type "float3" 0 0.32103041 -4.5423265 ;
	setAttr ".tk[28]" -type "float3" -0.024175763 0.1044105 -3.5763421 ;
	setAttr ".tk[29]" -type "float3" -0.071690053 -0.10830995 -3.4197099 ;
	setAttr ".tk[30]" -type "float3" 0 0 -2.3714812 ;
	setAttr ".tk[31]" -type "float3" -0.059462637 0 -1.1304742 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.69881958 ;
	setAttr ".tk[33]" -type "float3" 0.059462637 0 -1.1304742 ;
	setAttr ".tk[34]" -type "float3" 0 0 -2.3714812 ;
	setAttr ".tk[35]" -type "float3" -0.0836384 0 -2.9538305 ;
	setAttr ".tk[36]" -type "float3" -0.059462637 0 -1.7128241 ;
	setAttr ".tk[38]" -type "float3" 0.059462637 0 -1.7128241 ;
	setAttr ".tk[39]" -type "float3" 0.0836384 0 -2.9538305 ;
	setAttr ".tk[40]" -type "float3" -0.10753507 0 -2.9538305 ;
	setAttr ".tk[41]" -type "float3" -0.059462637 0 -1.7128241 ;
	setAttr ".tk[43]" -type "float3" 0.059462637 0 -1.7128241 ;
	setAttr ".tk[44]" -type "float3" 0.10753507 0 -2.9538305 ;
	setAttr ".tk[45]" -type "float3" 0 0 -1.6726618 ;
	setAttr ".tk[46]" -type "float3" -0.059462637 -0.18102098 -0.43165463 ;
	setAttr ".tk[47]" -type "float3" 0 -0.25322765 0 ;
	setAttr ".tk[48]" -type "float3" 0.059462637 -0.18102098 -0.43165463 ;
	setAttr ".tk[49]" -type "float3" 0 0 -1.6726618 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -10.105843 8.1467874e-008 ;
	setAttr ".rs" 60392;
	setAttr ".lt" -type "double3" 1.6653345369377348e-016 -1.5349398437437091e-020 0.62903299136062052 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6598339400995046 -10.11049556057424 -0.28142982648929243 ;
	setAttr ".cbx" -type "double3" 1.6598339400995046 -10.10118963854071 0.28142998942503616 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[56:63]" -type "float3"  0 0.37913367 0 0 0.37913367
		 0 0 0.37913367 0 0 0.37913367 0 0 0.37913367 0 0 0.37913367 0 0 0.37913367 0 0 0.37913367
		 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[72]" "f[76]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -10.420333 0.28142998 ;
	setAttr ".rs" 60113;
	setAttr ".lt" -type "double3" 0 1.7763568394002505e-015 1.5647482014388505 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.6679742281662318 -10.73947622833661 0.28142998942503616 ;
	setAttr ".cbx" -type "double3" 1.6679742281662318 -10.101189222242866 0.28142998942503616 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[108:109]" "e[111]" "e[113]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.68641579151153564;
	setAttr ".dr" no;
	setAttr ".re" 113;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[56]" -type "float3" -0.2777209 0 0 ;
	setAttr ".tk[59]" -type "float3" -0.2777209 0 0 ;
	setAttr ".tk[61]" -type "float3" 0.2777209 0 0 ;
	setAttr ".tk[62]" -type "float3" 0.2777209 0 0 ;
	setAttr ".tk[72]" -type "float3" -0.2777209 0 0 ;
	setAttr ".tk[75]" -type "float3" -0.2777209 0 0 ;
	setAttr ".tk[77]" -type "float3" 0.2777209 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.2777209 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.036960814 -0.07819394 0.30557054 ;
	setAttr ".tk[81]" -type "float3" -0.037807293 -0.077226259 0.30557054 ;
	setAttr ".tk[82]" -type "float3" 0.037807293 -0.012791068 0.30557054 ;
	setAttr ".tk[83]" -type "float3" -0.036960848 -0.011823387 0.30557054 ;
	setAttr ".tk[84]" -type "float3" 0.037807293 -0.077226259 0.30557054 ;
	setAttr ".tk[85]" -type "float3" -0.036960814 -0.07819394 0.30557054 ;
	setAttr ".tk[86]" -type "float3" 0.036960848 -0.011823387 0.30557054 ;
	setAttr ".tk[87]" -type "float3" -0.037807293 -0.012791068 0.30557054 ;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[116:117]" "e[119]" "e[121]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.72678452730178833;
	setAttr ".dr" no;
	setAttr ".re" 121;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[164:165]" "e[167]" "e[169]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.43590840697288513;
	setAttr ".dr" no;
	setAttr ".re" 165;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[56]" -type "float3" 0.092749298 0 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.094124362 0.19492164 ;
	setAttr ".tk[59]" -type "float3" 0.092749298 0.094124362 0.19492164 ;
	setAttr ".tk[61]" -type "float3" -0.092749298 0 0 ;
	setAttr ".tk[62]" -type "float3" -0.092749298 0.094124362 0.19492164 ;
	setAttr ".tk[63]" -type "float3" 0 0.094124362 0.19492164 ;
	setAttr ".tk[72]" -type "float3" 0.092749298 0 0 ;
	setAttr ".tk[74]" -type "float3" 0 0 0.1866592 ;
	setAttr ".tk[75]" -type "float3" 0.092749298 0 0.1866592 ;
	setAttr ".tk[77]" -type "float3" -0.092749298 0 0 ;
	setAttr ".tk[78]" -type "float3" -0.092749298 0 0.1866592 ;
	setAttr ".tk[79]" -type "float3" 0 0 0.1866592 ;
	setAttr ".tk[80]" -type "float3" -0.085939214 0 0 ;
	setAttr ".tk[81]" -type "float3" 0.087907299 0 0 ;
	setAttr ".tk[82]" -type "float3" -0.08790724 0 0 ;
	setAttr ".tk[83]" -type "float3" 0.085939161 0 0 ;
	setAttr ".tk[84]" -type "float3" -0.087907299 0 0 ;
	setAttr ".tk[85]" -type "float3" 0.085939214 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.085939161 0 0 ;
	setAttr ".tk[87]" -type "float3" 0.08790724 0 0 ;
	setAttr ".tk[88]" -type "float3" 0.14825387 -0.018474029 -0.087750189 ;
	setAttr ".tk[89]" -type "float3" -0.14825386 0.018474029 -0.087750189 ;
	setAttr ".tk[90]" -type "float3" -0.14825386 0.018474029 0.087750189 ;
	setAttr ".tk[91]" -type "float3" 0.14825387 -0.018474029 0.087750189 ;
	setAttr ".tk[92]" -type "float3" 0.14533144 0.031676505 -0.084866621 ;
	setAttr ".tk[93]" -type "float3" -0.15252569 -0.00073296169 -0.084866621 ;
	setAttr ".tk[94]" -type "float3" -0.15252569 -0.00073296169 0.084866606 ;
	setAttr ".tk[95]" -type "float3" 0.14533144 0.031676505 0.084866606 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[156:157]" "e[159]" "e[161]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.42799133062362671;
	setAttr ".re" 156;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[108:109]" "e[111]" "e[113]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.56267225742340088;
	setAttr ".dr" no;
	setAttr ".re" 113;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[116:117]" "e[119]" "e[121]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.55105048418045044;
	setAttr ".dr" no;
	setAttr ".re" 121;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[124:125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.44017082452774048;
	setAttr ".re" 127;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[132:133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".wt" 0.41306114196777344;
	setAttr ".re" 137;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 3.4921594353509038 0 0 0 0 3.4921594353509038 0 0 0 0 2.7336081667971284 0
		 0 -5.4496402877697863 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.0407446e-007 -2.7498829 -8.1467874e-008 ;
	setAttr ".rs" 48925;
	setAttr ".lt" -type "double3" 0 6.1880507519877361e-025 0.31848627607557711 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.3833974102754219 -2.7498829860289735 -0.48647993851548066 ;
	setAttr ".cbx" -type "double3" 0.38339761842434456 -2.7498829860289735 0.48647977557973693 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[17]" -type "float3" -0.054316271 0 -0.037519272 ;
	setAttr ".tk[18]" -type "float3" 0.054316301 3.3306691e-016 -0.037519272 ;
	setAttr ".tk[21]" -type "float3" -0.054316271 0 0.037519272 ;
	setAttr ".tk[22]" -type "float3" 0.054316301 3.3306691e-016 0.037519272 ;
	setAttr ".tk[112]" -type "float3" 0.058929965 -0.035385743 0 ;
	setAttr ".tk[113]" -type "float3" -0.05892998 -0.060854562 0 ;
	setAttr ".tk[114]" -type "float3" -0.05892998 -0.060854562 0 ;
	setAttr ".tk[115]" -type "float3" 0.058929965 -0.035385743 0 ;
	setAttr ".tk[116]" -type "float3" -0.062255964 -0.024682011 0 ;
	setAttr ".tk[117]" -type "float3" -0.062255964 -0.024682011 0 ;
	setAttr ".tk[118]" -type "float3" 0.058426686 -0.052048907 0 ;
	setAttr ".tk[119]" -type "float3" 0.058426686 -0.052048907 0 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[4]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[13]";
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:52]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:120]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:173]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 0;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[176]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[5]" "vtx[178]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[6]" "vtx[177]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[10]" "vtx[176]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyCube -n "polyCube4";
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 1.8719249456168283 0 0 0 0 0.83059541965740269 0 0 0 0 0.83059541965740269 0
		 -6.764163075676727 -3.95791336271897 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.9865279 -3.9579134 0.60521156 ;
	setAttr ".rs" 37180;
	setAttr ".lt" -type "double3" -8.0491169285323849e-016 0 0.75088089716441575 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.3617955510509878 -4.1244239903401176 0.49953193237078869 ;
	setAttr ".cbx" -type "double3" -5.6112607174182507 -3.7914027103441494 0.71089121426641344 ;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.21155737 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.21155737 ;
	setAttr ".tk[4]" -type "float3" -0.086937129 -0.033804744 0.10141424 ;
	setAttr ".tk[5]" -type "float3" -0.019327641 -0.033804744 0.35588148 ;
	setAttr ".tk[6]" -type "float3" 0.048281845 -0.033804744 0.35588148 ;
	setAttr ".tk[7]" -type "float3" 0.11589133 -0.033804744 0.10141424 ;
	setAttr ".tk[8]" -type "float3" -0.086937129 0.033804752 0.10141424 ;
	setAttr ".tk[9]" -type "float3" -0.019327641 0.033804752 0.35588148 ;
	setAttr ".tk[10]" -type "float3" 0.048281845 0.033804752 0.35588148 ;
	setAttr ".tk[11]" -type "float3" 0.11589133 0.033804752 0.10141424 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.21155737 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.21155737 ;
	setAttr ".tk[16]" -type "float3" -0.1427521 0 0 ;
	setAttr ".tk[17]" -type "float3" -0.069974117 0.20992236 0.23430793 ;
	setAttr ".tk[18]" -type "float3" 0.069974117 0.20992236 0.23430793 ;
	setAttr ".tk[20]" -type "float3" -0.1427521 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.069974117 0.20992236 -0.23430796 ;
	setAttr ".tk[22]" -type "float3" 0.069974117 0.20992236 -0.23430796 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.21155737 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.21155737 ;
	setAttr ".tk[28]" -type "float3" -0.086937129 0.033804744 -0.10141424 ;
	setAttr ".tk[29]" -type "float3" -0.019327641 0.033804744 -0.35588148 ;
	setAttr ".tk[30]" -type "float3" 0.048281845 0.033804744 -0.35588148 ;
	setAttr ".tk[31]" -type "float3" 0.11589133 0.033804744 -0.10141424 ;
	setAttr ".tk[32]" -type "float3" -0.086937129 -0.033804752 -0.10141424 ;
	setAttr ".tk[33]" -type "float3" -0.019327641 -0.033804752 -0.35588148 ;
	setAttr ".tk[34]" -type "float3" 0.048281845 -0.033804752 -0.35588148 ;
	setAttr ".tk[35]" -type "float3" 0.11589133 -0.033804752 -0.10141424 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.21155737 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.21155737 ;
	setAttr ".tk[40]" -type "float3" -0.1427521 0 0 ;
	setAttr ".tk[41]" -type "float3" -0.069974117 -0.20992236 -0.23430793 ;
	setAttr ".tk[42]" -type "float3" 0.069974117 -0.20992236 -0.23430793 ;
	setAttr ".tk[44]" -type "float3" -0.1427521 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.069974117 -0.20992236 0.23430796 ;
	setAttr ".tk[46]" -type "float3" 0.069974117 -0.20992236 0.23430796 ;
	setAttr ".tk[48]" -type "float3" 0.11589133 -0.16442093 -0.16442093 ;
	setAttr ".tk[49]" -type "float3" 0.11589133 -0.16442093 0.16442096 ;
	setAttr ".tk[50]" -type "float3" 0.11589133 0.16442096 -0.16442093 ;
	setAttr ".tk[51]" -type "float3" 0.11589133 0.16442096 0.16442096 ;
	setAttr ".tk[52]" -type "float3" -0.25864351 -0.033804744 -0.033804744 ;
	setAttr ".tk[53]" -type "float3" -0.25864351 -0.033804744 0.033804752 ;
	setAttr ".tk[54]" -type "float3" -0.25864351 0.033804752 -0.033804744 ;
	setAttr ".tk[55]" -type "float3" -0.25864351 0.033804752 0.033804752 ;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.8719249456168283 0 0 0 0 0.83059541965740269 0 0 0 0 0.83059541965740269 0
		 -6.764163075676727 -3.95791336271897 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[56:59]" -type "float3"  -0.15768021 -2.1649349e-015
		 -0.17455658 -0.24917728 -2.1649349e-015 0.072674304 -0.24917728 2.1649349e-015 0.072674304
		 -0.15768021 2.1649349e-015 -0.17455658;
createNode polyMirror -n "polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:57]";
	setAttr ".ix" -type "matrix" 1.8719249456168283 0 0 0 0 0.83059541965740269 0 0 0 0 0.83059541965740269 0
		 -6.764163075676727 -3.95791336271897 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -5.6112600479657218 -3.95791356074835 0.28889107631127153 ;
	setAttr ".mt" 0;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[0:55]" -type "float3"  0 -0.18134871 0 0 -0.18134871
		 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0
		 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0
		 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871
		 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0
		 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0
		 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871
		 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0
		 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0
		 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871
		 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0 0 -0.18134871 0
		 0 -0.18134871 0;
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[104]";
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk[0:119]" -type "float3"  0.067809567 0 0 0.067809567
		 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0
		 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0
		 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567
		 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0
		 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0
		 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567
		 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0
		 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0
		 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567
		 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0
		 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0 0.067809567 0 0
		 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921 0 0 5.94463921
		 0 0;
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[40]";
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:114]";
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:287]";
	setAttr ".gi" 8;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[126]" "vtx[227]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[127]" "vtx[226]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[125]" "vtx[225]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[124]" "vtx[224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[95]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[269]";
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[121]" "vtx[285]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[120]" "vtx[284]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[123]" "vtx[285]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[122]" "vtx[284]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 2 "f[41:43]" "f[45:47]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.3189956570777825 0 0 0 0 0.46326838163577788 0
		 0 -1.2971990964250431 2.4280575539568359 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.84952968 1.0866197 ;
	setAttr ".rs" 45295;
	setAttr ".lt" -type "double3" 4.7184478546569153e-016 3.5252347669538374e-016 1.5949654205357517 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.8666740691862711 -2.8769480106944885 0.61217988242758281 ;
	setAttr ".cbx" -type "double3" 3.8666740691862711 1.1778886006114289 1.5610594963479172 ;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[76]" "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 92 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0.2653164 0.26976126 ;
	setAttr ".tk[1]" -type "float3" 0 0.53532195 -0.047350377 ;
	setAttr ".tk[2]" -type "float3" 0 0.53532195 -0.047350377 ;
	setAttr ".tk[3]" -type "float3" 0 0.2653164 0.26976126 ;
	setAttr ".tk[4]" -type "float3" 0 0.11973122 0.22056369 ;
	setAttr ".tk[5]" -type "float3" 0 0.13837932 0.064798452 ;
	setAttr ".tk[6]" -type "float3" 0 0.13837932 0.064798452 ;
	setAttr ".tk[7]" -type "float3" 0 0.11973122 0.22056369 ;
	setAttr ".tk[8]" -type "float3" 0 -0.059651565 0.20270538 ;
	setAttr ".tk[9]" -type "float3" 0 -0.047223806 0.046320871 ;
	setAttr ".tk[10]" -type "float3" 0 -0.047223806 0.046320871 ;
	setAttr ".tk[11]" -type "float3" 0 -0.059651565 0.20270538 ;
	setAttr ".tk[12]" -type "float3" 0 -0.21207878 0.22223447 ;
	setAttr ".tk[13]" -type "float3" 0 -0.19876213 0.19848154 ;
	setAttr ".tk[14]" -type "float3" 0 -0.19876213 0.19848154 ;
	setAttr ".tk[15]" -type "float3" 0 -0.21207878 0.22223447 ;
	setAttr ".tk[16]" -type "float3" 0 -0.34118122 0.8173871 ;
	setAttr ".tk[17]" -type "float3" 0 -0.48379534 0.64565998 ;
	setAttr ".tk[18]" -type "float3" 0 -0.48379534 0.64565998 ;
	setAttr ".tk[19]" -type "float3" 0 -0.34118122 0.8173871 ;
	setAttr ".tk[20]" -type "float3" 0 -0.066915527 0.93583167 ;
	setAttr ".tk[21]" -type "float3" 0 -0.2929576 0.93878078 ;
	setAttr ".tk[22]" -type "float3" 0 -0.2929576 0.93878078 ;
	setAttr ".tk[23]" -type "float3" 0 -0.066915527 0.93583167 ;
	setAttr ".tk[24]" -type "float3" 0 -0.26935762 0.79758734 ;
	setAttr ".tk[25]" -type "float3" 0 -0.27915969 0.89604658 ;
	setAttr ".tk[26]" -type "float3" 0 -0.27915969 0.89604658 ;
	setAttr ".tk[27]" -type "float3" 0 -0.26935762 0.79758734 ;
	setAttr ".tk[28]" -type "float3" 0 -0.1242197 0.85127753 ;
	setAttr ".tk[29]" -type "float3" 0 -0.13526915 0.96226668 ;
	setAttr ".tk[30]" -type "float3" 0 -0.13526915 0.96226668 ;
	setAttr ".tk[31]" -type "float3" 0 -0.1242197 0.85127753 ;
	setAttr ".tk[32]" -type "float3" 0 0.055163074 0.86913586 ;
	setAttr ".tk[33]" -type "float3" 0 0.044113621 0.98012507 ;
	setAttr ".tk[34]" -type "float3" 0 0.044113621 0.98012507 ;
	setAttr ".tk[35]" -type "float3" 0 0.055163074 0.86913586 ;
	setAttr ".tk[36]" -type "float3" 0 0.20803753 0.84511423 ;
	setAttr ".tk[37]" -type "float3" 0 0.19823548 0.94357347 ;
	setAttr ".tk[38]" -type "float3" 0 0.19823548 0.94357347 ;
	setAttr ".tk[39]" -type "float3" 0 0.20803753 0.84511423 ;
	setAttr ".tk[40]" -type "float3" 0 0.55715907 0.39664078 ;
	setAttr ".tk[41]" -type "float3" 0 0.55309367 0.49502841 ;
	setAttr ".tk[42]" -type "float3" 0 0.55309367 0.49502841 ;
	setAttr ".tk[43]" -type "float3" 0 0.55715907 0.39664078 ;
	setAttr ".tk[44]" -type "float3" 0 0.31956321 0.13151699 ;
	setAttr ".tk[45]" -type "float3" 0 0.76562452 0.20190749 ;
	setAttr ".tk[46]" -type "float3" 0 0.76562452 0.20190749 ;
	setAttr ".tk[47]" -type "float3" 0 0.31956321 0.13151699 ;
	setAttr ".tk[48]" -type "float3" 0 0.076685779 0.6529451 ;
	setAttr ".tk[49]" -type "float3" 0 0.098208494 0.43675447 ;
	setAttr ".tk[50]" -type "float3" 0 -0.10269699 0.63508683 ;
	setAttr ".tk[51]" -type "float3" 0 -0.081174277 0.41889608 ;
	setAttr ".tk[52]" -type "float3" 0 0.076685779 0.6529451 ;
	setAttr ".tk[53]" -type "float3" 0 0.098208494 0.43675447 ;
	setAttr ".tk[54]" -type "float3" 0 -0.10269699 0.63508683 ;
	setAttr ".tk[55]" -type "float3" 0 -0.081174277 0.41889608 ;
	setAttr ".tk[60]" -type "float3" 0 -0.40008757 0.30006567 ;
	setAttr ".tk[61]" -type "float3" 0 0.3334063 0.033340629 ;
	setAttr ".tk[62]" -type "float3" 0 0.3334063 0.033340629 ;
	setAttr ".tk[63]" -type "float3" 0 -0.40008757 0.30006567 ;
	setAttr ".tk[64]" -type "float3" 0 0.066681258 0.2333844 ;
	setAttr ".tk[67]" -type "float3" 0 0.066681258 0.2333844 ;
	setAttr ".tk[76]" -type "float3" 0 0 -5.9604645e-008 ;
	setAttr ".tk[79]" -type "float3" 0 0 -5.9604645e-008 ;
	setAttr ".tk[80]" -type "float3" 0 0.4667688 0.36674693 ;
	setAttr ".tk[81]" -type "float3" 0 0.4667688 0.36674693 ;
	setAttr ".tk[82]" -type "float3" 0 0.4667688 0.36674693 ;
	setAttr ".tk[83]" -type "float3" 0 0.4667688 0.36674693 ;
	setAttr ".tk[84]" -type "float3" 0 0.7668345 7.4505806e-009 ;
	setAttr ".tk[85]" -type "float3" 0.42170188 1.0669001 0.36674693 ;
	setAttr ".tk[86]" -type "float3" -0.42170188 1.0669001 0.36674693 ;
	setAttr ".tk[87]" -type "float3" 0 0.7668345 7.4505806e-009 ;
	setAttr ".tk[88]" -type "float3" 0 0.13336253 -0.26672503 ;
	setAttr ".tk[89]" -type "float3" 0 1.1335812 -0.13336252 ;
	setAttr ".tk[90]" -type "float3" 0 1.1335812 -0.13336252 ;
	setAttr ".tk[91]" -type "float3" 0 0.13336253 -0.26672503 ;
	setAttr ".tk[92]" -type "float3" 0 0.20004374 -0.066681266 ;
	setAttr ".tk[93]" -type "float3" 0 0.1333625 -0.36674693 ;
	setAttr ".tk[94]" -type "float3" 0 0.1333625 -0.36674693 ;
	setAttr ".tk[95]" -type "float3" 0 0.20004374 -0.066681266 ;
	setAttr ".tk[288]" -type "float3" 0 -1.4551915e-011 0 ;
	setAttr ".tk[291]" -type "float3" -7.4505806e-009 2.3283064e-010 0 ;
	setAttr ".tk[292]" -type "float3" 0 1.8626451e-009 -2.9802322e-008 ;
	setAttr ".tk[293]" -type "float3" 0 0 -2.9802322e-008 ;
	setAttr ".tk[294]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[295]" -type "float3" 0 -1.8626451e-009 0 ;
	setAttr ".tk[296]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[298]" -type "float3" 0 -1.8626451e-009 0 ;
	setAttr ".tk[300]" -type "float3" 3.7252903e-009 0 -2.9802322e-008 ;
	setAttr ".tk[301]" -type "float3" 0 -3.7252903e-009 -2.9802322e-008 ;
	setAttr ".tk[302]" -type "float3" 7.4505806e-009 -4.6566129e-010 0 ;
	setAttr ".tk[303]" -type "float3" 7.4505806e-009 0 0 ;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[79]" "vtx[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[77]" "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[78]" "vtx[80]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[40:44]" "e[80:84]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 0 -3.0616266158090979 3.2255990755578203 1;
	setAttr ".wt" 0.37659814953804016;
	setAttr ".re" 42;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[5]" -type "float3" 0 0.0027190002 0.15637736 ;
	setAttr ".tk[9]" -type "float3" 0 0.0027189993 0.1563773 ;
	setAttr ".tk[40]" -type "float3" -0.0086843185 -0.014499061 0.3534416 ;
	setAttr ".tk[44]" -type "float3" 0.0086843185 -0.014499061 0.35344172 ;
	setAttr ".tk[50]" -type "float3" -0.083638392 0 0.58234966 ;
	setAttr ".tk[51]" -type "float3" -0.083638392 0 0.58234966 ;
	setAttr ".tk[52]" -type "float3" 0.059741713 -4.1633363e-017 -0.58234966 ;
	setAttr ".tk[53]" -type "float3" 0.059741713 -4.1633363e-017 -0.58234966 ;
	setAttr ".tk[54]" -type "float3" 0.10753508 0 -1.0203027 ;
	setAttr ".tk[55]" -type "float3" 0.10753508 0 -1.0203027 ;
	setAttr ".tk[56]" -type "float3" -0.04779337 -0.036103316 1.1873231 ;
	setAttr ".tk[57]" -type "float3" -0.04779337 -0.036103316 1.1873231 ;
	setAttr ".tk[58]" -type "float3" 0.083638392 0 0.58234966 ;
	setAttr ".tk[59]" -type "float3" 0.083638392 0 0.58234966 ;
	setAttr ".tk[60]" -type "float3" -0.059741713 -4.1633363e-017 -0.58234966 ;
	setAttr ".tk[61]" -type "float3" -0.059741713 -4.1633363e-017 -0.58234966 ;
	setAttr ".tk[62]" -type "float3" -0.10753508 0 -1.0203027 ;
	setAttr ".tk[63]" -type "float3" -0.10753508 0 -1.0203027 ;
	setAttr ".tk[64]" -type "float3" 0.04779337 -0.036103316 1.1873231 ;
	setAttr ".tk[65]" -type "float3" 0.04779337 -0.036103316 1.1873231 ;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[110:111]" "e[113]" "e[115]" "e[118]" "e[120]" "e[123]" "e[125]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 0 -3.0616266158090979 3.2255990755578203 1;
	setAttr ".wt" 0.45764598250389099;
	setAttr ".re" 118;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[92:93]" "e[95]" "e[97]" "e[100]" "e[102]" "e[105]" "e[107]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 0 -3.0616266158090979 3.2255990755578203 1;
	setAttr ".wt" 0.45885825157165527;
	setAttr ".re" 102;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySoftEdge -n "polySoftEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 0 -3.0616266158090979 3.2255990755578203 1;
	setAttr ".a" 0;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
createNode polyMapDel -n "polyMapDel1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:89]";
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[66]" -type "float3" 0 0.11359786 -0.36748233 ;
	setAttr ".tk[67]" -type "float3" 0 0.078026757 -0.2524119 ;
	setAttr ".tk[75]" -type "float3" 0 0.078026757 -0.2524119 ;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:89]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 0 -3.0616266158090979 3.2255990755578203 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -2.6103857755661011 2.4714447259902954 ;
	setAttr ".ps" -type "double2" 11.28870964050293 10.271744012832642 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 92 ".uvtk[0:91]" -type "float2" 0.0011231137 0.0013188322
		 0.0006951192 0.0018019922 0.0006951192 0.0012183393 0.001214081 0.001074295 -1.0983875e-008
		 0.0019920915 -1.0983875e-008 0.0012539861 -0.00069514097 0.0018019922 -0.00069514144
		 0.0012183393 -0.0011231357 0.0013188322 -0.001214103 0.001074295 0.0013646642 0.00066950003
		 0.0006951192 0.00077408482 0.0006951192 0.00017787774 0.0013109864 7.3292977e-005
		 -1.0983875e-008 0.00079198391 -1.0983875e-008 0.00019577687 -0.00069514097 0.00077408482
		 -0.00069514097 0.00017787774 -0.0013646862 0.00066950003 -0.0013110085 7.3292977e-005
		 0.0006951192 -0.00044733632 0.0011231137 -0.000498796 -1.0983875e-008 -0.00042943744
		 -0.00069514097 -0.00044733632 -0.0011231357 -0.000498796 0.00050724664 -0.0013939649
		 0.00096207997 -0.00088016788 -1.0983875e-008 -0.0019506216 -0.00050726859 -0.0013939649
		 -0.00096210168 -0.00088016788 0.00050724664 -0.0014354312 0.00096207997 -0.0009216342
		 -1.0983875e-008 -0.0019920284 -0.00050726859 -0.0014354312 -0.00096210168 -0.0009216342
		 0.0006951192 -0.00048880215 0.0011231137 -0.0005402618 -1.0983875e-008 -0.00047090324
		 -0.00069514097 -0.00048880215 -0.0011231357 -0.0005402618 0.0006951192 8.3286599e-005
		 0.0013109864 3.182716e-005 -1.0983875e-008 0.00015431058 -0.00069514097 8.3286599e-005
		 -0.0013110085 3.182716e-005 0.0006951192 0.00067949342 0.0013841713 0.00067726785
		 -1.0983875e-008 0.00075051788 -0.00069514097 0.00067949342 -0.0013841933 0.00067726785
		 0.0012214275 0.0010513702 0.0006951192 0.0013534137 0.0006951192 0.001760526 0.0011231137
		 0.001277366 -1.0983875e-008 0.0014986696 -1.0983875e-008 0.0019506253 -0.00069514097
		 0.0013534137 -0.00069514097 0.001760526 -0.0012214495 0.0010513702 -0.0011231357
		 0.001277366 -0.0017371377 0.00063596183 -0.0017371377 0.0005944958 -0.0019921467
		 -0.00011730155 -0.0019921467 -7.5835735e-005 -0.0018821801 -0.0008153356 -0.0018821801
		 -0.0007738698 -0.0013562901 -0.0010596156 -0.0013562901 -0.0010181498 0.0017371085
		 0.0005944958 0.0017371085 0.00063596183 0.0019920613 -7.5835735e-005 0.0019920613
		 -0.00011730155 0.0018821545 -0.0007738698 0.0018821545 -0.0008153356 0.0013562681
		 -0.0010181498 0.0013562681 -0.0010596156 -0.0015461448 0.00063928717 -0.0015355886
		 0.0006541108 -0.0016235271 -3.6617846e-005 -0.0016235271 4.8482098e-006 -0.0014714294
		 -0.00066648162 -0.0014714294 -0.00062501582 -0.0011429786 -0.00098494813 -0.0011429786
		 -0.00094348227 0.0015351076 0.00065415114 0.0015456876 0.00063938741 0.0016226721
		 5.0289277e-006 0.0016226721 -3.6437363e-005 0.0014704874 -0.00062468241 0.0014704874
		 -0.0006661482 0.0011424785 -0.0009433151 0.0011424785 -0.00098478096;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[0:3]" "e[16:19]" "e[40]" "e[44]" "e[93]" "e[99]" "e[104]" "e[107]" "e[109]" "e[111]" "e[114]" "e[119]" "e[123:124]" "e[131]" "e[143]" "e[151]" "e[161]" "e[165]" "e[175]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[5]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[7]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[9]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[11]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[12]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[13]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[14]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[15]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[16]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[17]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[18]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[19]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[20]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[21]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[22]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[23]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[24]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[29]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[60]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[63]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[65]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[70]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[72]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[74]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[77]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[79]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[81]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[86]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[88]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[90]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[94]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[95]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[98]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[99]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[102]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[103]" -type "float2" 1.0316527 -0.010998443 ;
	setAttr ".uvtk[105]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[110]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[111]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[112]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[113]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[114]" -type "float2" 1.0316527 -0.010998413 ;
	setAttr ".uvtk[115]" -type "float2" 1.0316527 -0.010998428 ;
	setAttr ".uvtk[116]" -type "float2" 1.0316527 -0.01099843 ;
	setAttr ".uvtk[117]" -type "float2" 1.0316527 -0.010998428 ;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[20:23]" "e[36:39]" "e[80]" "e[84]" "e[92]" "e[96]" "e[101]" "e[105:106]" "e[110]" "e[117]" "e[122]" "e[125]" "e[127]" "e[133]" "e[141]" "e[153]" "e[159]" "e[167]" "e[173]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[30]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[31]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[32]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[33]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[35]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[36]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[37]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[38]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[39]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[40]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[41]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[42]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[43]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[44]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[45]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[47]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[48]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[49]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[50]" -type "float2" -1.0514499 -0.021996863 ;
	setAttr ".uvtk[51]" -type "float2" -1.0514499 -0.021996863 ;
	setAttr ".uvtk[52]" -type "float2" -1.0514499 -0.021996859 ;
	setAttr ".uvtk[54]" -type "float2" -1.0514499 -0.021996863 ;
	setAttr ".uvtk[55]" -type "float2" -1.0514499 -0.021996859 ;
	setAttr ".uvtk[56]" -type "float2" -1.0514499 -0.021996863 ;
	setAttr ".uvtk[57]" -type "float2" -1.0514499 -0.021996859 ;
	setAttr ".uvtk[59]" -type "float2" -1.0514499 -0.021996863 ;
	setAttr ".uvtk[62]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[64]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[66]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[68]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[71]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[73]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[78]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[80]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[82]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[85]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[87]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[89]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[118]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[119]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[122]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[123]" -type "float2" -1.0514499 -0.021996878 ;
	setAttr ".uvtk[126]" -type "float2" -1.0514499 -0.021996863 ;
	setAttr ".uvtk[129]" -type "float2" -1.0514499 -0.021996863 ;
	setAttr ".uvtk[133]" -type "float2" -1.0514499 -0.021996848 ;
	setAttr ".uvtk[135]" -type "float2" -1.0514499 -0.021996878 ;
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[87]";
createNode Unfold3DUnfold -n "Unfold3DUnfold1";
	setAttr ".uvl" -type "Int32Array" 54 0 1 3 4 6 8
		 10 25 26 27 28 34 46 53 58 61 67 69
		 75 76 83 84 91 92 93 96 97 100 101 104
		 106 107 108 109 120 121 124 125 127 128 130 131
		 132 134 136 137 138 139 140 141 142 143 144 145 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|pCube3|pCubeShape3";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 90 4 ;
	setAttr ".fpve" -type "Int32Array" 360 0 1 2 3 1 4
		 5 2 4 6 7 5 6 8 9 7 10 11
		 12 13 11 14 15 12 14 16 17 15 16 18
		 19 17 13 12 20 21 12 15 22 20 15 17
		 23 22 17 19 24 23 21 20 25 26 20 22
		 27 25 22 23 28 27 23 24 29 28 30 31
		 32 33 31 34 35 32 34 36 37 35 36 38
		 39 37 40 41 42 43 41 44 45 42 44 46
		 47 45 46 48 49 47 43 42 50 51 42 45
		 52 50 45 47 53 52 47 49 54 53 51 50
		 55 56 50 52 57 55 52 53 58 57 53 54
		 59 58 60 61 62 63 61 64 65 62 64 66
		 67 65 66 68 69 67 70 71 72 73 71 74
		 75 72 76 77 78 79 77 80 81 78 81 80
		 82 83 84 85 86 87 87 86 88 89 89 88
		 90 91 70 73 92 93 94 95 96 97 97 96
		 98 99 99 98 100 101 102 103 104 105 59 54
		 106 107 19 18 108 109 54 49 110 106 24 19
		 109 111 49 48 112 110 39 38 113 114 29 24
		 111 115 116 117 118 119 10 13 120 121 51 56
		 122 123 13 21 124 120 43 51 123 125 21 26
		 126 124 30 33 127 128 40 43 125 129 2 5
		 14 11 3 2 11 10 93 92 117 116 56 55
		 61 60 55 57 64 61 57 58 66 64 58 59
		 68 66 83 82 103 102 7 9 18 16 5 7
		 16 14 120 124 130 131 121 120 131 132 119 118
		 95 94 123 122 133 134 125 123 134 135 129 125
		 135 136 128 127 101 100 124 126 137 130 115 111
		 138 139 114 113 91 90 110 112 140 141 106 110
		 141 142 107 106 142 143 105 104 85 84 109 108
		 144 145 111 109 145 138 ;
	setAttr ".mue" -type "floatArray" 146 0.57344818 0.62985635 0.62987632 0.56146389
		 0.72149253 0.72151774 0.81314152 0.81316149 0.86958277 0.88158381 0.54162556 0.62989151
		 0.6299119 0.54872257 0.72153354 0.72155392 0.81317663 0.81319702 0.9014498 0.89439356
		 0.62993324 0.57351029 0.72157526 0.81321841 0.86964494 0.65473384 0.59475327 0.7216273
		 0.78848261 0.84842795 0.66313916 0.69135916 0.69150919 0.66328913 0.72154772 0.72169769
		 0.75144649 0.75159645 0.77961951 0.77976954 0.37774181 0.31984106 0.34381536 0.39825729
		 0.25526789 0.25538793 0.19078262 0.16695771 0.13296294 0.1125076 0.34386051 0.42220205
		 0.25543725 0.16700284 0.088653073 0.34390754 0.43156302 0.25548428 0.16704988 0.079394028
		 0.41088957 0.3439607 0.34399283 0.39840069 0.25554332 0.25557896 0.16710305 0.16713518
		 0.10012651 0.11265101 0.51890934 0.4907898 0.48845789 0.51657742 0.4592827 0.45695081
		 0.98275608 0.95137626 0.9534083 0.98478812 0.92362714 0.92565912 0.91342962 0.9148702
		 0.88086993 0.88101989 0.85234684 0.85219681 0.82359558 0.82344556 0.79804891 0.79789895
		 0.5274927 0.52921098 0.56172431 0.56157434 0.5905968 0.59074682 0.61930472 0.61945468
		 0.64450359 0.64465356 0.896999 0.89656889 0.88943815 0.88959104 0.048891567 0.058788855
		 0.92398125 0.93559688 0.068190522 0.91556656 0.10994827 0.7880072 0.78815717 0.87227607
		 0.54624403 0.54557306 0.55290294 0.55332446 0.50763273 0.51915467 0.45210776 0.46184778
		 0.52771854 0.44243744 0.57097256 0.65476066 0.65461063 0.4006857 0.47345105 0.4589375
		 0.49252447 0.47645524 0.50883174 0.49479508 0.42787635 0.54279011 0.96972305 0.90040052
		 0.082806617 0.015926408 0.0020000001 0.034488756 0.95055312 0.9841888 ;
	setAttr ".mve" -type "floatArray" 146 0.20491488 0.1412023 0.21814874 0.23715658
		 0.11611676 0.21342549 0.14115478 0.2181012 0.2048381 0.23707359 0.29052791 0.2767171
		 0.3553181 0.36912709 0.2743336 0.3529346 0.27666956 0.35527059 0.2904346 0.36903748
		 0.43773937 0.44453821 0.4353559 0.43769184 0.44446141 0.56253183 0.49481088 0.63590139
		 0.56249714 0.49474511 0.79429913 0.80929333 0.905303 0.89030886 0.90199029 0.99800003
		 0.80919945 0.90520918 0.79411715 0.89012688 0.13809857 0.072773382 0.19318105 0.18660098
		 0.0020000001 0.19551282 0.072853431 0.19329074 0.13825038 0.18677822 0.26595375 0.25935891
		 0.2750437 0.26606345 0.25956577 0.34179837 0.34146088 0.35088837 0.34190807 0.3416793
		 0.38906401 0.42752907 0.47931907 0.41782111 0.44606221 0.50355685 0.42763874 0.47942877
		 0.38925675 0.41799834 0.72340077 0.60489988 0.50891829 0.62741929 0.56421006 0.46822849
		 0.56339222 0.60418034 0.50819194 0.46740389 0.72276855 0.62678021 0.75610578 0.66723013
		 0.69331855 0.78932828 0.90119582 0.80518603 0.8873772 0.79136747 0.7761035 0.68009377
		 0.6678353 0.75670606 0.78982711 0.69381732 0.80559474 0.90160447 0.79168642 0.88769615
		 0.68033338 0.77634311 0.73418581 0.81129658 0.80121344 0.71543634 0.25088719 0.33686048
		 0.29245761 0.37804627 0.17074904 0.4610897 0.13021038 0.74179655 0.83780628 0.50308597
		 0.81184387 0.73473483 0.71601182 0.80176514 0.37813342 0.29255727 0.3366293 0.25065404
		 0.46114632 0.17055933 0.50314206 0.83815295 0.74214315 0.13005133 0.48082852 0.38880688
		 0.29496214 0.33090344 0.24033801 0.15154843 0.12051458 0.51301521 0.48069984 0.51292247
		 0.1207286 0.15184544 0.24065235 0.33117756 0.29484338 0.38867068 ;
	setAttr ".mnsl" -type "stringArray" 5 "|pCube3|pCubeShape3.map[127:128]" "|pCube3|pCubeShape3.map[116:119]" "|pCube3|pCubeShape3.map[113:114]" "|pCube3|pCubeShape3.map[70:105]" "|pCube3|pCubeShape3.map[30:39]"  ;
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 146 ".uvtk[0:145]" -type "float2" 0.0010974039 -0.27104467
		 0.0011399888 -0.27128524 0.055304211 0.44517162 0.0010822307 -0.27096036 0.001114254
		 -0.27138504 -0.033802286 0.3769317 0.0019571818 -0.2709893 -0.11546084 0.29993495
		 0.0018295256 -0.27078909 -0.16415676 0.22802755 0.0010615496 -0.27082002 0.10171425
		 0.39060405 0.16399835 0.31737226 0.2505706 0.368864 0.014461826 0.32018423 0.076745927
		 0.24695244 -0.069050804 0.24536741 -0.0067666993 0.17213561 -0.14036497 0.16257584
		 -0.071487688 0.094951577 0.22930959 0.24058114 0.28725573 0.2789717 0.14205717 0.17016129
		 0.058544539 0.095344506 0.011350033 0.044312317 0.0015012999 -0.2705301 0.0013622816
		 -0.27055782 0.0017935182 -0.27013421 0.0015211959 -0.27038038 0.070970654 0.014291402
		 0.35571307 0.61994165 0.24714187 0.51140708 0.47522607 0.73941725 0.48775232 0.75213408
		 0.0017519119 -0.27034479 0.24029274 0.50468683 0.18953434 0.4538534 0.32904395 0.59354669
		 0.42123511 0.68583918 0.48188388 0.74654198 0.18531926 0.44983059 0.11010925 0.37451705
		 0.2689653 0.5335961 0.36626172 0.63098294 0.45136207 0.71616572 0.12802525 0.39265868
		 0.00098866015 -0.27067605 0.21167122 0.4764241 0.30896768 0.57381099 0.3988618 0.66380864
		 0.023789749 0.28841984 0.063263178 0.32803464 0.024140349 0.28899518 0.0010153665
		 -0.27086487 0.13977569 0.40468183 0.096343495 0.36134219 0.24420562 0.50918698 0.20508277
		 0.47014749 0.0017225656 -0.27055964 0.30721715 0.57224756 -0.18260944 0.1195474 0.0016422827
		 -0.27052134 0.55433249 0.81920844 -0.13956839 0.0054873885 0.60710752 0.87182385
		 -0.053146891 -0.068770163 0.5621376 0.82672453 0.0015614788 -0.27077314 0.00057738845
		 0.26503608 0.0011474022 -0.27087575 0.34980327 0.42170075 0.03579478 0.30006918 0.40922499
		 0.32447979 0.1171786 0.38132671 0.37014943 0.23953675 0.0012690955 -0.27062765 0.0016494354
		 -0.27049497 -0.15974915 0.14283186 0.49861088 0.76344776 -0.1027271 0.053900246 0.53934371
		 0.80402857 -0.018244907 -0.0075764628 0.52719963 0.79176974 0.0014789691 -0.27065036
		 0.0011016659 -0.27084592 0.021176841 0.28567365 0.29598406 0.39304462 0.07609956
		 0.34044632 0.3430745 0.29979828 0.15642104 0.42066181 0.33607203 0.22639468 0.0013706558
		 -0.27034864 0.0017061172 -0.27064821 0.0017049167 -0.27069345 0.055367921 -0.012381162
		 0.036967237 -0.043836586 0.0012782731 -0.27078867 0.0011807361 -0.27106032 0.21741968
		 0.46362466 0.24413154 0.48249298 0.0017835777 -0.27072161 0.0017071482 -0.27060989
		 0.13409588 0.48169312 0.19487979 0.44770339 0.0011761704 -0.27060616 0.30731687 0.21530524
		 0.0010798697 -0.27063709 0.0015363637 -0.27055249 0.0015277433 -0.27051273 0.0015800733
		 -0.27050912 -0.17852941 0.26756704 0.097376406 0.50222647 0.18051243 -0.0013029489
		 0.300971 -0.016685065 0.30512488 0.10468068 -0.17643377 0.37162524 -0.11091045 0.46759334
		 -0.0056687286 0.51686186 0.42358965 0.68855321 0.45275173 0.71773493 0.001627097
		 -0.27044767 0.0015135076 -0.27059123 0.22973117 0.49395618 0.20909788 0.4732753 0.0010088411
		 -0.27068847 0.0010358458 -0.27070266 0.34173036 0.60672933 0.0017632606 -0.27061409
		 0.0010047274 -0.27079394 0.014867701 0.27955893 0.0010137657 -0.27045473 0.0014548283
		 -0.27011621 0.00095151784 -0.27046484 0.038558949 0.30308786 0.0014759947 -0.27037615
		 0.49757421 0.76212996 0.0015199427 -0.27033237 0.001655435 -0.2704725 0.0018913342
		 -0.27081424 0.0010425055 -0.27120659 0.0010681666 -0.27110696 0.0018450086 -0.27022737
		 0.0021573107 -0.26996133 0.0017067376 -0.27005008 0.0019757221 -0.27086914 0.0020409143
		 -0.27104408;
createNode Unfold3DUnfold -n "Unfold3DUnfold2";
	setAttr ".uvl" -type "Int32Array" 54 0 1 3 4 6 8
		 10 25 26 27 28 34 46 53 58 61 67 69
		 75 76 83 84 91 92 93 96 97 100 101 104
		 106 107 108 109 120 121 124 125 127 128 130 131
		 132 134 136 137 138 139 140 141 142 143 144 145 ;
	setAttr ".ite" 4;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|pCube3|pCubeShape3";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 90 4 ;
	setAttr ".fpve" -type "Int32Array" 360 0 1 2 3 1 4
		 5 2 4 6 7 5 6 8 9 7 10 11
		 12 13 11 14 15 12 14 16 17 15 16 18
		 19 17 13 12 20 21 12 15 22 20 15 17
		 23 22 17 19 24 23 21 20 25 26 20 22
		 27 25 22 23 28 27 23 24 29 28 30 31
		 32 33 31 34 35 32 34 36 37 35 36 38
		 39 37 40 41 42 43 41 44 45 42 44 46
		 47 45 46 48 49 47 43 42 50 51 42 45
		 52 50 45 47 53 52 47 49 54 53 51 50
		 55 56 50 52 57 55 52 53 58 57 53 54
		 59 58 60 61 62 63 61 64 65 62 64 66
		 67 65 66 68 69 67 70 71 72 73 71 74
		 75 72 76 77 78 79 77 80 81 78 81 80
		 82 83 84 85 86 87 87 86 88 89 89 88
		 90 91 70 73 92 93 94 95 96 97 97 96
		 98 99 99 98 100 101 102 103 104 105 59 54
		 106 107 19 18 108 109 54 49 110 106 24 19
		 109 111 49 48 112 110 39 38 113 114 29 24
		 111 115 116 117 118 119 10 13 120 121 51 56
		 122 123 13 21 124 120 43 51 123 125 21 26
		 126 124 30 33 127 128 40 43 125 129 2 5
		 14 11 3 2 11 10 93 92 117 116 56 55
		 61 60 55 57 64 61 57 58 66 64 58 59
		 68 66 83 82 103 102 7 9 18 16 5 7
		 16 14 120 124 130 131 121 120 131 132 119 118
		 95 94 123 122 133 134 125 123 134 135 129 125
		 135 136 128 127 101 100 124 126 137 130 115 111
		 138 139 114 113 91 90 110 112 140 141 106 110
		 141 142 107 106 142 143 105 104 85 84 109 108
		 144 145 111 109 145 138 ;
	setAttr ".mue" -type "floatArray" 146 0.61361057 0.63547128 0.6371578 0.60404843
		 0.65791422 0.67350429 0.69482142 0.71145695 0.73357636 0.74243701 0.62365407 0.64716703
		 0.66059977 0.63004261 0.68391335 0.69734609 0.72146612 0.73489887 0.75960469 0.77016878
		 0.67468536 0.65297168 0.71143168 0.74898452 0.77301711 0.65320331 0.60680705 0.68942004
		 0.7451086 0.77300346 0.28101951 0.261803 0.31004772 0.30455625 0.30558425 0.25061288
		 0.2689755 0.29442874 0.34043267 0.34563303 0.23788403 0.27553949 0.20164961 0.17657819
		 0.20277971 0.23989227 0.19944742 0.21661837 0.20739827 0.17101941 0.24875452 0.23891591
		 0.24728717 0.19147345 0.2221393 0.20970882 0.169109 0.17919473 0.20296612 0.1561892
		 0.26211423 0.16551946 0.05151166 0.28367111 0.046950795 0.28137311 0.064803429 0.0020000001
		 0.22616814 0.16755475 0.25536802 0.15635636 0.29984072 0.18426806 0.27810514 0.3209267
		 0.38838053 0.27044681 0.45492166 0.32804912 0.43119377 0.32667983 0.42073277 0.35148057
		 0.42441314 0.27523172 0.34141073 0.27709925 0.35975385 0.28874117 0.36792347 0.49598649
		 0.25488982 0.14887983 0.20331407 0.21038438 0.22272675 0.18362576 0.23169185 0.22902885
		 0.282098 0.26149631 0.30705619 0.32443994 0.2777155 0.39868289 0.19153272 0.16212185
		 0.83863598 0.80019039 0.28407142 0.57488459 0.35891983 0.3815642 0.35951176 0.53649497
		 0.082286693 0.12355269 0.26658085 0.26490703 0.57251799 0.66910553 0.17419182 0.20171067
		 0.57876796 0.23701847 0.47735336 0.27664706 0.27790195 0.28538308 0.48766476 0.51954019
		 0.71449685 0.22660729 0.20782116 0.14927147 0.30477005 0.37060627 0.68857247 0.25241801
		 0.5508135 0.15511644 0.16333966 0.16573741 0.91450053 0.84804517 ;
	setAttr ".mve" -type "floatArray" 146 0.29610351 0.25003278 0.27492371 0.30478704
		 0.21158193 0.25735709 0.22753149 0.24360061 0.23443589 0.23960629 0.3409434 0.29866582
		 0.33052871 0.34999362 0.28204769 0.31391057 0.26734272 0.2992056 0.25784692 0.29091918
		 0.36394012 0.37633312 0.34732202 0.33261704 0.32572433 0.4617312 0.48320886 0.46846169
		 0.39160773 0.34973398 0.89027143 0.84733176 0.99062777 0.9880892 0.95240885 0.91643465
		 0.82652038 0.9278931 0.9340843 0.99800003 0.23697913 0.20441219 0.24814874 0.28607425
		 0.27235201 0.19083601 0.24391189 0.20903507 0.20443763 0.22067557 0.18717703 0.21705578
		 0.16444528 0.23932268 0.1501534 0.20410906 0.26289877 0.20796821 0.22189753 0.18790296
		 0.15190896 0.24266943 0.31489775 0.16073905 0.3055121 0.14612107 0.27197945 0.17246494
		 0.11746358 0.2507109 0.77553254 0.65053403 0.6646958 0.70013213 0.64643461 0.6546225
		 0.84133637 0.62157863 0.88520461 0.54886955 0.97970235 0.58742565 0.98498219 0.77510178
		 0.70487773 0.75353748 0.86046189 0.78220278 0.82330304 0.81208825 0.75223142 0.56299496
		 0.75540757 0.77311367 0.61373782 0.56510937 0.70355934 0.86401075 0.81235784 0.85728669
		 0.73882192 0.83134544 0.81906396 0.84139246 0.81731516 0.73281527 0.15413296 0.20460516
		 0.16103193 0.43596441 0.065749057 0.5125885 0.17225547 0.64588857 0.72584742 0.33462656
		 0.77755374 0.77873856 0.88212913 0.9273746 0.30352673 0.34147987 0.26468906 0.2631205
		 0.43058515 0.23065856 0.50132716 0.9382956 0.7977134 0.20114879 0.31841063 0.24747053
		 0.33483523 0.22410801 0.29298627 0.34348726 0.0020000001 0.65367186 0.59894586 0.23141284
		 0.23492844 0.22519661 0.15834497 0.21488149 0.07579761 0.58163303 ;
	setAttr ".mnsl" -type "stringArray" 26 "|pCube3|pCubeShape3.map[136:145]" "|pCube3|pCubeShape3.map[134]" "|pCube3|pCubeShape3.map[130:132]" "|pCube3|pCubeShape3.map[127:128]" "|pCube3|pCubeShape3.map[124:125]" "|pCube3|pCubeShape3.map[120:121]" "|pCube3|pCubeShape3.map[106:109]" "|pCube3|pCubeShape3.map[104]" "|pCube3|pCubeShape3.map[100:101]" "|pCube3|pCubeShape3.map[96:97]" "|pCube3|pCubeShape3.map[91:93]" "|pCube3|pCubeShape3.map[83:84]" "|pCube3|pCubeShape3.map[75:76]" "|pCube3|pCubeShape3.map[69]" "|pCube3|pCubeShape3.map[67]" "|pCube3|pCubeShape3.map[61]" "|pCube3|pCubeShape3.map[58]" "|pCube3|pCubeShape3.map[53]" "|pCube3|pCubeShape3.map[46]" "|pCube3|pCubeShape3.map[34]" "|pCube3|pCubeShape3.map[25:28]" "|pCube3|pCubeShape3.map[10]" "|pCube3|pCubeShape3.map[8]" "|pCube3|pCubeShape3.map[6]" "|pCube3|pCubeShape3.map[3:4]" "|pCube3|pCubeShape3.map[0:1]"  ;
createNode Unfold3DUnfold -n "Unfold3DUnfold3";
	setAttr ".uvl" -type "Int32Array" 54 0 1 3 4 6 8
		 10 25 26 27 28 34 46 53 58 61 67 69
		 75 76 83 84 91 92 93 96 97 100 101 104
		 106 107 108 109 120 121 124 125 127 128 130 131
		 132 134 136 137 138 139 140 141 142 143 144 145 ;
	setAttr ".ite" 4;
	setAttr ".rspac" 0;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|pCube3|pCubeShape3";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 90 4 ;
	setAttr ".fpve" -type "Int32Array" 360 0 1 2 3 1 4
		 5 2 4 6 7 5 6 8 9 7 10 11
		 12 13 11 14 15 12 14 16 17 15 16 18
		 19 17 13 12 20 21 12 15 22 20 15 17
		 23 22 17 19 24 23 21 20 25 26 20 22
		 27 25 22 23 28 27 23 24 29 28 30 31
		 32 33 31 34 35 32 34 36 37 35 36 38
		 39 37 40 41 42 43 41 44 45 42 44 46
		 47 45 46 48 49 47 43 42 50 51 42 45
		 52 50 45 47 53 52 47 49 54 53 51 50
		 55 56 50 52 57 55 52 53 58 57 53 54
		 59 58 60 61 62 63 61 64 65 62 64 66
		 67 65 66 68 69 67 70 71 72 73 71 74
		 75 72 76 77 78 79 77 80 81 78 81 80
		 82 83 84 85 86 87 87 86 88 89 89 88
		 90 91 70 73 92 93 94 95 96 97 97 96
		 98 99 99 98 100 101 102 103 104 105 59 54
		 106 107 19 18 108 109 54 49 110 106 24 19
		 109 111 49 48 112 110 39 38 113 114 29 24
		 111 115 116 117 118 119 10 13 120 121 51 56
		 122 123 13 21 124 120 43 51 123 125 21 26
		 126 124 30 33 127 128 40 43 125 129 2 5
		 14 11 3 2 11 10 93 92 117 116 56 55
		 61 60 55 57 64 61 57 58 66 64 58 59
		 68 66 83 82 103 102 7 9 18 16 5 7
		 16 14 120 124 130 131 121 120 131 132 119 118
		 95 94 123 122 133 134 125 123 134 135 129 125
		 135 136 128 127 101 100 124 126 137 130 115 111
		 138 139 114 113 91 90 110 112 140 141 106 110
		 141 142 107 106 142 143 105 104 85 84 109 108
		 144 145 111 109 145 138 ;
	setAttr ".mue" -type "floatArray" 146 0.6643157 0.69484919 0.69223326 0.65547597
		 0.71508795 0.72795105 0.74975562 0.76530445 0.78686988 0.79588556 0.68381459 0.7024259
		 0.71610469 0.6861347 0.73855084 0.75222963 0.77549696 0.78917581 0.81308728 0.82394487
		 0.73044831 0.70913392 0.76657325 0.80351949 0.82719523 0.69983023 0.65876222 0.73698235
		 0.80619073 0.82748121 0.32392722 0.30465269 0.35303804 0.34752864 0.34765679 0.29341546
		 0.31185207 0.33737585 0.38353238 0.38874102 0.24408203 0.27748835 0.20912191 0.18914622
		 0.21363845 0.23966676 0.20488517 0.21490715 0.20881581 0.17441741 0.24808796 0.24234171
		 0.24343687 0.1876812 0.21609718 0.21109866 0.17838426 0.18088359 0.19532134 0.15489736
		 0.25663087 0.17194353 0.067120306 0.27958921 0.061213877 0.27523324 0.074527159 0.0020000001
		 0.21559577 0.17678872 0.29820642 0.19888219 0.34284315 0.22687995 0.32103765 0.36400095
		 0.43165329 0.31335729 0.49841017 0.37116206 0.47458974 0.36978272 0.46409309 0.39463961
		 0.46864751 0.31813949 0.38452411 0.3200092 0.40293366 0.33168572 0.41114059 0.53965753
		 0.29590917 0.1926017 0.24600174 0.25310251 0.26546645 0.22621232 0.27444607 0.27176782
		 0.32503068 0.30434722 0.35006082 0.36749941 0.32221252 0.44200537 0.19086912 0.16373535
		 0.89002037 0.8554374 0.26673678 0.6336264 0.3570357 0.42484188 0.40270457 0.59344953
		 0.12454746 0.16595094 0.30944157 0.30775574 0.62743264 0.72558892 0.1837568 0.21127278
		 0.64360362 0.24246976 0.53705376 0.31953341 0.32081234 0.28695381 0.52901506 0.5734306
		 0.77193856 0.23092061 0.22231483 0.16963714 0.28223181 0.41449755 0.74711025 0.31128645
		 0.5494498 0.16355145 0.16475874 0.17041118 0.96396685 0.90456986 ;
	setAttr ".mve" -type "floatArray" 146 0.27551806 0.24161105 0.26340628 0.28488693
		 0.20642816 0.24558425 0.21995649 0.23150939 0.22533481 0.22717364 0.33140242 0.28675598
		 0.31809226 0.33771896 0.26986676 0.30120301 0.25485909 0.28619534 0.24499458 0.27756238
		 0.35095143 0.36347562 0.33406225 0.31905457 0.31193978 0.45418969 0.47975892 0.45827574
		 0.36813906 0.33567902 0.88990289 0.84681731 0.99059808 0.98805028 0.95301425 0.91614908
		 0.82593751 0.927652 0.93387032 0.99800003 0.2456082 0.2075308 0.261922 0.30364391
		 0.28615755 0.19882263 0.25613186 0.2219874 0.21706556 0.23850763 0.1938982 0.22538446
		 0.17119278 0.25677362 0.16029811 0.21641196 0.28132886 0.22455965 0.23266155 0.20754732
		 0.15648896 0.26144165 0.35014671 0.16238008 0.34132388 0.14796804 0.30503666 0.21609439
		 0.12678947 0.26124522 0.77477765 0.6493482 0.6635775 0.69911569 0.64525235 0.65347362
		 0.84081984 0.62031233 0.88484383 0.54736888 0.97965342 0.58605343 0.98494935 0.77435905
		 0.70335555 0.75271207 0.86000252 0.78147322 0.82272232 0.81146002 0.75141478 0.56156522
		 0.75336701 0.77278054 0.61243588 0.56364626 0.70255977 0.86354083 0.81172246 0.85680079
		 0.73794836 0.83077759 0.8184616 0.84086704 0.8163715 0.73193818 0.16780978 0.22209936
		 0.14828481 0.4205986 0.06658861 0.49916956 0.16348593 0.64471912 0.72494155 0.32369193
		 0.77678108 0.77797574 0.88173139 0.92712754 0.29016379 0.33104625 0.28242388 0.27700275
		 0.41800866 0.23945101 0.48925167 0.93808663 0.79703569 0.2028681 0.29592475 0.23446873
		 0.32372397 0.23420972 0.30686921 0.36531824 0.0020000001 0.65372616 0.58313566 0.22518475
		 0.19023474 0.24056095 0.17563362 0.2324751 0.063064709 0.56402874 ;
	setAttr ".mnsl" -type "stringArray" 26 "|pCube3|pCubeShape3.map[136:145]" "|pCube3|pCubeShape3.map[134]" "|pCube3|pCubeShape3.map[130:132]" "|pCube3|pCubeShape3.map[127:128]" "|pCube3|pCubeShape3.map[124:125]" "|pCube3|pCubeShape3.map[120:121]" "|pCube3|pCubeShape3.map[106:109]" "|pCube3|pCubeShape3.map[104]" "|pCube3|pCubeShape3.map[100:101]" "|pCube3|pCubeShape3.map[96:97]" "|pCube3|pCubeShape3.map[91:93]" "|pCube3|pCubeShape3.map[83:84]" "|pCube3|pCubeShape3.map[75:76]" "|pCube3|pCubeShape3.map[69]" "|pCube3|pCubeShape3.map[67]" "|pCube3|pCubeShape3.map[61]" "|pCube3|pCubeShape3.map[58]" "|pCube3|pCubeShape3.map[53]" "|pCube3|pCubeShape3.map[46]" "|pCube3|pCubeShape3.map[34]" "|pCube3|pCubeShape3.map[25:28]" "|pCube3|pCubeShape3.map[10]" "|pCube3|pCubeShape3.map[8]" "|pCube3|pCubeShape3.map[6]" "|pCube3|pCubeShape3.map[3:4]" "|pCube3|pCubeShape3.map[0:1]"  ;
createNode Unfold3DUnfold -n "Unfold3DUnfold4";
	setAttr ".uvl" -type "Int32Array" 54 0 1 3 4 6 8
		 10 25 26 27 28 34 46 53 58 61 67 69
		 75 76 83 84 91 92 93 96 97 100 101 104
		 106 107 108 109 120 121 124 125 127 128 130 131
		 132 134 136 137 138 139 140 141 142 143 144 145 ;
	setAttr ".ite" 10;
	setAttr ".rspac" 0;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|pCube3|pCubeShape3";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 90 4 ;
	setAttr ".fpve" -type "Int32Array" 360 0 1 2 3 1 4
		 5 2 4 6 7 5 6 8 9 7 10 11
		 12 13 11 14 15 12 14 16 17 15 16 18
		 19 17 13 12 20 21 12 15 22 20 15 17
		 23 22 17 19 24 23 21 20 25 26 20 22
		 27 25 22 23 28 27 23 24 29 28 30 31
		 32 33 31 34 35 32 34 36 37 35 36 38
		 39 37 40 41 42 43 41 44 45 42 44 46
		 47 45 46 48 49 47 43 42 50 51 42 45
		 52 50 45 47 53 52 47 49 54 53 51 50
		 55 56 50 52 57 55 52 53 58 57 53 54
		 59 58 60 61 62 63 61 64 65 62 64 66
		 67 65 66 68 69 67 70 71 72 73 71 74
		 75 72 76 77 78 79 77 80 81 78 81 80
		 82 83 84 85 86 87 87 86 88 89 89 88
		 90 91 70 73 92 93 94 95 96 97 97 96
		 98 99 99 98 100 101 102 103 104 105 59 54
		 106 107 19 18 108 109 54 49 110 106 24 19
		 109 111 49 48 112 110 39 38 113 114 29 24
		 111 115 116 117 118 119 10 13 120 121 51 56
		 122 123 13 21 124 120 43 51 123 125 21 26
		 126 124 30 33 127 128 40 43 125 129 2 5
		 14 11 3 2 11 10 93 92 117 116 56 55
		 61 60 55 57 64 61 57 58 66 64 58 59
		 68 66 83 82 103 102 7 9 18 16 5 7
		 16 14 120 124 130 131 121 120 131 132 119 118
		 95 94 123 122 133 134 125 123 134 135 129 125
		 135 136 128 127 101 100 124 126 137 130 115 111
		 138 139 114 113 91 90 110 112 140 141 106 110
		 141 142 107 106 142 143 105 104 85 84 109 108
		 144 145 111 109 145 138 ;
	setAttr ".mue" -type "floatArray" 146 0.64072108 0.66982943 0.66775608 0.63228399
		 0.68884063 0.70229292 0.72304821 0.73851281 0.7594673 0.76832592 0.66103578 0.67824465
		 0.69232059 0.66344553 0.71320045 0.72727638 0.74900126 0.76307726 0.7855466 0.79689074
		 0.70708072 0.68651313 0.74203646 0.7778374 0.80083495 0.67943287 0.63983583 0.71586019
		 0.7815426 0.80164307 0.31741923 0.29862219 0.34578961 0.34041139 0.34055546 0.28761226
		 0.3056632 0.33053052 0.37559605 0.38064724 0.23822232 0.2715697 0.20377634 0.1834715
		 0.20772 0.23481108 0.19983569 0.21077025 0.20433989 0.17034376 0.24312755 0.23691201
		 0.23902313 0.18474749 0.21254025 0.20658125 0.1733934 0.17692499 0.19296628 0.15188114
		 0.2521874 0.1675152 0.063440919 0.27448887 0.057843968 0.27051312 0.071539663 0.0020000001
		 0.21269496 0.17178193 0.29236677 0.19545092 0.3360118 0.222762 0.31473005 0.35667646
		 0.42595515 0.30724415 0.4877933 0.36372623 0.4644829 0.36235848 0.45423076 0.38665879
		 0.45883009 0.31184208 0.37660435 0.31365216 0.39460024 0.32503733 0.40265235 0.52847332
		 0.29013523 0.18925166 0.24148007 0.24843989 0.26054531 0.22206017 0.26914635 0.26650685
		 0.32177442 0.29816225 0.34297562 0.35999116 0.31578469 0.43280035 0.18720159 0.16011964
		 0.87242329 0.81934667 0.26378244 0.61568397 0.35008028 0.41608846 0.39442942 0.5724833
		 0.12279893 0.16322611 0.30327934 0.30160868 0.60497391 0.70188498 0.17861767 0.20558634
		 0.62363553 0.23676659 0.52101105 0.31283361 0.31495923 0.28090066 0.50884557 0.55091792
		 0.74705392 0.22559167 0.21579273 0.16323863 0.28015235 0.40480691 0.70476669 0.30112115
		 0.53820777 0.15978006 0.16155905 0.16598482 0.95104468 0.85571367 ;
	setAttr ".mve" -type "floatArray" 146 0.28705865 0.25321648 0.27459136 0.29641858
		 0.2183556 0.2563656 0.23081522 0.24176833 0.2352493 0.23684709 0.34128186 0.29720148
		 0.3275452 0.34740806 0.279879 0.31022269 0.26437846 0.29472217 0.25389382 0.28550485
		 0.35936359 0.37208724 0.34204113 0.32654062 0.31905505 0.46101654 0.48693845 0.46418586
		 0.37448785 0.34226668 0.89241505 0.85033435 0.99075317 0.98826241 0.95405209 0.91802627
		 0.82995045 0.92928189 0.93537867 0.99800003 0.23910649 0.20257297 0.25436187 0.29471183
		 0.27811038 0.19334385 0.24907409 0.21523219 0.21056168 0.23083469 0.18869792 0.21932817
		 0.16644071 0.24882117 0.15527838 0.20996745 0.27271825 0.21734129 0.22614317 0.20023218
		 0.15233871 0.25323233 0.33776745 0.15853174 0.32903999 0.1443772 0.29386795 0.20626441
		 0.12255353 0.2537066 0.77998877 0.65746129 0.67143315 0.7060712 0.65352803 0.66157877
		 0.84567559 0.62917155 0.88756961 0.55797827 0.98013216 0.59575045 0.98529762 0.77988434
		 0.71034187 0.75845397 0.86325204 0.78653836 0.82686031 0.81582487 0.75723755 0.57158226
		 0.75908142 0.77798164 0.62144428 0.57380819 0.709387 0.86654878 0.81605017 0.8600648
		 0.74368531 0.83516377 0.82267141 0.8445583 0.82061547 0.73823661 0.16218054 0.21484315
		 0.16700642 0.43292728 0.064761363 0.50648242 0.16110039 0.65306354 0.73138356 0.33575213
		 0.78185111 0.78303999 0.88442832 0.92875379 0.30220374 0.34000367 0.27389064 0.26912689
		 0.42688149 0.23306409 0.49893191 0.9388715 0.8030985 0.19820267 0.31002891 0.24893363
		 0.33181047 0.22772487 0.29849842 0.35455072 0.0020000001 0.66252297 0.59167266 0.22173789
		 0.19244969 0.2330772 0.16931713 0.22492136 0.093379527 0.58123314 ;
	setAttr ".mnsl" -type "stringArray" 26 "|pCube3|pCubeShape3.map[136:145]" "|pCube3|pCubeShape3.map[134]" "|pCube3|pCubeShape3.map[130:132]" "|pCube3|pCubeShape3.map[127:128]" "|pCube3|pCubeShape3.map[124:125]" "|pCube3|pCubeShape3.map[120:121]" "|pCube3|pCubeShape3.map[106:109]" "|pCube3|pCubeShape3.map[104]" "|pCube3|pCubeShape3.map[100:101]" "|pCube3|pCubeShape3.map[96:97]" "|pCube3|pCubeShape3.map[91:93]" "|pCube3|pCubeShape3.map[83:84]" "|pCube3|pCubeShape3.map[75:76]" "|pCube3|pCubeShape3.map[69]" "|pCube3|pCubeShape3.map[67]" "|pCube3|pCubeShape3.map[61]" "|pCube3|pCubeShape3.map[58]" "|pCube3|pCubeShape3.map[53]" "|pCube3|pCubeShape3.map[46]" "|pCube3|pCubeShape3.map[34]" "|pCube3|pCubeShape3.map[25:28]" "|pCube3|pCubeShape3.map[10]" "|pCube3|pCubeShape3.map[8]" "|pCube3|pCubeShape3.map[6]" "|pCube3|pCubeShape3.map[3:4]" "|pCube3|pCubeShape3.map[0:1]"  ;
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.15116335 0.070673771 ;
	setAttr ".uvtk[1]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[3]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[4]" -type "float2" -0.15116335 0.070673771 ;
	setAttr ".uvtk[6]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[8]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[10]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[25]" -type "float2" -0.15116337 0.070673741 ;
	setAttr ".uvtk[26]" -type "float2" -0.15116337 0.070673801 ;
	setAttr ".uvtk[27]" -type "float2" -0.15116337 0.070673801 ;
	setAttr ".uvtk[28]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[34]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[46]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[53]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[58]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[61]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[67]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[69]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[75]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[76]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[83]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[84]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[91]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[92]" -type "float2" -0.15116331 0.070673801 ;
	setAttr ".uvtk[93]" -type "float2" -0.15116331 0.070673741 ;
	setAttr ".uvtk[96]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[97]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[100]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[101]" -type "float2" -0.15116331 0.070673741 ;
	setAttr ".uvtk[104]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[106]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[107]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[108]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[109]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[120]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[121]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[124]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[125]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[127]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[128]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[130]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[131]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[132]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[134]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[136]" -type "float2" -0.15116334 0.070673741 ;
	setAttr ".uvtk[137]" -type "float2" -0.15116331 0.070673801 ;
	setAttr ".uvtk[138]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[139]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[140]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[141]" -type "float2" -0.15116337 0.070673801 ;
	setAttr ".uvtk[142]" -type "float2" -0.15116335 0.070673801 ;
	setAttr ".uvtk[143]" -type "float2" -0.15116335 0.070673741 ;
	setAttr ".uvtk[144]" -type "float2" -0.15116334 0.070673801 ;
	setAttr ".uvtk[145]" -type "float2" -0.15116334 0.070673771 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold5";
	setAttr ".uvl" -type "Int32Array" 1 3 ;
	setAttr ".ite" 10;
	setAttr ".rspac" 0;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|pCube3|pCubeShape3";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 90 4 ;
	setAttr ".fpve" -type "Int32Array" 360 0 1 2 3 1 4
		 5 2 4 6 7 5 6 8 9 7 10 11
		 12 13 11 14 15 12 14 16 17 15 16 18
		 19 17 13 12 20 21 12 15 22 20 15 17
		 23 22 17 19 24 23 21 20 25 26 20 22
		 27 25 22 23 28 27 23 24 29 28 30 31
		 32 33 31 34 35 32 34 36 37 35 36 38
		 39 37 40 41 42 43 41 44 45 42 44 46
		 47 45 46 48 49 47 43 42 50 51 42 45
		 52 50 45 47 53 52 47 49 54 53 51 50
		 55 56 50 52 57 55 52 53 58 57 53 54
		 59 58 60 61 62 63 61 64 65 62 64 66
		 67 65 66 68 69 67 70 71 72 73 71 74
		 75 72 76 77 78 79 77 80 81 78 81 80
		 82 83 84 85 86 87 87 86 88 89 89 88
		 90 91 70 73 92 93 94 95 96 97 97 96
		 98 99 99 98 100 101 102 103 104 105 59 54
		 106 107 19 18 108 109 54 49 110 106 24 19
		 109 111 49 48 112 110 39 38 113 114 29 24
		 111 115 116 117 118 119 10 13 120 121 51 56
		 122 123 13 21 124 120 43 51 123 125 21 26
		 126 124 30 33 127 128 40 43 125 129 2 5
		 14 11 3 2 11 10 93 92 117 116 56 55
		 61 60 55 57 64 61 57 58 66 64 58 59
		 68 66 83 82 103 102 7 9 18 16 5 7
		 16 14 120 124 130 131 121 120 131 132 119 118
		 95 94 123 122 133 134 125 123 134 135 129 125
		 135 136 128 127 101 100 124 126 137 130 115 111
		 138 139 114 113 91 90 110 112 140 141 106 110
		 141 142 107 106 142 143 105 104 85 84 109 108
		 144 145 111 109 145 138 ;
	setAttr ".mue" -type "floatArray" 146 0.40084237 0.42994595 0.59072977 0.41637552
		 0.44774872 0.62733251 0.4868851 0.66614574 0.52771729 0.69876367 0.42850772 0.6045047
		 0.62299109 0.59282571 0.64165771 0.66014409 0.67992055 0.69840699 0.71948344 0.73505813
		 0.64237601 0.62075478 0.67952901 0.71779197 0.74260455 0.46023425 0.41874337 0.50095606
		 0.56536806 0.74569416 0.80304831 0.78717583 0.82396084 0.81858474 0.65832621 0.76980829
		 0.79628056 0.81346285 0.85980159 0.85958201 0.4060615 0.44716832 0.36787289 0.33940277
		 0.36739999 0.41126344 0.19654478 0.38247424 0.37677401 0.33809268 0.42066649 0.40847778
		 0.42069128 0.18113515 0.39568117 0.37918317 0.3332575 0.34739935 0.19386494 0.32499364
		 0.43685785 0.16264261 0.20825058 0.45852852 0.20417514 0.45714533 0.22489028 0.0020000001
		 0.40205866 0.16692367 0.78681797 0.6967271 0.84170002 0.72088414 0.82113028 0.7006557
		 0.75662065 0.81547314 0.98067385 0.88044119 0.94833916 0.87571728 0.93722469 0.72149962
		 0.80264133 0.80895597 0.86715418 0.80838394 0.88905197 0.81766576 0.90351188 0.8872034
		 0.622926 0.51634747 0.74774885 0.75915104 0.59649354 0.54272997 0.75951517 0.75292295
		 0.65717876 0.62462503 0.83572453 0.85150909 0.64422524 0.9365288 0.20011447 0.1623614
		 0.64661449 0.61283922 0.46537998 0.55485427 0.53548288 0.9265914 0.89721906 0.49078614
		 0.61029172 0.65223515 0.78903979 0.78342807 0.36260548 0.47371626 0.33838689 0.36692131
		 0.39509255 0.23742259 0.44908491 0.63082021 0.64489764 0.4575583 0.25667363 0.29758832
		 0.52306503 0.39528453 0.20350003 0.30730268 0.32578203 0.17452611 0.5006901 0.017826077
		 0.55396384 0.15854827 0.17248775 0.16645494 0.72690278 0.66720575 ;
	setAttr ".mve" -type "floatArray" 146 0.33665335 0.29634961 0.22755882 0.36053389
		 0.25586933 0.20407136 0.2664637 0.18445133 0.26794344 0.17617379 0.39490426 0.25165781
		 0.28399962 0.30876884 0.2291331 0.26147488 0.2085503 0.24089213 0.19346321 0.22746941
		 0.3179132 0.3339754 0.29538855 0.27480578 0.26432657 0.52603263 0.55853838 0.52610815
		 0.42036733 0.29000756 0.87157625 0.82616627 0.97633505 0.97327441 0.99800003 0.89560872
		 0.80558085 0.91106653 0.92134643 0.98691893 0.193267 0.16217615 0.20234987 0.23982921
		 0.22742939 0.14573544 0.23986118 0.16359109 0.15758419 0.17189305 0.14255621 0.17275533
		 0.11897396 0.23673476 0.1025055 0.15740135 0.21538182 0.15931991 0.21506332 0.13703251
		 0.10702835 0.23797907 0.26112866 0.11761118 0.25112385 0.10235448 0.21769322 0.15840662
		 0.069008663 0.2392758 0.75245476 0.61654627 0.64336324 0.66949129 0.62288052 0.69521439
		 0.89274418 0.59689361 0.88142753 0.52778375 0.97566229 0.56695014 0.98013872 0.82088172
		 0.75485998 0.73175907 0.84641737 0.76112717 0.81014001 0.79258245 0.7384308 0.61662626
		 0.79080886 0.80164915 0.58310884 0.53417194 0.73653662 0.89663327 0.78793186 0.83347976
		 0.77756095 0.87064183 0.8012712 0.82552242 0.85705066 0.72130334 0.14843878 0.19724436
		 0.18154481 0.48164457 0.019509904 0.48980173 0.13460808 0.63125622 0.71082199 0.3044281
		 0.73957133 0.74434125 0.86203367 0.9079895 0.35683665 0.38962662 0.21757573 0.21782044
		 0.49342519 0.23047742 0.49036723 0.97978801 0.8387596 0.15947208 0.37460157 0.30283108
		 0.37626764 0.17920634 0.29352826 0.29728839 0.0020000001 0.77558404 0.668625 0.29625189
		 0.2461541 0.21586046 0.15087709 0.208684 0.092415296 0.64277995 ;
	setAttr ".mnsl" -type "stringArray" 1 "|pCube3|pCubeShape3.map[3]"  ;
createNode Unfold3DUnfold -n "Unfold3DUnfold6";
	setAttr ".uvl" -type "Int32Array" 54 0 1 3 4 6 8
		 10 25 26 27 28 34 46 53 58 61 67 69
		 75 76 83 84 91 92 93 96 97 100 101 104
		 106 107 108 109 120 121 124 125 127 128 130 131
		 132 134 136 137 138 139 140 141 142 143 144 145 ;
	setAttr ".ite" 10;
	setAttr ".rspac" 0;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|pCube3|pCubeShape3";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 90 4 ;
	setAttr ".fpve" -type "Int32Array" 360 0 1 2 3 1 4
		 5 2 4 6 7 5 6 8 9 7 10 11
		 12 13 11 14 15 12 14 16 17 15 16 18
		 19 17 13 12 20 21 12 15 22 20 15 17
		 23 22 17 19 24 23 21 20 25 26 20 22
		 27 25 22 23 28 27 23 24 29 28 30 31
		 32 33 31 34 35 32 34 36 37 35 36 38
		 39 37 40 41 42 43 41 44 45 42 44 46
		 47 45 46 48 49 47 43 42 50 51 42 45
		 52 50 45 47 53 52 47 49 54 53 51 50
		 55 56 50 52 57 55 52 53 58 57 53 54
		 59 58 60 61 62 63 61 64 65 62 64 66
		 67 65 66 68 69 67 70 71 72 73 71 74
		 75 72 76 77 78 79 77 80 81 78 81 80
		 82 83 84 85 86 87 87 86 88 89 89 88
		 90 91 70 73 92 93 94 95 96 97 97 96
		 98 99 99 98 100 101 102 103 104 105 59 54
		 106 107 19 18 108 109 54 49 110 106 24 19
		 109 111 49 48 112 110 39 38 113 114 29 24
		 111 115 116 117 118 119 10 13 120 121 51 56
		 122 123 13 21 124 120 43 51 123 125 21 26
		 126 124 30 33 127 128 40 43 125 129 2 5
		 14 11 3 2 11 10 93 92 117 116 56 55
		 61 60 55 57 64 61 57 58 66 64 58 59
		 68 66 83 82 103 102 7 9 18 16 5 7
		 16 14 120 124 130 131 121 120 131 132 119 118
		 95 94 123 122 133 134 125 123 134 135 129 125
		 135 136 128 127 101 100 124 126 137 130 115 111
		 138 139 114 113 91 90 110 112 140 141 106 110
		 141 142 107 106 142 143 105 104 85 84 109 108
		 144 145 111 109 145 138 ;
	setAttr ".mue" -type "floatArray" 146 0.64086777 0.66994601 0.66787481 0.63243937
		 0.68893754 0.70237595 0.72310984 0.73855847 0.75949132 0.76834077 0.66116148 0.67835253
		 0.69241393 0.66356874 0.71327221 0.72733361 0.74903607 0.76309752 0.78554368 0.79687607
		 0.7071588 0.68661255 0.74207848 0.77784246 0.80081624 0.67953962 0.63998342 0.71592927
		 0.78154379 0.80162346 0.31549847 0.29672083 0.34383956 0.33846685 0.3386108 0.28572223
		 0.30375454 0.3285962 0.37361518 0.37866113 0.23837358 0.27097806 0.20424473 0.18475489
		 0.20866273 0.23404694 0.20010614 0.20987993 0.20393085 0.17035216 0.24226756 0.2366676
		 0.23771873 0.18330877 0.21102118 0.20615955 0.17423967 0.17666093 0.19076034 0.15128283
		 0.25059614 0.16797316 0.065626994 0.27301413 0.059857138 0.26875624 0.072843768 0.0020000001
		 0.21052039 0.17267507 0.29047182 0.19365609 0.33407179 0.22093895 0.312812 0.35471508
		 0.42392221 0.30533382 0.48569649 0.36175755 0.46241018 0.3603912 0.45216861 0.38466641
		 0.45676321 0.30992705 0.37462237 0.31173521 0.3925997 0.32310867 0.40064347 0.52633446
		 0.28824258 0.18746327 0.23963769 0.24659032 0.25868326 0.22023788 0.26727542 0.26463863
		 0.31984913 0.29626137 0.34102839 0.35802639 0.3138656 0.43076032 0.18639158 0.15991691
		 0.87233055 0.81930882 0.26043323 0.61585647 0.34863159 0.41406572 0.39242902 0.5727005
		 0.1210792 0.1614646 0.30137318 0.29970422 0.60515749 0.70196843 0.17948565 0.20634988
		 0.62379986 0.23679733 0.52128142 0.31091759 0.31304097 0.28021833 0.50912845 0.5511573
		 0.7470907 0.22551924 0.21714112 0.16572732 0.27554062 0.40519732 0.70484722 0.30161864
		 0.53650951 0.15974356 0.16090059 0.16643853 0.95087075 0.85563827 ;
	setAttr ".mve" -type "floatArray" 146 0.28550816 0.251701 0.2730538 0.29485843
		 0.21687612 0.25484687 0.22932287 0.24026468 0.23375237 0.23534851 0.3396754 0.29564059
		 0.32595292 0.34579527 0.27833599 0.30864832 0.26285145 0.29316381 0.25237763 0.28395599
		 0.35773844 0.37044895 0.3404339 0.32494938 0.31747153 0.45928639 0.48518154 0.46245244
		 0.37284711 0.3406592 0.89252406 0.85048687 0.99076062 0.98827243 0.95409739 0.91810882
		 0.83012402 0.92935282 0.93544328 0.99800003 0.23986658 0.20267743 0.25580674 0.29654983
		 0.27946827 0.19418764 0.25015479 0.2168135 0.21200998 0.23295708 0.1893767 0.22012115
		 0.16720918 0.25078714 0.15658103 0.21137106 0.27476549 0.21933641 0.22724208 0.20273463
		 0.15284826 0.25540385 0.34199503 0.15859254 0.33338261 0.14452238 0.29794806 0.21113107
		 0.12386407 0.25515676 0.78021395 0.65781307 0.67177051 0.70637274 0.65388387 0.66192627
		 0.84583288 0.62955254 0.88768363 0.55843282 0.98015058 0.59616596 0.98531073 0.78010964
		 0.710639 0.75870138 0.86339122 0.78675675 0.82703704 0.81601304 0.75748622 0.5720228
		 0.75932819 0.77820897 0.62183332 0.57424641 0.70968515 0.86668456 0.81623811 0.86020726
		 0.74394792 0.83533192 0.82285249 0.84471679 0.8207987 0.73850495 0.16392371 0.21693997
		 0.16557997 0.43122616 0.065068111 0.50470531 0.15964632 0.65341985 0.73165894 0.33415139
		 0.78207439 0.78326207 0.88454562 0.92882532 0.30063763 0.33839852 0.27583283 0.27053055
		 0.42518663 0.23385537 0.49716261 0.93893248 0.80329978 0.19812171 0.30845475 0.24742258
		 0.33021376 0.22874175 0.2996878 0.35677382 0.0020000001 0.66058469 0.58980757 0.22025491
		 0.18569884 0.23496552 0.17157148 0.22706839 0.092029132 0.57937878 ;
	setAttr ".mnsl" -type "stringArray" 26 "|pCube3|pCubeShape3.map[136:145]" "|pCube3|pCubeShape3.map[134]" "|pCube3|pCubeShape3.map[130:132]" "|pCube3|pCubeShape3.map[127:128]" "|pCube3|pCubeShape3.map[124:125]" "|pCube3|pCubeShape3.map[120:121]" "|pCube3|pCubeShape3.map[106:109]" "|pCube3|pCubeShape3.map[104]" "|pCube3|pCubeShape3.map[100:101]" "|pCube3|pCubeShape3.map[96:97]" "|pCube3|pCubeShape3.map[91:93]" "|pCube3|pCubeShape3.map[83:84]" "|pCube3|pCubeShape3.map[75:76]" "|pCube3|pCubeShape3.map[69]" "|pCube3|pCubeShape3.map[67]" "|pCube3|pCubeShape3.map[61]" "|pCube3|pCubeShape3.map[58]" "|pCube3|pCubeShape3.map[53]" "|pCube3|pCubeShape3.map[46]" "|pCube3|pCubeShape3.map[34]" "|pCube3|pCubeShape3.map[25:28]" "|pCube3|pCubeShape3.map[10]" "|pCube3|pCubeShape3.map[8]" "|pCube3|pCubeShape3.map[6]" "|pCube3|pCubeShape3.map[3:4]" "|pCube3|pCubeShape3.map[0:1]"  ;
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 146 ".uvtk[0:145]" -type "float2" -0.29426298 -0.29672682 -0.29362649
		 -0.30292293 -0.18647934 0.767093 -0.29441571 -0.29459125 -0.29446322 -0.30541828
		 -0.27193916 0.69883025 -0.27115563 -0.29513034 -0.34996772 0.62218392 -0.27449262
		 -0.28987098 -0.39598134 0.55115277 -0.29466736 -0.29105604 -0.14017397 0.71485066
		 -0.07803046 0.64473939 0.0052937106 0.69663346 -0.22378397 0.64450085 -0.16164035
		 0.5743897 -0.30366242 0.56994158 -0.24151877 0.49983037 -0.37149674 0.48785529 -0.30304089
		 0.42333892 -0.012866578 0.57122046 0.042827349 0.60977966 -0.096476339 0.50087082
		 -0.17635489 0.42631155 -0.22132128 0.37564954 -0.28888202 -0.28500137 -0.28999245
		 -0.28620052 -0.28898454 -0.28001663 -0.28597867 -0.28399444 -0.16263343 0.34758681
		 0.64504218 0.0093234517 0.53769922 0.022809874 0.76305449 -0.0037802653 0.76516628
		 0.11493849 -0.28597313 -0.27960953 0.5242492 0.10185111 0.47892943 0.051202226 0.60469306
		 0.17633633 0.68886346 0.24658285 0.74489766 0.28504559 0.46469563 0.16958609 0.39713064
		 0.099378817 0.53960896 0.2503615 0.62931001 0.31431773 0.70758921 0.37233889 0.40262806
		 0.24018019 -0.29593298 -0.28732094 0.4775413 0.32095569 0.56724238 0.38491178 0.64906162
		 0.45638135 0.3015964 0.22942163 0.33247033 0.31997603 0.290088 0.36818081 -0.29576582
		 -0.2920523 0.39965582 0.40954092 0.35260502 0.46305534 0.49708474 0.46470761 0.45470235
		 0.51291233 -0.27726111 -0.28383178 0.55567849 0.5002591 -0.4117997 0.44509012 -0.2793867
		 -0.2827729 0.80375427 0.42558774 -0.36759195 0.33481565 0.86340892 0.3314949 -0.28191021
		 0.26418576 0.82657123 0.24782349 -0.28156209 -0.28944734 0.28809857 0.12164004 -0.29320586
		 -0.2927627 0.10092638 0.75009012 0.33200899 0.010821571 0.16075894 0.65654862 0.41769081
		 -0.060387485 0.12437837 0.57300806 -0.29058293 -0.28737882 -0.27917975 -0.28205737
		 -0.38999003 0.46823204 0.75171536 0.39677265 -0.33266076 0.38271934 0.79927742 0.30635932
		 -0.24912299 0.32450351 0.79354066 0.23445815 -0.28307843 -0.28663406 -0.29399821
		 -0.29183686 0.30609047 0.14688313 0.049059723 0.72109783 0.36732805 0.058850966 0.096798271
		 0.63118327 0.45090386 0.00013353734 0.091437533 0.55952466 -0.29113528 -0.28422374
		 -0.2777282 -0.28619713 -0.27777779 -0.28741202 -0.17730442 0.32128823 -0.1946062
		 0.29027396 -0.28952637 -0.28886282 -0.28897399 -0.29201791 -0.028893407 0.78830105
		 -0.0032431055 0.80721706 -0.27569488 -0.28809932 -0.2776854 -0.28516698 -0.11043787
		 0.80424613 -0.050537594 0.77233964 -0.29206535 -0.28706455 0.063641392 0.5481472
		 -0.29368585 -0.28687614 -0.28220147 -0.2836436 -0.28436422 -0.28424853 -0.28104562
		 -0.28249234 -0.41077244 0.58939081 -0.14662363 0.82352096 -0.05559339 0.33457452
		 0.062079031 0.32198641 0.063709013 0.44031906 -0.41080317 0.69081932 -0.34887341
		 0.78562862 -0.2473148 0.83572829 0.67219156 0.46874404 0.69946915 0.48332357 -0.28468734
		 -0.28199503 -0.283171 -0.28480825 0.52291268 -0.003447334 0.50538945 -0.034564458
		 -0.29542136 -0.28768849 -0.29481477 -0.28812361 0.59084648 0.48373485 -0.27620727
		 -0.28526992 -0.29582855 -0.29027048 0.28971031 0.26641563 -0.29367426 -0.2824254
		 -0.29160136 -0.28156146 -0.29529476 -0.28223714 0.32127225 0.16818357 -0.28381038
		 -0.27900448 0.76553267 0.22312482 -0.28265452 -0.27785313 -0.27900475 -0.2814506
		 -0.27287012 -0.29052925 -0.29596606 -0.30074373 -0.29512933 -0.29824838 -0.28758755
		 -0.27935538 -0.29059345 -0.27537754 -0.29049096 -0.28036228 -0.270668 -0.29197046
		 -0.26895341 -0.29657155;
createNode polyMapDel -n "polyMapDel2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[16:19]" "f[36:48]" "f[54]" "f[56]" "f[62]" "f[66]" "f[71]" "f[76]" "f[80]" "f[83]" "f[87]";
createNode polySphProj -n "polySphProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[16:19]" "f[36:48]" "f[54]" "f[56]" "f[62]" "f[66]" "f[71]" "f[76]" "f[80]" "f[83]" "f[87]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 0 -3.0616266158090979 3.2255990755578203 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0 -2.6103860139846802 2.2863479852676392 ;
	setAttr ".ic" -type "double2" 0.30678141906809531 0.49348700578149896 ;
	setAttr ".is" -type "double2" 0.37185870148168421 0.41817327920381009 ;
	setAttr ".r" 11.28870964050293;
createNode polyTweakUV -n "polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 11 ".uvtk";
	setAttr ".uvtk[96]" -type "float2" -0.13707332 -0.056787521 ;
	setAttr ".uvtk[97]" -type "float2" 0.1821117 -0.0607039 ;
	setAttr ".uvtk[98]" -type "float2" -0.0039163809 0.005874557 ;
	setAttr ".uvtk[105]" -type "float2" 0.1801535 0.064620271 ;
	setAttr ".uvtk[107]" -type "float2" 0.0039163777 0.0097909551 ;
	setAttr ".uvtk[142]" -type "float2" 0.029372809 2.514571e-008 ;
	setAttr ".uvtk[143]" -type "float2" -0.2232337 -0.092034966 ;
	setAttr ".uvtk[144]" -type "float2" -0.59724808 -0.027414663 ;
	setAttr ".uvtk[145]" -type "float2" -0.60508084 0.086160332 ;
	setAttr ".uvtk[146]" -type "float2" -0.1605716 0.060703889 ;
	setAttr ".uvtk[147]" -type "float2" -0.027414702 0.0842022 ;
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[87]";
createNode polyTweakUV -n "polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 149 ".uvtk[0:148]" -type "float2" 0.13915969 -0.016734436 0.13745713
		 -0.029495759 0.13706888 -0.042364262 0.13894391 -0.052148096 0.14734966 -0.017402554
		 0.15834086 -0.018299188 0.1611951 -0.0071028122 0.14597426 -0.030190572 0.15696546
		 -0.031087188 0.14525883 -0.043032389 0.15625007 -0.043929014 0.14617996 -0.055532891
		 0.15725192 -0.055439968 0.16986629 -0.019239418 0.17145862 -0.011426611 0.16849092
		 -0.032027405 0.16777547 -0.044869233 0.16808049 -0.052836809 0.17535336 -0.050441649
		 -0.30591983 -0.18999243 -0.3161402 -0.19758905 -0.29482403 -0.18149428 -0.30431372
		 -0.17123362 -0.32372081 -0.19196764 -0.3234469 -0.19996288 -0.32295129 -0.17908606
		 -0.32151988 -0.16626117 -0.3198908 -0.15842885 -0.3342984 -0.19106199 -0.33432192
		 -0.20253108 -0.33451119 -0.17809631 -0.33209747 -0.16535552 -0.33017096 -0.15404935
		 -0.34532252 -0.19011812 -0.34553531 -0.17715245 -0.34312156 -0.16441168 -0.34198958
		 -0.15167433 -0.35303187 -0.19926105 -0.35778356 -0.18905123 -0.36531129 -0.18840671
		 -0.35936892 -0.17596804 -0.36772585 -0.17525254 -0.35558262 -0.16334476 -0.36311033
		 -0.16270025 -0.35349891 -0.15555137 0.1462381 -0.062449589 -0.32633585 -0.141692
		 0.15897632 -0.068220079 -0.31360289 -0.14482929 0.17201002 -0.067243688 -0.30991864
		 -0.15493993 -0.34540048 -0.20951961 0.16496806 0.0052288519 -0.33264324 -0.21536055
		 0.17767121 0.0021528937 -0.31956232 -0.21443339 0.1813837 -0.0079094004 0.14620665
		 -0.058706678 -0.32841119 -0.14837907 0.15804316 -0.061304234 -0.31700554 -0.15218858
		 0.16988359 -0.059447527 -0.31163692 -0.15876593 -0.34592751 -0.2059091 0.16292177
		 -0.0014592509 -0.33355367 -0.20840244 0.17430179 -0.0052119945 -0.3216691 -0.20658526
		 0.17968257 -0.011738119 0.17624857 -0.053871378 0.17730427 -0.057916127 0.15082389
		 -0.0020973692 0.151463 0.0015992342 0.14259566 -0.0073838742 0.15028459 -0.0052166008
		 0.17824712 -0.014968874 0.13457263 -0.05010334 0.13795075 -0.0086931121 0.18550937
		 -0.042829391 0.19653435 -0.034315113 0.1870351 -0.024126526 0.12630904 -0.041486461
		 0.13751462 -0.035218023 0.12839983 -0.015856685 -0.3410309 -0.14873992 -0.33990031
		 -0.1452793 -0.3152582 -0.20102468 -0.31421295 -0.20509622 -0.34916452 -0.15409128
		 -0.35705498 -0.19708541 -0.34637222 -0.2028625 -0.31309402 -0.16201019 0.0056511001
		 -0.053350504 0.0099359034 -0.032424349 0.0040513128 -0.031328402 0.0024676011 -0.052404851
		 0.012243294 -0.027216746 0.0036553848 -0.026298499 -0.43780687 -0.00018179222 -0.46249044
		 -0.024343165 -0.45930693 -0.023397513 -0.00029913956 -0.11764445 -0.0002777261 -0.13338608
		 0.0040524327 -0.13420111 0.0023530778 -0.11884499 -0.0080511319 -0.15825588 -0.45656163
		 -0.10437872 -0.46480814 -0.11726221 -0.4565402 -0.088637099 -0.45919243 -0.089837633
		 -0.45674708 -0.082715422 -0.45904607 -0.083719775 -0.46020183 -0.06836208 -0.45845085
		 -0.067405179 -0.45838755 -0.052120242 -0.45991197 -0.052920476 -0.46000329 -0.03814834
		 -0.46163309 -0.038886961 -0.43175396 -0.039452791 -0.44374919 -0.032800134 0.0022067379
		 -0.11272713 -9.2244838e-005 -0.11172278 0.0016115196 -0.096412554 0.0033624985 -0.097369418
		 0.0030726274 -0.081927814 0.0015482146 -0.081127584 0.0047937627 -0.067894295 0.0031639345
		 -0.067155674 -0.0032991841 -0.059849292 -0.0094198519 -0.056710981 -0.45884711 -0.072531328
		 -0.4570266 -0.072237939 -0.45775622 -0.06982173 -0.45954835 -0.070420884 -0.44836369
		 -0.02669709 -0.44569984 -0.029475825 0.00018726225 -0.10124529 0.0020077559 -0.10153868
		 0.0027073764 -0.09943331 0.00091514975 -0.098834969 -0.001353123 -0.054561444 0.0071864943
		 -0.05569886 -0.45610172 -0.0023210638 -0.43531492 -0.00012193251 -0.43111145 -0.00025278417
		 -0.51021808 -0.023531271 -0.47064757 -0.15266159 -0.14979678 -0.14415039 -0.2636005
		 -0.1515823;
createNode polyCube -n "polyCube5";
	setAttr ".w" 1.702004665126795;
	setAttr ".h" 2.0540424261126202;
	setAttr ".d" 1.0034927333534753;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.022405175724317772 2.7842490013835084 0.22145513060394784 1;
	setAttr ".wt" 0.47329974174499512;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  -1.68537009 0 0 1.68537009
		 0 0 -1.68537009 0 0 1.68537009 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.022405175724317772 2.7842490013835084 0.22145513060394784 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.022405175 3.8112702 0.22145513 ;
	setAttr ".rs" 36141;
	setAttr ".lt" -type "double3" 0 3.8954801763874737e-018 0.64254368307080778 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5587775988963148 3.811270171045984 -0.28029122588332633 ;
	setAttr ".cbx" -type "double3" 2.5139672474476793 3.811270171045984 0.72320148709122201 ;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".tk[3]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".tk[4]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".tk[5]" -type "float3" 0 -2.9802322e-008 0 ;
	setAttr ".tk[8]" -type "float3" -0.46390241 0 0.065546356 ;
	setAttr ".tk[9]" -type "float3" -0.46390241 0 -0.065546356 ;
	setAttr ".tk[10]" -type "float3" 0.46390241 0 -0.065546356 ;
	setAttr ".tk[11]" -type "float3" 0.46390241 0 0.065546356 ;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:3]" "e[16]" "e[19]" "e[22]" "e[26]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.022405175724317772 2.7842490013835084 0.22145513060394784 1;
	setAttr ".wt" 0.50780117511749268;
	setAttr ".dr" no;
	setAttr ".re" 22;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[8:15]" -type "float3"  0.27440801 0 0 0.27440801
		 0 0 -0.27440801 0 0 -0.27440801 0 0 0.53922874 0 0 -0.53922874 0 0 -0.53922874 0
		 0 0.53922874 0 0;
createNode polySoftEdge -n "polySoftEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.33542763367804213 0 0 0 0 0.65232691752444272 0 0
		 0 0 0.65232691752444272 0 -0.022405175724317772 2.6120583798008763 0.70372531866017152 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[0:23]" -type "float3"  -0.034215134 -0.10458847 0.050797313
		 0.032330614 -0.1063403 0.051668089 -0.76141769 -0.1905503 0.44785571 0.75956804 -0.1948162
		 0.45944768 -0.76141769 -0.1905503 -0.44785544 0.75956804 -0.1948162 -0.45944762 -0.034215134
		 -0.10458847 -0.050797321 0.032330614 -0.1063403 -0.051668104 -0.33385819 -0.3079735
		 0.19470972 -0.33385819 -0.3079735 -0.19470961 0.32902756 -0.31398499 -0.20019832
		 0.32902756 -0.31398499 0.2001982 -0.78850836 0 0.61496681 0.77651072 0 0.62671822
		 0.77651072 0 -0.62671816 -0.78850836 0 -0.61496639 0 0 0.83451056 0 0 -0.83451086
		 0.0038337214 -0.29278982 -0.74454564 -0.00058575382 -0.40726578 -0.39072594 -0.00078134809
		 -0.11782338 -0.057392135 -0.00078134809 -0.11782338 0.057392109 -0.00058575382 -0.40726578
		 0.39072594 0.0038337214 -0.29278982 0.74454534;
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".unm" no;
createNode polySoftEdge -n "polySoftEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.70441105589432507 0 0 0 0 2.2204460492503131e-016 -1 0
		 0 1 2.2204460492503131e-016 0 0.027836926801052545 3.6253714229125684 0.81635932975797809 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.35565335460464376 0.25855463502797538 2.4408487885847988e-017 0
		 -1.7325457686676153e-016 2.0790549224011385e-016 -0.62421539825390415 0 -0.36705079067748697 0.50489462314458433 2.7720732298681845e-016 0
		 -0.78602696046880971 3.425854310263122 0.85695952355921823 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.33564627323056312 -0.28404469226236251 0 0 2.0790549224011385e-016 2.7720732298681845e-016 -0.62421539825390415 0
		 0.40323712963553299 0.47649205733209921 2.7720732298681845e-016 0 0.61348457935000611 3.4258543102631247 0.85695952355922145 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 0 -3.0616266158090979 3.2255990755578203 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 120 ".tk";
	setAttr ".tk[116]" -type "float3" 0 0.27610785 0 ;
	setAttr ".tk[117]" -type "float3" 0 0.27610785 0 ;
	setAttr ".tk[118]" -type "float3" 0 0.16526164 0 ;
	setAttr ".tk[119]" -type "float3" 0 0.16526164 0 ;
	setAttr ".tk[120]" -type "float3" 0 0.28154394 0 ;
	setAttr ".tk[121]" -type "float3" 0 0.28154394 0 ;
	setAttr ".tk[122]" -type "float3" 0 0.16912143 0 ;
	setAttr ".tk[123]" -type "float3" 0 0.16912143 0 ;
	setAttr ".tk[172]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[173]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[174]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[175]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[176]" -type "float3" 0 0.3080624 0 ;
	setAttr ".tk[177]" -type "float3" 0 0.37892678 0 ;
	setAttr ".tk[178]" -type "float3" 0 0.38074592 0 ;
	setAttr ".tk[179]" -type "float3" 0 0.29232922 0 ;
	setAttr ".tk[180]" -type "float3" 0 0.23049782 0 ;
	setAttr ".tk[181]" -type "float3" 0 0.28966725 0 ;
	setAttr ".tk[182]" -type "float3" 0 0.2911945 0 ;
	setAttr ".tk[183]" -type "float3" 0 0.21745825 0 ;
	setAttr ".tk[184]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[185]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[186]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[187]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[188]" -type "float3" 0 0.13850021 0 ;
	setAttr ".tk[189]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[190]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[191]" -type "float3" 0 0.18656635 0 ;
	setAttr ".tk[192]" -type "float3" 0 0.13850021 0 ;
	setAttr ".tk[193]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[194]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[195]" -type "float3" 0 0.18656635 0 ;
	setAttr ".tk[196]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[197]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[198]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[199]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[200]" -type "float3" 0 0.23049782 0 ;
	setAttr ".tk[201]" -type "float3" 0 0.28966725 0 ;
	setAttr ".tk[202]" -type "float3" 0 0.2911945 0 ;
	setAttr ".tk[203]" -type "float3" 0 0.21745825 0 ;
	setAttr ".tk[204]" -type "float3" 0 0.3080624 0 ;
	setAttr ".tk[205]" -type "float3" 0 0.37892678 0 ;
	setAttr ".tk[206]" -type "float3" 0 0.38074592 0 ;
	setAttr ".tk[207]" -type "float3" 0 0.29232922 0 ;
	setAttr ".tk[208]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[209]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[210]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[211]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[212]" -type "float3" 0 0.30602542 0 ;
	setAttr ".tk[213]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[214]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[215]" -type "float3" 0 0.38377133 0 ;
	setAttr ".tk[216]" -type "float3" 0 0.30602542 0 ;
	setAttr ".tk[217]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[218]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[219]" -type "float3" 0 0.38377133 0 ;
	setAttr ".tk[220]" -type "float3" 0 0.2075571 0 ;
	setAttr ".tk[221]" -type "float3" 0 0.2075571 0 ;
	setAttr ".tk[222]" -type "float3" 0 0.14800732 0 ;
	setAttr ".tk[223]" -type "float3" 0 0.14800732 0 ;
	setAttr ".tk[224]" -type "float3" 0 0.21637867 0 ;
	setAttr ".tk[225]" -type "float3" 0 0.18817088 0 ;
	setAttr ".tk[226]" -type "float3" 0 0.1323674 0 ;
	setAttr ".tk[227]" -type "float3" 0 0.15515921 0 ;
	setAttr ".tk[228]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[229]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[230]" -type "float3" 0 0.37892678 0 ;
	setAttr ".tk[231]" -type "float3" 0 0.3080624 0 ;
	setAttr ".tk[232]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[233]" -type "float3" 0 0.38074592 0 ;
	setAttr ".tk[234]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[235]" -type "float3" 0 0.29232922 0 ;
	setAttr ".tk[236]" -type "float3" 0 0.28966725 0 ;
	setAttr ".tk[237]" -type "float3" 0 0.23049782 0 ;
	setAttr ".tk[238]" -type "float3" 0 0.2911945 0 ;
	setAttr ".tk[239]" -type "float3" 0 0.21637867 0 ;
	setAttr ".tk[240]" -type "float3" 0 0.18817088 0 ;
	setAttr ".tk[241]" -type "float3" 0 0.1323674 0 ;
	setAttr ".tk[242]" -type "float3" 0 0.15515921 0 ;
	setAttr ".tk[243]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[244]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[245]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[246]" -type "float3" 0 0.21745825 0 ;
	setAttr ".tk[247]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[248]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[249]" -type "float3" 0 0.13850021 0 ;
	setAttr ".tk[250]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[251]" -type "float3" 0 0.18656635 0 ;
	setAttr ".tk[252]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[253]" -type "float3" 0 0.13850021 0 ;
	setAttr ".tk[254]" -type "float3" 0 0.17128608 0 ;
	setAttr ".tk[255]" -type "float3" 0 0.18656635 0 ;
	setAttr ".tk[256]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[257]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[258]" -type "float3" 0 0.21916832 0 ;
	setAttr ".tk[259]" -type "float3" 0 0.19149059 0 ;
	setAttr ".tk[260]" -type "float3" 0 0.28966725 0 ;
	setAttr ".tk[261]" -type "float3" 0 0.23049782 0 ;
	setAttr ".tk[262]" -type "float3" 0 0.2911945 0 ;
	setAttr ".tk[263]" -type "float3" 0 0.21745825 0 ;
	setAttr ".tk[264]" -type "float3" 0 0.37892678 0 ;
	setAttr ".tk[265]" -type "float3" 0 0.3080624 0 ;
	setAttr ".tk[266]" -type "float3" 0 0.38074592 0 ;
	setAttr ".tk[267]" -type "float3" 0 0.29232922 0 ;
	setAttr ".tk[268]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[269]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[270]" -type "float3" 0 0.43509462 0 ;
	setAttr ".tk[271]" -type "float3" 0 0.3915861 0 ;
	setAttr ".tk[272]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[273]" -type "float3" 0 0.30602542 0 ;
	setAttr ".tk[274]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[275]" -type "float3" 0 0.38377133 0 ;
	setAttr ".tk[276]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[277]" -type "float3" 0 0.30602542 0 ;
	setAttr ".tk[278]" -type "float3" 0 0.46676886 0 ;
	setAttr ".tk[279]" -type "float3" 0 0.38377133 0 ;
	setAttr ".tk[280]" -type "float3" 0 0.2075571 0 ;
	setAttr ".tk[281]" -type "float3" 0 0.2075571 0 ;
	setAttr ".tk[282]" -type "float3" 0 0.14800732 0 ;
	setAttr ".tk[283]" -type "float3" 0 0.14800732 0 ;
createNode polySoftEdge -n "polySoftEdge12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.33542763367804213 0 0 0 0 0.65232691752444272 0 0
		 0 0 0.65232691752444272 0 -0.022405175724317772 2.6120583798008763 0.70372531866017152 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.70441105589432507 0 0 0 0 2.2204460492503131e-016 -1 0
		 0 1 2.2204460492503131e-016 0 0.027836926801052545 3.6253714229125684 0.81635932975797809 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.35565335460464376 0.25855463502797538 2.4408487885847988e-017 0
		 -1.7325457686676153e-016 2.0790549224011385e-016 -0.62421539825390415 0 -0.36705079067748697 0.50489462314458433 2.7720732298681845e-016 0
		 -0.78602696046880971 3.425854310263122 0.85695952355921823 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.33564627323056312 -0.28404469226236251 0 0 2.0790549224011385e-016 2.7720732298681845e-016 -0.62421539825390415 0
		 0.40323712963553299 0.47649205733209921 2.7720732298681845e-016 0 0.61348457935000611 3.4258543102631247 0.85695952355922145 1;
	setAttr ".a" 0;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 2 "f[38:39]" "f[47:48]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 0.38582575 0.64401603 ;
	setAttr ".rs" 49513;
	setAttr ".lt" -type "double3" 4.40619762898109e-016 -5.6898930012039273e-016 0.87495892660703212 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.1547014713287354 -0.77889704704284668 -0.018174678087234497 ;
	setAttr ".cbx" -type "double3" 2.1547014713287354 1.5505485534667969 1.3062067031860352 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[106:108]" "e[130:132]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -7.3385038 -0.18337345 ;
	setAttr ".rs" 56877;
	setAttr ".lt" -type "double3" -1.5543122344752192e-015 4.4408920985006262e-016 1.7444134613119555 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7460793256759644 -7.6813316345214844 -1.7335509061813354 ;
	setAttr ".cbx" -type "double3" 1.7460793256759644 -6.9956760406494141 1.3668040037155151 ;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[5]" -type "float3" 0 -7.4505806e-009 2.9802322e-008 ;
	setAttr ".tk[6]" -type "float3" 0 -7.4505806e-009 2.9802322e-008 ;
	setAttr ".tk[13]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[14]" -type "float3" 0 0 7.4505806e-009 ;
	setAttr ".tk[48]" -type "float3" 0 2.9802322e-008 -1.4901161e-008 ;
	setAttr ".tk[49]" -type "float3" 0 -0.28949663 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.28949666 -5.9604645e-008 ;
	setAttr ".tk[52]" -type "float3" 0 2.9802322e-008 -1.4901161e-008 ;
	setAttr ".tk[53]" -type "float3" 0 -0.28949663 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.28949666 -5.9604645e-008 ;
	setAttr ".tk[73]" -type "float3" 0 -0.15183863 0.35429013 ;
	setAttr ".tk[74]" -type "float3" 0 -0.15183863 0.35429013 ;
	setAttr ".tk[284]" -type "float3" 0 -0.44861132 0 ;
	setAttr ".tk[286]" -type "float3" 0 -0.44861132 -0.480223 ;
	setAttr ".tk[287]" -type "float3" 0 0 -0.480223 ;
	setAttr ".tk[288]" -type "float3" -0.20144685 0.14764175 0.35190469 ;
	setAttr ".tk[289]" -type "float3" -0.20144685 0.21134062 -0.12831831 ;
	setAttr ".tk[290]" -type "float3" 0 -0.44861132 0 ;
	setAttr ".tk[292]" -type "float3" 0 0 -0.480223 ;
	setAttr ".tk[293]" -type "float3" 0 -0.44861132 -0.480223 ;
	setAttr ".tk[294]" -type "float3" 0.20144685 0.14764175 0.35190469 ;
	setAttr ".tk[295]" -type "float3" 0.20144685 0.21134062 -0.12831831 ;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:300]";
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[296:303]" -type "float3"  0.69194144 0 -1.31718862 0.2555021
		 0 -1.33788478 -0.2555021 0 -1.33788455 -0.69194132 0 -1.31718898 0.77653486 -0.45901591
		 1.16717267 0.29779878 -0.45901591 1.33788478 -0.29779878 -0.45901591 1.33788431 -0.77653486
		 -0.45901591 1.16717267;
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[91]" "vtx[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[88]" "vtx[92]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[56]" "vtx[94]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySoftEdge -n "polySoftEdge16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[5]" -type "float3" 0.080718234 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.080718234 0 0 ;
	setAttr ".tk[76]" -type "float3" 0.24909182 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.24909182 0 0 ;
	setAttr ".tk[80]" -type "float3" 0.18337244 -0.40490299 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.35429013 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.35429013 0 ;
	setAttr ".tk[83]" -type "float3" -0.18337244 -0.40490299 0 ;
	setAttr ".tk[84]" -type "float3" 0 0 0.25306439 ;
	setAttr ".tk[85]" -type "float3" 0.30032891 0 0.30367726 ;
	setAttr ".tk[86]" -type "float3" -0.30032903 0 0.30367726 ;
	setAttr ".tk[87]" -type "float3" 0 0 0.25306439 ;
createNode polyMapDel -n "polyMapDel3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[20:35]" "f[49]" "f[51]" "f[53]" "f[58]" "f[60]" "f[63]" "f[67:70]" "f[77:79]" "f[84:86]";
createNode polyMapDel -n "polyMapDel4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[0:19]" "f[36:48]" "f[50]" "f[52]" "f[54:57]" "f[59]" "f[61:62]" "f[64:66]" "f[71:76]" "f[80:83]" "f[87:89]";
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:89]";
	setAttr ".ix" -type "matrix" 6.3645282336878388 0 0 0 0 6.1484443627877718 1.4581968426351584 0
		 0 -0.10690567426444356 0.45076465060328036 0 -0.068880311524379678 -3.0616266158090975 3.6258926213137204 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.068880081176757813 -2.610385537147522 2.8717386722564697 ;
	setAttr ".ps" -type "double2" 11.28870964050293 10.2717444896698 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[0:3]" "e[16:19]" "e[40]" "e[44]" "e[93]" "e[99]" "e[104]" "e[107]" "e[109]" "e[111]" "e[114]" "e[119]" "e[123:124]" "e[131]" "e[143]" "e[151]" "e[161]" "e[165]" "e[175]";
createNode polyTweakUV -n "polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[5]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[7]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[9]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[11]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[12]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[13]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[14]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[15]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[16]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[17]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[18]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[19]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[20]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[21]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[22]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[23]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[24]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[29]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[60]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[63]" -type "float2" 1.0032779 -0.26253998 ;
	setAttr ".uvtk[65]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[70]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[72]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[74]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[77]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[79]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[81]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[86]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[88]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[90]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[94]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[95]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[98]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[99]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[102]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[103]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[105]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[110]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[111]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[112]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[113]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[114]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[115]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[116]" -type "float2" 1.0032778 -0.26253998 ;
	setAttr ".uvtk[117]" -type "float2" 1.0032778 -0.26253998 ;
createNode polyMapCut -n "polyMapCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "e[20:23]" "e[36:39]" "e[80]" "e[84]" "e[92]" "e[96]" "e[101]" "e[105:106]" "e[117]" "e[122]" "e[125]" "e[127]" "e[133]" "e[141]" "e[159]" "e[167]" "e[173]";
createNode polyMapCut -n "polyMapCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[20:23]" "e[36:39]" "e[80]" "e[84]" "e[92]" "e[96]" "e[101]" "e[105:106]" "e[110]" "e[117]" "e[122]" "e[125]" "e[127]" "e[133]" "e[141]" "e[153]" "e[159]" "e[167]" "e[173]";
createNode polyTweakUV -n "polyTweakUV11";
	setAttr ".uopa" yes;
	setAttr -s 46 ".uvtk";
	setAttr ".uvtk[30]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[31]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[32]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[33]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[35]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[36]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[37]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[38]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[39]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[40]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[41]" -type "float2" 0.6000914 0.81574917 ;
	setAttr ".uvtk[42]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[43]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[44]" -type "float2" 0.60009146 0.81574917 ;
	setAttr ".uvtk[45]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[47]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[48]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[49]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[50]" -type "float2" 0.6000914 0.81574929 ;
	setAttr ".uvtk[51]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[52]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[54]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[55]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[56]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[57]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[59]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[62]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[64]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[66]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[68]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[71]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[73]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[78]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[80]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[82]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[85]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[87]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[89]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[118]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[119]" -type "float2" 0.60009134 0.81574923 ;
	setAttr ".uvtk[122]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[123]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[124]" -type "float2" 0.60009134 0.81574929 ;
	setAttr ".uvtk[127]" -type "float2" 0.6000914 0.81574923 ;
	setAttr ".uvtk[132]" -type "float2" 0.60009146 0.81574923 ;
	setAttr ".uvtk[143]" -type "float2" 0.6000914 0.81574923 ;
createNode polyMapCut -n "polyMapCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[86]";
createNode Unfold3DUnfold -n "Unfold3DUnfold7";
	setAttr ".uvl" -type "Int32Array" 54 0 1 3 4 6 8
		 10 25 26 27 28 34 46 53 58 61 67 69
		 75 76 83 84 91 92 93 96 97 100 101 104
		 106 107 108 109 120 121 125 126 128 129 130 131
		 133 134 135 136 137 138 139 140 141 142 144 145 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube3|pCubeShape3";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 90 4 ;
	setAttr ".fpve" -type "Int32Array" 360 0 1 2 3 1 4
		 5 2 4 6 7 5 6 8 9 7 10 11
		 12 13 11 14 15 12 14 16 17 15 16 18
		 19 17 13 12 20 21 12 15 22 20 15 17
		 23 22 17 19 24 23 21 20 25 26 20 22
		 27 25 22 23 28 27 23 24 29 28 30 31
		 32 33 31 34 35 32 34 36 37 35 36 38
		 39 37 40 41 42 43 41 44 45 42 44 46
		 47 45 46 48 49 47 43 42 50 51 42 45
		 52 50 45 47 53 52 47 49 54 53 51 50
		 55 56 50 52 57 55 52 53 58 57 53 54
		 59 58 60 61 62 63 61 64 65 62 64 66
		 67 65 66 68 69 67 70 71 72 73 74 75
		 76 77 75 78 79 76 78 80 81 79 81 80
		 82 83 84 85 86 87 87 86 88 89 89 88
		 90 91 70 73 92 93 94 95 96 97 97 96
		 98 99 99 98 100 101 102 103 104 105 59 54
		 106 107 19 18 108 109 54 49 110 106 24 19
		 109 111 49 48 112 110 39 38 113 114 29 24
		 111 115 116 117 118 119 10 13 120 121 51 56
		 122 123 13 21 124 120 43 51 123 125 21 26
		 126 124 30 33 127 128 40 43 125 129 2 5
		 14 11 3 2 11 10 93 92 117 116 56 55
		 61 60 55 57 64 61 57 58 66 64 58 59
		 68 66 83 82 103 102 7 9 18 16 5 7
		 16 14 120 124 130 131 121 120 131 132 119 118
		 95 94 123 122 133 134 125 123 134 135 129 125
		 135 136 128 127 101 100 124 126 137 130 115 111
		 138 139 114 113 91 90 110 112 140 141 106 110
		 141 142 107 106 142 143 105 104 85 84 109 108
		 144 145 111 109 145 138 ;
	setAttr ".mue" -type "floatArray" 146 0.5568012 0.61163402 0.61165333 0.54515153
		 0.70071071 0.70073527 0.78980017 0.78981954 0.84466499 0.85633093 0.52586734 0.61166817
		 0.61168796 0.5327661 0.70075059 0.70077044 0.78983432 0.78985411 0.87564212 0.86878288
		 0.61170876 0.55686158 0.70079118 0.78987491 0.84472543 0.63581663 0.57751131 0.70084178
		 0.76582986 0.82410115 0.61484939 0.64235908 0.64300573 0.61549604 0.67218763 0.67283434
		 0.70076692 0.70141357 0.72807401 0.72872072 0.36724791 0.31096426 0.33426899 0.38719046
		 0.24819458 0.24831122 0.18551035 0.1623507 0.12930539 0.10942144 0.33431286 0.41046649
		 0.24835916 0.16239455 0.086233065 0.33435857 0.41956598 0.24840488 0.16244027 0.077232599
		 0.39946988 0.33441025 0.33444148 0.38732982 0.24846224 0.24849689 0.16249195 0.16252317
		 0.097386032 0.10956081 0.47427988 0.44632789 0.44356045 0.47151244 0.95334804 0.92433077
		 0.92580521 0.95482248 0.89404058 0.89551502 0.86768544 0.86915994 0.85794681 0.85888344
		 0.82596934 0.82661599 0.79932767 0.79868102 0.77130777 0.77066112 0.74589449 0.74524784
		 0.48233357 0.48446742 0.51624507 0.51559842 0.544393 0.54503965 0.57222617 0.57287282
		 0.59614003 0.59678668 0.84186095 0.84184515 0.83486104 0.83456218 0.047582053 0.057202905
		 0.89754432 0.90883547 0.066341974 0.8893646 0.10693353 0.73595434 0.736601 0.84728318
		 0.50131214 0.50025767 0.50728512 0.50814217 0.49282396 0.50402403 0.4395369 0.44900492
		 0.51234877 0.43013671 0.55439466 0.60693377 0.60628712 0.38955101 0.45959681 0.44548866
		 0.47813755 0.46320441 0.49467665 0.48103207 0.41598228 0.52699941 0.94200855 0.87462223
		 0.080549903 0.015537564 0.0020000001 0.033581484 0.92337406 0.95607036 ;
	setAttr ".mve" -type "floatArray" 146 0.20129786 0.1393647 0.21416211 0.23263913
		 0.11497977 0.2095708 0.1393185 0.2141159 0.20122321 0.23255843 0.28451988 0.27109471
		 0.34750053 0.36092383 0.26877782 0.34518358 0.27104852 0.34745431 0.28442916 0.36083668
		 0.42761981 0.43422878 0.42530292 0.42757362 0.43415412 0.54892701 0.48309746 0.62024742
		 0.54889327 0.48303354 0.80029655 0.81472462 0.90805072 0.89362276 0.90467393 0.99800003
		 0.81431991 0.907646 0.79951203 0.89283824 0.13429746 0.07079681 0.18784161 0.18144533
		 0.0020000001 0.19010827 0.070874602 0.18794821 0.13444501 0.18161757 0.25858185 0.25217131
		 0.267418 0.25868845 0.25237235 0.33230826 0.33198023 0.34114441 0.33241487 0.33219248
		 0.37825385 0.41564462 0.46598819 0.40620783 0.43366012 0.48954907 0.41575122 0.46609479
		 0.37844115 0.40638006 0.73213166 0.61708868 0.52380133 0.63884443 0.6149236 0.57417452
		 0.48085773 0.52160686 0.61398649 0.52066976 0.72940576 0.63608909 0.76186472 0.67546505
		 0.70100182 0.79432797 0.90321922 0.80989301 0.88993675 0.79661059 0.78190559 0.68857944
		 0.67807412 0.76445258 0.79647851 0.70315236 0.81165498 0.9049812 0.79798555 0.89131171
		 0.68961257 0.78293872 0.74064302 0.81560135 0.80583709 0.72245604 0.24393614 0.32750827
		 0.28639567 0.36959395 0.16603599 0.45031801 0.12662961 0.74860966 0.84193581 0.49114141
		 0.81796086 0.74300998 0.72477186 0.80812687 0.36967868 0.28649256 0.3272835 0.24370955
		 0.45037305 0.16585164 0.49119592 0.84296864 0.74964249 0.12647504 0.46950555 0.38005397
		 0.28883028 0.32171765 0.23368157 0.14737177 0.11720464 0.50079334 0.46938047 0.50070316
		 0.11741263 0.1476604 0.23398706 0.32198405 0.28871483 0.37992156 ;
	setAttr ".mnsl" -type "stringArray" 5 "|_UNKNOWN_REF_NODE_fosterParent1|pCube3|pCubeShape3.map[127:128]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube3|pCubeShape3.map[116:119]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube3|pCubeShape3.map[113:114]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube3|pCubeShape3.map[70:105]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube3|pCubeShape3.map[30:39]"  ;
createNode polyTweakUV -n "polyTweakUV12";
	setAttr ".uopa" yes;
	setAttr -s 146 ".uvtk[0:145]" -type "float2" 0.15179676 0.07723026 0.054180469
		 0.10128488 0.10583118 0.026474429 0.1850969 0.053936474 -0.051741295 0.06413576 0.013577511
		 -0.030472061 -0.12401756 -0.021745918 -0.072366953 -0.096556671 -0.13611874 -0.12155117
		 -0.12613826 -0.16094528 0.2402202 0.015377279 0.1451453 -0.030468725 0.19790658 -0.106888
		 0.28610134 -0.065792233 0.054462489 -0.089689873 0.10722362 -0.16610926 -0.033052735
		 -0.15349948 0.019708499 -0.22991905 -0.10961721 -0.22615591 -0.049975634 -0.29782525
		 0.25323209 -0.1870219 0.31264481 -0.15574236 0.16254914 -0.24624297 0.075034074 -0.31005248
		 0.024729444 -0.35452375 0.31292316 -0.32498258 0.32575351 -0.21887578 0.29716617
		 -0.44122246 0.18288647 -0.41476196 0.079119451 -0.38915586 -0.55427694 -0.20249648
		 -0.57914066 -0.26514816 -0.56267262 -0.35960782 -0.53780878 -0.29695639 -0.5924738
		 -0.4073858 -0.5760057 -0.50184554 -0.63762271 -0.36713028 -0.62115473 -0.46158981
		 -0.66764528 -0.40019068 -0.65117741 -0.49465045 0.46849018 0.30300608 0.56863987
		 0.40538737 0.46448088 0.27224383 0.41597798 0.24208196 0.67893463 0.51754552 0.54887283
		 0.32935664 0.69404042 0.49197298 0.63632566 0.39089829 0.70633072 0.4672291 0.69362813
		 0.43379223 0.41556981 0.20147315 0.34384447 0.15527694 0.4954195 0.25201377 0.58741444
		 0.32012755 0.66793901 0.37905583 0.36459386 0.12771514 0.27961293 0.069181971 0.44444364
		 0.17825568 0.53643858 0.2463695 0.62179989 0.3054533 0.26774347 0.036790777 0.30697361
		 0.044343159 0.27216509 -0.0060219984 0.26057297 0.017223224 0.38047644 0.085700326
		 0.34183365 0.029787511 0.47881812 0.16299747 0.44400984 0.11263235 0.56969768 0.24528269
		 0.53822291 0.20893349 -0.42620781 0.11208139 -0.41935307 0.27612326 -0.43369317 0.37426186
		 -0.44054788 0.21021996 -0.92677021 -0.61049926 -0.90522593 -0.51888394 -0.92381316
		 -0.42815185 -0.9453578 -0.51976717 -0.86763465 -0.50559837 -0.88622206 -0.4148663
		 -0.8201133 -0.57481807 -0.83870077 -0.48408604 -0.8044222 -0.59020561 -0.82120317
		 -0.50544786 -0.78360599 -0.47328728 -0.76713789 -0.567747 -0.71988064 -0.62880278
		 -0.73634863 -0.53434306 -0.69429654 -0.56640249 -0.71076453 -0.47194278 -0.6886946
		 -0.41382283 -0.70516258 -0.31936321 -0.44417492 0.15202115 -0.4304682 0.061902158
		 -0.45637262 -0.025828831 -0.47284073 0.068630919 -0.48173752 -0.090347521 -0.46526942
		 -0.18480732 -0.51207739 -0.12546867 -0.49560928 -0.21992832 -0.55586541 -0.059015855
		 -0.5393973 -0.15347551 -0.79222804 -0.54078597 -0.77846599 -0.61571664 -0.77327245
		 -0.59370941 -0.78826463 -0.50980437 0.71241772 0.41419223 0.64506549 0.32397422 -0.13016099
		 -0.24325247 -0.083978795 -0.33425072 0.74747121 0.47913319 -0.0087438077 -0.40152442
		 0.73410159 0.49049881 -0.68486047 -0.36310226 -0.66839236 -0.45756203 0.061538391
		 -0.41327798 -0.43750024 -0.021134311 -0.45019066 0.05566502 -0.46056274 0.061584286
		 -0.44613364 -0.023273107 0.3320913 -0.046955206 0.26342618 0.028493887 0.26288661
		 0.060082793 0.31115147 0.1371163 0.36830997 -0.14113723 0.38380393 0.22800848 0.35446444
		 -0.21100523 -0.53853583 -0.23129289 -0.55500364 -0.13683318 0.45159084 0.29542154
		 0.43427861 -0.12382879 0.38659382 -0.024631269 0.29092768 0.044038735 0.24306406
		 0.049299091 0.27240705 0.11559433 0.3456744 0.21132986 0.43156359 0.28643325 0.38848954
		 -0.20167816 -0.04821945 -0.45695317 0.040804602 -0.44172549 0.76685232 0.51794177
		 0.81096953 0.53260428 0.76487273 0.45562929 0.67250305 0.34581593 -0.15438873 -0.26341501
		 -0.12407938 -0.37720814;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:300]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.016167163848876953 -4.339155912399292 0.4596712589263916 ;
	setAttr ".ps" -type "double2" 16.147036552429199 12.883219242095947 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[0]" -type "float3" -0.44806638 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.14935544 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.14935547 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.44806638 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.50508714 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.50508714 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.50508714 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.50508714 0 0 ;
	setAttr ".tk[12]" -type "float3" -0.44806638 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.14935544 0 0.65877998 ;
	setAttr ".tk[14]" -type "float3" 0.14935547 0 0.65877998 ;
	setAttr ".tk[15]" -type "float3" 0.44806638 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.016333673 0 0.27789733 ;
	setAttr ".tk[18]" -type "float3" -0.016333673 0 0.27789733 ;
	setAttr ".tk[72]" -type "float3" -0.72082537 0.17059243 0.018791359 ;
	setAttr ".tk[73]" -type "float3" -0.40368599 0.17059252 0.018791359 ;
	setAttr ".tk[74]" -type "float3" 0.40856731 0.17059252 0.018791437 ;
	setAttr ".tk[75]" -type "float3" 0.72570658 0.17059252 0.018791359 ;
	setAttr ".tk[76]" -type "float3" -0.95663565 0.17059252 0.018791359 ;
	setAttr ".tk[77]" -type "float3" -0.36599937 0.17059252 0.018791359 ;
	setAttr ".tk[78]" -type "float3" 0.37088063 0.17059252 0.018791359 ;
	setAttr ".tk[79]" -type "float3" 0.96151704 0.17059252 0.018791359 ;
	setAttr ".tk[296]" -type "float3" 0 0.15379751 0.37087861 ;
	setAttr ".tk[297]" -type "float3" 0 0.15379751 0.37087867 ;
	setAttr ".tk[298]" -type "float3" 0 0.15379751 0.37087867 ;
	setAttr ".tk[299]" -type "float3" 0 0.15379751 0.37087861 ;
createNode polyMapCut -n "polyMapCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 35 "e[4]" "e[6]" "e[8]" "e[21:23]" "e[41:42]" "e[89]" "e[100]" "e[118]" "e[120]" "e[155]" "e[158]" "e[183]" "e[186]" "e[188:190]" "e[195]" "e[198]" "e[200:202]" "e[208]" "e[214]" "e[267]" "e[269]" "e[271]" "e[273:274]" "e[276:277]" "e[279]" "e[281:282]" "e[299]" "e[308]" "e[332]" "e[562]" "e[565]" "e[569:570]" "e[577:578]" "e[582]" "e[584]";
createNode polyMapCut -n "polyMapCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 43 "e[4]" "e[6]" "e[8]" "e[21:23]" "e[41:42]" "e[89]" "e[100]" "e[118]" "e[120]" "e[155]" "e[158]" "e[183]" "e[186]" "e[188:190]" "e[195]" "e[198]" "e[200:202]" "e[208]" "e[214]" "e[220:221]" "e[223:226]" "e[228:231]" "e[233:234]" "e[267]" "e[269]" "e[271]" "e[273:274]" "e[276:277]" "e[279]" "e[281:282]" "e[299]" "e[308]" "e[318]" "e[320]" "e[324]" "e[326]" "e[332]" "e[562]" "e[565]" "e[569:570]" "e[577:578]" "e[582]" "e[584]";
createNode polyTweakUV -n "polyTweakUV13";
	setAttr ".uopa" yes;
	setAttr -s 242 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[5]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[8]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[9]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[11]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[12]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[13]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[14]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[15]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[16]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[17]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[18]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[19]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[20]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[21]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[22]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[23]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[24]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[25]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[26]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[27]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[31]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[52]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[53]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[57]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[65]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[66]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[67]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[68]" -type "float2" 0.72823584 -0.028129278 ;
	setAttr ".uvtk[69]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[70]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[71]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[72]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[73]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[74]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[75]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[76]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[77]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[78]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[79]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[80]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[81]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[82]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[83]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[84]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[86]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[88]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[91]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[92]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[93]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[94]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[95]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[96]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[97]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[98]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[99]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[100]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[101]" -type "float2" 0.72823584 -0.028129278 ;
	setAttr ".uvtk[102]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[103]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[104]" -type "float2" 0.72823584 -0.028129278 ;
	setAttr ".uvtk[105]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[110]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[111]" -type "float2" 0.72823584 -0.028129278 ;
	setAttr ".uvtk[116]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[117]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[120]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[121]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[124]" -type "float2" 0.72823584 -0.028129285 ;
	setAttr ".uvtk[125]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[126]" -type "float2" 0.72823584 -0.028129285 ;
	setAttr ".uvtk[127]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[128]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[129]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[130]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[131]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[164]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[165]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[166]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[167]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[168]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[169]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[170]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[171]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[172]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[173]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[174]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[175]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[176]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[177]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[178]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[179]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[180]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[181]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[182]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[183]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[184]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[185]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[186]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[187]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[188]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[189]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[190]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[191]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[192]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[193]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[194]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[195]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[196]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[197]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[198]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[199]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[200]" -type "float2" -0.059384041 0.41881371 ;
	setAttr ".uvtk[201]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[202]" -type "float2" -0.059384041 0.41881371 ;
	setAttr ".uvtk[203]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[204]" -type "float2" -0.059384041 0.41881371 ;
	setAttr ".uvtk[205]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[206]" -type "float2" -0.059384041 0.41881371 ;
	setAttr ".uvtk[207]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[208]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[209]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[210]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[211]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[212]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[213]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[214]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[215]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[216]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[217]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[218]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[219]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[220]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[221]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[222]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[223]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[224]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[225]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[226]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[227]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[228]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[229]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[230]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[231]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[232]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[233]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[234]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[235]" -type "float2" -0.059384041 0.41881377 ;
	setAttr ".uvtk[236]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[237]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[238]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[239]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[240]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[241]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[242]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[243]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[244]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[245]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[246]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[247]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[248]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[249]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[250]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[251]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[252]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[253]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[254]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[255]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[256]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[257]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[258]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[259]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[260]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[261]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[262]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[263]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[264]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[265]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[266]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[267]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[268]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[269]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[270]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[271]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[272]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[273]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[274]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[275]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[276]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[277]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[278]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[279]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[280]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[281]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[282]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[283]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[284]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[285]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[286]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[287]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[288]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[289]" -type "float2" -0.0062509729 0.57821298 ;
	setAttr ".uvtk[290]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[291]" -type "float2" -0.0062509729 0.5782131 ;
	setAttr ".uvtk[292]" -type "float2" 0.72823584 -0.028129278 ;
	setAttr ".uvtk[293]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[294]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[295]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[296]" -type "float2" 0.72823584 -0.028129278 ;
	setAttr ".uvtk[297]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[298]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[299]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[300]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[303]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[304]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[306]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[307]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[310]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[312]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[313]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[316]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[317]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[320]" -type "float2" 0.7282359 -0.028129285 ;
	setAttr ".uvtk[327]" -type "float2" 0.7282359 -0.028129278 ;
	setAttr ".uvtk[328]" -type "float2" 0.72823584 -0.028129278 ;
	setAttr ".uvtk[329]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[330]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[331]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[332]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[333]" -type "float2" 0.72823596 -0.028129293 ;
	setAttr ".uvtk[334]" -type "float2" 0.72823584 -0.028129293 ;
	setAttr ".uvtk[335]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[336]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[337]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[338]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[339]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[340]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[341]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[342]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[344]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[348]" -type "float2" 0.7282359 -0.028129293 ;
	setAttr ".uvtk[349]" -type "float2" 0.72823584 -0.028129293 ;
createNode polyMapDel -n "polyMapDel5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[79]" "f[81]" "f[117:148]" "f[169:282]";
createNode polyTweakUV -n "polyTweakUV14";
	setAttr ".uopa" yes;
	setAttr -s 122 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[5]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[8]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[9]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[11]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[12]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[13]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[14]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[15]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[16]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[17]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[18]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[19]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[20]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[21]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[22]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[23]" -type "float2" -0.20940694 -0.12814449 ;
	setAttr ".uvtk[24]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[25]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[26]" -type "float2" -0.20940694 -0.12814449 ;
	setAttr ".uvtk[27]" -type "float2" -0.20940694 -0.12814449 ;
	setAttr ".uvtk[31]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[52]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[53]" -type "float2" -0.20940694 -0.12814449 ;
	setAttr ".uvtk[57]" -type "float2" -0.20940694 -0.12814449 ;
	setAttr ".uvtk[65]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[66]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[67]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[68]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[69]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[70]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[71]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[72]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[73]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[74]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[75]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[76]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[77]" -type "float2" -0.20940688 -0.12814453 ;
	setAttr ".uvtk[78]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[79]" -type "float2" -0.20940694 -0.12814453 ;
	setAttr ".uvtk[80]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[81]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[82]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[83]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[84]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[86]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[88]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[91]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[92]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[93]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[94]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[95]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[96]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[97]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[98]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[99]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[100]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[101]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[102]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[103]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[104]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[105]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[110]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[111]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[116]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[117]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[120]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[121]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[124]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[125]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[126]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[127]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[128]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[129]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[130]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[131]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[152]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[153]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[157]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[159]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[160]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[161]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[162]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[163]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[164]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[165]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[166]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[167]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[168]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[169]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[170]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[171]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[172]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[173]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[174]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[175]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[176]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[177]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[178]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[179]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[180]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[181]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[182]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[183]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[184]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[185]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[186]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[187]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[189]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[192]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[193]" -type "float2" -0.20940694 -0.12814449 ;
	setAttr ".uvtk[195]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[196]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[199]" -type "float2" -0.20940688 -0.12814449 ;
	setAttr ".uvtk[200]" -type "float2" -0.20940694 -0.12814452 ;
	setAttr ".uvtk[201]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[202]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[203]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[204]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[205]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[206]" -type "float2" -0.20940688 -0.12814452 ;
	setAttr ".uvtk[207]" -type "float2" -0.20940688 -0.12814452 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[190]" "e[202]";
createNode polyTweakUV -n "polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 130 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[5]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[8]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[9]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[11]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[12]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[13]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[14]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[15]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[16]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[17]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[18]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[19]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[20]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[21]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[22]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[23]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[24]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[25]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[26]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[27]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[31]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[52]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[53]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[57]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[65]" -type "float2" 0.11564258 -0.13752095 ;
	setAttr ".uvtk[66]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[67]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[68]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[69]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[70]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[71]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[72]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[73]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[74]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[75]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[76]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[77]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[78]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[79]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[80]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[81]" -type "float2" 0.11564258 -0.13752092 ;
	setAttr ".uvtk[82]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[83]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[84]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[86]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[87]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[88]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[91]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[92]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[93]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[94]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[95]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[96]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[97]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[98]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[99]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[100]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[101]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[102]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[103]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[104]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[105]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[106]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[110]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[111]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[113]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[116]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[117]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[120]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[121]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[123]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[124]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[125]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[126]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[127]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[128]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[129]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[130]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[131]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[133]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[138]" -type "float2" 0.11564258 -0.13752092 ;
	setAttr ".uvtk[140]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[144]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[145]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[146]" -type "float2" 0.11564258 -0.13752095 ;
	setAttr ".uvtk[150]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[151]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[152]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[153]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[157]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[159]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[160]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[161]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[162]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[163]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[164]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[165]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[166]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[167]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[168]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[169]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[170]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[171]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[172]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[173]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[174]" -type "float2" 0.11564258 -0.13752094 ;
	setAttr ".uvtk[175]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[176]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[177]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[178]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[179]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[180]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[181]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[182]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[183]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[184]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[185]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[186]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[187]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[189]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[192]" -type "float2" 0.11564264 -0.13752092 ;
	setAttr ".uvtk[193]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[195]" -type "float2" 0.11564264 -0.13752095 ;
	setAttr ".uvtk[196]" -type "float2" 0.11564258 -0.13752095 ;
	setAttr ".uvtk[199]" -type "float2" 0.11564258 -0.13752095 ;
	setAttr ".uvtk[200]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[201]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[202]" -type "float2" 0.11564264 -0.13752094 ;
	setAttr ".uvtk[203]" -type "float2" 0.11564264 -0.13752094 ;
createNode polyMapCut -n "polyMapCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4]" "e[7]" "e[41:42]";
createNode polyTweakUV -n "polyTweakUV16";
	setAttr ".uopa" yes;
	setAttr -s 132 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[5]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[8]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[9]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[11]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[12]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[13]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[14]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[15]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[16]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[17]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[18]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[19]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[20]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[21]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[22]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[23]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[24]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[25]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[26]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[27]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[31]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[52]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[53]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[57]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[65]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[66]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[67]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[68]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[69]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[70]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[71]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[72]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[73]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[74]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[75]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[76]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[77]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[78]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[79]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[80]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[81]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[82]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[83]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[84]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[86]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[87]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[88]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[91]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[92]" -type "float2" -0.40318641 0.040631197 ;
	setAttr ".uvtk[93]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[94]" -type "float2" -0.40318641 0.040631197 ;
	setAttr ".uvtk[95]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[96]" -type "float2" -0.40318641 0.04063119 ;
	setAttr ".uvtk[97]" -type "float2" -0.40318641 0.04063119 ;
	setAttr ".uvtk[98]" -type "float2" -0.40318641 0.04063119 ;
	setAttr ".uvtk[99]" -type "float2" -0.40318641 0.04063119 ;
	setAttr ".uvtk[100]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[101]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[102]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[103]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[104]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[105]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[106]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[110]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[111]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[113]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[116]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[117]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[120]" -type "float2" -0.40318635 0.040631186 ;
	setAttr ".uvtk[121]" -type "float2" -0.40318635 0.040631186 ;
	setAttr ".uvtk[123]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[124]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[125]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[126]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[127]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[128]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[129]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[130]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[131]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[133]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[138]" -type "float2" -0.40318635 0.040631182 ;
	setAttr ".uvtk[140]" -type "float2" -0.40318635 0.040631182 ;
	setAttr ".uvtk[144]" -type "float2" -0.40318635 0.040631182 ;
	setAttr ".uvtk[145]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[146]" -type "float2" -0.40318638 0.040631182 ;
	setAttr ".uvtk[150]" -type "float2" -0.40318638 0.040631182 ;
	setAttr ".uvtk[151]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[152]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[153]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[157]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[159]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[160]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[161]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[162]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[163]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[164]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[165]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[166]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[167]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[168]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[169]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[170]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[171]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[172]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[173]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[174]" -type "float2" -0.40318635 0.040631186 ;
	setAttr ".uvtk[175]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[176]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[177]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[178]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[179]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[180]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[181]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[182]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[183]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[184]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[185]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[186]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[187]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[189]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[192]" -type "float2" -0.078136891 0.22815976 ;
	setAttr ".uvtk[193]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[195]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[196]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[199]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[200]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[201]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[202]" -type "float2" -0.40318641 0.040631186 ;
	setAttr ".uvtk[203]" -type "float2" -0.40318641 0.040631182 ;
	setAttr ".uvtk[204]" -type "float2" -0.078136891 0.22815973 ;
	setAttr ".uvtk[205]" -type "float2" -0.078136891 0.22815973 ;
createNode polyMapCut -n "polyMapCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[106:108]" "e[130:132]" "e[173]" "e[176]";
createNode polyTweakUV -n "polyTweakUV17";
	setAttr ".uopa" yes;
	setAttr -s 108 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[5]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[8]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[11]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[68]" -type "float2" -0.59071493 0.093764275 ;
	setAttr ".uvtk[69]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[70]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[71]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[72]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[73]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[74]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[75]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[76]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[77]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[78]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[79]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[80]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[81]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[82]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[83]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[84]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[86]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[87]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[88]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[91]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[92]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[93]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[94]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[95]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[96]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[97]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[98]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[99]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[100]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[102]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[103]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[104]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[105]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[106]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[110]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[111]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[113]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[116]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[117]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[120]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[121]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[123]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[124]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[125]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[126]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[127]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[128]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[129]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[130]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[131]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[133]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[138]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[140]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[144]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[145]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[146]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[150]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[151]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[159]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[160]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[161]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[162]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[163]" -type "float2" -0.59071493 0.093764283 ;
	setAttr ".uvtk[164]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[165]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[166]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[167]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[168]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[169]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[170]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[171]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[172]" -type "float2" -0.59071493 0.093764283 ;
	setAttr ".uvtk[173]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[174]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[175]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[176]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[177]" -type "float2" -0.59071493 0.093764283 ;
	setAttr ".uvtk[178]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[179]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[180]" -type "float2" -0.59071493 0.093764283 ;
	setAttr ".uvtk[181]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[182]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[183]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[184]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[185]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[186]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[187]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[189]" -type "float2" -0.59211743 0.10450003 ;
	setAttr ".uvtk[206]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[208]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[209]" -type "float2" 0.20315591 0.24378712 ;
	setAttr ".uvtk[210]" -type "float2" -0.59071493 0.093764275 ;
	setAttr ".uvtk[211]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[212]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[213]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[214]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[215]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[217]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[219]" -type "float2" 0.20315596 0.24378712 ;
	setAttr ".uvtk[220]" -type "float2" -0.59071493 0.093764275 ;
	setAttr ".uvtk[221]" -type "float2" -0.59211743 0.10450002 ;
	setAttr ".uvtk[222]" -type "float2" -0.59071493 0.093764275 ;
	setAttr ".uvtk[223]" -type "float2" -0.59211743 0.10450002 ;
createNode polyMapCut -n "polyMapCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[118:120]" "e[188]" "e[190]" "e[198]" "e[200]" "e[202]";
createNode polyTweakUV -n "polyTweakUV18";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[70]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[71]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[73]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[75]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[76]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[77]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[78]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[79]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[80]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[81]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[82]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[83]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[106]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[113]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[121]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[159]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[189]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[208]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[213]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[221]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[223]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[224]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[227]" -type "float2" -0.13752094 0.67822826 ;
	setAttr ".uvtk[229]" -type "float2" -0.13752094 0.67822826 ;
createNode polyMapSewMove -n "polyMapSewMove2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[190]";
createNode polyMapSewMove -n "polyMapSewMove3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[202]";
createNode polyMapSewMove -n "polyMapSewMove4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[201]";
createNode polyMapSewMove -n "polyMapSewMove5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[189]";
createNode polyTweakUV -n "polyTweakUV19";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" -0.13752094 0.68447924 ;
	setAttr ".uvtk[161]" -type "float2" -0.13752094 0.68447924 ;
	setAttr ".uvtk[163]" -type "float2" -0.13752094 0.68447924 ;
	setAttr ".uvtk[172]" -type "float2" -0.13752094 0.68447924 ;
	setAttr ".uvtk[177]" -type "float2" -0.13752094 0.68447924 ;
	setAttr ".uvtk[180]" -type "float2" -0.13752094 0.68447924 ;
	setAttr ".uvtk[210]" -type "float2" -0.13752094 0.68447924 ;
	setAttr ".uvtk[220]" -type "float2" -0.13752094 0.68447924 ;
createNode polyMergeUV -n "polyMergeUV1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 25 "map[68]" "map[70:71]" "map[73]" "map[75:83]" "map[87]" "map[106]" "map[113]" "map[121]" "map[123]" "map[133]" "map[138]" "map[140]" "map[144:146]" "map[150:151]" "map[159:161]" "map[163]" "map[172]" "map[175]" "map[177]" "map[180]" "map[189]" "map[208]" "map[210]" "map[213]" "map[220:221]";
	setAttr ".d" 0.0099999997764825821;
createNode polyTweakUV -n "polyTweakUV20";
	setAttr ".uopa" yes;
	setAttr -s 64 ".uvtk";
	setAttr ".uvtk[2]" -type "float2" 0.002252006 -0.0013785847 ;
	setAttr ".uvtk[5]" -type "float2" 0.0022520209 -0.0013785847 ;
	setAttr ".uvtk[8]" -type "float2" 0.002252006 -0.0013785549 ;
	setAttr ".uvtk[11]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[83]" -type "float2" 0.002252006 -0.0013785549 ;
	setAttr ".uvtk[84]" -type "float2" 0.0022520116 -0.0013785549 ;
	setAttr ".uvtk[85]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[87]" -type "float2" 0.002252006 -0.0013785549 ;
	setAttr ".uvtk[88]" -type "float2" 0.0022520116 -0.0013785549 ;
	setAttr ".uvtk[89]" -type "float2" 0.0022520358 -0.0013785549 ;
	setAttr ".uvtk[90]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[91]" -type "float2" 0.002252006 -0.0013785549 ;
	setAttr ".uvtk[92]" -type "float2" 0.0022520134 -0.0013785549 ;
	setAttr ".uvtk[93]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[94]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[95]" -type "float2" 0.002252006 -0.0013785399 ;
	setAttr ".uvtk[96]" -type "float2" 0.0022520116 -0.0013785399 ;
	setAttr ".uvtk[97]" -type "float2" 0.0022520209 -0.0013785399 ;
	setAttr ".uvtk[98]" -type "float2" 0.0022520209 -0.0013785399 ;
	setAttr ".uvtk[99]" -type "float2" 0.002252006 -0.0013785399 ;
	setAttr ".uvtk[100]" -type "float2" -0.58878756 0.093448147 ;
	setAttr ".uvtk[101]" -type "float2" 0.0022520209 -0.0013785399 ;
	setAttr ".uvtk[102]" -type "float2" 0.0022520209 -0.0013785399 ;
	setAttr ".uvtk[106]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[107]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[108]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[111]" -type "float2" 0.0022520111 -0.0013785549 ;
	setAttr ".uvtk[113]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[114]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[115]" -type "float2" 0.0022520209 -0.0013785399 ;
	setAttr ".uvtk[116]" -type "float2" 0.0022520209 -0.0013785399 ;
	setAttr ".uvtk[117]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[118]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[119]" -type "float2" 0.0022520134 -0.0013785399 ;
	setAttr ".uvtk[121]" -type "float2" 0.002252013 -0.0013785549 ;
	setAttr ".uvtk[131]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[133]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[134]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[135]" -type "float2" 0.0022520134 -0.0013785549 ;
	setAttr ".uvtk[136]" -type "float2" 0.0022520134 -0.0013785549 ;
	setAttr ".uvtk[138]" -type "float2" 0.0022520134 -0.0013785549 ;
	setAttr ".uvtk[140]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[141]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[142]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[146]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[147]" -type "float2" 0.0022520134 -0.0013785549 ;
	setAttr ".uvtk[148]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[160]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[171]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[172]" -type "float2" 0.0022520134 -0.0013785399 ;
	setAttr ".uvtk[174]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[176]" -type "float2" 0.0022520116 -0.0013785549 ;
	setAttr ".uvtk[177]" -type "float2" 0.002252013 -0.0013785549 ;
	setAttr ".uvtk[180]" -type "float2" 0.0022520209 -0.0013785399 ;
	setAttr ".uvtk[185]" -type "float2" 0.0022520209 -0.0013785549 ;
	setAttr ".uvtk[198]" -type "float2" -0.58878756 0.093448155 ;
	setAttr ".uvtk[199]" -type "float2" -0.58878756 0.093448155 ;
	setAttr ".uvtk[200]" -type "float2" -0.58878756 0.093448155 ;
	setAttr ".uvtk[201]" -type "float2" -0.58878756 0.093448155 ;
	setAttr ".uvtk[205]" -type "float2" -0.58878756 0.093448147 ;
	setAttr ".uvtk[209]" -type "float2" 0.0022520116 -0.0013785399 ;
	setAttr ".uvtk[212]" -type "float2" 0.0022520116 -0.0013785399 ;
	setAttr ".uvtk[213]" -type "float2" -0.58878756 0.093448155 ;
	setAttr ".uvtk[215]" -type "float2" -0.58878756 0.093448155 ;
createNode polyMergeUV -n "polyMergeUV2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 26 "map[2]" "map[5]" "map[8]" "map[11]" "map[83:85]" "map[87:102]" "map[106:108]" "map[111]" "map[113:119]" "map[121]" "map[131]" "map[133:136]" "map[138]" "map[140:142]" "map[146:148]" "map[160]" "map[171:172]" "map[174]" "map[176:177]" "map[180]" "map[185]" "map[198:201]" "map[205]" "map[209]" "map[212:213]" "map[215]";
	setAttr ".d" 0.0099999997764825821;
createNode polyMapCut -n "polyMapCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[137]" "e[206]" "e[214]" "e[216]" "e[268:269]" "e[271]" "e[273:277]" "e[279]" "e[281:282]" "e[300]" "e[307:308]";
createNode polyTweakUV -n "polyTweakUV21";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk";
	setAttr ".uvtk[68]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[71]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[73]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[107]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[158]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[162]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[176]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[177]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[178]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[203]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[208]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[210]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[211]" -type "float2" -0.21878332 0.30629665 ;
	setAttr ".uvtk[212]" -type "float2" -0.21878332 0.30629665 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold8";
	setAttr ".uvl" -type "Int32Array" 215 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 44 45 46 47 48 49 50 51 52 53
		 54 55 56 57 58 59 60 61 62 63 64 65
		 66 67 68 69 70 71 72 73 74 75 76 77
		 78 79 80 81 82 83 84 85 86 87 88 89
		 90 91 92 93 94 95 96 97 98 99 100 101
		 102 103 104 105 106 107 108 109 110 111 112 113
		 114 115 116 117 118 119 120 121 122 123 124 125
		 126 127 128 129 130 131 132 133 134 135 136 137
		 138 139 140 141 142 143 144 145 146 147 148 149
		 150 151 152 153 154 155 156 157 158 159 160 161
		 162 163 164 165 166 167 168 169 170 171 172 173
		 174 175 176 177 178 179 180 181 182 183 184 185
		 186 187 188 189 190 191 192 193 194 195 196 197
		 198 199 200 201 202 203 204 205 206 207 208 209
		 210 211 212 213 214 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 50 76 4 1 3 1 4
		 1 3 1 0 1 4 1 0 1 3 1 4
		 2 3 1 4 1 3 3 4 1 3 1 4
		 1 3 1 4 1 3 3 4 1 3 17 4
		 32 0 20 4 114 0 18 4 ;
	setAttr ".fpve" -type "Int32Array" 602 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 120 122 124 125
		 126 127 128 127 129 130 128 129 131 130 117 113
		 132 133 117 132 134 84 135 85 132 113 109 136
		 134 132 136 137 85 135 138 89 136 109 104 89
		 138 97 93 115 139 111 115 140 141 139 78 81
		 142 111 139 143 107 139 141 144 143 142 81 87
		 145 107 143 101 145 87 91 95 118 120 146 147
		 120 125 148 146 127 126 149 150 151 118 147 152
		 122 123 153 154 123 155 156 153 131 129 157 158
		 124 122 154 159 137 136 160 161 136 104 162 160
		 104 103 163 162 97 138 164 165 143 144 166 167
		 145 95 168 169 98 101 170 171 101 143 167 170
		 150 149 172 173 146 148 174 175 147 146 175 176
		 152 147 176 177 158 157 178 179 153 156 180 181
		 154 153 181 182 159 154 182 183 160 162 184 185
		 161 160 185 186 165 164 187 188 162 163 189 184
		 171 170 190 191 169 168 192 193 167 166 194 195
		 170 167 195 190 99 102 196 197 102 105 198 196
		 105 100 199 198 100 99 197 199 56 43 59 58
		 43 42 60 59 35 65 200 201 57 56 58 62
		 65 66 202 200 64 57 62 63 39 67 70 69
		 76 33 203 204 36 39 69 72 67 68 73 70
		 68 75 74 73 77 76 204 205 78 79 206 207
		 79 82 208 206 82 209 210 208 115 114 211 212
		 114 116 213 211 116 117 214 213 ;
	setAttr ".mue" -type "floatArray" 215 0.91043353 0.8580507 0.85519826 0.93409818
		 0.80538005 0.80747098 0.75315779 0.72937155 0.88880992 0.96296048 0.70061606 0.77408701
		 0.053881198 0.14318261 0.14413495 0.079561889 0.19623818 0.19335784 0.2838524 0.25786906
		 0.13990863 0.084946714 0.1967659 0.25196901 0.13792963 0.087541722 0.19898459 0.2495375
		 0.14622802 0.099612989 0.19136325 0.23768562 0.13842152 0.07631778 0.20052829 0.26144949
		 0.92640442 0.86221808 0.85792089 0.91391081 0.79988486 0.80501634 0.73603493 0.74922544
		 0.85166579 0.89366454 0.81188905 0.76987231 0.85870105 0.90309995 0.80508327 0.76063973
		 0.85948825 0.90793866 0.80448896 0.75585783 0.71954924 0.71010184 0.68885124 0.71458441
		 0.70228279 0.67201251 0.68324649 0.66645551 0.67688274 0.29480201 0.29690227 0.9440406
		 0.95354396 0.9485513 0.97455043 0.99131161 0.96059448 0.98033029 0.99712199 0.98685873
		 0.042416636 0.04025244 0.59572923 0.67631233 0.65464288 0.60382211 0.74365193 0.75503838
		 0.824512 0.80391413 0.64926171 0.60534829 0.75325406 0.79614818 0.67964029 0.63443667
		 0.71564561 0.76247972 0.65113443 0.58621866 0.74093366 0.80747539 0.44136551 0.37800017
		 0.37170014 0.43757436 0.28675362 0.22260725 0.22650635 0.29237038 0.3677372 0.42911965
		 0.29722202 0.23597181 0.37183505 0.44405305 0.29326642 0.22108193 0.3636035 0.44482541
		 0.3006089 0.21975818 0.32155019 0.24567547 0.25204641 0.1873709 0.18175608 0.11190314
		 0.18919751 0.24536261 0.43892986 0.51545984 0.51332337 0.5737924 0.57590395 0.65030128
		 0.1802772 0.11809934 0.12109652 0.86417478 0.17534152 0.10929339 0.84897488 0.48491895
		 0.54665965 0.54607016 0.54327577 0.4899236 0.55617124 0.55116636 0.29577661 0.34622249
		 0.28725302 0.43996674 0.4948355 0.4317463 0.38575378 0.087105796 0.13840392 0.0020000001
		 0.047192052 0.59411561 0.64962661 0.1473719 0.11587482 0.080616824 0.14736055 0.15377581
		 0.90845942 0.87874377 0.58080661 0.5439586 0.52012074 0.49508837 0.51031494 0.50362718
		 0.44654194 0.47880557 0.32198802 0.32598624 0.35660508 0.37247807 0.61067325 0.64303482
		 0.060482241 0.075879611 0.10694765 0.11088744 0.030949505 0.022696102 0.0020000001
		 0.99800003 0.99283928 0.038167506 0.6299758 0.62257111 0.39501607 0.39463282 0.66000146
		 0.63880318 0.30568194 0.35915124 0.31259301 0.35183826 0.33530745 0.30530348 0.32719302
		 0.032292344 0.0020000001 0.0099607892 0.65686405 0.61769742 0.70238131 0.76408112
		 0.721196 0.36832654 0.42951337 0.2949467 0.23424006 ;
	setAttr ".mve" -type "floatArray" 215 0.1029994 0.07756386 0.03094247 0.085004799
		 0.078529187 0.033553835 0.10390148 0.086139061 0.0020000001 0.06387987 0.064943947
		 0.0042727776 0.4579297 0.40248561 0.46829727 0.47837389 0.40595615 0.46781451 0.45935392
		 0.47947684 0.5160473 0.52303809 0.51637381 0.52346838 0.5805285 0.57541341 0.58052075
		 0.57520235 0.63527685 0.61232752 0.63474244 0.61162585 0.66940302 0.63443118 0.66720515
		 0.63339335 0.2866599 0.30790785 0.27296555 0.24811152 0.30834317 0.27173212 0.28606191
		 0.24765544 0.24231099 0.22404119 0.24208729 0.22384638 0.19245443 0.18879265 0.19257136
		 0.18885416 0.14220324 0.14129221 0.14205645 0.14168657 0.19154483 0.12262645 0.20376109
		 0.23764142 0.25229198 0.20396836 0.15405074 0.14623939 0.10259587 0.57907665 0.50652403
		 0.19161212 0.12198742 0.23821969 0.20422593 0.2046134 0.25314322 0.15405452 0.14639197
		 0.10225976 0.57945579 0.50591522 0.47132087 0.45957232 0.52129644 0.53407669 0.44772959
		 0.5186792 0.47681609 0.53852445 0.60946602 0.61673093 0.61209953 0.62211889 0.69660014
		 0.67738146 0.69749761 0.68157732 0.73737913 0.72411329 0.74080646 0.73138916 0.40542555
		 0.4272705 0.34061903 0.32818222 0.4280498 0.40652594 0.32896459 0.34103945 0.24801563
		 0.24006382 0.24778159 0.24067372 0.16498128 0.16449007 0.16537325 0.16512631 0.072700866
		 0.081565186 0.072922073 0.082243383 0.82112277 0.82620031 0.74255627 0.82431799 0.74373829
		 0.82059097 0.67170233 0.67374647 0.85733169 0.81175447 0.86556143 0.81176794 0.86557591
		 0.85738063 0.14530207 0.050620478 0.13020761 0.5485726 0.24058503 0.20726283 0.64233631
		 0.14474499 0.047495686 0.12718803 0.53640002 0.23920108 0.21069388 0.63259304 0.71200651
		 0.74342602 0.67652816 0.78335553 0.77191544 0.80308497 0.73954439 0.7434122 0.71200937
		 0.80402923 0.74000031 0.77196705 0.78346688 0.67564249 0.2859734 0.25560948 0.34412172
		 0.39401871 0.675053 0.73248219 0.25525552 0.2844061 0.72143865 0.65954822 0.34322217
		 0.39416161 0.74188191 0.74095124 0.67397904 0.68849868 0.70018214 0.69882578 0.73954064
		 0.74001092 0.69729507 0.69838637 0.68707973 0.67298907 0.39141732 0.36794165 0.34867075
		 0.7507931 0.77491462 0.41890031 0.39360625 0.42101955 0.74664873 0.72239995 0.35164729
		 0.37052238 0.40918928 0.40850037 0.35954756 0.36018798 0.58694738 0.62584561 0.53545332
		 0.62659883 0.58748788 0.5355016 0.4032996 0.42935351 0.40572062 0.35939166 0.38604003
		 0.0020000001 0.034210119 0.0020783322 0.03499553 ;
	setAttr ".mnsl" -type "stringArray" 1 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[0:214]"  ;
createNode polyTweakUV -n "polyTweakUV22";
	setAttr ".uopa" yes;
	setAttr -s 215 ".uvtk[0:214]" -type "float2" -0.51442671 0.68020314 -0.48443806
		 0.75175798 -0.52263242 0.80089086 -0.55393434 0.67736262 -0.4309175 0.79716545 -0.47260603
		 0.84029996 -0.3563568 0.81777126 -0.34820902 0.85647571 -0.58172596 0.80024058 -0.60139567
		 0.67307639 -0.33811438 0.90298808 -0.465002 0.89897323 0.70340127 0.37478444 0.56528527
		 0.35160488 0.62227541 0.2849547 0.6957202 0.3317301 0.51528525 0.30142269 0.57262748
		 0.24210027 0.47468397 0.17088673 0.5183841 0.1736403 0.66854227 0.24092567 0.72965908
		 0.28232497 0.61197245 0.19054039 0.56301558 0.13484338 0.72729242 0.17818682 0.77317691
		 0.22766496 0.66623056 0.12444003 0.61099517 0.085250176 0.767196 0.11613233 0.79360574
		 0.18012288 0.72159028 0.076928444 0.65491539 0.059261378 0.80504817 0.088879272 0.83636177
		 0.17852905 0.74100637 0.036396559 0.6503163 0.016571516 -0.36869752 0.48248145 -0.28580382
		 0.51774502 -0.31227088 0.55647069 -0.39014304 0.53202951 -0.2230874 0.57218969 -0.26045227
		 0.6042828 -0.1788545 0.65068626 -0.22585919 0.67747945 -0.33300498 0.59263241 -0.39108899
		 0.5739252 -0.29342517 0.62787664 -0.26746827 0.68311036 -0.38393545 0.63629496 -0.43155822
		 0.60086656 -0.33021471 0.68338466 -0.28904387 0.72623122 -0.42896518 0.685853 -0.47821772
		 0.64410686 -0.37409511 0.7344228 -0.32578972 0.77760887 -0.24558443 0.75971776 -0.29681483
		 0.836954 -0.20413087 0.77452898 -0.20003483 0.71799242 -0.1748344 0.71417254 -0.18710968
		 0.78914702 -0.24229254 0.82917392 -0.23237893 0.85176849 -0.28123119 0.8862316 0.56914175
		 0.04152365 0.50316405 0.11222716 -0.47001651 0.56200176 -0.54081953 0.62325943 -0.4334926
		 0.51142281 -0.4894208 0.52252626 -0.50584084 0.50738174 -0.43239662 0.48589617 -0.53937304
		 0.56760883 -0.56291109 0.56048751 -0.59150308 0.61365581 0.82186091 0.26335198 0.75927782
		 0.33879802 -0.036636941 -0.094990842 -0.12721759 -0.1553676 -0.050493393 -0.19725862
		 0.01157942 -0.16529478 -0.18966892 -0.20559241 -0.15319335 -0.28303257 -0.25952452
		 -0.30233607 -0.1845967 -0.34590942 0.032514893 -0.2806904 0.082824454 -0.24929272
		 -0.069159091 -0.37488192 -0.10323167 -0.42266643 0.078851528 -0.39457071 0.10713441
		 -0.3355535 0.043636475 -0.42716837 -0.017214423 -0.45248219 0.14326046 -0.41025236
		 0.19649661 -0.33983275 0.056478709 -0.49274161 -0.018354293 -0.54190958 0.010040117
		 -0.21092561 0.092638448 -0.17698187 0.02264794 -0.084783658 -0.05417601 -0.13034444
		 0.18457106 -0.097425051 0.22976722 -0.019424843 0.15758082 0.054703627 0.10234787
		 -0.015359845 -0.054919854 0.011308826 -0.12330329 -0.034782264 0.015389279 0.073626488
		 0.0703815 0.13466084 -0.13212354 0.090735309 -0.20477402 0.027643669 -0.053209811
		 0.15951745 0.018757233 0.22331774 -0.20513837 0.19026302 -0.2785559 0.10988855 -0.14194903
		 0.2455041 -0.052891556 0.30736613 0.61465591 -0.72174323 0.69500107 -0.66001844 0.61498749
		 -0.58198357 0.75164837 -0.60680306 0.68631846 -0.52127999 0.82383478 -0.53663206
		 0.61545455 -0.45579562 0.56108916 -0.50728911 -0.283398 0.090653047 -0.4000555 0.068851039
		 -0.35054582 0.016925041 -0.4583762 0.017479835 -0.41311365 -0.038187213 -0.49472633
		 -0.09549351 0.042108137 0.27906767 0.020925565 0.42849252 0.08799921 0.34626654 -0.23601073
		 -0.40901279 0.1309337 0.18813021 0.16764401 0.27960312 -0.13825837 -0.48939395 -0.26302409
		 0.011409219 -0.41038594 0.054300219 -0.33963293 -0.024873115 0.074171342 -0.11431137
		 -0.18486682 -0.087453105 -0.27621305 -0.11727225 0.15097174 -0.21745145 0.5443604
		 -0.58993518 0.52157718 -0.66576868 0.52164775 -0.54695237 -0.34956565 0.1637163 -0.41450661
		 0.1268483 0.4885788 -0.80072534 0.4786284 -0.69669157 0.78068161 -0.43762091 0.70173562
		 -0.45138246 0.91915643 -0.42330843 0.81759143 -0.39906788 -0.51374125 0.039387561
		 -0.55912751 -0.020985767 0.66074908 -0.42291126 0.23036167 0.1950981 0.23888639 0.25650418
		 0.25007144 0.1092288 0.2875869 0.053683646 -0.16893829 -0.57448262 -0.088660277 -0.60574943
		 -0.26161504 -0.18352361 -0.19910201 -0.18023212 0.26023972 -0.27896366 0.23078205
		 -0.19503397 -0.11367496 -0.20942733 -0.062138602 -0.25447866 -0.39265543 0.19940096
		 -0.42573845 0.17192578 0.48466849 -0.57498497 0.4934538 -0.59302473 0.4731214 -0.63166595
		 0.45605424 -0.64428467 -0.55884808 0.057236157 -0.59079558 0.028273804 0.76670235
		 -0.36806369 0.75226587 -0.38271123 0.71124303 -0.39875785 0.69489747 -0.38813585
		 0.4081229 0.16442488 0.39570764 0.19516714 0.39943707 0.23265949 -0.25216648 -0.74880105
		 -0.20275506 -0.76199812 0.42510167 0.13058701 -0.1889762 -0.36516431 -0.15743604
		 -0.38605833 0.38316277 -0.16838545 0.33775854 -0.14411299 -0.25594378 -0.34964082
		 -0.2181273 -0.34985232 0.14903741 -0.095229574 0.094961576 -0.1416166 0.098420292
		 -0.051672552 0.059738915 -0.086865634 0.53556591 -0.0020092325 0.59981704 -0.014491088
		 0.49834347 0.056629013 0.87349135 0.22512268 0.8693493 0.29090399 0.81561822 0.33588129
		 -0.17960812 -0.10098638 -0.10733526 -0.069711149 -0.2218878 -0.16622779 -0.19569381
		 -0.18691313 -0.21670628 -0.19337189 -0.27210853 0.25680557 -0.30493662 0.17072479
		 -0.19865973 0.32133299 -0.10897182 0.34186372;
createNode polyMapCut -n "polyMapCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[6]" "e[8]" "e[21:23]" "e[64]" "e[67]" "e[84:85]" "e[89]" "e[92]" "e[95:96]" "e[100]" "e[103]";
createNode Unfold3DUnfold -n "Unfold3DUnfold9";
	setAttr ".uvl" -type "Int32Array" 38 0 1 2 3 4 5
		 6 7 8 9 10 11 37 38 40 41 42 44
		 45 46 47 48 49 50 51 52 53 54 55 75
		 215 217 218 219 220 221 222 224 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 50 76 4 1 3 1 4
		 1 3 1 0 1 4 1 0 1 3 1 4
		 2 3 1 4 1 3 3 4 1 3 1 4
		 1 3 1 4 1 3 3 4 1 3 17 4
		 32 0 20 4 114 0 18 4 ;
	setAttr ".fpve" -type "Int32Array" 602 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 120 122 124 125
		 126 127 128 127 129 130 128 129 131 130 117 113
		 132 133 117 132 134 84 135 85 132 113 109 136
		 134 132 136 137 85 135 138 89 136 109 104 89
		 138 97 93 115 139 111 115 140 141 139 78 81
		 142 111 139 143 107 139 141 144 143 142 81 87
		 145 107 143 101 145 87 91 95 118 120 146 147
		 120 125 148 146 127 126 149 150 151 118 147 152
		 122 123 153 154 123 155 156 153 131 129 157 158
		 124 122 154 159 137 136 160 161 136 104 162 160
		 104 103 163 162 97 138 164 165 143 144 166 167
		 145 95 168 169 98 101 170 171 101 143 167 170
		 150 149 172 173 146 148 174 175 147 146 175 176
		 152 147 176 177 158 157 178 179 153 156 180 181
		 154 153 181 182 159 154 182 183 160 162 184 185
		 161 160 185 186 165 164 187 188 162 163 189 184
		 171 170 190 191 169 168 192 193 167 166 194 195
		 170 167 195 190 99 102 196 197 102 105 198 196
		 105 100 199 198 100 99 197 199 200 201 59 58
		 201 202 60 59 35 65 203 204 205 200 58 62
		 65 66 206 203 207 205 62 63 208 209 70 69
		 76 33 210 211 212 208 69 72 209 213 73 70
		 213 214 74 73 77 76 211 215 78 79 216 217
		 79 82 218 216 82 219 220 218 115 114 221 222
		 114 116 223 221 116 117 224 223 ;
	setAttr ".mue" -type "floatArray" 225 0.24289505 0.18761326 0.18344736 0.26573634
		 0.13314712 0.13656984 0.077952951 0.054966144 0.21485987 0.29260966 0.028079242 0.10527574
		 0.22043578 0.30933234 0.31028041 0.24600013 0.36214727 0.35927999 0.44936427 0.42349881
		 0.30607322 0.25136054 0.36267266 0.41762549 0.3041032 0.25394374 0.36488131 0.41520494
		 0.31236398 0.26596031 0.35729444 0.40340686 0.30459279 0.24277066 0.36641791 0.4270629
		 0.25207689 0.18986352 0.18676233 0.24462128 0.12893102 0.13287918 0.067048699 0.075377665
		 0.18119974 0.2264576 0.13919629 0.09405867 0.18964742 0.23900719 0.13123333 0.081847161
		 0.19038486 0.24254557 0.1308177 0.078453466 0.033568811 0.032201994 0.066308796 0.079482652
		 0.06210997 0.049654238 0.078637727 0.06490913 0.0020000001 0.46026427 0.46235499
		 0.28715527 0.28860688 0.039139841 0.052248999 0.068762504 0.056299072 0.03975866
		 0.053391904 0.31872207 0.20902331 0.20686892 0.59799469 0.6708594 0.6526773 0.6076535
		 0.73404157 0.74232733 0.80311495 0.78663099 0.65061969 0.61159754 0.74364847 0.78229916
		 0.68049127 0.63948923 0.71270025 0.75406277 0.65628612 0.59785146 0.7366541 0.79583389
		 0.43937325 0.37629524 0.37002379 0.43559927 0.28546247 0.22160698 0.22548839 0.29105374
		 0.36607879 0.42718291 0.29588336 0.23491091 0.37015808 0.44204861 0.29194573 0.22008853
		 0.36196384 0.44281745 0.29925492 0.2187708 0.87408167 0.79855102 0.80489302 0.74051076
		 0.73492151 0.66538525 0.74232912 0.79823953 0.49442711 0.57061011 0.56848335 0.6286782
		 0.63078016 0.70484012 0.17946883 0.11757288 0.12055648 0.84080452 0.17455557 0.10880693
		 0.83014566 0.4827292 0.54418993 0.54360312 0.55361086 0.48771116 0.55365837 0.56366575
		 0.84842497 0.89864206 0.83994001 0.49545932 0.55007935 0.98377818 0.93799412 0.64070028
		 0.69176579 0.5559805 0.60096759 0.64890921 0.70416856 0.70069313 0.11535846 0.080260329
		 0.14670143 0.1530876 0.88433313 0.85956651 0.57818204 0.5415011 0.53869098 0.51438564
		 0.50801003 0.50135261 0.50200468 0.53412199 0.8745175 0.87849754 0.90897763 0.92477864
		 0.6653918 0.69760662 0.61419749 0.62952501 0.66045219 0.66437411 0.030818265 0.022602238
		 0.0020000001 0.98463029 0.97510892 0.038003456 0.62712824 0.61975718 0.40076593 0.39911863
		 0.65701777 0.63591558 0.30430496 0.35753179 0.31118467 0.35025197 0.10092153 0.10999644
		 0.083219372 0.50058597 0.47071806 0.11636305 0.49250835 0.090845659 0.0088765221
		 0.017885216 0.1989449 0.16878983 0.035015959 0.0020000001 0.02741267 0.1767146 0.67023277
		 0.61320782 0.73412067 0.80526733 0.78250623 0.36666548 0.42757484 0.29361841 0.233187 ;
	setAttr ".mve" -type "floatArray" 225 0.5129261 0.48924902 0.44019392 0.4913328
		 0.49001479 0.442505 0.51368183 0.49234584 0.40772462 0.46495056 0.4660196 0.40976706
		 0.74108183 0.68588912 0.75140232 0.76143324 0.68934393 0.75092179 0.74249953 0.76253122
		 0.79893583 0.80589491 0.79926091 0.80632323 0.86312467 0.85803282 0.86311692 0.8578226
		 0.91762471 0.89477944 0.91709268 0.894081 0.95159614 0.91678298 0.94940823 0.91574985
		 0.71669436 0.73355234 0.69604766 0.67353129 0.73372859 0.69481105 0.71546096 0.67239642
		 0.66357601 0.64520842 0.66328096 0.64464283 0.61091369 0.60723692 0.61093926 0.60698992
		 0.55778909 0.5549776 0.5576545 0.55519813 0.6109246 0.5281288 0.8307578 0.87335694
		 0.88336593 0.82491624 0.77979857 0.76607859 0.49716222 0.86167938 0.78945583 0.61151534
		 0.5275631 0.7800867 0.73748088 0.73180038 0.79031157 0.68638074 0.6728254 0.49645883
		 0.86205679 0.78884965 0.47833726 0.4656311 0.52222389 0.5352329 0.46839303 0.51675087
		 0.47716585 0.53296268 0.60119629 0.60906017 0.60030389 0.60792041 0.67812681 0.66236037
		 0.67780524 0.66211402 0.71546417 0.70563358 0.71572447 0.70523047 0.40359613 0.42534211
		 0.33908349 0.3267031 0.42611781 0.40469158 0.32748193 0.33950204 0.24690001 0.23898429
		 0.24666707 0.23959139 0.16424224 0.16375326 0.16463242 0.16438657 0.072380275 0.081204362
		 0.072600462 0.081879504 0.86790532 0.87295991 0.78969514 0.87108606 0.79087174 0.86737597
		 0.71916252 0.72119737 0.98979318 0.9444226 0.9979856 0.94443601 0.99800003 0.98984188
		 0.14465223 0.050399996 0.12962623 0.54006255 0.23950312 0.20633203 0.62434143 0.14409767
		 0.047289334 0.12662037 0.53919935 0.23812547 0.20974751 0.62492847 0.7592839 0.7905609
		 0.72396636 0.91615248 0.90476424 0.8499493 0.78669691 0.79054713 0.75928676 0.85088927
		 0.78715068 0.90481567 0.91626328 0.72308469 0.2846857 0.25445947 0.34257033 0.39224103
		 0.65172625 0.70398295 0.25410712 0.28312549 0.70530623 0.65077108 0.34167486 0.39238334
		 0.8748669 0.87394047 0.72142881 0.73588264 0.74751312 0.74616295 0.87253624 0.87300444
		 0.74463916 0.74572557 0.73447007 0.72044343 0.38965148 0.36628225 0.34709874 0.65463954
		 0.69994867 0.41700977 0.39183047 0.41911945 0.70790547 0.6614244 0.35006174 0.36885127
		 0.40734285 0.40665707 0.35792619 0.35856372 0.82975078 0.89565444 0.92873538 0.86951441
		 0.90823627 0.75849861 0.81825387 0.72684896 0.80227196 0.73618799 0.90898609 0.87005252
		 0.83541226 0.66473848 0.63342422 0.81830192 0.3926357 0.42827645 0.39369527 0.4805463
		 0.41639537 0.0020000001 0.034064054 0.0020779571 0.034845896 ;
	setAttr ".mnsl" -type "stringArray" 5 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[75]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[67:68]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[64]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[36:57]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[0:11]"  ;
createNode Unfold3DUnfold -n "Unfold3DUnfold10";
	setAttr ".uvl" -type "Int32Array" 11 69 70 71 72 73 74
		 208 209 212 213 214 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 50 76 4 1 3 1 4
		 1 3 1 0 1 4 1 0 1 3 1 4
		 2 3 1 4 1 3 3 4 1 3 1 4
		 1 3 1 4 1 3 3 4 1 3 17 4
		 32 0 20 4 114 0 18 4 ;
	setAttr ".fpve" -type "Int32Array" 602 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 120 122 124 125
		 126 127 128 127 129 130 128 129 131 130 117 113
		 132 133 117 132 134 84 135 85 132 113 109 136
		 134 132 136 137 85 135 138 89 136 109 104 89
		 138 97 93 115 139 111 115 140 141 139 78 81
		 142 111 139 143 107 139 141 144 143 142 81 87
		 145 107 143 101 145 87 91 95 118 120 146 147
		 120 125 148 146 127 126 149 150 151 118 147 152
		 122 123 153 154 123 155 156 153 131 129 157 158
		 124 122 154 159 137 136 160 161 136 104 162 160
		 104 103 163 162 97 138 164 165 143 144 166 167
		 145 95 168 169 98 101 170 171 101 143 167 170
		 150 149 172 173 146 148 174 175 147 146 175 176
		 152 147 176 177 158 157 178 179 153 156 180 181
		 154 153 181 182 159 154 182 183 160 162 184 185
		 161 160 185 186 165 164 187 188 162 163 189 184
		 171 170 190 191 169 168 192 193 167 166 194 195
		 170 167 195 190 99 102 196 197 102 105 198 196
		 105 100 199 198 100 99 197 199 200 201 59 58
		 201 202 60 59 35 65 203 204 205 200 58 62
		 65 66 206 203 207 205 62 63 208 209 70 69
		 76 33 210 211 212 208 69 72 209 213 73 70
		 213 214 74 73 77 76 211 215 78 79 216 217
		 79 82 218 216 82 219 220 218 115 114 221 222
		 114 116 223 221 116 117 224 223 ;
	setAttr ".mue" -type "floatArray" 225 0.24289504 0.18761325 0.18344735 0.26573634
		 0.13314712 0.13656984 0.077952944 0.054966141 0.21485986 0.29260966 0.02807924 0.10527574
		 0.22043586 0.3093324 0.31028047 0.2460002 0.36214733 0.35928005 0.44936433 0.42349887
		 0.30607328 0.2513606 0.36267272 0.41762555 0.30410326 0.2539438 0.36488137 0.415205
		 0.31236404 0.26596037 0.3572945 0.40340692 0.30459285 0.24277073 0.36641797 0.42706296
		 0.25207689 0.1898635 0.18676232 0.24462126 0.12893102 0.13287918 0.067048699 0.075377658
		 0.18119973 0.22645758 0.13919629 0.094058663 0.18964741 0.23900717 0.13123333 0.081847154
		 0.19038485 0.24254556 0.1308177 0.078453459 0.033568811 0.032201994 0.070280008 0.083453864
		 0.066081181 0.053625446 0.082608931 0.068880334 0.0020000001 0.46026433 0.46235505
		 0.28715527 0.28860688 0.037589662 0.0452796 0.065143824 0.059121046 0.0385889 0.056696519
		 0.31872204 0.20902339 0.20686899 0.59799486 0.67085958 0.65267748 0.60765368 0.73404175
		 0.74232751 0.80311513 0.78663117 0.65061986 0.61159772 0.74364865 0.78229934 0.68049145
		 0.63948941 0.71270043 0.75406295 0.6562863 0.59785163 0.73665428 0.79583406 0.43937322
		 0.37629521 0.37002376 0.43559924 0.28546244 0.22160697 0.22548838 0.29105371 0.36607876
		 0.42718288 0.29588333 0.23491089 0.37015805 0.44204858 0.2919457 0.22008851 0.36196381
		 0.44281742 0.29925489 0.21877079 0.87408191 0.79855126 0.80489326 0.740511 0.73492175
		 0.66538548 0.74232936 0.79823977 0.49442735 0.57061034 0.56848359 0.62867844 0.6307804
		 0.70484036 0.17946881 0.11757287 0.12055647 0.8408047 0.17455555 0.10880692 0.83014584
		 0.48272917 0.54418987 0.54360306 0.55361104 0.48771113 0.55365831 0.56366593 0.84842521
		 0.8986423 0.83994025 0.49545956 0.55007958 0.98377842 0.93799436 0.64070052 0.69176602
		 0.55598074 0.60096782 0.64890945 0.7041688 0.70069337 0.11535846 0.080260321 0.14670141
		 0.15308759 0.88433331 0.85956669 0.57818198 0.54150105 0.53869116 0.51438582 0.50800997
		 0.50135255 0.50200492 0.53412223 0.87451774 0.87849778 0.90897787 0.92477888 0.66539204
		 0.69760686 0.61419773 0.62952524 0.66045243 0.66437435 0.030818263 0.022602236 0.0020000001
		 0.98463041 0.97510904 0.038003452 0.62712818 0.61975712 0.40076613 0.39911884 0.65701771
		 0.63591552 0.30430493 0.35753176 0.31118464 0.35025194 0.10489274 0.11396765 0.087190591
		 0.50058603 0.47071812 0.12033425 0.49250841 0.094816864 0.010845453 0.0020000001
		 0.19894497 0.16878991 0.051274799 0.0032411246 0.042202089 0.17671467 0.67023295
		 0.613208 0.73412085 0.80526751 0.78250641 0.36666545 0.42757481 0.29361838 0.23318699 ;
	setAttr ".mve" -type "floatArray" 225 0.5129261 0.48924899 0.44019392 0.49133277
		 0.49001476 0.442505 0.51368183 0.49234581 0.40772462 0.46495056 0.4660196 0.40976706
		 0.74108177 0.68588907 0.75140226 0.76143318 0.68934387 0.75092173 0.74249947 0.76253116
		 0.79893577 0.80589485 0.79926085 0.80632317 0.86312461 0.85803276 0.86311686 0.85782254
		 0.91762465 0.89477938 0.91709262 0.89408094 0.95159608 0.91678292 0.94940817 0.91574979
		 0.71669436 0.73355234 0.69604766 0.67353129 0.73372859 0.69481105 0.71546096 0.67239642
		 0.66357601 0.64520842 0.66328096 0.64464283 0.61091369 0.60723692 0.61093926 0.60698992
		 0.55778909 0.5549776 0.5576545 0.55519813 0.6109246 0.5281288 0.83168751 0.87428665
		 0.88429564 0.82584596 0.78072828 0.7670083 0.49716219 0.86167932 0.78945577 0.61151534
		 0.5275631 0.77334327 0.73136169 0.72552007 0.78075683 0.68201292 0.67032588 0.4964588
		 0.86205673 0.78884959 0.47833729 0.46563113 0.52222389 0.5352329 0.46839306 0.51675087
		 0.47716588 0.53296268 0.60119629 0.60906017 0.60030389 0.60792041 0.67812681 0.66236037
		 0.67780524 0.66211402 0.71546417 0.70563358 0.71572447 0.70523047 0.4035961 0.42534208
		 0.33908346 0.32670307 0.42611778 0.40469155 0.3274819 0.33950201 0.24689999 0.23898427
		 0.24666706 0.23959137 0.16424222 0.16375324 0.16463241 0.16438656 0.072380267 0.081204355
		 0.072600454 0.081879497 0.86790532 0.87295991 0.78969514 0.87108606 0.79087174 0.86737597
		 0.71916252 0.72119737 0.98979312 0.9444226 0.99798554 0.94443601 0.99800003 0.98984188
		 0.14465222 0.050399993 0.12962621 0.54006255 0.2395031 0.20633201 0.62434143 0.14409766
		 0.047289331 0.12662035 0.53919935 0.23812546 0.20974749 0.62492847 0.7592839 0.7905609
		 0.72396636 0.91615242 0.90476424 0.8499493 0.78669691 0.79054713 0.75928676 0.85088927
		 0.78715068 0.90481567 0.91626328 0.72308469 0.28468567 0.25445944 0.3425703 0.392241
		 0.65172625 0.70398295 0.25410709 0.28312546 0.70530623 0.65077108 0.34167483 0.39238331
		 0.8748669 0.87394047 0.72142881 0.73588264 0.74751312 0.74616295 0.87253624 0.87300444
		 0.74463916 0.74572557 0.73447007 0.72044343 0.38965145 0.36628222 0.34709871 0.65463954
		 0.69994867 0.41700974 0.39183044 0.41911942 0.70790547 0.6614244 0.35006171 0.36885124
		 0.40734282 0.40665704 0.35792616 0.35856369 0.83068049 0.89658415 0.92966509 0.86951435
		 0.90823621 0.75942832 0.81825382 0.72777867 0.80089641 0.73138452 0.90898603 0.87005246
		 0.82587361 0.65584922 0.62978804 0.81830186 0.39263573 0.42827648 0.39369529 0.48054633
		 0.4163954 0.0020000001 0.034064051 0.0020779571 0.034845892 ;
	setAttr ".mnsl" -type "stringArray" 3 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[212:214]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[208:209]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[69:74]"  ;
createNode Unfold3DUnfold -n "Unfold3DUnfold11";
	setAttr ".uvl" -type "Int32Array" 11 58 59 60 61 62 63
		 200 201 202 205 207 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 50 76 4 1 3 1 4
		 1 3 1 0 1 4 1 0 1 3 1 4
		 2 3 1 4 1 3 3 4 1 3 1 4
		 1 3 1 4 1 3 3 4 1 3 17 4
		 32 0 20 4 114 0 18 4 ;
	setAttr ".fpve" -type "Int32Array" 602 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 120 122 124 125
		 126 127 128 127 129 130 128 129 131 130 117 113
		 132 133 117 132 134 84 135 85 132 113 109 136
		 134 132 136 137 85 135 138 89 136 109 104 89
		 138 97 93 115 139 111 115 140 141 139 78 81
		 142 111 139 143 107 139 141 144 143 142 81 87
		 145 107 143 101 145 87 91 95 118 120 146 147
		 120 125 148 146 127 126 149 150 151 118 147 152
		 122 123 153 154 123 155 156 153 131 129 157 158
		 124 122 154 159 137 136 160 161 136 104 162 160
		 104 103 163 162 97 138 164 165 143 144 166 167
		 145 95 168 169 98 101 170 171 101 143 167 170
		 150 149 172 173 146 148 174 175 147 146 175 176
		 152 147 176 177 158 157 178 179 153 156 180 181
		 154 153 181 182 159 154 182 183 160 162 184 185
		 161 160 185 186 165 164 187 188 162 163 189 184
		 171 170 190 191 169 168 192 193 167 166 194 195
		 170 167 195 190 99 102 196 197 102 105 198 196
		 105 100 199 198 100 99 197 199 200 201 59 58
		 201 202 60 59 35 65 203 204 205 200 58 62
		 65 66 206 203 207 205 62 63 208 209 70 69
		 76 33 210 211 212 208 69 72 209 213 73 70
		 213 214 74 73 77 76 211 215 78 79 216 217
		 79 82 218 216 82 219 220 218 115 114 221 222
		 114 116 223 221 116 117 224 223 ;
	setAttr ".mue" -type "floatArray" 225 0.24289501 0.18761323 0.18344733 0.26573631
		 0.13314711 0.13656983 0.077952936 0.054966137 0.21485984 0.29260963 0.028079238 0.10527573
		 0.22043589 0.30933243 0.3102805 0.24600023 0.36214733 0.35928005 0.44936433 0.42349887
		 0.30607331 0.25136063 0.36267272 0.41762555 0.30410329 0.25394383 0.36488137 0.415205
		 0.31236407 0.2659604 0.3572945 0.40340692 0.30459288 0.24277076 0.36641797 0.42706296
		 0.25207686 0.18986349 0.1867623 0.24462123 0.128931 0.13287917 0.067048691 0.075377651
		 0.18119971 0.22645755 0.13919628 0.094058648 0.18964739 0.23900715 0.13123332 0.081847146
		 0.19038484 0.24254553 0.13081768 0.078453451 0.033568807 0.03220199 0.075485796 0.083235383
		 0.061704896 0.055611052 0.082198158 0.064111844 0.0020000001 0.46026433 0.46235505
		 0.28715524 0.28860685 0.037589666 0.0452796 0.065143824 0.05912105 0.038588896 0.056696516
		 0.31872201 0.20902342 0.20686902 0.59799492 0.67085963 0.65267754 0.60765374 0.73404181
		 0.74232757 0.80311519 0.78663123 0.65061992 0.61159778 0.74364871 0.7822994 0.68049151
		 0.63948947 0.71270049 0.75406301 0.65628636 0.59785169 0.73665434 0.79583412 0.4393732
		 0.37629518 0.37002373 0.43559921 0.28546241 0.22160695 0.22548836 0.29105368 0.36607873
		 0.42718285 0.2958833 0.23491088 0.37015802 0.44204855 0.29194567 0.2200885 0.36196378
		 0.44281739 0.29925486 0.21877077 0.87408197 0.79855138 0.80489337 0.74051112 0.73492187
		 0.6653856 0.74232948 0.79823989 0.49442744 0.57061046 0.56848371 0.6286785 0.63078046
		 0.70484042 0.1794688 0.11757287 0.12055647 0.84080476 0.17455554 0.10880692 0.8301459
		 0.48272914 0.54418981 0.543603 0.5536111 0.4877111 0.55365825 0.56366599 0.84842533
		 0.89864236 0.83994037 0.49545965 0.55007964 0.98377848 0.93799442 0.64070064 0.69176614
		 0.55598086 0.60096794 0.64890951 0.70416886 0.70069349 0.11535845 0.080260314 0.1467014
		 0.15308757 0.88433337 0.85956675 0.57818192 0.54150099 0.53869122 0.51438588 0.50800991
		 0.50135249 0.50200504 0.53412229 0.8745178 0.87849784 0.90897793 0.92477894 0.6653921
		 0.69760692 0.61419785 0.62952536 0.66045254 0.66437447 0.030818261 0.022602234 0.0020000001
		 0.98463047 0.9751091 0.038003448 0.62712812 0.61975706 0.40076619 0.3991189 0.65701765
		 0.63591546 0.3043049 0.35753173 0.31118461 0.35025191 0.11878216 0.10998871 0.069602922
		 0.50058603 0.47071812 0.1175801 0.49250841 0.078698263 0.010845457 0.0020000001 0.198945
		 0.16878994 0.051274806 0.0032411192 0.042202082 0.1767147 0.67023301 0.61320806 0.73412091
		 0.80526757 0.78250647 0.36666542 0.42757478 0.29361835 0.23318698 ;
	setAttr ".mve" -type "floatArray" 225 0.51292604 0.48924896 0.44019389 0.49133274
		 0.49001473 0.44250497 0.51368177 0.49234578 0.40772459 0.46495053 0.46601957 0.40976703
		 0.74108171 0.68588901 0.7514022 0.76143312 0.68934381 0.75092167 0.74249941 0.7625311
		 0.79893571 0.80589479 0.7992608 0.80632311 0.86312455 0.8580327 0.8631168 0.85782248
		 0.91762459 0.89477932 0.91709256 0.89408088 0.95159602 0.91678286 0.94940811 0.91574973
		 0.7166943 0.73355228 0.6960476 0.67353123 0.73372853 0.69481099 0.7154609 0.67239636
		 0.66357595 0.64520836 0.6632809 0.64464277 0.61091363 0.60723686 0.6109392 0.60698986
		 0.55778903 0.55497754 0.55765444 0.55519807 0.61092454 0.52812874 0.82469839 0.86667103
		 0.87410682 0.81886101 0.77534592 0.7636134 0.49716216 0.86167926 0.78945571 0.61151528
		 0.52756304 0.77334321 0.73136163 0.72552001 0.78075677 0.68201286 0.67032582 0.49645877
		 0.86205667 0.78884953 0.47833732 0.46563116 0.52222389 0.5352329 0.46839309 0.51675087
		 0.47716591 0.53296268 0.60119629 0.60906017 0.60030389 0.60792041 0.67812681 0.66236037
		 0.67780524 0.66211402 0.71546417 0.70563358 0.71572447 0.70523047 0.40359607 0.42534205
		 0.33908343 0.32670304 0.42611775 0.40469152 0.32748187 0.33950198 0.24689998 0.23898426
		 0.24666704 0.23959136 0.16424221 0.16375323 0.16463239 0.16438654 0.07238026 0.081204347
		 0.072600447 0.081879489 0.86790532 0.87295991 0.78969514 0.87108606 0.79087174 0.86737597
		 0.71916252 0.72119737 0.98979312 0.9444226 0.99798554 0.94443601 0.99800003 0.98984188
		 0.1446522 0.050399989 0.1296262 0.54006255 0.23950309 0.206332 0.62434143 0.14409764
		 0.047289327 0.12662034 0.53919935 0.23812544 0.20974748 0.62492847 0.7592839 0.7905609
		 0.72396636 0.91615242 0.90476424 0.8499493 0.78669691 0.79054713 0.75928676 0.85088927
		 0.78715068 0.90481567 0.91626328 0.72308469 0.28468564 0.25445941 0.34257028 0.39224097
		 0.65172625 0.70398295 0.25410706 0.28312543 0.70530623 0.65077108 0.3416748 0.39238328
		 0.8748669 0.87394047 0.72142881 0.73588264 0.74751312 0.74616295 0.87253624 0.87300444
		 0.74463916 0.74572557 0.73447007 0.72044343 0.38965142 0.36628219 0.34709868 0.65463954
		 0.69994867 0.41700971 0.39183041 0.41911939 0.70790547 0.6614244 0.35006168 0.36885121
		 0.40734279 0.40665701 0.35792613 0.35856366 0.82469267 0.89420921 0.91922867 0.86951429
		 0.90823615 0.7492255 0.81825376 0.72308946 0.80089635 0.73138446 0.90898597 0.8700524
		 0.82587355 0.65584916 0.62978798 0.8183018 0.39263576 0.42827651 0.39369532 0.48054636
		 0.41639543 0.0020000001 0.034064047 0.0020779571 0.034845889 ;
	setAttr ".mnsl" -type "stringArray" 4 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[207]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[205]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[200:202]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[58:63]"  ;
createNode polyTweakUV -n "polyTweakUV23";
	setAttr ".uopa" yes;
	setAttr -s 23 ".uvtk";
	setAttr ".uvtk[58]" -type "float2" -0.1849516 0.13138868 ;
	setAttr ".uvtk[59]" -type "float2" -0.16406554 0.12995544 ;
	setAttr ".uvtk[60]" -type "float2" -0.20564446 0.13017516 ;
	setAttr ".uvtk[61]" -type "float2" -0.22216287 0.13127001 ;
	setAttr ".uvtk[62]" -type "float2" -0.1745515 0.13367142 ;
	setAttr ".uvtk[63]" -type "float2" -0.20599347 0.1313715 ;
	setAttr ".uvtk[69]" -type "float2" -0.30887133 0.012235298 ;
	setAttr ".uvtk[70]" -type "float2" -0.33430225 0.007548749 ;
	setAttr ".uvtk[71]" -type "float2" -0.2621713 0.009015562 ;
	setAttr ".uvtk[72]" -type "float2" -0.24475019 0.0094566531 ;
	setAttr ".uvtk[73]" -type "float2" -0.31404284 0.0060914196 ;
	setAttr ".uvtk[74]" -type "float2" -0.2497904 -0.0049352031 ;
	setAttr ".uvtk[200]" -type "float2" -0.14173467 0.1283007 ;
	setAttr ".uvtk[201]" -type "float2" -0.11970275 0.13126995 ;
	setAttr ".uvtk[202]" -type "float2" -0.15131433 0.12159942 ;
	setAttr ".uvtk[205]" -type "float2" -0.13305148 0.13681088 ;
	setAttr ".uvtk[207]" -type "float2" -0.15645574 0.13127483 ;
	setAttr ".uvtk[208]" -type "float2" -0.32401678 0.0093764067 ;
	setAttr ".uvtk[209]" -type "float2" -0.34068367 0.0093764067 ;
	setAttr ".uvtk[212]" -type "float2" -0.2484301 0.0094026551 ;
	setAttr ".uvtk[213]" -type "float2" -0.33834511 0.0093764067 ;
	setAttr ".uvtk[214]" -type "float2" -0.26801395 0.0081706326 ;
createNode polyFlipUV -n "polyFlipUV1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[47:48]" "f[289]" "f[291:293]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV24";
	setAttr ".uopa" yes;
	setAttr -s 225 ".uvtk[0:224]" -type "float2" 0.067146175 0.1373366 0.068292111
		 0.13782735 0.068378463 0.13884418 0.066672698 0.13778415 0.069421113 0.13781153 0.069350161
		 0.1387963 0.070565209 0.13732086 0.071041711 0.13776317 0.067727305 0.13951725 0.066115648
		 0.13833103 0.071599044 0.13830891 0.069998845 0.1394749 0.33870888 -0.038309146 0.19576371
		 -0.07017035 0.25897086 -0.13661197 0.33307412 -0.083695076 0.14633207 -0.12534522
		 0.20950074 -0.18411529 0.11116876 -0.26390997 0.15665071 -0.2586123 0.30972624 -0.18002543
		 0.37125373 -0.133406 0.25344518 -0.23577665 0.20540829 -0.29665276 0.37455454 -0.24228504
		 0.41972768 -0.1880735 0.31376889 -0.3017956 0.25826067 -0.34578177 0.41966408 -0.30487472
		 0.44369605 -0.23658766 0.37421265 -0.34834176 0.30556557 -0.37048668 0.46070254 -0.33123598
		 0.48843312 -0.23588224 0.39673486 -0.38959163 0.3031292 -0.4153212 0.06695585 0.13311271
		 0.068245463 0.13276328 0.068309724 0.1335407 0.067110389 0.13400744 0.069508508 0.13275956
		 0.069426671 0.13356628 0.070791252 0.13313824 0.070618592 0.13403098 0.068425037
		 0.13421381 0.067486912 0.13459449 0.069295719 0.13421991 0.070231371 0.13460627 0.068249933
		 0.13530537 0.067226768 0.13538159 0.069460779 0.1353049 0.070484489 0.13538671 0.068234645
		 0.13640665 0.067153417 0.13646485 0.0694694 0.13640942 0.070554838 0.13646027 0.071485244
		 0.13530521 0.071513586 0.13702139 0.38767338 -0.020745266 0.38021383 -0.031305645
		 0.39665362 -0.033299964 0.40254405 -0.019193711 0.38321558 -0.0084837368 0.39611757
		 -0.0048282901 0.072139621 0.13766335 0.21697818 -0.39376387 0.14416102 -0.32358769
		 0.066228718 0.13529289 0.066198625 0.13703318 0.89572269 0.16289307 0.86486226 0.17504993
		 1.024888039 0.1761896 1.044715524 0.16168565 0.88846511 0.18828478 1.031730652 0.19420166
		 0.065574378 0.13767788 0.46858865 -0.14810829 0.39905342 -0.072791338 -0.0011735152
		 -0.095192283 -0.086480998 -0.15384044 -0.012879301 -0.19262797 0.044883851 -0.16154647
		 -0.14695853 -0.21847488 -0.10788891 -0.27494663 -0.20744097 -0.29488924 -0.13631681
		 -0.33454376 0.066513702 -0.2695854 0.11323673 -0.23923601 -0.027388975 -0.35979342
		 -0.058581036 -0.40525943 0.11197797 -0.37576833 0.13754039 -0.31984976 0.079454087
		 -0.40698808 0.022725606 -0.43180197 0.17274652 -0.38940227 0.22155437 -0.32234827
		 0.092633441 -0.46836463 0.023177193 -0.51582372 0.043638166 -0.18641923 0.12801139
		 -0.14639473 0.049812261 -0.053994656 -0.027886981 -0.10583045 0.21960375 -0.058220498
		 0.26247716 0.025737526 0.18298654 0.099146239 0.12919217 0.022919899 -0.036515333
		 0.042052019 -0.1053711 -0.0098697627 0.033451993 0.11102533 0.087495387 0.17780955
		 -0.121539 0.12071507 -0.19390836 0.050803717 -0.042944543 0.19691598 0.028671853
		 0.26752949 -0.20330253 0.22060141 -0.27551493 0.1325997 -0.14037798 0.28179026 -0.050807197
		 0.35132694 0.10817866 -0.75849068 0.18865907 -0.68958032 0.10077834 -0.61252612 0.24486431
		 -0.63086933 0.17190205 -0.54518157 0.31635669 -0.55359095 0.094271615 -0.48072645
		 0.040353928 -0.53751272 -0.3756628 0.00039047489 -0.49627584 -0.028842786 -0.44169647
		 -0.080323108 -0.55433077 -0.085720547 -0.50397903 -0.14134298 -0.58602804 -0.20570965
		 0.049966298 0.32704151 0.019563731 0.48190665 0.094164081 0.39975873 -0.18353763
		 -0.39469421 0.14776428 0.2370021 0.18102939 0.33455893 -0.09034688 -0.46853516 -0.25383708
		 0.030621976 -0.41009939 0.067243613 -0.33182603 -0.011512753 0.10281073 -0.11259051
		 -0.16674036 -0.068284526 -0.26047724 -0.1044867 0.17670788 -0.20816611 0.027465474
		 -0.62474442 0.0078771049 -0.70519757 0.0013650348 -0.58111787 -0.44880924 0.073020346
		 -0.51458138 0.030920837 -0.019101603 -0.84795725 -0.035258848 -0.73986989 0.26580533
		 -0.45258889 0.18412746 -0.4713355 0.40961641 -0.42996743 0.30221203 -0.41028333 -0.61336082
		 -0.065911874 -0.65740991 -0.13147339 0.13974847 -0.4438757 0.25120735 0.24978952
		 0.25670582 0.31438637 0.27654913 0.16121167 0.31880409 0.10528719 -0.11771721 -0.54898423
		 -0.041777104 -0.57698768 -0.24156088 -0.17286161 -0.17646305 -0.1659594 0.28039429
		 -0.26408678 0.25129494 -0.18575011 -0.085636266 -0.19171193 -0.02932144 -0.23590097
		 -0.49578434 0.10789607 -0.52880883 0.077371255 -0.035697341 -0.61244094 -0.025523165
		 -0.63079232 -0.044613864 -0.67227107 -0.061737049 -0.68639439 -0.66145378 -0.049773376
		 -0.69321007 -0.081788629 0.24735183 -0.38072747 0.23308817 -0.39682367 0.19113885
		 -0.41585431 0.17348097 -0.40566826 0.43853748 0.22761153 0.42386872 0.25902647 0.42568508
		 0.2983852 -0.21516141 -0.65011561 -0.16127011 -0.68610072 0.45814344 0.19321701 -0.15563853
		 -0.35851654 -0.12154415 -0.37858725 0.42086467 -0.13162005 0.37699437 -0.083525769
		 -0.22643098 -0.34601781 -0.18692875 -0.34414256 0.18237546 -0.057897452 0.1284771
		 -0.10933517 0.12710348 -0.015217901 0.088660501 -0.054112911 0.36513689 -0.019939391
		 0.36168829 -0.03882172 0.38044339 -0.042820059 0.18432909 -0.44108477 0.2521162 -0.45055789
		 0.36318806 -0.0024973017 0.14220876 -0.38191408 0.3794134 0.0057532 0.82285541 0.15646029
		 0.77847666 0.17456788 0.52462363 -0.18516807 0.51665217 -0.1167045 1.024665713 0.14994699
		 0.78470361 0.19424467 0.97481757 0.20134756 0.45804951 -0.072714433 -0.15733673 -0.080231413
		 -0.065409817 -0.060029261 -0.22018707 -0.14385457 -0.20628293 -0.30037746 -0.24634296
		 -0.21393724 -0.2769255 0.28637746 -0.3064355 0.19466665 -0.20380209 0.3578324 -0.11128204
		 0.38424319;
createNode polyMapCut -n "polyMapCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[134]" "e[174:175]";
createNode Unfold3DUnfold -n "Unfold3DUnfold12";
	setAttr ".uvl" -type "Int32Array" 26 118 119 120 121 122 123
		 124 146 147 148 151 152 153 154 155 156 159 174
		 175 176 177 180 181 182 183 228 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 50 76 4 1 3 1 4
		 1 3 1 0 1 4 1 0 1 3 1 4
		 2 3 1 4 1 3 3 4 1 3 1 4
		 1 3 1 4 1 3 3 4 1 3 17 4
		 32 0 20 4 114 0 18 4 ;
	setAttr ".fpve" -type "Int32Array" 602 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 124 125 126 127
		 128 129 130 129 131 132 130 131 133 132 117 113
		 134 135 117 134 136 84 137 85 134 113 109 138
		 136 134 138 139 85 137 140 89 138 109 104 89
		 140 97 93 115 141 111 115 142 143 141 78 81
		 144 111 141 145 107 141 143 146 145 144 81 87
		 147 107 145 101 147 87 91 95 118 120 148 149
		 120 150 151 148 129 128 152 153 154 118 149 155
		 122 123 156 157 123 158 159 156 133 131 160 161
		 162 122 157 163 139 138 164 165 138 104 166 164
		 104 103 167 166 97 140 168 169 145 146 170 171
		 147 95 172 173 98 101 174 175 101 145 171 174
		 153 152 176 177 148 151 178 179 149 148 179 180
		 155 149 180 181 161 160 182 183 156 159 184 185
		 157 156 185 186 163 157 186 187 164 166 188 189
		 165 164 189 190 169 168 191 192 166 167 193 188
		 175 174 194 195 173 172 196 197 171 170 198 199
		 174 171 199 194 99 102 200 201 102 105 202 200
		 105 100 203 202 100 99 201 203 204 205 59 58
		 205 206 60 59 35 65 207 208 209 204 58 62
		 65 66 210 207 211 209 62 63 212 213 70 69
		 76 33 214 215 216 212 69 72 213 217 73 70
		 217 218 74 73 77 76 215 219 78 79 220 221
		 79 82 222 220 82 223 224 222 115 114 225 226
		 114 116 227 225 116 117 228 227 ;
	setAttr ".mue" -type "floatArray" 229 0.24059172 0.18583852 0.18171248 0.26321465
		 0.13189316 0.13528316 0.077226713 0.054459728 0.2128246 0.28983098 0.027829899 0.10428828
		 0.22578745 0.31383407 0.31477311 0.25110742 0.36614397 0.36330414 0.45252708 0.42690891
		 0.31060603 0.25641653 0.36666429 0.42109171 0.30865487 0.258975 0.36885187 0.41869432
		 0.31683671 0.27087671 0.36133757 0.40700912 0.30913979 0.2479088 0.37037376 0.43043894
		 0.24968578 0.18806724 0.1849957 0.24230143 0.12771735 0.13162777 0.066426732 0.074676044
		 0.1794863 0.22431144 0.13788448 0.093178429 0.1878532 0.23674102 0.12999766 0.081083685
		 0.18858361 0.24024557 0.129586 0.077722445 0.033266965 0.031913232 0.10846216 0.13007966
		 0.080036126 0.063513756 0.12314547 0.08436738 0.0020000001 0.46332288 0.46539357
		 0.28442875 0.28586647 0.049831454 0.038340665 0.10568982 0.1122629 0.049854919 0.1107427
		 0.31569371 0.21448418 0.21235029 0.59980607 0.67197412 0.65396583 0.60937256 0.7345522
		 0.74275869 0.8029651 0.7866388 0.65192789 0.61327887 0.74406725 0.78234833 0.68151391
		 0.64090389 0.71341491 0.75438195 0.6575402 0.59966421 0.73713976 0.79575372 0.43519136
		 0.37271646 0.36650497 0.43145347 0.28275216 0.21950726 0.22335154 0.28828999 0.3625977
		 0.42311758 0.29307342 0.23268397 0.36663795 0.43784112 0.28917345 0.21800332 0.35852203
		 0.43860263 0.29641271 0.21669818 0.77923763 0.72042686 0.73872674 0.67424917 0.65773535
		 0.61578095 0.66185039 0.66079247 0.72526628 0.72343665 0.7322278 0.80768239 0.80557603
		 0.86519521 0.86727715 0.94062901 0.17777203 0.11646783 0.11942291 0.8402943 0.17290567
		 0.10778568 0.82973737 0.47813275 0.53900582 0.53842461 0.55584663 0.4830671 0.54838371
		 0.56580538 0.79495215 0.8230685 0.78367126 0.80999219 0.7332502 0.78734779 0.88260776
		 0.86115533 0.57284397 0.60177422 0.51196885 0.53429377 0.88523281 0.93996382 0.61312836
		 0.58703631 0.11427463 0.079512067 0.14531788 0.15164295 0.88340676 0.85887694 0.5726729
		 0.53634268 0.54106939 0.51699644 0.5031718 0.49657804 0.73973304 0.77154303 0.839266
		 0.83504742 0.85558748 0.87002385 0.90155786 0.93346471 0.52500743 0.53894824 0.55997568
		 0.5563519 0.03054272 0.022405295 0.0020000001 0.98274487 0.97331452 0.037659172 0.62115109
		 0.61385047 0.40446317 0.40283158 0.65075487 0.62985444 0.30141449 0.35413238 0.30822843
		 0.34692219 0.1768809 0.18554445 0.12828933 0.503259 0.47367674 0.18444817 0.49525866
		 0.13602854 0.018448738 0.0020000001 0.20450212 0.17463538 0.10242187 0.006995677
		 0.087703399 0.1824844 0.67135352 0.61487377 0.73463053 0.80509692 0.78255343 0.36317876
		 0.42350572 0.29083011 0.23097654 ;
	setAttr ".mve" -type "floatArray" 229 0.50806332 0.48461255 0.43602648 0.48667639
		 0.48537105 0.43831548 0.50881171 0.48767975 0.40386763 0.46054643 0.46160531 0.40589052
		 0.72908181 0.67441684 0.73930365 0.74923873 0.67783868 0.73882771 0.73048598 0.75032616
		 0.78638268 0.79327524 0.78670466 0.79369944 0.84995776 0.84491456 0.84995013 0.84470642
		 0.90393668 0.88130993 0.90340978 0.8806181 0.93758333 0.90310305 0.93541634 0.90207982
		 0.70988321 0.72657996 0.68943393 0.66713285 0.72675449 0.68820906 0.70866156 0.66600883
		 0.65727276 0.63908076 0.65698051 0.6385206 0.60511392 0.60147226 0.60513926 0.60122764
		 0.55249733 0.5497126 0.55236399 0.54993105 0.60512477 0.52312058 0.92860645 0.96133995
		 0.9658252 0.92248833 0.89184684 0.87953573 0.49245012 0.8485263 0.77699333 0.60570979
		 0.5225603 0.82580316 0.79114848 0.79085129 0.8318885 0.75445724 0.74045813 0.49175343
		 0.84890008 0.77639294 0.46885669 0.45627204 0.51232362 0.52520823 0.4590075 0.50690287
		 0.46769643 0.52295977 0.59054095 0.5983296 0.58965707 0.59720075 0.66673589 0.65112019
		 0.66641736 0.65087616 0.70371628 0.69397962 0.70397401 0.69358039 0.39975625 0.4212943
		 0.33586043 0.32359841 0.42206258 0.40084127 0.32436982 0.33627498 0.24455841 0.23671833
		 0.24432769 0.23731965 0.16269094 0.16220663 0.1630774 0.16283387 0.071707293 0.080447048
		 0.071925394 0.081115715 0.87378681 0.85267609 0.77013206 0.8481409 0.7714358 0.87372047
		 0.92090815 0.85799676 0.86465698 0.91492599 0.98987156 0.94493484 0.99798566 0.94494814
		 0.99800003 0.98991984 0.14328824 0.049937189 0.1284059 0.52999169 0.23723221 0.20437828
		 0.61346477 0.14273901 0.046856266 0.12542874 0.52913678 0.23586774 0.20776109 0.61404616
		 0.76613122 0.81266856 0.70001704 0.73422939 0.91693491 0.90565562 0.89723617 0.82711065
		 0.81272084 0.76645845 0.89630675 0.8268165 0.90570658 0.9170447 0.7004751 0.73423719
		 0.28198278 0.25204554 0.33931392 0.38850975 0.64058775 0.69234484 0.25169653 0.28043744
		 0.69365537 0.6396417 0.33842704 0.38865072 0.87604415 0.87512654 0.74838734 0.76278663
		 0.78568047 0.79279345 0.87373573 0.87419951 0.79121375 0.78443587 0.76203001 0.74788517
		 0.3859449 0.36279914 0.34379905 0.64347315 0.68834907 0.41304159 0.3881031 0.41513115
		 0.69622976 0.65019315 0.34673369 0.36534357 0.40346709 0.40278789 0.35452297 0.35515442
		 0.9283042 0.98589289 0.99623573 0.85628641 0.89463806 0.87559587 0.805516 0.84903431
		 0.84252471 0.79093552 0.89538074 0.85681939 0.86444807 0.73586249 0.71938527 0.80556357
		 0.38397452 0.41927445 0.38502389 0.4710446 0.40750706 0.0020000001 0.033757441 0.0020772123
		 0.034531824 ;
	setAttr ".mnsl" -type "stringArray" 6 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[184:187]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[178:181]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[162:163]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[154:159]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[148:151]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[118:123]"  ;
createNode polyTweakUV -n "polyTweakUV25";
	setAttr ".uopa" yes;
	setAttr -s 27 ".uvtk";
	setAttr ".uvtk[118]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[119]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[120]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[121]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[122]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[123]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[148]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[149]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[150]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[151]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[154]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[155]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[156]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[157]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[158]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[159]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[162]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[163]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[178]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[179]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[180]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[181]" -type "float2" 0.12327857 -0.66352856 ;
	setAttr ".uvtk[184]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[185]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[186]" -type "float2" 0.12327851 -0.66352856 ;
	setAttr ".uvtk[187]" -type "float2" 0.12327857 -0.66352856 ;
createNode polyMapSewMove -n "polyMapSewMove6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[134]";
createNode polyTweakUV -n "polyTweakUV26";
	setAttr ".uopa" yes;
	setAttr -s 29 ".uvtk";
	setAttr ".uvtk[118]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[119]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[120]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[121]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[122]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[123]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[126]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[127]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[148]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[149]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[150]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[151]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[154]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[155]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[156]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[157]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[158]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[159]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[162]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[163]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[178]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[179]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[180]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[181]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[184]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[185]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[186]" -type "float2" -0.0072517064 0 ;
	setAttr ".uvtk[187]" -type "float2" -0.0072517064 0 ;
createNode Unfold3DOptimize -n "Unfold3DOptimize1";
	setAttr ".uvl" -type "Int32Array" 28 118 119 120 121 122 123
		 126 127 148 149 150 151 154 155 156 157 158 159
		 162 163 178 179 180 181 184 185 186 187 ;
	setAttr ".bi" no;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 50 76 4 1 3 1 4
		 1 3 1 0 1 4 1 0 1 3 1 4
		 2 3 1 4 1 3 3 4 1 3 1 4
		 1 3 1 4 1 3 3 4 1 3 17 4
		 32 0 20 4 114 0 18 4 ;
	setAttr ".fpve" -type "Int32Array" 602 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 120 122 124 125
		 126 127 128 127 129 130 128 129 131 130 117 113
		 132 133 117 132 134 84 135 85 132 113 109 136
		 134 132 136 137 85 135 138 89 136 109 104 89
		 138 97 93 115 139 111 115 140 141 139 78 81
		 142 111 139 143 107 139 141 144 143 142 81 87
		 145 107 143 101 145 87 91 95 118 120 146 147
		 120 148 149 146 127 126 150 151 152 118 147 153
		 122 123 154 155 123 156 157 154 131 129 158 159
		 160 122 155 161 137 136 162 163 136 104 164 162
		 104 103 165 164 97 138 166 167 143 144 168 169
		 145 95 170 171 98 101 172 173 101 143 169 172
		 151 150 174 175 146 149 176 177 147 146 177 178
		 153 147 178 179 159 158 180 181 154 157 182 183
		 155 154 183 184 161 155 184 185 162 164 186 187
		 163 162 187 188 167 166 189 190 164 165 191 186
		 173 172 192 193 171 170 194 195 169 168 196 197
		 172 169 197 192 99 102 198 199 102 105 200 198
		 105 100 201 200 100 99 199 201 202 203 59 58
		 203 204 60 59 35 65 205 206 207 202 58 62
		 65 66 208 205 209 207 62 63 210 211 70 69
		 76 33 212 213 214 210 69 72 211 215 73 70
		 215 216 74 73 77 76 213 217 78 79 218 219
		 79 82 220 218 82 221 222 220 115 114 223 224
		 114 116 225 223 116 117 226 225 ;
	setAttr ".mue" -type "floatArray" 227 0.24059172 0.18583852 0.18171248 0.26321465
		 0.13189316 0.13528316 0.077226713 0.054459728 0.2128246 0.28983098 0.027829899 0.10428828
		 0.22578745 0.31383407 0.31477311 0.25110742 0.36614397 0.36330414 0.45252708 0.42690891
		 0.31060603 0.25641653 0.36666429 0.42109171 0.30865487 0.258975 0.36885187 0.41869432
		 0.31683671 0.27087671 0.36133757 0.40700912 0.30913979 0.2479088 0.37037376 0.43043894
		 0.24968578 0.18806724 0.1849957 0.24230143 0.12771735 0.13162777 0.066426732 0.074676044
		 0.1794863 0.22431144 0.13788448 0.093178429 0.1878532 0.23674102 0.12999766 0.081083685
		 0.18858361 0.24024557 0.129586 0.077722445 0.033266965 0.031913232 0.10846216 0.13007966
		 0.080036126 0.063513756 0.12314547 0.08436738 0.0020000001 0.46332288 0.46539357
		 0.28442875 0.28586647 0.049831454 0.038340665 0.10568982 0.1122629 0.049854919 0.1107427
		 0.31569371 0.21448418 0.21235029 0.59980607 0.67197412 0.65396583 0.60937256 0.7345522
		 0.74275869 0.8029651 0.7866388 0.65192789 0.61327887 0.74406725 0.78234833 0.68151391
		 0.64090389 0.71341491 0.75438195 0.6575402 0.59966421 0.73713976 0.79575372 0.43519136
		 0.37271646 0.36650497 0.43145347 0.28275216 0.21950726 0.22335154 0.28828999 0.3625977
		 0.42311758 0.29307342 0.23268397 0.36663795 0.43784112 0.28917345 0.21800332 0.35852203
		 0.43860263 0.29641271 0.21669818 0.8930884 0.83487308 0.85085517 0.79167366 0.77740878
		 0.7339924 0.78441256 0.84579962 0.7322278 0.80768239 0.80557603 0.86519521 0.86727715
		 0.94062901 0.17777203 0.11646783 0.11942291 0.8402943 0.17290567 0.10778568 0.82973737
		 0.47813275 0.53900582 0.53842461 0.55584663 0.4830671 0.54838371 0.56580538 0.90606505
		 0.93771005 0.8867504 0.91779256 0.7332502 0.78734779 0.99608332 0.97525853 0.6900146
		 0.7225582 0.6305055 0.6520679 0.88523281 0.93996382 0.74246567 0.71135455 0.11427463
		 0.079512067 0.14531788 0.15164295 0.88340676 0.85887694 0.5726729 0.53634268 0.54106939
		 0.51699644 0.5031718 0.49657804 0.73973304 0.77154303 0.94869769 0.94507408 0.96742475
		 0.98211378 0.90155786 0.93346471 0.64488953 0.65907663 0.68195504 0.67888206 0.03054272
		 0.022405295 0.0020000001 0.98274487 0.97331452 0.037659172 0.62115109 0.61385047
		 0.40446317 0.40283158 0.65075487 0.62985444 0.30141449 0.35413238 0.30822843 0.34692219
		 0.1768809 0.18554445 0.12828933 0.503259 0.47367674 0.18444817 0.49525866 0.13602854
		 0.018448738 0.0020000001 0.20450212 0.17463538 0.10242187 0.006995677 0.087703399
		 0.1824844 0.67135352 0.61487377 0.73463053 0.80509692 0.78255343 0.36317876 0.42350572
		 0.29083011 0.23097654 ;
	setAttr ".mve" -type "floatArray" 227 0.50806332 0.48461255 0.43602648 0.48667639
		 0.48537105 0.43831548 0.50881171 0.48767975 0.40386763 0.46054643 0.46160531 0.40589052
		 0.72908181 0.67441684 0.73930365 0.74923873 0.67783868 0.73882771 0.73048598 0.75032616
		 0.78638268 0.79327524 0.78670466 0.79369944 0.84995776 0.84491456 0.84995013 0.84470642
		 0.90393668 0.88130993 0.90340978 0.8806181 0.93758333 0.90310305 0.93541634 0.90207982
		 0.70988321 0.72657996 0.68943393 0.66713285 0.72675449 0.68820906 0.70866156 0.66600883
		 0.65727276 0.63908076 0.65698051 0.6385206 0.60511392 0.60147226 0.60513926 0.60122764
		 0.55249733 0.5497126 0.55236399 0.54993105 0.60512477 0.52312058 0.92860645 0.96133995
		 0.9658252 0.92248833 0.89184684 0.87953573 0.49245012 0.8485263 0.77699333 0.60570979
		 0.5225603 0.82580316 0.79114848 0.79085129 0.8318885 0.75445724 0.74045813 0.49175343
		 0.84890008 0.77639294 0.46885669 0.45627204 0.51232362 0.52520823 0.4590075 0.50690287
		 0.46769643 0.52295977 0.59054095 0.5983296 0.58965707 0.59720075 0.66673589 0.65112019
		 0.66641736 0.65087616 0.70371628 0.69397962 0.70397401 0.69358039 0.39975625 0.4212943
		 0.33586043 0.32359841 0.42206258 0.40084127 0.32436982 0.33627498 0.24455841 0.23671833
		 0.24432769 0.23731965 0.16269094 0.16220663 0.1630774 0.16283387 0.071707293 0.080447048
		 0.071925394 0.081115715 0.2100812 0.1923824 0.11061442 0.18761998 0.11221641 0.21040915
		 0.042011943 0.046350252 0.98987156 0.94493484 0.99798566 0.94494814 0.99800003 0.98991984
		 0.14328824 0.049937189 0.1284059 0.52999169 0.23723221 0.20437828 0.61346477 0.14273901
		 0.046856266 0.12542874 0.52913678 0.23586774 0.20776109 0.61404616 0.10311688 0.14945088
		 0.038407318 0.069446899 0.91693491 0.90565562 0.23493841 0.16243584 0.1497684 0.10365638
		 0.2345399 0.16244242 0.90570658 0.9170447 0.039152652 0.069573469 0.28198278 0.25204554
		 0.33931392 0.38850975 0.64058775 0.69234484 0.25169653 0.28043744 0.69365537 0.6396417
		 0.33842704 0.38865072 0.87604415 0.87512654 0.083029017 0.097241178 0.11948697 0.12592119
		 0.87373573 0.87419951 0.12447358 0.11830893 0.096538059 0.082607083 0.3859449 0.36279914
		 0.34379905 0.64347315 0.68834907 0.41304159 0.3881031 0.41513115 0.69622976 0.65019315
		 0.34673369 0.36534357 0.40346709 0.40278789 0.35452297 0.35515442 0.9283042 0.98589289
		 0.99623573 0.85628641 0.89463806 0.87559587 0.805516 0.84903431 0.84252471 0.79093552
		 0.89538074 0.85681939 0.86444807 0.73586249 0.71938527 0.80556357 0.38397452 0.41927445
		 0.38502389 0.4710446 0.40750706 0.0020000001 0.033757441 0.0020772123 0.034531824 ;
	setAttr ".mnsl" -type "stringArray" 6 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[182:185]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[176:179]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[160:161]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[152:157]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[146:149]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[118:125]"  ;
createNode Unfold3DUnfold -n "Unfold3DUnfold13";
	setAttr ".uvl" -type "Int32Array" 28 118 119 120 121 122 123
		 124 125 146 147 148 149 152 153 154 155 156 157
		 160 161 176 177 178 179 182 183 184 185 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 50 76 4 1 3 1 4
		 1 3 1 0 1 4 1 0 1 3 1 4
		 2 3 1 4 1 3 3 4 1 3 1 4
		 1 3 1 4 1 3 3 4 1 3 17 4
		 32 0 20 4 114 0 18 4 ;
	setAttr ".fpve" -type "Int32Array" 602 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 120 122 124 125
		 126 127 128 127 129 130 128 129 131 130 117 113
		 132 133 117 132 134 84 135 85 132 113 109 136
		 134 132 136 137 85 135 138 89 136 109 104 89
		 138 97 93 115 139 111 115 140 141 139 78 81
		 142 111 139 143 107 139 141 144 143 142 81 87
		 145 107 143 101 145 87 91 95 118 120 146 147
		 120 148 149 146 127 126 150 151 152 118 147 153
		 122 123 154 155 123 156 157 154 131 129 158 159
		 160 122 155 161 137 136 162 163 136 104 164 162
		 104 103 165 164 97 138 166 167 143 144 168 169
		 145 95 170 171 98 101 172 173 101 143 169 172
		 151 150 174 175 146 149 176 177 147 146 177 178
		 153 147 178 179 159 158 180 181 154 157 182 183
		 155 154 183 184 161 155 184 185 162 164 186 187
		 163 162 187 188 167 166 189 190 164 165 191 186
		 173 172 192 193 171 170 194 195 169 168 196 197
		 172 169 197 192 99 102 198 199 102 105 200 198
		 105 100 201 200 100 99 199 201 202 203 59 58
		 203 204 60 59 35 65 205 206 207 202 58 62
		 65 66 208 205 209 207 62 63 210 211 70 69
		 76 33 212 213 214 210 69 72 211 215 73 70
		 215 216 74 73 77 76 213 217 78 79 218 219
		 79 82 220 218 82 221 222 220 115 114 223 224
		 114 116 225 223 116 117 226 225 ;
	setAttr ".mue" -type "floatArray" 227 0.24078137 0.18598464 0.18185532 0.26342228
		 0.13199641 0.1353891 0.077286504 0.054501425 0.21299218 0.29005978 0.027850429 0.10436958
		 0.23630664 0.32442325 0.32536304 0.26164675 0.37677473 0.37393263 0.4632265 0.43758798
		 0.32119265 0.26696005 0.37729546 0.43176612 0.31923994 0.26952058 0.37948477 0.42936686
		 0.32742828 0.28143173 0.37196451 0.41767237 0.31972525 0.25844559 0.38100788 0.4411208
		 0.24988265 0.18821514 0.18514115 0.24249244 0.12781727 0.13173081 0.066477939 0.074733809
		 0.17962737 0.22448814 0.13799249 0.093250901 0.18800093 0.2369276 0.1300994 0.081146546
		 0.18873192 0.24043493 0.12968741 0.077782631 0.033291817 0.031937007 0.11863741 0.1402721
		 0.090188779 0.073653273 0.13333239 0.094523467 0.0020000001 0.47403088 0.47610322
		 0.28465325 0.2860921 0.04986947 0.038369548 0.10577223 0.11235053 0.049892951 0.11082912
		 0.31594303 0.22499439 0.2228588 0.60317588 0.67540133 0.65737873 0.61274999 0.73802912
		 0.74624217 0.80649644 0.79015714 0.65533912 0.6166594 0.74755174 0.78586328 0.68494868
		 0.64430636 0.71687508 0.75787467 0.66095591 0.6030339 0.74061877 0.79927933 0.43553567
		 0.37301111 0.36679468 0.43179482 0.28297532 0.21968015 0.22352748 0.28851753 0.36288431
		 0.42345229 0.29330477 0.23286733 0.36692777 0.43818754 0.28940171 0.21817501 0.35880539
		 0.43894964 0.29664671 0.21686883 0.88530838 0.83357602 0.85485792 0.79597241 0.77541739
		 0.7472319 0.79352105 0.8544808 0.58318764 0.65870219 0.65659416 0.71626073 0.71834433
		 0.79175448 0.17791174 0.11655881 0.11951624 0.84385532 0.17304151 0.10786976 0.83328998
		 0.47851118 0.53943264 0.53885096 0.55918151 0.48344946 0.54881799 0.56914818 0.91327399
		 0.93552053 0.91580993 0.934196 0.58421087 0.63835144 0.98672074 0.97268349 0.69475079
		 0.71715885 0.6476227 0.65820426 0.73631424 0.79108876 0.71696639 0.69626319 0.11436386
		 0.079573676 0.1454318 0.15176189 0.88700205 0.86245275 0.57312649 0.53676736 0.54439253
		 0.52030045 0.50357014 0.49697113 0.59069884 0.6225341 0.96123409 0.95467496 0.97241676
		 0.98619473 0.75265229 0.78458446 0.64289868 0.65588838 0.67392349 0.66744334 0.030565407
		 0.022421513 0.0020000001 0.98641914 0.97698128 0.037687514 0.62164319 0.61433679
		 0.40767771 0.40604484 0.65127051 0.63035345 0.30165246 0.35441226 0.30847183 0.34719634
		 0.18711053 0.19578096 0.13848034 0.51399875 0.48439297 0.19468382 0.50599205 0.14622571
		 0.018461814 0.0020000001 0.2150044 0.18511391 0.10250169 0.006999644 0.087771513
		 0.19296917 0.67478019 0.61825556 0.7381075 0.80862993 0.78606856 0.36346585 0.42384076
		 0.29105967 0.23115854 ;
	setAttr ".mve" -type "floatArray" 227 0.50856155 0.48509213 0.43646744 0.48715761
		 0.48585126 0.43875825 0.50931054 0.48816177 0.40428305 0.46100688 0.46206662 0.40630755
		 0.72409314 0.66938472 0.73432308 0.74426609 0.6728093 0.73384678 0.72549844 0.74535435
		 0.78143954 0.78833759 0.78176183 0.78876215 0.84506518 0.84001797 0.84505755 0.83980966
		 0.89908701 0.87644225 0.89855969 0.87574989 0.93276042 0.89825273 0.9305917 0.89722866
		 0.71054184 0.72725189 0.69007635 0.66775751 0.72742653 0.68885046 0.70931923 0.66663259
		 0.6578896 0.63968313 0.65759712 0.63912255 0.60568929 0.60204476 0.60571462 0.60179991
		 0.55303085 0.55024391 0.55289745 0.55046254 0.60570014 0.5236308 0.92369217 0.95645171
		 0.96094048 0.91756916 0.88690335 0.87458247 0.49293593 0.84363258 0.77204275 0.60628563
		 0.52307004 0.82662106 0.79193884 0.79164135 0.83271122 0.75521839 0.7412082 0.4922387
		 0.84400666 0.77144188 0.45911378 0.44651911 0.50261527 0.51551014 0.44925675 0.49719021
		 0.45795259 0.51325989 0.58089477 0.58868963 0.58001018 0.58755988 0.65715027 0.64152217
		 0.6568315 0.64127797 0.69416004 0.68441564 0.69441801 0.68401611 0.4000724 0.42162758
		 0.33612579 0.32385403 0.42239645 0.40115827 0.32462606 0.33654067 0.2447512 0.23690489
		 0.24452031 0.23750669 0.16281866 0.16233397 0.16320543 0.16296171 0.071762696 0.080509402
		 0.071980976 0.081178598 0.87531465 0.846331 0.76391113 0.83766055 0.76359302 0.87342572
		 0.68925637 0.70101756 0.98986506 0.94489264 0.9979856 0.94490594 0.99800003 0.9899134
		 0.14340053 0.049975291 0.12850636 0.52029735 0.23741917 0.20453914 0.60383683 0.14285088
		 0.046891917 0.12552685 0.51944178 0.23605362 0.20792463 0.60441864 0.76901799 0.81915647
		 0.70099396 0.7401951 0.91687047 0.90558219 0.91205251 0.83880264 0.819489 0.76798558
		 0.91487873 0.84061128 0.90563321 0.91698033 0.69932789 0.73799318 0.28220531 0.25224429
		 0.33958203 0.38881695 0.63098133 0.68277961 0.25189498 0.28065875 0.68409115 0.63003457
		 0.33869442 0.38895804 0.87594724 0.87502885 0.75807953 0.77191812 0.79707503 0.80604821
		 0.87363696 0.8741011 0.80622953 0.79695654 0.77093756 0.75769448 0.38625008 0.3630859
		 0.34407073 0.63386905 0.67878062 0.41336828 0.38840997 0.41545951 0.68666762 0.64059442
		 0.34700769 0.36563236 0.40378618 0.40310645 0.35480317 0.35543513 0.92338967 0.98102415
		 0.99137521 0.85139883 0.889781 0.87063944 0.80058807 0.84405679 0.84335589 0.7917257
		 0.89052427 0.85193229 0.86529666 0.73660886 0.72011858 0.8006357 0.37416413 0.40949214
		 0.37521434 0.46130341 0.39771539 0.0020000001 0.033782683 0.0020772736 0.034557682 ;
	setAttr ".mnsl" -type "stringArray" 6 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[182:185]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[176:179]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[160:161]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[152:157]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[146:149]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[118:125]"  ;
createNode polyTweakUV -n "polyTweakUV27";
	setAttr ".uopa" yes;
	setAttr -s 227 ".uvtk[0:226]" -type "float2" 0.046297558 0.09385436 0.050518081
		 0.095662035 0.050836124 0.099407122 0.044553723 0.095502898 0.054676343 0.09560357
		 0.054415032 0.099230707 0.058890171 0.09379667 0.060645107 0.095425606 0.048437934
		 0.10188604 0.042502064 0.097517088 0.062697805 0.097435497 0.056804188 0.10173014
		 0.28278035 -0.066732019 0.14416909 -0.093353264 0.20316596 -0.15915909 0.27605945
		 -0.11029332 0.094978377 -0.14509714 0.15415682 -0.20351145 0.057157606 -0.27757943
		 0.10112266 -0.27377158 0.25082389 -0.20242634 0.31142324 -0.15926886 0.19501849 -0.25453037
		 0.14700899 -0.31180596 0.31150165 -0.26424971 0.35656255 -0.21331254 0.25124976 -0.31984675
		 0.19652405 -0.36063892 0.3531743 -0.32582915 0.37827024 -0.26073053 0.30815142 -0.36640781
		 0.24139056 -0.38578546 0.39195716 -0.35239288 0.42138702 -0.26132539 0.32867292 -0.40678674
		 0.23776656 -0.42890653 0.045596577 0.078297555 0.050346285 0.07701052 0.050583046
		 0.07987383 0.046165768 0.081592865 0.054998212 0.076997072 0.054696798 0.079968251
		 0.059722669 0.078391716 0.059086788 0.081679508 0.05100774 0.082352899 0.047552485
		 0.083755188 0.054214519 0.08237543 0.057660565 0.083798371 0.050362796 0.086373448
		 0.046594381 0.086654149 0.054822452 0.086371496 0.058592863 0.086673014 0.050306492
		 0.090429276 0.046324253 0.090643927 0.054854184 0.090439543 0.05885195 0.090627089
		 0.062278703 0.086372606 0.062383056 0.092693709 -0.075125977 -0.14789423 -0.076792315
		 -0.15041742 -0.072934829 -0.15076321 -0.071661234 -0.14742269 -0.07625781 -0.1450607
		 -0.073268689 -0.14411174 0.064688839 0.095057838 0.1553885 -0.40568575 0.087240294
		 -0.33600867 0.042918485 0.086327516 0.042807661 0.0927369 0.88833982 0.02622702 0.88922554
		 0.028898347 0.88403404 0.028921206 0.8835274 0.025757946 0.88833797 0.031726554 0.88364464
		 0.03280564 0.040508498 0.095111571 0.40477026 -0.17620458 0.33993006 -0.10166865
		 -0.046374228 -0.10191378 -0.13022432 -0.15598166 -0.060426131 -0.19544335 -0.0038957051
		 -0.16714685 -0.19032532 -0.21652341 -0.15429682 -0.27203733 -0.25076658 -0.28841311
		 -0.18337978 -0.32863957 0.013863777 -0.27184033 0.05973798 -0.24393463 -0.079165302
		 -0.35606599 -0.11050863 -0.39897642 0.054636408 -0.37542483 0.080854326 -0.32228473
		 0.022415802 -0.40457344 -0.032939367 -0.42686164 0.11278842 -0.39028978 0.16171655
		 -0.3270846 0.033363655 -0.46407485 -0.034897644 -0.50781536 0.01621007 -0.19915377
		 0.098629601 -0.16300012 0.025929689 -0.071760692 -0.050397031 -0.11948267 0.18937501
		 -0.080667883 0.23306784 -0.0010096019 0.15858288 0.07197158 0.10458975 7.2552524e-005
		 -0.05449675 0.023223078 -0.12230669 -0.024833554 0.014869694 0.087674402 0.068833716
		 0.15047048 -0.1341622 0.1014236 -0.2058693 0.036137048 -0.056279149 0.17259172 0.014722602
		 0.23857617 -0.21008252 0.19997634 -0.28215376 0.11725821 -0.14772236 0.25712919 -0.059455272
		 0.32156485 0.049605891 -0.78798568 0.10338575 -0.69334036 -0.004552586 -0.62215084
		 0.14273219 -0.63858455 0.074594341 -0.54851079 0.18980929 -0.61509496 -0.012861218
		 -0.48524791 -0.076125182 -0.55210692 0.16324662 -0.096819825 0.04622348 -0.12154584
		 0.097335182 -0.17269306 -0.011322787 -0.17468442 0.035598319 -0.22970158 -0.04527561
		 -0.28937095 0.03693131 0.29529944 0.012054764 0.44535217 0.081579827 0.36409143 -0.23058255
		 -0.3852393 0.12857875 0.20577593 0.16340296 0.29880813 -0.14291205 -0.4590272 -0.26417544
		 0.018402277 -0.41366497 0.058132026 -0.34050491 -0.019966023 0.053301599 -0.12163593
		 -0.18308957 -0.079358384 -0.27442056 -0.11156317 0.12176674 -0.2158118 -0.066445909
		 -0.68377984 -0.033511098 -0.75835961 -0.13405262 -0.5899902 -0.14081128 -0.67714643
		 0.094850942 -0.024769716 0.030291528 -0.063452013 0.0051233307 -0.90642107 -0.048462741
		 -0.83112365 0.20774502 -0.52476919 0.13157697 -0.4951897 0.33969241 -0.59349477 0.2771554
		 -0.49732858 -0.067624174 -0.15392065 -0.11192556 -0.21582349 0.062032502 -0.46122959
		 0.095341764 -0.4500691 0.22859305 0.21514803 0.23572986 0.27721962 0.25048259 0.12909625
		 0.28959528 0.074018799 -0.17157033 -0.53574681 -0.099212319 -0.56488657 -0.25814536
		 -0.17796974 -0.19523789 -0.17317481 0.22005843 -0.27263537 0.19425744 -0.19634232
		 -0.10847498 -0.20057015 -0.055483706 -0.24474302 0.050591704 0.010165269 0.017908793
		 -0.01829955 -0.15507342 -0.7359817 -0.11897244 -0.73050475 -0.10115669 -0.77079886
		 -0.10318028 -0.80365157 -0.11349408 -0.13700402 -0.14499786 -0.16694093 0.26346907
		 -0.45534214 0.22159286 -0.47193429 0.1683756 -0.44892535 0.1422053 -0.42216921 0.40842262
		 0.18844746 0.39518645 0.21912824 0.39805737 0.25699207 -0.26832211 -0.63039434 -0.21743184
		 -0.66659498 0.42633006 0.15475565 -0.18066166 -0.35926461 -0.14838913 -0.37957048
		 0.35915127 -0.149027 0.31825957 -0.1014467 -0.24850239 -0.34520769 -0.21039516 -0.34452638
		 0.15352097 -0.079296216 0.10013379 -0.12731265 0.10149136 -0.03660734 0.063350134
		 -0.072981194 -0.080399878 -0.14787099 -0.081067681 -0.15231007 -0.076654308 -0.15310733
		 0.12258872 -0.45034152 0.18762042 -0.46139821 -0.080983184 -0.1438081 0.083698116
		 -0.39214075 -0.077250868 -0.1417606 0.89075887 0.024938079 0.89202672 0.028914765
		 0.45769501 -0.21350154 0.45196593 -0.14732134 0.88428599 0.023248224 0.89164174 0.033159886
		 0.8854205 0.034430046 0.39676502 -0.10327502 -0.1963852 -0.083053388 -0.10725362
		 -0.066210359 -0.25874323 -0.14255334 -0.2498073 -0.29373309 -0.2859363 -0.20932141
		 -0.27913243 0.26543754 -0.31017262 0.1779301 -0.20665494 0.33218962 -0.11677508 0.35499665;
createNode polyMapSewMove -n "polyMapSewMove7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[84:85]";
createNode polyTweakUV -n "polyTweakUV28";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[69]" -type "float2" -0.08090695 0.12258711 ;
	setAttr ".uvtk[70]" -type "float2" -0.052775044 0.12058005 ;
	setAttr ".uvtk[71]" -type "float2" -0.072651833 0.11575399 ;
	setAttr ".uvtk[72]" -type "float2" -0.087237902 0.13947308 ;
	setAttr ".uvtk[73]" -type "float2" -0.068583034 0.11332915 ;
	setAttr ".uvtk[74]" -type "float2" -0.082439393 0.094515406 ;
	setAttr ".uvtk[210]" -type "float2" -0.11360656 0.11849889 ;
	setAttr ".uvtk[211]" -type "float2" -0.09105131 0.11617895 ;
	setAttr ".uvtk[214]" -type "float2" -0.17594454 0.13250247 ;
	setAttr ".uvtk[215]" -type "float2" -0.099197283 0.11166177 ;
	setAttr ".uvtk[216]" -type "float2" -0.15623796 0.090952173 ;
createNode polyMapSewMove -n "polyMapSewMove8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[95:96]";
createNode polyTweakUV -n "polyTweakUV29";
	setAttr ".uopa" yes;
	setAttr -s 221 ".uvtk[0:220]" -type "float2" 0.51580685 -0.048316721 0.54545963
		 0.022197325 0.50592107 0.070758276 0.47582769 -0.048746157 0.5959664 0.069628149
		 0.55085069 0.11006934 0.66737682 0.096750654 0.66955251 0.1365837 0.44848943 0.072704695
		 0.42792803 -0.048357431 0.67088646 0.1844289 0.5505507 0.16767511 -0.41747564 0.075888015
		 -0.4157545 0.07866019 -0.41779748 0.078689754 -0.41811031 0.07668522 -0.41586226
		 0.080307126 -0.41778252 0.080217771 -0.41751987 0.083026983 -0.41814452 0.08222039
		 -0.41927978 0.078558549 -0.4194968 0.076852381 -0.41928992 0.080323569 -0.41951016
		 0.082037173 -0.42128146 0.078497127 -0.42112267 0.076932937 -0.42128122 0.080392383
		 -0.42111614 0.081961691 -0.42298102 0.078754671 -0.4222686 0.077307664 -0.42296442
		 0.08015579 -0.42224681 0.081593782 -0.42404038 0.078512385 -0.42295477 0.076584511
		 -0.42397216 0.080440305 -0.42292255 0.082331501 0.68747556 -0.24285419 0.75929075
		 -0.20329948 0.72898531 -0.16624676 0.64366966 -0.19606525 0.81519234 -0.14961483
		 0.77718902 -0.11749904 0.85566425 -0.078217104 0.80893975 -0.035137329 0.70537931
		 -0.1316234 0.64774239 -0.15481345 0.74354666 -0.094235227 0.76837176 -0.037295643
		 0.65111315 -0.090908907 0.60270572 -0.13116397 0.70457762 -0.03931199 0.74627006
		 0.0079435762 0.60349256 -0.042957939 0.55328715 -0.086479835 0.65787041 0.0098044137
		 0.70360667 0.058325861 0.78889197 0.046869356 0.73309714 0.11319751 0.86213231 0.086674742
		 0.85673529 0.036586449 0.91649115 0.060935698 0.90982932 0.12012525 0.82372832 0.11998244
		 0.86073655 0.15686743 0.72226632 0.17898341 -0.4212364 0.083366863 -0.41898417 0.083432086
		 0.56452411 -0.17268558 0.49522978 -0.11269637 0.57287592 -0.26020128 0.51982611 -0.2562286
		 0.48300251 -0.30268952 0.56222385 -0.33740386 0.47482884 -0.22018637 0.40639198 -0.24733752
		 0.43188208 -0.1002591 -0.42124817 0.075532131 -0.41896525 0.075464942 -0.01950717
		 -0.013616353 -0.019110933 -0.011344118 -0.020875739 -0.011911115 -0.021281416 -0.013315148
		 -0.019197062 -0.0093738139 -0.020705063 -0.0091154287 -0.019470636 -0.0072198114
		 -0.021210622 -0.0077338512 -0.023338437 -0.011975281 -0.023583664 -0.013192157 -0.023310607
		 -0.0090742297 -0.023548122 -0.0078689372 -0.025737457 -0.011043754 -0.025245793 -0.012322376
		 -0.025727428 -0.010039341 -0.02523811 -0.0087494664 -0.026901796 -0.011798576 -0.026595235
		 -0.013620819 -0.026909912 -0.0092923427 -0.026582666 -0.0074468646 -0.01468494 -0.0063337935
		 -0.015363072 -0.0083008362 -0.012673159 -0.0084964065 -0.012287085 -0.006451482 -0.01538726
		 -0.01113339 -0.014719103 -0.013124675 -0.012311374 -0.013003635 -0.012686212 -0.010959029
		 -0.0097984867 -0.0086194277 -0.0095516397 -0.0067139403 -0.0097912224 -0.010808421
		 -0.0095705716 -0.012709802 -0.007220848 -0.0084922193 -0.0072056004 -0.0062503647
		 -0.0072330162 -0.010931212 -0.0072253486 -0.013172028 -0.0043561994 -0.0087477518
		 -0.0046313736 -0.0062263892 -0.004363067 -0.010703283 -0.004652427 -0.01321312 -0.32408723
		 0.376926 -0.324157 0.37468785 -0.32120326 0.37507066 -0.32421643 0.373117 -0.32119328
		 0.37257144 -0.32415971 0.37109727 -0.31882936 0.37294894 -0.31875083 0.374827 -0.64082271
		 0.032653589 -0.63940787 0.035029303 -0.64107823 0.034962982 -0.63940829 0.036840111
		 -0.64107865 0.036905661 -0.64082426 0.039215226 -0.0066099474 -0.01443872 -0.0036707611
		 -0.016368905 -0.006141373 -0.016275862 -0.021432022 -0.0060444898 -0.0095678177 -0.01459194
		 -0.0085334033 -0.016642265 -0.024060201 -0.0063768788 -0.0065926556 -0.0049817706
		 -0.0035737574 -0.0030651626 -0.0060476367 -0.0030834624 -0.021405105 -0.01500043
		 -0.0095248576 -0.0048264111 -0.0086399112 -0.0027698965 -0.024078503 -0.014686875
		 -0.32108474 0.37699726 -0.32296565 0.37783036 -0.31886676 0.37611908 -0.3192631 0.37775362
		 -0.63852632 0.032685783 -0.6381712 0.034389116 -0.32602772 0.3797107 -0.32372272
		 0.37964094 -0.32298222 0.36985698 -0.32114977 0.37060425 -0.32587335 0.36894813 -0.3241024
		 0.3682017 -0.63817281 0.03747106 -0.63852978 0.039194282 -0.31877276 0.37178692 -0.31920242
		 0.37008861 -0.010976803 -0.016437957 -0.010034221 -0.017532466 -0.012781893 -0.015460551
		 -0.014330839 -0.015261404 -0.024914173 -0.0046870867 -0.026543764 -0.0054594171 -0.010023232
		 -0.0020051436 -0.010928149 -0.003149013 -0.026585026 -0.015465695 -0.02488439 -0.016223639
		 -0.012753969 -0.0041934079 -0.014335278 -0.0044010151 -0.63723886 0.032889895 -0.63720995
		 0.033891499 -0.31969857 0.37914944 -0.32070553 0.37849107 -0.32191753 0.37900704
		 -0.3223182 0.37982097 -0.63716614 0.037985057 -0.63718075 0.038989596 -0.32311419
		 0.36794245 -0.32212958 0.36882406 -0.32093039 0.36892667 -0.31981745 0.36846611 -0.014250085
		 -0.019074284 -0.013521332 -0.01933049 -0.012923109 -0.01997296 -0.025005022 -0.001559393
		 -0.026417954 -0.0018563105 -0.015103233 -0.018850219 -0.014318034 -0.00047879491
		 -0.015169021 -0.00070865895 -0.026666082 -0.019766757 -0.025216606 -0.019818127 -0.013015507
		 0.00045328849 -0.013601445 -0.00020476739 -0.014801775 -0.0105458 -0.014780389 -0.008885961
		 -0.013260756 -0.010331261 -0.013280637 -0.0091129765 -0.0031857262 -0.01276356 -0.0021638826
		 -0.010879054 0.87932682 -0.0021857789 -0.42148072 0.084624238 -0.42268825 0.083692856
		 -0.0031613442 -0.006701719 -0.41988221 0.084372342 0.78381479 0.16125827 -0.0021614516
		 -0.0086011328 -0.017575556 -0.0078624785 -0.42271164 0.075217836 -0.42149752 0.074277475
		 0.66070765 -0.23830575 -0.019576054 -0.0071526915 0.44822916 -0.11791763 -0.4198837
		 0.074524544 -0.016834628 -0.011363659 -0.017946055 -0.013141941 -0.016867666 -0.0093713477;
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[79]" "f[81]" "f[117:148]" "f[169:282]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.016167163848876953 -6.9888672828674316 0.9852985143661499 ;
	setAttr ".ic" -type "double2" 0.4999999498722838 0.50725166425257662 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 16.147036552429199 3.3923795223236084 ;
	setAttr ".is" -type "double2" 1.1160268553297426 0.26516323635281508 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[225]" "e[233]" "e[259:261]" "e[275:277]" "e[279:283]" "e[288]" "e[341:342]" "e[356:358]" "e[421:422]" "e[430:432]" "e[442]" "e[444:445]" "e[458]" "e[461]" "e[464]" "e[496]" "e[499]" "e[501]" "e[538:539]" "e[549]" "e[551:552]" "e[557:558]";
createNode polyTweakUV -n "polyTweakUV30";
	setAttr ".uopa" yes;
	setAttr -s 418 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.028339982 -0.39934942 -0.02850768
		 -0.39895788 -0.028855121 -0.39892837 -0.028492922 -0.39951122 -0.028502256 -0.39857212
		 -0.028838754 -0.39859638 -0.028334631 -0.3981812 -0.028485745 -0.39801839 -0.029085092
		 -0.39915088 -0.028679777 -0.39970157 -0.028672205 -0.39782795 -0.029070627 -0.39837471
		 0.6049118 -0.060200706 0.60452092 -0.060830336 0.60498494 -0.060837049 0.60505593
		 -0.06038177 0.60454535 -0.061204407 0.60498148 -0.061184097 0.60492182 -0.061822169
		 0.60506368 -0.061638974 0.60532153 -0.06080725 0.60537082 -0.060419738 0.60532379
		 -0.061208129 0.60537392 -0.061597344 0.60577619 -0.060793299 0.60574013 -0.060438033
		 0.60577619 -0.061223775 0.6057387 -0.0615802 0.60616225 -0.060851805 0.60600042 -0.060523145
		 0.60615849 -0.061170038 0.60599542 -0.061496638 0.60640281 -0.060796767 0.60615629
		 -0.060358897 0.60638732 -0.061234657 0.6061489 -0.061664212 -0.026896752 -0.39941448
		 -0.026777353 -0.39897385 -0.027042987 -0.39895186 -0.027253607 -0.39940894 -0.026776105
		 -0.39854226 -0.027051745 -0.39857024 -0.026905488 -0.39810395 -0.02725878 -0.39812443
		 -0.027272973 -0.39891246 -0.027403066 -0.39923304 -0.027275063 -0.39861497 -0.027407072
		 -0.39829528 -0.027645964 -0.3989723 -0.027672008 -0.39932191 -0.027645785 -0.39855856
		 -0.027673757 -0.39820877 -0.02802223 -0.39897752 -0.028042143 -0.39934698 -0.028023183
		 -0.39855564 -0.028040582 -0.39818475 -0.027664773 -0.3978875 -0.028146261 -0.39785439
		 -0.027540863 -0.3974402 -0.027361136 -0.39765555 -0.027227489 -0.39732206 -0.027490316
		 -0.39711973 -0.027822828 -0.39746514 -0.027827386 -0.39717421 -0.028451633 -0.39764324
		 0.605766 -0.061899368 0.60525441 -0.061914179 -0.027653418 -0.39963543 -0.028161742
		 -0.39968091 -0.027270606 -0.39994055 -0.027491743 -0.40013766 -0.027448118 -0.40046489
		 -0.027002618 -0.40028188 -0.027810164 -0.40017843 -0.02796617 -0.40055758 -0.028456613
		 -0.39988649 0.60576862 -0.060119879 0.60525012 -0.06010462 -0.073565871 0.0042502796
		 -0.073655866 0.0037342003 -0.07325504 0.0038629794 -0.073162928 0.0041818689 -0.073636308
		 0.0032867002 -0.073293805 0.003228015 -0.07357417 0.0027974744 -0.073179014 0.0029142254
		 -0.072695732 0.0038775525 -0.072640032 0.0041539343 -0.07270205 0.0032186578 -0.072648108
		 0.0029449072 -0.072150856 0.0036659802 -0.072262526 0.0039563864 -0.072153136 0.0034378539
		 -0.072264269 0.0031448964 -0.071886405 0.0038374187 -0.071956031 0.0042512938 -0.071884565
		 0.003268196 -0.071958892 0.0028490438 -0.077335566 0.0010997326 -0.077181548 0.0015464956
		 -0.077792488 0.0015909144 -0.077880174 0.0011264776 -0.077176049 0.002189836 -0.077327803
		 0.0026421049 -0.07787466 0.0026146146 -0.077789523 0.002150235 -0.078445375 0.0016188554
		 -0.078501441 0.0011860732 -0.078447029 0.0021160285 -0.078497142 0.0025478783 -0.079030819
		 0.0015899634 -0.079034284 0.0010807839 -0.079028055 0.0021439169 -0.079029799 0.0026528607
		 -0.079681456 0.0016480008 -0.079618961 0.0010753538 -0.079679899 0.0020921489 -0.079614177
		 0.0026621933 -0.076874182 0.0071472605 -0.076858327 0.0076555917 -0.077529192 0.0075686495
		 -0.076844834 0.0080123693 -0.077531464 0.0081362836 -0.076857716 0.0084710987 -0.078068368
		 0.0080505544 -0.078086205 0.0076240064 0.88508582 -0.12065326 0.88476449 -0.12119284
		 0.88514388 -0.12117778 0.88476455 -0.12160411 0.885144 -0.12161901 0.88508624 -0.12214355
		 -0.079169571 0.0029405563 -0.079837136 0.003378948 -0.079276003 0.0033578158 -0.073128723
		 0.0025305308 -0.078497775 0.0029753568 -0.078732714 0.0034410341 -0.072531804 0.0026060245
		 -0.079173498 0.00079265604 -0.079859167 0.00035735569 -0.079297297 0.00036151207
		 -0.073134832 0.0045646359 -0.078507528 0.00075738522 -0.078708522 0.00029029368 -0.072527647
		 0.00449342 -0.077556111 0.0071310746 -0.07712888 0.0069418577 -0.078059867 0.0073305732
		 -0.077969849 0.0069592907 0.88456428 -0.12066057 0.88448358 -0.12104743 -0.076433443
		 0.0065147858 -0.076956965 0.0065306369 -0.077125117 0.0087528126 -0.077541344 0.0085830847
		 -0.076468505 0.0089592356 -0.076870732 0.0091287699 0.88448399 -0.12174741 0.88456506
		 -0.1221388 -0.07808122 0.0083144661 -0.077983633 0.0087002013 -0.078177772 0.0033946314
		 -0.078391835 0.0036432201 -0.077767789 0.0031726386 -0.077415988 0.0031274075 -0.072337843
		 0.002222223 -0.071967721 0.0023976378 -0.078394331 0.00011659992 -0.078188822 0.00037640022
		 -0.071958348 0.0046703089 -0.072344609 0.0048424574 -0.077774137 0.0006136148 -0.077414982
		 0.00066075235 0.8842718 -0.12070693 0.8842653 -0.1209344 -0.077870943 0.0066422625
		 -0.07764224 0.006791797 -0.077366963 0.006674611 -0.077275969 0.006489743 0.88425535
		 -0.12186415 0.88425863 -0.12209232 -0.077095173 0.0091876416 -0.077318802 0.0089874035
		 -0.077591173 0.0089640999 -0.077843942 0.0090687145 -0.077434331 0.003993405 -0.077599846
		 0.004051595 -0.077735722 0.0041975142 -0.072317205 0.0015118505 -0.071996294 0.0015792873
		 -0.077240556 0.0039425138 -0.077418901 -0.00023007453 -0.077225618 -0.00017786729
		 -0.071939945 0.0056471606 -0.072269157 0.0056588883 -0.077714734 -0.00044177248 -0.077581652
		 -0.00029231279 -0.077309027 0.0020563807 -0.077313885 0.0016793914 -0.077659033 0.0020076535
		 -0.077654518 0.0017309524 -0.0799473 0.0025600875 -0.080179386 0.0021320707 -0.027118457
		 -0.39771506 0.60582149 -0.062184956 0.60609573 -0.061973412 -0.079952836 0.0011832977
		 0.60545844 -0.062127747 -0.028142542 -0.39746532 -0.080179937 0.0016147004 -0.074004591
		 0.0029434399 0.60610104 -0.060048494 0.60582525 -0.059834916 -0.027018521 -0.3995041
		 -0.073550232 0.00278223 -0.028322652 -0.39988935 0.60545874 -0.059891049 -0.074172877
		 0.0037386385 -0.073920436 0.0041425289 -0.074165367 0.0032861403 -0.065161869 0.19765539
		 -0.2546058 0.19765539 -0.2546058 0.19698305 -0.065161869 0.19698305 -0.60878491 0.18115625
		 -0.79822862 0.18115625 -0.79822862 0.18048397 -0.60878491 0.18048397 -0.0662916 0.19765539
		 -0.25573567 0.19765539 -0.25573567 0.19696891 -0.28001726 0.19579919 -0.13220288
		 0.19579919 -0.13052954 0.19579919 -0.27834383 0.19579919 -0.0662916 0.19696891 -0.60765505
		 0.18115625 -0.79709899 0.18115625 -0.79709899 0.18046978 -0.73118764 0.17930004 0.0068577677
		 0.580531 -0.58504665 0.17930004 -0.7328611 0.17930004 0.0069546849 0.5817008 -0.094501108
		 0.19646828 -0.26612785 0.19646828 -0.09313859 0.19647638 -0.26476556 0.19647638 0.0069124252
		 0.58119094;
	setAttr ".uvtk[250:417]" 0.00759615 0.58119094 -0.59843701 0.17996782 -0.7697345
		 0.17996782 -0.20121513 0.1973926 -0.11852959 0.1973926 -0.20121513 0.1975655 -0.11852959
		 0.1975655 -0.74605227 0.18089631 0.0071755797 0.58212733 -0.74605227 0.18106356 -0.66299045
		 0.18106356 0.13703039 0.44735676 0.10774848 0.41761905 0.11969413 0.4295097 0.15491533
		 0.46527904 0.064621419 0.3741464 0.067819804 0.37721962 0.0076494473 0.31693882 -0.0007078182
		 0.30840868 0.73767048 0.30418575 0.806198 0.33995509 0.067819804 0.37721962 0.11967647
		 0.428765 0.079166591 0.38793808 0.60704219 0.2626141 0.11967647 0.428765 0.7446149
		 0.29229513 0.80158693 0.32203278 0.70148784 0.24882241 0.6505748 0.18308467 0.67220592
		 0.19161487 0.77399361 0.28125694 0.84187067 0.31900916 0.71276003 0.21953261 0.69402039
		 0.16997385 0.82647592 0.22919194 0.86368513 0.2973682 0.76524234 0.16746759 0.7158348
		 0.14833289 0.83774823 0.19990233 0.86703014 0.25710985 0.79462117 0.1564296 0.7376492
		 0.12669194 0.0076706824 0.31837696 0.076198176 0.38718778 -0.044203658 0.26608685
		 0.72929198 0.1049934 0.0076706824 0.31837696 0.076198176 0.38718778 -0.044203658
		 0.26608685 -0.079424962 0.23031741 0.014615158 0.32522625 0.071587116 0.38243383
		 -0.028511904 0.28175357 -0.057793822 0.25201589 0.043993834 0.35451597 0.11187086
		 0.42269206 -0.017239748 0.29279155 -0.03597942 0.27365685 0.096476138 0.40658098
		 0.13368526 0.44433302 0.035242554 0.34485656 -0.014165018 0.2952978 -0.067971766
		 0.24155644 -0.027572501 0.28163448 0.70347929 0.11729295 0.66308004 0.15737098 0.12465271
		 0.43561178 0.15089177 0.46164221 0.8808915 0.31028777 0.85465246 0.33631819 -0.70574343
		 0.33913812 -0.71035463 0.33438405 -0.64182687 0.40319511 -0.64877129 0.39634582 -0.58995271
		 0.45548508 -0.60564446 0.43981835 -0.55473137 0.49125454 -0.57636255 0.46955594 -0.71035463
		 0.33438405 -0.39450693 0.17594214 -0.34263277 0.22823206 -0.55076164 0.4942635 -0.55076164
		 0.4942635 -0.35397935 0.30689818 -0.51119852 0.53415114 -0.41184339 0.11188515 -0.38256127
		 0.16909286 -0.33943444 0.21256533 -0.28246251 0.242303 -0.55473137 0.49125454 -0.40849829
		 0.071626768 -0.37128919 0.13980293 -0.31005555 0.20152736 -0.26064807 0.22066198
		 -0.38668385 0.049985811 -0.31880683 0.087737925 -0.25757319 0.14946234 -0.23883364
		 0.19902103 -0.34640008 0.046962213 -0.28942806 0.076700054 -0.24630123 0.12017253
		 -0.2170192 0.17738007 -0.35101125 0.029039782 -0.75385028 0.29206237 -0.70197612
		 0.34435233 -0.63344842 0.41316339 -0.78907168 0.25629276 -0.75385028 0.29206237 -0.70197612
		 0.34435233 -0.63344842 0.41316339 -0.77118665 0.27421522 -0.74190468 0.30395302 -0.69877785
		 0.34742555 -0.64180577 0.40463302 -0.76784164 0.27723879 -0.73063254 0.31499094 -0.6693989
		 0.37671527 -0.61999142 0.42627397 -0.74602723 0.29887971 -0.6781503 0.36705598 -0.61691666
		 0.42878029 -0.59817702 0.44791493 -0.60546637 0.44106391 -0.56506705 0.48114195 -0.20677587
		 0.21275036 -0.24717502 0.25282842 -0.78504813 0.25992975 -0.75880903 0.28596017 -0.3994658
		 0.032676786 -0.42570475 0.058707207 -0.58995271 0.45548508 -0.39448953 0.26701051
		 -0.27410519 0.26400161 -0.51119852 0.53415114 -0.75880903 0.28596017 -0.42972845
		 0.10713105 -0.78504813 0.25992975 -0.78907168 0.25629276 -0.56611919 0.48008141 -0.19538799
		 0.18591034 -0.60651851 0.44000337 -0.23060931 0.11709931 -0.28248349 0.064809397
		 -0.64182687 0.40319511 0.6466049 0.30344108 0.079166591 0.38793808 0.68579614 0.25189564
		 -0.0007078182 0.30840868 0.15089177 0.46164221 0.15491533 0.46527904 0.12465271 0.43561178
		 0.88491511 0.26186383 -0.026520479 0.282695 -0.079424962 0.23031741 -0.066919744
		 0.24261695 0.79781955 0.14076288 0.84969389 0.19305298 0.11969413 0.4295097 -0.59707046
		 0.17995983 -0.58337319 0.17930004 -0.76836765 0.17995983 0.0074477345 0.580531 -0.66299045
		 0.18106356 -0.66299045 0.18089631 0.0075071007 0.58212733 0.0077108294 0.5817008
		 -0.60765505 0.18046978;
createNode polyMapCut -n "polyMapCut18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[206]" "e[208]" "e[251:253]" "e[267:269]" "e[291:292]" "e[304]";
createNode polyTweakUV -n "polyTweakUV31";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[233]" -type "float2" 0.63089603 0.4169715 ;
	setAttr ".uvtk[236]" -type "float2" 0.63089597 0.4169715 ;
	setAttr ".uvtk[254]" -type "float2" 0.63089609 0.4169715 ;
	setAttr ".uvtk[419]" -type "float2" 0.63089609 0.41697156 ;
	setAttr ".uvtk[420]" -type "float2" 0.63089603 0.4169715 ;
	setAttr ".uvtk[421]" -type "float2" 0.63089609 0.41697156 ;
	setAttr ".uvtk[424]" -type "float2" 0.63089603 0.4169715 ;
	setAttr ".uvtk[425]" -type "float2" 0.63089609 0.4169715 ;
createNode polyMapCut -n "polyMapCut19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[235:236]" "e[243:244]" "e[270]" "e[272:273]" "e[278]" "e[280:281]";
createNode Unfold3DUnfold -n "Unfold3DUnfold14";
	setAttr ".uvl" -type "Int32Array" 24 221 222 223 224 229 230
		 231 232 234 235 245 246 247 248 253 255 256 422
		 423 426 431 432 433 434 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 38 76 4 1 3 1 4
		 1 3 3 4 1 3 1 4 2 3 1 4
		 1 3 3 4 1 3 1 4 1 3 1 4
		 1 3 3 4 1 3 201 4 ;
	setAttr ".fpve" -type "Int32Array" 1194 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 124 125 126 127
		 120 122 128 129 130 131 132 133 134 135 136 135
		 137 138 136 137 139 138 117 113 140 141 117 140
		 142 84 143 85 140 113 109 144 142 140 144 145
		 85 143 146 89 144 109 104 89 146 97 93 115
		 147 111 115 148 149 147 78 81 150 111 147 151
		 107 147 149 152 151 150 81 87 153 107 151 101
		 153 87 91 95 118 120 154 155 120 156 157 154
		 135 134 158 159 160 118 155 161 122 123 162 163
		 123 164 165 162 139 137 166 167 168 122 163 169
		 145 144 170 171 144 104 172 170 104 103 173 172
		 97 146 174 175 151 152 176 177 153 95 178 179
		 98 101 180 181 101 151 177 180 182 183 125 124
		 184 185 126 125 186 187 188 189 190 191 124 127
		 192 193 131 130 194 195 132 131 196 197 198 199
		 200 201 130 133 202 203 204 205 190 127 206 207
		 127 126 208 206 126 185 209 208 210 211 212 213
		 200 133 214 215 133 132 216 214 132 195 217 216
		 218 219 203 202 220 221 185 184 222 223 183 182
		 224 225 191 190 226 227 211 210 228 229 195 194
		 230 231 193 192 232 233 201 200 216 217 196 199
		 214 216 199 198 215 214 198 197 213 212 234 235
		 205 204 236 237 208 209 186 189 206 208 189 188
		 207 206 188 187 159 158 238 239 154 157 240 241
		 155 154 241 242 161 155 243 244 167 166 245 246
		 162 165 247 248 163 162 248 249 169 163 249 250
		 170 172 251 252 171 170 252 253 175 174 254 255
		 172 173 256 251 181 180 257 258 179 178 259 260
		 177 176 261 262 180 177 262 257 99 102 263 264
		 102 105 265 263 105 100 266 265 100 99 264 266
		 267 268 269 270 268 271 272 269 271 273 274 272
		 270 269 275 276 269 272 277 275 278 279 280 281
		 282 283 284 285 283 286 287 284 286 288 289 287
		 285 284 290 291 284 287 292 290 287 289 293 292
		 291 290 294 295 290 292 296 294 292 293 297 296
		 295 294 298 299 294 296 300 298 296 297 301 300
		 299 298 302 303 298 300 304 302 300 301 305 304
		 306 307 308 309 307 310 311 308 310 312 313 311
		 309 308 314 315 308 311 316 314 311 313 317 316
		 315 314 318 319 314 316 320 318 316 317 321 320
		 319 318 322 323 318 320 324 322 320 321 325 324
		 323 322 268 267 322 324 271 268 324 325 273 271
		 321 317 313 326 325 321 326 327 273 325 327 274
		 326 313 312 328 274 327 329 330 331 305 301 297
		 332 331 297 293 288 332 293 289 315 319 333 309
		 319 323 334 333 323 267 270 334 309 333 335 306
		 333 334 336 335 334 270 276 336 303 337 295 299
		 337 338 291 295 338 282 285 291 272 274 279 278
		 274 330 280 279 288 286 339 340 277 272 278 281
		 341 342 343 344 344 343 345 346 346 345 347 348
		 342 349 350 343 343 350 351 345 352 353 354 355
		 356 357 358 359 359 358 360 361 361 360 362 363
		 357 364 365 358 358 365 366 360 360 366 367 362
		 364 368 369 365 365 369 370 366 366 370 371 367
		 368 372 373 369 369 373 374 370 370 374 375 371
		 372 376 377 373 373 377 378 374 374 378 379 375
		 380 381 382 383 383 382 384 385 385 384 386 387
		 381 388 389 382 382 389 390 384 384 390 391 386
		 388 392 393 389 389 393 394 390 390 394 395 391
		 392 396 397 393 393 397 398 394 394 398 399 395
		 396 341 344 397 397 344 346 398 398 346 348 399
		 395 400 386 391 399 401 400 395 348 347 401 399
		 400 402 387 386 347 403 404 401 405 371 375 379
		 406 367 371 405 363 362 367 406 388 381 407 392
		 392 407 408 396 396 408 342 341 381 380 409 407
		 407 409 410 408 408 410 349 342 376 372 368 411
		 411 368 364 412 412 364 357 356 345 352 355 347
		 347 355 354 403 363 413 414 361 351 353 352 345
		 56 43 59 58 43 415 60 59 35 65 416 417
		 57 56 58 62 65 66 418 416 419 57 62 63
		 39 67 70 69 76 33 420 421 422 39 69 72
		 67 68 73 70 68 423 74 73 77 76 421 424
		 425 79 426 427 79 82 428 426 82 429 430 428
		 115 114 431 432 114 116 433 431 116 117 434 433 ;
	setAttr ".mue" -type "floatArray" 435 0.84348464 0.79782271 0.79418898 0.86222345
		 0.75293267 0.75556016 0.70753592 0.68850243 0.81994802 0.8842659 0.66623372 0.72963274
		 0.73092479 0.81186867 0.81273198 0.75420225 0.85995871 0.85734797 0.9393732 0.91582173
		 0.80890095 0.75908297 0.86043704 0.91047388 0.80710733 0.76143515 0.86244828 0.90826982
		 0.81462914 0.77237672 0.85554004 0.89752728 0.80755311 0.75126165 0.86384737 0.91906697
		 0.85188365 0.80067366 0.79796463 0.8510313 0.75045139 0.75354701 0.69937104 0.70155084
		 0.79324728 0.83047575 0.75862527 0.72134501 0.79999548 0.84066468 0.7518484 0.71112627
		 0.80038667 0.84336811 0.75128853 0.70811784 0.67374218 0.66960931 0.62175763 0.64692593
		 0.60819006 0.58449697 0.62449968 0.59064299 0.64486516 0.94929814 0.95120174 0.87716377
		 0.88216108 0.91289049 0.93570012 0.9738043 0.95276552 0.94026309 0.98429358 0.90591717
		 0.72053337 0.7185716 0.3597298 0.42608625 0.40964279 0.36865166 0.4836545 0.49130702
		 0.54660285 0.53170484 0.40793765 0.37240326 0.49268994 0.52791911 0.4353174 0.39792845
		 0.46466082 0.50231057 0.41334531 0.36008704 0.48656541 0.54045886 0.40024558 0.34281054
		 0.33710015 0.39680922 0.26010373 0.20196085 0.20549503 0.26519483 0.33350807 0.38914579
		 0.26959234 0.21407455 0.33722243 0.40268159 0.26600704 0.2005782 0.32976118 0.40338162
		 0.27266228 0.19937837 0.3075076 0.249614 0.26052129 0.20897721 0.19590375 0.15677349
		 0.65454656 0.58940059 0.58070928 0.64474899 0.20647132 0.2550576 0.45084989 0.36382407
		 0.38155422 0.46858004 0.73956448 0.80893224 0.80699569 0.86180532 0.86371934 0.93115383
		 0.16359244 0.10723361 0.10995033 0.58107501 0.15911864 0.099251874 0.57154506 0.43972287
		 0.49568528 0.49515092 0.31942439 0.44425914 0.50430661 0.32876891 0.31037655 0.33127457
		 0.28842655 0.3305555 0.7405045 0.79023784 0.378847 0.37783027 0.12510505 0.14505368
		 0.10061691 0.081922106 0.88022649 0.93054229 0.17644623 0.1323863 0.10521735 0.073259182
		 0.13375635 0.13957119 0.62097162 0.59851998 0.52663642 0.49323693 0.30618799 0.2839275
		 0.46274197 0.45668015 0.65904123 0.5951423 0.55894971 0.53608626 0.56021869 0.61766124
		 0.61089855 0.57249999 0.68536109 0.68453443 0.45136893 0.36434302 0.36434302 0.38244635
		 0.44357482 0.51147717 0.51070845 0.44280607 0.46947226 0.45136893 0.56660461 0.62778759
		 0.63069391 0.57526517 0.63170344 0.6602425 0.57395405 0.54181367 0.06859456 0.0050869132
		 0.0037412997 0.061165597 0.48694426 0.48778251 0.40825436 0.40909278 0.57404375 0.600748
		 0.52316451 0.52087957 0.64740586 0.61919302 0.71565479 0.71881384 0.049639698 0.021794736
		 0.39023706 0.39464787 0.4283936 0.39023706 0.43280444 0.4283936 0.0020000001 0.051552087
		 0.63457823 0.58683991 0.74646425 0.77570808 0.36649796 0.34913036 0.36205697 0.36205697
		 0.38296583 0.89523453 0.92456752 0.075557642 0.098689958 0.10175271 0.090223558 0.028240116
		 0.020759268 0.0020000001 0.71235389 0.7037766 0.034782566 0.57120383 0.56449217 0.18053649
		 0.17893595 0.59841943 0.5792051 0.27726054 0.32572567 0.28352484 0.31909713 0.52675152
		 0.53741604 0.54440582 0.53157824 0.5378018 0.54486984 0.52790892 0.53297037 0.54440582
		 0.53157824 0.54486984 0.57861072 0.57861727 0.57861727 0.57861072 0.68924963 0.71682525
		 0.7122817 0.68935603 0.73485726 0.72727311 0.74334574 0.73433012 0.69748658 0.67043447
		 0.71877193 0.72182864 0.66740996 0.657933 0.68869531 0.70932722 0.65890878 0.65185177
		 0.67390013 0.6968258 0.65262675 0.64413834 0.67065877 0.69823438 0.47313771 0.46123824
		 0.46123824 0.47313771 0.46170229 0.46170229 0.47452983 0.47452983 0.46827275 0.47816566
		 0.46865854 0.47932303 0.48328167 0.49419573 0.48382941 0.4955183 0.52224517 0.510391
		 0.52279294 0.51171356 0.48882258 0.51881546 0.48881316 0.5188061 0.53297037 0.71152693
		 0.73467898 0.49241915 0.51189935 0.49241915 0.51189935 0.65145314 0.66649026 0.7587449
		 0.77239043 0.26271486 0.25789577 0.24502678 0.25201589 0.2445235 0.25159749 0.25638592
		 0.26145959 0.25789577 0.24502678 0.2445235 0.21078154 0.21078154 0.21074466 0.21074466
		 0.15268263 0.15287691 0.13065435 0.12595277 0.11652473 0.10895724 0.11048783 0.10169579
		 0.17167921 0.14550143 0.12543945 0.12323904 0.18443042 0.17617895 0.15611696 0.13599025
		 0.19113049 0.18509351 0.17096387 0.14874141 0.19869517 0.19143379 0.1744383 0.14770833
		 0.31634659 0.31634659 0.32820901 0.32820901 0.32770571 0.32770571 0.31483671 0.31483671
		 0.31130925 0.32117146 0.32075304 0.310054 0.29529035 0.30616665 0.30557257 0.29385591
		 0.27909222 0.26719633 0.26660225 0.27765778 0.30052489 0.27052668 0.30053511 0.25638592
		 0.27053687 0.13396329 0.11034875 0.29707858 0.27759492 0.29707858 0.27759492 0.19063602
		 0.17529859 0.07158155 0.084421895 0.6539911 0.98601264 0.95881677 0.97865766 0.62433642
		 0.71135658 0.68389922 0.86224192 0.90632498 0.69111514 0.3597298 0.42535871 0.37348241
		 0.48356628 0.54857105 0.52769685 0.33404228 0.38950264 0.26752999 0.21250492 ;
	setAttr ".mve" -type "floatArray" 435 0.27701342 0.25772321 0.21730697 0.25912207
		 0.25857657 0.21940303 0.27830881 0.26081666 0.19041644 0.23726726 0.23922718 0.19254676
		 0.59280246 0.54254752 0.60219979 0.61133337 0.54569322 0.60176224 0.59409338 0.612333
		 0.64548093 0.65181744 0.64577687 0.65220749 0.70392734 0.69929099 0.70392036 0.69909972
		 0.75355172 0.73275024 0.75306743 0.73211426 0.78448415 0.75278544 0.78249192 0.75184464
		 0.44492972 0.45907852 0.42817834 0.40340447 0.45947209 0.42737868 0.44466764 0.40354228
		 0.40143654 0.38611269 0.40136465 0.38618642 0.35799572 0.3547639 0.358255 0.35520113
		 0.31420538 0.31167522 0.31433728 0.31252614 0.35643172 0.3004182 0.37110901 0.39190042
		 0.40764546 0.37717578 0.33828145 0.33791846 0.2650024 0.70261145 0.63684905 0.35674661
		 0.29756492 0.40112007 0.37527242 0.38016081 0.43211061 0.33819297 0.31981954 0.26313117
		 0.70295507 0.63629705 0.44567814 0.43394575 0.48554376 0.49749228 0.43632641 0.48036513
		 0.44417065 0.49504 0.55749631 0.56474441 0.55648363 0.56333971 0.62752002 0.61324394
		 0.62715787 0.6127736 0.66158831 0.65275741 0.66165292 0.65196538 0.36766905 0.38746962
		 0.30892769 0.29765487 0.38817587 0.36866653 0.29836404 0.3093088 0.22499107 0.21778348
		 0.22477898 0.21833627 0.1497279 0.14928268 0.15008318 0.14985931 0.066083945 0.074118659
		 0.066284478 0.074733399 0.79635614 0.79739565 0.72115338 0.79839474 0.72004032 0.79623836
		 0.79229575 0.80438083 0.75526702 0.74493438 0.65904737 0.65765846 0.89228427 0.87234223
		 0.7949692 0.81491125 0.87693363 0.83562201 0.8843931 0.83563417 0.88440645 0.8769781
		 0.13189042 0.04607005 0.11820862 0.50139201 0.21825585 0.1880523 0.57819754 0.13138549
		 0.043237668 0.11547167 0.50122184 0.2170015 0.19116221 0.5793041 0.71874732 0.76766509
		 0.66109812 0.67190444 0.80988085 0.79951143 0.84748197 0.7878595 0.76536846 0.71824348
		 0.8398118 0.79376662 0.79955834 0.80998176 0.65718633 0.66771597 0.25939637 0.23187421
		 0.31210259 0.35732973 0.6030302 0.65069216 0.23155336 0.2579757 0.6525861 0.60295385
		 0.31128725 0.3574594 0.82128793 0.83300531 0.80804503 0.75847763 0.6619848 0.65400529
		 0.67109817 0.67186254 0.72872519 0.78368425 0.89240324 0.87246114 0.87246114 0.79345953
		 0.66576874 0.68132871 0.68115252 0.66559261 0.81340164 0.89240324 0.95057553 0.96872509
		 0.92551321 0.90907061 0.71071267 0.69426894 0.71911138 0.71839035 0.87254983 0.86928338
		 0.82627457 0.8292281 0.75660467 0.75582987 0.73857278 0.73779804 0.99007833 0.99800003
		 0.80700392 0.79429734 0.85705489 0.85895377 0.75476706 0.76730847 0.90749031 0.90605813
		 0.86716735 0.84791881 0.87591094 0.86716735 0.85666245 0.87591094 0.77061844 0.77316701
		 0.86776054 0.85359925 0.77228874 0.77144521 0.68364143 0.70945257 0.74096692 0.74096692
		 0.75160462 0.77016658 0.77059287 0.76812661 0.74296927 0.71199721 0.68306386 0.35497183
		 0.33369321 0.31622589 0.60546917 0.64676863 0.37988266 0.35695586 0.38180357 0.65525013
		 0.61290705 0.3189238 0.33603242 0.37108046 0.37045601 0.32608473 0.32666525 0.92263883
		 0.89048713 0.89244229 0.93111527 0.85821247 0.85362154 0.82581502 0.81465286 0.89244229
		 0.93111527 0.85362154 0.85876465 0.82879883 0.82879883 0.85876465 0.84827584 0.87249947
		 0.87720114 0.85706216 0.90246594 0.90211451 0.93817526 0.93180221 0.87898052 0.85391551
		 0.91435355 0.9393248 0.89707875 0.86143816 0.93245184 0.94684744 0.90931773 0.87962997
		 0.9342311 0.95437002 0.91113025 0.87542105 0.94109678 0.96532053 0.9304167 0.8914482
		 0.8914482 0.9304167 0.85262734 0.85262734 0.81395429 0.81395429 0.8896606 0.92205811
		 0.85738593 0.82523423 0.8966161 0.9360733 0.85079116 0.82542783 0.89708185 0.9362669
		 0.85125691 0.82562143 0.80835754 0.80871606 0.80914491 0.80950344 0.81465286 0.96255732
		 0.9486258 0.94727492 0.94750774 0.94727492 0.94750774 0.85353935 0.84449089 0.88310897
		 0.9064002 0.9157874 0.92427039 0.88560289 0.88364023 0.84677529 0.85136002 0.8077873
		 0.81894654 0.92427039 0.88560289 0.84677529 0.85195357 0.85195357 0.82198191 0.82198191
		 0.80560905 0.81439376 0.83530492 0.83076161 0.86071587 0.86132663 0.89062691 0.89730453
		 0.81060159 0.83657682 0.87265658 0.89771712 0.81769186 0.85363489 0.88971466 0.90480739
		 0.83566445 0.86557555 0.8909865 0.9118976 0.8311941 0.86717206 0.89773709 0.92288959
		 0.92351282 0.92351282 0.88452464 0.88452464 0.8456971 0.8456971 0.8070296 0.8070296
		 0.9151575 0.88274384 0.85046363 0.81831664 0.92919171 0.88971591 0.84388292 0.81852663
		 0.92940164 0.89022106 0.84438807 0.81873655 0.80060989 0.80099875 0.80139738 0.8077873
		 0.80178618 0.92124134 0.90811056 0.94039345 0.94064599 0.94039345 0.94064599 0.80957609
		 0.8010478 0.86654294 0.84279889 0.42010763 0.70974547 0.74500334 0.66307074 0.30107486
		 0.74568599 0.71023548 0.43070748 0.27871919 0.66311449 0.44567814 0.3674444 0.40003735
		 0.36827254 0.44724587 0.38884982 0.0020000001 0.031195544 0.0020709792 0.031907458 ;
	setAttr ".mnsl" -type "stringArray" 4 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[220:225]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[206:209]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[182:191]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[124:127]"  ;
createNode Unfold3DUnfold -n "Unfold3DUnfold15";
	setAttr ".uvl" -type "Int32Array" 24 130 131 132 133 192 193
		 194 195 196 197 198 199 200 201 214 215 216 217
		 228 229 230 231 232 233 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 38 76 4 1 3 1 4
		 1 3 3 4 1 3 1 4 2 3 1 4
		 1 3 3 4 1 3 1 4 1 3 1 4
		 1 3 3 4 1 3 201 4 ;
	setAttr ".fpve" -type "Int32Array" 1194 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 124 125 126 127
		 120 122 128 129 130 131 132 133 134 135 136 135
		 137 138 136 137 139 138 117 113 140 141 117 140
		 142 84 143 85 140 113 109 144 142 140 144 145
		 85 143 146 89 144 109 104 89 146 97 93 115
		 147 111 115 148 149 147 78 81 150 111 147 151
		 107 147 149 152 151 150 81 87 153 107 151 101
		 153 87 91 95 118 120 154 155 120 156 157 154
		 135 134 158 159 160 118 155 161 122 123 162 163
		 123 164 165 162 139 137 166 167 168 122 163 169
		 145 144 170 171 144 104 172 170 104 103 173 172
		 97 146 174 175 151 152 176 177 153 95 178 179
		 98 101 180 181 101 151 177 180 182 183 125 124
		 184 185 126 125 186 187 188 189 190 191 124 127
		 192 193 131 130 194 195 132 131 196 197 198 199
		 200 201 130 133 202 203 204 205 190 127 206 207
		 127 126 208 206 126 185 209 208 210 211 212 213
		 200 133 214 215 133 132 216 214 132 195 217 216
		 218 219 203 202 220 221 185 184 222 223 183 182
		 224 225 191 190 226 227 211 210 228 229 195 194
		 230 231 193 192 232 233 201 200 216 217 196 199
		 214 216 199 198 215 214 198 197 213 212 234 235
		 205 204 236 237 208 209 186 189 206 208 189 188
		 207 206 188 187 159 158 238 239 154 157 240 241
		 155 154 241 242 161 155 243 244 167 166 245 246
		 162 165 247 248 163 162 248 249 169 163 249 250
		 170 172 251 252 171 170 252 253 175 174 254 255
		 172 173 256 251 181 180 257 258 179 178 259 260
		 177 176 261 262 180 177 262 257 99 102 263 264
		 102 105 265 263 105 100 266 265 100 99 264 266
		 267 268 269 270 268 271 272 269 271 273 274 272
		 270 269 275 276 269 272 277 275 278 279 280 281
		 282 283 284 285 283 286 287 284 286 288 289 287
		 285 284 290 291 284 287 292 290 287 289 293 292
		 291 290 294 295 290 292 296 294 292 293 297 296
		 295 294 298 299 294 296 300 298 296 297 301 300
		 299 298 302 303 298 300 304 302 300 301 305 304
		 306 307 308 309 307 310 311 308 310 312 313 311
		 309 308 314 315 308 311 316 314 311 313 317 316
		 315 314 318 319 314 316 320 318 316 317 321 320
		 319 318 322 323 318 320 324 322 320 321 325 324
		 323 322 268 267 322 324 271 268 324 325 273 271
		 321 317 313 326 325 321 326 327 273 325 327 274
		 326 313 312 328 274 327 329 330 331 305 301 297
		 332 331 297 293 288 332 293 289 315 319 333 309
		 319 323 334 333 323 267 270 334 309 333 335 306
		 333 334 336 335 334 270 276 336 303 337 295 299
		 337 338 291 295 338 282 285 291 272 274 279 278
		 274 330 280 279 288 286 339 340 277 272 278 281
		 341 342 343 344 344 343 345 346 346 345 347 348
		 342 349 350 343 343 350 351 345 352 353 354 355
		 356 357 358 359 359 358 360 361 361 360 362 363
		 357 364 365 358 358 365 366 360 360 366 367 362
		 364 368 369 365 365 369 370 366 366 370 371 367
		 368 372 373 369 369 373 374 370 370 374 375 371
		 372 376 377 373 373 377 378 374 374 378 379 375
		 380 381 382 383 383 382 384 385 385 384 386 387
		 381 388 389 382 382 389 390 384 384 390 391 386
		 388 392 393 389 389 393 394 390 390 394 395 391
		 392 396 397 393 393 397 398 394 394 398 399 395
		 396 341 344 397 397 344 346 398 398 346 348 399
		 395 400 386 391 399 401 400 395 348 347 401 399
		 400 402 387 386 347 403 404 401 405 371 375 379
		 406 367 371 405 363 362 367 406 388 381 407 392
		 392 407 408 396 396 408 342 341 381 380 409 407
		 407 409 410 408 408 410 349 342 376 372 368 411
		 411 368 364 412 412 364 357 356 345 352 355 347
		 347 355 354 403 363 413 414 361 351 353 352 345
		 56 43 59 58 43 415 60 59 35 65 416 417
		 57 56 58 62 65 66 418 416 419 57 62 63
		 39 67 70 69 76 33 420 421 422 39 69 72
		 67 68 73 70 68 423 74 73 77 76 421 424
		 425 79 426 427 79 82 428 426 82 429 430 428
		 115 114 431 432 114 116 433 431 116 117 434 433 ;
	setAttr ".mue" -type "floatArray" 435 0.84622091 0.80109423 0.79750311 0.86474007
		 0.75673038 0.75932705 0.71186578 0.69305539 0.8229602 0.88652414 0.67104775 0.73370355
		 0.73213845 0.81213349 0.81298667 0.75514305 0.85965979 0.85707963 0.93814337 0.914868
		 0.80920053 0.75996655 0.86013252 0.90958279 0.80742794 0.76229113 0.86212015 0.9074046
		 0.8148616 0.77310443 0.85529292 0.89678794 0.80786848 0.7522369 0.86350286 0.91807514
		 0.85452145 0.80391175 0.80123448 0.85367912 0.75427818 0.75733751 0.70379663 0.70595086
		 0.79657245 0.83336449 0.76235628 0.72551298 0.80324155 0.84343398 0.75565881 0.71541405
		 0.80362815 0.84610575 0.75510556 0.71244091 0.67846817 0.67438376 0.62709302 0.65196627
		 0.61368448 0.59026909 0.62980288 0.5963431 0.64992964 0.94795197 0.94983327 0.87950522
		 0.884444 0.91481316 0.9373554 0.97501296 0.95422077 0.94186491 0.98537928 0.90792161
		 0.72186881 0.71993005 0.35556537 0.42114395 0.40489325 0.36438262 0.47803739 0.4856002
		 0.54024786 0.5255245 0.40320811 0.36809027 0.48696691 0.52178311 0.43026689 0.39331624
		 0.45926636 0.49647477 0.40855238 0.35591841 0.48091418 0.53417587 0.39557725 0.33881548
		 0.33317202 0.39218116 0.25707817 0.19961686 0.20310961 0.26210961 0.32962206 0.38460758
		 0.26645556 0.21158856 0.33329287 0.39798471 0.26291227 0.19825041 0.32591909 0.39867651
		 0.26948953 0.19706465 0.30277729 0.2455623 0.25634176 0.20540185 0.19248165 0.15381008
		 0.66672218 0.60233986 0.59375042 0.6570394 0.20292535 0.25094211 0.49206236 0.42790177
		 0.43682197 0.50036865 0.74131119 0.80986583 0.80795193 0.86211908 0.86401069 0.9306547
		 0.16169822 0.10600004 0.10868491 0.57431591 0.15727685 0.09811186 0.56489766 0.43459177
		 0.48989818 0.48937008 0.31573242 0.43907487 0.49841845 0.32496741 0.30561259 0.32626563
		 0.2839199 0.325555 0.74224019 0.79139054 0.37328044 0.37227562 0.12251286 0.14222765
		 0.098311767 0.0798361 0.8803243 0.93005031 0.17325221 0.12970875 0.10400741 0.072423868
		 0.13221188 0.13795854 0.61374485 0.59155637 0.52048653 0.48747852 0.30265117 0.28065163
		 0.45734105 0.45135027 0.67116416 0.60801423 0.5722459 0.54965049 0.57350004 0.63026923
		 0.62358582 0.58563733 0.69717544 0.6963585 0.48700482 0.42399427 0.39820325 0.39642742
		 0.4622516 0.51906228 0.50705117 0.46907452 0.54433888 0.5218913 0.91818941 0.97865516
		 0.98152745 0.92674845 0.6441468 0.6723513 0.58707434 0.55531073 0.7991755 0.73641235
		 0.73508251 0.79183364 0.50650442 0.53813744 0.4493866 0.42108434 0.92554134 0.95193255
		 0.5368802 0.53462201 0.65966517 0.63178301 0.72711408 0.73023605 0.78044283 0.75292432
		 0.36569342 0.36847201 0.46372813 0.43585178 0.55850691 0.55621099 0.7333616 0.78233284
		 0.98536623 0.93818754 0.74813008 0.77703112 0.36107615 0.34391212 0.35668722 0.35668722
		 0.37735099 0.89515644 0.92414558 0.073546246 0.096407406 0.099434249 0.088040248
		 0.027932523 0.020539368 0.0020000001 0.70405591 0.69557917 0.03439828 0.56453151
		 0.55789852 0.17847261 0.17689082 0.59142804 0.57243896 0.27403387 0.32193089 0.28022474
		 0.31538004 0.066745318 0.077284828 0.084192671 0.071515463 0.077666067 0.084651247
		 0.067889154 0.072891265 0.084192671 0.071515463 0.084651247 0.11799661 0.11800309
		 0.11800309 0.11799661 0.16582623 0.19307859 0.18858832 0.16593137 0.21089925 0.20340399
		 0.21928822 0.21037829 0.17396663 0.14723162 0.19500247 0.19802335 0.14424257 0.1348767
		 0.16527842 0.18566848 0.13584106 0.12886676 0.15065667 0.1733136 0.12963265 0.12124374
		 0.14745331 0.17470567 0.013759983 0.0020000001 0.0020000001 0.013759983 0.0024586117
		 0.0024586117 0.015135788 0.015135788 0.0089520495 0.018728994 0.0093333181 0.019872798
		 0.023785038 0.034571156 0.024326352 0.035878219 0.062291794 0.050576579 0.062833138
		 0.051883642 0.029260991 0.058902286 0.029251684 0.058893036 0.072891265 0.1878424
		 0.21072306 0.032815408 0.052067254 0.032815408 0.052067254 0.12847279 0.14333364
		 0.23450686 0.24799244 0.26005015 0.25528753 0.2425694 0.24947658 0.24207202 0.24906309
		 0.25379539 0.25880957 0.25528753 0.2425694 0.24207202 0.2087256 0.2087256 0.20868915
		 0.20868915 0.68830609 0.68849808 0.66653603 0.66188955 0.65257204 0.64509326 0.64660591
		 0.63791692 0.70708001 0.68120909 0.66138226 0.65920764 0.71968174 0.71152699 0.69170016
		 0.67180938 0.72630328 0.72033703 0.70637304 0.68441105 0.73377925 0.72660297 0.70980674
		 0.68339008 0.31305316 0.31305316 0.32477653 0.32477653 0.32427913 0.32427913 0.31156099
		 0.31156099 0.30807489 0.31782147 0.31740797 0.30683434 0.29224375 0.30299255 0.30240545
		 0.29082614 0.27623552 0.26447907 0.26389194 0.27481788 0.29741693 0.26777038 0.29742703
		 0.25379539 0.26778045 0.66980618 0.64646846 0.29401103 0.27475578 0.29401103 0.27475578
		 0.72581458 0.71065694 0.60815567 0.6208455 0.6589486 0.98423606 0.95735902 0.97696733
		 0.62964153 0.71279961 0.68566412 0.86475831 0.9083246 0.69279546 0.35556537 0.42042497
		 0.36915675 0.47795022 0.54219294 0.52156347 0.33015001 0.38496023 0.26441738 0.21003734 ;
	setAttr ".mve" -type "floatArray" 435 0.25899243 0.23992835 0.19998586 0.24131081
		 0.2407717 0.20205736 0.26027262 0.24298553 0.17341055 0.21971217 0.22164913 0.17551589
		 0.57633328 0.52666748 0.58562046 0.59464699 0.52977628 0.58518803 0.57760912 0.59563488
		 0.62839425 0.63465649 0.62868673 0.63504201 0.68615556 0.68157357 0.68614864 0.6813845
		 0.73519826 0.71464056 0.73471963 0.71401209 0.76576805 0.73444092 0.76379919 0.73351115
		 0.42494041 0.43892333 0.40838537 0.38390192 0.43931231 0.4075951 0.4246814 0.38403809
		 0.38195705 0.36681283 0.38188601 0.36688569 0.33902544 0.33583149 0.33928168 0.3362636
		 0.29574841 0.29324791 0.29587877 0.29408887 0.33747977 0.28212285 0.35198501 0.37253273
		 0.3880932 0.35798067 0.31954226 0.31918353 0.2471222 0.6848551 0.61986357 0.337791
		 0.27930301 0.38164428 0.35609964 0.36093071 0.41227156 0.31945482 0.30129677 0.2452729
		 0.68519467 0.61931807 0.44037274 0.42877787 0.47977102 0.4915795 0.43113062 0.4746531
		 0.43888292 0.48915595 0.55088013 0.5580433 0.54987931 0.55665505 0.62008303 0.60597426
		 0.61972511 0.60550946 0.65375197 0.64502454 0.65381581 0.64424181 0.36338258 0.38295105
		 0.3053298 0.29418913 0.38364902 0.36436838 0.29488999 0.30570644 0.22237711 0.21525401
		 0.22216751 0.21580033 0.14799619 0.1475562 0.14834732 0.14812607 0.065332741 0.073273264
		 0.065530919 0.073880799 0.78700924 0.78803653 0.71268797 0.78902394 0.71158797 0.78689283
		 0.78219402 0.79413748 0.74559939 0.73538786 0.65130997 0.64993733 0.89224333 0.88197899
		 0.83456892 0.84418088 0.85665959 0.81583226 0.86403161 0.81584424 0.86404479 0.85670352
		 0.13036782 0.04555345 0.1168464 0.49543351 0.21572085 0.18587135 0.57133871 0.12986881
		 0.04275427 0.11414152 0.49526533 0.2144812 0.1889448 0.57243228 0.7103101 0.75865448
		 0.6533367 0.66401637 0.79039282 0.78014493 0.83753574 0.7786122 0.75638479 0.70981216
		 0.82995546 0.78445005 0.7801913 0.79049253 0.64947075 0.65987694 0.2563791 0.22917958
		 0.30846748 0.35316446 0.59588027 0.6429835 0.22886248 0.25497508 0.64485526 0.59580481
		 0.30766171 0.35329261 0.81084639 0.82242638 0.7977587 0.74877232 0.65341061 0.64552468
		 0.66241717 0.6631726 0.7193687 0.77368349 0.92072958 0.9105382 0.87393498 0.81952816
		 0.74460185 0.75165397 0.7616539 0.76147389 0.84719563 0.89590728 0.94639832 0.96433514
		 0.92162985 0.90537995 0.70156729 0.68531632 0.70986754 0.70915496 0.96346909 0.96024096
		 0.91773629 0.92065519 0.80758137 0.8066836 0.80012053 0.78458053 0.98543805 0.99326694
		 0.7967298 0.78417218 0.84619409 0.84807068 0.74510527 0.75749969 0.99800003 0.99658459
		 0.85854262 0.8464995 0.94568515 0.94392157 0.88285726 0.89495552 0.86273259 0.8652513
		 0.86455417 0.85055888 0.75324136 0.75240773 0.67561573 0.70112431 0.73226929 0.73226929
		 0.74278229 0.75114411 0.7515654 0.75911057 0.73424816 0.70363915 0.67504495 0.35083419
		 0.32980502 0.31254247 0.59829062 0.63910598 0.37545303 0.35279498 0.37735143 0.64748806
		 0.60564137 0.31520873 0.33211681 0.366754 0.36613688 0.32228574 0.32285944 0.93305671
		 0.90128189 0.9032141 0.94143379 0.86938554 0.86484843 0.83736789 0.82633656 0.9032141
		 0.94143379 0.86484843 0.86993128 0.84031671 0.84031671 0.86993128 0.85302418 0.87696385
		 0.88161045 0.86170751 0.90657908 0.90623176 0.9418698 0.93557143 0.88336897 0.85859776
		 0.91832733 0.94300586 0.90125501 0.86603224 0.93621349 0.95044029 0.91335052 0.88401079
		 0.93797189 0.95787472 0.91514182 0.87985122 0.9447571 0.96869683 0.94074339 0.90223169
		 0.90223169 0.94074339 0.86386591 0.86386591 0.82564622 0.82564622 0.90046507 0.93248278
		 0.86856872 0.8367939 0.90733904 0.94633371 0.86205125 0.83698523 0.9077993 0.94652504
		 0.86251152 0.83717656 0.82011503 0.82046938 0.82089317 0.82124752 0.82633656 0.96596605
		 0.95219785 0.95740402 0.95763409 0.95740402 0.95763409 0.858226 0.84928364 0.88744903
		 0.91046721 0.90510058 0.91348416 0.87526989 0.87333024 0.83689749 0.84142846 0.79836649
		 0.80939496 0.91348416 0.87526989 0.83689749 0.84201503 0.84201503 0.81239474 0.81239474
		 0.82160354 0.83028531 0.85095131 0.8464613 0.87606442 0.87666804 0.90562481 0.91222417
		 0.82653755 0.85220832 0.88786513 0.91263193 0.83354473 0.86906642 0.90472329 0.91963905
		 0.85130662 0.88086712 0.90598017 0.92664617 0.84688866 0.88244492 0.91265166 0.9375093
		 0.91273546 0.91273546 0.87420428 0.87420428 0.83583194 0.83583194 0.79761767 0.79761767
		 0.90447807 0.87244439 0.84054255 0.80877244 0.91834778 0.87933469 0.83403897 0.80897993
		 0.91855526 0.87983394 0.83453822 0.80918741 0.79127324 0.79165751 0.79205149 0.79836649
		 0.79243577 0.93588036 0.92290354 0.92941821 0.92966777 0.92941821 0.92966777 0.82552409
		 0.81709576 0.88182318 0.85835743 0.40040928 0.6919055 0.72675008 0.64577788 0.28277183
		 0.72742468 0.69238973 0.41088489 0.2606782 0.64582109 0.44037274 0.36305606 0.39526695
		 0.3638745 0.44192207 0.38421056 0.0020000001 0.030853307 0.0020701471 0.031556875 ;
	setAttr ".mnsl" -type "stringArray" 4 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[228:233]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[214:217]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[192:201]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[130:133]"  ;
createNode polyTweakUV -n "polyTweakUV32";
	setAttr ".uopa" yes;
	setAttr -s 49 ".uvtk";
	setAttr ".uvtk[124]" -type "float2" 0.065282933 0.49312904 ;
	setAttr ".uvtk[125]" -type "float2" 0.064619407 0.49263221 ;
	setAttr ".uvtk[126]" -type "float2" 0.065265082 0.49311414 ;
	setAttr ".uvtk[127]" -type "float2" 0.065576516 0.49249113 ;
	setAttr ".uvtk[130]" -type "float2" -0.016735461 0.17267855 ;
	setAttr ".uvtk[131]" -type "float2" -0.016922588 0.17252898 ;
	setAttr ".uvtk[132]" -type "float2" -0.016922766 0.17085086 ;
	setAttr ".uvtk[133]" -type "float2" -0.01625628 0.17240776 ;
	setAttr ".uvtk[182]" -type "float2" 0.065265082 0.49311414 ;
	setAttr ".uvtk[183]" -type "float2" 0.064802945 0.49254829 ;
	setAttr ".uvtk[184]" -type "float2" 0.062426612 0.49343857 ;
	setAttr ".uvtk[185]" -type "float2" 0.065406047 0.49450234 ;
	setAttr ".uvtk[186]" -type "float2" 0.058288865 0.48056367 ;
	setAttr ".uvtk[187]" -type "float2" 0.068116575 0.47372299 ;
	setAttr ".uvtk[188]" -type "float2" 0.071801364 0.49546868 ;
	setAttr ".uvtk[189]" -type "float2" 0.064730383 0.50422513 ;
	setAttr ".uvtk[190]" -type "float2" 0.067121692 0.49113733 ;
	setAttr ".uvtk[191]" -type "float2" 0.068019584 0.49321795 ;
	setAttr ".uvtk[192]" -type "float2" -0.016871823 0.17278293 ;
	setAttr ".uvtk[193]" -type "float2" -0.016871823 0.17278287 ;
	setAttr ".uvtk[194]" -type "float2" -0.02071403 0.16949768 ;
	setAttr ".uvtk[195]" -type "float2" -0.023208702 0.15695155 ;
	setAttr ".uvtk[196]" -type "float2" -0.020666666 0.15333249 ;
	setAttr ".uvtk[197]" -type "float2" 0.0027697196 0.1601042 ;
	setAttr ".uvtk[198]" -type "float2" -0.0095284879 0.17906716 ;
	setAttr ".uvtk[199]" -type "float2" -0.018139012 0.16802424 ;
	setAttr ".uvtk[200]" -type "float2" -0.0029740103 0.16550073 ;
	setAttr ".uvtk[201]" -type "float2" -0.01010824 0.1689574 ;
	setAttr ".uvtk[206]" -type "float2" 0.067551188 0.49138945 ;
	setAttr ".uvtk[207]" -type "float2" 0.069607332 0.4855276 ;
	setAttr ".uvtk[208]" -type "float2" 0.065054432 0.49504721 ;
	setAttr ".uvtk[209]" -type "float2" 0.064850427 0.49301681 ;
	setAttr ".uvtk[214]" -type "float2" -0.01338386 0.17275096 ;
	setAttr ".uvtk[215]" -type "float2" -0.0074943411 0.16811346 ;
	setAttr ".uvtk[216]" -type "float2" -0.015141351 0.16620597 ;
	setAttr ".uvtk[217]" -type "float2" -0.014319696 0.15547957 ;
	setAttr ".uvtk[220]" -type "float2" 0.06561777 0.50435543 ;
	setAttr ".uvtk[221]" -type "float2" 0.05211594 0.48385465 ;
	setAttr ".uvtk[222]" -type "float2" 0.065265082 0.49311414 ;
	setAttr ".uvtk[223]" -type "float2" 0.065265082 0.49311414 ;
	setAttr ".uvtk[224]" -type "float2" 0.074449532 0.48501909 ;
	setAttr ".uvtk[225]" -type "float2" 0.078344546 0.49773276 ;
	setAttr ".uvtk[228]" -type "float2" -0.035075102 0.17124 ;
	setAttr ".uvtk[229]" -type "float2" -0.035340816 0.14110158 ;
	setAttr ".uvtk[230]" -type "float2" -0.016871823 0.17278287 ;
	setAttr ".uvtk[231]" -type "float2" -0.016871823 0.17278287 ;
	setAttr ".uvtk[232]" -type "float2" 0.014262014 0.15636331 ;
	setAttr ".uvtk[233]" -type "float2" 0.0027871134 0.17166847 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold16";
	setAttr ".uvl" -type "Int32Array" 148 267 268 269 270 271 272
		 273 274 275 276 277 278 279 280 281 282 283 284
		 285 286 287 288 289 290 291 292 293 294 295 296
		 297 298 299 300 301 302 303 304 305 306 307 308
		 309 310 311 312 313 314 315 316 317 318 319 320
		 321 322 323 324 325 326 327 328 329 330 331 332
		 333 334 335 336 337 338 339 340 341 342 343 344
		 345 346 347 348 349 350 351 352 353 354 355 356
		 357 358 359 360 361 362 363 364 365 366 367 368
		 369 370 371 372 373 374 375 376 377 378 379 380
		 381 382 383 384 385 386 387 388 389 390 391 392
		 393 394 395 396 397 398 399 400 401 402 403 404
		 405 406 407 408 409 410 411 412 413 414 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 38 76 4 1 3 1 4
		 1 3 3 4 1 3 1 4 2 3 1 4
		 1 3 3 4 1 3 1 4 1 3 1 4
		 1 3 3 4 1 3 201 4 ;
	setAttr ".fpve" -type "Int32Array" 1194 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 124 125 126 127
		 120 122 128 129 130 131 132 133 134 135 136 135
		 137 138 136 137 139 138 117 113 140 141 117 140
		 142 84 143 85 140 113 109 144 142 140 144 145
		 85 143 146 89 144 109 104 89 146 97 93 115
		 147 111 115 148 149 147 78 81 150 111 147 151
		 107 147 149 152 151 150 81 87 153 107 151 101
		 153 87 91 95 118 120 154 155 120 156 157 154
		 135 134 158 159 160 118 155 161 122 123 162 163
		 123 164 165 162 139 137 166 167 168 122 163 169
		 145 144 170 171 144 104 172 170 104 103 173 172
		 97 146 174 175 151 152 176 177 153 95 178 179
		 98 101 180 181 101 151 177 180 182 183 125 124
		 184 185 126 125 186 187 188 189 190 191 124 127
		 192 193 131 130 194 195 132 131 196 197 198 199
		 200 201 130 133 202 203 204 205 190 127 206 207
		 127 126 208 206 126 185 209 208 210 211 212 213
		 200 133 214 215 133 132 216 214 132 195 217 216
		 218 219 203 202 220 221 185 184 222 223 183 182
		 224 225 191 190 226 227 211 210 228 229 195 194
		 230 231 193 192 232 233 201 200 216 217 196 199
		 214 216 199 198 215 214 198 197 213 212 234 235
		 205 204 236 237 208 209 186 189 206 208 189 188
		 207 206 188 187 159 158 238 239 154 157 240 241
		 155 154 241 242 161 155 243 244 167 166 245 246
		 162 165 247 248 163 162 248 249 169 163 249 250
		 170 172 251 252 171 170 252 253 175 174 254 255
		 172 173 256 251 181 180 257 258 179 178 259 260
		 177 176 261 262 180 177 262 257 99 102 263 264
		 102 105 265 263 105 100 266 265 100 99 264 266
		 267 268 269 270 268 271 272 269 271 273 274 272
		 270 269 275 276 269 272 277 275 278 279 280 281
		 282 283 284 285 283 286 287 284 286 288 289 287
		 285 284 290 291 284 287 292 290 287 289 293 292
		 291 290 294 295 290 292 296 294 292 293 297 296
		 295 294 298 299 294 296 300 298 296 297 301 300
		 299 298 302 303 298 300 304 302 300 301 305 304
		 306 307 308 309 307 310 311 308 310 312 313 311
		 309 308 314 315 308 311 316 314 311 313 317 316
		 315 314 318 319 314 316 320 318 316 317 321 320
		 319 318 322 323 318 320 324 322 320 321 325 324
		 323 322 268 267 322 324 271 268 324 325 273 271
		 321 317 313 326 325 321 326 327 273 325 327 274
		 326 313 312 328 274 327 329 330 331 305 301 297
		 332 331 297 293 288 332 293 289 315 319 333 309
		 319 323 334 333 323 267 270 334 309 333 335 306
		 333 334 336 335 334 270 276 336 303 337 295 299
		 337 338 291 295 338 282 285 291 272 274 279 278
		 274 330 280 279 288 286 339 340 277 272 278 281
		 341 342 343 344 344 343 345 346 346 345 347 348
		 342 349 350 343 343 350 351 345 352 353 354 355
		 356 357 358 359 359 358 360 361 361 360 362 363
		 357 364 365 358 358 365 366 360 360 366 367 362
		 364 368 369 365 365 369 370 366 366 370 371 367
		 368 372 373 369 369 373 374 370 370 374 375 371
		 372 376 377 373 373 377 378 374 374 378 379 375
		 380 381 382 383 383 382 384 385 385 384 386 387
		 381 388 389 382 382 389 390 384 384 390 391 386
		 388 392 393 389 389 393 394 390 390 394 395 391
		 392 396 397 393 393 397 398 394 394 398 399 395
		 396 341 344 397 397 344 346 398 398 346 348 399
		 395 400 386 391 399 401 400 395 348 347 401 399
		 400 402 387 386 347 403 404 401 405 371 375 379
		 406 367 371 405 363 362 367 406 388 381 407 392
		 392 407 408 396 396 408 342 341 381 380 409 407
		 407 409 410 408 408 410 349 342 376 372 368 411
		 411 368 364 412 412 364 357 356 345 352 355 347
		 347 355 354 403 363 413 414 361 351 353 352 345
		 56 43 59 58 43 415 60 59 35 65 416 417
		 57 56 58 62 65 66 418 416 419 57 62 63
		 39 67 70 69 76 33 420 421 422 39 69 72
		 67 68 73 70 68 423 74 73 77 76 421 424
		 425 79 426 427 79 82 428 426 82 429 430 428
		 115 114 431 432 114 116 433 431 116 117 434 433 ;
	setAttr ".mue" -type "floatArray" 435 0.83873314 0.79380447 0.79022908 0.857171
		 0.74963522 0.75222051 0.7049675 0.6862396 0.81557447 0.87885952 0.66432852 0.72670943
		 0.72683001 0.80647409 0.80732352 0.74973369 0.85379183 0.85122299 0.93193108 0.90875787
		 0.803554 0.75453603 0.85426253 0.90349585 0.80178916 0.75685042 0.85624141 0.90132719
		 0.80919021 0.76761627 0.84944415 0.89075714 0.8022278 0.7468403 0.85761809 0.91195095
		 0.84699726 0.79660958 0.79394406 0.84615862 0.74719381 0.75023973 0.69693375 0.6990785
		 0.78930247 0.8259331 0.75523645 0.71855479 0.79594231 0.83595842 0.74856836 0.70850021
		 0.79632723 0.83861846 0.74801755 0.70554006 0.67171639 0.66764992 0.62056667 0.64533079
		 0.60721695 0.58390433 0.62326461 0.58995163 0.6433031 0.94169664 0.94356972 0.87187141
		 0.8767885 0.90702444 0.92946774 0.96696007 0.94625914 0.93395746 0.97728091 0.90016311
		 0.71660542 0.71467519 0.35544819 0.42073905 0.40455964 0.36422676 0.47738287 0.48491248
		 0.53932041 0.5246616 0.40288189 0.36791813 0.4862732 0.52093667 0.42982194 0.39303342
		 0.45869419 0.49573934 0.40820271 0.35579967 0.48024702 0.53327501 0.39385042 0.3373377
		 0.33171901 0.39046922 0.255959 0.19874983 0.20222723 0.26096839 0.3281846 0.38292888
		 0.26529527 0.210669 0.33183932 0.39624733 0.26176751 0.19738936 0.32449791 0.39693609
		 0.26831591 0.1962088 0.3032099 0.24624595 0.25697809 0.20626169 0.19339819 0.15489629
		 0.66012788 0.60282654 0.59652287 0.65254587 0.20379606 0.25160214 0.4949255 0.4408083
		 0.44665828 0.50068772 0.73579121 0.80404502 0.80213952 0.85606903 0.85795236 0.92430395
		 0.16099754 0.10554373 0.10821683 0.57323897 0.15659557 0.097690165 0.56386203 0.43269378
		 0.4877575 0.48723173 0.31579 0.43715721 0.49624041 0.32498449 0.30603278 0.32659519
		 0.28443524 0.32588768 0.73671609 0.78565079 0.37340373 0.37240332 0.12373638 0.14336467
		 0.099641472 0.081246868 0.87419438 0.92370224 0.17425311 0.1309007 0.10355985 0.072114885
		 0.13164057 0.13736202 0.61249489 0.5904038 0.51821166 0.48534849 0.30276614 0.28086314
		 0.45534325 0.44937873 0.66361225 0.60757649 0.5744015 0.55784231 0.5740757 0.63278568
		 0.62960905 0.58992738 0.68940538 0.6886847 0.49151945 0.43852702 0.41245794 0.40670034
		 0.46126792 0.52878398 0.50941497 0.47011417 0.54840761 0.52539086 0.91134876 0.97154921
		 0.97440892 0.91987026 0.64344513 0.67033857 0.59094763 0.56290364 0.79145354 0.72896576
		 0.72764176 0.78414392 0.50703084 0.53820837 0.45736966 0.4335449 0.91866845 0.94494385
		 0.54599833 0.53261781 0.65301448 0.62849456 0.72186738 0.72767901 0.77280307 0.74540532
		 0.3728407 0.37356189 0.47288239 0.44952789 0.57551974 0.56490701 0.72592843 0.77468479
		 0.97823083 0.93125916 0.74258018 0.77135438 0.36125296 0.34416425 0.35688332 0.35688332
		 0.3774564 0.88896143 0.91782337 0.07498461 0.097745463 0.10075903 0.089415014 0.027818743
		 0.020458026 0.0020000001 0.70240974 0.69397014 0.03425613 0.5620634 0.5554595 0.17913242
		 0.17755757 0.58884192 0.56993616 0.27284032 0.3205272 0.27900404 0.31400508 0.065476678
		 0.078328863 0.087481119 0.069904417 0.083041079 0.094353631 0.072539248 0.077522159
		 0.097011834 0.077875011 0.10418884 0.11597581 0.1070192 0.11524619 0.12430139 0.2958627
		 0.32482409 0.31799993 0.29553869 0.34347415 0.33300048 0.35224181 0.33970258 0.30415034
		 0.27870139 0.32463774 0.32962289 0.27911493 0.26808518 0.2995244 0.31893301 0.27073699
		 0.26399863 0.28548759 0.30801827 0.2611005 0.25251472 0.28024036 0.308952 0.013416504
		 0.0020000001 0.012676812 0.022999277 0.0043312656 0.01497857 0.016822301 0.027606387
		 0.022906432 0.029757662 0.024882885 0.034359269 0.035624787 0.041146278 0.038707566
		 0.046875775 0.064987302 0.052093595 0.069188677 0.059747137 0.040016804 0.064000778
		 0.019884953 0.074350178 0.082443893 0.32192671 0.34324867 0.038972102 0.051922556
		 0.034292459 0.054256041 0.25898463 0.27302426 0.36485589 0.37742859 0.18174361 0.17737897
		 0.15956137 0.16869666 0.15235931 0.16371562 0.16927867 0.17422731 0.16945775 0.15005751
		 0.14260778 0.1306255 0.12232597 0.13131498 0.13963902 0.68495339 0.68572611 0.66394579
		 0.65687352 0.64979869 0.63931912 0.64404315 0.63174373 0.70241451 0.67786139 0.65854716
		 0.65437609 0.71325511 0.7034499 0.68415338 0.66527325 0.71793878 0.71220511 0.69826901
		 0.67637688 0.72922242 0.72193271 0.70382494 0.6759268 0.23379971 0.22416297 0.23427609
		 0.24498215 0.23208621 0.24276862 0.21964455 0.2305584 0.21732427 0.22401452 0.22216693
		 0.21276063 0.20606914 0.21122107 0.20838711 0.20012751 0.19515632 0.1821378 0.17750932
		 0.18713751 0.20711695 0.18319531 0.2275703 0.16436192 0.1725532 0.66246533 0.64073056
		 0.2083098 0.19538221 0.21304415 0.19307035 0.72194844 0.70762163 0.60560244 0.61740327
		 0.65228248 0.97782153 0.95106244 0.97058469 0.62310398 0.70757604 0.68055958 0.85718918
		 0.90056431 0.68765962 0.35544819 0.42002323 0.36897993 0.47729608 0.5412569 0.52071798
		 0.32871026 0.38327998 0.26326603 0.20912457 ;
	setAttr ".mve" -type "floatArray" 435 0.26202479 0.24304435 0.20327711 0.24442074
		 0.243884 0.20533952 0.26329935 0.24608812 0.1768184 0.22291687 0.22484532 0.1789145
		 0.57748795 0.52804005 0.58673435 0.5957213 0.5311352 0.58630383 0.57875818 0.59670484
		 0.6293205 0.63555527 0.62961167 0.63593906 0.68682837 0.68226647 0.68682146 0.68207824
		 0.7356559 0.71518838 0.73517936 0.71456265 0.76609159 0.73490191 0.76413137 0.73397619
		 0.42724466 0.44116622 0.41076225 0.38638622 0.4415535 0.40997544 0.42698678 0.38652179
		 0.3844499 0.3693721 0.38437915 0.36944467 0.34170663 0.3385267 0.34196177 0.33895692
		 0.29861951 0.29612997 0.29874927 0.29696724 0.34016776 0.28505373 0.35460934 0.37506691
		 0.39055911 0.36057872 0.32230896 0.32195181 0.25020665 0.68553358 0.6208272 0.34047762
		 0.28224626 0.38413849 0.35870591 0.36351579 0.4146314 0.32222188 0.30414352 0.24836545
		 0.68587172 0.62028414 0.43831274 0.42676875 0.47753817 0.48929483 0.42911118 0.47244269
		 0.43682945 0.48688191 0.54833525 0.55546701 0.54733884 0.55408484 0.61723453 0.60318768
		 0.61687821 0.60272491 0.65075576 0.6420666 0.6508193 0.64128733 0.361797 0.38127962
		 0.30399895 0.29290715 0.38197452 0.36277848 0.29360494 0.30437392 0.2214102 0.21431835
		 0.22120152 0.21486227 0.14735563 0.14691757 0.14770521 0.14748494 0.065054871 0.072960548
		 0.065252177 0.073565423 0.78342092 0.78444374 0.70942575 0.7854268 0.70833057 0.78330505
		 0.78003639 0.78917867 0.74685138 0.73822659 0.64831704 0.64695042 0.89804173 0.89144206
		 0.85012639 0.85736144 0.85752434 0.81687617 0.86486405 0.81688809 0.86487716 0.85756809
		 0.1298046 0.045362357 0.11634251 0.49313194 0.21478315 0.18506461 0.56870413 0.12930778
		 0.04257546 0.1136495 0.49296448 0.21354894 0.18812458 0.56979287 0.70705831 0.75519061
		 0.65033489 0.66096771 0.79154831 0.78134543 0.83372575 0.77506071 0.75293088 0.70656258
		 0.82617873 0.780873 0.78139156 0.79164761 0.64648592 0.65684646 0.255263 0.22818282
		 0.30712286 0.35162371 0.59313798 0.64003456 0.22786711 0.25386515 0.6418981 0.59306282
		 0.30632061 0.35175133 0.80525565 0.8140381 0.79261494 0.75024104 0.65445912 0.64245725
		 0.67635751 0.68408138 0.72355008 0.77309287 0.92210531 0.91564792 0.88328099 0.82746649
		 0.75958955 0.76851928 0.79351878 0.78566247 0.85223699 0.89680213 0.94659305 0.96445119
		 0.92193323 0.90575469 0.70739514 0.68839467 0.71706361 0.71420515 0.96362054 0.9604066
		 0.91808844 0.92099452 0.82676673 0.82091421 0.81698632 0.79593325 0.98546153 0.99325603
		 0.80084944 0.77158743 0.836146 0.83740312 0.74130744 0.7634626 0.99800003 0.99659079
		 0.87340552 0.83807135 0.94372213 0.94315952 0.87337726 0.89672899 0.86332601 0.8658337
		 0.86510801 0.85117412 0.75455987 0.75372988 0.67251617 0.69791281 0.72892118 0.72892118
		 0.73938805 0.7524718 0.75289124 0.75564468 0.73089135 0.70041662 0.6719479 0.34930369
		 0.32836676 0.31117997 0.59553778 0.63617402 0.37381449 0.35125586 0.37570459 0.64451933
		 0.60285622 0.31383452 0.33066842 0.36515364 0.36453924 0.32088047 0.32145166 0.93059444
		 0.90549177 0.90989643 0.9407661 0.87733084 0.87417346 0.84756809 0.83568883 0.91408157
		 0.94808674 0.88037443 0.85904437 0.84433711 0.83554846 0.86206728 0.82364535 0.84795821
		 0.85529673 0.83634168 0.87909067 0.87952697 0.91439146 0.90757686 0.85763103 0.83235049
		 0.89087248 0.91485721 0.87303871 0.83883536 0.90619558 0.92148781 0.88429272 0.85564256
		 0.9085297 0.92731893 0.88705295 0.85011768 0.91764694 0.94173956 0.94160616 0.90431637
		 0.90302515 0.9363454 0.86860633 0.86983496 0.83456874 0.83845049 0.90086335 0.92746764
		 0.87419629 0.84796637 0.90618575 0.93738204 0.86891991 0.84747607 0.90836763 0.93812156
		 0.87035829 0.84752405 0.83266377 0.83323193 0.82233918 0.81695408 0.82482338 0.93817371
		 0.92458791 0.94753361 0.94902396 0.95828116 0.95959127 0.82749259 0.81922579 0.86272621
		 0.88575351 0.90228188 0.91247594 0.88163018 0.87714881 0.845613 0.84869409 0.80689812
		 0.81884688 0.91986859 0.88594401 0.85195464 0.83044505 0.83366013 0.80685979 0.81565148
		 0.81478578 0.82746595 0.84719402 0.84009117 0.87188447 0.87180078 0.90015918 0.90739214
		 0.8228724 0.84906691 0.88292694 0.90708929 0.82897216 0.86352819 0.89743894 0.91335303
		 0.84562242 0.87450308 0.89927948 0.91883075 0.8396939 0.87693024 0.90821326 0.93326879
		 0.91293848 0.90772557 0.8744123 0.87571716 0.84144902 0.84028333 0.80996853 0.80628598
		 0.89884329 0.87222666 0.84577394 0.81950492 0.90887731 0.87743652 0.84057873 0.81899351
		 0.90970057 0.88009256 0.84158176 0.81894308 0.8035506 0.80394822 0.79380345 0.79601043
		 0.78802329 0.93075848 0.91790456 0.91906041 0.92062384 0.92982346 0.93121481 0.81731135
		 0.80955034 0.87959301 0.85615438 0.40282115 0.69255304 0.72724479 0.64662784 0.28569984
		 0.72791642 0.69303519 0.4132508 0.26370317 0.64667088 0.43831274 0.36133528 0.39340484
		 0.36215013 0.43985528 0.38239697 0.0020000001 0.030726712 0.0020698393 0.031427193 ;
	setAttr ".mnsl" -type "stringArray" 1 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[267:414]"  ;
createNode polyTweakUV -n "polyTweakUV33";
	setAttr ".uopa" yes;
	setAttr -s 45 ".uvtk";
	setAttr ".uvtk[341]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[342]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[343]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[344]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[345]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[346]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[347]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[348]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[349]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[350]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[351]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[352]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[353]" -type "float2" 1.1641532e-009 0.15868665 ;
	setAttr ".uvtk[354]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[355]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[380]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[381]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[382]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[383]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[384]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[385]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[386]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[387]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[388]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[389]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[390]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[391]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[392]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[393]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[394]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[395]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[396]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[397]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[398]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[399]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[400]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[401]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[402]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[403]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[404]" -type "float2" -6.2864274e-009 0.15868665 ;
	setAttr ".uvtk[407]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[408]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[409]" -type "float2" -6.2864274e-009 0.15868659 ;
	setAttr ".uvtk[410]" -type "float2" -6.2864274e-009 0.15868659 ;
createNode Unfold3DOptimize -n "Unfold3DOptimize2";
	setAttr ".uvl" -type "Int32Array" 44 341 342 343 344 345 346
		 347 348 349 350 351 352 353 354 355 380 381 382
		 383 384 385 386 387 388 389 390 391 392 393 394
		 395 396 397 398 399 400 401 402 403 404 407 408
		 409 410 ;
	setAttr ".bi" no;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 38 76 4 1 3 1 4
		 1 3 3 4 1 3 1 4 2 3 1 4
		 1 3 3 4 1 3 1 4 1 3 1 4
		 1 3 3 4 1 3 201 4 ;
	setAttr ".fpve" -type "Int32Array" 1194 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 124 125 126 127
		 120 122 128 129 130 131 132 133 134 135 136 135
		 137 138 136 137 139 138 117 113 140 141 117 140
		 142 84 143 85 140 113 109 144 142 140 144 145
		 85 143 146 89 144 109 104 89 146 97 93 115
		 147 111 115 148 149 147 78 81 150 111 147 151
		 107 147 149 152 151 150 81 87 153 107 151 101
		 153 87 91 95 118 120 154 155 120 156 157 154
		 135 134 158 159 160 118 155 161 122 123 162 163
		 123 164 165 162 139 137 166 167 168 122 163 169
		 145 144 170 171 144 104 172 170 104 103 173 172
		 97 146 174 175 151 152 176 177 153 95 178 179
		 98 101 180 181 101 151 177 180 182 183 125 124
		 184 185 126 125 186 187 188 189 190 191 124 127
		 192 193 131 130 194 195 132 131 196 197 198 199
		 200 201 130 133 202 203 204 205 190 127 206 207
		 127 126 208 206 126 185 209 208 210 211 212 213
		 200 133 214 215 133 132 216 214 132 195 217 216
		 218 219 203 202 220 221 185 184 222 223 183 182
		 224 225 191 190 226 227 211 210 228 229 195 194
		 230 231 193 192 232 233 201 200 216 217 196 199
		 214 216 199 198 215 214 198 197 213 212 234 235
		 205 204 236 237 208 209 186 189 206 208 189 188
		 207 206 188 187 159 158 238 239 154 157 240 241
		 155 154 241 242 161 155 243 244 167 166 245 246
		 162 165 247 248 163 162 248 249 169 163 249 250
		 170 172 251 252 171 170 252 253 175 174 254 255
		 172 173 256 251 181 180 257 258 179 178 259 260
		 177 176 261 262 180 177 262 257 99 102 263 264
		 102 105 265 263 105 100 266 265 100 99 264 266
		 267 268 269 270 268 271 272 269 271 273 274 272
		 270 269 275 276 269 272 277 275 278 279 280 281
		 282 283 284 285 283 286 287 284 286 288 289 287
		 285 284 290 291 284 287 292 290 287 289 293 292
		 291 290 294 295 290 292 296 294 292 293 297 296
		 295 294 298 299 294 296 300 298 296 297 301 300
		 299 298 302 303 298 300 304 302 300 301 305 304
		 306 307 308 309 307 310 311 308 310 312 313 311
		 309 308 314 315 308 311 316 314 311 313 317 316
		 315 314 318 319 314 316 320 318 316 317 321 320
		 319 318 322 323 318 320 324 322 320 321 325 324
		 323 322 268 267 322 324 271 268 324 325 273 271
		 321 317 313 326 325 321 326 327 273 325 327 274
		 326 313 312 328 274 327 329 330 331 305 301 297
		 332 331 297 293 288 332 293 289 315 319 333 309
		 319 323 334 333 323 267 270 334 309 333 335 306
		 333 334 336 335 334 270 276 336 303 337 295 299
		 337 338 291 295 338 282 285 291 272 274 279 278
		 274 330 280 279 288 286 339 340 277 272 278 281
		 341 342 343 344 344 343 345 346 346 345 347 348
		 342 349 350 343 343 350 351 345 352 353 354 355
		 356 357 358 359 359 358 360 361 361 360 362 363
		 357 364 365 358 358 365 366 360 360 366 367 362
		 364 368 369 365 365 369 370 366 366 370 371 367
		 368 372 373 369 369 373 374 370 370 374 375 371
		 372 376 377 373 373 377 378 374 374 378 379 375
		 380 381 382 383 383 382 384 385 385 384 386 387
		 381 388 389 382 382 389 390 384 384 390 391 386
		 388 392 393 389 389 393 394 390 390 394 395 391
		 392 396 397 393 393 397 398 394 394 398 399 395
		 396 341 344 397 397 344 346 398 398 346 348 399
		 395 400 386 391 399 401 400 395 348 347 401 399
		 400 402 387 386 347 403 404 401 405 371 375 379
		 406 367 371 405 363 362 367 406 388 381 407 392
		 392 407 408 396 396 408 342 341 381 380 409 407
		 407 409 410 408 408 410 349 342 376 372 368 411
		 411 368 364 412 412 364 357 356 345 352 355 347
		 347 355 354 403 363 413 414 361 351 353 352 345
		 56 43 59 58 43 415 60 59 35 65 416 417
		 57 56 58 62 65 66 418 416 419 57 62 63
		 39 67 70 69 76 33 420 421 422 39 69 72
		 67 68 73 70 68 423 74 73 77 76 421 424
		 425 79 426 427 79 82 428 426 82 429 430 428
		 115 114 431 432 114 116 433 431 116 117 434 433 ;
	setAttr ".mue" -type "floatArray" 435 0.83873314 0.79380447 0.79022908 0.857171
		 0.74963522 0.75222051 0.7049675 0.6862396 0.81557447 0.87885952 0.66432852 0.72670943
		 0.72683001 0.80647409 0.80732352 0.74973369 0.85379183 0.85122299 0.93193108 0.90875787
		 0.803554 0.75453603 0.85426253 0.90349585 0.80178916 0.75685042 0.85624141 0.90132719
		 0.80919021 0.76761627 0.84944415 0.89075714 0.8022278 0.7468403 0.85761809 0.91195095
		 0.84699726 0.79660958 0.79394406 0.84615862 0.74719381 0.75023973 0.69693375 0.6990785
		 0.78930247 0.8259331 0.75523645 0.71855479 0.79594231 0.83595842 0.74856836 0.70850021
		 0.79632723 0.83861846 0.74801755 0.70554006 0.67171639 0.66764992 0.62056667 0.64533079
		 0.60721695 0.58390433 0.62326461 0.58995163 0.6433031 0.94169664 0.94356972 0.87187141
		 0.8767885 0.90702444 0.92946774 0.96696007 0.94625914 0.93395746 0.97728091 0.90016311
		 0.71660542 0.71467519 0.35544819 0.42073905 0.40455964 0.36422676 0.47738287 0.48491248
		 0.53932041 0.5246616 0.40288189 0.36791813 0.4862732 0.52093667 0.42982194 0.39303342
		 0.45869419 0.49573934 0.40820271 0.35579967 0.48024702 0.53327501 0.39385042 0.3373377
		 0.33171901 0.39046922 0.255959 0.19874983 0.20222723 0.26096839 0.3281846 0.38292888
		 0.26529527 0.210669 0.33183932 0.39624733 0.26176751 0.19738936 0.32449791 0.39693609
		 0.26831591 0.1962088 0.3032099 0.24624595 0.25697809 0.20626169 0.19339819 0.15489629
		 0.66012788 0.60282654 0.59652287 0.65254587 0.20379606 0.25160214 0.4949255 0.4408083
		 0.44665828 0.50068772 0.73579121 0.80404502 0.80213952 0.85606903 0.85795236 0.92430395
		 0.16099754 0.10554373 0.10821683 0.57323897 0.15659557 0.097690165 0.56386203 0.43269378
		 0.4877575 0.48723173 0.31579 0.43715721 0.49624041 0.32498449 0.30603278 0.32659519
		 0.28443524 0.32588768 0.73671609 0.78565079 0.37340373 0.37240332 0.12373638 0.14336467
		 0.099641472 0.081246868 0.87419438 0.92370224 0.17425311 0.1309007 0.10355985 0.072114885
		 0.13164057 0.13736202 0.61249489 0.5904038 0.51821166 0.48534849 0.30276614 0.28086314
		 0.45534325 0.44937873 0.66361225 0.60757649 0.5744015 0.55784231 0.5740757 0.63278568
		 0.62960905 0.58992738 0.68940538 0.6886847 0.49151945 0.43852702 0.41245794 0.40670034
		 0.46126792 0.52878398 0.50941497 0.47011417 0.54840761 0.52539086 0.91134876 0.97154921
		 0.97440892 0.91987026 0.64344513 0.67033857 0.59094763 0.56290364 0.79145354 0.72896576
		 0.72764176 0.78414392 0.50703084 0.53820837 0.45736966 0.4335449 0.91866845 0.94494385
		 0.54599833 0.53261781 0.65301448 0.62849456 0.72186738 0.72767901 0.77280307 0.74540532
		 0.3728407 0.37356189 0.47288239 0.44952789 0.57551974 0.56490701 0.72592843 0.77468479
		 0.97823083 0.93125916 0.74258018 0.77135438 0.36125296 0.34416425 0.35688332 0.35688332
		 0.3774564 0.88896143 0.91782337 0.07498461 0.097745463 0.10075903 0.089415014 0.027818743
		 0.020458026 0.0020000001 0.70240974 0.69397014 0.03425613 0.5620634 0.5554595 0.17913242
		 0.17755757 0.58884192 0.56993616 0.27284032 0.3205272 0.27900404 0.31400508 0.065476678
		 0.078328863 0.087481119 0.069904417 0.083041079 0.094353631 0.072539248 0.077522159
		 0.097011834 0.077875011 0.10418884 0.11597581 0.1070192 0.11524619 0.12430139 0.2958627
		 0.32482409 0.31799993 0.29553869 0.34347415 0.33300048 0.35224181 0.33970258 0.30415034
		 0.27870139 0.32463774 0.32962289 0.27911493 0.26808518 0.2995244 0.31893301 0.27073699
		 0.26399863 0.28548759 0.30801827 0.2611005 0.25251472 0.28024036 0.308952 0.013416504
		 0.0020000001 0.012676812 0.022999277 0.0043312656 0.01497857 0.016822301 0.027606387
		 0.022906432 0.029757662 0.024882885 0.034359269 0.035624787 0.041146278 0.038707566
		 0.046875775 0.064987302 0.052093595 0.069188677 0.059747137 0.040016804 0.064000778
		 0.019884953 0.074350178 0.082443893 0.32192671 0.34324867 0.038972102 0.051922556
		 0.034292459 0.054256041 0.25898463 0.27302426 0.36485589 0.37742859 0.18144625 0.176875
		 0.15954623 0.16877286 0.15292919 0.16419944 0.16962123 0.1746015 0.16862588 0.14984001
		 0.14340831 0.13012101 0.12201729 0.13118513 0.13906235 0.68495339 0.68572611 0.66394579
		 0.65687352 0.64979869 0.63931912 0.64404315 0.63174373 0.70241451 0.67786139 0.65854716
		 0.65437609 0.71325511 0.7034499 0.68415338 0.66527325 0.71793878 0.71220511 0.69826901
		 0.67637688 0.72922242 0.72193271 0.70382494 0.6759268 0.23401104 0.22424641 0.23437336
		 0.24509396 0.23206988 0.24270388 0.21940883 0.23024784 0.21739277 0.2241344 0.22222947
		 0.21270269 0.20599261 0.21139027 0.20850223 0.20017041 0.19490023 0.1822381 0.1779245
		 0.18742712 0.20685454 0.18332547 0.22717106 0.16512716 0.17312683 0.66246533 0.64073056
		 0.20819435 0.19508368 0.21299861 0.19259164 0.72194844 0.70762163 0.60560244 0.61740327
		 0.65228248 0.97782153 0.95106244 0.97058469 0.62310398 0.70757604 0.68055958 0.85718918
		 0.90056431 0.68765962 0.35544819 0.42002323 0.36897993 0.47729608 0.5412569 0.52071798
		 0.32871026 0.38327998 0.26326603 0.20912457 ;
	setAttr ".mve" -type "floatArray" 435 0.26202479 0.24304435 0.20327711 0.24442074
		 0.243884 0.20533952 0.26329935 0.24608812 0.1768184 0.22291687 0.22484532 0.1789145
		 0.57748795 0.52804005 0.58673435 0.5957213 0.5311352 0.58630383 0.57875818 0.59670484
		 0.6293205 0.63555527 0.62961167 0.63593906 0.68682837 0.68226647 0.68682146 0.68207824
		 0.7356559 0.71518838 0.73517936 0.71456265 0.76609159 0.73490191 0.76413137 0.73397619
		 0.42724466 0.44116622 0.41076225 0.38638622 0.4415535 0.40997544 0.42698678 0.38652179
		 0.3844499 0.3693721 0.38437915 0.36944467 0.34170663 0.3385267 0.34196177 0.33895692
		 0.29861951 0.29612997 0.29874927 0.29696724 0.34016776 0.28505373 0.35460934 0.37506691
		 0.39055911 0.36057872 0.32230896 0.32195181 0.25020665 0.68553358 0.6208272 0.34047762
		 0.28224626 0.38413849 0.35870591 0.36351579 0.4146314 0.32222188 0.30414352 0.24836545
		 0.68587172 0.62028414 0.43831274 0.42676875 0.47753817 0.48929483 0.42911118 0.47244269
		 0.43682945 0.48688191 0.54833525 0.55546701 0.54733884 0.55408484 0.61723453 0.60318768
		 0.61687821 0.60272491 0.65075576 0.6420666 0.6508193 0.64128733 0.361797 0.38127962
		 0.30399895 0.29290715 0.38197452 0.36277848 0.29360494 0.30437392 0.2214102 0.21431835
		 0.22120152 0.21486227 0.14735563 0.14691757 0.14770521 0.14748494 0.065054871 0.072960548
		 0.065252177 0.073565423 0.78342092 0.78444374 0.70942575 0.7854268 0.70833057 0.78330505
		 0.78003639 0.78917867 0.74685138 0.73822659 0.64831704 0.64695042 0.89804173 0.89144206
		 0.85012639 0.85736144 0.85752434 0.81687617 0.86486405 0.81688809 0.86487716 0.85756809
		 0.1298046 0.045362357 0.11634251 0.49313194 0.21478315 0.18506461 0.56870413 0.12930778
		 0.04257546 0.1136495 0.49296448 0.21354894 0.18812458 0.56979287 0.70705831 0.75519061
		 0.65033489 0.66096771 0.79154831 0.78134543 0.83372575 0.77506071 0.75293088 0.70656258
		 0.82617873 0.780873 0.78139156 0.79164761 0.64648592 0.65684646 0.255263 0.22818282
		 0.30712286 0.35162371 0.59313798 0.64003456 0.22786711 0.25386515 0.6418981 0.59306282
		 0.30632061 0.35175133 0.80525565 0.8140381 0.79261494 0.75024104 0.65445912 0.64245725
		 0.67635751 0.68408138 0.72355008 0.77309287 0.92210531 0.91564792 0.88328099 0.82746649
		 0.75958955 0.76851928 0.79351878 0.78566247 0.85223699 0.89680213 0.94659305 0.96445119
		 0.92193323 0.90575469 0.70739514 0.68839467 0.71706361 0.71420515 0.96362054 0.9604066
		 0.91808844 0.92099452 0.82676673 0.82091421 0.81698632 0.79593325 0.98546153 0.99325603
		 0.80084944 0.77158743 0.836146 0.83740312 0.74130744 0.7634626 0.99800003 0.99659079
		 0.87340552 0.83807135 0.94372213 0.94315952 0.87337726 0.89672899 0.86332601 0.8658337
		 0.86510801 0.85117412 0.75455987 0.75372988 0.67251617 0.69791281 0.72892118 0.72892118
		 0.73938805 0.7524718 0.75289124 0.75564468 0.73089135 0.70041662 0.6719479 0.34930369
		 0.32836676 0.31117997 0.59553778 0.63617402 0.37381449 0.35125586 0.37570459 0.64451933
		 0.60285622 0.31383452 0.33066842 0.36515364 0.36453924 0.32088047 0.32145166 0.93059444
		 0.90549177 0.90989643 0.9407661 0.87733084 0.87417346 0.84756809 0.83568883 0.91408157
		 0.94808674 0.88037443 0.85904437 0.84433711 0.83554846 0.86206728 0.82364535 0.84795821
		 0.85529673 0.83634168 0.87909067 0.87952697 0.91439146 0.90757686 0.85763103 0.83235049
		 0.89087248 0.91485721 0.87303871 0.83883536 0.90619558 0.92148781 0.88429272 0.85564256
		 0.9085297 0.92731893 0.88705295 0.85011768 0.91764694 0.94173956 0.94160616 0.90431637
		 0.90302515 0.9363454 0.86860633 0.86983496 0.83456874 0.83845049 0.90086335 0.92746764
		 0.87419629 0.84796637 0.90618575 0.93738204 0.86891991 0.84747607 0.90836763 0.93812156
		 0.87035829 0.84752405 0.83266377 0.83323193 0.82233918 0.81695408 0.82482338 0.93817371
		 0.92458791 0.94753361 0.94902396 0.95828116 0.95959127 0.82749259 0.81922579 0.86272621
		 0.88575351 1.0610137 1.071157 1.0397793 1.0355221 1.0038321 1.0071455 0.96607536
		 0.97783136 1.0781753 1.0437305 1.0100019 0.9902932 0.99347961 0.96510845 0.97397202
		 0.81478578 0.82746595 0.84719402 0.84009117 0.87188447 0.87180078 0.90015918 0.90739214
		 0.8228724 0.84906691 0.88292694 0.90708929 0.82897216 0.86352819 0.89743894 0.91335303
		 0.84562242 0.87450308 0.89927948 0.91883075 0.8396939 0.87693024 0.90821326 0.93326879
		 1.0714529 1.0665251 1.0330055 1.0341341 0.99985212 0.99850672 0.96836013 0.96462226
		 1.0576608 1.0309577 1.0043255 0.97805029 1.0678891 1.0363386 0.99919736 0.97767639
		 1.0687829 1.0387772 1.0003338 0.97787344 0.96213281 0.96302378 0.95214266 0.95507276
		 0.94720066 0.93075848 0.91790456 1.0780908 1.0796684 1.0886736 1.0901314 0.81731135
		 0.80955034 0.87959301 0.85615438 0.40282115 0.69255304 0.72724479 0.64662784 0.28569984
		 0.72791642 0.69303519 0.4132508 0.26370317 0.64667088 0.43831274 0.36133528 0.39340484
		 0.36215013 0.43985528 0.38239697 0.0020000001 0.030726712 0.0020698393 0.031427193 ;
	setAttr ".mnsl" -type "stringArray" 3 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[407:410]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[380:404]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[341:355]"  ;
createNode Unfold3DOptimize -n "Unfold3DOptimize3";
	setAttr ".uvl" -type "Int32Array" 44 267 268 269 270 271 272
		 273 274 275 276 277 278 279 280 281 306 307 308
		 309 310 311 312 313 314 315 316 317 318 319 320
		 321 322 323 324 325 326 327 328 329 330 333 334
		 335 336 ;
	setAttr ".bi" no;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 38 76 4 1 3 1 4
		 1 3 3 4 1 3 1 4 2 3 1 4
		 1 3 3 4 1 3 1 4 1 3 1 4
		 1 3 3 4 1 3 201 4 ;
	setAttr ".fpve" -type "Int32Array" 1194 0 1 2 3 1 4
		 5 2 4 6 7 5 3 2 8 9 5 7
		 10 11 12 13 14 15 13 16 17 14 16 18
		 19 17 15 14 20 21 14 17 22 20 17 19
		 23 22 21 20 24 25 20 22 26 24 22 23
		 27 26 25 24 28 29 24 26 30 28 26 27
		 31 30 29 28 32 33 28 30 34 32 30 31
		 35 34 36 37 38 39 37 40 41 38 40 42
		 43 41 39 38 44 45 38 41 46 44 41 43
		 47 46 45 44 48 49 44 46 50 48 46 47
		 51 50 49 48 52 53 48 50 54 52 50 51
		 55 54 53 52 1 0 52 54 4 1 54 55
		 6 4 51 47 43 56 55 51 56 57 6 55
		 57 7 58 59 60 61 62 58 61 63 7 57
		 64 10 65 35 31 27 66 65 27 23 18 66
		 23 19 45 49 67 39 49 53 68 67 53 0
		 3 68 69 70 71 72 70 73 74 71 68 3
		 9 75 33 76 25 29 76 77 21 25 77 12
		 15 21 78 79 80 81 79 82 83 80 82 84
		 85 83 81 80 86 87 80 83 88 86 83 85
		 89 88 87 86 90 91 86 88 92 90 88 89
		 93 92 91 90 94 95 90 92 96 94 92 93
		 97 96 98 99 100 101 102 103 104 105 101 100
		 106 107 100 105 108 106 105 104 109 108 107 106
		 110 111 106 108 112 110 108 109 113 112 111 110
		 114 115 110 112 116 114 112 113 117 116 118 119
		 120 119 121 122 120 121 123 122 124 125 126 127
		 120 122 128 129 130 131 132 133 134 135 136 135
		 137 138 136 137 139 138 117 113 140 141 117 140
		 142 84 143 85 140 113 109 144 142 140 144 145
		 85 143 146 89 144 109 104 89 146 97 93 115
		 147 111 115 148 149 147 78 81 150 111 147 151
		 107 147 149 152 151 150 81 87 153 107 151 101
		 153 87 91 95 118 120 154 155 120 156 157 154
		 135 134 158 159 160 118 155 161 122 123 162 163
		 123 164 165 162 139 137 166 167 168 122 163 169
		 145 144 170 171 144 104 172 170 104 103 173 172
		 97 146 174 175 151 152 176 177 153 95 178 179
		 98 101 180 181 101 151 177 180 182 183 125 124
		 184 185 126 125 186 187 188 189 190 191 124 127
		 192 193 131 130 194 195 132 131 196 197 198 199
		 200 201 130 133 202 203 204 205 190 127 206 207
		 127 126 208 206 126 185 209 208 210 211 212 213
		 200 133 214 215 133 132 216 214 132 195 217 216
		 218 219 203 202 220 221 185 184 222 223 183 182
		 224 225 191 190 226 227 211 210 228 229 195 194
		 230 231 193 192 232 233 201 200 216 217 196 199
		 214 216 199 198 215 214 198 197 213 212 234 235
		 205 204 236 237 208 209 186 189 206 208 189 188
		 207 206 188 187 159 158 238 239 154 157 240 241
		 155 154 241 242 161 155 243 244 167 166 245 246
		 162 165 247 248 163 162 248 249 169 163 249 250
		 170 172 251 252 171 170 252 253 175 174 254 255
		 172 173 256 251 181 180 257 258 179 178 259 260
		 177 176 261 262 180 177 262 257 99 102 263 264
		 102 105 265 263 105 100 266 265 100 99 264 266
		 267 268 269 270 268 271 272 269 271 273 274 272
		 270 269 275 276 269 272 277 275 278 279 280 281
		 282 283 284 285 283 286 287 284 286 288 289 287
		 285 284 290 291 284 287 292 290 287 289 293 292
		 291 290 294 295 290 292 296 294 292 293 297 296
		 295 294 298 299 294 296 300 298 296 297 301 300
		 299 298 302 303 298 300 304 302 300 301 305 304
		 306 307 308 309 307 310 311 308 310 312 313 311
		 309 308 314 315 308 311 316 314 311 313 317 316
		 315 314 318 319 314 316 320 318 316 317 321 320
		 319 318 322 323 318 320 324 322 320 321 325 324
		 323 322 268 267 322 324 271 268 324 325 273 271
		 321 317 313 326 325 321 326 327 273 325 327 274
		 326 313 312 328 274 327 329 330 331 305 301 297
		 332 331 297 293 288 332 293 289 315 319 333 309
		 319 323 334 333 323 267 270 334 309 333 335 306
		 333 334 336 335 334 270 276 336 303 337 295 299
		 337 338 291 295 338 282 285 291 272 274 279 278
		 274 330 280 279 288 286 339 340 277 272 278 281
		 341 342 343 344 344 343 345 346 346 345 347 348
		 342 349 350 343 343 350 351 345 352 353 354 355
		 356 357 358 359 359 358 360 361 361 360 362 363
		 357 364 365 358 358 365 366 360 360 366 367 362
		 364 368 369 365 365 369 370 366 366 370 371 367
		 368 372 373 369 369 373 374 370 370 374 375 371
		 372 376 377 373 373 377 378 374 374 378 379 375
		 380 381 382 383 383 382 384 385 385 384 386 387
		 381 388 389 382 382 389 390 384 384 390 391 386
		 388 392 393 389 389 393 394 390 390 394 395 391
		 392 396 397 393 393 397 398 394 394 398 399 395
		 396 341 344 397 397 344 346 398 398 346 348 399
		 395 400 386 391 399 401 400 395 348 347 401 399
		 400 402 387 386 347 403 404 401 405 371 375 379
		 406 367 371 405 363 362 367 406 388 381 407 392
		 392 407 408 396 396 408 342 341 381 380 409 407
		 407 409 410 408 408 410 349 342 376 372 368 411
		 411 368 364 412 412 364 357 356 345 352 355 347
		 347 355 354 403 363 413 414 361 351 353 352 345
		 56 43 59 58 43 415 60 59 35 65 416 417
		 57 56 58 62 65 66 418 416 419 57 62 63
		 39 67 70 69 76 33 420 421 422 39 69 72
		 67 68 73 70 68 423 74 73 77 76 421 424
		 425 79 426 427 79 82 428 426 82 429 430 428
		 115 114 431 432 114 116 433 431 116 117 434 433 ;
	setAttr ".mue" -type "floatArray" 435 0.83873314 0.79380447 0.79022908 0.857171
		 0.74963522 0.75222051 0.7049675 0.6862396 0.81557447 0.87885952 0.66432852 0.72670943
		 0.72683001 0.80647409 0.80732352 0.74973369 0.85379183 0.85122299 0.93193108 0.90875787
		 0.803554 0.75453603 0.85426253 0.90349585 0.80178916 0.75685042 0.85624141 0.90132719
		 0.80919021 0.76761627 0.84944415 0.89075714 0.8022278 0.7468403 0.85761809 0.91195095
		 0.84699726 0.79660958 0.79394406 0.84615862 0.74719381 0.75023973 0.69693375 0.6990785
		 0.78930247 0.8259331 0.75523645 0.71855479 0.79594231 0.83595842 0.74856836 0.70850021
		 0.79632723 0.83861846 0.74801755 0.70554006 0.67171639 0.66764992 0.62056667 0.64533079
		 0.60721695 0.58390433 0.62326461 0.58995163 0.6433031 0.94169664 0.94356972 0.87187141
		 0.8767885 0.90702444 0.92946774 0.96696007 0.94625914 0.93395746 0.97728091 0.90016311
		 0.71660542 0.71467519 0.35544819 0.42073905 0.40455964 0.36422676 0.47738287 0.48491248
		 0.53932041 0.5246616 0.40288189 0.36791813 0.4862732 0.52093667 0.42982194 0.39303342
		 0.45869419 0.49573934 0.40820271 0.35579967 0.48024702 0.53327501 0.39385042 0.3373377
		 0.33171901 0.39046922 0.255959 0.19874983 0.20222723 0.26096839 0.3281846 0.38292888
		 0.26529527 0.210669 0.33183932 0.39624733 0.26176751 0.19738936 0.32449791 0.39693609
		 0.26831591 0.1962088 0.3032099 0.24624595 0.25697809 0.20626169 0.19339819 0.15489629
		 0.66012788 0.60282654 0.59652287 0.65254587 0.20379606 0.25160214 0.4949255 0.4408083
		 0.44665828 0.50068772 0.73579121 0.80404502 0.80213952 0.85606903 0.85795236 0.92430395
		 0.16099754 0.10554373 0.10821683 0.57323897 0.15659557 0.097690165 0.56386203 0.43269378
		 0.4877575 0.48723173 0.31579 0.43715721 0.49624041 0.32498449 0.30603278 0.32659519
		 0.28443524 0.32588768 0.73671609 0.78565079 0.37340373 0.37240332 0.12373638 0.14336467
		 0.099641472 0.081246868 0.87419438 0.92370224 0.17425311 0.1309007 0.10355985 0.072114885
		 0.13164057 0.13736202 0.61249489 0.5904038 0.51821166 0.48534849 0.30276614 0.28086314
		 0.45534325 0.44937873 0.66361225 0.60757649 0.5744015 0.55784231 0.5740757 0.63278568
		 0.62960905 0.58992738 0.68940538 0.6886847 0.49151945 0.43852702 0.41245794 0.40670034
		 0.46126792 0.52878398 0.50941497 0.47011417 0.54840761 0.52539086 0.91134876 0.97154921
		 0.97440892 0.91987026 0.64344513 0.67033857 0.59094763 0.56290364 0.79145354 0.72896576
		 0.72764176 0.78414392 0.50703084 0.53820837 0.45736966 0.4335449 0.91866845 0.94494385
		 0.54599833 0.53261781 0.65301448 0.62849456 0.72186738 0.72767901 0.77280307 0.74540532
		 0.3728407 0.37356189 0.47288239 0.44952789 0.57551974 0.56490701 0.72592843 0.77468479
		 0.97823083 0.93125916 0.74258018 0.77135438 0.36125296 0.34416425 0.35688332 0.35688332
		 0.3774564 0.88896143 0.91782337 0.07498461 0.097745463 0.10075903 0.089415014 0.027818743
		 0.020458026 0.0020000001 0.70240974 0.69397014 0.03425613 0.5620634 0.5554595 0.17913242
		 0.17755757 0.58884192 0.56993616 0.27284032 0.3205272 0.27900404 0.31400508 0.065733284
		 0.078238644 0.087478496 0.070359692 0.082595691 0.093837932 0.072215714 0.077171609
		 0.097201943 0.078645639 0.10339593 0.11655809 0.10761678 0.11542667 0.1246812 0.2958627
		 0.32482409 0.31799993 0.29553869 0.34347415 0.33300048 0.35224181 0.33970258 0.30415034
		 0.27870139 0.32463774 0.32962289 0.27911493 0.26808518 0.2995244 0.31893301 0.27073699
		 0.26399863 0.28548759 0.30801827 0.2611005 0.25251472 0.28024036 0.308952 0.013226322
		 0.0019249428 0.012617468 0.022939473 0.0043958738 0.014996053 0.017068535 0.02779403
		 0.022823505 0.029713266 0.024823293 0.034384087 0.035513386 0.04123234 0.038556408
		 0.04683293 0.064840406 0.052348603 0.068827078 0.059502315 0.040231597 0.063839696
		 0.020199185 0.073683619 0.081588596 0.32192671 0.34324867 0.039104231 0.052223653
		 0.034368973 0.054756522 0.25898463 0.27302426 0.36485589 0.37742859 0.18144625 0.176875
		 0.15954623 0.16877286 0.15292919 0.16419944 0.16962123 0.1746015 0.16862588 0.14984001
		 0.14340831 0.13012101 0.12201729 0.13118513 0.13906235 0.68495339 0.68572611 0.66394579
		 0.65687352 0.64979869 0.63931912 0.64404315 0.63174373 0.70241451 0.67786139 0.65854716
		 0.65437609 0.71325511 0.7034499 0.68415338 0.66527325 0.71793878 0.71220511 0.69826901
		 0.67637688 0.72922242 0.72193271 0.70382494 0.6759268 0.23401104 0.22424641 0.23437336
		 0.24509396 0.23206988 0.24270388 0.21940883 0.23024784 0.21739277 0.2241344 0.22222947
		 0.21270269 0.20599261 0.21139027 0.20850223 0.20017041 0.19490023 0.1822381 0.1779245
		 0.18742712 0.20685454 0.18332547 0.22717106 0.16512716 0.17312683 0.66246533 0.64073056
		 0.20819435 0.19508368 0.21299861 0.19259164 0.72194844 0.70762163 0.60560244 0.61740327
		 0.65228248 0.97782153 0.95106244 0.97058469 0.62310398 0.70757604 0.68055958 0.85718918
		 0.90056431 0.68765962 0.35544819 0.42002323 0.36897993 0.47729608 0.5412569 0.52071798
		 0.32871026 0.38327998 0.26326603 0.20912457 ;
	setAttr ".mve" -type "floatArray" 435 0.26202479 0.24304435 0.20327711 0.24442074
		 0.243884 0.20533952 0.26329935 0.24608812 0.1768184 0.22291687 0.22484532 0.1789145
		 0.57748795 0.52804005 0.58673435 0.5957213 0.5311352 0.58630383 0.57875818 0.59670484
		 0.6293205 0.63555527 0.62961167 0.63593906 0.68682837 0.68226647 0.68682146 0.68207824
		 0.7356559 0.71518838 0.73517936 0.71456265 0.76609159 0.73490191 0.76413137 0.73397619
		 0.42724466 0.44116622 0.41076225 0.38638622 0.4415535 0.40997544 0.42698678 0.38652179
		 0.3844499 0.3693721 0.38437915 0.36944467 0.34170663 0.3385267 0.34196177 0.33895692
		 0.29861951 0.29612997 0.29874927 0.29696724 0.34016776 0.28505373 0.35460934 0.37506691
		 0.39055911 0.36057872 0.32230896 0.32195181 0.25020665 0.68553358 0.6208272 0.34047762
		 0.28224626 0.38413849 0.35870591 0.36351579 0.4146314 0.32222188 0.30414352 0.24836545
		 0.68587172 0.62028414 0.43831274 0.42676875 0.47753817 0.48929483 0.42911118 0.47244269
		 0.43682945 0.48688191 0.54833525 0.55546701 0.54733884 0.55408484 0.61723453 0.60318768
		 0.61687821 0.60272491 0.65075576 0.6420666 0.6508193 0.64128733 0.361797 0.38127962
		 0.30399895 0.29290715 0.38197452 0.36277848 0.29360494 0.30437392 0.2214102 0.21431835
		 0.22120152 0.21486227 0.14735563 0.14691757 0.14770521 0.14748494 0.065054871 0.072960548
		 0.065252177 0.073565423 0.78342092 0.78444374 0.70942575 0.7854268 0.70833057 0.78330505
		 0.78003639 0.78917867 0.74685138 0.73822659 0.64831704 0.64695042 0.89804173 0.89144206
		 0.85012639 0.85736144 0.85752434 0.81687617 0.86486405 0.81688809 0.86487716 0.85756809
		 0.1298046 0.045362357 0.11634251 0.49313194 0.21478315 0.18506461 0.56870413 0.12930778
		 0.04257546 0.1136495 0.49296448 0.21354894 0.18812458 0.56979287 0.70705831 0.75519061
		 0.65033489 0.66096771 0.79154831 0.78134543 0.83372575 0.77506071 0.75293088 0.70656258
		 0.82617873 0.780873 0.78139156 0.79164761 0.64648592 0.65684646 0.255263 0.22818282
		 0.30712286 0.35162371 0.59313798 0.64003456 0.22786711 0.25386515 0.6418981 0.59306282
		 0.30632061 0.35175133 0.80525565 0.8140381 0.79261494 0.75024104 0.65445912 0.64245725
		 0.67635751 0.68408138 0.72355008 0.77309287 0.92210531 0.91564792 0.88328099 0.82746649
		 0.75958955 0.76851928 0.79351878 0.78566247 0.85223699 0.89680213 0.94659305 0.96445119
		 0.92193323 0.90575469 0.70739514 0.68839467 0.71706361 0.71420515 0.96362054 0.9604066
		 0.91808844 0.92099452 0.82676673 0.82091421 0.81698632 0.79593325 0.98546153 0.99325603
		 0.80084944 0.77158743 0.836146 0.83740312 0.74130744 0.7634626 0.99800003 0.99659079
		 0.87340552 0.83807135 0.94372213 0.94315952 0.87337726 0.89672899 0.86332601 0.8658337
		 0.86510801 0.85117412 0.75455987 0.75372988 0.67251617 0.69791281 0.72892118 0.72892118
		 0.73938805 0.7524718 0.75289124 0.75564468 0.73089135 0.70041662 0.6719479 0.34930369
		 0.32836676 0.31117997 0.59553778 0.63617402 0.37381449 0.35125586 0.37570459 0.64451933
		 0.60285622 0.31383452 0.33066842 0.36515364 0.36453924 0.32088047 0.32145166 0.93065435
		 0.90520751 0.90940559 0.94076127 0.8770209 0.87366337 0.84785241 0.83615416 0.91326028
		 0.94771403 0.87972242 0.86012352 0.84388477 0.83501053 0.86318982 0.82364535 0.84795821
		 0.85529673 0.83634168 0.87909067 0.87952697 0.91439146 0.90757686 0.85763103 0.83235049
		 0.89087248 0.91485721 0.87303871 0.83883536 0.90619558 0.92148781 0.88429272 0.85564256
		 0.9085297 0.92731893 0.88705295 0.85011768 0.91764694 0.94173956 0.94140911 0.90402317
		 0.90289682 0.93643785 0.86823946 0.8696323 0.83432519 0.83822656 0.90086186 0.92757022
		 0.87412244 0.84788895 0.90632433 0.93768656 0.86893743 0.84749812 0.9084177 0.93848956
		 0.87034005 0.84776324 0.83261299 0.83362585 0.82209027 0.8173973 0.82515997 0.93817371
		 0.92458791 0.94786686 0.94935971 0.95845115 0.95979494 0.82749259 0.81922579 0.86272621
		 0.88575351 1.0610137 1.071157 1.0397793 1.0355221 1.0038321 1.0071455 0.96607536
		 0.97783136 1.0781753 1.0437305 1.0100019 0.9902932 0.99347961 0.96510845 0.97397202
		 0.81478578 0.82746595 0.84719402 0.84009117 0.87188447 0.87180078 0.90015918 0.90739214
		 0.8228724 0.84906691 0.88292694 0.90708929 0.82897216 0.86352819 0.89743894 0.91335303
		 0.84562242 0.87450308 0.89927948 0.91883075 0.8396939 0.87693024 0.90821326 0.93326879
		 1.0714529 1.0665251 1.0330055 1.0341341 0.99985212 0.99850672 0.96836013 0.96462226
		 1.0576608 1.0309577 1.0043255 0.97805029 1.0678891 1.0363386 0.99919736 0.97767639
		 1.0687829 1.0387772 1.0003338 0.97787344 0.96213281 0.96302378 0.95214266 0.95507276
		 0.94720066 0.93075848 0.91790456 1.0780908 1.0796684 1.0886736 1.0901314 0.81731135
		 0.80955034 0.87959301 0.85615438 0.40282115 0.69255304 0.72724479 0.64662784 0.28569984
		 0.72791642 0.69303519 0.4132508 0.26370317 0.64667088 0.43831274 0.36133528 0.39340484
		 0.36215013 0.43985528 0.38239697 0.0020000001 0.030726712 0.0020698393 0.031427193 ;
	setAttr ".mnsl" -type "stringArray" 3 "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[333:336]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[306:330]" "|_UNKNOWN_REF_NODE_fosterParent1|pCube6|pCube6Shape.map[267:281]"  ;
createNode polyTweakUV -n "polyTweakUV34";
	setAttr ".uopa" yes;
	setAttr -s 435 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.39703315 0.22032736 -0.36732611
		 0.27533895 -0.39564255 0.31797349 -0.42958885 0.22314495 -0.32248348 0.30992135 -0.35598001
		 0.34639251 -0.26224533 0.32632783 -0.25732028 0.35855815 -0.44220683 0.3241061 -0.46852261
		 0.22725542 -0.25244507 0.39737281 -0.35166079 0.39327648 -0.46431142 0.19911769 -0.58361089
		 0.18469396 -0.53738964 0.12531851 -0.47259265 0.16251644 -0.6284464 0.14365181 -0.5816344
		 0.090543255 -0.66839385 0.03336405 -0.63082802 0.034001481 -0.49946767 0.085755326
		 -0.44544965 0.11883117 -0.54994267 0.044797864 -0.59410173 -0.0010128575 -0.45158365
		 0.029662782 -0.41030338 0.070263922 -0.50604147 -0.013998919 -0.5549311 -0.045412809
		 -0.41982689 -0.02510006 -0.39466712 0.028708143 -0.46046299 -0.056905724 -0.51830977
		 -0.06942042 -0.38845617 -0.04995219 -0.35808158 0.02565618 -0.44541851 -0.092412874
		 -0.52393466 -0.10583066 -0.27279711 0.048479967 -0.21124499 0.074967436 -0.23296224
		 0.10750905 -0.30472547 0.090010971 -0.16151854 0.11420977 -0.18988888 0.14334513
		 -0.1229405 0.16908319 -0.15753666 0.20782815 -0.24942216 0.1375438 -0.29814467 0.12324521
		 -0.21541283 0.1649342 -0.19070813 0.20928602 -0.29034045 0.17496216 -0.33290681 0.14605068
		 -0.24276192 0.21269916 -0.20510359 0.24783713 -0.32527965 0.21774058 -0.36956739
		 0.18631417 -0.27686593 0.25635341 -0.2358176 0.29220077 -0.16734867 0.27612552 -0.20748156
		 0.33450073 -0.10461739 0.3027041 -0.11297528 0.26238665 -0.062437274 0.27746031 -0.063167803
		 0.32613659 -0.133219 0.33284089 -0.10019247 0.35991377 -0.21108083 0.38887304 -0.59252948
		 -0.081242919 -0.64629471 -0.018038709 -0.36725521 0.11529888 -0.41887164 0.16958693
		 -0.36739385 0.04344663 -0.41023311 0.050880503 -0.44386816 0.016003173 -0.38217437
		 -0.018511046 -0.44398165 0.083763957 -0.50180334 0.067098513 -0.46941742 0.18472219
		 -0.36716709 0.098933645 -0.41783571 0.16606915 0.12069906 -0.1579771 0.046150368
		 -0.19879395 0.10304495 -0.23658812 0.15280624 -0.21599928 -0.0086148772 -0.24656259
		 0.018605722 -0.29593256 -0.064362705 -0.30395243 -0.0095636714 -0.3422491 0.16149932
		 -0.30603972 0.2021824 -0.28513181 0.077308871 -0.37191996 0.048055481 -0.40646479
		 0.18981387 -0.39654383 0.21533731 -0.35299399 0.16065587 -0.41934201 0.11226027 -0.43489751
		 0.23831584 -0.4127273 0.2837505 -0.36201286 0.16632248 -0.47056764 0.1056502 -0.50356215
		 -0.0016749933 -0.20352025 0.070462033 -0.17768179 0.014104516 -0.095895126 -0.053540878
		 -0.13191879 0.15239801 -0.11311403 0.19421269 -0.048038401 0.1352607 0.018346403
		 0.08515586 -0.039530773 -0.048594136 -0.010471924 -0.10902581 -0.047282923 0.014127846
		 0.040171634 0.063670278 0.090319112 -0.1116378 0.060651697 -0.17639711 0.0094369622
		 -0.041285634 0.11649706 0.022915859 0.1683462 -0.1702985 0.14884001 -0.23639661 0.08284162
		 -0.11395828 0.19369853 -0.03518426 0.24321248 -0.089761384 -0.32163268 -0.031977177
		 -0.27697256 -0.10287096 -0.21056135 0.008795457 -0.24588977 -0.040169299 -0.15847753
		 0.058459278 -0.20257489 0.22622564 -0.078816295 0.29085883 -0.042005051 0.26321754
		 0.0053775371 0.20027781 -0.03092601 -0.098695755 -0.10680265 -0.14759783 -0.14377475
		 0.16148213 -0.2175291 0.21030672 -0.16752948 0.17132303 -0.13090524 0.12309585 -0.18146989
		 -0.52054673 -0.027395304 -0.62139881 -0.041484177 -0.58100885 -0.087943912 -0.67341328
		 -0.083217397 -0.63681114 -0.13271682 -0.70902437 -0.17861922 0.045128707 0.21521144
		 0.032863013 0.34412548 0.087113328 0.27100164 -0.053128768 -0.38745633 0.11768024
		 0.13376306 0.15275253 0.21072154 0.016854191 -0.45550856 -0.22696593 -0.002181934
		 -0.35158575 0.040391341 -0.29406124 -0.030261053 0.20418587 -0.18082447 -0.16387118
		 -0.090002611 -0.24334374 -0.11196075 0.25660485 -0.26502651 -0.15382421 -0.24753392
		 -0.13578629 -0.3121565 -0.17771672 -0.17349009 -0.21064202 -0.21736617 -0.57438189
		 0.037838954 -0.63149887 0.0087980591 -0.11961261 -0.42823035 -0.16565937 -0.36876303
		 0.065260246 -0.14721172 0.0084463852 -0.1165845 0.1480972 -0.20113629 0.13015826
		 -0.1410788 -0.72000545 -0.06225672 -0.7612884 -0.11221621 -0.070621327 -0.081279233
		 -0.018960118 -0.056872725 0.20317931 0.13581587 0.21290697 0.18811373 0.21668825
		 0.061436355 0.24665478 0.012347115 -0.012183635 -0.51894414 0.047516745 -0.54812443
		 -0.23344301 -0.16932341 -0.17973036 -0.16896643 0.33664891 -0.31931344 0.31938788
		 -0.25291273 -0.10765783 -0.19735879 -0.065259583 -0.23800619 0.24296628 -0.10682989
		 0.30604517 -0.070673771 0.32203957 -0.022645514 0.30461645 0.033008236 0.21156962
		 0.11577158 0.14323454 0.080690272 0.17359795 0.04933754 0.21947394 0.073436879 0.15164834
		 -0.045809451 0.19210045 -0.094774276 0.18418629 -0.23886117 0.23200007 -0.18990581
		 0.23211209 -0.13663249 0.19310859 -0.076200627 0.084106244 -0.052084841 0.023751488
		 -0.11515988 0.063169219 -0.12462617 0.096169464 -0.085252099 0.071266331 -0.21461502
		 0.13002262 -0.24072158 -0.085600838 -0.090701647 -0.19407974 -0.09423814 -0.19923289
		 -0.08581803 -0.1009563 -0.082614079 0.18465289 0.0072038863 0.14252175 0.0046368348
		 0.24490412 0.039636437 0.27065572 0.064985134 -0.51408708 -0.1036147 -0.50171214
		 -0.10297821 -0.50145 -0.094597675 -0.51263952 -0.095173195 0.092216864 -0.15596214
		 0.056345802 -0.17511283 0.13403462 -0.10635535 0.14097555 -0.066195667 -0.098790586
		 -0.098399118 -0.14613788 -0.09994258 0.35704651 -0.0081017381 0.34696004 0.031890944
		 0.27833688 -0.12922123 0.30386502 -0.1108143 0.13342704 -0.089600109 0.14538297 -0.11641598
		 -0.51039356 -0.11042313 -0.50496787 -0.11014409 0.26380956 -0.094985478 0.23475173
		 -0.060229644 0.22015919 -0.24553175 0.24306244 -0.22623968 0.061107852 -0.2574982
		 0.090447858 -0.2723389 -0.50111061 -0.083752662 -0.51076621 -0.08424928 -0.20611987
		 -0.074564517 -0.12147867 -0.071805067 -0.6099093 0.070124626 -0.63934916 0.047878787
		 -0.23674588 -0.2572763 -0.19928999 -0.2689684 -0.18714154 -0.31017697 -0.18714154
		 -0.31017697 -0.19932057 -0.33714277 -0.75796509 -0.045179583 -0.78649068 -0.068745218
		 0.11618838 -0.1108284 0.073576331 -0.10432845 0.046123154 -0.076270454;
	setAttr ".uvtk[250:434]" 0.034636326 -0.038704254 0.35433751 0.10251673 0.34490755
		 0.12935671 0.34958249 0.16134614 -0.10017395 -0.59345227 -0.059145559 -0.62732029
		 0.36755687 0.072843395 -0.17834157 -0.32787961 -0.15213075 -0.34703225 0.46238473
		 -0.22278504 0.43054742 -0.17985898 -0.23513061 -0.31193358 -0.2027247 -0.31360584
		 0.12202699 -0.10983134 0.073847391 -0.14746 0.080357835 -0.070501238 0.045814864
		 -0.099141948 0.88460034 -0.066200666 0.88212383 -0.061161283 0.88029408 -0.061992709
		 0.88368428 -0.068202265 0.88126093 -0.055579323 0.87903464 -0.054914407 0.88331676
		 -0.04980287 0.88233519 -0.047486179 0.8783685 -0.062756032 0.88204336 -0.069579266
		 0.87714183 -0.056114282 0.87453514 -0.052233011 0.87630594 -0.049017128 0.87475926
		 -0.047259696 0.87292647 -0.052840251 0.061503217 0.033037223 0.05203978 -0.014501597
		 0.064749181 -0.016367424 0.072009206 0.020600744 0.058356784 -0.060590699 0.069180392
		 -0.052627515 0.077899054 -0.10292283 0.084973216 -0.086052254 0.080470756 -0.0075947996
		 0.085645676 0.03809467 0.086641796 -0.057266448 0.1008915 -0.085249037 0.11786258
		 -0.0029251415 0.10146253 0.040123686 0.1240437 -0.052449591 0.11689883 -0.083306767
		 0.13526586 -0.0074603325 0.11902782 0.026593735 0.13995235 -0.043526687 0.13248996
		 -0.080384627 0.14711592 -0.0024924371 0.126081 0.041328382 0.1525113 -0.048435848
		 0.143121 -0.095554098 0.89499891 -0.068330556 0.89723682 -0.060926791 0.89511937
		 -0.060703687 0.89307517 -0.067346066 0.89674753 -0.053840268 0.89464837 -0.054116108
		 0.89423788 -0.047123972 0.89211375 -0.047896594 0.89309818 -0.060300734 0.89173377
		 -0.065589987 0.89270216 -0.055005323 0.8908087 -0.049810104 0.89058512 -0.061382506
		 0.88945252 -0.067593455 0.88998246 -0.053978499 0.88834339 -0.049732711 0.88477719
		 -0.061797075 0.88725102 -0.067752339 0.88398772 -0.054256268 0.88583446 -0.049785212
		 0.8896507 -0.046784896 0.88497543 -0.046985477 0.89361793 -0.044700999 0.88302588
		 -0.043771617 0.88146037 -0.045308914 0.12728663 -0.10239351 0.095069356 -0.1059071
		 0.88987404 -0.069609433 0.88727582 -0.069905125 0.89081174 -0.071705669 0.8867743
		 -0.071971744 0.1014666 0.058764707 0.080797315 0.05577229 0.023851376 -0.061373595
		 0.02974572 -0.094483733 0.42527011 -0.19043633 0.42617539 -0.19244508 0.42960715
		 -0.18623124 0.42777982 -0.18538804 0.43091747 -0.17911229 0.42868564 -0.17976844
		 0.42761183 -0.17163502 0.42662561 -0.17396317 0.42780903 -0.19383512 0.43152934 -0.18701372
		 0.43280312 -0.18033414 0.43543443 -0.17643107 0.43703929 -0.17706211 0.43522373 -0.17144355
		 0.43366373 -0.17319886 0.049153451 0.01189552 0.04900042 0.009384363 0.053313754
		 0.0054774638 0.054714315 0.0068840892 0.056115415 0.00058793515 0.058190744 0.00060440262
		 0.057255194 -0.005011572 0.059690952 -0.0064440244 0.045695469 0.01029407 0.050557904
		 0.0051065609 0.054382857 -0.0015989956 0.055208951 -0.0063840547 0.04354864 0.0090860827
		 0.045490451 0.0022426916 0.049311873 -0.0044729635 0.053050846 -0.0076245507 0.042621113
		 0.0057887472 0.043756574 6.9342932e-005 0.046516433 -0.0048374599 0.05085193 -0.0087092984
		 0.040386546 0.0069627715 0.041830182 -0.00041137211 0.045416176 -0.0066066319 0.050941031
		 -0.011568527 0.41486031 -0.19250374 0.41679406 -0.19152787 0.41478857 -0.1848897
		 0.41266549 -0.18511327 0.41524473 -0.17832412 0.41313878 -0.17805767 0.41775209 -0.17208751
		 0.41560549 -0.17134726 0.41815138 -0.1897724 0.41681626 -0.18448418 0.41719347 -0.17921001
		 0.41908017 -0.17400654 0.42040899 -0.19179788 0.41934004 -0.18554972 0.41991198 -0.17819443
		 0.42156205 -0.17393248 0.42260572 -0.19197504 0.42511329 -0.1860327 0.42596754 -0.1784195
		 0.42408562 -0.17397149 0.42023835 -0.17085427 0.42489794 -0.17103072 0.41621479 -0.16887584
		 0.42850184 -0.16945611 0.42691761 -0.16789714 0.053606968 -0.011071431 0.057911199
		 -0.0085258754 0.41997296 -0.19381839 0.42256939 -0.19413072 0.41902155 -0.19591418
		 0.42306292 -0.19620274 0.041826997 0.011395352 0.04466426 0.012932324 0.064867884
		 -0.00093870482 0.062530883 0.0037029302 -0.097669162 0.22905745 -0.62302506 -0.11723322
		 -0.56844449 -0.13046521 -0.65261853 -0.065504298 -0.16241746 0.36957884 -0.32441947
		 0.06413012 -0.32537645 0.12067755 -0.29421157 0.054300312 -0.45751837 0.1690627 -0.36965892
		 0.16134788 0.12069906 -0.1579771 -0.005608975 -0.13278644 0.071152866 -0.12392116
		 -0.062228341 -0.17953195 -0.063872576 -0.30853128 -0.089413032 -0.23460148 -0.22507849
		 0.20851672 -0.25661048 0.13602714 -0.15957825 0.26093072 -0.081893295 0.27499273;
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:21]";
	setAttr ".ix" -type "matrix" 0.33542763367804213 0 0 0 0 0.65232691752444272 0 0
		 0 0 0.65232691752444272 0 -0.022405175724317772 2.6120583798008763 0.70372531866017152 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.022715330123901367 2.7832029461860657 0.70372527837753296 ;
	setAttr ".ps" -type "double2" 2.2117195129394531 1.8359149694442749 ;
	setAttr ".is" -type "double2" 0.088295713834610212 0.088295685554930947 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[6:7]" "e[10:11]" "e[14]" "e[18]" "e[24]" "e[27]" "e[30]" "e[38]";
	setAttr ".ix" -type "matrix" 0.33542763367804213 0 0 0 0 0.65232691752444272 0 0
		 0 0 0.65232691752444272 0 -0.022405175724317772 2.6120583798008763 0.70372531866017152 1;
	setAttr ".wt" 0.55437761545181274;
	setAttr ".dr" no;
	setAttr ".re" 24;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMapCut -n "polyMapCut20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[46]" "e[48]" "e[50]" "e[52]" "e[54]" "e[56]" "e[58]" "e[60]" "e[62:63]";
createNode polyTweakUV -n "polyTweakUV35";
	setAttr ".uopa" yes;
	setAttr -s 22 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[1]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[2]" -type "float2" -0.27125087 0.14410202 ;
	setAttr ".uvtk[3]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[4]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[5]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[12]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[15]" -type "float2" -0.27125087 0.14410202 ;
	setAttr ".uvtk[16]" -type "float2" -0.27125087 0.14410199 ;
	setAttr ".uvtk[20]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[21]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[23]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[24]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[34]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[36]" -type "float2" -0.27125087 0.14410199 ;
	setAttr ".uvtk[37]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[38]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[39]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[40]" -type "float2" -0.27125087 0.14410199 ;
	setAttr ".uvtk[41]" -type "float2" -0.27125087 0.14410199 ;
	setAttr ".uvtk[42]" -type "float2" -0.27125087 0.14410205 ;
	setAttr ".uvtk[43]" -type "float2" -0.27125087 0.14410205 ;
createNode Unfold3DUnfold -n "Unfold3DUnfold17";
	setAttr ".uvl" -type "Int32Array" 44 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 14 15 16 17
		 18 19 20 21 22 23 24 25 26 27 28 29
		 30 31 32 33 34 35 36 37 38 39 40 41
		 42 43 ;
	setAttr ".usn" -type "string" "map1";
	setAttr ".mdp" -type "string" "|pCube7|pCubeShape5";
	setAttr ".miee" yes;
	setAttr ".uvce" -type "Int32Array" 2 32 4 ;
	setAttr ".fpve" -type "Int32Array" 128 0 1 2 3 4 5
		 6 7 8 9 10 11 12 13 1 0 14 15
		 16 17 12 0 3 18 18 3 19 20 21 22
		 9 8 17 16 23 24 3 2 25 19 19 25
		 5 4 24 23 26 27 22 21 28 29 20 19
		 4 7 5 27 26 6 30 22 29 31 9 22
		 30 32 10 9 32 33 1 13 15 14 2 1
		 14 17 25 2 17 24 5 25 24 27 34 35
		 31 29 36 34 29 28 21 37 36 28 8 38
		 37 21 11 39 38 8 11 10 40 39 41 40
		 10 33 42 41 33 32 43 42 32 30 35 43
		 30 31 ;
	setAttr ".mue" -type "floatArray" 44 0.28556865 0.37886113 0.37984982 0.16239618
		 0.13037196 0.38004106 0.38153377 0.048193786 0.82698601 0.59860963 0.60038358 0.69739485
		 0.26736328 0.37909287 0.46945038 0.48750493 0.64753574 0.59153879 0.10670727 0.08850614
		 0.0020000001 0.90995443 0.59707564 0.75159991 0.66422218 0.38101387 0.70704901 0.62334216
		 0.86694849 0.59827328 0.29329008 0.33757275 0.3767668 0.50630647 0.59796494 0.26852879
		 0.93485636 0.98403984 0.87265044 0.71204102 0.60031325 0.49144182 0.33117342 0.21862093 ;
	setAttr ".mve" -type "floatArray" 44 0.072849482 0.06703724 0.14669907 0.15999125
		 0.35724235 0.37271842 0.5366534 0.42356744 0.63844001 0.62735647 0.5439176 0.54990125
		 0.017593229 0.0020000001 0.07301379 0.017703593 0.10175972 0.15987267 0.1024681 0.28573135
		 0.28028524 0.76784521 0.75711173 0.2784543 0.2854149 0.2710509 0.42290342 0.35692862
		 0.8437984 0.86221242 0.76752889 0.84363949 0.63778549 0.54947323 0.99800003 0.90456575
		 0.90464652 0.75929636 0.5876258 0.50283462 0.48962101 0.50241482 0.58647072 0.7584731 ;
	setAttr ".mnsl" -type "stringArray" 1 "|pCube7|pCubeShape5.map[0:43]"  ;
createNode polyTweakUV -n "polyTweakUV36";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk[0:43]" -type "float2" 0.19956684 0.71763116 0.10528317
		 0.70753342 0.11787988 0.62770295 0.33760038 0.6514951 0.40875557 0.46266305 0.16459465
		 0.40171695 0.17995971 0.23821533 0.50374466 0.40646964 -0.11142395 0.078942575 0.11506227
		 0.12897326 0.098766997 0.21214601 0.0030035446 0.18955411 0.20834884 0.77599216 0.093960047
		 0.77253115 0.015713129 0.68610787 -0.011773976 0.73833913 -0.15746993 0.62699139
		 -0.091562405 0.57842809 0.38347939 0.71851546 0.43293411 0.53835618 0.51851141 0.55855501
		 -0.17232375 -0.064611971 0.13872458 -0.00052041333 -0.23140074 0.4325498 -0.14283597
		 0.44049051 0.13792276 0.50315261 -0.15661834 0.29681802 -0.084367432 0.37511888 -0.11305639
		 -0.13455437 0.1607811 -0.10582538 0.44428667 0.040869724 0.41664723 -0.042182215
		 0.33868366 0.15637709 0.19335587 0.22312675 0.17491522 -0.24222726 0.4959951 -0.093245067
		 -0.17019933 -0.20454928 -0.24786711 -0.068697594 -0.16575421 0.12196921 -0.024760645
		 0.23146528 0.083839469 0.26653397 0.19558449 0.27556953 0.37552583 0.21546729 0.51741147
		 0.062659547;
createNode polyPlanarProj -n "polyPlanarProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 0.33564627323056312 -0.28404469226236251 0 0 2.0790549224011385e-016 2.7720732298681845e-016 -0.62421539825390415 0
		 0.40323712963553299 0.47649205733209921 2.7720732298681845e-016 0 0.61348457935000611 3.4258543102631247 0.85695952355922145 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.030824780464172363 6.4533511400222778 1.2487227916717529 ;
	setAttr ".ps" -type "double2" 6.5620481967926025 6.83854079246521 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 0.70441105589432507 0 -0 0 -0 2.2204460492503131e-016 -1 0
		 0 1 2.2204460492503131e-016 0 0.027836926801052545 3.6253714229125684 0.81635932975797809 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.030824899673461914 6.4533510208129883 1.2487227916717529 ;
	setAttr ".ps" -type "double2" 6.5620479583740234 6.8385410308837891 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyPlanarProj -n "polyPlanarProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:5]";
	setAttr ".ix" -type "matrix" 0.35565335460464376 0.25855463502797538 2.4408487885847988e-017 0
		 -1.7325457686676153e-016 2.0790549224011385e-016 -0.62421539825390415 0 -0.36705079067748697 0.50489462314458433 2.7720732298681845e-016 0
		 -0.78602696046880971 3.425854310263122 0.85695952355921823 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -0.030824899673461914 6.4533510208129883 1.2487227022647858 ;
	setAttr ".ic" -type "double2" 0.25135337650034828 0.42371069269622874 ;
	setAttr ".ps" -type "double2" 6.5620479583740234 6.8385410308837891 ;
	setAttr ".is" -type "double2" 0.28024583218408572 0.28495237969529069 ;
	setAttr ".ra" -36.192015897407842;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV37";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" 0.52442724 0.37844029 0.52482784
		 0.44075939 0.37409607 0.44075939 0.37417024 0.37844029 0.34570658 0.21553853 0.56679517
		 0.23157643 0.31973964 0.061578311 0.60106939 0.064944729 0.35555625 -0.073994808
		 0.56460768 -0.073994823 0.39471906 -0.18662062 0.52504158 -0.18980275 0.41727617
		 -0.28876859 0.50352412 -0.29255909;
createNode polyTweakUV -n "polyTweakUV38";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.13643472 0.56036729 -0.1023347
		 0.58637905 -0.16676991 0.66310638 -0.2006671 0.63685316 -0.3015247 0.58281481 -0.19828138
		 0.47702011 -0.39644685 0.53126693 -0.27435023 0.3894771 -0.45494711 0.45600414 -0.36558098
		 0.34959009 -0.49952337 0.3886911 -0.44554526 0.32101408 -0.54549384 0.33423877 -0.51068783
		 0.28874114;
createNode polyTweakUV -n "polyTweakUV39";
	setAttr ".uopa" yes;
	setAttr -s 14 ".uvtk[0:13]" -type "float2" -0.040697064 0.36496446 -0.040707089
		 0.36897084 -0.050076831 0.36910889 -0.050037425 0.36510202 -0.051715784 0.35465404
		 -0.037981365 0.35548288 -0.053243987 0.34477875 -0.035757661 0.34473768 -0.050941765
		 0.33602908 -0.037946574 0.33583775 -0.048444401 0.32875192 -0.040341381 0.328428
		 -0.046985067 0.32216352 -0.041621652 0.32184082;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 6 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:5]";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:31]";
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:89]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/rasmul2/Desktop/Experimental Game Design/water.png";
createNode place2dTexture -n "place2dTexture1";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 18 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId3.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape2.i";
connectAttr "groupId4.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "groupParts11.og" "pCubeShape3.i";
connectAttr "polyTweakUV12.uvtk[0]" "pCubeShape3.uvst[0].uvtw";
connectAttr "groupId17.id" "pCubeShape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupId18.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "deleteComponent4.og" "pCube4Shape.i";
connectAttr "groupId5.id" "pCube4Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube4Shape.iog.og[0].gco";
connectAttr "groupId6.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts4.og" "pCubeShape4.i";
connectAttr "groupId7.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "polyTweakUV34.out" "pCube6Shape.i";
connectAttr "groupId8.id" "pCube6Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCube6Shape.iog.og[0].gco";
connectAttr "polyTweakUV34.uvtk[0]" "pCube6Shape.uvst[0].uvtw";
connectAttr "groupParts10.og" "pCubeShape5.i";
connectAttr "groupId15.id" "pCubeShape5.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "polyTweakUV36.uvtk[0]" "pCubeShape5.uvst[0].uvtw";
connectAttr "groupId16.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "groupParts9.og" "pPlaneShape2.i";
connectAttr "groupId13.id" "pPlaneShape2.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPlaneShape2.iog.og[0].gco";
connectAttr "polyTweakUV37.uvtk[0]" "pPlaneShape2.uvst[0].uvtw";
connectAttr "groupId14.id" "pPlaneShape2.ciog.cog[0].cgid";
connectAttr "groupParts8.og" "pPlaneShape3.i";
connectAttr "groupId11.id" "pPlaneShape3.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPlaneShape3.iog.og[0].gco";
connectAttr "polyTweakUV39.uvtk[0]" "pPlaneShape3.uvst[0].uvtw";
connectAttr "groupId12.id" "pPlaneShape3.ciog.cog[0].cgid";
connectAttr "groupParts7.og" "pPlaneShape4.i";
connectAttr "groupId9.id" "pPlaneShape4.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pPlaneShape4.iog.og[0].gco";
connectAttr "polyTweakUV38.uvtk[0]" "pPlaneShape4.uvst[0].uvtw";
connectAttr "groupId10.id" "pPlaneShape4.ciog.cog[0].cgid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySoftEdge1.ip";
connectAttr "pCubeShape1.wm" "polySoftEdge1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube2.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySoftEdge2.ip";
connectAttr "pCubeShape2.wm" "polySoftEdge2.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySoftEdge3.ip";
connectAttr "pCubeShape3.wm" "polySoftEdge3.mp";
connectAttr "polyCube3.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polySoftEdge2.out" "polyTweak6.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak7.out" "polySplitRing1.ip";
connectAttr "pCubeShape2.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak7.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape2.wm" "polySplitRing2.mp";
connectAttr "polyTweak8.out" "polySplitRing3.ip";
connectAttr "pCubeShape2.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak8.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape2.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape2.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape2.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape2.wm" "polySplitRing7.mp";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape2.wm" "polySplitRing8.mp";
connectAttr "polyTweak9.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polySplitRing8.out" "polyTweak9.ip";
connectAttr "polySoftEdge1.out" "deleteComponent1.ig";
connectAttr "polyExtrudeFace5.out" "deleteComponent2.ig";
connectAttr "pCubeShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[1]";
connectAttr "deleteComponent1.og" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "deleteComponent2.og" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyMergeVert1.ip";
connectAttr "pCube4Shape.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCube4Shape.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pCube4Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCube4Shape.wm" "polyMergeVert4.mp";
connectAttr "polyTweak10.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace6.mp";
connectAttr "polyCube4.out" "polyTweak10.ip";
connectAttr "polyTweak11.out" "polySoftEdge4.ip";
connectAttr "pCubeShape4.wm" "polySoftEdge4.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak11.ip";
connectAttr "polySoftEdge4.out" "polyMirror1.ip";
connectAttr "pCubeShape4.wm" "polyMirror1.mp";
connectAttr "polyMergeVert4.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "deleteComponent4.ig";
connectAttr "polyMirror1.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "deleteComponent5.ig";
connectAttr "pCube4Shape.o" "polyUnite2.ip[0]";
connectAttr "pCubeShape4.o" "polyUnite2.ip[1]";
connectAttr "pCube4Shape.wm" "polyUnite2.im[0]";
connectAttr "pCubeShape4.wm" "polyUnite2.im[1]";
connectAttr "deleteComponent5.og" "groupParts4.ig";
connectAttr "groupId6.id" "groupParts4.gi";
connectAttr "polyUnite2.out" "groupParts5.ig";
connectAttr "groupParts5.og" "polyMergeVert5.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert8.mp";
connectAttr "polyMergeVert8.out" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyMergeVert9.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert12.mp";
connectAttr "polySoftEdge3.out" "polyExtrudeFace7.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace7.mp";
connectAttr "polyTweak14.out" "polyMergeVert13.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert12.out" "polyTweak14.ip";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert16.mp";
connectAttr "polyTweak15.out" "polySplitRing9.ip";
connectAttr "pCubeShape3.wm" "polySplitRing9.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak15.ip";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape3.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape3.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySoftEdge5.ip";
connectAttr "pCubeShape3.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge5.out" "polyTweakUV1.ip";
connectAttr "polyTweak16.out" "polyMapDel1.ip";
connectAttr "polyTweakUV1.out" "polyTweak16.ip";
connectAttr "polyMapDel1.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "Unfold3DUnfold1.im";
connectAttr "Unfold3DUnfold1.om" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "Unfold3DUnfold2.im";
connectAttr "Unfold3DUnfold2.om" "Unfold3DUnfold3.im";
connectAttr "Unfold3DUnfold3.om" "Unfold3DUnfold4.im";
connectAttr "Unfold3DUnfold4.om" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "Unfold3DUnfold5.im";
connectAttr "Unfold3DUnfold5.om" "Unfold3DUnfold6.im";
connectAttr "Unfold3DUnfold6.om" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapDel2.ip";
connectAttr "polyMapDel2.out" "polySphProj1.ip";
connectAttr "pCubeShape3.wm" "polySphProj1.mp";
connectAttr "polySphProj1.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyTweakUV9.ip";
connectAttr "polyTweak17.out" "polySplitRing12.ip";
connectAttr "pCubeShape5.wm" "polySplitRing12.mp";
connectAttr "polyCube5.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polyExtrudeFace8.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace8.mp";
connectAttr "polySplitRing12.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polySplitRing13.ip";
connectAttr "pCubeShape5.wm" "polySplitRing13.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak19.ip";
connectAttr "polyTweak20.out" "polySoftEdge6.ip";
connectAttr "pCubeShape5.wm" "polySoftEdge6.mp";
connectAttr "polySplitRing13.out" "polyTweak20.ip";
connectAttr "|pPlane2|polySurfaceShape1.o" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polySoftEdge7.ip";
connectAttr "pPlaneShape2.wm" "polySoftEdge7.mp";
connectAttr "polySurfaceShape2.o" "polySoftEdge8.ip";
connectAttr "pPlaneShape3.wm" "polySoftEdge8.mp";
connectAttr "polySurfaceShape3.o" "polySoftEdge9.ip";
connectAttr "pPlaneShape4.wm" "polySoftEdge9.mp";
connectAttr "polyTweakUV9.out" "polySoftEdge10.ip";
connectAttr "pCubeShape3.wm" "polySoftEdge10.mp";
connectAttr "polyTweak21.out" "polySoftEdge11.ip";
connectAttr "pCube6Shape.wm" "polySoftEdge11.mp";
connectAttr "polyMergeVert16.out" "polyTweak21.ip";
connectAttr "polySoftEdge6.out" "polySoftEdge12.ip";
connectAttr "pCubeShape5.wm" "polySoftEdge12.mp";
connectAttr "polySoftEdge7.out" "polySoftEdge13.ip";
connectAttr "pPlaneShape2.wm" "polySoftEdge13.mp";
connectAttr "polySoftEdge8.out" "polySoftEdge14.ip";
connectAttr "pPlaneShape3.wm" "polySoftEdge14.mp";
connectAttr "polySoftEdge9.out" "polySoftEdge15.ip";
connectAttr "pPlaneShape4.wm" "polySoftEdge15.mp";
connectAttr "polySoftEdge11.out" "polyExtrudeFace9.ip";
connectAttr "pCube6Shape.wm" "polyExtrudeFace9.mp";
connectAttr "polyTweak22.out" "polyExtrudeEdge1.ip";
connectAttr "pCube6Shape.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak22.ip";
connectAttr "polyExtrudeEdge1.out" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "polyTweak23.out" "polyMergeVert17.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert17.mp";
connectAttr "groupParts6.og" "polyTweak23.ip";
connectAttr "polyMergeVert17.out" "polyMergeVert18.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert18.mp";
connectAttr "polyMergeVert18.out" "polyMergeVert19.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert19.mp";
connectAttr "polyMergeVert19.out" "polyMergeVert20.ip";
connectAttr "pCube6Shape.wm" "polyMergeVert20.mp";
connectAttr "polyTweak24.out" "polySoftEdge16.ip";
connectAttr "pCube6Shape.wm" "polySoftEdge16.mp";
connectAttr "polyMergeVert20.out" "polyTweak24.ip";
connectAttr "polySoftEdge10.out" "polyMapDel3.ip";
connectAttr "polyMapDel3.out" "polyMapDel4.ip";
connectAttr "polyMapDel4.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "Unfold3DUnfold7.im";
connectAttr "Unfold3DUnfold7.om" "polyTweakUV12.ip";
connectAttr "polyTweak25.out" "polyPlanarProj3.ip";
connectAttr "pCube6Shape.wm" "polyPlanarProj3.mp";
connectAttr "polySoftEdge16.out" "polyTweak25.ip";
connectAttr "polyPlanarProj3.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyTweakUV13.ip";
connectAttr "polyTweakUV13.out" "polyMapDel5.ip";
connectAttr "polyMapDel5.out" "polyTweakUV14.ip";
connectAttr "polyTweakUV14.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyTweakUV15.ip";
connectAttr "polyTweakUV15.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyTweakUV16.ip";
connectAttr "polyTweakUV16.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV17.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyTweakUV18.ip";
connectAttr "polyTweakUV18.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyMergeUV1.ip";
connectAttr "polyMergeUV1.out" "polyTweakUV20.ip";
connectAttr "polyTweakUV20.out" "polyMergeUV2.ip";
connectAttr "polyMergeUV2.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "Unfold3DUnfold8.im";
connectAttr "Unfold3DUnfold8.om" "polyTweakUV22.ip";
connectAttr "polyTweakUV22.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "Unfold3DUnfold9.im";
connectAttr "Unfold3DUnfold9.om" "Unfold3DUnfold10.im";
connectAttr "Unfold3DUnfold10.om" "Unfold3DUnfold11.im";
connectAttr "Unfold3DUnfold11.om" "polyTweakUV23.ip";
connectAttr "polyTweakUV23.out" "polyFlipUV1.ip";
connectAttr "pCube6Shape.wm" "polyFlipUV1.mp";
connectAttr "polyFlipUV1.out" "polyTweakUV24.ip";
connectAttr "polyTweakUV24.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "Unfold3DUnfold12.im";
connectAttr "Unfold3DUnfold12.om" "polyTweakUV25.ip";
connectAttr "polyTweakUV25.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV26.out" "Unfold3DOptimize1.im";
connectAttr "Unfold3DOptimize1.om" "Unfold3DUnfold13.im";
connectAttr "Unfold3DUnfold13.om" "polyTweakUV27.ip";
connectAttr "polyTweakUV27.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyTweakUV28.ip";
connectAttr "polyTweakUV28.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyTweakUV29.ip";
connectAttr "polyTweakUV29.out" "polyPlanarProj4.ip";
connectAttr "pCube6Shape.wm" "polyPlanarProj4.mp";
connectAttr "polyPlanarProj4.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyTweakUV30.ip";
connectAttr "polyTweakUV30.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyTweakUV31.ip";
connectAttr "polyTweakUV31.out" "polyMapCut19.ip";
connectAttr "polyMapCut19.out" "Unfold3DUnfold14.im";
connectAttr "Unfold3DUnfold14.om" "Unfold3DUnfold15.im";
connectAttr "Unfold3DUnfold15.om" "polyTweakUV32.ip";
connectAttr "polyTweakUV32.out" "Unfold3DUnfold16.im";
connectAttr "Unfold3DUnfold16.om" "polyTweakUV33.ip";
connectAttr "polyTweakUV33.out" "Unfold3DOptimize2.im";
connectAttr "Unfold3DOptimize2.om" "Unfold3DOptimize3.im";
connectAttr "Unfold3DOptimize3.om" "polyTweakUV34.ip";
connectAttr "polySoftEdge12.out" "polyPlanarProj5.ip";
connectAttr "pCubeShape5.wm" "polyPlanarProj5.mp";
connectAttr "polyPlanarProj5.out" "polySplitRing14.ip";
connectAttr "pCubeShape5.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polyMapCut20.ip";
connectAttr "polyMapCut20.out" "polyTweakUV35.ip";
connectAttr "polyTweakUV35.out" "Unfold3DUnfold17.im";
connectAttr "Unfold3DUnfold17.om" "polyTweakUV36.ip";
connectAttr "polySoftEdge15.out" "polyPlanarProj6.ip";
connectAttr "pPlaneShape4.wm" "polyPlanarProj6.mp";
connectAttr "polySoftEdge13.out" "polyPlanarProj7.ip";
connectAttr "pPlaneShape2.wm" "polyPlanarProj7.mp";
connectAttr "polySoftEdge14.out" "polyPlanarProj8.ip";
connectAttr "pPlaneShape3.wm" "polyPlanarProj8.mp";
connectAttr "polyPlanarProj7.out" "polyTweakUV37.ip";
connectAttr "polyPlanarProj6.out" "polyTweakUV38.ip";
connectAttr "polyPlanarProj8.out" "polyTweakUV39.ip";
connectAttr "file1.oc" "lambert2.c";
connectAttr "file1.ot" "lambert2.it";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "pPlaneShape4.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPlaneShape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pPlaneShape2.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCube6Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "polyTweakUV38.out" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polyTweakUV39.out" "groupParts8.ig";
connectAttr "groupId11.id" "groupParts8.gi";
connectAttr "polyTweakUV37.out" "groupParts9.ig";
connectAttr "groupId13.id" "groupParts9.gi";
connectAttr "polyTweakUV36.out" "groupParts10.ig";
connectAttr "groupId15.id" "groupParts10.gi";
connectAttr "polyTweakUV12.out" "groupParts11.ig";
connectAttr "groupId17.id" "groupParts11.gi";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube4Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId7.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId16.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/rasmul2/Desktop/Experimental Game Design/water.png\" 2546055742 \"C:/Users/rasmul2/Desktop/Experimental Game Design/water.png\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of water.ma
