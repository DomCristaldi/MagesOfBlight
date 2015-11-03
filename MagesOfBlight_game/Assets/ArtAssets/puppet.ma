//Maya ASCII 2015 scene
//Name: puppet.ma
//Last modified: Mon, Nov 02, 2015 09:24:57 PM
//Codeset: 1252
requires maya "2015";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.14440908594591706 4.5953490606613148 41.369987715502766 ;
	setAttr ".r" -type "double3" -6.3383527279931613 -0.19999999998637635 -1.0871102739386584e-017 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 41.624679825239589;
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
	setAttr ".ow" 30;
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
	setAttr ".ow" 30;
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
	setAttr ".ow" 40.970934145169039;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0.16617002618563825 2.2205509722093799 -0.010040130463465857 ;
	setAttr ".s" -type "double3" 0.50110004129411045 0.60520019756058363 0.65394397766065004 ;
createNode transform -n "transform1" -p "pCube1";
	setAttr ".v" no;
createNode mesh -n "pCubeShape1" -p "transform1";
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
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" 0.18041331081003065 6.8477849424393646 0.023553898665331162 ;
	setAttr ".s" -type "double3" 0.41441055682227923 0.59273569712738039 0.24602452793725263 ;
createNode transform -n "transform2" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.87499991059303284 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".pt[0:55]" -type "float3"  -0.082593769 -0.081085682 
		0.19971964 0 -0.59422529 1.4636183 0 -0.59422529 1.4636183 0.082593769 -0.081085682 
		0.19971964 -0.57005513 -0.18654872 1.3784475 0 -0.57911378 4.2791915 0 -0.57911378 
		4.2791915 0.57005513 -0.18654872 1.3784475 -0.57005513 0.18654878 1.3784475 0 0.57911372 
		4.2791915 0 0.57911372 4.2791915 0.57005513 0.18654878 1.3784475 -0.082593769 0.081085682 
		0.19971964 0 0.59422529 1.4636183 0 0.59422529 1.4636183 0.082593769 0.081085682 
		0.19971964 -0.60527724 0.59422529 0.4878726 0 1.7373414 1.4263972 0 1.7373414 1.4263972 
		0.60527724 0.59422529 0.4878726 -0.60527724 0.59422529 -0.48787269 0 1.7373414 -1.4263982 
		0 1.7373414 -1.4263982 0.60527724 0.59422529 -0.48787269 -0.082593769 0.081085682 
		-0.19971964 0 0.59422529 -1.4636183 0 0.59422529 -1.4636183 0.082593769 0.081085682 
		-0.19971964 -0.57005513 0.18654872 -1.3784475 0 0.57911378 -4.2791915 0 0.57911378 
		-4.2791915 0.57005513 0.18654872 -1.3784475 -0.57005513 -0.18654878 -1.3784475 0 
		-0.57911372 -4.2791915 0 -0.57911372 -4.2791915 0.57005513 -0.18654878 -1.3784475 
		-0.082593769 -0.081085682 -0.19971964 0 -0.59422529 -1.4636183 0 -0.59422529 -1.4636183 
		0.082593769 -0.081085682 -0.19971964 -0.60527724 -0.59422529 -0.4878726 0 -1.7373414 
		-1.4263972 0 -1.7373414 -1.4263972 0.60527724 -0.59422529 -0.4878726 -0.60527724 
		-0.59422529 0.48787269 0 -1.7373414 1.4263982 0 -1.7373414 1.4263982 0.60527724 -0.59422529 
		0.48787269 1.7696539 -0.57911378 -1.4263972 1.7696539 -0.57911378 1.4263982 1.7696539 
		0.57911372 -1.4263972 1.7696539 0.57911372 1.4263982 -1.7696539 -0.57911378 -1.4263972 
		-1.7696539 -0.57911378 1.4263982 -1.7696539 0.57911372 -1.4263972 -1.7696539 0.57911372 
		1.4263982;
createNode transform -n "pCube3";
	setAttr ".s" -type "double3" 1 1 0.76384132481516431 ;
createNode mesh -n "pCube3Shape" -p "pCube3";
	setAttr -k off ".v";
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.11147227883338928 0.49364638328552246 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" 0.099713287539874962 8.177354411576836 1.6017255220825484 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.66113390165807306 0.66113390165807306 0.66113390165807306 ;
createNode mesh -n "pCubeShape3" -p "pCube4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane2";
	setAttr ".t" -type "double3" 0.036600340235169782 8.9358313159115035 1.6198834468926484 ;
	setAttr ".s" -type "double3" 0.84766923816802708 1 1 ;
createNode mesh -n "pPlaneShape2" -p "pPlane2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000005960464478 2.7292258143424988 ;
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
	setAttr ".pv" -type "double2" 0.5 0 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 28 ".uvst[0].uvsp[0:27]" -type "float2" 0 0 1 0 0 0.54545456
		 1 0.54545456 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0.69606179 0 0 ;
	setAttr ".pt[1]" -type "float3" -0.69606179 0 0 ;
	setAttr ".pt[2]" -type "float3" 0.54428244 0 0 ;
	setAttr ".pt[3]" -type "float3" -0.54428244 0 0 ;
	setAttr ".pt[4]" -type "float3" 0.080110915 0 0 ;
	setAttr ".pt[9]" -type "float3" 0.027367286 0 0 ;
	setAttr ".pt[10]" -type "float3" -0.060846172 0 0 ;
	setAttr ".pt[15]" -type "float3" -0.019340102 0 0 ;
	setAttr -s 16 ".vt[0:15]"  -1.25316441 -0.68354416 0 1.25316441 -0.68354416 0
		 -1.25316441 0.68354416 0 1.25316441 0.68354416 0 -1.20868444 2.73955727 -0.16846657
		 -1.086710334 4.075222969 -0.70073795 -0.96436971 4.26894665 -1.58337212 -0.84202909 3.64930534 -2.33611774
		 -0.71968848 2.90428925 -2.42147207 -0.59734786 2.33896923 -1.87537289 1.050286174 2.80515289 -0.10701942
		 0.92831188 4.10045147 -0.63832903 0.80597121 4.32656479 -1.57003975 0.68363059 3.68889618 -2.36821461
		 0.56128997 2.90933514 -2.46396637 0.43894935 2.31503296 -1.90038395;
	setAttr -s 22 ".ed[0:21]"  0 1 0 0 2 0 1 3 0 2 3 1 2 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 3 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 4 10 1 5 11 0 6 12 0
		 7 13 0 8 14 0 9 15 0;
	setAttr -s 7 -ch 28 ".fc[0:6]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 3 10 -17 -5
		mu 0 4 4 5 6 7
		f 4 16 11 -18 -6
		mu 0 4 8 9 10 11
		f 4 17 12 -19 -7
		mu 0 4 12 13 14 15
		f 4 18 13 -20 -8
		mu 0 4 16 17 18 19
		f 4 19 14 -21 -9
		mu 0 4 20 21 22 23
		f 4 20 15 -22 -10
		mu 0 4 24 25 26 27;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".w" 6.2680903848123419;
	setAttr ".h" 4.4411019444187598;
	setAttr ".d" 5.6444297130253318;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[30]" "f[32]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16616997 -4.1737152e-008 -0.01004017 ;
	setAttr ".rs" 53437;
	setAttr ".lt" -type "double3" 0 -8.7107161349483513e-019 3.2304854577939484 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4043001148954042 -4.1737153289034268e-008 -0.62523028961136684 ;
	setAttr ".cbx" -type "double3" 1.7366400477951209 -4.1737153289034268e-008 0.60514995072823807 ;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[47]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 2 "vtx[0]" "vtx[44]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[36]" "vtx[40]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[42]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[43]" "f[52]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16617003 3.7009182 -0.01004013 ;
	setAttr ".rs" 53644;
	setAttr ".lt" -type "double3" 2.4424906541753444e-015 -7.4454683870713391e-016 4.0736425781219445 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.324828350123801 2.9607345640520313 -0.47486724650581963 ;
	setAttr ".cbx" -type "double3" 1.6571684024950775 4.4411019861559131 0.45478698557888791 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0.40962881 0 ;
	setAttr ".tk[2]" -type "float3" 0 0.40962881 0 ;
	setAttr ".tk[8]" -type "float3" 0.15859479 0 -0.6897977 ;
	setAttr ".tk[9]" -type "float3" 0.052864939 0 -0.6897977 ;
	setAttr ".tk[10]" -type "float3" -0.052864932 0 -0.6897977 ;
	setAttr ".tk[11]" -type "float3" -0.15859479 0 -0.6897977 ;
	setAttr ".tk[12]" -type "float3" 1.2558851 0 -1.3753581 ;
	setAttr ".tk[13]" -type "float3" 0.41862845 0 -1.3753581 ;
	setAttr ".tk[14]" -type "float3" -0.41862845 0 -1.3753581 ;
	setAttr ".tk[15]" -type "float3" -1.255885 0 -1.3753581 ;
	setAttr ".tk[16]" -type "float3" 1.2558851 0 -0.45845276 ;
	setAttr ".tk[17]" -type "float3" 0.41862845 0 -0.45845276 ;
	setAttr ".tk[18]" -type "float3" -0.41862845 0 -0.45845276 ;
	setAttr ".tk[19]" -type "float3" -1.255885 0 -0.45845276 ;
	setAttr ".tk[20]" -type "float3" 1.2558851 0 0.4584527 ;
	setAttr ".tk[21]" -type "float3" 0.41862845 0 0.4584527 ;
	setAttr ".tk[22]" -type "float3" -0.41862845 0 0.4584527 ;
	setAttr ".tk[23]" -type "float3" -1.255885 0 0.4584527 ;
	setAttr ".tk[24]" -type "float3" 1.2558851 0 1.3753581 ;
	setAttr ".tk[25]" -type "float3" 0.41862845 0 1.3753581 ;
	setAttr ".tk[26]" -type "float3" -0.41862845 0 1.3753581 ;
	setAttr ".tk[27]" -type "float3" -1.255885 0 1.3753581 ;
	setAttr ".tk[28]" -type "float3" 0.15859479 0 0.6897977 ;
	setAttr ".tk[29]" -type "float3" 0.052864939 0 0.6897977 ;
	setAttr ".tk[30]" -type "float3" -0.052864932 0 0.6897977 ;
	setAttr ".tk[31]" -type "float3" -0.15859479 0 0.6897977 ;
	setAttr ".tk[37]" -type "float3" 0 0.40962881 0 ;
	setAttr ".tk[38]" -type "float3" 0 0.40962881 0 ;
	setAttr ".tk[46]" -type "float3" -0.15859479 0 0.22993255 ;
	setAttr ".tk[47]" -type "float3" -0.15859479 0 -0.22993255 ;
	setAttr ".tk[50]" -type "float3" 0.15859479 0 0.22993255 ;
	setAttr ".tk[51]" -type "float3" 0.15859479 0 -0.22993255 ;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 2 "vtx[20]" "vtx[24]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[46]" -type "float3" 0 0.75719708 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.75719708 0 ;
	setAttr ".tk[50]" -type "float3" 0 0.75719708 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.75719708 0 ;
	setAttr ".tk[60]" -type "float3" -1.067118 -0.6575107 0 ;
	setAttr ".tk[61]" -type "float3" -1.067118 -0.6575107 0 ;
	setAttr ".tk[62]" -type "float3" 0 -1.4147078 0 ;
	setAttr ".tk[63]" -type "float3" 0 -1.4147078 0 ;
	setAttr ".tk[64]" -type "float3" 1.067118 -0.6575107 0 ;
	setAttr ".tk[65]" -type "float3" 1.067118 -0.6575107 0 ;
	setAttr ".tk[66]" -type "float3" 0 -1.4147078 0 ;
	setAttr ".tk[67]" -type "float3" 0 -1.4147078 0 ;
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[23]" "vtx[26]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[15]" "vtx[19]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[12]" "vtx[16]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 1 0 0 0 0 0.65394397766065004 0
		 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".am" yes;
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
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n"
		+ "                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n"
		+ "                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n"
		+ "                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n"
		+ "                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n"
		+ "\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyCube -n "polyCube2";
	setAttr ".w" 7.5409511258224828;
	setAttr ".h" 4.9355059381911612;
	setAttr ".d" 12.15649313393126;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 0.50110004129411045 0 0 0 0 0.60520019756058363 0 0
		 0 0 0.65394397766065004 0 0.16617002618563825 2.2205509722093799 -0.010040130463465857 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16617003 4.0230875 -0.010040102 ;
	setAttr ".rs" 54482;
	setAttr ".lt" -type "double3" 0 -2.0075699032647983e-018 0.20970870893173643 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14754538471030321 4.0230876046519732 -0.32542782842212631 ;
	setAttr ".cbx" -type "double3" 0.47988543708157971 4.0230876046519732 0.30534762596234233 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk";
	setAttr ".tk[0]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".tk[1]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[2]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[3]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".tk[5]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".tk[6]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.013620668 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.013620668 0 ;
	setAttr ".tk[12]" -type "float3" 0 0.55225724 0 ;
	setAttr ".tk[13]" -type "float3" 0 0.58867681 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.58867681 0 ;
	setAttr ".tk[15]" -type "float3" 0 0.55225724 0 ;
	setAttr ".tk[16]" -type "float3" 0 0.75786287 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.75786287 0 ;
	setAttr ".tk[18]" -type "float3" 0 0.55225724 0 ;
	setAttr ".tk[19]" -type "float3" 0 0.75786287 0 ;
	setAttr ".tk[20]" -type "float3" 0 0.75786287 0 ;
	setAttr ".tk[21]" -type "float3" 0 0.55225724 0 ;
	setAttr ".tk[22]" -type "float3" 0 0.58867681 0 ;
	setAttr ".tk[23]" -type "float3" 0 0.58867681 0 ;
	setAttr ".tk[25]" -type "float3" 0 0.013620668 0 ;
	setAttr ".tk[26]" -type "float3" 0 0.013620668 0 ;
	setAttr ".tk[29]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".tk[30]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".tk[32]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".tk[33]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[34]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[35]" -type "float3" 0 5.9604645e-008 0 ;
	setAttr ".tk[36]" -type "float3" -0.001044319 -0.003229602 0.00094041153 ;
	setAttr ".tk[37]" -type "float3" 0.001044319 -0.003229602 0.00094041153 ;
	setAttr ".tk[38]" -type "float3" -0.001044319 -0.003229602 -0.00094041153 ;
	setAttr ".tk[39]" -type "float3" 0.001044319 -0.003229602 -0.00094041153 ;
	setAttr ".tk[40]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[41]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.16571966 0 ;
	setAttr ".tk[43]" -type "float3" 0 0.16571966 0 ;
	setAttr ".tk[44]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[45]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.16571966 0 ;
	setAttr ".tk[47]" -type "float3" 0 0.16571966 0 ;
	setAttr ".tk[48]" -type "float3" 0.5046013 0 0.45439455 ;
	setAttr ".tk[49]" -type "float3" -0.50460124 0 0.45439455 ;
	setAttr ".tk[50]" -type "float3" -0.50460124 0 -0.45439455 ;
	setAttr ".tk[51]" -type "float3" 0.5046013 0 -0.45439455 ;
	setAttr ".tk[52]" -type "float3" 0.50460124 0 0.45439455 ;
	setAttr ".tk[53]" -type "float3" -0.50460118 0 0.45439455 ;
	setAttr ".tk[54]" -type "float3" -0.50460118 0 -0.45439455 ;
	setAttr ".tk[55]" -type "float3" 0.50460124 0 -0.45439455 ;
	setAttr ".tk[56]" -type "float3" 0 0.040846366 0.32338792 ;
	setAttr ".tk[57]" -type "float3" 0 0.040846366 -0.32338792 ;
	setAttr ".tk[58]" -type "float3" 0 -0.040846381 0.21942043 ;
	setAttr ".tk[59]" -type "float3" 0 -0.040846381 -0.21942046 ;
	setAttr ".tk[60]" -type "float3" 0 0.040846366 0.32338792 ;
	setAttr ".tk[61]" -type "float3" 0 0.040846366 -0.32338792 ;
	setAttr ".tk[62]" -type "float3" 0 -0.040846381 -0.21942046 ;
	setAttr ".tk[63]" -type "float3" 0 -0.040846381 0.21942043 ;
createNode polyUnite -n "polyUnite1";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:53]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:73]";
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:127]";
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 2 "f[31]" "f[67]";
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[46]" "vtx[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[42]" "vtx[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[121]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[45]" "vtx[120]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[41]" -type "float3" 0 0 0.19579503 ;
	setAttr ".tk[42]" -type "float3" -0.062260482 0 0.19579503 ;
	setAttr ".tk[45]" -type "float3" 0 0 -0.19579503 ;
	setAttr ".tk[46]" -type "float3" -0.062260482 0 -0.19579503 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[232:233]" "e[235]" "e[237]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.45575740933418274;
	setAttr ".re" 235;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 104 ".tk[0:103]" -type "float3"  0.072173826 -0.23723243 -0.42367667
		 -0.1507079 -0.15761307 -0.51254648 0.07596039 -0.15761308 -0.51254648 -0.14692132
		 -0.23723243 -0.42367667 0.1140213 -0.56453228 -0.43173897 -0.1507079 -0.4751161 -0.61498356
		 0.07596039 -0.4751161 -0.61498356 -0.18876877 -0.56453228 -0.43173897 0.1140213 -0.77016211
		 -0.43028346 -0.1507079 -0.77016211 -0.61498356 0.07596039 -0.77016211 -0.61498356
		 -0.18876877 -0.77016211 -0.43028352 0.072173826 -0.805475 -0.41455761 -0.1507079
		 -0.91041762 -0.47144052 0.07596039 -0.91041762 -0.47144052 -0.14692132 -0.805475
		 -0.41455761 0.117045 -0.82957917 -0.39451855 -0.1507079 -1.13056993 -0.39451855 0.07596039
		 -1.13056993 -0.39451855 -0.19179256 -0.82957917 -0.39451855 0.117045 -0.83225238
		 -0.12789764 -0.1507079 -1.13056993 -0.023297342 0.07596039 -1.13056993 -0.023297342
		 -0.19179256 -0.83225238 -0.12789764 0.072173826 -0.84160495 0.043427516 -0.1507079
		 -1.0067546368 0.16125536 0.07596039 -1.0067546368 0.16125536 -0.14692132 -0.84160495
		 0.043427553 0.1140213 -0.80244303 0.046486508 -0.1507079 -0.72226548 0.34060779 0.07596039
		 -0.72226548 0.34060779 -0.18876877 -0.80244303 0.04648659 0.1140213 -0.56474918 0.057921097
		 -0.1507079 -0.47163269 0.34060782 0.07596039 -0.47163269 0.34060782 -0.18876877 -0.56474918
		 0.057921097 0.072173826 -0.23723243 0.043814421 -0.1507079 -0.15761308 0.17800757
		 0.07596039 -0.15761308 0.17800757 -0.14692132 -0.23723243 0.043814421 0.117045 -0.18611422
		 -0.12789764 -0.17068636 -3.7252903e-009 -0.26755384 0.1117871 0 -0.26755384 -0.19179256
		 -0.18611422 -0.12789764 0.117045 -0.18611422 -0.39451855 -0.17068636 -1.4901161e-008
		 -0.39451855 0.1117871 1.4901161e-008 -0.39451855 -0.19179256 -0.18611422 -0.39451855
		 -0.29175168 -0.4751161 -0.023297342 -0.29175168 -0.4751161 -0.39451855 -0.29175168
		 -0.77016211 -0.023297342 -0.29175168 -0.77016211 -0.39451855 0.21700418 -0.4751161
		 -0.023297342 0.21700418 -0.4751161 -0.39451855 0.21700418 -0.77016211 -0.023297342
		 0.21700418 -0.77016211 -0.39451855 -0.17826918 -2.9802322e-008 -0.036369566 -0.018166475
		 0 -0.24062161 0.018166479 0 -0.24062161 0.17826918 -2.9802322e-008 -0.036369596 -0.13401192
		 0 -0.061966714 -0.037999779 0 -0.18413825 0.037999824 0 -0.18413821 0.13401191 0
		 -0.061966773 -0.14617676 0 -0.00050087197 -0.039906461 1.8626451e-008 -0.020405745
		 0.039906446 1.8626451e-008 -0.020188158 0.14617674 -2.3283064e-010 -0.00050087197
		 -0.042549595 1.4901161e-008 -0.28810328 -0.13289313 1.4901161e-008 -0.2973105 0.085418642
		 1.4901161e-008 -0.29869825 -0.0054858872 1.4901161e-008 -0.27782393 -0.1807276 -1.4901161e-008
		 -0.37319282 0.11595225 -1.4901161e-008 -0.37480482 -0.045418549 9.3132257e-010 -0.13051856
		 -0.18089055 -7.4505806e-009 -0.26726872 0.11608229 -7.4505806e-009 -0.26856345 -0.005895176
		 9.3132257e-010 -0.12432583 -0.15771155 1.5017577e-008 -0.082770705 0.10118768 1.5017577e-008
		 -0.083393119 -0.14617676 0 0.00050087197 -0.044517968 1.8626451e-008 0.016892238
		 0.042236377 1.8626451e-008 0.016892238 0.14617674 0 0.00050087197 -0.13401192 -3.5527137e-015
		 0.061966602 -0.037999779 1.7763568e-015 0.18413825 0.037999824 1.7763568e-015 0.18413825
		 0.13401191 -3.5527137e-015 0.061966658 -0.17826918 -2.9802322e-008 0.03636951 -0.018166475
		 0 0.2406216 0.018166479 0 0.2406216 0.17826918 -2.9802322e-008 0.03636954 -0.091931656
		 -1.4901161e-008 0.024737466 0.091931641 -1.4901161e-008 0.024737466 -0.091931656
		 -1.4901161e-008 -0.024737466 0.091931641 -1.4901161e-008 -0.024737466 0.40730268
		 0 0 0.40730268 0 0 0.057395436 1.4901161e-008 -0.0084753726 0.05958388 1.4901161e-008
		 -0.038484171 -0.40730274 0 0 -0.40730274 0 0 -0.062739827 1.3038516e-008 -0.011481218
		 -0.06415756 1.4901161e-008 -0.045212228;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[224:225]" "e[227]" "e[229]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.45471373200416565;
	setAttr ".re" 229;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[232:233]" "e[235]" "e[237]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.81950908899307251;
	setAttr ".dr" no;
	setAttr ".re" 233;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[224:225]" "e[227]" "e[229]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.80573171377182007;
	setAttr ".dr" no;
	setAttr ".re" 225;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[95]" "f[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16617012 3.3478262 -0.010040134 ;
	setAttr ".rs" 57947;
	setAttr ".lt" -type "double3" -1.8735013540549517e-016 1.5244532235173596e-016 0.91609747024697785 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.6088294982910156 3.1537151336669922 -0.26338964700698853 ;
	setAttr ".cbx" -type "double3" 4.9411697387695313 3.5419373512268066 0.2433093786239624 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 2 "f[95]" "f[104]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.16617012 3.3834748 -0.010040045 ;
	setAttr ".rs" 50861;
	setAttr ".lt" -type "double3" 1.9428902930940239e-016 1.0566744808752895e-016 0.62456823739640843 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.5242328643798828 3.1893634796142578 -0.71049273014068604 ;
	setAttr ".cbx" -type "double3" 5.8565731048583984 3.5775861740112305 0.69041264057159424 ;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[136:143]" -type "float3"  0 0 -0.44710308 0 0 0.44710326
		 0 0 -0.30336192 0 0 0.30336204 0 0 -0.44710308 0 0 0.44710326 0 0 0.30336204 0 0
		 -0.30336192;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[284:285]" "e[287]" "e[289]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.46131420135498047;
	setAttr ".re" 284;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[144:151]" -type "float3"  0 0 0.2632744 0 0 -0.2632744
		 0 0 0.17863317 0 0 -0.17863317 0 0 0.2632744 0 0 -0.26327443 0 0 -0.17863317 0 0
		 0.17863317;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[276:277]" "e[279]" "e[281]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.40940514206886292;
	setAttr ".re" 277;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[208:209]" "e[211]" "e[213]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.29103937745094299;
	setAttr ".re" 213;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[41]" -type "float3" 0.14559492 0 0.032373555 ;
	setAttr ".tk[42]" -type "float3" -0.20782748 0 0.032373555 ;
	setAttr ".tk[45]" -type "float3" 0.14559492 0 -0.032373555 ;
	setAttr ".tk[46]" -type "float3" -0.20782748 0 -0.032373555 ;
	setAttr ".tk[136]" -type "float3" 0 -0.10086395 0 ;
	setAttr ".tk[137]" -type "float3" 0 -0.10086395 0 ;
	setAttr ".tk[138]" -type "float3" 0 0.12449627 0 ;
	setAttr ".tk[139]" -type "float3" 0 0.12449627 0 ;
	setAttr ".tk[140]" -type "float3" 0 -0.10086395 0 ;
	setAttr ".tk[141]" -type "float3" 0 -0.10086395 0 ;
	setAttr ".tk[142]" -type "float3" 0 0.12449627 0 ;
	setAttr ".tk[143]" -type "float3" 0 0.12449627 0 ;
	setAttr ".tk[160]" -type "float3" 5.9604645e-008 0 7.4505806e-009 ;
	setAttr ".tk[161]" -type "float3" -2.9802322e-008 2.9802322e-008 7.4505806e-009 ;
	setAttr ".tk[162]" -type "float3" 0 -7.4505806e-008 1.4901161e-008 ;
	setAttr ".tk[163]" -type "float3" 2.9802322e-008 -8.9406967e-008 0 ;
	setAttr ".tk[164]" -type "float3" 1.6763806e-008 -1.4901161e-008 0 ;
	setAttr ".tk[165]" -type "float3" 1.3969839e-008 -1.4901161e-008 0 ;
	setAttr ".tk[166]" -type "float3" 2.9802322e-008 -1.4901161e-008 0 ;
	setAttr ".tk[167]" -type "float3" 0 -1.4901161e-008 0 ;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[324:325]" "e[327]" "e[329]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.22275011241436005;
	setAttr ".re" 324;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[216:217]" "e[219]" "e[221]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.30607986450195313;
	setAttr ".re" 221;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[340:341]" "e[343]" "e[345]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.2505965530872345;
	setAttr ".re" 340;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[92]" -type "float3" 0 0 -0.41331336 ;
	setAttr ".tk[93]" -type "float3" 0 0 -0.41331336 ;
	setAttr ".tk[94]" -type "float3" 0 0 0.41331336 ;
	setAttr ".tk[95]" -type "float3" 0 0 0.41331336 ;
	setAttr ".tk[104]" -type "float3" 0.11326678 0 0.13310771 ;
	setAttr ".tk[105]" -type "float3" -0.11326676 0 0.13310771 ;
	setAttr ".tk[106]" -type "float3" -0.11326676 0 -0.13310771 ;
	setAttr ".tk[107]" -type "float3" 0.11326678 0 -0.13310771 ;
	setAttr ".tk[108]" -type "float3" -0.025825223 0 0.13310771 ;
	setAttr ".tk[109]" -type "float3" -0.25235865 0 0.13310771 ;
	setAttr ".tk[110]" -type "float3" -0.25235865 0 -0.13310771 ;
	setAttr ".tk[111]" -type "float3" -0.025825223 0 -0.13310771 ;
	setAttr ".tk[161]" -type "float3" 0 0 0.26428342 ;
	setAttr ".tk[162]" -type "float3" 0 0 -0.26428342 ;
	setAttr ".tk[165]" -type "float3" 0 0 0.17353833 ;
	setAttr ".tk[166]" -type "float3" 0 0 -0.1735383 ;
	setAttr ".tk[168]" -type "float3" 0 0 0.26216796 ;
	setAttr ".tk[171]" -type "float3" 0 0 -0.26216796 ;
	setAttr ".tk[172]" -type "float3" 0 0 0.17041141 ;
	setAttr ".tk[175]" -type "float3" 0 0 -0.17041135 ;
	setAttr ".tk[184]" -type "float3" -7.4505806e-009 -3.7252903e-009 0 ;
	setAttr ".tk[185]" -type "float3" 0 -3.7252903e-009 0 ;
	setAttr ".tk[186]" -type "float3" -7.4505806e-009 3.7252903e-009 0 ;
	setAttr ".tk[187]" -type "float3" 0 3.7252903e-009 0 ;
	setAttr ".tk[188]" -type "float3" -7.4505806e-009 -1.8626451e-009 0 ;
	setAttr ".tk[189]" -type "float3" 5.9604645e-008 -1.8626451e-009 0 ;
	setAttr ".tk[190]" -type "float3" -7.4505806e-009 1.8626451e-009 0 ;
	setAttr ".tk[191]" -type "float3" 0 1.8626451e-009 0 ;
createNode polyCube -n "polyCube3";
	setAttr ".w" 2.2266362284332191;
	setAttr ".h" 0.59311518925869622;
	setAttr ".d" 2.0938722192766228;
	setAttr ".sw" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16]";
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16]";
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
createNode polyMapCut -n "polyMapCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[9]";
createNode polyMapCut -n "polyMapCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19]";
createNode polyMapCut -n "polyMapCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20]";
createNode polyMapCut -n "polyMapCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16]";
createNode polyMapCut -n "polyMapCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[4]" -type "float2" -0.1626036 -1.0036566 ;
	setAttr ".uvtk[5]" -type "float2" -0.16260359 -1.0036566 ;
	setAttr ".uvtk[6]" -type "float2" -0.16260359 -1.0036566 ;
	setAttr ".uvtk[7]" -type "float2" 0 0.0019531026 ;
	setAttr ".uvtk[10]" -type "float2" 0 0.0019531623 ;
	setAttr ".uvtk[11]" -type "float2" 0 0.0019531623 ;
	setAttr ".uvtk[26]" -type "float2" -0.1626036 -1.0036566 ;
	setAttr ".uvtk[27]" -type "float2" 0 0.0019531026 ;
createNode polyMapSewMove -n "polyMapSewMove2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[17]";
createNode polyMapSewMove -n "polyMapSewMove3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16]";
createNode polyMapSewMove -n "polyMapSewMove4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
createNode polyMapSewMove -n "polyMapSewMove5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
createNode polyMapSewMove -n "polyMapSewMove6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[19]";
createNode polyMapSewMove -n "polyMapSewMove7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20]";
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 16 ".uvtk[0:15]" -type "float2" 0.0018827843 0.54698354 -0.84617591
		 0.54698378 0.0018828141 0.084406324 -0.84617579 0.084406324 0.0018828737 -4.15588665
		 -0.84617579 -4.15588665 -0.84617579 -0.76365221 0.0018828737 -0.76365221 0.0018828737
		 -5.0039448738 -0.84617579 -5.0039448738 -0.84617579 -1.61171079 0.0018828737 -1.61171079
		 0.0018828737 -3.30782866 -0.84617579 -3.30782866 -0.84617579 -2.45976973 0.0018828737
		 -2.45976973;
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:15]";
	setAttr ".ix" -type "matrix" 0.66113390165807306 0 0 0 0 1.4680121599621133e-016 0.66113390165807306 0
		 0 -0.66113390165807306 1.4680121599621133e-016 0 0.099713287539874962 8.177354411576836 1.6017255220825484 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.099713295698165894 8.1773548126220703 1.6017255783081055 ;
	setAttr ".ic" -type "double2" 0.50419865590768365 0.52099327936381878 ;
	setAttr ".ps" -type "double2" 1.878179132938385 1.8266372680664062 ;
	setAttr ".is" -type "double2" 0.18266164997091305 0.16586703327760188 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 11 ".tk";
	setAttr ".tk[1]" -type "float3" 0 -7.4505806e-009 0.33450648 ;
	setAttr ".tk[4]" -type "float3" 0 7.4505806e-009 0.33450648 ;
	setAttr ".tk[6]" -type "float3" -0.30710456 7.4505806e-009 0 ;
	setAttr ".tk[7]" -type "float3" 0 7.4505806e-009 0 ;
	setAttr ".tk[8]" -type "float3" 0.30710456 7.4505806e-009 0 ;
	setAttr ".tk[10]" -type "float3" 0 7.4505806e-009 -0.33450648 ;
	setAttr ".tk[13]" -type "float3" 0 -7.4505806e-009 -0.33450648 ;
	setAttr ".tk[15]" -type "float3" -0.30710456 -7.4505806e-009 0 ;
	setAttr ".tk[16]" -type "float3" 0 -7.4505806e-009 0 ;
	setAttr ".tk[17]" -type "float3" 0.30710456 -7.4505806e-009 0 ;
createNode polyMapCut -n "polyMapCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[0:1]" "e[8:9]" "e[24]" "e[26:27]" "e[29]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[0:25]" -type "float2" 0.017393496 0.361191 0.43912098
		 0.27968672 -0.050547961 0.32166582 0.034279585 0.34404022 0.3474848 0.18812773 -0.10888933
		 0.25912777 0.00057531777 0.23873201 0.091906175 0.29464936 -0.090755388 0.18281488
		 0.051698975 0.15579864 0.11004046 0.21833675 -0.033128511 0.13342419 0.27350223 0.11381973
		 0.36513838 0.20537882 -0.016242579 0.1162733 0.35631156 0.19675322 0.091906317 0.32182506
		 -0.090755388 0.15563931 0.26498073 0.10555907 -0.12577549 0.24197693 0.44764239 0.28794733
		 0.49065381 0.3310824 0.22196938 0.06242409 0.12692617 0.23548727 0.076581992 0.15579876
		 -0.075431094 0.32166564;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:181]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.76384132481516431 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.16617012023925781 3.5656535625457764 -0.086798369884490967 ;
	setAttr ".ps" -type "double2" 12.628995895385742 9.2881417274475098 ;
	setAttr ".is" -type "double2" 0.84884838732338819 0.63051828319678993 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 103 ".tk";
	setAttr ".tk[0]" -type "float3" 0 0 0.37798634 ;
	setAttr ".tk[1]" -type "float3" 0 0 0.44471163 ;
	setAttr ".tk[2]" -type "float3" 0 0 0.44471163 ;
	setAttr ".tk[3]" -type "float3" 0 0 0.37798634 ;
	setAttr ".tk[4]" -type "float3" 0 0 0.46269488 ;
	setAttr ".tk[5]" -type "float3" 0 0 0.62205929 ;
	setAttr ".tk[6]" -type "float3" 0 0 0.62205929 ;
	setAttr ".tk[7]" -type "float3" 0 0 0.46269488 ;
	setAttr ".tk[8]" -type "float3" 0 0 0.4631322 ;
	setAttr ".tk[9]" -type "float3" 0 0 0.62205929 ;
	setAttr ".tk[10]" -type "float3" 0 0 0.62205929 ;
	setAttr ".tk[11]" -type "float3" 0 0 0.46313226 ;
	setAttr ".tk[12]" -type "float3" 0 0 0.38072625 ;
	setAttr ".tk[13]" -type "float3" 0 0 0.45706213 ;
	setAttr ".tk[14]" -type "float3" 0 0 0.45706213 ;
	setAttr ".tk[15]" -type "float3" 0 0 0.38072625 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.10851362 ;
	setAttr ".tk[17]" -type "float3" 0 0 0.17788881 ;
	setAttr ".tk[18]" -type "float3" 0 0 0.17788881 ;
	setAttr ".tk[19]" -type "float3" 0 0 0.10851362 ;
	setAttr ".tk[20]" -type "float3" 0 0 -0.18303871 ;
	setAttr ".tk[21]" -type "float3" 0 0 -0.22098626 ;
	setAttr ".tk[22]" -type "float3" 0 0 -0.22098626 ;
	setAttr ".tk[23]" -type "float3" 0 0 -0.18303871 ;
	setAttr ".tk[24]" -type "float3" 0 0 -0.40979668 ;
	setAttr ".tk[25]" -type "float3" 0 0 -0.46782133 ;
	setAttr ".tk[26]" -type "float3" 0 0 -0.46782133 ;
	setAttr ".tk[27]" -type "float3" 0 0 -0.40979663 ;
	setAttr ".tk[28]" -type "float3" 0 0 -0.49600843 ;
	setAttr ".tk[29]" -type "float3" 0 0 -0.62205929 ;
	setAttr ".tk[30]" -type "float3" 0 0 -0.62205929 ;
	setAttr ".tk[31]" -type "float3" 0 0 -0.49600843 ;
	setAttr ".tk[32]" -type "float3" 0 0 -0.49257284 ;
	setAttr ".tk[33]" -type "float3" 0 0 -0.62205929 ;
	setAttr ".tk[34]" -type "float3" 0 0 -0.62205929 ;
	setAttr ".tk[35]" -type "float3" 0 0 -0.49257284 ;
	setAttr ".tk[36]" -type "float3" 0 0 -0.40968031 ;
	setAttr ".tk[37]" -type "float3" 0 0 -0.46278793 ;
	setAttr ".tk[38]" -type "float3" 0 0 -0.46278793 ;
	setAttr ".tk[39]" -type "float3" 0 0 -0.40968031 ;
	setAttr ".tk[40]" -type "float3" 0 0 -0.1830387 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.15064399 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.15064399 ;
	setAttr ".tk[43]" -type "float3" 0 0 -0.1830387 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.10851368 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.024065014 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.024065014 ;
	setAttr ".tk[47]" -type "float3" 0 0 0.10851368 ;
	setAttr ".tk[48]" -type "float3" 0 0 -0.22098614 ;
	setAttr ".tk[49]" -type "float3" 0 0 0.17788893 ;
	setAttr ".tk[50]" -type "float3" 0 0 -0.22098614 ;
	setAttr ".tk[51]" -type "float3" 0 0 0.17788893 ;
	setAttr ".tk[52]" -type "float3" 0 0 -0.22098614 ;
	setAttr ".tk[53]" -type "float3" 0 0 0.17788893 ;
	setAttr ".tk[54]" -type "float3" 0 0 -0.22098614 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.17788893 ;
	setAttr ".tk[56]" -type "float3" 0.0074557024 0.098083168 -0.094735712 ;
	setAttr ".tk[57]" -type "float3" -0.10719743 0.038062289 0.24135956 ;
	setAttr ".tk[58]" -type "float3" 0.076559983 0.038062289 0.24135956 ;
	setAttr ".tk[59]" -type "float3" -0.063442647 0.098083168 -0.094735667 ;
	setAttr ".tk[60]" -type "float3" 0 3.7439683e-008 -0.30356085 ;
	setAttr ".tk[61]" -type "float3" -0.16271164 1.1820033e-008 0.29271835 ;
	setAttr ".tk[62]" -type "float3" 0.11540108 1.1820033e-008 0.29271835 ;
	setAttr ".tk[63]" -type "float3" -0.12145882 3.7439683e-008 -0.30356061 ;
	setAttr ".tk[64]" -type "float3" -0.01296769 -0.11290825 -0.11114228 ;
	setAttr ".tk[65]" -type "float3" -0.059217021 -0.02891974 0.16796184 ;
	setAttr ".tk[66]" -type "float3" 0.042368341 -0.028924512 0.16799234 ;
	setAttr ".tk[67]" -type "float3" -0.051062234 -0.11290825 -0.11114219 ;
	setAttr ".tk[80]" -type "float3" -0.01296769 -0.11290825 0.11114228 ;
	setAttr ".tk[81]" -type "float3" -0.060008716 -0.029428909 -0.16749193 ;
	setAttr ".tk[82]" -type "float3" 0.042666715 -0.029213252 -0.16788527 ;
	setAttr ".tk[83]" -type "float3" -0.051062234 -0.11290825 0.11114219 ;
	setAttr ".tk[84]" -type "float3" 0 -3.7439683e-008 0.30356079 ;
	setAttr ".tk[85]" -type "float3" -0.16271164 -1.1820033e-008 -0.29271841 ;
	setAttr ".tk[86]" -type "float3" 0.11540108 -1.1820033e-008 -0.29271841 ;
	setAttr ".tk[87]" -type "float3" -0.12145882 -3.7439683e-008 0.30356061 ;
	setAttr ".tk[88]" -type "float3" 0.0074557024 0.098083168 0.094735704 ;
	setAttr ".tk[89]" -type "float3" -0.10719743 0.038062289 -0.24135959 ;
	setAttr ".tk[90]" -type "float3" 0.076559983 0.038062289 -0.24135959 ;
	setAttr ".tk[91]" -type "float3" -0.063442647 0.098083168 0.09473566 ;
	setAttr ".tk[92]" -type "float3" -0.045551125 0.023644073 -0.10617433 ;
	setAttr ".tk[93]" -type "float3" 0.031643964 0.023644073 -0.10617433 ;
	setAttr ".tk[94]" -type "float3" -0.045551125 0.023644073 0.10617436 ;
	setAttr ".tk[95]" -type "float3" 0.031643964 0.023644073 0.10617436 ;
	setAttr ".tk[96]" -type "float3" -0.10114241 1.4159123e-008 0.055384938 ;
	setAttr ".tk[97]" -type "float3" -0.10114241 1.4159123e-008 -0.055384949 ;
	setAttr ".tk[98]" -type "float3" -0.00046172438 -0.0023754213 0.00077299261 ;
	setAttr ".tk[99]" -type "float3" -0.00028445534 -0.0014451331 -0.00042360678 ;
	setAttr ".tk[100]" -type "float3" 0.045640532 1.4159131e-008 0.055384982 ;
	setAttr ".tk[101]" -type "float3" 0.045640532 1.4159131e-008 -0.055384994 ;
	setAttr ".tk[102]" -type "float3" -0.0004095773 -0.0024637443 0.00080682558 ;
	setAttr ".tk[103]" -type "float3" -0.00022097332 -0.0013414575 -0.00038701139 ;
	setAttr ".tk[160]" -type "float3" -0.0017673782 0.019964324 -0.011956744 ;
	setAttr ".tk[161]" -type "float3" 0 0 0.016797855 ;
	setAttr ".tk[162]" -type "float3" 0 0 -0.016797852 ;
	setAttr ".tk[163]" -type "float3" -0.0017673782 0.019964324 0.011956743 ;
	setAttr ".tk[168]" -type "float3" 0 0 0.014038537 ;
	setAttr ".tk[169]" -type "float3" -0.0042739999 0.016333103 -0.0097359698 ;
	setAttr ".tk[170]" -type "float3" -0.0042739999 0.016333103 0.0097359689 ;
	setAttr ".tk[171]" -type "float3" 0 0 -0.014038536 ;
createNode polyMapCut -n "polyMapCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 31 "e[15:17]" "e[30:32]" "e[34]" "e[77:78]" "e[90]" "e[92]" "e[94]" "e[102]" "e[104]" "e[106]" "e[121]" "e[124]" "e[139]" "e[158:161]" "e[188]" "e[190]" "e[192]" "e[194:195]" "e[200]" "e[202]" "e[204]" "e[206:210]" "e[216:218]" "e[327]" "e[329]" "e[335]" "e[337]" "e[343]" "e[345]" "e[351]" "e[353]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[1]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[2]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[3]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[4]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[5]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[6]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[7]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[8]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[9]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[10]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[11]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[12]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[13]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[14]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[15]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[16]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[17]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[18]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[19]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[20]" -type "float2" 0.048580635 -0.03506282 ;
	setAttr ".uvtk[21]" -type "float2" 0.048790026 0.017823987 ;
	setAttr ".uvtk[22]" -type "float2" 0.044157941 -0.034906536 ;
	setAttr ".uvtk[23]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[24]" -type "float2" 0.055767819 0.060189657 ;
	setAttr ".uvtk[25]" -type "float2" 0.067442909 0.077775531 ;
	setAttr ".uvtk[26]" -type "float2" 0.036785383 0.060312323 ;
	setAttr ".uvtk[27]" -type "float2" 0.025049645 0.078038864 ;
	setAttr ".uvtk[28]" -type "float2" 0.059703752 0.14963001 ;
	setAttr ".uvtk[29]" -type "float2" 0.076170176 0.18417245 ;
	setAttr ".uvtk[30]" -type "float2" 0.032706637 0.14971107 ;
	setAttr ".uvtk[31]" -type "float2" 0.01620348 0.18439776 ;
	setAttr ".uvtk[32]" -type "float2" 0.06011115 0.31018117 ;
	setAttr ".uvtk[33]" -type "float2" 0.076822966 0.29747418 ;
	setAttr ".uvtk[34]" -type "float2" 0.032147188 0.31021562 ;
	setAttr ".uvtk[35]" -type "float2" 0.015378194 0.29763439 ;
	setAttr ".uvtk[36]" -type "float2" 0.056555495 0.39613786 ;
	setAttr ".uvtk[37]" -type "float2" 0.068049863 0.37030348 ;
	setAttr ".uvtk[38]" -type "float2" 0.035607059 0.39599505 ;
	setAttr ".uvtk[39]" -type "float2" 0.024087388 0.37049159 ;
	setAttr ".uvtk[41]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[43]" -type "float2" 0.041408617 0.42713568 ;
	setAttr ".uvtk[45]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[46]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[48]" -type "float2" 0.041906912 0.32523707 ;
	setAttr ".uvtk[49]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[50]" -type "float2" 0.043630857 0.14487755 ;
	setAttr ".uvtk[51]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[52]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[53]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[54]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[55]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[208]" -type "float2" 0.048747856 0.14457309 ;
	setAttr ".uvtk[209]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[210]" -type "float2" 0.050287414 0.32498369 ;
	setAttr ".uvtk[211]" -type "float2" 0.050486822 0.42668793 ;
	setAttr ".uvtk[212]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[213]" -type "float2" 0.043805856 0.018179171 ;
	setAttr ".uvtk[214]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[215]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[216]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[217]" -type "float2" 0.046213347 0.50715709 ;
	setAttr ".uvtk[218]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[219]" -type "float2" 0.046580661 0.50658298 ;
	setAttr ".uvtk[220]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[221]" -type "float2" -0.26031667 0.41566697 ;
	setAttr ".uvtk[222]" -type "float2" -0.26031667 0.41566691 ;
	setAttr ".uvtk[223]" -type "float2" -0.26031667 0.41566691 ;
createNode polyMapCut -n "polyMapCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 16 "e[120:122]" "e[142]" "e[191]" "e[193]" "e[195]" "e[203]" "e[205]" "e[207]" "e[211]" "e[213:214]" "e[219]" "e[221:222]" "e[324:325]" "e[332:333]" "e[340:341]" "e[348:349]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 117 ".uvtk";
	setAttr ".uvtk[56]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[57]" -type "float2" 0.54627061 -0.21564373 ;
	setAttr ".uvtk[58]" -type "float2" 0.54844141 -0.22481714 ;
	setAttr ".uvtk[59]" -type "float2" 0.5590995 -0.22208703 ;
	setAttr ".uvtk[60]" -type "float2" 0.5282703 -0.21564004 ;
	setAttr ".uvtk[61]" -type "float2" 0.52659696 -0.22494505 ;
	setAttr ".uvtk[62]" -type "float2" 0.52865833 -0.21774364 ;
	setAttr ".uvtk[63]" -type "float2" 0.51774734 -0.22249295 ;
	setAttr ".uvtk[64]" -type "float2" 0.54530734 -0.2354411 ;
	setAttr ".uvtk[65]" -type "float2" 0.55933136 -0.23482169 ;
	setAttr ".uvtk[66]" -type "float2" 0.52949148 -0.23553206 ;
	setAttr ".uvtk[67]" -type "float2" 0.51644844 -0.23436058 ;
	setAttr ".uvtk[68]" -type "float2" 0.54018474 -0.23874848 ;
	setAttr ".uvtk[70]" -type "float2" 0.53467339 -0.23850529 ;
	setAttr ".uvtk[78]" -type "float2" 0.58161348 0.51050735 ;
	setAttr ".uvtk[79]" -type "float2" 0.46852934 0.5105499 ;
	setAttr ".uvtk[80]" -type "float2" 0.59505069 0.52101111 ;
	setAttr ".uvtk[81]" -type "float2" 0.7258324 0.52027923 ;
	setAttr ".uvtk[82]" -type "float2" 0.45039785 0.5209347 ;
	setAttr ".uvtk[83]" -type "float2" 0.32478148 0.52063996 ;
	setAttr ".uvtk[84]" -type "float2" 0.60706532 0.53133202 ;
	setAttr ".uvtk[85]" -type "float2" 0.72917616 0.52952147 ;
	setAttr ".uvtk[86]" -type "float2" 0.4420076 0.53113639 ;
	setAttr ".uvtk[87]" -type "float2" 0.32806814 0.5294857 ;
	setAttr ".uvtk[88]" -type "float2" 0.59741819 0.54193902 ;
	setAttr ".uvtk[89]" -type "float2" 0.73944914 0.53277773 ;
	setAttr ".uvtk[90]" -type "float2" 0.44985974 0.54184681 ;
	setAttr ".uvtk[91]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[92]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[93]" -type "float2" 0.44468451 0.527839 ;
	setAttr ".uvtk[94]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[95]" -type "float2" 0.62583232 0.53197384 ;
	setAttr ".uvtk[96]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[97]" -type "float2" 0.53399384 -0.23215857 ;
	setAttr ".uvtk[98]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[99]" -type "float2" 0.54181498 -0.23243397 ;
	setAttr ".uvtk[100]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[101]" -type "float2" 0.39530575 0.5307827 ;
	setAttr ".uvtk[102]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[103]" -type "float2" 0.54065377 -0.23228706 ;
	setAttr ".uvtk[104]" -type "float2" 0.25960618 0.53121531 ;
	setAttr ".uvtk[105]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[112]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[113]" -type "float2" 0.53162563 -0.21307199 ;
	setAttr ".uvtk[120]" -type "float2" 0.59927964 0.53026938 ;
	setAttr ".uvtk[121]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[122]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[123]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[124]" -type "float2" 0.31991452 0.53206795 ;
	setAttr ".uvtk[125]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[126]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[127]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[168]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[169]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[170]" -type "float2" 0.6016385 0.53088897 ;
	setAttr ".uvtk[171]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[172]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[173]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[174]" -type "float2" 0.32994366 0.53189021 ;
	setAttr ".uvtk[175]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[176]" -type "float2" 0.44168502 0.53077996 ;
	setAttr ".uvtk[177]" -type "float2" 0.43652266 0.53148657 ;
	setAttr ".uvtk[178]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[179]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[180]" -type "float2" 0.44429719 0.53010088 ;
	setAttr ".uvtk[181]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[182]" -type "float2" 0.71563089 0.53265542 ;
	setAttr ".uvtk[183]" -type "float2" 0.66700852 0.53139073 ;
	setAttr ".uvtk[184]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[185]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[186]" -type "float2" 0.72527295 0.53275192 ;
	setAttr ".uvtk[187]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[188]" -type "float2" 0.31086558 0.53195399 ;
	setAttr ".uvtk[189]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[190]" -type "float2" 0.60063398 0.52785605 ;
	setAttr ".uvtk[191]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[192]" -type "float2" 0.54229051 -0.22841546 ;
	setAttr ".uvtk[193]" -type "float2" 0.643852 0.54410249 ;
	setAttr ".uvtk[194]" -type "float2" -0.42406425 -0.22252877 ;
	setAttr ".uvtk[195]" -type "float2" 0.73650002 0.52877659 ;
	setAttr ".uvtk[196]" -type "float2" 0.64511043 0.51694614 ;
	setAttr ".uvtk[197]" -type "float2" 0.79099727 0.53184235 ;
	setAttr ".uvtk[198]" -type "float2" -0.42406425 -0.22252877 ;
	setAttr ".uvtk[199]" -type "float2" 0.53479618 -0.23209338 ;
	setAttr ".uvtk[200]" -type "float2" 0.30798084 0.52843833 ;
	setAttr ".uvtk[201]" -type "float2" -0.42406425 -0.22252877 ;
	setAttr ".uvtk[202]" -type "float2" 0.40457404 0.51710373 ;
	setAttr ".uvtk[203]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[204]" -type "float2" 0.44769692 0.53289413 ;
	setAttr ".uvtk[205]" -type "float2" 0.46019363 0.52326488 ;
	setAttr ".uvtk[206]" -type "float2" 0.5371415 -0.21065055 ;
	setAttr ".uvtk[207]" -type "float2" 0.5909434 0.5231868 ;
	setAttr ".uvtk[224]" -type "float2" 0.53858238 -0.22612277 ;
	setAttr ".uvtk[225]" -type "float2" 0.54050344 -0.23221684 ;
	setAttr ".uvtk[226]" -type "float2" 0.53893214 -0.23007862 ;
	setAttr ".uvtk[227]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[228]" -type "float2" 0.53691167 -0.22416644 ;
	setAttr ".uvtk[229]" -type "float2" 0.53795141 -0.23026747 ;
	setAttr ".uvtk[230]" -type "float2" 0.53585386 -0.23028287 ;
	setAttr ".uvtk[231]" -type "float2" 0.53389883 -0.23227724 ;
	setAttr ".uvtk[232]" -type "float2" 0.53615189 -0.22577639 ;
	setAttr ".uvtk[233]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[234]" -type "float2" 0.53668559 -0.23036951 ;
	setAttr ".uvtk[235]" -type "float2" 0.5378896 -0.22389698 ;
	setAttr ".uvtk[236]" -type "float2" 0.53265542 -0.23226011 ;
	setAttr ".uvtk[237]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[238]" -type "float2" 0.54627585 -0.21696711 ;
	setAttr ".uvtk[239]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[240]" -type "float2" -0.42406425 -0.22252877 ;
	setAttr ".uvtk[241]" -type "float2" 0.53990066 -0.23236062 ;
	setAttr ".uvtk[242]" -type "float2" -0.42406425 -0.22252876 ;
	setAttr ".uvtk[243]" -type "float2" 0.53198022 -0.22888313 ;
	setAttr ".uvtk[244]" -type "float2" 0.40497148 0.54416829 ;
	setAttr ".uvtk[245]" -type "float2" 0.54304117 -0.21408355 ;
	setAttr ".uvtk[246]" -type "float2" 0.53735477 -0.2102875 ;
	setAttr ".uvtk[247]" -type "float2" 0.60309011 0.53263569 ;
createNode polyMapCut -n "polyMapCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[179:180]";
createNode polyMapDel -n "polyMapDel1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "f[82:84]" "f[89]" "f[92]" "f[98]" "f[101]" "f[107]" "f[109]" "f[111]" "f[113]" "f[167]" "f[169]" "f[171]" "f[173]" "f[175]" "f[177]" "f[179]" "f[181]";
createNode polyMapCut -n "polyMapCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 41 "e[139]" "e[142]" "e[178:181]" "e[185]" "e[188]" "e[190:193]" "e[197]" "e[200]" "e[202:205]" "e[208:224]" "e[227]" "e[232]" "e[237]" "e[247]" "e[249]" "e[253]" "e[255]" "e[261]" "e[263]" "e[271]" "e[273]" "e[276]" "e[279]" "e[284]" "e[289]" "e[292]" "e[295:296]" "e[300]" "e[305]" "e[307:309]" "e[319]" "e[321]" "e[324:325]" "e[327:329]" "e[331:333]" "e[335:337]" "e[339:341]" "e[343:345]" "e[347:349]" "e[351:353]" "e[355]";
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 17 "f[82:84]" "f[89]" "f[92]" "f[98]" "f[101]" "f[107]" "f[109]" "f[111]" "f[113]" "f[167]" "f[169]" "f[171]" "f[173]" "f[175]" "f[177]" "f[179]" "f[181]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 0.76384132481516431 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.13841909170150757 1.0736503601074219 -0.0076690018177032471 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1.6946972012519836 4.3041353225708008 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[215]" "e[220]";
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 45 ".uvtk";
	setAttr ".uvtk[236]" -type "float2" -0.47245952 0.15854037 ;
	setAttr ".uvtk[237]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[238]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[239]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[240]" -type "float2" -0.08397308 -0.60460651 ;
	setAttr ".uvtk[241]" -type "float2" -0.08397308 -0.60460651 ;
	setAttr ".uvtk[242]" -type "float2" -0.08397314 -0.60460651 ;
	setAttr ".uvtk[243]" -type "float2" -0.08397314 -0.60460651 ;
	setAttr ".uvtk[244]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[245]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[246]" -type "float2" -0.25810647 0.017428719 ;
	setAttr ".uvtk[247]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[248]" -type "float2" 0.11918659 -0.35139343 ;
	setAttr ".uvtk[249]" -type "float2" -0.78802139 -0.35138673 ;
	setAttr ".uvtk[250]" -type "float2" -0.56541502 -0.49584934 ;
	setAttr ".uvtk[251]" -type "float2" -0.10341983 -0.49584645 ;
	setAttr ".uvtk[252]" -type "float2" -0.52940166 -0.75898504 ;
	setAttr ".uvtk[253]" -type "float2" -0.1586664 -0.7591843 ;
	setAttr ".uvtk[254]" -type "float2" -0.8497526 -0.42452234 ;
	setAttr ".uvtk[255]" -type "float2" 0.057455242 -0.42450461 ;
	setAttr ".uvtk[256]" -type "float2" -0.16515112 -0.65077811 ;
	setAttr ".uvtk[257]" -type "float2" -0.62714612 -0.65078306 ;
	setAttr ".uvtk[258]" -type "float2" -0.22315879 -1.0632401 ;
	setAttr ".uvtk[259]" -type "float2" -0.59235924 -1.0629418 ;
	setAttr ".uvtk[260]" -type "float2" -0.08397311 -0.60460651 ;
	setAttr ".uvtk[261]" -type "float2" -0.083973199 -0.60460651 ;
	setAttr ".uvtk[262]" -type "float2" -0.77871174 -0.24138674 ;
	setAttr ".uvtk[263]" -type "float2" -0.013585672 -0.24137527 ;
	setAttr ".uvtk[264]" -type "float2" 0.043625355 -0.22747381 ;
	setAttr ".uvtk[265]" -type "float2" -0.71246028 -0.22747302 ;
	setAttr ".uvtk[266]" -type "float2" -0.083973199 -0.60460651 ;
	setAttr ".uvtk[267]" -type "float2" -0.08397311 -0.60460651 ;
	setAttr ".uvtk[268]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[269]" -type "float2" -0.083973199 -0.60460651 ;
	setAttr ".uvtk[270]" -type "float2" -0.72656339 -0.14825691 ;
	setAttr ".uvtk[271]" -type "float2" -0.065733925 -0.1482501 ;
	setAttr ".uvtk[272]" -type "float2" -0.015212789 -0.16279778 ;
	setAttr ".uvtk[273]" -type "float2" -0.65362215 -0.16280086 ;
	setAttr ".uvtk[274]" -type "float2" -0.083973199 -0.60460657 ;
	setAttr ".uvtk[275]" -type "float2" -0.08397311 -0.60460657 ;
	setAttr ".uvtk[276]" -type "float2" -0.41072839 0.017428696 ;
	setAttr ".uvtk[277]" -type "float2" -0.08397311 -0.60460651 ;
	setAttr ".uvtk[278]" -type "float2" -0.083973169 -0.60460651 ;
	setAttr ".uvtk[279]" -type "float2" -0.31983763 0.15854031 ;
createNode polyMapCut -n "polyMapCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[179:180]";
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 25 ".uvtk";
	setAttr ".uvtk[237]" -type "float2" -0.60880512 0.73722738 ;
	setAttr ".uvtk[238]" -type "float2" -0.60880512 0.73722774 ;
	setAttr ".uvtk[239]" -type "float2" -0.60880512 0.5515098 ;
	setAttr ".uvtk[240]" -type "float2" -0.60880512 1.4560676 ;
	setAttr ".uvtk[241]" -type "float2" 0 0.38623002 ;
	setAttr ".uvtk[242]" -type "float2" -0.00030433532 -0.95057046 ;
	setAttr ".uvtk[243]" -type "float2" 0 -0.38622999 ;
	setAttr ".uvtk[244]" -type "float2" -0.00030430552 0.67693734 ;
	setAttr ".uvtk[245]" -type "float2" -0.00030430552 0.86265349 ;
	setAttr ".uvtk[247]" -type "float2" -0.00030430552 0.6769343 ;
	setAttr ".uvtk[260]" -type "float2" -0.60880512 1.2442546 ;
	setAttr ".uvtk[261]" -type "float2" -0.60880512 1.2442553 ;
	setAttr ".uvtk[266]" -type "float2" -0.00030430552 -0.43932897 ;
	setAttr ".uvtk[267]" -type "float2" -0.00030433532 -0.43933302 ;
	setAttr ".uvtk[268]" -type "float2" -0.60880512 1.1333001 ;
	setAttr ".uvtk[269]" -type "float2" -0.60880512 1.1332996 ;
	setAttr ".uvtk[274]" -type "float2" -0.00030430552 -0.15933578 ;
	setAttr ".uvtk[275]" -type "float2" -0.00030433532 -0.1593322 ;
	setAttr ".uvtk[277]" -type "float2" -0.00030430552 0.86265373 ;
	setAttr ".uvtk[278]" -type "float2" -0.60880512 0.55150986 ;
	setAttr ".uvtk[280]" -type "float2" -0.00030430552 -0.95057118 ;
	setAttr ".uvtk[281]" -type "float2" 0 0.38623002 ;
	setAttr ".uvtk[282]" -type "float2" 0 -0.38622999 ;
	setAttr ".uvtk[283]" -type "float2" -0.60880506 1.456068 ;
createNode polyMapSewMove -n "polyMapSewMove8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[179]";
createNode polyTweakUV -n "polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 107 ".uvtk";
	setAttr ".uvtk[69]" -type "float2" 0.20153551 -0.36514607 ;
	setAttr ".uvtk[71]" -type "float2" -0.067178495 -0.19750494 ;
	setAttr ".uvtk[75]" -type "float2" 0 -0.066917568 ;
	setAttr ".uvtk[76]" -type "float2" -0.067178495 -0.14218989 ;
	setAttr ".uvtk[106]" -type "float2" 0 0.026222348 ;
	setAttr ".uvtk[107]" -type "float2" -0.067178525 -0.1920217 ;
	setAttr ".uvtk[108]" -type "float2" -0.067178465 -0.18072861 ;
	setAttr ".uvtk[109]" -type "float2" 0 0.030551195 ;
	setAttr ".uvtk[110]" -type "float2" -0.067178465 -0.18924132 ;
	setAttr ".uvtk[111]" -type "float2" -0.067178465 -0.1967704 ;
	setAttr ".uvtk[114]" -type "float2" 0.20153548 -0.404944 ;
	setAttr ".uvtk[115]" -type "float2" 0.20153548 -0.35996246 ;
	setAttr ".uvtk[116]" -type "float2" 0.20153549 -0.36679858 ;
	setAttr ".uvtk[117]" -type "float2" 0.20153549 -0.34865743 ;
	setAttr ".uvtk[118]" -type "float2" 0.20153549 -0.36474499 ;
	setAttr ".uvtk[119]" -type "float2" 0 -0.021944195 ;
	setAttr ".uvtk[128]" -type "float2" -0.067178465 -0.22809449 ;
	setAttr ".uvtk[129]" -type "float2" -0.067178465 -0.18934518 ;
	setAttr ".uvtk[130]" -type "float2" 0 -0.047015488 ;
	setAttr ".uvtk[131]" -type "float2" -0.067178465 -0.19055277 ;
	setAttr ".uvtk[132]" -type "float2" 0.20153551 -0.35727373 ;
	setAttr ".uvtk[133]" -type "float2" 0 0.030262649 ;
	setAttr ".uvtk[134]" -type "float2" 0.20153545 -0.35835385 ;
	setAttr ".uvtk[135]" -type "float2" 0.20153551 -0.3165459 ;
	setAttr ".uvtk[136]" -type "float2" 0.20153548 -0.35656673 ;
	setAttr ".uvtk[137]" -type "float2" 0.20153545 -0.35739315 ;
	setAttr ".uvtk[138]" -type "float2" 0.20153548 -0.3510952 ;
	setAttr ".uvtk[139]" -type "float2" 0.20153548 -0.35233852 ;
	setAttr ".uvtk[140]" -type "float2" 0 0.031080782 ;
	setAttr ".uvtk[141]" -type "float2" 0.20153548 -0.37839645 ;
	setAttr ".uvtk[142]" -type "float2" 0.20153545 -0.31844661 ;
	setAttr ".uvtk[143]" -type "float2" 0 -0.015566856 ;
	setAttr ".uvtk[144]" -type "float2" 0 -0.042350918 ;
	setAttr ".uvtk[145]" -type "float2" -0.067178465 -0.18949217 ;
	setAttr ".uvtk[146]" -type "float2" -0.067178465 -0.1831162 ;
	setAttr ".uvtk[147]" -type "float2" -0.067178465 -0.16513145 ;
	setAttr ".uvtk[148]" -type "float2" -0.067178465 -0.225673 ;
	setAttr ".uvtk[149]" -type "float2" 0 0.036874592 ;
	setAttr ".uvtk[150]" -type "float2" -0.067178465 -0.18858421 ;
	setAttr ".uvtk[151]" -type "float2" -0.067178465 -0.18440142 ;
	setAttr ".uvtk[152]" -type "float2" -0.067178465 -0.22019824 ;
	setAttr ".uvtk[153]" -type "float2" -0.067178465 -0.18232581 ;
	setAttr ".uvtk[154]" -type "float2" 0 -0.015783489 ;
	setAttr ".uvtk[155]" -type "float2" -0.067178465 -0.18574351 ;
	setAttr ".uvtk[156]" -type "float2" 0.20153548 -0.35005239 ;
	setAttr ".uvtk[157]" -type "float2" 0.20153548 -0.38923144 ;
	setAttr ".uvtk[158]" -type "float2" 0.20153548 -0.35401472 ;
	setAttr ".uvtk[159]" -type "float2" 0.20153548 -0.32572564 ;
	setAttr ".uvtk[160]" -type "float2" -0.067178465 -0.17409608 ;
	setAttr ".uvtk[161]" -type "float2" -0.067178465 -0.22122376 ;
	setAttr ".uvtk[162]" -type "float2" 0 -0.032494038 ;
	setAttr ".uvtk[163]" -type "float2" -0.067178465 -0.19677886 ;
	setAttr ".uvtk[164]" -type "float2" 0 0.050397515 ;
	setAttr ".uvtk[165]" -type "float2" 0.20153548 -0.34195381 ;
	setAttr ".uvtk[166]" -type "float2" 0.20153548 -0.36484236 ;
	setAttr ".uvtk[167]" -type "float2" 0.20153548 -0.33152038 ;
	setAttr ".uvtk[208]" -type "float2" 0 0.036510825 ;
	setAttr ".uvtk[209]" -type "float2" 0 0.050348997 ;
	setAttr ".uvtk[210]" -type "float2" -0.067178465 -0.15848124 ;
	setAttr ".uvtk[211]" -type "float2" -0.067178465 -0.16334307 ;
	setAttr ".uvtk[212]" -type "float2" 0 -0.015825063 ;
	setAttr ".uvtk[213]" -type "float2" 0 -0.03245309 ;
	setAttr ".uvtk[214]" -type "float2" 0 0.036554277 ;
	setAttr ".uvtk[215]" -type "float2" 0.20153548 -0.38905916 ;
	setAttr ".uvtk[216]" -type "float2" 0 0.030596197 ;
	setAttr ".uvtk[217]" -type "float2" 0.20153549 -0.35725594 ;
	setAttr ".uvtk[218]" -type "float2" -0.067178465 -0.1988824 ;
	setAttr ".uvtk[219]" -type "float2" 0 -0.021988034 ;
	setAttr ".uvtk[220]" -type "float2" 0.20153548 -0.33310133 ;
	setAttr ".uvtk[221]" -type "float2" 0 0.036836803 ;
	setAttr ".uvtk[222]" -type "float2" 0 -0.015543997 ;
	setAttr ".uvtk[223]" -type "float2" -0.067178465 -0.21048748 ;
	setAttr ".uvtk[224]" -type "float2" 0 0.030261099 ;
	setAttr ".uvtk[225]" -type "float2" 0 0.031134307 ;
	setAttr ".uvtk[226]" -type "float2" -0.067178465 -0.14835367 ;
	setAttr ".uvtk[227]" -type "float2" -0.067178465 -0.15039039 ;
	setAttr ".uvtk[228]" -type "float2" 0 -0.046742737 ;
	setAttr ".uvtk[229]" -type "float2" 0 -0.042383909 ;
	setAttr ".uvtk[230]" -type "float2" 0.20153551 -0.39578271 ;
	setAttr ".uvtk[231]" -type "float2" 0.20153548 -0.39353654 ;
	setAttr ".uvtk[232]" -type "float2" 0.20153545 -0.31006104 ;
	setAttr ".uvtk[233]" -type "float2" 0 0.026105106 ;
	setAttr ".uvtk[234]" -type "float2" 0 -0.066727549 ;
	setAttr ".uvtk[235]" -type "float2" -0.067178465 -0.23715417 ;
	setAttr ".uvtk[237]" -type "float2" 0.19987959 0.32667646 ;
	setAttr ".uvtk[238]" -type "float2" 0.35072678 0.32667613 ;
	setAttr ".uvtk[239]" -type "float2" 0.35072678 0.4947243 ;
	setAttr ".uvtk[240]" -type "float2" -0.17712545 -0.73934895 ;
	setAttr ".uvtk[241]" -type "float2" -0.17712569 -1.4383147 ;
	setAttr ".uvtk[242]" -type "float2" 0.17712551 1.4383143 ;
	setAttr ".uvtk[243]" -type "float2" 0.72773165 -0.73934919 ;
	setAttr ".uvtk[244]" -type "float2" -0.3507266 0.38123029 ;
	setAttr ".uvtk[245]" -type "float2" -0.3507266 0.21318376 ;
	setAttr ".uvtk[247]" -type "float2" -0.19987939 0.38123307 ;
	setAttr ".uvtk[260]" -type "float2" 0.59823811 -0.42321485 ;
	setAttr ".uvtk[261]" -type "float2" -0.04763177 -0.42321551 ;
	setAttr ".uvtk[266]" -type "float2" -0.59458256 1.1063632 ;
	setAttr ".uvtk[267]" -type "float2" 0.043976568 1.1063669 ;
	setAttr ".uvtk[268]" -type "float2" 0.53687221 -0.25797343 ;
	setAttr ".uvtk[269]" -type "float2" 0.013734184 -0.25797296 ;
	setAttr ".uvtk[274]" -type "float2" -0.53215885 0.92441154 ;
	setAttr ".uvtk[275]" -type "float2" -0.018447123 0.92440832 ;
	setAttr ".uvtk[277]" -type "float2" -0.19987939 0.21318355 ;
	setAttr ".uvtk[278]" -type "float2" 0.19987959 0.49472424 ;
	setAttr ".uvtk[280]" -type "float2" -0.7277317 1.4383149 ;
	setAttr ".uvtk[281]" -type "float2" 0.72773147 -1.4383149 ;
createNode polyMapSewMove -n "polyMapSewMove9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[227]" "e[253]" "e[271]" "e[279]" "e[295]" "e[319]";
createNode polyMapSewMove -n "polyMapSewMove10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[237]" "e[249]" "e[263]" "e[289]" "e[305]" "e[309]";
createNode polyMapCut -n "polyMapCut17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[242:243]";
createNode polyTweakUV -n "polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[40]" -type "float2" 0.048202991 0 ;
	setAttr ".uvtk[42]" -type "float2" -0.1051846 0.12176101 ;
	setAttr ".uvtk[44]" -type "float2" -0.14073335 0.12176101 ;
	setAttr ".uvtk[47]" -type "float2" -0.14158781 0.12176101 ;
	setAttr ".uvtk[72]" -type "float2" -0.14021336 0.12176101 ;
	setAttr ".uvtk[73]" -type "float2" -0.14500372 0.12176101 ;
	setAttr ".uvtk[74]" -type "float2" -0.16658409 0.12176101 ;
	setAttr ".uvtk[77]" -type "float2" -0.062582254 0 ;
	setAttr ".uvtk[268]" -type "float2" 0.056063771 0 ;
	setAttr ".uvtk[269]" -type "float2" -0.1793742 0.12176101 ;
	setAttr ".uvtk[270]" -type "float2" -0.12335329 0.12176101 ;
	setAttr ".uvtk[271]" -type "float2" -0.041684479 0 ;
createNode polyMapSewMove -n "polyMapSewMove11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[242]";
createNode polyTweakUV -n "polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 270 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.34494522 -0.18333994 0.27238512 -0.22536522
		 0.31758329 -0.27061707 0.39539844 -0.21232271 0.18713385 -0.31051543 0.23233202 -0.35576728
		 0.14502248 -0.38302553 0.17394543 -0.43351313 0.41024575 -0.36338955 0.46256953 -0.27957356
		 0.32499447 -0.44853976 0.24111651 -0.50076401 0.46746191 -0.42067367 0.51129025 -0.34988248
		 0.38221064 -0.50582391 0.31136748 -0.54956806 0.49847627 -0.45172483 0.54182172 -0.35736439
		 0.413225 -0.53687507 0.31881312 -0.58010852 -0.12139583 -0.42637229 -0.12131439 -0.42640448
		 -0.12149169 -0.42637247 0.31863189 -0.57992709 -0.12140436 -0.42644066 -0.1213502
		 -0.42645034 -0.12148295 -0.42644081 -0.12153703 -0.42645064 -0.12140902 -0.42649043
		 -0.12134776 -0.42650619 -0.12147811 -0.42649052 -0.12153931 -0.42650646 -0.12140951
		 -0.42656723 -0.12134853 -0.42656338 -0.12147745 -0.42656726 -0.12153833 -0.42656359
		 -0.12140529 -0.42661521 -0.12135092 -0.42660266 -0.12148155 -0.42661506 -0.12153589
		 -0.42660287 -0.2729845 -0.12151671 0.33933118 -0.15463337 -0.23592114 -0.073559724
		 -0.12157013 -0.42664969 -0.1533951 0.0094019873 0.33933118 -0.15463337 0.11632254
		 -0.37737751 -0.19968115 -0.036829162 -0.12160122 -0.42658481 0.13773903 -0.45024803
		 -0.12160326 -0.42648092 0.23040149 -0.54302049 0.41217622 -0.17613633 0.41217622
		 -0.17613633 0.50483865 -0.2689088 0.50483865 -0.2689088 -0.23418093 -0.38313791 -0.74389988
		 0.051872164 -0.74389642 0.051833924 -0.74383092 0.051830698 -0.74397951 0.05187216
		 -0.74398226 0.051834073 -0.74406505 0.051889785 -0.74404395 0.051831167 -0.74390292
		 0.051776055 -0.74383557 0.051782746 -0.7439779 0.051776163 -0.74404269 0.051782213
		 -0.74390876 0.051677514 0.052800689 -0.15546744 -0.74396968 0.051677223 0.014438807
		 0.0420001 -0.16830765 0.031249722 -0.22563069 -0.02600533 -0.14192598 0.057600103
		 0.10504121 -0.20673658 0.066235915 -0.010494942 -0.24745312 -0.047268219 -0.23415729
		 -0.38310343 -0.23409383 -0.38310349 -0.23416285 -0.38301337 -0.23423438 -0.38300511
		 -0.23408563 -0.38301331 -0.2340167 -0.38300556 -0.23416732 -0.38295513 -0.23423401
		 -0.38295299 -0.23408325 -0.3829549 -0.23402035 -0.38295293 -0.2341619 -0.38291863
		 -0.23424326 -0.38289264 -0.2340879 -0.38291851 -0.74397528 0.051635515 -0.74409735
		 0.051821206 -0.2340841 -0.38288063 -0.23405996 -0.38314158 -0.2341764 -0.38272637
		 -0.74405825 0.051721759 -0.74384105 0.052072175 -0.74386561 0.05167171 -0.74389356
		 0.051913358 -0.7438128 0.051888861 -0.23405883 -0.38272497 -0.74398708 0.05191315
		 -0.74400479 0.052072328 -0.23396257 -0.38295498 -0.74381214 0.051949173 0.05013388
		 -0.095328778 -0.067031384 0.04094233 -0.37678388 -0.28938213 -0.32727611 -0.34559309
		 -0.35206237 -0.30997533 -0.36546755 -0.29867959 -0.74388742 0.051958572 -0.7437802
		 0.051819991 0.0056887255 -0.031614434 0.050775614 -0.076589637 0.36301127 0.25056583
		 0.3811309 0.23242469 0.39036915 0.22114313 0.40175804 0.20762759 -0.234163 -0.38283584
		 -0.7438156 0.051977869 -0.74386603 0.052072316 -0.74388438 0.051983301 -0.23401304
		 -0.38283703 -0.74399477 0.051960815 -0.74406904 0.051952153 -0.74399811 0.051987935
		 -0.18411517 -0.00049443293 -0.14550507 -0.039336853 -0.040082417 -0.092606008 -0.08165317
		 -0.050142728 0.13251191 0.0032114764 0.25243002 -0.10008211 0.14534977 -0.05852893
		 0.18761298 -0.09973006 0.15061171 0.020695621 0.1651985 -0.036643859 0.29646158 0.10820969
		 0.26991308 0.13682215 0.26658762 -0.079259671 0.24388602 0.16288008 0.20551287 -0.075893983
		 0.32170168 0.083624117 -0.066025272 -0.11207604 -0.10543653 -0.071743459 -0.25241837
		 -0.20491031 -0.22801287 -0.22999826 -0.20129378 -0.021611258 -0.20276225 -0.26880953
		 -0.16432919 -0.05878019 -0.28104118 -0.17828602 -0.34099591 -0.16863994 -0.30316839
		 -0.20651238 -0.25144851 -0.2565161 -0.27924293 -0.22843394 0.30169532 0.16176981
		 0.26256269 0.20094886 0.32304439 0.13836296 0.35153851 0.11006554 -0.33669814 -0.24561951
		 -0.3837699 -0.19849183 -0.29129273 -0.28707254 -0.31673461 -0.26357424 0.41873533
		 0.12424588 0.3373917 0.19231975 0.35511726 0.17254062 0.3787322 0.14694259 -0.7440297
		 0.052072246 -0.7440654 0.051983163 -0.23416378 -0.38281175 0.49847627 -0.45172483
		 0.413225 -0.53687507 0.21805257 -0.20081913 -0.23401929 -0.38280812 0.21805257 -0.20081913
		 -0.23408416 -0.38280675 -0.23408262 -0.38272581 -0.12141116 -0.42669943 0.17091209
		 -0.2479037 -0.23408502 -0.38283327 -0.12146664 -0.42670009 -0.23422985 -0.38281393
		 -0.23420015 -0.38272569 0.17091209 -0.2479037 0.11632254 -0.37737751 -0.23423572
		 -0.38284051 0.13773903 -0.45024803 -0.2340081 -0.38289165 -0.12157297 -0.42640489
		 -0.2341647 -0.38288066 0.23040149 -0.54302049 -0.74382287 0.051721212 -0.23419027
		 -0.38314152 -0.12131637 -0.42664915 -0.23425467 -0.38306907 -0.23419154 -0.3831093
		 -0.23428918 -0.38295573 -0.12128567 -0.42658451 -0.74401259 0.051671393 -0.23399374
		 -0.38306865 0.54164052 -0.35718295 -0.23405945 -0.38310948 -0.12128381 -0.42648056
		 -0.2340703 -0.38313824 -0.23408513 -0.3831268 -0.74390137 0.051635943 -0.2341665
		 -0.38312671 -0.23217079 -0.28889638 -0.26882347 -0.32679138 0.22469005 0.15291682
		 0.065017708 0.38383639 0.065042101 0.38377231 0.034177441 0.30790702 0.38344178 0.091284327
		 0.29034224 0.23942509 0.43752268 0.18270455 0.034247324 0.30790702 -0.39491615 -0.27122834
		 0.15404603 0.5165832 0.15407385 0.5166502 0.36066282 0.058240805 0.22462422 0.15315792
		 -0.30709633 -0.15219995 -0.042361967 -0.15918596 -0.064761616 -0.17441116 0.065083519
		 0.38368356 0.034204029 0.30797341 0.1540015 0.51665026 0.22460102 0.15306401 0.093988858
		 0.041660804 0.11363392 0.057613637 0.22466625 0.15306401 0.18744564 -0.19412428 0.065106153
		 0.38377228 -0.11201446 0.086296819 0.15402932 0.51658326 0.22462422 0.15313689 0.22464304
		 0.15313692 0.22464304 0.15315792 0.2245772 0.15300399 0.2245772 0.15291682 0.065130539
		 0.38383639 0.22469005 0.15300399 0.065064721 0.38370457 0.065064721 0.38368359 0.034220733
		 0.30797341 0.065083519 0.38370454 0.034262042 0.30784509 0.034162726 0.30784509;
	setAttr ".uvtk[250:269]" 0.034187093 0.30779657 0.034237668 0.30779657 0.034191038
		 0.30770853 0.034231618 0.3077085 0.15398803 0.51670897 0.15408733 0.51670903 0.15406297
		 0.51675749 0.1540124 0.51675749 0.15405662 0.51684624 0.1540162 0.51684624 0.2246739
		 0.15304342 0.22459336 0.15304342 0.1539958 0.51667017 0.15407956 0.51667011 0.034253765
		 0.30788556 0.034171 0.30788553 0.065034315 0.38379499 0.065113947 0.38379499 -0.29683101
		 -0.10980827 -0.11475424 0.047997016;
createNode polyMapSewMove -n "polyMapSewMove12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[213]" "e[219]" "e[324]" "e[332]" "e[341]" "e[349]";
createNode polyTweakUV -n "polyTweakUV11";
	setAttr ".uopa" yes;
	setAttr -s 262 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.26883689 0.0055681844 -0.26883689
		 0.0055681979 -0.26883689 0.0055681979 -0.26883689 0.0055681816 -0.26883689 0.0055682184
		 -0.26883689 0.0055682184 -0.26883689 0.0055682319 -0.26883689 0.0055682347 -0.26883692
		 0.0055681979 -0.26883692 0.0055681816 -0.26883692 0.0055682184 -0.26883692 0.0055682347
		 -0.26883692 0.0055681979 -0.26883692 0.0055681844 -0.26883692 0.0055682184 -0.26883692
		 0.0055682319 -0.26883692 0.0055681979 -0.26883692 0.0055681816 -0.26883692 0.0055682184
		 -0.26883692 0.0055682347 0.35908806 0.011136266 0.35908815 0.01113626 0.35908806
		 0.011136266 -0.26883692 0.0055682347 0.35908806 0.011136252 0.35908809 0.011136251
		 0.35908809 0.011136252 0.35908809 0.011136251 0.35908809 0.011136242 0.35908812 0.011136239
		 0.35908809 0.011136242 0.35908803 0.011136239 0.35908809 0.011136227 0.35908806 0.011136227
		 0.35908809 0.011136227 0.35908803 0.011136227 0.35908812 0.011136217 0.35908809 0.01113622
		 0.35908803 0.011136217 0.35908803 0.01113622 0.53991312 0.076096684 -0.26883689 0.0055681816
		 0.53991312 0.076096669 0.35908809 0.011136211 0.53991312 0.076096654 -0.26883689
		 0.0055681816 -0.26883689 0.0055682347 0.53991312 0.076096661 0.35908809 0.011136224
		 -0.26883689 0.0055682408 0.35908803 0.011136244 -0.26883692 0.0055682408 -0.26883689
		 0.0055681756 -0.26883689 0.0055681756 -0.26883692 0.0055681756 -0.26883692 0.0055681756
		 -0.28426129 3.145812e-007 0.069461472 0.087980896 0.1045458 0.058676761 0.16243798
		 0.11111516 0.0023799054 0.020891948 0.032174949 -0.013438554 -0.10058682 -0.029567612
		 -0.017369505 -0.067881405 0.14781104 0.0044753533 0.19892973 0.066864178 0.084607117
		 -0.058546145 0.024957888 -0.10802884 0.22589126 -0.083447039 0.10069638 -9.2762464e-012
		 0.17486033 -0.13496374 0.10228691 -8.7523631e-008 0.53991312 0.076096654 0.53991312
		 0.076096669 0.53991312 0.076096646 0.10069636 -1.3232448e-010 0.1022869 -8.7447845e-008
		 0.53991312 0.076096669 -0.28426129 3.2150598e-007 -0.28426129 3.2149583e-007 -0.28426129
		 3.3958955e-007 -0.28426132 3.4124662e-007 -0.28426129 3.3960424e-007 -0.28426126
		 3.4116073e-007 -0.28426129 3.512724e-007 -0.28426132 3.5170356e-007 -0.28426129 3.5131899e-007
		 -0.28426126 3.5171206e-007 -0.28426129 3.8840903e-007 -0.28426132 3.93628e-007 -0.28426129
		 3.88431e-007 0.20525914 -0.1748185 -0.053945124 -0.12125587 -0.28426129 3.9603904e-007
		 -0.28426129 3.1384639e-007 -0.28426129 4.2701035e-007 0.062749304 -0.17203808 -0.032987799
		 0.30017397 0.26711795 -0.05199204 0.04007094 0.12796947 0.12074889 0.18979619 -0.28426129
		 4.27294e-007 -0.038491469 0.049059764 -0.18745057 0.16822051 -0.28426126 3.513002e-007
		 0.074791461 0.22657001 0.10228689 -7.5427359e-008 0.10228692 -7.7685684e-008 0.10228694
		 -1.1208205e-008 0.10228691 -1.0417073e-008 0.10228691 -1.1237587e-008 0.10228691
		 -1.1450187e-008 0.0071868584 0.17125221 0.21416682 0.14483529 0.10069639 -9.6056683e-009
		 0.10069638 -9.6253405e-009 0.10069638 -8.5800394e-008 0.10069638 -8.5800394e-008
		 0.10069638 -8.5558405e-008 0.10069638 -8.5306802e-008 -0.28426129 4.050317e-007 0.050875429
		 0.24383183 -0.070584185 0.28506726 -0.011108842 0.19461048 -0.28426126 4.0479233e-007
		 -0.085099757 0.082745433 -0.13935286 0.017097376 -0.11079212 0.10273339 0.10228693
		 -7.3695588e-008 0.10228692 -7.3673391e-008 0.1022869 -6.4996939e-008 0.10228691 -6.5097332e-008
		 0.10069638 -2.8870803e-008 0.10069636 -3.0867206e-008 0.10069638 -2.30499e-008 0.10069636
		 -2.3182331e-008 0.10069638 -3.3110268e-008 0.10069638 -2.8021859e-008 0.10069638
		 -6.0917024e-008 0.10069638 -6.1159014e-008 0.10069636 -3.5034198e-008 0.10069639
		 -6.1159014e-008 0.10069637 -2.8154275e-008 0.10069637 -6.0998516e-008 0.1022869 -7.4487218e-008
		 0.10228691 -5.9690187e-008 0.10228691 -3.3763293e-008 0.10228691 -3.3685481e-008
		 0.10228693 -6.9133407e-008 0.1022869 -3.2074418e-008 0.10228692 -6.9114307e-008 0.10228695
		 -3.3521282e-008 0.10228693 -2.7522669e-008 0.10228695 -2.7522669e-008 0.10228691
		 -2.7734314e-008 0.10228691 -2.7764647e-008 0.10069638 -6.7918215e-008 0.10069639
		 -6.7918215e-008 0.10069638 -6.7676226e-008 0.10069637 -6.7703674e-008 0.10228694
		 -2.2594502e-008 0.10228696 -2.2594502e-008 0.10228691 -2.3071518e-008 0.10228691
		 -2.2836506e-008 0.10069636 -7.7402575e-008 0.10069638 -7.5811073e-008 0.10069638
		 -7.5569062e-008 0.10069637 -7.5336281e-008 -0.20553418 0.1299497 -0.15779716 0.043107107
		 -0.28426129 4.0987032e-007 -0.26883692 0.0055681979 -0.26883692 0.0055682184 -0.26883686
		 0.0055682017 -0.28426126 4.1059465e-007 -0.26883686 0.0055682017 -0.28426129 4.1087549e-007
		 -0.28426129 4.2712639e-007 0.35908812 0.0111362 -0.26883686 0.0055682128 -0.28426129
		 4.055467e-007 0.35908812 0.0111362 -0.28426132 4.0943226e-007 -0.28426132 4.2714919e-007
		 -0.26883686 0.0055682128 -0.26883689 0.0055682347 -0.28426132 4.0409537e-007 -0.26883689
		 0.0055682408 -0.28426126 3.9382417e-007 0.35908803 0.01113626 -0.28426129 3.9603498e-007
		 -0.26883692 0.0055682408 0.26142326 0.025687646 -0.28426129 3.1386207e-007 0.35908812
		 0.011136211 -0.28426132 3.2840836e-007 -0.28426129 3.2032898e-007 -0.28426132 3.5115087e-007
		 0.35908815 0.011136224 0.14362815 -0.17601554 -0.28426126 3.2848746e-007 -0.26883692
		 0.0055681816 -0.28426129 3.2029143e-007 0.35908815 0.011136244 -0.28426129 3.1451964e-007
		 -0.28426129 3.168127e-007 0.26714933 -0.11220315 -0.28426129 3.1683135e-007 0.1022869
		 -2.6176954e-008 0.1022869 -2.1020828e-008 0.33802271 -0.027840381 0.42298332 0.050112359
		 0.42298335 0.050112348 -0.23274316 0.023227256 0.10069636 -6.9270598e-008 0.10069639
		 -7.5811073e-008 0.10069637 -8.6602739e-008 0.53991312 0.076096646 0.10228695 -1.1208205e-008
		 0.53991312 0.076096684 0.42298332 0.050112352 0.10069636 -6.2620707e-008 0.33802268
		 -0.027840333 0.10228695 -3.3521282e-008 0.10228689 -7.1698821e-008 0.10228689 -6.7215744e-008
		 0.42298332 0.050112329 -0.2219675 0.10772789 0.075129025 0.32222179 0.33802268 -0.027840352
		 0.10069639 -2.8856579e-008 0.10069639 -3.3097919e-008 0.33802268 -0.027840352 0.10069636
		 -1.1923067e-008 0.42298335 0.050112348 0.10228693 -7.7723548e-008 -0.010826943 0.31342304
		 0.33802268 -0.027840337 0.33802268 -0.027840337 0.33802268 -0.027840333 0.33802265
		 -0.027840363 0.33802265 -0.027840381 0.42298335 0.050112359 0.33802265 -0.027840363
		 0.42298329 0.050112333 0.42298329 0.050112329 0.42298332 0.050112352 0.42298332 0.050112333
		 -0.23373836 -0.0034624713 -0.23116353 -0.052576117;
	setAttr ".uvtk[250:261]" -0.18855317 -0.10120383 -0.13025399 -0.086070448 -0.15765515
		 -0.20151891 -0.1108669 -0.18939483 0.14677471 0.31749463 0.099755712 0.32193142 0.1764506
		 0.21540815 0.19376546 0.27309704 0.27989295 0.19226946 0.29367399 0.23838797 0.33802265
		 -0.027840355 0.33802268 -0.027840355;
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/rasmul2/Desktop/Experimental Game Design/puppet_water.png";
createNode place2dTexture -n "place2dTexture1";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
select -ne :lambert1;
select -ne :initialShadingGroup;
	setAttr -s 7 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :initialMaterialInfo;
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
connectAttr "groupId3.id" "pCubeShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[0].gco";
connectAttr "groupParts2.og" "pCubeShape1.i";
connectAttr "groupId4.id" "pCubeShape1.ciog.cog[0].cgid";
connectAttr "groupId1.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts1.og" "pCubeShape2.i";
connectAttr "groupId2.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "polyTweakUV11.out" "pCube3Shape.i";
connectAttr "groupId5.id" "pCube3Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCube3Shape.iog.og[0].gco";
connectAttr "polyTweakUV11.uvtk[0]" "pCube3Shape.uvst[0].uvtw";
connectAttr "polyTweakUV3.out" "pCubeShape3.i";
connectAttr "polyTweakUV3.uvtk[0]" "pCubeShape3.uvst[0].uvtw";
connectAttr "polyTweakUV2.out" "pPlaneShape2.i";
connectAttr "polyTweakUV2.uvtk[0]" "pPlaneShape2.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyMergeVert1.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert2.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert4.mp";
connectAttr "polyTweak1.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyMergeVert4.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyMergeVert5.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert5.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak2.ip";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert6.out" "polyMergeVert7.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert7.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "pCubeShape1.wm" "polyMergeVert8.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyMergeVert8.out" "polyTweak3.ip";
connectAttr "pCubeShape2.o" "polyUnite1.ip[0]";
connectAttr "pCubeShape1.o" "polyUnite1.ip[1]";
connectAttr "pCubeShape2.wm" "polyUnite1.im[0]";
connectAttr "pCubeShape1.wm" "polyUnite1.im[1]";
connectAttr "polyCube2.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polyExtrudeFace3.out" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polyUnite1.out" "groupParts3.ig";
connectAttr "groupId5.id" "groupParts3.gi";
connectAttr "groupParts3.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyMergeVert9.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert10.out" "polyMergeVert11.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pCube3Shape.wm" "polyMergeVert12.mp";
connectAttr "polyTweak4.out" "polySoftEdge1.ip";
connectAttr "pCube3Shape.wm" "polySoftEdge1.mp";
connectAttr "polyMergeVert12.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polySplitRing1.ip";
connectAttr "pCube3Shape.wm" "polySplitRing1.mp";
connectAttr "polySoftEdge1.out" "polyTweak5.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCube3Shape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polySplitRing3.ip";
connectAttr "pCube3Shape.wm" "polySplitRing3.mp";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCube3Shape.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polyExtrudeFace4.ip";
connectAttr "pCube3Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyTweak6.out" "polyExtrudeFace5.ip";
connectAttr "pCube3Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing5.ip";
connectAttr "pCube3Shape.wm" "polySplitRing5.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak7.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCube3Shape.wm" "polySplitRing6.mp";
connectAttr "polyTweak8.out" "polySplitRing7.ip";
connectAttr "pCube3Shape.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak8.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCube3Shape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCube3Shape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCube3Shape.wm" "polySplitRing10.mp";
connectAttr "polyTweak9.out" "polySoftEdge2.ip";
connectAttr "pCube3Shape.wm" "polySoftEdge2.mp";
connectAttr "polySplitRing10.out" "polyTweak9.ip";
connectAttr "polySurfaceShape1.o" "polyMapCut1.ip";
connectAttr "polyMapCut1.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV1.ip";
connectAttr "polyTweakUV1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapSewMove5.ip";
connectAttr "polyMapSewMove5.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyTweakUV2.ip";
connectAttr "polyTweak10.out" "polyPlanarProj1.ip";
connectAttr "pCubeShape3.wm" "polyPlanarProj1.mp";
connectAttr "polyCube3.out" "polyTweak10.ip";
connectAttr "polyPlanarProj1.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyTweakUV3.ip";
connectAttr "polyTweak11.out" "polyPlanarProj2.ip";
connectAttr "pCube3Shape.wm" "polyPlanarProj2.mp";
connectAttr "polySoftEdge2.out" "polyTweak11.ip";
connectAttr "polyPlanarProj2.out" "polyMapCut11.ip";
connectAttr "polyMapCut11.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapCut12.ip";
connectAttr "polyMapCut12.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapCut13.ip";
connectAttr "polyMapCut13.out" "polyMapDel1.ip";
connectAttr "polyMapDel1.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyPlanarProj3.ip";
connectAttr "pCube3Shape.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyTweakUV10.ip";
connectAttr "polyTweakUV10.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyTweakUV11.ip";
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
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.oc" ":lambert1.c";
connectAttr "file1.ot" ":lambert1.it";
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCube3Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "file1.msg" ":initialMaterialInfo.t" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"file1\" \"fileTextureName\" \"C:/Users/rasmul2/Desktop/Experimental Game Design/puppet_water.png\" 3432205901 \"C:/Users/rasmul2/Desktop/Experimental Game Design/puppet_water.png\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of puppet.ma
