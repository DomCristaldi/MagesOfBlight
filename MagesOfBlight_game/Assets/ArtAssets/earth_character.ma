//Maya ASCII 2015 scene
//Name: earth_character.ma
//Last modified: Tue, Oct 13, 2015 09:47:45 PM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mia_material_x" -dataType "byteArray" "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -38.209206817364013 8.8063652234108289 -3.0742397865508373 ;
	setAttr ".r" -type "double3" 347.06164728122474 -94.600000000487327 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 39.331240818528457;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 100.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 36.347607052896706;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 36.34760705289672;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0.18145161290322553 3.1451612903225827 0.15120967741933369 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "polySurface1" -p "pCube1";
	setAttr ".t" -type "double3" -1.1102230246251565e-016 1.5433589264022272 0.84581839223988542 ;
createNode transform -n "transform3" -p "|pCube1|polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.79166659712791443 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform1" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.41666664928197861 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -1.3251334539597426 5.4320892426450893 3.36327023742626 ;
	setAttr ".r" -type "double3" 0 -19.133367358979836 0 ;
	setAttr ".s" -type "double3" 1.0364600369463146 0.57676269283540749 1.5157006775288369 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[0:1]" -type "float3"  0 0 0.20020124 0 0 0.20020124;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 1.5245861054202237 5.4320892426450902 3.2866924246957661 ;
	setAttr ".r" -type "double3" 0 25.096792895799901 0 ;
	setAttr ".s" -type "double3" 1.0364600369463146 0.57676269283540749 1.5157006775288369 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[0:1]" -type "float3"  0 0 0.20020124 0 0 0.20020124;
	setAttr -s 12 ".vt[0:11]"  -1.32241797 -0.6423173 0.30226707 1.32241809 -0.6423173 0.30226684
		 -0.82039666 0.6423173 0.30226707 0.82039678 0.6423173 0.30226707 -0.8203966 0.6423173 -0.30226707
		 0.82039678 0.6423173 -0.30226707 -1.32241786 -0.6423173 -0.30226707 1.32241809 -0.6423173 -0.30226707
		 -1.092600465 -1.55886364 -0.3567884 1.03230679 -1.55886364 -0.23344135 1.092600584 -1.55886364 0.3567884
		 -1.032306671 -1.55886364 0.23344135;
	setAttr -s 20 ".ed[0:19]"  0 1 1 2 3 0 4 5 0 6 7 1 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 7 9 0 8 9 0 1 10 0 9 10 0 0 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 13 -15 -13
		mu 0 4 6 7 15 14
		f 4 11 15 -17 -14
		mu 0 4 7 9 16 15
		f 4 -1 17 18 -16
		mu 0 4 9 8 17 16
		f 4 -11 12 19 -18
		mu 0 4 8 6 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 0.22670025188916856 -0.5589389121065893 1.9728270783607962 ;
	setAttr ".r" -type "double3" 5.8753748074072112 0 0 ;
	setAttr ".s" -type "double3" 1.0337870051082401 1 0.33641087687470561 ;
createNode transform -n "transform5" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 48 ".pt[0:47]" -type "float3"  0.98236781 0.042057913 -0.1998598 
		-4.4408921e-016 -1.0322641 0.82098985 2.220446e-016 -1.6001889 0.42832673 -2.220446e-016 
		-1.6001889 0.42832673 4.4408921e-016 -1.0322641 0.82098985 -0.98236781 0.042057913 
		-0.1998598 0.98236787 0 0.82041478 0 -1.3602016 0.48310861 0 -1.9647357 1.0509571 
		0 -1.9647357 1.0509571 0 -1.3602016 0.48310861 -0.98236787 0 0.82041478 0.98236787 
		0 1.1732403 0 0 3.1361814 0 0 4.7177725 0 0 4.7177725 0 0 3.1361814 -0.98236787 0 
		1.1732403 0.60453409 0.060275234 1.0358663 0 0.3550826 3.2902141 0 0.3550826 4.8778811 
		0 0.3550826 4.8778811 0 0.3550826 3.2902141 -0.60453409 0.060275234 1.0358663 0.52896744 
		0.36703816 0.29497457 0 1.2046132 2.0923498 1.110223e-016 1.8699572 2.5243213 -1.110223e-016 
		1.8699572 2.5243213 0 1.2046132 2.0923498 -0.52896744 0.36703816 0.29497457 0.52896744 
		0.46504137 -0.12651634 0 1.2179357 0 0 1.8699573 0 0 1.8699573 0 0 1.2179357 0 -0.52896744 
		0.46504137 -0.12651634 0.60453403 0.15714143 -1.9806005 -4.4408921e-016 0.42965898 
		-4.6345391 2.220446e-016 0.42965898 -6.1812859 -2.220446e-016 0.42965898 -6.1812859 
		4.4408921e-016 0.42965898 -4.6345391 -0.60453403 0.15714143 -1.9806005 0.98236787 
		0.1359657 -2.5921645 -4.4408921e-016 0.17082319 -3.45806 1.110223e-016 0.17082319 
		-4.9988856 -1.110223e-016 0.17082319 -4.9988856 4.4408921e-016 0.17082319 -3.45806 
		-0.98236787 0.1359657 -2.5921645;
createNode transform -n "pPlane2";
	setAttr ".t" -type "double3" -0.34227057414674278 2.6730370754968469 3.8165899485377031 ;
createNode transform -n "transform4" -p "pPlane2";
	setAttr ".v" no;
createNode mesh -n "pPlaneShape2" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:9]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 40 ".uvst[0].uvsp[0:39]" -type "float2" 0 0 0.60869563 0
		 0 1 0.60869563 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 0.60869563 0 0.60869563 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1
		 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".vt[0:21]"  -0.52896726 -0.86901772 -2.3841858e-007 0.52896726 -0.3400504 -2.3841858e-007
		 -0.52896726 0.8690176 -0.36645865 0.52896726 0.8690176 -0.36645865 -1.43715477 -0.92451108 -0.20466089
		 -2.39057517 -1.21892369 -0.16930079 -2.95543694 -1.8150351 -0.13690829 -3.41866469 -3.80012798 -0.10451579
		 -1.75955868 0.44097352 -0.25421643 -2.8558867 -0.20919788 -0.28957677 -3.60399723 -1.31456327 -0.32196927
		 -3.71696639 -3.75870228 -0.35436177 1.5869019 -0.86901772 -2.3841858e-007 1.5869019 0.8690176 -0.36645865
		 2.8174932 0.44097352 -0.25421643 2.49508929 -0.92451108 -0.20466089 3.91382122 -0.20919788 -0.28957677
		 3.44850969 -1.21892369 -0.16930079 4.66193151 -1.31456327 -0.32196927 4.013371468 -1.8150351 -0.13690829
		 4.77490091 -3.75870228 -0.35436177 4.47659922 -3.80012798 -0.10451579;
	setAttr -s 31 ".ed[0:30]"  0 1 0 0 2 1 1 3 0 2 3 0 0 4 0 4 5 0 5 6 0
		 6 7 0 2 8 0 8 9 0 9 10 0 10 11 0 4 8 1 5 9 1 6 10 1 7 11 0 12 1 0 13 3 0 12 13 1
		 13 14 0 15 14 1 12 15 0 14 16 0 17 16 1 15 17 0 16 18 0 19 18 1 17 19 0 18 20 0 21 20 0
		 19 21 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 1 8 -13 -5
		mu 0 4 4 5 6 7
		f 4 12 9 -14 -6
		mu 0 4 8 9 10 11
		f 4 13 10 -15 -7
		mu 0 4 12 13 14 15
		f 4 14 11 -16 -8
		mu 0 4 16 17 18 19
		f 4 18 17 -3 -17
		mu 0 4 20 23 22 21
		f 4 21 20 -20 -19
		mu 0 4 24 27 26 25
		f 4 24 23 -23 -21
		mu 0 4 28 31 30 29
		f 4 27 26 -26 -24
		mu 0 4 32 35 34 33
		f 4 30 29 -29 -27
		mu 0 4 36 39 38 37;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" 0.41561712846347548 -7.0302536110350076 -1.3351375675342927 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "transform2" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform2";
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
	setAttr -s 51 ".pt";
	setAttr ".pt[0]" -type "float3" -0.18604727 0 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.55722415 0 ;
	setAttr ".pt[2]" -type "float3" 0 0.55722415 0 ;
	setAttr ".pt[3]" -type "float3" 0.18604727 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.18604727 0 0 ;
	setAttr ".pt[7]" -type "float3" 0.18604727 0 0 ;
	setAttr ".pt[9]" -type "float3" 0 0 -5.9604645e-008 ;
	setAttr ".pt[10]" -type "float3" 0 0 -5.9604645e-008 ;
	setAttr ".pt[16]" -type "float3" 0 1.482758 0 ;
	setAttr ".pt[17]" -type "float3" 0 0.48232922 0 ;
	setAttr ".pt[18]" -type "float3" 0 0.48232922 0 ;
	setAttr ".pt[19]" -type "float3" 0 1.482758 0 ;
	setAttr ".pt[20]" -type "float3" 0 1.482758 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.48232922 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.48232922 0 ;
	setAttr ".pt[23]" -type "float3" 0 1.482758 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.079142563 -0.29567778 ;
	setAttr ".pt[25]" -type "float3" 0 0.079142563 -0.29567778 ;
	setAttr ".pt[26]" -type "float3" 0 0.079142563 -0.29567778 ;
	setAttr ".pt[27]" -type "float3" 0 0.079142563 -0.29567778 ;
	setAttr ".pt[45]" -type "float3" 0 8.9406967e-008 0 ;
	setAttr ".pt[46]" -type "float3" 0 8.9406967e-008 0 ;
	setAttr ".pt[56]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[57]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[58]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[59]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[60]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[61]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[62]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[63]" -type "float3" 0 -1.8101629 0 ;
	setAttr ".pt[72]" -type "float3" 1.9071997 0 0 ;
	setAttr ".pt[73]" -type "float3" 1.9071997 4.4408921e-016 0 ;
	setAttr ".pt[74]" -type "float3" 1.9071997 4.4408921e-016 0 ;
	setAttr ".pt[75]" -type "float3" 1.9071997 0 0 ;
	setAttr ".pt[76]" -type "float3" 1.9084929 0.62425995 0 ;
	setAttr ".pt[77]" -type "float3" 1.9084929 0 0 ;
	setAttr ".pt[78]" -type "float3" 1.9084929 0 0 ;
	setAttr ".pt[79]" -type "float3" 1.9084929 0.62425995 0 ;
	setAttr ".pt[80]" -type "float3" -1.9071997 0 0 ;
	setAttr ".pt[81]" -type "float3" -1.9071997 0 0 ;
	setAttr ".pt[82]" -type "float3" -1.9071997 4.4408921e-016 0 ;
	setAttr ".pt[83]" -type "float3" -1.9071997 4.4408921e-016 0 ;
	setAttr ".pt[84]" -type "float3" -1.9084929 0.62425995 0 ;
	setAttr ".pt[85]" -type "float3" -1.9084929 0.62425995 0 ;
	setAttr ".pt[86]" -type "float3" -1.9084929 0 0 ;
	setAttr ".pt[87]" -type "float3" -1.9084929 0 0 ;
createNode transform -n "polySurface1";
createNode mesh -n "polySurface1Shape" -p "|polySurface1";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr -av ".iog[0].og[0].gco";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.6041666567325592 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 81 ".pt";
	setAttr ".pt[0]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[1]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[2]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[3]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[4]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[5]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[6]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[7]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[8]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[9]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[10]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[11]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[12]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[13]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[14]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[15]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[16]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[17]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[18]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[19]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[20]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[21]" -type "float3" 0 0 -1.5484427 ;
	setAttr ".pt[22]" -type "float3" 0 0 -1.5484427 ;
	setAttr ".pt[23]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[24]" -type "float3" 0 0 -1.60467 ;
	setAttr ".pt[25]" -type "float3" 0 0 -1.7806174 ;
	setAttr ".pt[26]" -type "float3" 0 0 -1.7806174 ;
	setAttr ".pt[27]" -type "float3" 0 0 -1.60467 ;
	setAttr ".pt[28]" -type "float3" 0 1.4901161e-008 -1.1335015 ;
	setAttr ".pt[29]" -type "float3" 0 1.4901161e-008 -1.1335015 ;
	setAttr ".pt[30]" -type "float3" 0 1.4901161e-008 -1.1335015 ;
	setAttr ".pt[31]" -type "float3" 0 1.4901161e-008 -1.1335015 ;
	setAttr ".pt[32]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[33]" -type "float3" 0 1.4901161e-008 -1.6046699 ;
	setAttr ".pt[34]" -type "float3" 0 1.4901161e-008 -1.5203177 ;
	setAttr ".pt[35]" -type "float3" 0 1.4901161e-008 -1.5203177 ;
	setAttr ".pt[36]" -type "float3" 0 1.4901161e-008 -1.6046699 ;
	setAttr ".pt[37]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[38]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[39]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[40]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[41]" -type "float3" 0 0 -1.60467 ;
	setAttr ".pt[42]" -type "float3" 0 0 -1.8087428 ;
	setAttr ".pt[43]" -type "float3" 0 0 -1.8087428 ;
	setAttr ".pt[44]" -type "float3" 0 0 -1.60467 ;
	setAttr ".pt[45]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[46]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[47]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[48]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[49]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[50]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[51]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[52]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[53]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[54]" -type "float3" 0 0 0.075566798 ;
	setAttr ".pt[55]" -type "float3" 0 0 0.075566798 ;
	setAttr ".pt[56]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[57]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[58]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[59]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[60]" -type "float3" 0 0 -1.6046698 ;
	setAttr ".pt[61]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[62]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[63]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[64]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[65]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[66]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[67]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[68]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[69]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[70]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[71]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[72]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[73]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[74]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[75]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[76]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[77]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[78]" -type "float3" 0 0 -1.1335014 ;
	setAttr ".pt[79]" -type "float3" 0 0 -1.1335014 ;
createNode transform -n "pCube6";
createNode mesh -n "pCube6Shape" -p "pCube6";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 5.4435483870967758;
	setAttr ".h" 6.2903225806451646;
	setAttr ".d" 3.8104838709677438;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[30:33]" "e[58:61]" "e[74]" "e[81]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.18145161290322553 3.1451612903225827 0.15120967741933369 1;
	setAttr ".wt" 0.3678077757358551;
	setAttr ".re" 30;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk[0:43]" -type "float3"  0.37783378 -0.60453409 0 0
		 -1.20906818 0 0 -1.20906818 0 -0.37783378 -0.60453409 0 -0.37783378 0.75566763 0
		 0 0.75566763 0 0 0.75566763 0 0.37783378 0.75566763 0 -5.9604645e-008 0 0 -5.9604645e-008
		 0 0 5.9604645e-008 0 0 5.9604645e-008 0 0 0.52896726 -0.45340055 0 -5.9604645e-008
		 0 0 5.9604645e-008 0 0 -0.52896726 -0.45340055 0 0.52896726 -0.45340055 0 -5.9604645e-008
		 0 0 5.9604645e-008 0 0 -0.52896726 -0.45340055 0 0.52896726 -0.45340055 0 -5.9604645e-008
		 0 0 5.9604645e-008 0 0 -0.52896726 -0.45340055 0 -5.9604645e-008 0 0 -5.9604645e-008
		 0 0 5.9604645e-008 0 0 5.9604645e-008 0 0 -0.37783378 0.75566763 0 0 0.75566763 0
		 0 0.75566763 0 0.37783378 0.75566763 0 0.37783378 -0.60453409 0 0 -1.20906818 0 0
		 -1.20906818 0 -0.37783378 -0.60453409 0 0.37783378 -0.60453409 0 0 -1.20906818 0
		 0 -1.20906818 0 -0.37783378 -0.60453409 0 0.37783378 0.75566763 0 5.9604645e-008
		 0 0 -0.37783378 0.75566763 0 -5.9604645e-008 0 0;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[34:37]" "e[54:57]" "e[75]" "e[82]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.18145161290322553 3.1451612903225827 0.15120967741933369 1;
	setAttr ".wt" 0.63095283508300781;
	setAttr ".dr" no;
	setAttr ".re" 34;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 20 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.60453403 0 ;
	setAttr ".tk[44]" -type "float3" 0.042436361 0 0 ;
	setAttr ".tk[45]" -type "float3" 0.042436361 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.042436361 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.042436361 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.042436361 0 0 ;
	setAttr ".tk[51]" -type "float3" -0.042436361 0 0 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 60 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.11823802 ;
	setAttr ".tk[1]" -type "float3" 0 0 1.6742203 ;
	setAttr ".tk[2]" -type "float3" 0 0 1.6742203 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.11823802 ;
	setAttr ".tk[5]" -type "float3" 0 0 1.2219003 ;
	setAttr ".tk[6]" -type "float3" 0 0 1.2219003 ;
	setAttr ".tk[8]" -type "float3" -0.23982175 0 0 ;
	setAttr ".tk[9]" -type "float3" -1.0423648e-008 0 1.7123353 ;
	setAttr ".tk[10]" -type "float3" 1.0423648e-008 0 1.7123353 ;
	setAttr ".tk[11]" -type "float3" 0.23982175 0 0 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.2834622 ;
	setAttr ".tk[13]" -type "float3" 0 0 1.7123353 ;
	setAttr ".tk[14]" -type "float3" 0 0 1.7123353 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.2834622 ;
	setAttr ".tk[16]" -type "float3" -0.30122253 0.58590895 0 ;
	setAttr ".tk[17]" -type "float3" 0.051891621 0.66649991 0 ;
	setAttr ".tk[18]" -type "float3" -0.051891621 0.66649991 0 ;
	setAttr ".tk[19]" -type "float3" 0.30122253 0.58590895 0 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.24227236 ;
	setAttr ".tk[21]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[22]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.24227236 ;
	setAttr ".tk[24]" -type "float3" -0.23982175 0 0 ;
	setAttr ".tk[25]" -type "float3" -1.0423648e-008 0 -1.1276428 ;
	setAttr ".tk[26]" -type "float3" 1.0423648e-008 0 -1.1276428 ;
	setAttr ".tk[27]" -type "float3" 0.23982175 0 0 ;
	setAttr ".tk[29]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[30]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.11460958 ;
	setAttr ".tk[33]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[34]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[35]" -type "float3" 0 0 -0.11460958 ;
	setAttr ".tk[36]" -type "float3" -0.34273586 -0.55904531 0 ;
	setAttr ".tk[37]" -type "float3" 0.051891632 -0.66649985 0 ;
	setAttr ".tk[38]" -type "float3" -0.051891632 -0.66649985 0 ;
	setAttr ".tk[39]" -type "float3" 0.34273586 -0.55904531 0 ;
	setAttr ".tk[40]" -type "float3" 0.55030251 -0.052030217 0 ;
	setAttr ".tk[41]" -type "float3" 0.75221521 0.29380304 0 ;
	setAttr ".tk[42]" -type "float3" -0.55030251 -0.052030217 0 ;
	setAttr ".tk[43]" -type "float3" -0.75221521 0.29380304 0 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.019439608 ;
	setAttr ".tk[45]" -type "float3" -0.43486279 -0.25181052 0 ;
	setAttr ".tk[46]" -type "float3" 0 0 -0.019439608 ;
	setAttr ".tk[47]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[48]" -type "float3" 0 0 -1.1276428 ;
	setAttr ".tk[49]" -type "float3" 0 0 -0.019439608 ;
	setAttr ".tk[50]" -type "float3" 0.43486279 -0.25181052 0 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.019439608 ;
	setAttr ".tk[52]" -type "float3" 0 0 1.6742203 ;
	setAttr ".tk[53]" -type "float3" 0 0 1.6742203 ;
	setAttr ".tk[54]" -type "float3" 0.16818218 0 0.013117129 ;
	setAttr ".tk[55]" -type "float3" -0.28403237 0.1208864 0 ;
	setAttr ".tk[56]" -type "float3" 0.16818218 0 -0.013117129 ;
	setAttr ".tk[57]" -type "float3" -0.0083218655 0 -1.1276428 ;
	setAttr ".tk[58]" -type "float3" 0.0083218655 0 -1.1276428 ;
	setAttr ".tk[59]" -type "float3" -0.16818218 0 -0.013117258 ;
	setAttr ".tk[60]" -type "float3" 0.28403237 0.1208864 0 ;
	setAttr ".tk[61]" -type "float3" -0.16818218 0 0.013117258 ;
	setAttr ".tk[62]" -type "float3" 0.0083218655 0 1.4235187 ;
	setAttr ".tk[63]" -type "float3" -0.0083218655 0 1.4235187 ;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 8 "e[12:14]" "e[27:29]" "e[74:76]" "e[81:83]" "e[85]" "e[95]" "e[105]" "e[115]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 6 "vtx[16:19]" "vtx[36:43]" "vtx[45]" "vtx[50]" "vtx[55]" "vtx[60]";
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[36:39]" "e[52:59]" "e[62]" "e[70]" "e[78]" "e[86]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.18145161290322553 3.1451612903225827 0.15120967741933369 1;
	setAttr ".wt" 0.8279615044593811;
	setAttr ".dr" no;
	setAttr ".re" 36;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 7 "f[7]" "f[10]" "f[13]" "f[16]" "f[40]" "f[60]" "f[76]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.18145161290322553 3.1451612903225827 0.15120967741933369 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.18145162 3.1451614 0.15120968 ;
	setAttr ".rs" 41352;
	setAttr ".lt" -type "double3" 2.7755575615628914e-017 4.0939474033052647e-016 0.23206632508113506 ;
	setAttr ".ls" -type "double3" 1.2877693009569766 1 1 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 74 ".tk";
	setAttr ".tk[0]" -type "float3" -0.079886876 -0.15206461 0 ;
	setAttr ".tk[1]" -type "float3" 0 0 -0.75186807 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.75186807 ;
	setAttr ".tk[3]" -type "float3" 0.079886876 -0.15206461 0 ;
	setAttr ".tk[4]" -type "float3" -0.15925443 -0.017571585 0 ;
	setAttr ".tk[7]" -type "float3" 0.15925443 -0.017571585 0 ;
	setAttr ".tk[8]" -type "float3" -0.14828373 0.099222831 0 ;
	setAttr ".tk[9]" -type "float3" -0.63579148 0 0 ;
	setAttr ".tk[10]" -type "float3" 0.63579148 0 0 ;
	setAttr ".tk[11]" -type "float3" 0.14828373 0.099222831 0 ;
	setAttr ".tk[12]" -type "float3" -0.16632999 0.11537457 0 ;
	setAttr ".tk[13]" -type "float3" -0.63579148 0 -0.58133858 ;
	setAttr ".tk[14]" -type "float3" 0.63579148 0 -0.58133858 ;
	setAttr ".tk[15]" -type "float3" 0.16632999 0.11537457 0 ;
	setAttr ".tk[16]" -type "float3" -0.2956264 0.11537457 0.029420681 ;
	setAttr ".tk[17]" -type "float3" -0.63579148 0 0.45076948 ;
	setAttr ".tk[18]" -type "float3" 0.63579148 0 0.45076948 ;
	setAttr ".tk[19]" -type "float3" 0.2956264 0.11537457 0.029420733 ;
	setAttr ".tk[20]" -type "float3" -0.14828373 0.099222809 0 ;
	setAttr ".tk[21]" -type "float3" -0.63579148 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.63579148 0 0 ;
	setAttr ".tk[23]" -type "float3" 0.14828373 0.099222809 0 ;
	setAttr ".tk[24]" -type "float3" -0.15925443 -0.017571598 0 ;
	setAttr ".tk[27]" -type "float3" 0.15925443 -0.017571598 0 ;
	setAttr ".tk[28]" -type "float3" -0.079886876 -0.15206461 0.0025560781 ;
	setAttr ".tk[29]" -type "float3" 0 0 0.59750146 ;
	setAttr ".tk[30]" -type "float3" 0 0 0.59750146 ;
	setAttr ".tk[31]" -type "float3" 0.079886876 -0.15206461 0.0025560781 ;
	setAttr ".tk[32]" -type "float3" -0.12163807 -0.082197078 0 ;
	setAttr ".tk[33]" -type "float3" -0.12163807 -0.082197078 0 ;
	setAttr ".tk[36]" -type "float3" 0.12163807 -0.082197078 0 ;
	setAttr ".tk[37]" -type "float3" 0.12163807 -0.082197078 0 ;
	setAttr ".tk[40]" -type "float3" -0.12790997 0.039902724 0 ;
	setAttr ".tk[41]" -type "float3" -0.12790997 0.039902713 0 ;
	setAttr ".tk[42]" -type "float3" -0.32468531 0 0 ;
	setAttr ".tk[43]" -type "float3" 0.32468531 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.12790979 0.03990265 0 ;
	setAttr ".tk[45]" -type "float3" 0.12790979 0.039902661 0 ;
	setAttr ".tk[46]" -type "float3" 0.30312315 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.30312315 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.36585233 0.71663344 0 ;
	setAttr ".tk[49]" -type "float3" -0.53703815 0.35935456 0 ;
	setAttr ".tk[50]" -type "float3" -0.47396496 0.1478578 0 ;
	setAttr ".tk[51]" -type "float3" -0.5767706 -0.063638926 0 ;
	setAttr ".tk[52]" -type "float3" -0.4557786 -0.30799288 0 ;
	setAttr ".tk[53]" -type "float3" -0.35922056 -0.68377608 0 ;
	setAttr ".tk[54]" -type "float3" 0.054387502 -0.81520528 0 ;
	setAttr ".tk[55]" -type "float3" -0.054387502 -0.81520528 0 ;
	setAttr ".tk[56]" -type "float3" 0.35922056 -0.68377608 0 ;
	setAttr ".tk[57]" -type "float3" 0.4557786 -0.30799288 0 ;
	setAttr ".tk[58]" -type "float3" 0.5767706 -0.063638926 0 ;
	setAttr ".tk[59]" -type "float3" 0.47396496 0.1478578 0 ;
	setAttr ".tk[60]" -type "float3" 0.53703815 0.35935456 0 ;
	setAttr ".tk[61]" -type "float3" 0.36585233 0.71663344 0 ;
	setAttr ".tk[62]" -type "float3" 0.5432905 0.81520528 0 ;
	setAttr ".tk[63]" -type "float3" -0.5432905 0.81520528 0 ;
	setAttr ".tk[64]" -type "float3" -0.32604858 0.71663344 0 ;
	setAttr ".tk[65]" -type "float3" -0.53703815 0.35935453 0 ;
	setAttr ".tk[66]" -type "float3" -0.47396496 0.14785783 0 ;
	setAttr ".tk[67]" -type "float3" -0.5767706 -0.063638888 0 ;
	setAttr ".tk[68]" -type "float3" -0.4557786 -0.30799288 0 ;
	setAttr ".tk[69]" -type "float3" -0.35922056 -0.68377608 0 ;
	setAttr ".tk[70]" -type "float3" 0.054387502 -0.81520528 0 ;
	setAttr ".tk[71]" -type "float3" -0.054387502 -0.81520528 0 ;
	setAttr ".tk[72]" -type "float3" 0.35922056 -0.68377608 0 ;
	setAttr ".tk[73]" -type "float3" 0.4557786 -0.30799288 0 ;
	setAttr ".tk[74]" -type "float3" 0.5767706 -0.063638888 0 ;
	setAttr ".tk[75]" -type "float3" 0.47396496 0.14785783 0 ;
	setAttr ".tk[76]" -type "float3" 0.53703815 0.35935453 0 ;
	setAttr ".tk[77]" -type "float3" 0.32604867 0.71663344 0 ;
	setAttr ".tk[78]" -type "float3" 0.5432905 0.81520528 0 ;
	setAttr ".tk[79]" -type "float3" -0.5432905 0.81520528 0 ;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:84]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n"
		+ "                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n"
		+ "                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n"
		+ "            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n"
		+ "            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n"
		+ "            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n"
		+ "                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n"
		+ "                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n"
		+ "            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n"
		+ "            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n"
		+ "                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n"
		+ "            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n"
		+ "            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n"
		+ "                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n"
		+ "                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"quad\\\" -ps 1 50 50 -ps 2 50 50 -ps 3 50 50 -ps 4 50 50 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Top View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Top View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera top` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Side View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Side View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera side` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Front View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Front View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera front` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.18145161290322553 3.1451612903225827 0.15120967741933369 1;
	setAttr ".a" 180;
createNode polyCube -n "polyCube2";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 2.644836272040302;
	setAttr ".h" 1.2846347607052908;
	setAttr ".d" 0.60453400503778376;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 0.97920410845856187 0 0.33971859260957255 0 -0 0.57676269283540749 0 0
		 -0.49679841251239948 -0 1.4319706286046983 0 -1.3904842688792074 3.8887303162428624 3.5516372795969575 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3904843 3.5182657 3.5516374 ;
	setAttr ".rs" 52548;
	setAttr ".lt" -type "double3" -4.4408920985006262e-016 3.2670981540219666e-016 0.52862979709638358 ;
	setAttr ".ls" -type "double3" 0.77975616918728297 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.8355673021204861 3.5182656291032246 2.669549863874372 ;
	setAttr ".cbx" -type "double3" 0.054598734750578304 3.5182656291032246 4.4337247806716436 ;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0 0 5.9604645e-008 0 0 1.4901161e-008
		 0.50202137 0 0 -0.50202137 0 -1.3322676e-015 0.50202137 0 0 -0.50202137 0 -1.3322676e-015
		 0 0 5.9604645e-008 0 0 1.4901161e-008;
createNode polyCube -n "polyCube3";
	setAttr ".ax" -type "double3" 0 0 1 ;
	setAttr ".w" 8.2367758186397992;
	setAttr ".h" 2.9471032745591716;
	setAttr ".d" 3.7027707808564241;
	setAttr ".sw" 5;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode mia_material_x -n "mia_material_x1";
	setAttr ".S01" -type "float3" 0.671 0.671 0.671 ;
	setAttr ".S04" -type "float3" 1 0.97982007 0.75300002 ;
createNode shadingEngine -n "mia_material_x1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode polyCube -n "polyCube4";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 9.9748110831234236;
	setAttr ".h" 7.254408060453402;
	setAttr ".d" 3.9294710327455951;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[43]" "f[52]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.41561712846347554 -4.7391579186968684 -0.5576757108849788 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.41561714 -1.7373378 -0.55767572 ;
	setAttr ".rs" 54686;
	setAttr ".lt" -type "double3" -3.9968028886505635e-015 1.6381204674605382e-015 11.811437712598984 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -6.2920192278902842 -3.2337580955080858 -1.9756617462319637 ;
	setAttr ".cbx" -type "double3" 7.1232534848172353 -0.24091744781063618 0.86031032446200606 ;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[0]" -type "float3" 0.75566757 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.90680099 -1.5113351 1.1335013 ;
	setAttr ".tk[2]" -type "float3" 0.90680099 -1.5113351 1.1335013 ;
	setAttr ".tk[3]" -type "float3" -0.75566757 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.075566694 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.90680099 0 1.1335013 ;
	setAttr ".tk[6]" -type "float3" 0.90680099 0 1.1335013 ;
	setAttr ".tk[7]" -type "float3" 0.075566694 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.83123434 0 0 ;
	setAttr ".tk[9]" -type "float3" -0.90680099 0 1.1335013 ;
	setAttr ".tk[10]" -type "float3" 0.90680099 0 1.1335013 ;
	setAttr ".tk[11]" -type "float3" 0.83123434 0 0 ;
	setAttr ".tk[13]" -type "float3" -0.90680099 1.4357686 1.1335013 ;
	setAttr ".tk[14]" -type "float3" 0.90680099 1.4357685 1.1335013 ;
	setAttr ".tk[16]" -type "float3" -0.69144142 0.87103677 0.76307416 ;
	setAttr ".tk[17]" -type "float3" 0.098777361 2.6480365 0.15564917 ;
	setAttr ".tk[18]" -type "float3" -0.098777436 2.6480362 0.15564917 ;
	setAttr ".tk[19]" -type "float3" 0.69144142 0.87103677 0.76307416 ;
	setAttr ".tk[20]" -type "float3" -0.69144142 0.87103677 -0.76307416 ;
	setAttr ".tk[21]" -type "float3" 0.098777361 2.6480365 -0.15564916 ;
	setAttr ".tk[22]" -type "float3" -0.098777436 2.6480362 -0.15564916 ;
	setAttr ".tk[23]" -type "float3" 0.69144142 0.87103677 -0.76307416 ;
	setAttr ".tk[25]" -type "float3" -1.4357684 1.4357686 -0.75566745 ;
	setAttr ".tk[26]" -type "float3" 1.4357684 1.4357685 -0.75566745 ;
	setAttr ".tk[28]" -type "float3" -0.83123434 0 0 ;
	setAttr ".tk[29]" -type "float3" -1.4357684 0 -1.6259103 ;
	setAttr ".tk[30]" -type "float3" 1.4357684 0 -1.6259103 ;
	setAttr ".tk[31]" -type "float3" 0.83123434 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.075566694 0 0 ;
	setAttr ".tk[33]" -type "float3" -1.4357684 0 -1.6259103 ;
	setAttr ".tk[34]" -type "float3" 1.4357684 0 -1.6259103 ;
	setAttr ".tk[35]" -type "float3" 0.075566694 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.75566757 0 0 ;
	setAttr ".tk[37]" -type "float3" -1.4357684 -1.5113351 -0.75566745 ;
	setAttr ".tk[38]" -type "float3" 1.4357684 -1.5113351 -0.75566745 ;
	setAttr ".tk[39]" -type "float3" -0.75566757 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.2438211 -0.85307705 -0.15564917 ;
	setAttr ".tk[41]" -type "float3" -1.1538457 -2.723603 -0.80496347 ;
	setAttr ".tk[42]" -type "float3" 1.1538454 -2.723603 -0.80496347 ;
	setAttr ".tk[43]" -type "float3" -0.2438211 -0.85307705 -0.15564917 ;
	setAttr ".tk[44]" -type "float3" 0.2438211 -0.85307705 0.15564916 ;
	setAttr ".tk[45]" -type "float3" -1.1538457 -2.723603 0.80496341 ;
	setAttr ".tk[46]" -type "float3" 1.1538454 -2.723603 0.80496341 ;
	setAttr ".tk[47]" -type "float3" -0.2438211 -0.85307705 0.15564916 ;
	setAttr ".tk[48]" -type "float3" 0.78496766 -0.27837253 -0.15564917 ;
	setAttr ".tk[49]" -type "float3" 0.78496766 -0.27837253 0.15564916 ;
	setAttr ".tk[50]" -type "float3" 1.7202306 0.296332 -0.76307416 ;
	setAttr ".tk[51]" -type "float3" 1.7202306 0.296332 0.76307416 ;
	setAttr ".tk[52]" -type "float3" -0.78496766 -0.27837253 -0.15564917 ;
	setAttr ".tk[53]" -type "float3" -0.78496766 -0.27837253 0.15564916 ;
	setAttr ".tk[54]" -type "float3" -1.7202306 0.296332 -0.76307416 ;
	setAttr ".tk[55]" -type "float3" -1.7202306 0.296332 0.76307416 ;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 2 "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.41561712846347554 -4.7391579186968684 -0.5576757108849788 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.41561714 -10.154702 -0.55767596 ;
	setAttr ".rs" 50993;
	setAttr ".lt" -type "double3" 0 1.4500623843753053e-015 10.765343125407874 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.5527356661837413 -11.089965585475436 -2.6321839010400083 ;
	setAttr ".cbx" -type "double3" 5.3839699231106923 -9.21943831801938 1.5168320024328923 ;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[40]" -type "float3" -0.22476812 0 -0.34126025 ;
	setAttr ".tk[41]" -type "float3" 0.63739556 0 -0.61463284 ;
	setAttr ".tk[42]" -type "float3" -0.63739556 0 -0.61463284 ;
	setAttr ".tk[43]" -type "float3" 0.22476812 0 -0.34126025 ;
	setAttr ".tk[44]" -type "float3" -0.22476812 0 0.34126022 ;
	setAttr ".tk[45]" -type "float3" 0.63739556 0 0.61463273 ;
	setAttr ".tk[46]" -type "float3" -0.63739556 0 0.61463273 ;
	setAttr ".tk[47]" -type "float3" 0.22476812 0 0.34126022 ;
	setAttr ".tk[56]" -type "float3" -0.53027052 -3.5474105 0.32511395 ;
	setAttr ".tk[57]" -type "float3" -0.53027052 -3.5474105 -0.32511389 ;
	setAttr ".tk[58]" -type "float3" 0.5302704 -4.101335 0.32511389 ;
	setAttr ".tk[59]" -type "float3" 0.5302704 -4.101335 -0.32511395 ;
	setAttr ".tk[60]" -type "float3" 0.53027064 -3.547411 0.32511395 ;
	setAttr ".tk[61]" -type "float3" 0.53027064 -3.547411 -0.32511389 ;
	setAttr ".tk[62]" -type "float3" -0.53027064 -4.1013355 -0.32511395 ;
	setAttr ".tk[63]" -type "float3" -0.53027064 -4.1013355 0.32511389 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[116:117]" "e[119]" "e[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.41561712846347548 -7.0302536110350076 -1.3351375675342927 1;
	setAttr ".wt" 0.51819145679473877;
	setAttr ".dr" no;
	setAttr ".re" 119;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[64:71]" -type "float3"  6.94621801 -1.011469722 0.4319396
		 6.25031376 1.011469483 0.77795249 6.25031328 1.011469364 -0.77795249 6.94621849 -1.011469245
		 -0.43193969 -6.25031376 1.011469483 0.77795249 -6.94621801 -1.011469722 0.4319396
		 -6.94621849 -1.011469245 -0.43193969 -6.25031328 1.011469364 -0.77795249;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[108:109]" "e[111]" "e[113]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.41561712846347548 -7.0302536110350076 -1.3351375675342927 1;
	setAttr ".wt" 0.39454165101051331;
	setAttr ".re" 113;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[124:125]" "e[127]" "e[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.41561712846347548 -7.0302536110350076 -1.3351375675342927 1;
	setAttr ".wt" 0.51631516218185425;
	setAttr ".dr" no;
	setAttr ".re" 129;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[132:133]" "e[135]" "e[137]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.41561712846347548 -7.0302536110350076 -1.3351375675342927 1;
	setAttr ".wt" 0.38074168562889099;
	setAttr ".re" 137;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.18145161290322553 3.1451612903225827 0.15120967741933369 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.41561712846347548 -7.0302536110350076 -1.3351375675342927 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 82 ".tk";
	setAttr ".tk[0]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[1]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[4]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.95283425 0 0.75762999 ;
	setAttr ".tk[6]" -type "float3" -0.95283425 0 0.75762999 ;
	setAttr ".tk[7]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.75762999 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.75762999 ;
	setAttr ".tk[32]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[35]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[37]" -type "float3" 0.95283425 1.2776352 0 ;
	setAttr ".tk[38]" -type "float3" -0.95283425 1.2776352 0 ;
	setAttr ".tk[39]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.94600499 0 0 ;
	setAttr ".tk[41]" -type "float3" 1.5636425 1.2776352 0 ;
	setAttr ".tk[42]" -type "float3" -1.5636425 1.2776352 0 ;
	setAttr ".tk[43]" -type "float3" -0.94600499 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.94600499 0 0 ;
	setAttr ".tk[45]" -type "float3" 1.5636425 0 0 ;
	setAttr ".tk[46]" -type "float3" -1.5636425 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.94600499 0 0 ;
	setAttr ".tk[48]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[49]" -type "float3" -0.95283425 0 0 ;
	setAttr ".tk[52]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[53]" -type "float3" 0.95283425 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.0056299265 1.2619232 0.38758147 ;
	setAttr ".tk[57]" -type "float3" 0.0056299265 1.2619232 -0.38758144 ;
	setAttr ".tk[58]" -type "float3" -0.0056299265 0.39697397 0.38758144 ;
	setAttr ".tk[59]" -type "float3" -0.0056299265 0.39697397 -0.38758147 ;
	setAttr ".tk[60]" -type "float3" -0.0056308047 1.2619232 0.38758147 ;
	setAttr ".tk[61]" -type "float3" -0.0056308047 1.2619232 -0.38758144 ;
	setAttr ".tk[62]" -type "float3" 0.0056308047 0.39697373 -0.38758147 ;
	setAttr ".tk[63]" -type "float3" 0.0056308047 0.39697373 0.38758144 ;
	setAttr ".tk[64]" -type "float3" 1.8434911 0.020373505 0.19245784 ;
	setAttr ".tk[65]" -type "float3" 1.283793 -0.020373505 0.34662968 ;
	setAttr ".tk[66]" -type "float3" 1.2837932 -0.020373169 -0.34662962 ;
	setAttr ".tk[67]" -type "float3" 1.8434908 0.020373169 -0.19245787 ;
	setAttr ".tk[68]" -type "float3" -1.283793 -0.020373505 0.34662968 ;
	setAttr ".tk[69]" -type "float3" -1.8434911 0.020373505 0.19245784 ;
	setAttr ".tk[70]" -type "float3" -1.8434908 0.020373169 -0.19245787 ;
	setAttr ".tk[71]" -type "float3" -1.2837932 -0.020373169 -0.34662962 ;
	setAttr ".tk[72]" -type "float3" 0.9455905 -2.9802322e-008 0 ;
	setAttr ".tk[73]" -type "float3" 1.1156453 0.63436639 0 ;
	setAttr ".tk[74]" -type "float3" 1.1156453 0.63436639 0 ;
	setAttr ".tk[75]" -type "float3" 0.9455905 -2.9802322e-008 0 ;
	setAttr ".tk[76]" -type "float3" -1.1156454 0 0 ;
	setAttr ".tk[77]" -type "float3" -0.75875348 0.63436639 0 ;
	setAttr ".tk[78]" -type "float3" -0.75875348 0.63436639 0 ;
	setAttr ".tk[79]" -type "float3" -1.1156454 0 0 ;
	setAttr ".tk[80]" -type "float3" -0.9455896 -2.9802322e-008 0 ;
	setAttr ".tk[81]" -type "float3" -0.9455896 -2.9802322e-008 0 ;
	setAttr ".tk[82]" -type "float3" -1.1156459 0.63436639 0 ;
	setAttr ".tk[83]" -type "float3" -1.1156459 0.63436639 0 ;
	setAttr ".tk[84]" -type "float3" 1.1156458 0 0 ;
	setAttr ".tk[85]" -type "float3" 1.1156458 0 0 ;
	setAttr ".tk[86]" -type "float3" 0.75875318 0.63436639 0 ;
	setAttr ".tk[87]" -type "float3" 0.75875318 0.63436639 0 ;
	setAttr ".tk[88]" -type "float3" 1.4752264 0.74923193 0 ;
	setAttr ".tk[89]" -type "float3" 1.2435219 1.0289721 0 ;
	setAttr ".tk[90]" -type "float3" 1.2435219 1.0289721 0 ;
	setAttr ".tk[91]" -type "float3" 1.4752264 0.74923247 0 ;
	setAttr ".tk[92]" -type "float3" 1.5636423 -1.0289721 0 ;
	setAttr ".tk[93]" -type "float3" 1.1551058 -0.38779968 0 ;
	setAttr ".tk[94]" -type "float3" 1.1551058 -0.38779968 0 ;
	setAttr ".tk[95]" -type "float3" 1.5636423 -1.028972 0 ;
	setAttr ".tk[96]" -type "float3" -1.2435219 1.0289721 0 ;
	setAttr ".tk[97]" -type "float3" -1.4752264 0.74923193 0 ;
	setAttr ".tk[98]" -type "float3" -1.4752264 0.74923247 0 ;
	setAttr ".tk[99]" -type "float3" -1.2435219 1.0289721 0 ;
	setAttr ".tk[100]" -type "float3" -1.1551058 -0.38779968 0 ;
	setAttr ".tk[101]" -type "float3" -1.5636423 -1.0289721 0 ;
	setAttr ".tk[102]" -type "float3" -1.5636423 -1.028972 0 ;
	setAttr ".tk[103]" -type "float3" -1.1551058 -0.38779968 0 ;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.18145161290322548 3.1451612903225827 0.9970280696592182 1;
	setAttr ".a" 180;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr -s 5 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
createNode materialInfo -n "materialInfo2";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:77]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:101]";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode polySoftEdge -n "polySoftEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[55]" "vtx[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[54]" "vtx[97]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 2 "f[52]" "f[91]";
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:179]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode displayLayer -n "layer1";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:45]";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:55]";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.21600001 0.071495995 0.071495995 ;
select -ne :initialShadingGroup;
	setAttr -s 9 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 7 ".gn";
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
select -ne :defaultHardwareRenderGlobals;
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "groupParts5.og" "polySurfaceShape1.i";
connectAttr "groupId5.id" "polySurfaceShape1.iog.og[1].gid";
connectAttr "lambert2SG.mwc" "polySurfaceShape1.iog.og[1].gco";
connectAttr "groupId6.id" "polySurfaceShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "polyExtrudeFace4.out" "pCubeShape2.i";
connectAttr "groupId10.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts8.og" "pCubeShape4.i";
connectAttr "groupId11.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "groupId12.id" "pPlaneShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pPlaneShape2.iog.og[0].gco";
connectAttr "groupId13.id" "pPlaneShape2.ciog.cog[0].cgid";
connectAttr "groupId7.id" "pCubeShape5.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts6.og" "pCubeShape5.i";
connectAttr "groupId8.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "layer1.di" "|polySurface1.do";
connectAttr "polySoftEdge5.out" "polySurface1Shape.i";
connectAttr "groupId9.id" "polySurface1Shape.iog.og[0].gid";
connectAttr "lambert2SG.mwc" "polySurface1Shape.iog.og[0].gco";
connectAttr "groupParts9.og" "pCube6Shape.i";
connectAttr "groupId14.id" "pCube6Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube6Shape.iog.og[0].gco";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak2.ip";
connectAttr "polySplitRing2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polyTweak4.out" "polyChipOff1.ip";
connectAttr "pCubeShape1.wm" "polyChipOff1.mp";
connectAttr "polySplitRing3.out" "polyTweak4.ip";
connectAttr "pCubeShape1.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "polySoftEdge1.ip";
connectAttr "polySurfaceShape1.wm" "polySoftEdge1.mp";
connectAttr "polyTweak7.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyCube2.out" "polyTweak7.ip";
connectAttr "mia_material_x1.msg" "mia_material_x1SG.mips";
connectAttr "mia_material_x1.msg" "mia_material_x1SG.miss";
connectAttr "mia_material_x1.msg" "mia_material_x1SG.mims";
connectAttr "mia_material_x1SG.msg" "materialInfo1.sg";
connectAttr "mia_material_x1.msg" "materialInfo1.m";
connectAttr "polyTweak8.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace5.mp";
connectAttr "polyCube4.out" "polyTweak8.ip";
connectAttr "polyTweak9.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak9.ip";
connectAttr "polyTweak10.out" "polySplitRing4.ip";
connectAttr "pCubeShape5.wm" "polySplitRing4.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak10.ip";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape5.wm" "polySplitRing5.mp";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape5.wm" "polySplitRing6.mp";
connectAttr "polySplitRing6.out" "polySplitRing7.ip";
connectAttr "pCubeShape5.wm" "polySplitRing7.mp";
connectAttr "polySoftEdge1.out" "polySoftEdge2.ip";
connectAttr "polySurfaceShape1.wm" "polySoftEdge2.mp";
connectAttr "polyTweak11.out" "polySoftEdge3.ip";
connectAttr "pCubeShape5.wm" "polySoftEdge3.mp";
connectAttr "polySplitRing7.out" "polyTweak11.ip";
connectAttr "polySoftEdge2.out" "polySoftEdge4.ip";
connectAttr "polySurfaceShape1.wm" "polySoftEdge4.mp";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "polySurfaceShape1.iog.og[1]" "lambert2SG.dsm" -na;
connectAttr "polySurfaceShape1.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape5.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" "lambert2SG.dsm" -na;
connectAttr "polySurface1Shape.iog.og[0]" "lambert2SG.dsm" -na;
connectAttr "groupId5.msg" "lambert2SG.gn" -na;
connectAttr "groupId6.msg" "lambert2SG.gn" -na;
connectAttr "groupId7.msg" "lambert2SG.gn" -na;
connectAttr "groupId8.msg" "lambert2SG.gn" -na;
connectAttr "groupId9.msg" "lambert2SG.gn" -na;
connectAttr "lambert2SG.msg" "materialInfo2.sg";
connectAttr "lambert2.msg" "materialInfo2.m";
connectAttr "polySoftEdge4.out" "groupParts5.ig";
connectAttr "groupId5.id" "groupParts5.gi";
connectAttr "polySoftEdge3.out" "groupParts6.ig";
connectAttr "groupId7.id" "groupParts6.gi";
connectAttr "polyMergeVert4.out" "polySoftEdge5.ip";
connectAttr "polySurface1Shape.wm" "polySoftEdge5.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "polySurface1Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "polySurface1Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "polySurface1Shape.wm" "polyMergeVert2.mp";
connectAttr "deleteComponent3.og" "polyMergeVert1.ip";
connectAttr "polySurface1Shape.wm" "polyMergeVert1.mp";
connectAttr "groupParts7.og" "deleteComponent3.ig";
connectAttr "polyUnite1.out" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "polySurfaceShape1.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape5.o" "polyUnite1.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape5.wm" "polyUnite1.im[1]";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "pCubeShape4.o" "polyUnite2.ip[0]";
connectAttr "pPlaneShape2.o" "polyUnite2.ip[1]";
connectAttr "pCubeShape4.wm" "polyUnite2.im[0]";
connectAttr "pPlaneShape2.wm" "polyUnite2.im[1]";
connectAttr "polyCube3.out" "groupParts8.ig";
connectAttr "groupId10.id" "groupParts8.gi";
connectAttr "polyUnite2.out" "groupParts9.ig";
connectAttr "groupId14.id" "groupParts9.gi";
connectAttr "mia_material_x1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x1.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube6Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
// End of earth_character.ma
