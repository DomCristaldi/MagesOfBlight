//Maya ASCII 2015 scene
//Name: fire_character.ma
//Last modified: Wed, Oct 28, 2015 09:04:36 PM
//Codeset: 1252
requires maya "2015";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOptions" -nodeType "mentalrayGlobals"
		 -nodeType "mentalrayItemsList" -nodeType "mia_material_x" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_shader_x_passes" -dataType "byteArray"
		 "Mayatomr" "2015.0 - 3.12.1.16 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2015";
fileInfo "version" "2015";
fileInfo "cutIdentifier" "201405190330-916664";
fileInfo "osv" "Microsoft Windows 7 Enterprise Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 3.6274359412705381 20.522501063809209 25.486412033848392 ;
	setAttr ".r" -type "double3" 3572.0616471490739 -8634.5999999957367 -1.9967081373194179e-016 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 32.721107895556365;
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
	setAttr ".ow" 22.959415698484843;
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
	setAttr ".ow" 65.340906590166028;
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
	setAttr ".ow" 58.859541417449869;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0.088582677165355062 1.8602362204724419 0.14763779527556894 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "polySurface1" -p "pCube1";
	setAttr ".t" -type "double3" 0.028562456095420047 23.25243779605789 -1.5261110555482846e-015 ;
	setAttr ".s" -type "double3" 1.5404572278277364 1.5404572278277364 1.5404572278277364 ;
createNode transform -n "transform5" -p "|pCube1|polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape1" -p "transform5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54166668653488159 0.91666656732559204 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[41]" -type "float3" 0 -1.7763568e-015 0.19541872 ;
	setAttr ".pt[42]" -type "float3" 0 -1.7763568e-015 0.19541872 ;
	setAttr ".pt[45]" -type "float3" 0 -1.7763568e-015 -0.3696253 ;
	setAttr ".pt[46]" -type "float3" 0 -1.7763568e-015 -0.3696253 ;
createNode transform -n "polySurface2" -p "pCube1";
	setAttr ".s" -type "double3" 0.88953119063967656 0.88953119063967656 0.88953119063967656 ;
createNode transform -n "transform3" -p "|pCube1|polySurface2";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape2" -p "transform3";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.1666666716337204 ;
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
	setAttr ".pv" -type "double2" 0.5 0.49999994039535522 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube2";
	setAttr ".t" -type "double3" -4.6684007063738955 1.9804400977995116 2.6293706575603775 ;
	setAttr ".r" -type "double3" 0 27.745792265711682 0 ;
	setAttr ".s" -type "double3" 0.78255415024031083 0.78255415024031139 0.98430542460864645 ;
createNode transform -n "transform2" -p "pCube2";
	setAttr ".v" no;
createNode mesh -n "pCubeShape2" -p "transform2";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.1250000037252903 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".pt[0:55]" -type "float3"  -0.09221863 -0.17785031 0.16138262 
		-0.050238855 -0.29066762 0.26375395 0.050238855 -0.29066762 0.26375395 0.09221863 
		-0.17785031 0.16138262 -0.36507192 -0.21435203 0.58351362 -0.15263206 -0.29436195 
		0.80131859 0.15263206 -0.29436195 0.80131859 0.36507192 -0.21435203 0.58351362 -0.36507192 
		0.21435203 0.58351362 -0.15263206 0.29436195 0.80131859 0.15263206 0.29436195 0.80131859 
		0.36507192 0.21435203 0.58351362 -0.09221863 0.17785031 0.16138262 -0.050238855 0.29066762 
		0.26375395 0.050238855 0.29066762 0.26375395 0.09221863 0.17785031 0.16138262 -0.33343628 
		0.64305586 0.19450459 -0.15263206 0.88308567 0.26710624 0.15263206 0.88308567 0.26710624 
		0.33343628 0.64305586 0.19450459 -0.33343628 0.64305586 -0.19450451 -0.15263206 0.88308567 
		-0.26710618 0.15263206 0.88308567 -0.26710618 0.33343628 0.64305586 -0.19450451 -0.09221863 
		0.17785031 -0.16138262 -0.050238855 0.29066762 -0.26375395 0.050238855 0.29066762 
		-0.26375395 0.09221863 0.17785031 -0.16138262 -0.36507192 0.21435203 -0.58351362 
		-0.15263206 0.29436195 -0.80131859 0.15263206 0.29436195 -0.80131859 0.36507192 0.21435203 
		-0.58351362 -0.36507192 -0.21435203 -0.58351362 -0.15263206 -0.29436195 -0.80131859 
		0.15263206 -0.29436195 -0.80131859 0.36507192 -0.21435203 -0.58351362 -0.09221863 
		-0.17785031 -0.16138262 -0.050238855 -0.29066762 -0.26375395 0.050238855 -0.29066762 
		-0.26375395 0.09221863 -0.17785031 -0.16138262 -0.33343628 -0.64305586 -0.19450459 
		-0.15263206 -0.88308567 -0.26710624 0.15263206 -0.88308567 -0.26710624 0.33343628 
		-0.64305586 -0.19450459 -0.33343628 -0.64305586 0.19450451 -0.15263206 -0.88308567 
		0.26710618 0.15263206 -0.88308567 0.26710618 0.33343628 -0.64305586 0.19450451 1.2271832 
		-0.42980555 -0.39000872 1.2271832 -0.42980555 0.39000872 1.2271832 0.42980555 -0.39000872 
		1.2271832 0.42980555 0.39000872 -1.2271832 -0.42980555 -0.39000872 -1.2271832 -0.42980555 
		0.39000872 -1.2271832 0.42980555 -0.39000872 -1.2271832 0.42980555 0.39000872;
createNode transform -n "polySurface2";
	setAttr ".t" -type "double3" 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.76249569608391388 0.76249569608391388 0.76249569608391388 ;
createNode mesh -n "polySurface2Shape" -p "|polySurface2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.83125260472297668 0.83704313635826111 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 0.12104457390606732 11.102790623775155 0.0019913006030405356 ;
	setAttr ".s" -type "double3" 1 1.0000000000000004 1 ;
createNode transform -n "transform4" -p "pCube3";
	setAttr ".v" no;
createNode mesh -n "pCubeShape3" -p "transform4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4583333432674408 0.3333333432674408 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface1";
	setAttr ".s" -type "double3" 0.45443239336884111 0.45443239336884111 0.45443239336884111 ;
createNode transform -n "transform7" -p "|polySurface1";
	setAttr ".v" no;
createNode mesh -n "polySurface1Shape" -p "transform7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.56776618957519531 0.87499991059303284 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface3";
	setAttr ".t" -type "double3" 0.29537375048206466 9.8319204737992507 0.21468829264172137 ;
	setAttr ".r" -type "double3" 0 180 0 ;
	setAttr ".s" -type "double3" 0.7810893155263261 0.87297801892173432 0.87297801892173432 ;
createNode mesh -n "polySurface3Shape" -p "polySurface3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54166668653488159 0.1250000037252903 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 219 ".uvst[0].uvsp[0:218]" -type "float2" 0.375 0 0.45833334
		 0 0.45833334 0.083333336 0.375 0.083333336 0.54166669 0 0.54166669 0.083333336 0.625
		 0 0.625 0.083333336 0.45833334 0.16666667 0.375 0.16666667 0.54166669 0.16666667
		 0.625 0.16666667 0.45833334 0.25 0.375 0.25 0.54166669 0.25 0.625 0.25 0.45833334
		 0.33333334 0.375 0.33333334 0.54166669 0.33333334 0.625 0.33333334 0.45833334 0.41666669
		 0.375 0.41666669 0.54166669 0.41666669 0.625 0.41666669 0.45833334 0.5 0.375 0.5
		 0.54166669 0.5 0.625 0.5 0.45833334 0.58333331 0.375 0.58333331 0.54166669 0.58333331
		 0.625 0.58333331 0.375 0.91666657 0.45833334 0.91666657 0.45833334 0.99999988 0.375
		 0.99999988 0.54166669 0.91666657 0.54166669 0.99999988 0.625 0.91666657 0.625 0.99999988
		 0.70833337 0 0.79166669 0.083333336 0.70833337 0.083333336 0.875 0.16666667 0.79166669
		 0.16666667 0.70833337 0.16666667 0.875 0.25 0.79166669 0.25 0.70833337 0.25 0.29166669
		 0 0.29166669 0.083333336 0.20833334 0.083333336 0.20833334 0.16666667 0.125 0.16666667
		 0.29166669 0.16666667 0.20833334 0.25 0.125 0.25 0.29166669 0.25 0 0 1 0 1 1 0 1
		 0 0 1 0 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 0.5 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 0.5 1 0.33306795 0.25 0.375 0.29193208 0.45833334 0.29193208 0.54166669
		 0.29193208 0.54166675 0.95806789 0.45833337 0.95806789 0.33306795 0 0.375 0.95806789
		 0.54166669 0.12272361 0.45833334 0.12272361 0.375 0 0.375 0.083333336 0.625 0 0.625
		 0.083333336 0.375 0.16666667 0.625 0.16666667 0.375 0.25 0.625 0.25 0.375 0.33333334
		 0.625 0.33333334 0.375 0.41666669 0.625 0.41666669 0.375 0.5 0.625 0.5 0.375 0.58333331
		 0.625 0.58333331 0.375 0.66666663 0.625 0.66666663 0.375 0.74999994 0.625 0.74999994
		 0.375 0.83333325 0.625 0.83333325 0.375 0.91666657 0.625 0.91666657 0.375 0.99999988
		 0.625 0.99999988 0.79166669 0 0.875 0 0.875 0.083333336 0.79166669 0.083333336 0.70833337
		 0 0.70833337 0.083333336 0.875 0.16666667 0.79166669 0.16666667 0.70833337 0.16666667
		 0.875 0.25 0.79166669 0.25 0.70833337 0.25 0.125 0 0.20833334 0 0.20833334 0.083333336
		 0.125 0.083333336 0.29166669 0 0.29166669 0.083333336 0.20833334 0.16666667 0.125
		 0.16666667 0.29166669 0.16666667 0.20833334 0.25 0.125 0.25 0.29166669 0.25 0.375
		 0.083333336 0.375 0 0.625 0 0.625 0.083333336 0.375 0.16666667 0.625 0.16666667 0.375
		 0.25 0.625 0.25 0.375 0.33333334 0.625 0.33333334 0.375 0.41666669 0.625 0.41666669
		 0.375 0.5 0.625 0.5 0.375 0.58333331 0.625 0.58333331 0.375 0.66666663 0.625 0.66666663
		 0.375 0.74999994 0.625 0.74999994 0.375 0.83333325 0.625 0.83333325 0.375 0.91666657
		 0.625 0.91666657 0.375 0.99999988 0.625 0.99999988 0.79166669 0 0.875 0 0.875 0.083333336
		 0.79166669 0.083333336 0.70833337 0 0.70833337 0.083333336 0.875 0.16666667 0.79166669
		 0.16666667 0.70833337 0.16666667 0.875 0.25 0.79166669 0.25 0.70833337 0.25 0.125
		 0 0.20833334 0 0.20833334 0.083333336 0.125 0.083333336 0.29166669 0 0.29166669 0.083333336
		 0.20833334 0.16666667 0.125 0.16666667 0.29166669 0.16666667 0.20833334 0.25 0.125
		 0.25 0.29166669 0.25 0.375 0.41666669 0.375 0.33333334 0.625 0.33333334 0.625 0.41666669
		 0.375 0.41666669 0.625 0.41666669 0.625 0.33333334 0.375 0.33333334 0.46875 0.35416669
		 0.375 0.33333334 0.625 0.33333334 0.625 0.25 0.375 0.25 0.46875 0.27083334 0.46875
		 0.4375 0.5625 0.38541669 0.375 0.33333334 0.375 0.25 0.625 0.25 0.625 0.33333334
		 0.5625 0.30208334 0.5625 0.46875;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 37 ".pt";
	setAttr ".pt[3]" -type "float3" 0.33735627 0 0.14285855 ;
	setAttr ".pt[7]" -type "float3" -0.33651555 0 0.14285855 ;
	setAttr ".pt[9]" -type "float3" 0.25539857 0 0.14285855 ;
	setAttr ".pt[11]" -type "float3" -0.25552851 0 0.14285855 ;
	setAttr ".pt[36]" -type "float3" 0.012804862 -0.0028993376 -0.0024721427 ;
	setAttr ".pt[37]" -type "float3" 0.044108503 -0.0031002513 -0.12096374 ;
	setAttr ".pt[38]" -type "float3" 0.013231732 0.0031860326 -0.002829473 ;
	setAttr ".pt[39]" -type "float3" 0.17183217 0.0036120694 -0.12119593 ;
	setAttr ".pt[40]" -type "float3" -0.041481942 -0.0031073387 -0.12033884 ;
	setAttr ".pt[41]" -type "float3" -0.012981445 -0.0037133945 -0.0032409234 ;
	setAttr ".pt[42]" -type "float3" -0.013332434 0.0033809142 -0.0038407519 ;
	setAttr ".pt[43]" -type "float3" -0.17183219 0.0037133964 -0.12046792 ;
	setAttr ".pt[67]" -type "float3" 0.25552851 0 0.14285855 ;
	setAttr ".pt[69]" -type "float3" 0.25552851 0 0.14285855 ;
	setAttr ".pt[73]" -type "float3" 0.19811417 0 0 ;
	setAttr ".pt[75]" -type "float3" 0.19811417 0 0 ;
	setAttr ".pt[82]" -type "float3" 0 -0.13769479 0 ;
	setAttr ".pt[83]" -type "float3" 0 -0.13769479 0 ;
	setAttr ".pt[84]" -type "float3" 0 -0.13769479 0 ;
	setAttr ".pt[85]" -type "float3" 0.14507809 -0.13769479 0 ;
	setAttr ".pt[87]" -type "float3" 0.12087582 0 0 ;
	setAttr ".pt[95]" -type "float3" -0.25262403 0 0.14285855 ;
	setAttr ".pt[97]" -type "float3" -0.25262403 0 0.14285855 ;
	setAttr ".pt[110]" -type "float3" 0 -0.13769479 0 ;
	setAttr ".pt[111]" -type "float3" 0 -0.13769479 0 ;
	setAttr ".pt[112]" -type "float3" 0 -0.13769479 0 ;
	setAttr ".pt[113]" -type "float3" -0.14507809 -0.13769479 0 ;
	setAttr ".pt[115]" -type "float3" -0.12087584 0 0 ;
	setAttr ".pt[120]" -type "float3" 0 -0.31525654 0 ;
	setAttr ".pt[121]" -type "float3" 0 -0.31525654 0 ;
	setAttr ".pt[122]" -type "float3" 0.19811417 -0.31525654 0 ;
	setAttr ".pt[123]" -type "float3" 0.19811417 -0.31525654 0 ;
	setAttr ".pt[135]" -type "float3" 0.19811417 0 0 ;
	setAttr ".pt[136]" -type "float3" 0 -0.19504195 0 ;
	setAttr ".pt[137]" -type "float3" 0 -0.19504195 0 ;
	setAttr ".pt[138]" -type "float3" 0 -0.19504195 0 ;
	setAttr ".pt[139]" -type "float3" 0 -0.19504195 0 ;
	setAttr -s 142 ".vt[0:141]"  -1.95970452 -0.2228055 2.51418519 -0.30683482 -1.18705893 2.49114633
		 -0.60564911 0.79921079 3.4757309 -2.56609488 0.99210393 2.62872982 1.12766147 -1.069246769 2.37834406
		 1.42776084 0.84563541 3.32542324 2.68106914 0.05885148 2.23651624 3.12184072 1.0037992001 2.28302574
		 -0.56744152 2.72348404 3.49136543 -2.6119976 2.83501554 2.62195969 1.39240932 2.70680857 3.33453774
		 3.18557215 2.79503274 2.25931406 -0.26945412 4.47044849 2.99865007 -1.99569929 4.16558361 2.44188261
		 1.10544848 4.40380573 2.89319587 2.71981955 3.96493506 2.14655232 -0.42858189 5.46963882 1.15928137
		 -2.32560015 4.91643333 1.090683937 1.2739253 5.36729956 1.12784111 2.98831105 4.57172298 0.94320005
		 -0.42858189 5.42124081 -1.043149352 -2.32560015 4.85161829 -0.96024948 1.2739253 5.31890202 -1.011709332
		 2.98831105 4.50690842 -0.81276572 -0.26945412 4.32801914 -2.80633831 -1.99569929 4.016753197 -2.25281239
		 1.10544848 4.26137638 -2.7008841 2.71981955 3.81610394 -1.9574821 -0.55936861 2.60680628 -3.21816921
		 -2.63025308 2.478508 -2.28668785 1.38788414 2.5721364 -3.070141077 3.23739982 2.36883688 -1.82804799
		 -2.41092873 -0.78084874 1.3165189 -0.1841123 -2.072300196 1.23478723 1.0029623508 -1.92820835 1.14417243
		 3.043455362 -0.36089277 1.12884331 3.64257693 1.066004276 -0.57222384 3.78033352 1.012369394 0.94622123
		 3.75653434 2.69052982 -0.66761512 3.8962009 2.80426264 0.88423622 -3.37626886 1.010477543 1.11304021
		 -3.24122787 0.84868705 -0.77745372 -3.33492494 2.74255371 -0.93758112 -3.44770908 2.83131218 1.078581333
		 -2.91643786 1.1084795 -2.21343493 -0.89618284 1.24931216 -3.21765256 -2.8764236 -0.17072058 -1.66268229
		 -1.62574947 -0.71851587 -2.6669004 -3.46066618 -1.242275 -0.97987968 -2.95157242 -1.46525884 -1.38865244
		 -3.90127134 -1.62854576 -0.53285253 2.32186866 0.56264842 -2.55331707 3.27998734 1.084227324 -1.82508826
		 3.013563633 -0.216501 -1.6999799 3.5106833 0.054119945 -1.32213819 3.8055501 -0.73626089 -0.82846773
		 -2.16170049 4.54339981 1.76198006 -0.3495248 4.97322559 2.073107481 1.19022346 4.88862085 2.0048961639
		 1.064914942 -1.50146317 1.75732768 -0.24508272 -1.63249898 1.85896564 -2.18675375 -0.50360465 1.91153777
		 1.4110508 1.7253809 3.32973146 -0.58758903 1.70878255 3.48312116 -3.94142866 0.29146099 4.51883602
		 -2.99588275 0.29146099 3.92772484 -3.9369626 1.21092629 4.9859724 -2.61347222 1.21092629 4.19605112
		 -3.9369626 2.74995399 4.9859724 -2.61347222 2.74995399 4.19605112 -3.94142866 3.66941929 4.51883602
		 -2.99588275 3.66941929 3.92772484 -4.64230776 4.28898144 3.59191537 -3.362638 4.28898144 2.82504416
		 -5.36956358 4.28898144 2.20938277 -4.089893818 4.28898144 1.44251192 -5.73631907 3.66941929 1.10670221
		 -4.79077339 3.66941929 0.51559097 -6.11873007 2.74995399 0.83837593 -4.79523945 2.74995399 0.048454314
		 -6.11873007 1.21092629 0.83837593 -4.79523945 1.21092629 0.048454314 -5.73631907 0.29146099 1.10670221
		 -4.79077339 0.29146099 0.51559097 -5.36956406 -0.32810122 2.20938277 -4.089894295 -0.32810122 1.44251168
		 -4.64230824 -0.32810122 3.59191489 -3.36263824 -0.32810122 2.82504416 -6.078141212 1.1274935 2.36468053
		 -5.17170858 1.1274935 4.087832451 -6.078141212 2.8333869 2.36468053 -5.17170858 2.8333869 4.087832451
		 4.47610569 1.21092629 4.73526144 4.48057079 0.29146099 4.26812506 3.5350256 0.29146099 3.67701364
		 3.15261459 1.21092629 3.94533992 4.47610569 2.74995399 4.73526144 3.15261459 2.74995399 3.94533992
		 4.48057079 3.66941929 4.26812506 3.5350256 3.66941929 3.67701364 5.18145084 4.28898144 3.34120417
		 3.90178013 4.28898144 2.57433295 5.90870571 4.28898144 1.95867157 4.6290369 4.28898144 1.19180083
		 6.27546215 3.66941929 0.85599107 5.329916 3.66941929 0.26487982 6.6578722 2.74995399 0.58766478
		 5.33438206 2.74995399 -0.20225683 6.6578722 1.21092629 0.58766478 5.33438206 1.21092629 -0.20225683
		 6.27546215 0.29146099 0.85599107 5.329916 0.29146099 0.26487982 5.90870667 -0.32810122 1.95867157
		 4.6290369 -0.32810122 1.19180059 5.18145084 -0.32810122 3.34120369 3.90178108 -0.32810122 2.57433295
		 6.61728382 1.1274935 2.11396933 5.71085072 1.1274935 3.83712125 6.61728382 2.8333869 2.11396933
		 5.71085072 2.8333869 3.83712125 -4.43969297 5.35646963 2.95080996 -4.80526304 5.12805605 2.44089198
		 -3.92693853 5.22977209 2.59353495 -4.2925086 5.0013580322 2.083616734 5.27430487 4.70914555 2.32482791
		 4.63154888 4.7738924 1.94512224 4.26626015 4.65716505 2.62966466 4.90901709 4.59241819 3.0093700886
		 4.67014885 5.2288456 2.74636507 4.57885361 4.46814346 3.55932331 4.075016499 4.46814346 3.25738764
		 3.93061638 4.22420692 3.69153953 4.30290031 4.22420692 3.92427444 4.17187548 4.53688145 3.76938391
		 5.64493847 4.5418148 1.04508853 -4.2975111 5.4393034 2.23050499 -3.78749061 4.17416382 4.42424059
		 -4.25626707 4.58855247 3.80427837 -3.15507102 4.17416382 4.028881073 -3.40037179 4.58855247 3.29136348
		 -3.42600489 4.67573833 3.7935791 -4.94060946 4.37867928 0.81251776;
	setAttr -s 287 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 1 3 2 1 0 3 0 1 4 0 4 5 1 2 5 1 4 6 0 6 7 0
		 5 7 1 2 63 1 9 8 1 3 9 0 5 62 1 8 10 1 10 11 1 8 12 1 13 12 0 9 13 0 10 14 1 12 14 0
		 11 15 0 14 15 0 12 57 1 17 16 1 13 56 0 14 58 1 16 18 1 18 19 1 16 20 1 21 20 1 17 21 0
		 18 22 1 20 22 1 19 23 0 22 23 1 20 24 1 25 24 0 21 25 0 22 26 1 24 26 0 23 27 0 26 27 0
		 24 28 1 29 28 1 25 29 0 26 30 1 28 30 1 27 31 0 30 31 1 32 33 0 33 60 1 32 61 0 33 34 0
		 34 59 1 34 35 0 35 36 0 36 37 1 35 37 1 31 36 0 31 38 1 38 39 1 37 39 0 39 11 0 38 23 1
		 39 19 1 41 32 0 32 40 1 41 40 1 40 3 0 29 41 0 29 42 1 42 43 1 42 21 1 43 17 1 29 44 0
		 28 45 1 44 45 1 45 30 0 44 46 0 45 47 0 46 47 1 46 48 0 47 49 0 48 49 1 48 50 0 49 50 0
		 30 51 0 31 52 0 51 52 1 51 53 0 52 54 0 53 54 1 53 55 0 54 55 0 43 9 0 56 17 0 57 16 1
		 58 18 1 15 19 0 37 7 0 35 6 0 59 4 1 60 1 1 61 0 0 36 38 1 7 11 0 62 10 1 63 8 1
		 40 43 0 41 42 1 64 65 0 66 67 1 68 69 1 70 71 0 72 73 0 74 75 0 76 77 0 78 79 1 80 81 1
		 82 83 0 84 85 1 86 87 1 64 66 0 65 67 0 66 68 0 67 69 0 68 70 0 69 71 0 70 72 0 71 73 0
		 72 74 1 73 75 1 74 76 0 75 77 0 76 78 0 77 79 0 78 80 0 79 81 0 80 82 0 81 83 0 82 84 0
		 83 85 0 84 86 0 85 87 0 86 64 0 87 65 0 81 40 1 40 3 0 3 67 1 79 43 1 43 9 0 9 69 1
		 85 40 1 87 3 1 40 43 0 3 9 0 43 75 1 9 73 1 80 88 1 88 89 1 89 66 1 78 90 1 90 91 1
		 91 68 1 84 88 1;
	setAttr ".ed[166:286]" 86 89 1 88 90 1 89 91 1 90 74 1 91 72 1 93 92 0 93 94 0
		 94 95 0 92 95 1 92 96 0 95 97 0 96 97 1 96 98 0 97 99 0 98 99 0 98 100 0 99 101 0
		 100 101 0 100 102 1 101 103 1 102 103 0 102 104 0 103 105 0 104 105 0 104 106 0 105 107 0
		 106 107 1 106 108 0 107 109 0 108 109 1 108 110 0 109 111 0 110 111 0 110 112 0 111 113 0
		 112 113 1 112 114 0 113 115 0 114 115 1 114 93 0 115 94 0 109 37 1 113 37 1 37 7 0
		 115 7 1 7 95 1 107 39 1 37 39 0 7 11 0 11 97 1 39 103 1 39 11 0 11 101 1 112 116 1
		 108 116 1 114 117 1 116 117 1 117 92 1 116 118 1 106 118 1 117 119 1 118 119 1 119 96 1
		 118 102 1 119 100 1 72 120 0 74 121 0 120 121 1 73 122 0 120 122 1 75 123 0 122 123 0
		 121 123 0 102 124 0 103 125 0 124 125 0 101 126 0 126 125 1 100 127 0 127 126 1 127 124 0
		 124 128 0 125 128 0 126 128 0 127 128 0 100 129 0 101 130 0 129 130 0 99 131 0 131 130 0
		 98 132 0 132 131 0 132 129 0 129 133 0 130 133 0 131 133 0 132 133 0 104 134 0 105 134 0
		 103 134 0 102 134 0 120 135 0 121 135 0 122 135 0 123 135 0 70 136 0 72 137 0 136 137 1
		 71 138 0 136 138 1 73 139 0 138 139 1 137 139 1 136 140 0 137 140 0 138 140 0 139 140 0
		 74 141 0 76 141 0 75 141 0 77 141 0;
	setAttr -s 138 -ch 537 ".fc[0:137]" -type "polyFaces" 
		f 4 0 1 -3 -4
		mu 0 4 0 1 2 3
		f 4 4 5 -7 -2
		mu 0 4 1 4 5 2
		f 4 7 8 -10 -6
		mu 0 4 4 6 7 5
		f 5 -13 2 10 108 -12
		mu 0 5 9 3 2 96 8
		f 6 -11 6 13 107 -15 -109
		mu 0 6 96 2 5 95 10 8
		f 5 -14 9 106 -16 -108
		mu 0 5 95 5 7 11 10
		f 4 11 16 -18 -19
		mu 0 4 9 8 12 13
		f 4 14 19 -21 -17
		mu 0 4 8 10 14 12
		f 4 15 21 -23 -20
		mu 0 4 10 11 15 14
		f 6 97 -25 -97 -26 17 23
		mu 0 6 89 16 17 88 13 12
		f 6 98 -28 -98 -24 20 26
		mu 0 6 90 18 16 89 12 14
		f 5 99 -29 -99 -27 22
		mu 0 5 15 19 18 90 14
		f 4 24 29 -31 -32
		mu 0 4 17 16 20 21
		f 4 27 32 -34 -30
		mu 0 4 16 18 22 20
		f 4 28 34 -36 -33
		mu 0 4 18 19 23 22
		f 4 30 36 -38 -39
		mu 0 4 21 20 24 25
		f 4 33 39 -41 -37
		mu 0 4 20 22 26 24
		f 4 35 41 -43 -40
		mu 0 4 22 23 27 26
		f 4 37 43 -45 -46
		mu 0 4 25 24 28 29
		f 4 40 46 -48 -44
		mu 0 4 24 26 30 28
		f 4 42 48 -50 -47
		mu 0 4 26 27 31 30
		f 6 -53 50 51 103 -1 -105
		mu 0 6 94 32 33 92 34 35
		f 6 -52 53 54 102 -5 -104
		mu 0 6 92 33 36 91 37 34
		f 5 -55 55 101 -8 -103
		mu 0 5 91 36 38 39 37
		f 3 56 57 -59
		mu 0 3 40 41 42
		f 4 58 100 -9 -102
		mu 0 4 40 42 7 6
		f 3 -60 60 -106
		mu 0 3 41 43 44
		f 4 -63 -58 105 61
		mu 0 4 45 42 41 44
		f 4 -61 -49 -42 -65
		mu 0 4 44 43 46 47
		f 4 -62 64 -35 -66
		mu 0 4 45 44 47 48
		f 4 -64 65 -100 -22
		mu 0 4 11 45 48 15
		f 3 66 67 -69
		mu 0 3 51 49 50
		f 5 -70 -68 52 104 3
		mu 0 5 3 50 49 93 0
		f 3 70 110 -72
		mu 0 3 53 51 52
		f 4 68 109 -73 -111
		mu 0 4 51 50 54 52
		f 4 71 73 38 45
		mu 0 4 53 52 55 56
		f 4 72 74 31 -74
		mu 0 4 52 54 57 55
		f 5 96 -75 95 18 25
		mu 0 5 87 57 54 9 13
		f 4 44 76 -78 -76
		mu 0 4 58 59 60 61
		f 3 47 -79 -77
		mu 0 3 62 63 64
		f 4 77 80 -82 -80
		mu 0 4 65 66 67 68
		f 4 81 83 -85 -83
		mu 0 4 69 70 71 72
		f 3 84 86 -86
		mu 0 3 73 74 75
		f 4 49 88 -90 -88
		mu 0 4 76 77 78 79
		f 4 89 91 -93 -91
		mu 0 4 80 81 82 83
		f 3 92 94 -94
		mu 0 3 84 85 86
		f 4 -124 111 124 -113
		mu 0 4 98 97 99 100
		f 4 -126 112 126 -114
		mu 0 4 101 98 100 102
		f 4 -128 113 128 -115
		mu 0 4 103 101 102 104
		f 4 -136 117 136 -119
		mu 0 4 111 109 110 112
		f 4 -138 118 138 -120
		mu 0 4 113 111 112 114
		f 4 -140 119 140 -121
		mu 0 4 115 113 114 116
		f 4 -142 120 142 -122
		mu 0 4 117 115 116 118
		f 4 -144 121 144 -123
		mu 0 4 119 117 118 120
		f 4 -146 122 146 -112
		mu 0 4 121 119 120 122
		f 4 -143 -141 147 -154
		mu 0 4 123 124 125 126
		f 4 -145 153 148 -155
		mu 0 4 127 123 126 128
		f 4 -147 154 149 -125
		mu 0 4 99 127 128 100
		f 4 -148 -139 150 -156
		mu 0 4 126 125 129 130
		f 4 -150 156 152 -127
		mu 0 4 100 128 131 102
		f 4 -151 -137 -135 -158
		mu 0 4 130 129 132 133
		f 4 -152 157 -133 -159
		mu 0 4 131 130 133 134
		f 4 -153 158 -131 -129
		mu 0 4 102 131 134 104
		f 4 141 165 -160 139
		mu 0 4 135 136 137 138
		f 4 143 166 -161 -166
		mu 0 4 136 139 140 137
		f 4 145 123 -162 -167
		mu 0 4 139 97 98 140
		f 4 159 167 -163 137
		mu 0 4 138 137 141 142
		f 4 160 168 -164 -168
		mu 0 4 137 140 143 141
		f 4 161 125 -165 -169
		mu 0 4 140 98 101 143
		f 4 162 169 133 135
		mu 0 4 142 141 144 145
		f 4 163 170 131 -170
		mu 0 4 141 143 146 144
		f 4 164 127 129 -171
		mu 0 4 143 101 103 146
		f 4 174 -174 -173 171
		mu 0 4 147 150 149 148
		f 4 177 -177 -175 175
		mu 0 4 151 152 150 147
		f 4 180 -180 -178 178
		mu 0 4 153 154 152 151
		f 4 192 -192 -190 190
		mu 0 4 161 162 160 159
		f 4 195 -195 -193 193
		mu 0 4 163 164 162 161
		f 4 198 -198 -196 196
		mu 0 4 165 166 164 163
		f 4 201 -201 -199 199
		mu 0 4 167 168 166 165
		f 4 204 -204 -202 202
		mu 0 4 169 170 168 167
		f 4 172 -207 -205 205
		mu 0 4 171 172 170 169
		f 4 208 -208 197 200
		mu 0 4 173 176 175 174
		f 4 210 -210 -209 203
		mu 0 4 177 178 176 173
		f 4 173 -212 -211 206
		mu 0 4 149 150 178 177
		f 4 213 -213 194 207
		mu 0 4 176 180 179 175
		f 4 176 -216 -215 211
		mu 0 4 150 152 181 178
		f 4 216 188 191 212
		mu 0 4 180 183 182 179
		f 4 218 185 -217 217
		mu 0 4 181 184 183 180
		f 4 179 182 -219 215
		mu 0 4 152 154 184 181
		f 4 -197 220 -220 -200
		mu 0 4 185 188 187 186
		f 4 219 222 -222 -203
		mu 0 4 186 187 190 189
		f 4 221 223 -172 -206
		mu 0 4 189 190 147 148
		f 4 -194 225 -225 -221
		mu 0 4 188 192 191 187
		f 4 224 227 -227 -223
		mu 0 4 187 191 193 190
		f 4 226 228 -176 -224
		mu 0 4 190 193 151 147
		f 4 -191 -188 -230 -226
		mu 0 4 192 195 194 191
		f 4 229 -185 -231 -228
		mu 0 4 191 194 196 193
		f 4 230 -182 -179 -229
		mu 0 4 193 196 153 151
		f 4 -132 231 233 -233
		mu 0 4 107 105 198 197
		f 4 115 234 -236 -232
		mu 0 4 105 106 199 198
		f 4 132 236 -238 -235
		mu 0 4 106 108 200 199
		f 4 -117 232 238 -237
		mu 0 4 108 107 197 200
		f 4 186 240 -242 -240
		mu 0 4 157 158 202 201
		f 4 -186 242 243 -241
		mu 0 4 158 156 203 202
		f 4 -184 244 245 -243
		mu 0 4 156 155 204 203
		f 4 184 239 -247 -245
		mu 0 4 155 157 201 204
		f 3 241 248 -248
		mu 0 3 201 202 205
		f 3 -244 249 -249
		mu 0 3 202 203 205
		f 3 -246 250 -250
		mu 0 3 203 204 205
		f 3 246 247 -251
		mu 0 3 204 201 205
		f 4 183 252 -254 -252
		mu 0 4 155 156 207 206
		f 4 -183 254 255 -253
		mu 0 4 156 154 208 207
		f 4 -181 256 257 -255
		mu 0 4 154 153 209 208
		f 4 181 251 -259 -257
		mu 0 4 153 155 206 209
		f 3 253 260 -260
		mu 0 3 206 207 210
		f 3 -256 261 -261
		mu 0 3 207 208 210
		f 3 -258 262 -262
		mu 0 3 208 209 210
		f 3 258 259 -263
		mu 0 3 209 206 210
		f 3 189 264 -264
		mu 0 3 159 160 211
		f 3 -189 265 -265
		mu 0 3 160 158 211
		f 3 -187 266 -266
		mu 0 3 158 157 211
		f 3 187 263 -267
		mu 0 3 157 159 211
		f 3 -234 267 -269
		mu 0 3 197 198 212
		f 3 235 269 -268
		mu 0 3 198 199 212
		f 3 237 270 -270
		mu 0 3 199 200 212
		f 3 -239 268 -271
		mu 0 3 200 197 212
		f 4 -130 271 273 -273
		mu 0 4 105 103 214 213
		f 4 114 274 -276 -272
		mu 0 4 103 104 215 214
		f 4 130 276 -278 -275
		mu 0 4 104 106 216 215
		f 4 -116 272 278 -277
		mu 0 4 106 105 213 216
		f 3 -274 279 -281
		mu 0 3 213 214 217
		f 3 275 281 -280
		mu 0 3 214 215 217
		f 3 277 282 -282
		mu 0 3 215 216 217
		f 3 -279 280 -283
		mu 0 3 216 213 217
		f 3 -134 283 -285
		mu 0 3 109 107 218
		f 3 116 285 -284
		mu 0 3 107 108 218
		f 3 134 286 -286
		mu 0 3 108 110 218
		f 3 -118 284 -287
		mu 0 3 110 109 218;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "directionalLight1";
	setAttr ".t" -type "double3" 0 9.332393971169763 12.566735133457835 ;
	setAttr ".r" -type "double3" -29.892063142461261 0 0 ;
createNode directionalLight -n "directionalLightShape1" -p "directionalLight1";
	setAttr -k off ".v";
	setAttr ".in" 1.0924370288848877;
createNode transform -n "directionalLight2";
	setAttr ".t" -type "double3" 0 0 -6.2878616113844714 ;
	setAttr ".r" -type "double3" 89.487641374800702 -18.731674114665076 -25.821962050689365 ;
createNode directionalLight -n "directionalLightShape2" -p "directionalLight2";
	setAttr -k off ".v";
	setAttr ".in" 1.0924370288848877;
createNode transform -n "pCube4";
	setAttr ".t" -type "double3" -0.5472604288266909 -0.23300623108198074 0.3272435986280946 ;
createNode transform -n "transform6" -p "pCube4";
	setAttr ".v" no;
createNode mesh -n "pCubeShape4" -p "transform6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface4";
	setAttr ".t" -type "double3" 0 0.70104896195680411 0 ;
createNode transform -n "transform9" -p "polySurface4";
	setAttr ".v" no;
createNode mesh -n "polySurface1Shape" -p "transform9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.375 0.37500001490116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube5";
	setAttr ".t" -type "double3" -6.6660036839477046 8.3794555611276085 0.047257860387593165 ;
createNode transform -n "transform8" -p "pCube5";
	setAttr ".v" no;
createNode mesh -n "pCubeShape5" -p "transform8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 7 ".pt";
	setAttr ".pt[6]" -type "float3" -0.15594316 0.11240257 0 ;
	setAttr ".pt[7]" -type "float3" 0 0.11240257 0 ;
	setAttr ".pt[8]" -type "float3" 0.071126767 0.11240257 0 ;
	setAttr ".pt[15]" -type "float3" -0.15594316 0 0 ;
	setAttr ".pt[17]" -type "float3" 0.071126767 0 0 ;
	setAttr ".pt[20]" -type "float3" 0 -0.21852414 0 ;
	setAttr ".pt[21]" -type "float3" 0 -0.21852414 0 ;
createNode transform -n "polySurface5";
createNode transform -n "polySurface6" -p "polySurface5";
createNode transform -n "polySurface8" -p "polySurface6";
createNode transform -n "polySurface9" -p "polySurface8";
createNode transform -n "polySurface11" -p "polySurface9";
createNode mesh -n "polySurfaceShape8" -p "polySurface11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.13385589420795441 0.6695396900177002 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface12" -p "polySurface9";
	setAttr ".t" -type "double3" -0.22208600124591804 0 0 ;
createNode mesh -n "polySurfaceShape9" -p "polySurface12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.11226710677146912 0.96555847115814686 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform13" -p "polySurface9";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape6" -p "transform13";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "polySurface10" -p "polySurface8";
	setAttr ".t" -type "double3" 0.043070569612313925 -0.030633183065913453 0 ;
createNode mesh -n "polySurfaceShape7" -p "polySurface10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.27462169528007507 0.31620962917804718 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform12" -p "polySurface8";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape5" -p "transform12";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[317:324]" -type "float3"  0 1.4901161e-008 -5.9604645e-008 
		-5.9604645e-008 -5.9604645e-008 -5.9604645e-008 0 -7.4505806e-009 5.9604645e-008 
		-1.4901161e-008 5.9604645e-008 2.9802322e-008 -7.4505806e-009 -1.1920929e-007 -5.9604645e-008 
		0 -1.1920929e-007 -2.2351742e-008 2.9802322e-008 1.1920929e-007 5.9604645e-008 2.9802322e-008 
		1.1920929e-007 -1.4901161e-008;
createNode transform -n "transform11" -p "polySurface6";
	setAttr ".v" no;
createNode mesh -n "polySurfaceShape3" -p "transform11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "transform10" -p "polySurface5";
	setAttr ".v" no;
createNode mesh -n "polySurface5Shape" -p "transform10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pCube6";
	setAttr ".t" -type "double3" 0.16883499960583312 16.121407863631067 -0.087655743487303525 ;
	setAttr ".s" -type "double3" 0.76340043019675263 0.76340043019675263 0.76340043019675263 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.30577214062213898 0.60549046099185944 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 5 ".pt";
	setAttr ".pt[33]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".pt[34]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".pt[35]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".pt[36]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".pt[39]" -type "float3" -1.4901161e-008 0 0 ;
createNode transform -n "pCube7";
	setAttr ".t" -type "double3" -2.475750352644086 10.236935439535646 0.41321996929957816 ;
	setAttr ".r" -type "double3" -89.616070247190592 -65.357241620915218 -0.34896433391376502 ;
	setAttr ".s" -type "double3" 0.45611866576970345 0.30365536438094659 0.55419407206884308 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.20152228698134422 0.8936484158039093 ;
	setAttr -s 2 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uvSet";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane8";
	setAttr ".t" -type "double3" 1.0042857506001159 16.453342384475835 -0.82578140526729427 ;
	setAttr ".r" -type "double3" 0 -15.418681046359215 0 ;
	setAttr ".s" -type "double3" 0.17751804589492512 0.5835537109868123 0.58355371098681208 ;
createNode mesh -n "pPlaneShape8" -p "pPlane8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.0099651674972847104 0.74545291066169739 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape12" -p "pPlane8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1071428656578064 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0 0 1 0 0 0.10714287
		 1 0.10714287 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.26051676 0 0.13505539 1.26051688 0 0.13505539
		 -1.26051676 0 -0.13505539 1.26051688 0 -0.13505539 -1.011451483 0.43932343 -0.42575854
		 -0.91557056 0.88903999 -0.99072808 -0.81567961 0.73770142 -1.99351037 -0.71578872 0.023044586 -2.73315263
		 -0.61589789 -1.11577988 -2.63853383 -0.51600701 -2.5767355 -2.3019774 -0.41611612 -4.19577885 -2.43193507
		 -0.31622517 -5.45074844 -3.018753767 -0.2163343 -5.91015053 -3.88348317 -0.11644341 -5.88168335 -4.8843894
		 1.29973543 0.37709808 -0.4064495 1.2038548 0.86882782 -1.0070544481 1.10396373 0.7144413 -1.98993123
		 1.0040727854 0.007894516 -2.71848893 0.90418172 -1.11419678 -2.61996579 0.80429065 -2.5731163 -2.28620076
		 0.70439965 -4.19688797 -2.41824269 0.6045087 -5.4555378 -3.0085327625 0.50461769 -5.91795826 -3.87933993
		 0.40472668 -5.88807011 -4.88457823;
	setAttr -s 34 ".ed[0:33]"  0 1 0 0 2 0 1 3 0 2 3 0 2 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 3 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 4 14 1 5 15 0 6 16 0 7 17 0 8 18 1 9 19 1
		 10 20 1 11 21 0 12 22 1 13 23 0;
	setAttr -s 11 -ch 44 ".fc[0:10]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 3 14 -25 -5
		mu 0 4 4 5 6 7
		f 4 24 15 -26 -6
		mu 0 4 8 9 10 11
		f 4 25 16 -27 -7
		mu 0 4 12 13 14 15
		f 4 26 17 -28 -8
		mu 0 4 16 17 18 19
		f 4 27 18 -29 -9
		mu 0 4 20 21 22 23
		f 4 28 19 -30 -10
		mu 0 4 24 25 26 27
		f 4 29 20 -31 -11
		mu 0 4 28 29 30 31
		f 4 30 21 -32 -12
		mu 0 4 32 33 34 35
		f 4 31 22 -33 -13
		mu 0 4 36 37 38 39
		f 4 32 23 -34 -14
		mu 0 4 40 41 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "group1";
	setAttr ".t" -type "double3" 0 1.7680071928831751 0 ;
createNode transform -n "pPlane4" -p "group1";
	setAttr ".t" -type "double3" 0.63428166260927399 16.521290715927002 -0.861906397811675 ;
	setAttr ".r" -type "double3" 0 -13.078824528643038 0 ;
	setAttr ".s" -type "double3" 0.30420172565561304 1.0000000000000004 1 ;
createNode mesh -n "pPlaneShape4" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.37267545307986438 0.24544161558151245 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape10" -p "pPlane4";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1071428656578064 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0 0 1 0 0 0.10714287
		 1 0.10714287 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.26051676 0 0.13505539 1.26051688 0 0.13505539
		 -1.26051676 0 -0.13505539 1.26051688 0 -0.13505539 -1.011451483 0.43932343 -0.42575854
		 -0.91557056 0.88903999 -0.99072808 -0.81567961 0.73770142 -1.99351037 -0.71578872 0.023044586 -2.73315263
		 -0.61589789 -1.11577988 -2.63853383 -0.51600701 -2.5767355 -2.3019774 -0.41611612 -4.19577885 -2.43193507
		 -0.31622517 -5.45074844 -3.018753767 -0.2163343 -5.91015053 -3.88348317 -0.11644341 -5.88168335 -4.8843894
		 1.29973543 0.37709808 -0.4064495 1.2038548 0.86882782 -1.0070544481 1.10396373 0.7144413 -1.98993123
		 1.0040727854 0.007894516 -2.71848893 0.90418172 -1.11419678 -2.61996579 0.80429065 -2.5731163 -2.28620076
		 0.70439965 -4.19688797 -2.41824269 0.6045087 -5.4555378 -3.0085327625 0.50461769 -5.91795826 -3.87933993
		 0.40472668 -5.88807011 -4.88457823;
	setAttr -s 34 ".ed[0:33]"  0 1 0 0 2 0 1 3 0 2 3 0 2 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 3 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 4 14 1 5 15 0 6 16 0 7 17 0 8 18 1 9 19 1
		 10 20 1 11 21 0 12 22 1 13 23 0;
	setAttr -s 11 -ch 44 ".fc[0:10]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 3 14 -25 -5
		mu 0 4 4 5 6 7
		f 4 24 15 -26 -6
		mu 0 4 8 9 10 11
		f 4 25 16 -27 -7
		mu 0 4 12 13 14 15
		f 4 26 17 -28 -8
		mu 0 4 16 17 18 19
		f 4 27 18 -29 -9
		mu 0 4 20 21 22 23
		f 4 28 19 -30 -10
		mu 0 4 24 25 26 27
		f 4 29 20 -31 -11
		mu 0 4 28 29 30 31
		f 4 30 21 -32 -12
		mu 0 4 32 33 34 35
		f 4 31 22 -33 -13
		mu 0 4 36 37 38 39
		f 4 32 23 -34 -14
		mu 0 4 40 41 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane5" -p "group1";
	setAttr ".t" -type "double3" 0.15887036748399125 16.836944066083426 -1.2365774177262923 ;
	setAttr ".s" -type "double3" 0.30420172565561304 1.0000000000000004 1 ;
createNode mesh -n "pPlaneShape5" -p "pPlane5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.57246765494346619 0.24519153882283717 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape13" -p "pPlane5";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1071428656578064 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0 0 1 0 0 0.10714287
		 1 0.10714287 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.26051676 0 0.13505539 1.26051688 0 0.13505539
		 -1.26051676 0 -0.13505539 1.26051688 0 -0.13505539 -1.011451483 0.43932343 -0.42575854
		 -0.91557056 0.88903999 -0.99072808 -0.81567961 0.73770142 -1.99351037 -0.71578872 0.023044586 -2.73315263
		 -0.61589789 -1.11577988 -2.63853383 -0.51600701 -2.5767355 -2.3019774 -0.41611612 -4.19577885 -2.43193507
		 -0.31622517 -5.45074844 -3.018753767 -0.2163343 -5.91015053 -3.88348317 -0.11644341 -5.88168335 -4.8843894
		 1.29973543 0.37709808 -0.4064495 1.2038548 0.86882782 -1.0070544481 1.10396373 0.7144413 -1.98993123
		 1.0040727854 0.007894516 -2.71848893 0.90418172 -1.11419678 -2.61996579 0.80429065 -2.5731163 -2.28620076
		 0.70439965 -4.19688797 -2.41824269 0.6045087 -5.4555378 -3.0085327625 0.50461769 -5.91795826 -3.87933993
		 0.40472668 -5.88807011 -4.88457823;
	setAttr -s 34 ".ed[0:33]"  0 1 0 0 2 0 1 3 0 2 3 0 2 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 3 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 4 14 1 5 15 0 6 16 0 7 17 0 8 18 1 9 19 1
		 10 20 1 11 21 0 12 22 1 13 23 0;
	setAttr -s 11 -ch 44 ".fc[0:10]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 3 14 -25 -5
		mu 0 4 4 5 6 7
		f 4 24 15 -26 -6
		mu 0 4 8 9 10 11
		f 4 25 16 -27 -7
		mu 0 4 12 13 14 15
		f 4 26 17 -28 -8
		mu 0 4 16 17 18 19
		f 4 27 18 -29 -9
		mu 0 4 20 21 22 23
		f 4 28 19 -30 -10
		mu 0 4 24 25 26 27
		f 4 29 20 -31 -11
		mu 0 4 28 29 30 31
		f 4 30 21 -32 -12
		mu 0 4 32 33 34 35
		f 4 31 22 -33 -13
		mu 0 4 36 37 38 39
		f 4 32 23 -34 -14
		mu 0 4 40 41 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane6" -p "group1";
	setAttr ".t" -type "double3" 0.39840942858614692 16.649194901722293 -1.5330928520226932 ;
	setAttr ".r" -type "double3" 0.058087391928628739 -9.0124320388150228 0.68419909718137828 ;
	setAttr ".s" -type "double3" 0.30420172565561304 1.0000000000000004 1 ;
createNode mesh -n "pPlaneShape6" -p "pPlane6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.029690691153518856 0.29204579652287066 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape11" -p "pPlane6";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 108 ".uvst[0].uvsp[0:107]" -type "float2" 0 0 1 0 0 0.10714287
		 1 0.10714287 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0
		 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1
		 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1
		 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 56 ".vt[0:55]"  -1.26051664 0 0.13505539 1.26051688 0 0.13505539
		 -1.26051664 0 -0.13505539 1.26051688 0 -0.13505539 -1.26051664 0 -0.13505539 -1.26051664 0 -0.13505539
		 -1.26051664 0 -0.13505539 -1.26051664 0 -0.13505539 -1.26051664 0 -0.13505539 -1.26051664 0 -0.13505539
		 -1.26051664 0 -0.13505539 -1.26051664 0 -0.13505539 -1.26051664 0 -0.13505539 -1.26051664 0 -0.13505539
		 1.26051688 0 -0.13505539 1.26051688 0 -0.13505539 1.26051688 0 -0.13505539 1.26051688 0 -0.13505539
		 1.26051688 0 -0.13505539 1.26051688 0 -0.13505539 1.26051688 0 -0.13505539 1.26051688 0 -0.13505539
		 1.26051688 0 -0.13505539 1.26051688 0 -0.13505539 -1.035759211 -0.12702751 -0.55149859
		 -1.0030759573 0.17704964 -0.73178214 -0.94896203 0.37463188 -1.13135922 -0.89484793 0.36284828 -1.61153424
		 -0.84073395 0.063781738 -1.97264111 -0.7866199 -0.58601189 -2.015553713 -0.73250586 -1.47678852 -1.8392626
		 -0.67839181 -2.43328953 -1.74084055 -0.62427783 -3.28000736 -1.9390732 -0.57016379 -3.85178852 -2.37534022
		 -0.51604968 -3.98507786 -2.92067409 -0.4619357 -3.68068695 -3.44453073 -0.40782166 -3.17097473 -3.80672216
		 -0.35370755 -2.6992712 -3.86442471 -0.29959351 -2.33022213 -3.64899039 -0.24547948 -2.0071792603 -3.29429984
		 1.32404232 -0.20896912 -0.4230482 1.29135907 0.13703918 -0.78018111 1.23724508 0.32091904 -1.1577245
		 1.18313098 0.30599976 -1.60990536 1.129017 0.022611618 -1.93783772 1.074902892 -0.58882332 -1.96468365
		 1.020788908 -1.46750641 -1.79218304 0.9666748 -2.42874336 -1.69604695 0.91256082 -3.28960609 -1.89812148
		 0.85844678 -3.87548923 -2.34424281 0.80433267 -4.020138741 -2.91191697 0.75021869 -3.70946884 -3.46102834
		 0.69610465 -3.18847656 -3.8313489 0.6419906 -2.70259857 -3.89147115 0.58787656 -2.31803989 -3.67000222
		 0.53376251 -1.99138641 -3.30862975;
	setAttr -s 82 ".ed[0:81]"  0 1 0 0 2 0 1 3 0 2 3 0 2 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 3 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 4 14 0 5 15 0 6 16 0 7 17 0 8 18 0 9 19 0
		 10 20 0 11 21 0 12 22 0 13 23 0 2 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0
		 30 31 0 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 3 40 0 40 41 0
		 41 42 0 42 43 0 43 44 0 44 45 0 45 46 0 46 47 0 47 48 0 48 49 0 49 50 0 50 51 0 51 52 0
		 52 53 0 53 54 0 54 55 0 24 40 0 25 41 1 26 42 1 27 43 0 28 44 0 29 45 1 30 46 1 31 47 1
		 32 48 1 33 49 0 34 50 0 35 51 1 36 52 1 37 53 0 38 54 1 39 55 0;
	setAttr -s 27 -ch 108 ".fc[0:26]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 3 14 -25 -5
		mu 0 4 4 5 6 7
		f 4 24 15 -26 -6
		mu 0 4 8 9 10 11
		f 4 25 16 -27 -7
		mu 0 4 12 13 14 15
		f 4 26 17 -28 -8
		mu 0 4 16 17 18 19
		f 4 27 18 -29 -9
		mu 0 4 20 21 22 23
		f 4 28 19 -30 -10
		mu 0 4 24 25 26 27
		f 4 29 20 -31 -11
		mu 0 4 28 29 30 31
		f 4 30 21 -32 -12
		mu 0 4 32 33 34 35
		f 4 31 22 -33 -13
		mu 0 4 36 37 38 39
		f 4 32 23 -34 -14
		mu 0 4 40 41 42 43
		f 4 3 50 -67 -35
		mu 0 4 44 45 46 47
		f 4 66 51 -68 -36
		mu 0 4 48 49 50 51
		f 4 67 52 -69 -37
		mu 0 4 52 53 54 55
		f 4 68 53 -70 -38
		mu 0 4 56 57 58 59
		f 4 69 54 -71 -39
		mu 0 4 60 61 62 63
		f 4 70 55 -72 -40
		mu 0 4 64 65 66 67
		f 4 71 56 -73 -41
		mu 0 4 68 69 70 71
		f 4 72 57 -74 -42
		mu 0 4 72 73 74 75
		f 4 73 58 -75 -43
		mu 0 4 76 77 78 79
		f 4 74 59 -76 -44
		mu 0 4 80 81 82 83
		f 4 75 60 -77 -45
		mu 0 4 84 85 86 87
		f 4 76 61 -78 -46
		mu 0 4 88 89 90 91
		f 4 77 62 -79 -47
		mu 0 4 92 93 94 95
		f 4 78 63 -80 -48
		mu 0 4 96 97 98 99
		f 4 79 64 -81 -49
		mu 0 4 100 101 102 103
		f 4 80 65 -82 -50
		mu 0 4 104 105 106 107;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane7" -p "group1";
	setAttr ".t" -type "double3" -0.79262178616995871 16.453342384475857 -1.1992694102928014 ;
	setAttr ".r" -type "double3" 0 30.545490762494246 0 ;
	setAttr ".s" -type "double3" 0.17751804589492512 0.70678971934542345 0.58355371098681208 ;
createNode mesh -n "pPlaneShape7" -p "pPlane7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.16160733997821808 0.73139753937721252 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape14" -p "pPlane7";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.1071428656578064 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 44 ".uvst[0].uvsp[0:43]" -type "float2" 0 0 1 0 0 0.10714287
		 1 0.10714287 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1
		 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 24 ".vt[0:23]"  -1.26051676 0 0.13505539 1.26051688 0 0.13505539
		 -1.26051676 0 -0.13505539 1.26051688 0 -0.13505539 -1.011451483 0.43932343 -0.42575854
		 -0.91557056 0.88903999 -0.99072808 -0.81567961 0.73770142 -1.99351037 -0.71578872 0.023044586 -2.73315263
		 -0.61589789 -1.11577988 -2.63853383 -0.51600701 -2.5767355 -2.3019774 -0.41611612 -4.19577885 -2.43193507
		 -0.31622517 -5.45074844 -3.018753767 -0.2163343 -5.91015053 -3.88348317 -0.11644341 -5.88168335 -4.8843894
		 1.29973543 0.37709808 -0.4064495 1.2038548 0.86882782 -1.0070544481 1.10396373 0.7144413 -1.98993123
		 1.0040727854 0.007894516 -2.71848893 0.90418172 -1.11419678 -2.61996579 0.80429065 -2.5731163 -2.28620076
		 0.70439965 -4.19688797 -2.41824269 0.6045087 -5.4555378 -3.0085327625 0.50461769 -5.91795826 -3.87933993
		 0.40472668 -5.88807011 -4.88457823;
	setAttr -s 34 ".ed[0:33]"  0 1 0 0 2 0 1 3 0 2 3 0 2 4 0 4 5 0 5 6 0
		 6 7 0 7 8 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 3 14 0 14 15 0 15 16 0 16 17 0 17 18 0
		 18 19 0 19 20 0 20 21 0 21 22 0 22 23 0 4 14 1 5 15 0 6 16 0 7 17 0 8 18 1 9 19 1
		 10 20 1 11 21 0 12 22 1 13 23 0;
	setAttr -s 11 -ch 44 ".fc[0:10]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2
		f 4 3 14 -25 -5
		mu 0 4 4 5 6 7
		f 4 24 15 -26 -6
		mu 0 4 8 9 10 11
		f 4 25 16 -27 -7
		mu 0 4 12 13 14 15
		f 4 26 17 -28 -8
		mu 0 4 16 17 18 19
		f 4 27 18 -29 -9
		mu 0 4 20 21 22 23
		f 4 28 19 -30 -10
		mu 0 4 24 25 26 27
		f 4 29 20 -31 -11
		mu 0 4 28 29 30 31
		f 4 30 21 -32 -12
		mu 0 4 32 33 34 35
		f 4 31 22 -33 -13
		mu 0 4 36 37 38 39
		f 4 32 23 -34 -14
		mu 0 4 40 41 42 43;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane9" -p "group1";
	setAttr ".t" -type "double3" -0.043848095849300439 15.81327725963088 -0.56285786379339253 ;
	setAttr ".s" -type "double3" 1.2474152781412924 1.357801698279683 1 ;
createNode mesh -n "pPlaneShape9" -p "pPlane9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.2915208637714386 0.20678085088729858 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape15" -p "pPlane9";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1.011451483 0.43932343 -0.42575854 -0.91557056 0.88903999 -0.99072808
		 -0.81567961 0.73770142 -1.99351037 -0.71578872 0.023044586 -2.73315263 -0.61589789 -1.11577988 -2.63853383
		 -0.51472014 -2.5767355 -2.3019774 -0.36346063 -4.19577885 -2.43193507 -0.20551932 -5.45074844 -3.018753767
		 -0.089342132 -5.91015053 -3.88348317 -0.011745341 -5.88168335 -4.8843894 1.29973543 0.37709808 -0.4064495
		 1.2038548 0.86882782 -1.0070544481 1.10396373 0.7144413 -1.98993123 1.0040727854 0.007894516 -2.71848893
		 0.90418172 -1.11419678 -2.61996579 0.80322403 -2.5731163 -2.28620076 0.65271086 -4.19688797 -2.41824269
		 0.49447447 -5.4555378 -3.0085327625 0.37777251 -5.91795826 -3.87933993 0.30002862 -5.88807011 -4.88457823;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0
		 0 10 0 1 11 0 2 12 0 3 13 0 4 14 1 5 15 1 6 16 1 7 17 0 8 18 1 9 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 18 9 -20 -1
		mu 0 4 0 1 2 3
		f 4 19 10 -21 -2
		mu 0 4 4 5 6 7
		f 4 20 11 -22 -3
		mu 0 4 8 9 10 11
		f 4 21 12 -23 -4
		mu 0 4 12 13 14 15
		f 4 22 13 -24 -5
		mu 0 4 16 17 18 19
		f 4 23 14 -25 -6
		mu 0 4 20 21 22 23
		f 4 24 15 -26 -7
		mu 0 4 24 25 26 27
		f 4 25 16 -27 -8
		mu 0 4 28 29 30 31
		f 4 26 17 -28 -9
		mu 0 4 32 33 34 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane10" -p "group1";
	setAttr ".t" -type "double3" -0.13168273863102065 15.81327725963088 -0.56285786379339253 ;
	setAttr ".r" -type "double3" 0 31.749569049850617 0 ;
	setAttr ".s" -type "double3" 1.2474152781412924 1.0000000000000004 1 ;
createNode mesh -n "pPlaneShape10" -p "pPlane10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43715278804302216 0.23028984665870667 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape16" -p "pPlane10";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1.011451483 0.43932343 -0.42575854 -0.91557056 0.88903999 -0.99072808
		 -0.81567961 0.73770142 -1.99351037 -0.71578872 0.023044586 -2.73315263 -0.61589789 -1.11577988 -2.63853383
		 -0.51472014 -2.5767355 -2.3019774 -0.36346063 -4.19577885 -2.43193507 -0.20551932 -5.45074844 -3.018753767
		 -0.089342132 -5.91015053 -3.88348317 -0.011745341 -5.88168335 -4.8843894 1.29973543 0.37709808 -0.4064495
		 1.2038548 0.86882782 -1.0070544481 1.10396373 0.7144413 -1.98993123 1.0040727854 0.007894516 -2.71848893
		 0.90418172 -1.11419678 -2.61996579 0.80322403 -2.5731163 -2.28620076 0.65271086 -4.19688797 -2.41824269
		 0.49447447 -5.4555378 -3.0085327625 0.37777251 -5.91795826 -3.87933993 0.30002862 -5.88807011 -4.88457823;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0
		 0 10 0 1 11 0 2 12 0 3 13 0 4 14 1 5 15 1 6 16 1 7 17 0 8 18 1 9 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 18 9 -20 -1
		mu 0 4 0 1 2 3
		f 4 19 10 -21 -2
		mu 0 4 4 5 6 7
		f 4 20 11 -22 -3
		mu 0 4 8 9 10 11
		f 4 21 12 -23 -4
		mu 0 4 12 13 14 15
		f 4 22 13 -24 -5
		mu 0 4 16 17 18 19
		f 4 23 14 -25 -6
		mu 0 4 20 21 22 23
		f 4 24 15 -26 -7
		mu 0 4 24 25 26 27
		f 4 25 16 -27 -8
		mu 0 4 28 29 30 31
		f 4 26 17 -28 -9
		mu 0 4 32 33 34 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane11" -p "group1";
	setAttr ".t" -type "double3" 0.15096323317162885 15.813277259630881 -0.56285786379339253 ;
	setAttr ".r" -type "double3" 0 -35.522654530475258 0 ;
	setAttr ".s" -type "double3" 1.2474152781412924 1.1167363413118179 1 ;
createNode mesh -n "pPlaneShape11" -p "pPlane11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47189249098300934 0.58987966179847717 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape17" -p "pPlane11";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0 0 1 0 1 1 0 1 0
		 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0
		 1 0 1 1 0 1 0 0 1 0 1 1 0 1 0 0 1 0 1 1 0 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 20 ".vt[0:19]"  -1.011451483 0.43932343 -0.42575854 -0.91557056 0.88903999 -0.99072808
		 -0.81567961 0.73770142 -1.99351037 -0.71578872 0.023044586 -2.73315263 -0.61589789 -1.11577988 -2.63853383
		 -0.51472014 -2.5767355 -2.3019774 -0.36346063 -4.19577885 -2.43193507 -0.20551932 -5.45074844 -3.018753767
		 -0.089342132 -5.91015053 -3.88348317 -0.011745341 -5.88168335 -4.8843894 1.29973543 0.37709808 -0.4064495
		 1.2038548 0.86882782 -1.0070544481 1.10396373 0.7144413 -1.98993123 1.0040727854 0.007894516 -2.71848893
		 0.90418172 -1.11419678 -2.61996579 0.80322403 -2.5731163 -2.28620076 0.65271086 -4.19688797 -2.41824269
		 0.49447447 -5.4555378 -3.0085327625 0.37777251 -5.91795826 -3.87933993 0.30002862 -5.88807011 -4.88457823;
	setAttr -s 28 ".ed[0:27]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 8 0 8 9 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0
		 0 10 0 1 11 0 2 12 0 3 13 0 4 14 1 5 15 1 6 16 1 7 17 0 8 18 1 9 19 0;
	setAttr -s 9 -ch 36 ".fc[0:8]" -type "polyFaces" 
		f 4 18 9 -20 -1
		mu 0 4 0 1 2 3
		f 4 19 10 -21 -2
		mu 0 4 4 5 6 7
		f 4 20 11 -22 -3
		mu 0 4 8 9 10 11
		f 4 21 12 -23 -4
		mu 0 4 12 13 14 15
		f 4 22 13 -24 -5
		mu 0 4 16 17 18 19
		f 4 23 14 -25 -6
		mu 0 4 20 21 22 23
		f 4 24 15 -26 -7
		mu 0 4 24 25 26 27
		f 4 25 16 -27 -8
		mu 0 4 28 29 30 31
		f 4 26 17 -28 -9
		mu 0 4 32 33 34 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCube8";
	setAttr ".t" -type "double3" 2.3299981513699839 10.236935439535646 0.41321996929957833 ;
	setAttr ".r" -type "double3" 82.784003344768692 -72.498519209613733 -176.95857314376568 ;
	setAttr ".s" -type "double3" 0.45611866576970345 0.30365536438094659 0.55419407206884308 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.020445257425308228 0.0021742767421528697 ;
	setAttr -s 3 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".uvst[1].uvsn" -type "string" "uvSet";
	setAttr ".uvst[2].uvsn" -type "string" "FullSet";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "polySurfaceShape18" -p "pCube8";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4375 0.49999997019767761 ;
	setAttr -s 3 ".uvst";
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 58 ".uvst[0].uvsp[0:57]" -type "float2" 0.032260418 0.48257604
		 0.62524104 0.99800795 0.37725985 0.54039937 0.52392578 0.48272482 0.7703712 0.99768686
		 0.23212969 0.54007804 0.91429955 0.93936831 0.034723528 0.4816556 0.42896855 0.3932814
		 0.0021713972 0.36139637 0.23190713 0.3928448 0.039439403 0.36024901 0.42982686 0.14980602
		 0.0019076467 0.18208346 0.23276532 0.14936939 0.039722107 0.18093634 0.017013967
		 0.0023565216 0.0080344081 0.049078427 0.027696729 0.0020351547 0.033673018 0.04811433
		 0.62334502 0.46006975 0.47801036 0.50679111 0.76847517 0.45974836 0.0091981292 0.048070692
		 0.61242032 0.60732627 0.038482785 0.18204008 0.80948186 0.6068902 0.0031685894 0.18089296
		 0.61327863 0.85080194 0.038647592 0.36135301 0.81034005 0.85036558 0.0029431097 0.36020562
		 0.9557234 0.81796193 0.0093062259 0.48161194 0.43768358 0.81910932 0.47890913 0.94033235
		 0.95509148 0.63864934 0.43705153 0.63979644 0.91340089 0.50582707 0.032510459 0.049034793
		 0.047554493 0.18104097 0.089211702 0.048218947 0.56559443 0.18218808 0.52460217 0.049183048
		 0.046922445 0.36035362 0.56496227 0.36150101 0.088535309 0.4817602 0.0069563985 0.48262021
		 0.014624417 0.0019920319 0.023876548 0.0023133988 0.23402584 0.0021397744 0.37915599
		 0.0024611414 0.024985939 0.53997338 0.016814232 0.54029477 0.016858399 0.53993052
		 0.024766684 0.54025161 0.020107329 0.0020351547 0.020504117 0.0019920319;
	setAttr ".uvst[1].uvsn" -type "string" "uvSet";
	setAttr ".uvst[2].uvsn" -type "string" "FullSet";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 32 ".vt[0:31]"  -1.36031604 0.14776182 1.24415779 -0.45343876 0.12735415 1.5861969
		 0.45343852 0.12735415 1.58619881 1.36031604 0.1477623 1.24415779 -1.36031604 0.5532999 1.2441597
		 -0.45343864 0.52605915 1.58619881 0.45343864 0.52605963 1.5861969 1.36031592 0.5532999 1.24415779
		 -1.61854243 0.5386548 0.5287323 -0.61569071 1.042174816 0.71792793 0.61569083 1.042175293 0.71792603
		 1.61854255 0.5386548 0.5287323 -1.61854243 0.5386548 -0.52873421 -0.61569071 1.042174816 -0.71792793
		 0.61569083 1.042174816 -0.71792984 1.61854267 0.5386548 -0.52873421 -1.36031604 0.53587294 -1.31256866
		 -0.45343876 0.52605963 -1.58620071 0.45343852 0.52605963 -1.58620262 1.36031604 0.53587246 -1.31256866
		 -1.36031628 0.13488293 -1.31256866 -0.45343876 0.12735415 -1.58620071 0.45343876 0.12735415 -1.58619881
		 1.3603158 0.13488388 -1.31256866 -1.61854243 0.13698387 -0.52873421 -0.61569071 -0.16978598 -0.71792984
		 0.61569059 -0.16978502 -0.71792793 1.61854243 0.13698339 -0.5287323 -1.61854243 0.13698387 0.5287323
		 -0.61569071 -0.16978502 0.71792603 0.61569071 -0.16978502 0.71792793 1.61854243 0.13698339 0.52873039;
	setAttr -s 60 ".ed[0:59]"  0 1 0 1 2 0 2 3 0 4 5 0 5 6 0 6 7 0 8 9 0
		 9 10 0 10 11 0 12 13 0 13 14 0 14 15 0 16 17 0 17 18 0 18 19 0 20 21 0 21 22 0 22 23 0
		 24 25 0 25 26 0 26 27 0 28 29 0 29 30 0 30 31 0 0 4 0 1 5 0 2 6 0 3 7 0 4 8 0 5 9 0
		 6 10 0 7 11 0 8 12 0 9 13 0 10 14 0 11 15 0 12 16 0 13 17 0 14 18 0 15 19 0 16 20 0
		 17 21 0 18 22 0 19 23 0 20 24 0 21 25 0 22 26 0 23 27 0 24 28 0 25 29 0 26 30 0 27 31 0
		 28 0 0 29 1 0 30 2 0 31 3 0 27 15 0 31 11 0 24 12 0 28 8 0;
	setAttr -s 30 -ch 120 ".fc[0:29]" -type "polyFaces" 
		f 4 0 25 -4 -25
		mu 0 4 0 55 53 47
		f 4 1 26 -5 -26
		mu 0 4 55 54 52 53
		f 4 2 27 -6 -27
		mu 0 4 54 33 7 52
		f 4 3 29 -7 -29
		mu 0 4 3 2 8 45
		f 4 4 30 -8 -30
		mu 0 4 2 5 10 8
		f 4 5 31 -9 -31
		mu 0 4 5 46 44 10
		f 4 6 33 -10 -33
		mu 0 4 45 8 12 42
		f 4 7 34 -11 -34
		mu 0 4 8 10 14 12
		f 4 8 35 -12 -35
		mu 0 4 10 44 40 14
		f 4 9 37 -13 -37
		mu 0 4 42 12 51 43
		f 4 10 38 -14 -38
		mu 0 4 12 14 50 51
		f 4 11 39 -15 -39
		mu 0 4 14 40 41 50
		f 4 12 41 -16 -41
		mu 0 4 17 16 49 39
		f 4 13 42 -17 -42
		mu 0 4 16 56 57 49
		f 4 14 43 -18 -43
		mu 0 4 18 19 23 48
		f 4 15 45 -19 -45
		mu 0 4 21 20 24 37
		f 4 16 46 -20 -46
		mu 0 4 20 22 26 24
		f 4 17 47 -21 -47
		mu 0 4 22 38 36 26
		f 4 18 49 -22 -49
		mu 0 4 37 24 28 34
		f 4 19 50 -23 -50
		mu 0 4 24 26 30 28
		f 4 20 51 -24 -51
		mu 0 4 26 36 32 30
		f 4 21 53 -1 -53
		mu 0 4 34 28 1 35
		f 4 22 54 -2 -54
		mu 0 4 28 30 4 1
		f 4 23 55 -3 -55
		mu 0 4 30 32 6 4
		f 4 -48 -44 -40 -57
		mu 0 4 27 23 19 15
		f 4 -52 56 -36 -58
		mu 0 4 31 27 15 11
		f 4 -56 57 -32 -28
		mu 0 4 33 31 11 7
		f 4 44 58 36 40
		mu 0 4 39 25 13 17
		f 4 48 59 32 -59
		mu 0 4 25 29 9 13
		f 4 52 24 28 -60
		mu 0 4 29 0 47 9;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pPlane12";
	setAttr ".t" -type "double3" 0.92759765532256999 0 14.26669426725833 ;
	setAttr ".s" -type "double3" 2.6405293898728113 1 2.0523840526572332 ;
createNode mesh -n "pPlaneShape12" -p "pPlane12";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.82648265361785889 1 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pPlane13";
	setAttr ".t" -type "double3" 0.92759765532256999 15.067599438986374 -6.3998007683611249 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 2.6405293898728113 1 1 ;
createNode mesh -n "pPlaneShape13" -p "pPlane13";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 4 ".uvst[0].uvsp[0:3]" -type "float2" 0 0 0.82648265 0
		 0 1 0.82648265 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".vt[0:3]"  -13.46311951 -3.6170306e-015 16.28965759
		 13.46311951 -3.6170306e-015 16.28965759 -13.46311951 3.6170306e-015 -16.28965759
		 13.46311951 3.6170306e-015 -16.28965759;
	setAttr -s 4 ".ed[0:3]"  0 1 0 0 2 0 1 3 0 2 3 0;
	setAttr -ch 4 ".fc[0]" -type "polyFaces" 
		f 4 0 2 -4 -2
		mu 0 4 0 1 3 2;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pointLight1";
	setAttr ".t" -type "double3" 0 16.040737600673143 14.223774620108449 ;
createNode pointLight -n "pointLightShape1" -p "pointLight1";
	setAttr -k off ".v";
	setAttr ".in" 0.50420165061950684;
	setAttr ".us" no;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
	setAttr -s 3 ".opt";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
	setAttr -s 3 ".tx";
	setAttr ".rvb" 3;
	setAttr ".ivb" no;
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	setAttr -s 48 ".stringOptions";
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
	setAttr ".stringOptions[26].value" -type "string" "true";
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
	setAttr ".stringOptions[47].value" -type "string" "1.0 1.0 1.0";
	setAttr ".stringOptions[47].type" -type "string" "color";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 12 ".lnk";
	setAttr -s 12 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 4;
	setAttr -s 5 ".dli[1:4]"  1 2 3 4;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 6.4370078740157481;
	setAttr ".h" 3.7204724409448837;
	setAttr ".d" 4.0748031496063017;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyChipOff -n "polyChipOff1";
	setAttr ".ics" -type "componentList" 4 "f[0:20]" "f[33:35]" "f[37:44]" "f[46:53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.08858268 1.8602362 0.1476378 ;
	setAttr ".rs" 64380;
	setAttr ".lt" -type "double3" 0.38606696250682826 0.10809081579645735 0.71539483033743179 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 56 ".tk[0:55]" -type "float3"  1.026894808 5.9604645e-008
		 -5.9604645e-008 0.44009781 -1.1002444 -5.9604645e-008 -0.44009781 -1.1002444 -5.9604645e-008
		 -1.026894808 5.9604645e-008 -5.9604645e-008 0.53330982 -0.36674812 -5.9604645e-008
		 0.10106423 -0.97211534 0.97709316 -0.1010643 -0.97211534 0.97709316 -0.53330982 -0.36674812
		 -5.9604645e-008 0.44009775 0 -5.9604645e-008 0.13665102 0.16526945 0.97709316 -0.13665113
		 0.16526945 0.97709316 -0.44009772 0 -5.9604645e-008 0.95354533 0.22004884 -5.9604645e-008
		 0.44009781 0.58679706 0.66014677 -0.44009781 0.58679706 0.66014677 -0.95354527 0.22004884
		 -5.9604645e-008 0.66196746 0.90686429 0.22033465 0.23201215 1.46398914 0.36686581
		 -0.2320123 1.46398914 0.36686581 -0.66196799 0.90686429 0.22033465 0.66196746 0.90686429
		 -0.22033465 0.23201215 1.46398914 -0.36686587 -0.2320123 1.46398914 -0.36686587 -0.66196799
		 0.90686429 -0.22033465 0.95354533 0.22004884 -1.1920929e-007 0.44009781 0.58679706
		 -0.66014695 -0.44009781 0.58679706 -0.66014695 -0.95354527 0.22004884 -1.1920929e-007
		 0.44009775 -1.4901161e-008 0 0.13665102 0.16526939 -0.9770934 -0.13665113 0.16526939
		 -0.9770934 -0.44009772 -1.4901161e-008 0 0.53330982 -0.36674812 0 0.10106423 -0.97211564
		 -0.97709322 -0.10106429 -0.97211564 -0.97709322 -0.53330982 -0.36674812 0 1.026894808
		 5.9604645e-008 0 0.44009778 -1.10024452 -1.1920929e-007 -0.44009778 -1.10024452 -1.1920929e-007
		 -1.026894808 5.9604645e-008 0 0.66392547 -0.52023512 -0.22033465 0.58288097 -1.97743702
		 -0.037995048 -0.58288103 -1.97743702 -0.037995048 -0.66392553 -0.52023512 -0.22033465
		 0.66392547 -0.52023512 0.22033465 0.58288097 -1.97743702 0.037995048 -0.58288103
		 -1.97743702 0.037995048 -0.66392553 -0.52023512 0.22033465 -0.010204554 -0.60361922
		 -0.22033465 -0.010204554 -0.60361922 0.22033465 0.11324894 0.28446519 -0.22033465
		 0.11324894 0.28446519 0.22033465 0.010204554 -0.60361922 -0.22033465 0.010204554
		 -0.60361922 0.22033465 -0.11324894 0.28446519 -0.22033465 -0.11324894 0.28446519
		 0.22033465;
createNode polySeparate -n "polySeparate1";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupId -n "groupId1";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:93]";
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:53]";
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:39]";
	setAttr ".gi" 8;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "vtx[39]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "vtx[36]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "vtx[43]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "vtx[40]";
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[46]" "e[49]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.62118447 2.5426571 -2.7524285 ;
	setAttr ".rs" 36839;
	setAttr ".lt" -type "double3" -0.36786788974164703 1.3273235446165377 -0.25909519081202304 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.6302530394798866 2.4785080567559752 -3.2181691626822482 ;
	setAttr ".cbx" -type "double3" 1.3878841225387184 2.6068063140538422 -2.2866879730508654 ;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:41]";
	setAttr ".gi" 9;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[85]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.9063104 1.1788961 -2.7155437 ;
	setAttr ".rs" 63883;
	setAttr ".lt" -type "double3" -0.65395933624664315 1.556848118825082 -0.45448473898237973 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9164380016612257 1.1084797978835357 -3.2176525339447037 ;
	setAttr ".cbx" -type "double3" -0.89618284969047801 1.2493123463685916 -2.2134348535084274 ;
createNode groupParts -n "groupParts5";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:42]";
	setAttr ".gi" 10;
createNode polyExtrudeEdge -n "polyExtrudeEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[90]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.2510865 -0.44461775 -2.1647913 ;
	setAttr ".rs" 49193;
	setAttr ".lt" -type "double3" -0.99183441771540015 1.3100887075961647 -3.3306690738754696e-016 ;
	setAttr ".ls" -type "double3" 0.40705571682418384 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.8764236637892115 -0.71851485049683839 -2.6669004258691338 ;
	setAttr ".cbx" -type "double3" -1.6257492620949456 -0.17072063281639749 -1.6626823212713326 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[47:48]" -type "float3"  0.43257645 0.38707277 0 -0.43257651
		 -0.3870728 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:43]";
	setAttr ".gi" 11;
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "vtx[46]";
createNode polyExtrudeEdge -n "polyExtrudeEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[92]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.2061193 -1.3537662 -1.1842661 ;
	setAttr ".rs" 36334;
	setAttr ".lt" -type "double3" -0.81010087034228528 0.57167869336733146 -4.4408920985006262e-016 ;
	setAttr ".ls" -type "double3" 0.51982850034839279 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.4606662934003385 -1.4652575778189456 -1.3886524498737629 ;
	setAttr ".cbx" -type "double3" -2.9515723611872215 -1.2422748036818037 -0.97987971700667753 ;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:44]";
	setAttr ".gi" 12;
createNode polyUnite -n "polyUnite1";
createNode polyCollapseEdge -n "polyCollapseEdge1";
	setAttr ".ics" -type "componentList" 1 "e[95]";
createNode polyExtrudeEdge -n "polyExtrudeEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[51]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.3126421 2.4704866 -2.4490945 ;
	setAttr ".rs" 50730;
	setAttr ".lt" -type "double3" 0.52618254142450449 1.6360678437204121 -7.0776717819853729e-016 ;
	setAttr ".ls" -type "double3" 0.58629182908183031 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.3878842285790995 2.3688368528318939 -3.0701410320453935 ;
	setAttr ".cbx" -type "double3" 3.237399839173853 2.5721364113978065 -1.8280480542457367 ;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:45]";
	setAttr ".gi" 13;
createNode polyExtrudeEdge -n "polyExtrudeEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[97]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 2.8009276 0.82343823 -2.1892028 ;
	setAttr ".rs" 35715;
	setAttr ".lt" -type "double3" 0.35367594533764607 1.1237429132395835 -0.32101158400979529 ;
	setAttr ".ls" -type "double3" 0.51885011981947149 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 2.3218686074507282 0.56264912994306049 -2.5533171801992611 ;
	setAttr ".cbx" -type "double3" 3.2799867166954635 1.0842273553035982 -1.8250882551237446 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[51:52]" -type "float3"  0.070957303 -0.36017343 0.34718454
		 -0.070957333 0.3601734 0.34718454;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:46]";
	setAttr ".gi" 14;
createNode polyExtrudeEdge -n "polyExtrudeEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[100]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 3.2621236 -0.081190526 -1.511059 ;
	setAttr ".rs" 33604;
	setAttr ".lt" -type "double3" 0.51545304021491778 0.9615970204639761 -7.7715611723760958e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.0135636520482554 -0.21650102246031788 -1.6999799045752244 ;
	setAttr ".cbx" -type "double3" 3.5106832923276672 0.054119968800584228 -1.3221381965609964 ;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:47]";
createNode polyCollapseEdge -n "polyCollapseEdge2";
	setAttr ".ics" -type "componentList" 1 "e[103]";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 2 "f[28]" "f[36]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.21080461 1.8466793 1.7641579 ;
	setAttr ".rs" 51878;
	setAttr ".lt" -type "double3" 5.5511151231257827e-016 1.0061396160665481e-016 0.80707928898202352 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.3349250938564023 0.8567143770180552 0.94060225230843875 ;
	setAttr ".cbx" -type "double3" 3.756534310927846 2.8366441746785265 2.5877134972359563 ;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.52060902 0 ;
	setAttr ".tk[3]" -type "float3" 0 0.029977091 0 ;
	setAttr ".tk[5]" -type "float3" 0 0.52060902 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.029977091 0 ;
	setAttr ".tk[8]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.24588209 0 ;
	setAttr ".tk[10]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.24588209 0 ;
	setAttr ".tk[29]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[31]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[36]" -type "float3" 0 0.25552687 1.110223e-016 ;
	setAttr ".tk[37]" -type "float3" 0 0.1693355 0 ;
	setAttr ".tk[38]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[39]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[40]" -type "float3" 0 0.52060902 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.52060902 0 ;
	setAttr ".tk[42]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[43]" -type "float3" 0 -5.9604645e-008 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 2 "f[28]" "f[36]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.23755817 1.8531048 2.0877423 ;
	setAttr ".rs" 45336;
	setAttr ".lt" -type "double3" -3.3306690738754696e-016 -1.2490009027033011e-016 
		1.2646248824775019 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.1784381523173533 0.50406340989742704 0.57681328072098703 ;
	setAttr ".cbx" -type "double3" 4.6535544974542944 3.2021462816455761 3.5986715284672415 ;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[56:63]" -type "float3"  0.11437536 -0.5097909 -0.66356635
		 -0.17873231 -0.50907743 0.77475321 0.17873231 0.5097909 -0.77475363 -0.13156319 0.49697259
		 0.72425592 -0.10329109 -0.34484407 -0.627985 0.15497983 -0.35813817 0.69782877 0.12176882
		 0.35813853 0.68410635 -0.15498075 0.35545838 -0.69782889;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 2 "f[28]" "f[36]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.25025779 1.8013397 2.5054414 ;
	setAttr ".rs" 53642;
	setAttr ".lt" -type "double3" -8.0491169285323849e-016 3.4694469519536142e-016 0.83243934918774032 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.357656818931698 0.44711961911536902 0.95891436574985434 ;
	setAttr ".cbx" -type "double3" 5.8581723803518138 3.1555597730232465 4.0519682845409664 ;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[24]" "e[26:27]" "e[29]" "e[53:54]" "e[56]" "e[58]" "e[62]" "e[68]" "e[74]" "e[80]" "e[105]" "e[109]" "e[113]" "e[117]" "e[121]" "e[125]" "e[129]" "e[133]" "e[137]" "e[141]" "e[145]" "e[149]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".wt" 0.49681523442268372;
	setAttr ".re" 117;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[56:79]" -type "float3"  -0.19625635 -0.85012794 -0.85262924
		 -0.69372326 -0.84891731 0.72709554 -0.087028623 0.8803224 -0.97474802 -0.61366719
		 0.858567 0.6716333 0.14292295 -0.82940203 -0.94619858 0.77846688 -0.8621155 0.72916567
		 0.69674015 0.90046644 0.71182537 0.015726702 0.8938725 -1.034457326 0.58449566 -0.8803224
		 -0.60497737 0.087028868 -0.87911141 0.97474766 0.69372308 0.85012817 -0.72709602
		 0.16708474 0.82837296 0.91928595 -0.65127099 -0.86775339 -0.64090711 -0.015727371
		 -0.9004665 1.034457326 -0.097453967 0.86211562 1.017117143 -0.77846688 0.85552156
		 -0.72916597 -0.14047678 0.62612981 0.52740669 0.21952058 0.62525374 -0.61577904 -0.21952058
		 -0.62612987 0.61577898 0.16158722 -0.61038655 -0.57564342 0.1946971 0.65000993 0.60786122
		 -0.29212883 0.67506844 -0.67546719 -0.22952639 -0.67506838 -0.66218436 0.29212895
		 -0.67001736 0.67546719;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[10]" "e[12:13]" "e[15]" "e[65]" "e[67]" "e[76]" "e[78]" "e[107]" "e[110]" "e[115]" "e[118]" "e[123]" "e[126]" "e[131]" "e[134]" "e[139]" "e[142]" "e[147]" "e[150]" "e[171]" "e[195]";
	setAttr ".ix" -type "matrix" 0.88953119063967656 0 0 0 0 0.88953119063967701 0 0
		 0 0 0.88953119063967656 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".wt" 0.47268331050872803;
	setAttr ".re" 134;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 33 ".tk";
	setAttr ".tk[72]" -type "float3" 0 5.9604645e-008 -5.9604645e-008 ;
	setAttr ".tk[73]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[74]" -type "float3" 0 5.9604645e-008 5.9604645e-008 ;
	setAttr ".tk[76]" -type "float3" -5.9604645e-008 -5.9604645e-008 1.4156103e-007 ;
	setAttr ".tk[77]" -type "float3" 5.9604645e-008 5.9604645e-008 3.5762787e-007 ;
	setAttr ".tk[78]" -type "float3" 0 5.9604645e-008 4.7683716e-007 ;
	setAttr ".tk[79]" -type "float3" -4.4703484e-008 0 1.6391277e-007 ;
	setAttr ".tk[80]" -type "float3" 0 0.91624999 0 ;
	setAttr ".tk[87]" -type "float3" 0 0.91624999 0 ;
	setAttr ".tk[88]" -type "float3" 0 0.91624999 0 ;
	setAttr ".tk[89]" -type "float3" -3.7252903e-009 0 3.5390258e-008 ;
	setAttr ".tk[90]" -type "float3" -3.7252903e-009 5.9604645e-008 -4.8428774e-008 ;
	setAttr ".tk[91]" -type "float3" 0 -0.62990344 0 ;
	setAttr ".tk[92]" -type "float3" 0 -0.62990344 0 ;
	setAttr ".tk[99]" -type "float3" 0 -0.62990344 0 ;
	setAttr ".tk[100]" -type "float3" 0 -0.62990344 0 ;
	setAttr ".tk[101]" -type "float3" 2.9802322e-008 5.9604645e-008 0 ;
	setAttr ".tk[102]" -type "float3" 0 0 5.9604645e-008 ;
	setAttr ".tk[103]" -type "float3" 0 0.91624999 0 ;
	setAttr ".tk[106]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".tk[107]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".tk[108]" -type "float3" 1.4901161e-008 -3.7252903e-009 5.9604645e-008 ;
	setAttr ".tk[109]" -type "float3" 0 0 -9.3132257e-010 ;
	setAttr ".tk[110]" -type "float3" 1.4901161e-008 0 -5.9604645e-008 ;
	setAttr ".tk[111]" -type "float3" 0 0 0.85455137 ;
	setAttr ".tk[112]" -type "float3" 0 0 0.85455137 ;
	setAttr ".tk[117]" -type "float3" 0 0 0.85455137 ;
	setAttr ".tk[118]" -type "float3" 0 0 0.85455137 ;
	setAttr ".tk[119]" -type "float3" 0 0 3.5762787e-007 ;
	setAttr ".tk[120]" -type "float3" -5.9604645e-008 -7.4505806e-009 5.9604645e-008 ;
	setAttr ".tk[121]" -type "float3" -5.9604645e-008 0 2.0861626e-007 ;
	setAttr ".tk[122]" -type "float3" 0 0 1.1920929e-007 ;
	setAttr ".tk[123]" -type "float3" 0 0 1.1920929e-007 ;
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 11 "f[48:55]" "f[60:63]" "f[72]" "f[78]" "f[84]" "f[90:91]" "f[95]" "f[97]" "f[104]" "f[108:109]" "f[114:115]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 4 "f[36]" "f[56:59]" "f[75:77]" "f[88:91]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 5 "f[47:50]" "f[60]" "f[64]" "f[71]" "f[76]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 4 "f[28]" "f[47:50]" "f[56:58]" "f[65:68]";
createNode polyCube -n "polyCube2";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 2.0537897310513458;
	setAttr ".h" 3.9608801955990232;
	setAttr ".d" 3.5941320293398569;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 5 "e[105]" "e[107]" "e[109]" "e[111]" "e[113]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 5 "e[111]" "e[113]" "e[115]" "e[117]" "e[119]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 3 "e[120]" "e[122]" "e[124]";
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 1 "e[117]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "e[123]";
createNode groupId -n "groupId5";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:53]";
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId7";
	setAttr ".ihi" 0;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.088582677165355062 1.8602362204724419 0.14763779527556894 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[36:39]" -type "float3"  0 -0.39301118 0.22339863 0
		 -0.39301118 0.22339863 0 -0.39301118 0.22339863 0 -0.39301118 0.22339863;
createNode misss_fast_shader_x -n "misss_fast_shader_x1";
createNode shadingEngine -n "misss_fast_shader_x1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode mentalrayTexture -n "mentalrayTexture1";
	setAttr ".miw" yes;
	setAttr ".midp" 4;
createNode expression -n "expression1";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]  = .I[0] * 2";
createNode expression -n "expression2";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode misss_fast_lmap_maya -n "misss_fast_lmap_maya1";
createNode mentalrayTexture -n "mentalrayTexture2";
	setAttr ".miw" yes;
	setAttr ".midp" 4;
createNode expression -n "expression3";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]  = .I[0] * 2";
createNode expression -n "expression4";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode misss_fast_shader_x -n "misss_fast_shader_x2";
createNode shadingEngine -n "misss_fast_shader_x2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode misss_fast_shader_x_passes -n "misss_fast_shader_x_passes1";
createNode shadingEngine -n "misss_fast_shader_x_passes1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode mentalrayTexture -n "mentalrayTexture3";
	setAttr ".miw" yes;
	setAttr ".midp" 4;
createNode expression -n "expression5";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0]  = .I[0] * 2";
createNode expression -n "expression6";
	setAttr -k on ".nds";
	setAttr ".ixp" -type "string" ".O[0] = .I[0]";
createNode misss_fast_lmap_maya -n "misss_fast_lmap_maya2";
createNode mia_material_x -n "mia_material_x1";
	setAttr ".S01" -type "float3" 0.96078432 0.32386443 0 ;
	setAttr ".S02" 0.12820513546466827;
	setAttr ".S03" 0.12820513546466827;
	setAttr ".S05" 0.72393161058425903;
	setAttr ".S10" 0.14529915153980255;
	setAttr ".S11" -type "float3" 0.22221714 0.0075837341 0.0075837341 ;
	setAttr ".S12" 0;
	setAttr ".S13" 1.0581196546554565;
createNode shadingEngine -n "fire";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
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
		+ "            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"all\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n"
		+ "                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n"
		+ "                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"all\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n"
		+ "            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n"
		+ "                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n"
		+ "            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n"
		+ "                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n"
		+ "                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n"
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
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"all\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode displayLayer -n "hair";
	setAttr ".c" 10;
	setAttr ".do" 1;
createNode displayLayer -n "head";
	setAttr ".c" 9;
	setAttr ".do" 2;
createNode polyCube -n "polyCube3";
	setAttr ".ax" -type "double3" 0 1.0000000000000002 2.2204460492503131e-016 ;
	setAttr ".w" 7.0275590551181093;
	setAttr ".h" 5.905511811023624;
	setAttr ".d" 5.964566929133861;
	setAttr ".sw" 3;
	setAttr ".sh" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[40:43]" "e[64:67]" "e[92:93]" "e[104:105]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.51807671785354614;
	setAttr ".dr" no;
	setAttr ".re" 40;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[0]" -type "float3" 0.2189994 0 0 ;
	setAttr ".tk[1]" -type "float3" -0.022922553 0 0 ;
	setAttr ".tk[2]" -type "float3" 0.022922553 0 0 ;
	setAttr ".tk[3]" -type "float3" -0.2189994 0 0 ;
	setAttr ".tk[4]" -type "float3" -0.6604687 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.6604687 0 0 ;
	setAttr ".tk[8]" -type "float3" 0.43270698 0.36674815 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.36674815 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.36674815 0 ;
	setAttr ".tk[11]" -type "float3" -0.43270698 0.36674815 0 ;
	setAttr ".tk[12]" -type "float3" 1.5403421 0 0 ;
	setAttr ".tk[13]" -type "float3" 0.58679706 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.58679706 0 0 ;
	setAttr ".tk[15]" -type "float3" -1.5403421 0 0 ;
	setAttr ".tk[16]" -type "float3" 1.5403421 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.58679706 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.58679706 0 0 ;
	setAttr ".tk[19]" -type "float3" -1.5403421 0 0 ;
	setAttr ".tk[20]" -type "float3" 1.5403421 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.58679706 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.58679706 0 0 ;
	setAttr ".tk[23]" -type "float3" -1.5403421 0 0 ;
	setAttr ".tk[24]" -type "float3" 1.5403421 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.58679706 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.58679706 0 0 ;
	setAttr ".tk[27]" -type "float3" -1.5403421 0 0 ;
	setAttr ".tk[28]" -type "float3" 0.43270698 0.36674815 0 ;
	setAttr ".tk[29]" -type "float3" 0 0.36674815 0 ;
	setAttr ".tk[30]" -type "float3" 0 0.36674815 0 ;
	setAttr ".tk[31]" -type "float3" -0.43270698 0.36674815 0 ;
	setAttr ".tk[32]" -type "float3" -0.6604687 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.6604687 0 0 ;
	setAttr ".tk[36]" -type "float3" 0.44009778 0 0 ;
	setAttr ".tk[39]" -type "float3" -0.44009778 0 0 ;
	setAttr ".tk[40]" -type "float3" 0.44009778 0 0 ;
	setAttr ".tk[43]" -type "float3" -0.44009778 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.44009778 0 0 ;
	setAttr ".tk[47]" -type "float3" -0.44009778 0 0 ;
	setAttr ".tk[48]" -type "float3" 0.6604687 0 0 ;
	setAttr ".tk[49]" -type "float3" 0.6604687 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.43270698 0.36674815 0 ;
	setAttr ".tk[51]" -type "float3" -0.43270698 0.36674815 0 ;
	setAttr ".tk[52]" -type "float3" -0.6604687 0 0 ;
	setAttr ".tk[53]" -type "float3" -0.6604687 0 0 ;
	setAttr ".tk[54]" -type "float3" 0.43270698 0.36674815 0 ;
	setAttr ".tk[55]" -type "float3" 0.43270698 0.36674815 0 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[36:39]" "e[68:71]" "e[90:91]" "e[102:103]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.40308061242103577;
	setAttr ".re" 36;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[56:67]" -type "float3"  -0.31154123 0 0 -0.31154123
		 0 0 -0.31154123 0 0 -0.31154123 0 0 0.0061354293 0 0 -0.0061354293 0 0 0.31154123
		 0 0 0.31154123 0 0 0.31154123 0 0 0.31154123 0 0 -0.0061354293 0 0 0.0061354293 0
		 0;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 80 ".tk[0:79]" -type "float3"  -2.9802322e-008 0 0 0 0 0.84370881
		 0 0 0.84370881 2.9802322e-008 0 0 9.3132257e-010 0 -7.4505806e-009 0 0 1.30311799
		 0 0 1.30311799 -9.3132257e-010 0 -7.4505806e-009 0.33794478 -9.3132257e-010 -0.47590753
		 0 0 0.56671333 0 0 0.56671333 -0.33794484 0 -0.47590762 0.34473887 0.12280327 -1.1293267
		 -0.10136116 0.086918414 -0.99560493 0.10136116 0.086918414 -0.99560493 -0.34473899
		 0.12280327 -1.12932646 -0.30139202 0.21966702 -0.45355001 -0.52865469 0.61617583
		 -0.42456841 0.52865475 0.61617583 -0.42456841 0.30139202 0.21966702 -0.45355001 -0.30139202
		 0.21966702 0.45354995 -0.52865469 0.61617583 0.4245683 0.52865475 0.61617583 0.4245683
		 0.30139202 0.21966702 0.45354995 0.34473887 0.12280327 1.1293267 -0.10136116 0.086918414
		 0.99560493 0.10136116 0.086918414 0.99560493 -0.34473899 0.12280327 1.12932646 0.33794478
		 -9.3132257e-010 0.47590753 0 0 -0.56671333 0 0 -0.56671333 -0.33794484 0 0.47590762
		 9.3132257e-010 0 7.4505806e-009 0 0 -1.30311799 0 0 -1.30311799 -9.3132257e-010 0
		 7.4505806e-009 -2.9802322e-008 0 0 0 0 -0.84378797 0 0 -0.84378797 2.9802322e-008
		 0 0 -0.43447077 -0.0024744987 1.1641532e-010 0 -1.1328094 5.9604645e-008 0 -1.1328094
		 5.9604645e-008 0.43447077 -0.0024744987 1.1641532e-010 -0.43447077 -0.0024744987
		 -1.1641532e-010 0 -1.1328094 0 0 -1.1328094 0 0.43447077 -0.0024744987 -1.1641532e-010
		 0.85827529 0 0 0.85827529 0 0 0.82120883 0 0 0.82120883 0 0 -0.85827529 0 0 -0.85827529
		 0 0 -0.82120883 0 0 -0.82120883 0 0 0.063028276 0 -0.089099109 -0.85961264 0 0 -0.85961264
		 0 0 0.063028276 0 0.089099109 0 0 -1.019710779 0 0 -1.019710779 -0.063028276 0 0.089099109
		 0.85961282 0 0 0.85961282 0 0 -0.063028276 0 -0.089099109 0 0 1.019710779 0 0 1.019710779
		 -0.12206295 0 0 -0.9736734 0 0 -0.9736734 0 0 -0.11539812 0 0 0.0030757817 0 -1.30311799
		 -0.0030757817 0 -1.30311799 0.11539812 0 0 0.9736734 0 0 0.9736734 0 0 0.12206295
		 0 0 -0.0023847988 0 1.30311811 0.0023847988 0 1.30311811;
createNode deleteComponent -n "deleteComponent28";
	setAttr ".dc" -type "componentList" 4 "e[6:8]" "e[21:23]" "e[87:89]" "e[99:101]";
createNode deleteComponent -n "deleteComponent29";
	setAttr ".dc" -type "componentList" 4 "vtx[8:11]" "vtx[28:31]" "vtx[50:51]" "vtx[54:55]";
createNode polyExtrudeFace -n "polyExtrudeFace13";
	setAttr ".ics" -type "componentList" 1 "f[9:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5019685 6.2570591 0.85629922 ;
	setAttr ".rs" 43220;
	setAttr ".lt" -type "double3" -9.7144514654701197e-017 4.4408920985006262e-016 1.119364989748495 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7728611221463662 5.9924301875857875 -1.1303791492942963 ;
	setAttr ".cbx" -type "double3" 2.7767981300203819 6.5216879619388157 2.8429775744911039 ;
createNode polyExtrudeFace -n "polyExtrudeFace14";
	setAttr ".ics" -type "componentList" 1 "f[9:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5019685 7.329596 0.85629922 ;
	setAttr ".rs" 41617;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0562461605222206 7.0428476108340794 -1.4872192829612885 ;
	setAttr ".cbx" -type "double3" 3.0601831683962364 7.6163449062137181 3.1998177081580961 ;
createNode polyExtrudeFace -n "polyExtrudeFace15";
	setAttr ".ics" -type "componentList" 1 "f[9:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5019685 8.7228632 0.85629922 ;
	setAttr ".rs" 35760;
	setAttr ".lt" -type "double3" -1.7867651802561113e-016 -4.9960036108132044e-016 
		1.0570222576699171 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0562461605222206 8.4361147655276838 -1.4872192829612885 ;
	setAttr ".cbx" -type "double3" 3.0601831683962364 9.0096120609073225 3.1998177081580961 ;
createNode polyTweak -n "polyTweak21";
	setAttr ".uopa" yes;
	setAttr -s 79 ".tk";
	setAttr ".tk[8]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[9]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[10]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[11]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[12]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[13]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[14]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[15]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[16]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[17]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[18]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[19]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[64]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[65]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[66]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[67]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[68]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[69]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[70]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[71]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[72]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[73]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[74]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[75]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[76]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[77]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[78]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[79]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[80]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[81]" -type "float3" 0 1.393267 0 ;
	setAttr ".tk[82]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[83]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[84]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[85]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[86]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[87]" -type "float3" 0 1.393267 0 ;
	setAttr ".tk[88]" -type "float3" 0 1.393267 0 ;
	setAttr ".tk[89]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[90]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[91]" -type "float3" 0 1.3932672 0 ;
	setAttr ".tk[92]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[93]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[95]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[96]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[97]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[98]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[99]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[102]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[103]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[104]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[105]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[106]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[108]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[109]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[110]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[111]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[112]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[115]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[116]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[117]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[118]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[119]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[122]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[123]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[124]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[125]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[126]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[128]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[129]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[130]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[131]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[132]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[134]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[135]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[136]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[137]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[138]" -type "float3" 0 1.1920929e-007 0 ;
	setAttr ".tk[145]" -type "float3" 0 -1.1920929e-007 0 ;
	setAttr ".tk[151]" -type "float3" 0 -1.1920929e-007 0 ;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[144:145]" "e[147]" "e[149]" "e[151]" "e[153]" "e[155]" "e[157]" "e[159:160]" "e[163]" "e[165]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.56203895807266235;
	setAttr ".re" 144;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak22";
	setAttr ".uopa" yes;
	setAttr -s 52 ".tk";
	setAttr ".tk[8]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[64]" -type "float3" -0.22951621 -0.40566534 0.52602923 ;
	setAttr ".tk[65]" -type "float3" 0.023332441 -0.41477823 0.56678241 ;
	setAttr ".tk[66]" -type "float3" -0.40469384 -0.38137448 0.16967615 ;
	setAttr ".tk[67]" -type "float3" -0.02333243 -0.41477823 0.56678241 ;
	setAttr ".tk[68]" -type "float3" 0.22951621 -0.40566534 0.52602941 ;
	setAttr ".tk[69]" -type "float3" 0.40469384 -0.38137448 0.16967615 ;
	setAttr ".tk[70]" -type "float3" -0.40469384 -0.38137448 -0.16967613 ;
	setAttr ".tk[71]" -type "float3" 0.40469384 -0.38137448 -0.16967613 ;
	setAttr ".tk[72]" -type "float3" 0.02333243 -0.41477823 -0.56678241 ;
	setAttr ".tk[73]" -type "float3" -0.22951621 -0.40566534 -0.52602935 ;
	setAttr ".tk[74]" -type "float3" -0.02333243 -0.41477823 -0.56678241 ;
	setAttr ".tk[75]" -type "float3" 0.22951621 -0.40566534 -0.52602923 ;
	setAttr ".tk[76]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[80]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[81]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[82]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[83]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[84]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[85]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[86]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[87]" -type "float3" 0 -0.39807636 0 ;
	setAttr ".tk[88]" -type "float3" 0.65380275 -0.26541555 -1.2217311 ;
	setAttr ".tk[89]" -type "float3" 0.088216268 -0.24655184 -1.3203719 ;
	setAttr ".tk[90]" -type "float3" 0.34636837 -0.15152451 -0.44994897 ;
	setAttr ".tk[91]" -type "float3" 1.0468662 -0.31657553 -0.42000657 ;
	setAttr ".tk[92]" -type "float3" -0.088216268 -0.24655184 -1.3203719 ;
	setAttr ".tk[93]" -type "float3" -0.3463684 -0.15152451 -0.44994891 ;
	setAttr ".tk[94]" -type "float3" -0.65380293 -0.26541555 -1.2217312 ;
	setAttr ".tk[95]" -type "float3" -1.0468662 -0.31657553 -0.42000651 ;
	setAttr ".tk[96]" -type "float3" 0.3463684 -0.15152451 0.44994897 ;
	setAttr ".tk[97]" -type "float3" 1.0468662 -0.31657553 0.42000642 ;
	setAttr ".tk[98]" -type "float3" -0.3463684 -0.15152451 0.44994897 ;
	setAttr ".tk[99]" -type "float3" -1.0468662 -0.31657553 0.42000642 ;
	setAttr ".tk[100]" -type "float3" 0.08821632 -0.24655184 1.3203719 ;
	setAttr ".tk[101]" -type "float3" 0.65380293 -0.26541555 1.2217308 ;
	setAttr ".tk[102]" -type "float3" -0.08821632 -0.24655184 1.3203719 ;
	setAttr ".tk[103]" -type "float3" -0.65380293 -0.26541555 1.2217309 ;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[38:41]" "e[72:73]" "e[75]" "e[85]" "e[87]" "e[89]" "e[91]" "e[93]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.49109283089637756;
	setAttr ".re" 89;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak23";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[64]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.29855728 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.29855728 0.47323859 ;
	setAttr ".tk[73]" -type "float3" 0 -0.29855728 0.47323859 ;
	setAttr ".tk[74]" -type "float3" 0 -0.29855728 0.47323859 ;
	setAttr ".tk[75]" -type "float3" 0 -0.29855728 0.47323859 ;
	setAttr ".tk[100]" -type "float3" 0 0 -0.22811207 ;
	setAttr ".tk[101]" -type "float3" 0 0 -0.22811207 ;
	setAttr ".tk[102]" -type "float3" 0 0 -0.22811207 ;
	setAttr ".tk[103]" -type "float3" 0 0 -0.22811207 ;
	setAttr ".tk[104]" -type "float3" -0.12148032 -0.004410719 0.30572474 ;
	setAttr ".tk[105]" -type "float3" -0.22329237 0.0097069917 0.098614641 ;
	setAttr ".tk[106]" -type "float3" -0.22329237 0.0097069917 -0.098614626 ;
	setAttr ".tk[107]" -type "float3" -0.12148032 -0.004410719 0.16751392 ;
	setAttr ".tk[108]" -type "float3" 0.025473619 -0.0097069917 0.14382844 ;
	setAttr ".tk[109]" -type "float3" -0.025473619 -0.0097069917 0.14382844 ;
	setAttr ".tk[110]" -type "float3" 0.12148032 -0.004410719 0.16751386 ;
	setAttr ".tk[111]" -type "float3" 0.22329237 0.0097069917 -0.098614626 ;
	setAttr ".tk[112]" -type "float3" 0.22329237 0.0097069917 0.098614641 ;
	setAttr ".tk[113]" -type "float3" 0.12148032 -0.004410719 0.3057248 ;
	setAttr ".tk[114]" -type "float3" -0.025473619 -0.0097069917 0.32941017 ;
	setAttr ".tk[115]" -type "float3" 0.025473634 -0.0097069917 0.32941017 ;
createNode polyExtrudeFace -n "polyExtrudeFace16";
	setAttr ".ics" -type "componentList" 2 "f[27]" "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5019685 -0.56764209 0.8562991 ;
	setAttr ".rs" 40546;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.006183980956791 -1.1328096615047913 -0.13779527840653993 ;
	setAttr ".cbx" -type "double3" 4.0101209888308063 -0.002474568960235235 1.8503935247894134 ;
createNode polyTweak -n "polyTweak24";
	setAttr ".uopa" yes;
	setAttr -s 62 ".tk";
	setAttr ".tk[1]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[2]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[9]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[10]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[22]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[25]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[26]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[34]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[44]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[50]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[51]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[56]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[57]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[62]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.33013713 ;
	setAttr ".tk[65]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[67]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[68]" -type "float3" 0 0 -0.33013713 ;
	setAttr ".tk[72]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[74]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[76]" -type "float3" 0 0 -0.33013707 ;
	setAttr ".tk[77]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[79]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[80]" -type "float3" 0 0 -0.33013707 ;
	setAttr ".tk[84]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[86]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[89]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[92]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[93]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[96]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[98]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[100]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[102]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[104]" -type "float3" 0 0 -0.33013713 ;
	setAttr ".tk[108]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[109]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[113]" -type "float3" 0 0 -0.33013713 ;
	setAttr ".tk[114]" -type "float3" -0.26552787 0 0 ;
	setAttr ".tk[115]" -type "float3" 0.26552787 0 0 ;
	setAttr ".tk[116]" -type "float3" 0.28851527 0 0 ;
	setAttr ".tk[117]" -type "float3" -0.3410027 0 0.32646766 ;
	setAttr ".tk[118]" -type "float3" 0.3410027 0 0.32646766 ;
	setAttr ".tk[119]" -type "float3" -0.28851527 0 0 ;
	setAttr ".tk[120]" -type "float3" -0.44479424 0 0 ;
	setAttr ".tk[121]" -type "float3" -0.44479424 0 0 ;
	setAttr ".tk[122]" -type "float3" -0.28851527 0 -0.32410651 ;
	setAttr ".tk[123]" -type "float3" 0.3410027 0 -0.32410651 ;
	setAttr ".tk[124]" -type "float3" -0.3410027 0 -0.32410651 ;
	setAttr ".tk[125]" -type "float3" 0.28851527 0 -0.32410651 ;
	setAttr ".tk[126]" -type "float3" 0.4447943 0 0 ;
	setAttr ".tk[127]" -type "float3" 0.4447943 0 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace17";
	setAttr ".ics" -type "componentList" 2 "f[27]" "f[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5019685 -0.56764221 0.8562991 ;
	setAttr ".rs" 47149;
	setAttr ".lt" -type "double3" 1.3322676295501878e-015 9.0722313334814696e-016 8.3181969972736542 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -3.006183980956791 -1.1328096615047913 -0.13779527840653993 ;
	setAttr ".cbx" -type "double3" 4.0101209888308063 -0.0024748073788143365 1.8503935247894134 ;
createNode polyTweak -n "polyTweak25";
	setAttr ".uopa" yes;
	setAttr -s 144 ".tk[0:143]" -type "float3"  0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007
		 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0
		 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0 -2.3841858e-007 0 0
		 -2.3841858e-007 0 -0.70601559 -1.33899486 -4.7683716e-007 -4.4408921e-016 -1.19225991
		 0 -4.4408921e-016 -1.19225991 0 -0.70601547 -1.33899486 0 4.4408921e-016 -1.19225991
		 0 0.70601559 -1.33899486 -4.7683716e-007 0.70601547 -1.33899486 0 4.4408921e-016
		 -1.19225991 0 4.76607132 -0.55006874 0.3621341 3.26118779 0.40963665 0.36213428 3.26118779
		 0.40963665 -0.36213434 4.7660718 -0.55006897 -0.36213398 -3.26118803 0.40963665 0.36213428
		 -4.7660718 -0.55006897 0.36213434 -4.76607084 -0.55006874 -0.36213446 -3.26118803
		 0.40963665 -0.36213434;
createNode deleteComponent -n "deleteComponent30";
	setAttr ".dc" -type "componentList" 1 "f[126:133]";
createNode polyMergeVert -n "polyMergeVert11";
	setAttr ".ics" -type "componentList" 2 "vtx[28]" "vtx[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert12";
	setAttr ".ics" -type "componentList" 2 "vtx[32]" "vtx[130]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert13";
	setAttr ".ics" -type "componentList" 2 "vtx[33]" "vtx[129]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert14";
	setAttr ".ics" -type "componentList" 2 "vtx[29]" "vtx[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert15";
	setAttr ".ics" -type "componentList" 2 "vtx[34]" "vtx[131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert16";
	setAttr ".ics" -type "componentList" 2 "vtx[30]" "vtx[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert17";
	setAttr ".ics" -type "componentList" 2 "vtx[31]" "vtx[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert18";
	setAttr ".ics" -type "componentList" 2 "vtx[35]" "vtx[128]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".am" yes;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[252:253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.38210150599479675;
	setAttr ".re" 257;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak26";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[29]" -type "float3" 0 0 -1.2469436 ;
	setAttr ".tk[30]" -type "float3" 0 0 -1.2469436 ;
	setAttr ".tk[33]" -type "float3" 0 0 1.1559409 ;
	setAttr ".tk[34]" -type "float3" 0 0 1.1559409 ;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[260:261]" "e[263]" "e[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.53398764133453369;
	setAttr ".dr" no;
	setAttr ".re" 265;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[252:253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.58671611547470093;
	setAttr ".dr" no;
	setAttr ".re" 255;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[260:261]" "e[263]" "e[265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.54788583517074585;
	setAttr ".dr" no;
	setAttr ".re" 265;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace18";
	setAttr ".ics" -type "componentList" 1 "f[95:96]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5019685 8.7913408 0.85629928 ;
	setAttr ".rs" 33454;
	setAttr ".lt" -type "double3" -5.773159728050814e-015 6.8962467977975713e-016 7.9511111276150075 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.9548648586423378 8.3262977374820295 0.2404673606391754 ;
	setAttr ".cbx" -type "double3" 2.9588018665163536 9.2563838733462873 1.472131183766922 ;
createNode polyTweak -n "polyTweak27";
	setAttr ".uopa" yes;
	setAttr -s 68 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.52896732 -0.60453403 ;
	setAttr ".tk[1]" -type "float3" 0 -0.52896732 -0.22670022 ;
	setAttr ".tk[2]" -type "float3" 0 -0.52896732 -0.22670022 ;
	setAttr ".tk[3]" -type "float3" 0 -0.52896732 -0.60453403 ;
	setAttr ".tk[20]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[22]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[23]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[24]" -type "float3" 0 -0.30226713 0.60453403 ;
	setAttr ".tk[25]" -type "float3" 0 -0.60453415 0.30226701 ;
	setAttr ".tk[26]" -type "float3" 0 -0.60453415 0.30226701 ;
	setAttr ".tk[27]" -type "float3" 0 -0.30226713 0.60453403 ;
	setAttr ".tk[28]" -type "float3" -0.3003493 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.38198641 0 0 ;
	setAttr ".tk[30]" -type "float3" -0.38198641 0 0 ;
	setAttr ".tk[31]" -type "float3" 0.3003493 0 0 ;
	setAttr ".tk[32]" -type "float3" -0.3003493 0 0 ;
	setAttr ".tk[33]" -type "float3" 0.38198641 0.15113351 0.30226701 ;
	setAttr ".tk[34]" -type "float3" -0.38198641 0.15113351 0.30226701 ;
	setAttr ".tk[35]" -type "float3" 0.3003493 0 0 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[44]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[45]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[46]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[53]" -type "float3" -0.45119303 0 0 ;
	setAttr ".tk[54]" -type "float3" -0.45119303 0 0 ;
	setAttr ".tk[55]" -type "float3" 0 0 0.30226701 ;
	setAttr ".tk[56]" -type "float3" 0 0 0.30226701 ;
	setAttr ".tk[57]" -type "float3" 0 0 0.30226701 ;
	setAttr ".tk[58]" -type "float3" 0 0 0.30226701 ;
	setAttr ".tk[59]" -type "float3" 0.45119303 0 0 ;
	setAttr ".tk[60]" -type "float3" 0.45119303 0 0 ;
	setAttr ".tk[78]" -type "float3" 0.10138136 0.15014255 -0.085740872 ;
	setAttr ".tk[81]" -type "float3" -0.10138136 0.15014255 -0.085740872 ;
	setAttr ".tk[82]" -type "float3" 0.10138136 0.15014255 0.085740872 ;
	setAttr ".tk[83]" -type "float3" -0.10138136 0.15014255 0.085740872 ;
	setAttr ".tk[105]" -type "float3" -0.10138136 -0.15014255 -0.10687457 ;
	setAttr ".tk[106]" -type "float3" -0.10138136 -0.15014255 0.10687457 ;
	setAttr ".tk[111]" -type "float3" 0.10138161 -0.15014255 0.10687457 ;
	setAttr ".tk[112]" -type "float3" 0.10138161 -0.15014255 -0.10687457 ;
	setAttr ".tk[122]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[123]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[124]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[125]" -type "float3" 0 0 0.45340067 ;
	setAttr ".tk[128]" -type "float3" 0.37276208 0 0 ;
	setAttr ".tk[129]" -type "float3" 2.220446e-016 0.15013164 0 ;
	setAttr ".tk[130]" -type "float3" 2.220446e-016 0.15013164 0 ;
	setAttr ".tk[131]" -type "float3" 0.37276208 0 0 ;
	setAttr ".tk[132]" -type "float3" -2.220446e-016 0.15013164 0 ;
	setAttr ".tk[133]" -type "float3" -0.37276208 0 0 ;
	setAttr ".tk[134]" -type "float3" -0.37276208 0 0 ;
	setAttr ".tk[135]" -type "float3" -2.220446e-016 0.15013164 0 ;
	setAttr ".tk[136]" -type "float3" 0.057262518 -0.32714871 0 ;
	setAttr ".tk[137]" -type "float3" -0.15978971 0.3271488 0 ;
	setAttr ".tk[138]" -type "float3" -0.15978971 0.3271488 0 ;
	setAttr ".tk[139]" -type "float3" 0.057262488 -0.32714874 0 ;
	setAttr ".tk[140]" -type "float3" 0.15978974 0.32714882 0 ;
	setAttr ".tk[141]" -type "float3" -0.057262488 -0.32714903 0 ;
	setAttr ".tk[142]" -type "float3" -0.057262488 -0.32714874 0 ;
	setAttr ".tk[143]" -type "float3" 0.15978974 0.32714882 0 ;
	setAttr ".tk[144]" -type "float3" -0.034586765 -0.06238126 0 ;
	setAttr ".tk[145]" -type "float3" -0.034586765 -0.06238126 0 ;
	setAttr ".tk[146]" -type "float3" 0.13711399 -0.84820825 0 ;
	setAttr ".tk[147]" -type "float3" 0.137114 -0.84820819 0 ;
	setAttr ".tk[148]" -type "float3" 0.034586765 -0.06238126 0 ;
	setAttr ".tk[149]" -type "float3" -0.13711399 -0.84820831 0 ;
	setAttr ".tk[150]" -type "float3" -0.13711399 -0.84820825 0 ;
	setAttr ".tk[151]" -type "float3" 0.034586765 -0.06238126 0 ;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[300:301]" "e[303]" "e[305]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.44292137026786804;
	setAttr ".dr" no;
	setAttr ".re" 303;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak28";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[152:159]" -type "float3"  -1.36556876 -4.57416105 -0.22579689
		 -1.36556876 -4.57416105 0.22579689 -1.91014469 -4.78381824 -0.086145982 -1.91014469
		 -4.78381824 0.086145982 1.365569 -4.57416058 -0.22579689 1.365569 -4.57416058 0.22579689
		 1.91014469 -4.78381824 0.086145982 1.91014469 -4.78381824 -0.086145982;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[308:309]" "e[311]" "e[313]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.56431788206100464;
	setAttr ".dr" no;
	setAttr ".re" 313;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[300:301]" "e[303]" "e[305]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.88744437694549561;
	setAttr ".dr" no;
	setAttr ".re" 303;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[308:309]" "e[311]" "e[313]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".wt" 0.64089310169219971;
	setAttr ".dr" no;
	setAttr ".re" 309;
	setAttr ".sma" 0;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace19";
	setAttr ".ics" -type "componentList" 1 "f[13]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.50196850393700787 2.952755905511812 0.85629921259840391 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.5019685 9.8926325 0.85629922 ;
	setAttr ".rs" 46790;
	setAttr ".lt" -type "double3" 0 -4.6845671040606489e-017 1.7890258533576038 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.2947573652417641 9.892632461908299 0.39641129078825377 ;
	setAttr ".cbx" -type "double3" 1.2986943731157798 9.892632461908299 1.3161871344085541 ;
createNode polyTweak -n "polyTweak29";
	setAttr ".uopa" yes;
	setAttr -s 28 ".tk";
	setAttr ".tk[91]" -type "float3" 0 0.41285214 0 ;
	setAttr ".tk[95]" -type "float3" 0 0.41285214 0 ;
	setAttr ".tk[97]" -type "float3" 0 0.41285214 0 ;
	setAttr ".tk[99]" -type "float3" 0 0.41285214 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[153]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[154]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[155]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[156]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[157]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[158]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[159]" -type "float3" 0 0.27523476 0 ;
	setAttr ".tk[160]" -type "float3" 0.28053868 0.27523476 0 ;
	setAttr ".tk[161]" -type "float3" 0.28053868 0.27523476 0 ;
	setAttr ".tk[162]" -type "float3" 0.28053868 0.27523476 0 ;
	setAttr ".tk[163]" -type "float3" 0.28053868 0.27523476 0 ;
	setAttr ".tk[164]" -type "float3" -0.28053868 0.27523476 0 ;
	setAttr ".tk[165]" -type "float3" -0.28053868 0.27523476 0 ;
	setAttr ".tk[166]" -type "float3" -0.28053868 0.27523476 0 ;
	setAttr ".tk[167]" -type "float3" -0.28053868 0.27523476 0 ;
	setAttr ".tk[168]" -type "float3" -0.86014915 0.27523476 0 ;
	setAttr ".tk[169]" -type "float3" -0.86014915 0.27523476 0 ;
	setAttr ".tk[170]" -type "float3" -0.86014915 0.27523476 0 ;
	setAttr ".tk[171]" -type "float3" -0.86014915 0.27523476 0 ;
	setAttr ".tk[172]" -type "float3" 0.86014915 0.27523476 0 ;
	setAttr ".tk[173]" -type "float3" 0.86014915 0.27523476 0 ;
	setAttr ".tk[174]" -type "float3" 0.86014915 0.27523476 0 ;
	setAttr ".tk[175]" -type "float3" 0.86014915 0.27523476 0 ;
createNode displayLayer -n "body";
	setAttr ".c" 4;
	setAttr ".do" 3;
createNode polySoftEdge -n "polySoftEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1.0000000000000004 0 0 0 0 1 0 0.12104457390606732 11.102790623775155 0.0019913006030405356 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak30";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[176:179]" -type "float3"  0.29023629 0 0 -0.29023629
		 0 0 -0.29023629 0 0 0.29023629 0 0;
createNode deleteComponent -n "deleteComponent31";
	setAttr ".dc" -type "componentList" 1 "f[13]";
createNode deleteComponent -n "deleteComponent32";
	setAttr ".dc" -type "componentList" 1 "f[31]";
createNode polyUnite -n "polyUnite3";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:176]";
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:229]";
createNode polyMergeVert -n "polyMergeVert19";
	setAttr ".ics" -type "componentList" 2 "vtx[41]" "vtx[235]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert20";
	setAttr ".ics" -type "componentList" 2 "vtx[45]" "vtx[232]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak31";
	setAttr ".uopa" yes;
	setAttr ".tk[201]" -type "float3"  -0.0080028521 0 0.043773569;
createNode polyMergeVert -n "polyMergeVert21";
	setAttr ".ics" -type "componentList" 2 "vtx[46]" "vtx[232]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert22";
	setAttr ".ics" -type "componentList" 2 "vtx[42]" "vtx[232]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySoftEdge -n "polySoftEdge3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.45443239336884111 0 0 0 0 0.45443239336884111 0 0
		 0 0 0.45443239336884111 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak32";
	setAttr ".uopa" yes;
	setAttr -s 57 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[10]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[12]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[14]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[17]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[18]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[19]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[20]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[21]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[22]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[23]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[24]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[25]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[26]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[27]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[28]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[29]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[30]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[31]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[32]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[33]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[34]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[35]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[36]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[37]" -type "float3" 0 -0.050188184 0 ;
	setAttr ".tk[38]" -type "float3" 0 -0.050188184 0 ;
	setAttr ".tk[39]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[40]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[41]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[42]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[43]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[44]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[45]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[46]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[47]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[48]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[49]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[50]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[51]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[52]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[53]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[54]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[55]" -type "float3" 0 -0.55864024 0 ;
	setAttr ".tk[197]" -type "float3" 0 0 -9.9920072e-016 ;
createNode mia_material_x -n "mia_material_x2";
	setAttr ".S01" -type "float3" 1 0.99313718 0.91600001 ;
	setAttr ".S05" 0.41880342364311218;
	setAttr ".S10" 0.7350427508354187;
	setAttr ".S12" 0.28205129504203796;
	setAttr ".S13" 1.8700854778289795;
	setAttr ".S17" -type "float3" 0.69230181 0.59342337 0.49475852 ;
	setAttr ".S18" 0.1111111119389534;
createNode shadingEngine -n "mia_material_x2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
createNode displayLayer -n "SecondHairLayer";
	setAttr ".v" no;
	setAttr ".c" 8;
	setAttr ".do" 4;
createNode polySoftEdge -n "polySoftEdge4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.45443239336884111 0 0 0 0 0.45443239336884111 0 0
		 0 0 0.45443239336884111 0 0 0 0 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak33";
	setAttr ".uopa" yes;
	setAttr -s 167 ".tk";
	setAttr ".tk[41]" -type "float3" -0.0026264891 0 0 ;
	setAttr ".tk[42]" -type "float3" 0.0010522658 0 0 ;
	setAttr ".tk[45]" -type "float3" -0.0042721005 0 0 ;
	setAttr ".tk[46]" -type "float3" 0.0036101078 0 0 ;
	setAttr ".tk[56]" -type "float3" -1.2161611 0 -0.019815367 ;
	setAttr ".tk[57]" -type "float3" -0.98274916 0 0 ;
	setAttr ".tk[58]" -type "float3" 0.90252298 0 0 ;
	setAttr ".tk[59]" -type "float3" 1.1376306 0 -0.019852202 ;
	setAttr ".tk[60]" -type "float3" -0.47129852 0 -0.0036794196 ;
	setAttr ".tk[61]" -type "float3" -1.7304561 0 0 ;
	setAttr ".tk[62]" -type "float3" 1.5953399 0 0 ;
	setAttr ".tk[63]" -type "float3" 0.33652237 0 -0.0038390665 ;
	setAttr ".tk[64]" -type "float3" -0.38757733 0 0 ;
	setAttr ".tk[65]" -type "float3" -0.45418626 0 0 ;
	setAttr ".tk[66]" -type "float3" 0.40806279 0 0 ;
	setAttr ".tk[67]" -type "float3" 0.27871168 0 0 ;
	setAttr ".tk[68]" -type "float3" -0.04564387 0 -0.035298962 ;
	setAttr ".tk[69]" -type "float3" -0.097168289 0 -0.038000561 ;
	setAttr ".tk[70]" -type "float3" 0.056053106 0 -0.062671594 ;
	setAttr ".tk[71]" -type "float3" -0.21609572 0 -0.065634854 ;
	setAttr ".tk[72]" -type "float3" -0.20914856 0 -0.081259333 ;
	setAttr ".tk[73]" -type "float3" -0.58297801 0 -0.033530511 ;
	setAttr ".tk[74]" -type "float3" 0.47309706 0 -0.037792429 ;
	setAttr ".tk[75]" -type "float3" 0.065888934 0 -0.085441895 ;
	setAttr ".tk[76]" -type "float3" 0.309677 0 -0.32258463 ;
	setAttr ".tk[77]" -type "float3" -1.2024093 0 -0.18457237 ;
	setAttr ".tk[78]" -type "float3" 1.0688492 0 -0.18461171 ;
	setAttr ".tk[79]" -type "float3" -0.4437747 0 -0.32258463 ;
	setAttr ".tk[80]" -type "float3" -0.20697355 0 -0.26682892 ;
	setAttr ".tk[81]" -type "float3" -0.67203403 0 -0.13532734 ;
	setAttr ".tk[82]" -type "float3" 0.59871507 0 -0.13871612 ;
	setAttr ".tk[83]" -type "float3" 0.12238684 0 -0.26759076 ;
	setAttr ".tk[84]" -type "float3" -0.44121858 0 -0.23796576 ;
	setAttr ".tk[85]" -type "float3" -0.051551368 0 -0.022909021 ;
	setAttr ".tk[86]" -type "float3" 0.041507207 0 -0.027312227 ;
	setAttr ".tk[87]" -type "float3" 0.3968142 0 -0.23821807 ;
	setAttr ".tk[88]" -type "float3" -1.1572224 0 -0.11051692 ;
	setAttr ".tk[89]" -type "float3" -0.096907422 0 0 ;
	setAttr ".tk[90]" -type "float3" 0.081627183 0 0 ;
	setAttr ".tk[91]" -type "float3" 1.1135361 0 -0.10968892 ;
	setAttr ".tk[92]" -type "float3" -0.39399523 0 -0.32258463 ;
	setAttr ".tk[93]" -type "float3" 0.35889292 0 -0.14615209 ;
	setAttr ".tk[94]" -type "float3" 0.30318308 0 -0.32258463 ;
	setAttr ".tk[95]" -type "float3" -0.44697157 0 -0.14633179 ;
	setAttr ".tk[96]" -type "float3" -0.48991764 0 -0.0068602711 ;
	setAttr ".tk[97]" -type "float3" -0.39115214 0 -0.15461318 ;
	setAttr ".tk[98]" -type "float3" 0.27043051 0 -0.32258463 ;
	setAttr ".tk[99]" -type "float3" 0.1180255 0 -0.32258463 ;
	setAttr ".tk[100]" -type "float3" -1.1335679 0 -0.20049356 ;
	setAttr ".tk[101]" -type "float3" 1.0069448 0 -0.2004689 ;
	setAttr ".tk[102]" -type "float3" -0.24763037 0 -0.32258463 ;
	setAttr ".tk[103]" -type "float3" -0.36966458 0 -0.32258463 ;
	setAttr ".tk[104]" -type "float3" 0.30263892 0 -0.15417653 ;
	setAttr ".tk[105]" -type "float3" 0.36695886 0 -0.006985174 ;
	setAttr ".tk[106]" -type "float3" 1.4392184 0 0 ;
	setAttr ".tk[107]" -type "float3" -1.563067 0 0 ;
	setAttr ".tk[108]" -type "float3" -0.84114337 0 -0.0045031668 ;
	setAttr ".tk[109]" -type "float3" -0.6887635 0 -0.15184116 ;
	setAttr ".tk[110]" -type "float3" -0.025675338 0 -0.32258463 ;
	setAttr ".tk[111]" -type "float3" -0.075279996 0 -0.32258463 ;
	setAttr ".tk[112]" -type "float3" -1.1357377 0 -0.19085167 ;
	setAttr ".tk[113]" -type "float3" 1.0148481 0 -0.1908527 ;
	setAttr ".tk[114]" -type "float3" -0.045623496 0 -0.32258463 ;
	setAttr ".tk[115]" -type "float3" -0.03996785 0 -0.32258463 ;
	setAttr ".tk[116]" -type "float3" 0.61435944 0 -0.15237164 ;
	setAttr ".tk[117]" -type "float3" 0.71495211 0 -0.0046270331 ;
	setAttr ".tk[118]" -type "float3" 1.5034808 0 0 ;
	setAttr ".tk[119]" -type "float3" -1.6300722 0 0 ;
	setAttr ".tk[120]" -type "float3" -0.17598903 0 0 ;
	setAttr ".tk[121]" -type "float3" -0.29283619 0 0 ;
	setAttr ".tk[122]" -type "float3" 0.39384532 0 -0.0064871833 ;
	setAttr ".tk[123]" -type "float3" 0.26315248 0 0 ;
	setAttr ".tk[124]" -type "float3" 0.066650517 0 0 ;
	setAttr ".tk[125]" -type "float3" -0.55253094 0 -0.006985174 ;
	setAttr ".tk[126]" -type "float3" 0.59323889 0 -0.029388355 ;
	setAttr ".tk[127]" -type "float3" -0.77141243 0 -0.030635625 ;
	setAttr ".tk[128]" -type "float3" -0.4111329 0 -0.005894471 ;
	setAttr ".tk[129]" -type "float3" 0.10465004 0 -0.037516914 ;
	setAttr ".tk[130]" -type "float3" 0.30747077 0 -0.0077702347 ;
	setAttr ".tk[131]" -type "float3" -0.25334439 0 -0.039602432 ;
	setAttr ".tk[132]" -type "float3" -0.25671422 0 0 ;
	setAttr ".tk[133]" -type "float3" -0.27921167 0 0 ;
	setAttr ".tk[134]" -type "float3" 0.061504994 0 0 ;
	setAttr ".tk[135]" -type "float3" 0.24431238 0 0 ;
	setAttr ".tk[136]" -type "float3" 0.15077662 0 0 ;
	setAttr ".tk[137]" -type "float3" -0.20134465 0 0 ;
	setAttr ".tk[138]" -type "float3" 0.17483339 0 0 ;
	setAttr ".tk[139]" -type "float3" -0.32531485 0 0 ;
	setAttr ".tk[140]" -type "float3" -0.177733 0 0 ;
	setAttr ".tk[141]" -type "float3" 0.030903228 0 0 ;
	setAttr ".tk[142]" -type "float3" 0.10681492 0 0 ;
	setAttr ".tk[143]" -type "float3" -0.15101877 0 0 ;
	setAttr ".tk[144]" -type "float3" -0.2864747 0 0 ;
	setAttr ".tk[145]" -type "float3" -0.24593428 0 0 ;
	setAttr ".tk[146]" -type "float3" -0.13864304 0 0 ;
	setAttr ".tk[147]" -type "float3" -0.15214792 0 0 ;
	setAttr ".tk[148]" -type "float3" 0.21497537 0 0 ;
	setAttr ".tk[149]" -type "float3" 0.11663812 0 0 ;
	setAttr ".tk[150]" -type "float3" 0.22137602 0 0 ;
	setAttr ".tk[151]" -type "float3" 0.092035465 0 0 ;
	setAttr ".tk[152]" -type "float3" -0.12296306 0 0 ;
	setAttr ".tk[153]" -type "float3" -0.11508522 0 0 ;
	setAttr ".tk[154]" -type "float3" 0.096384414 0 0 ;
	setAttr ".tk[155]" -type "float3" 0.050574027 0 0 ;
	setAttr ".tk[156]" -type "float3" -0.16270459 0 0 ;
	setAttr ".tk[157]" -type "float3" -0.14199799 0 0 ;
	setAttr ".tk[158]" -type "float3" 0.11472621 0 0 ;
	setAttr ".tk[159]" -type "float3" 0.06397514 0 0 ;
	setAttr ".tk[160]" -type "float3" -0.14994717 0 0 ;
	setAttr ".tk[161]" -type "float3" 0.45599997 0 0 ;
	setAttr ".tk[162]" -type "float3" 0.61788583 0 0 ;
	setAttr ".tk[163]" -type "float3" 0.1279193 0 0 ;
	setAttr ".tk[164]" -type "float3" -0.22557266 0 0 ;
	setAttr ".tk[165]" -type "float3" 0.1478157 0 0 ;
	setAttr ".tk[166]" -type "float3" -0.26364696 0 0 ;
	setAttr ".tk[167]" -type "float3" -0.79420769 0 0 ;
	setAttr ".tk[168]" -type "float3" -0.61588234 0 0 ;
	setAttr ".tk[169]" -type "float3" 0.051696327 0 0 ;
	setAttr ".tk[170]" -type "float3" 0.1517157 0 0 ;
	setAttr ".tk[171]" -type "float3" -0.1727342 0 0 ;
	setAttr ".tk[172]" -type "float3" 0.088361003 0 -0.020791398 ;
	setAttr ".tk[173]" -type "float3" 0.97328895 0 0 ;
	setAttr ".tk[174]" -type "float3" -1.0544821 0 0 ;
	setAttr ".tk[175]" -type "float3" -0.18807139 0 -0.020560652 ;
	setAttr ".tk[176]" -type "float3" 0.12867531 0 -0.15997463 ;
	setAttr ".tk[177]" -type "float3" 0.41331199 0 -0.25490338 ;
	setAttr ".tk[178]" -type "float3" 0.061410695 0 -0.25976759 ;
	setAttr ".tk[179]" -type "float3" -0.84696263 0 -0.14633179 ;
	setAttr ".tk[180]" -type "float3" 0.73822117 0 -0.15025474 ;
	setAttr ".tk[181]" -type "float3" -0.19207303 0 -0.2606144 ;
	setAttr ".tk[182]" -type "float3" -0.53756678 0 -0.25553313 ;
	setAttr ".tk[183]" -type "float3" -0.23477031 0 -0.15957806 ;
	setAttr ".tk[185]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[186]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[187]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[192]" -type "float3" -0.48902082 0 0 ;
	setAttr ".tk[193]" -type "float3" -0.13052174 0 0 ;
	setAttr ".tk[194]" -type "float3" -0.10484887 0 0 ;
	setAttr ".tk[195]" -type "float3" -0.49239922 0 0 ;
	setAttr ".tk[196]" -type "float3" 0.13052157 0 0 ;
	setAttr ".tk[197]" -type "float3" 0.48902091 0 0 ;
	setAttr ".tk[198]" -type "float3" 0.49239919 0 0 ;
	setAttr ".tk[199]" -type "float3" 0.10393879 0 0 ;
	setAttr ".tk[200]" -type "float3" 0.032595467 0 0 ;
	setAttr ".tk[201]" -type "float3" 0.077449389 0 0 ;
	setAttr ".tk[202]" -type "float3" -0.71447909 0 -0.000539448 ;
	setAttr ".tk[203]" -type "float3" -0.79726416 0 0 ;
	setAttr ".tk[204]" -type "float3" -0.032595515 0 0 ;
	setAttr ".tk[205]" -type "float3" 0.79726434 0 0 ;
	setAttr ".tk[206]" -type "float3" 0.71456379 0 -0.00057926826 ;
	setAttr ".tk[207]" -type "float3" -0.079048872 0 0 ;
	setAttr ".tk[216]" -type "float3" 0.28624734 0 0 ;
	setAttr ".tk[217]" -type "float3" 0.37075815 0 0 ;
	setAttr ".tk[218]" -type "float3" 0.35637057 0 0 ;
	setAttr ".tk[219]" -type "float3" 0.27497199 0 0 ;
	setAttr ".tk[220]" -type "float3" -0.30765221 0 0 ;
	setAttr ".tk[221]" -type "float3" -0.29411039 0 0 ;
	setAttr ".tk[222]" -type "float3" -0.37639749 0 0 ;
	setAttr ".tk[223]" -type "float3" -0.39564726 0 0 ;
	setAttr ".tk[224]" -type "float3" 0.50924373 0 0 ;
	setAttr ".tk[225]" -type "float3" 0.74193048 0 0 ;
	setAttr ".tk[226]" -type "float3" 0.72650987 0 0 ;
	setAttr ".tk[227]" -type "float3" 0.50139582 0 0 ;
	setAttr ".tk[228]" -type "float3" -0.78501463 0 0 ;
	setAttr ".tk[229]" -type "float3" -0.80413795 0 0 ;
	setAttr ".tk[230]" -type "float3" -0.56467116 0 0 ;
	setAttr ".tk[231]" -type "float3" -0.5526095 0 0 ;
createNode polyTweak -n "polyTweak34";
	setAttr ".uopa" yes;
	setAttr -s 66 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.62164235 -1.0775193 ;
	setAttr ".tk[1]" -type "float3" 0 -0.62164235 -0.42202011 ;
	setAttr ".tk[2]" -type "float3" 0 -0.62164235 -0.42202011 ;
	setAttr ".tk[3]" -type "float3" 0 -0.62164235 -1.0775193 ;
	setAttr ".tk[4]" -type "float3" 4.6566129e-010 -0.44477677 -0.91143179 ;
	setAttr ".tk[5]" -type "float3" 3.7252903e-009 -0.2467051 -0.41578445 ;
	setAttr ".tk[6]" -type "float3" -3.7252903e-009 -0.2467051 -0.41578445 ;
	setAttr ".tk[7]" -type "float3" -4.6566129e-010 -0.44477677 -0.91143179 ;
	setAttr ".tk[8]" -type "float3" 0 -0.012352579 -0.025312766 ;
	setAttr ".tk[9]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[10]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[11]" -type "float3" 0 -0.012352579 -0.025312766 ;
	setAttr ".tk[13]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[14]" -type "float3" 0 0 -1.4901161e-008 ;
	setAttr ".tk[37]" -type "float3" 0 0 0.14803472 ;
	setAttr ".tk[38]" -type "float3" 0 0 0.14814374 ;
	setAttr ".tk[40]" -type "float3" 0 0 0.0019658594 ;
	setAttr ".tk[41]" -type "float3" 0 -0.0083836336 0.75415146 ;
	setAttr ".tk[42]" -type "float3" 0 -0.0083940821 0.75415057 ;
	setAttr ".tk[43]" -type "float3" 0 0 0.0020431371 ;
	setAttr ".tk[44]" -type "float3" 0 -0.34481093 -0.61498404 ;
	setAttr ".tk[45]" -type "float3" 0 -0.14605331 0.55255187 ;
	setAttr ".tk[46]" -type "float3" 0 -0.14612557 0.55240381 ;
	setAttr ".tk[47]" -type "float3" 0 -0.34481093 -0.61498404 ;
	setAttr ".tk[49]" -type "float3" 0 -0.22383058 -0.45867115 ;
	setAttr ".tk[53]" -type "float3" 0 -0.22383071 -0.45867145 ;
	setAttr ".tk[132]" -type "float3" 0 -0.0014122294 0.099459626 ;
	setAttr ".tk[133]" -type "float3" 0 -0.012352579 0.103916 ;
	setAttr ".tk[134]" -type "float3" 0 0 0.19521818 ;
	setAttr ".tk[135]" -type "float3" 0 -0.012352579 0.10356008 ;
	setAttr ".tk[136]" -type "float3" 0 -0.0020023687 0.1045283 ;
	setAttr ".tk[137]" -type "float3" 0 0 0.2161286 ;
	setAttr ".tk[138]" -type "float3" 0 0 0.18296483 ;
	setAttr ".tk[139]" -type "float3" 0 0 0.20316379 ;
	setAttr ".tk[140]" -type "float3" 0 0 0.041360781 ;
	setAttr ".tk[141]" -type "float3" 0 0 0.036045328 ;
	setAttr ".tk[142]" -type "float3" 0 0 0.041454762 ;
	setAttr ".tk[143]" -type "float3" 0 0 0.040475234 ;
	setAttr ".tk[144]" -type "float3" 0 -0.066066496 0.33284843 ;
	setAttr ".tk[145]" -type "float3" 0 -0.081947021 0.364369 ;
	setAttr ".tk[146]" -type "float3" 0 -0.061912734 0.63956267 ;
	setAttr ".tk[147]" -type "float3" 0 -0.029397225 0.51910466 ;
	setAttr ".tk[148]" -type "float3" 0 -0.081719734 0.36538351 ;
	setAttr ".tk[149]" -type "float3" 0 -0.061884575 0.64069986 ;
	setAttr ".tk[150]" -type "float3" 0 -0.067617081 0.33898056 ;
	setAttr ".tk[151]" -type "float3" 0 -0.030665098 0.52873605 ;
	setAttr ".tk[152]" -type "float3" 0 -0.00070537365 0.7210561 ;
	setAttr ".tk[153]" -type "float3" 0 0 0.551135 ;
	setAttr ".tk[154]" -type "float3" 0 -0.00070074201 0.72231364 ;
	setAttr ".tk[155]" -type "float3" 0 0 0.56372797 ;
	setAttr ".tk[156]" -type "float3" 0 0 0.3612009 ;
	setAttr ".tk[157]" -type "float3" 0 0 0.33869547 ;
	setAttr ".tk[158]" -type "float3" 0 0 0.36145845 ;
	setAttr ".tk[159]" -type "float3" 0 0 0.34651625 ;
	setAttr ".tk[160]" -type "float3" 0 0 0.012862573 ;
	setAttr ".tk[161]" -type "float3" 0 0 0.028076582 ;
	setAttr ".tk[162]" -type "float3" 0 0 0.024957754 ;
	setAttr ".tk[167]" -type "float3" 0 0 0.033728566 ;
	setAttr ".tk[168]" -type "float3" 0 0 0.037325229 ;
	setAttr ".tk[169]" -type "float3" 0 0 0.014982735 ;
	setAttr ".tk[170]" -type "float3" 0 0 0.016401557 ;
	setAttr ".tk[171]" -type "float3" 0 0 0.016494879 ;
	setAttr ".tk[224]" -type "float3" 0 0 0.03430409 ;
	setAttr ".tk[227]" -type "float3" 0 0 0.026743567 ;
	setAttr ".tk[230]" -type "float3" 0 0 0.040441975 ;
	setAttr ".tk[231]" -type "float3" 0 0 0.031672992 ;
createNode polySplit -n "polySplit1";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483611 -2147483612;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit2";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483643 -2147483646;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak35";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[0]" -type "float3" 0.37576842 -0.50671315 0.7819488 ;
	setAttr ".tk[3]" -type "float3" -0.37576842 -0.50671315 0.7819488 ;
	setAttr ".tk[41]" -type "float3" 0 0 -0.38431436 ;
	setAttr ".tk[42]" -type "float3" 0 0 -0.38431436 ;
	setAttr ".tk[134]" -type "float3" -1.6192079 0 0 ;
	setAttr ".tk[137]" -type "float3" 1.6192076 0 0 ;
	setAttr ".tk[138]" -type "float3" -1.0352199 0 -1.2170644 ;
	setAttr ".tk[139]" -type "float3" 1.0352197 0 -1.2170644 ;
	setAttr ".tk[141]" -type "float3" -0.11009632 0 0 ;
	setAttr ".tk[143]" -type "float3" 0.11009632 0 0 ;
	setAttr ".tk[147]" -type "float3" -1.6192079 0 0 ;
	setAttr ".tk[151]" -type "float3" 1.6192076 0 0 ;
	setAttr ".tk[152]" -type "float3" 0.31518349 0 -0.9489032 ;
	setAttr ".tk[153]" -type "float3" -1.0352199 0 -1.2170644 ;
	setAttr ".tk[154]" -type "float3" -0.39012325 0 -0.9489032 ;
	setAttr ".tk[155]" -type "float3" 1.0352199 0 -1.2170644 ;
	setAttr ".tk[156]" -type "float3" 0 0.44945592 0 ;
	setAttr ".tk[157]" -type "float3" -0.11009632 0 0 ;
	setAttr ".tk[158]" -type "float3" 0 0.44945592 0 ;
	setAttr ".tk[159]" -type "float3" 0.11009632 0 0 ;
	setAttr ".tk[208]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[209]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[210]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[211]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[212]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[213]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[214]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[215]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[216]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[217]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[218]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[219]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[220]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[221]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[222]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[223]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[224]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[225]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[226]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[227]" -type "float3" -2.9054623 0 0 ;
	setAttr ".tk[228]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[229]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[230]" -type "float3" 2.905462 0 0 ;
	setAttr ".tk[231]" -type "float3" 2.905462 0 0 ;
createNode polySplit -n "polySplit3";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483392 -2147483366;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483361 -2147483359;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	setAttr -s 2 ".e[0:1]"  0.037786301 0;
	setAttr -s 2 ".d[0:1]"  -2147483392 -2147483335;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	setAttr ".v[0]" -type "float3"  2.1979811 16.057005 1.786113;
	setAttr -s 3 ".e[0:2]"  1 162 1;
	setAttr -s 3 ".d[0:2]"  -2147483319 0 -2147483319;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483321 -2147483386;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483321 -2147483323;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit9";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483332 -2147483384;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	setAttr -s 2 ".e[0:1]"  0.179087 1;
	setAttr -s 2 ".d[0:1]"  -2147483338 -2147483374;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483355 -2147483345;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483325 -2147483323;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	setAttr -s 2 ".e[0:1]"  0.830612 0;
	setAttr -s 2 ".d[0:1]"  -2147483378 -2147483333;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent33";
	setAttr ".dc" -type "componentList" 1 "e[467]";
createNode deleteComponent -n "deleteComponent34";
	setAttr ".dc" -type "componentList" 1 "e[467]";
createNode polySoftEdge -n "polySoftEdge5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.45443239336884111 0 0 0 0 0.45443239336884111 0 0
		 0 0 0.45443239336884111 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySplit -n "polySplit14";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483519 -2147483540;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit15";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483484 -2147483538;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak36";
	setAttr ".uopa" yes;
	setAttr -s 86 ".tk";
	setAttr ".tk[56]" -type "float3" 0.82115597 8.8817842e-016 0 ;
	setAttr ".tk[59]" -type "float3" -0.82115597 8.8817842e-016 9.094947e-013 ;
	setAttr ".tk[62]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[63]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[64]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[65]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[67]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[69]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[70]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[71]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[73]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[74]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[75]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[76]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[77]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[78]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[79]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[80]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[81]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[84]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[87]" -type "float3" 1.1175871e-008 0 0 ;
	setAttr ".tk[88]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[89]" -type "float3" 5.9604645e-008 0 0 ;
	setAttr ".tk[90]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[92]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[97]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[99]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[100]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[102]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[104]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[105]" -type "float3" 4.6566129e-010 0 0 ;
	setAttr ".tk[106]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[108]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[109]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[110]" -type "float3" 2.2351742e-008 0 0 ;
	setAttr ".tk[111]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[113]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[114]" -type "float3" 1.1175871e-008 0 0 ;
	setAttr ".tk[115]" -type "float3" 2.2351742e-008 0 0 ;
	setAttr ".tk[117]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[118]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[120]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[122]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[124]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[125]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[126]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[127]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[129]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[130]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".tk[132]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[133]" -type "float3" -4.6566129e-010 0 0 ;
	setAttr ".tk[135]" -type "float3" -2.3283064e-010 0 0 ;
	setAttr ".tk[137]" -type "float3" -1.1641532e-010 0 0 ;
	setAttr ".tk[160]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[161]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[162]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".tk[167]" -type "float3" -9.3132257e-010 0 0 ;
	setAttr ".tk[168]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[170]" -type "float3" -1.8626451e-009 0 0 ;
	setAttr ".tk[172]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[173]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[174]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[175]" -type "float3" -1.4901161e-008 0 0 ;
	setAttr ".tk[179]" -type "float3" 3.7252903e-009 0 0 ;
	setAttr ".tk[180]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[182]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[183]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[185]" -type "float3" 9.3132257e-010 0 0 ;
	setAttr ".tk[188]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[189]" -type "float3" 1.8626451e-009 0 0 ;
	setAttr ".tk[190]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[193]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[194]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[195]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[196]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[197]" -type "float3" -7.4505806e-009 0 0 ;
	setAttr ".tk[198]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[199]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[200]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[201]" -type "float3" 1.4901161e-008 0 0 ;
	setAttr ".tk[202]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[203]" -type "float3" 7.4505806e-009 0 0 ;
	setAttr ".tk[204]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[205]" -type "float3" 1.1175871e-008 0 0 ;
	setAttr ".tk[206]" -type "float3" -3.7252903e-009 0 0 ;
	setAttr ".tk[232]" -type "float3" 1.8626451e-009 0 0 ;
createNode polySplit -n "polySplit16";
	setAttr -s 5 ".e[0:4]"  1 0.45232701 0.49503401 0.50345898 0.48346701;
	setAttr -s 5 ".d[0:4]"  -2147483486 -2147483519 -2147483249 -2147483270 -2147483282;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit17";
	setAttr -s 7 ".e[0:6]"  0 0.31106201 0.44 0.48065299 0.54288298 0.54748303
		 0;
	setAttr -s 7 ".d[0:6]"  -2147483170 -2147483170 -2147483286 -2147483266 -2147483252 -2147483522 
		-2147483494;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	setAttr -s 9 ".e[0:8]"  1 0.48513901 0.46571001 0.54664898 0.57264799
		 0.62638801 0.42466199 0.43697801 0.447687;
	setAttr -s 9 ".d[0:8]"  -2147483523 -2147483520 -2147483242 -2147483258 -2147483278 -2147483274 
		-2147483262 -2147483246 -2147483246;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit19";
	setAttr ".v[0]" -type "float3"  2.4000571 4.7876921 1.418789;
	setAttr -s 4 ".e[0:3]"  0 184 0.45673001 1;
	setAttr -s 4 ".d[0:3]"  -2147483149 0 -2147483517 -2147483483;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert23";
	setAttr ".ics" -type "componentList" 2 "vtx[250]" "vtx[253]";
	setAttr ".ix" -type "matrix" 0.45443239336884111 0 0 0 0 0.45443239336884111 0 0
		 0 0 0.45443239336884111 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak37";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk";
	setAttr ".tk[235]" -type "float3" 0 0 0.45177603 ;
	setAttr ".tk[236]" -type "float3" 0 0 0.45177603 ;
	setAttr ".tk[237]" -type "float3" 0 0 0.45177603 ;
	setAttr ".tk[241]" -type "float3" 0 0 -0.34307659 ;
	setAttr ".tk[242]" -type "float3" 0 0 -0.56853163 ;
	setAttr ".tk[243]" -type "float3" 0 0 -0.90348274 ;
	setAttr ".tk[244]" -type "float3" 0 0 -0.90348274 ;
	setAttr ".tk[245]" -type "float3" 0 0 -0.56853163 ;
	setAttr ".tk[246]" -type "float3" 0 0 -0.34307659 ;
	setAttr ".tk[249]" -type "float3" 0 0 0.45177603 ;
	setAttr ".tk[252]" -type "float3" 0 0 0.45177603 ;
	setAttr ".tk[253]" -type "float3" 0 0 0.45177603 ;
createNode polyMergeVert -n "polyMergeVert24";
	setAttr ".ics" -type "componentList" 1 "vtx[250:251]";
	setAttr ".ix" -type "matrix" 0.45443239336884111 0 0 0 0 0.45443239336884111 0 0
		 0 0 0.45443239336884111 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert25";
	setAttr ".ics" -type "componentList" 2 "vtx[59]" "vtx[251]";
	setAttr ".ix" -type "matrix" 0.45443239336884111 0 0 0 0 0.45443239336884111 0 0
		 0 0 0.45443239336884111 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak38";
	setAttr ".uopa" yes;
	setAttr ".tk[250]" -type "float3"  0 0 0.36713144;
createNode polyMergeVert -n "polyMergeVert26";
	setAttr ".ics" -type "componentList" 2 "vtx[56]" "vtx[235]";
	setAttr ".ix" -type "matrix" 0.45443239336884111 0 0 0 0 0.45443239336884111 0 0
		 0 0 0.45443239336884111 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak39";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[200]" -type "float3" -0.32392737 0 0 ;
	setAttr ".tk[201]" -type "float3" -0.32392737 0 0 ;
	setAttr ".tk[204]" -type "float3" 0.32392737 0 0 ;
	setAttr ".tk[207]" -type "float3" 0.32392737 0 0 ;
	setAttr ".tk[235]" -type "float3" -0.39987043 -8.8817842e-016 -0.27776042 ;
	setAttr ".tk[236]" -type "float3" -0.15102252 -4.4408921e-016 -0.27776042 ;
	setAttr ".tk[248]" -type "float3" 0.15102252 -4.4408921e-016 -0.27776042 ;
	setAttr ".tk[249]" -type "float3" 0.39987043 -8.8817842e-016 -0.27776042 ;
createNode deleteComponent -n "deleteComponent35";
	setAttr ".dc" -type "componentList" 4 "f[79]" "f[81]" "f[243]" "f[252]";
createNode polyCube -n "polyCube4";
	setAttr ".w" 0.59566268444048287;
	setAttr ".h" 0.44338877423967288;
	setAttr ".d" 0.91272223490749482;
	setAttr ".sw" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode deleteComponent -n "deleteComponent36";
	setAttr ".dc" -type "componentList" 1 "f[4:5]";
createNode polyUnite -n "polyUnite4";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:13]";
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:265]";
createNode polyTweak -n "polyTweak40";
	setAttr ".uopa" yes;
	setAttr -s 17 ".tk";
	setAttr ".tk[250]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[251]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[252]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[253]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[254]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[255]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[256]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[258]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[259]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[260]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[261]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[262]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[263]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[264]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[265]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[266]" -type "float3" 0 -0.14944099 -0.13050823 ;
	setAttr ".tk[267]" -type "float3" 0 -0.14944099 -0.13050823 ;
createNode deleteComponent -n "deleteComponent37";
	setAttr ".dc" -type "componentList" 1 "vtx[238]";
createNode polyMergeVert -n "polyMergeVert27";
	setAttr ".ics" -type "componentList" 2 "vtx[237]" "vtx[256]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert28";
	setAttr ".ics" -type "componentList" 2 "vtx[186]" "vtx[256]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert29";
	setAttr ".ics" -type "componentList" 2 "vtx[185]" "vtx[258]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert30";
	setAttr ".ics" -type "componentList" 2 "vtx[187]" "vtx[255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert31";
	setAttr ".ics" -type "componentList" 2 "vtx[184]" "vtx[255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert32";
	setAttr ".ics" -type "componentList" 2 "vtx[238]" "vtx[255]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySoftEdge -n "polySoftEdge6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak41";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[184]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[185]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[186]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[187]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[237]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[238]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[249]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[250]" -type "float3" -5.9604645e-008 0 0.17644177 ;
	setAttr ".tk[251]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[252]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[253]" -type "float3" -5.9604645e-008 0 0.17644177 ;
	setAttr ".tk[254]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[255]" -type "float3" 0.071793616 0 0 ;
	setAttr ".tk[256]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[257]" -type "float3" -0.074740946 0 0 ;
	setAttr ".tk[258]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[259]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[260]" -type "float3" -0.056246221 0 0 ;
createNode polyMergeVert -n "polyMergeVert33";
	setAttr ".ics" -type "componentList" 2 "vtx[83]" "vtx[242]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak42";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[195]" -type "float3" 0.20034373 0 0 ;
	setAttr ".tk[198]" -type "float3" -0.20034373 0 0 ;
	setAttr ".tk[202]" -type "float3" 0.20034373 0 0 ;
	setAttr ".tk[206]" -type "float3" -0.20034373 0 0 ;
	setAttr ".tk[241]" -type "float3" -0.32241756 0 0 ;
	setAttr ".tk[242]" -type "float3" 0.32241756 0 0 ;
createNode polyMergeVert -n "polyMergeVert34";
	setAttr ".ics" -type "componentList" 2 "vtx[80]" "vtx[241]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMirror -n "polyMirror2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 6.0312643051147461 6.4405387043952942 0.067091226577758789 ;
createNode polyTweak -n "polyTweak43";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[80]" -type "float3" 0 5.9604645e-008 2.9802322e-008 ;
	setAttr ".tk[83]" -type "float3" 0 5.9604645e-008 2.9802322e-008 ;
	setAttr ".tk[184]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[185]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[186]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[187]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[201]" -type "float3" 0 0 5.9604645e-008 ;
	setAttr ".tk[207]" -type "float3" 0 0 5.9604645e-008 ;
	setAttr ".tk[237]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[238]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[240]" -type "float3" 0 0 5.9604645e-008 ;
	setAttr ".tk[241]" -type "float3" 0 0 5.9604645e-008 ;
	setAttr ".tk[247]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[248]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[249]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[250]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[251]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[252]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[253]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[254]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[255]" -type "float3" 1.1920929e-007 0 0 ;
	setAttr ".tk[256]" -type "float3" 1.1920929e-007 0 0.043589629 ;
	setAttr ".tk[257]" -type "float3" 1.1920929e-007 0 0.043589629 ;
	setAttr ".tk[258]" -type "float3" 1.1920929e-007 0 0.043589629 ;
createNode deleteComponent -n "deleteComponent38";
	setAttr ".dc" -type "componentList" 3 "f[264:276]" "f[278:408]" "f[410:513]";
createNode deleteComponent -n "deleteComponent39";
	setAttr ".dc" -type "componentList" 1 "f[265]";
createNode deleteComponent -n "deleteComponent40";
	setAttr ".dc" -type "componentList" 1 "f[264]";
createNode polyMergeVert -n "polyMergeVert35";
	setAttr ".ics" -type "componentList" 2 "vtx[189]" "vtx[263]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak44";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk[259:276]" -type "float3"  -11.95523071 0 0 -11.95523071
		 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071
		 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071
		 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071 0 0 -11.95523071
		 0 0 -11.95523071 0 0;
createNode polyMergeVert -n "polyMergeVert36";
	setAttr ".ics" -type "componentList" 2 "vtx[190]" "vtx[263]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert37";
	setAttr ".ics" -type "componentList" 2 "vtx[244]" "vtx[259]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert38";
	setAttr ".ics" -type "componentList" 2 "vtx[191]" "vtx[259]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert39";
	setAttr ".ics" -type "componentList" 2 "vtx[188]" "vtx[259]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert40";
	setAttr ".ics" -type "componentList" 2 "vtx[243]" "vtx[259]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySoftEdge -n "polySoftEdge7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak45";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[189:190]" -type "float3"  0.040998191 0 0 0.10032555
		 0 0;
createNode polyCube -n "polyCube5";
	setAttr ".w" 1.1836341220138573;
	setAttr ".h" 0.38651749097693822;
	setAttr ".d" 0.6565303020750477;
	setAttr ".sw" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 0;
createNode polyExtrudeFace -n "polyExtrudeFace20";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -5.5140361609028172 0.19325874548846911 -0.63706213200682171 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.2181277 0.19325875 -0.30879697 ;
	setAttr ".rs" 50293;
	setAttr ".lt" -type "double3" 0 -2.7755575615628914e-017 0.58011946895569411 ;
	setAttr ".ls" -type "double3" 0.46076998657555035 1 1 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.5140361609028172 -1.9699888387236797e-009 -0.30879697168463238 ;
	setAttr ".cbx" -type "double3" -4.9222190799282384 0.38651749294692705 -0.30879697168463238 ;
createNode polyUnite -n "polyUnite5";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:19]";
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode deleteComponent -n "deleteComponent41";
	setAttr ".dc" -type "componentList" 2 "f[144]" "f[290:291]";
createNode polyMergeVert -n "polyMergeVert41";
	setAttr ".ics" -type "componentList" 2 "vtx[210]" "vtx[276]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert42";
	setAttr ".ics" -type "componentList" 2 "vtx[208]" "vtx[273]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert43";
	setAttr ".ics" -type "componentList" 2 "vtx[211]" "vtx[280]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert44";
	setAttr ".ics" -type "componentList" 2 "vtx[209]" "vtx[282]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[421:422]" "e[424]" "e[426]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.91993868350982666;
	setAttr ".dr" no;
	setAttr ".re" 421;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak46";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[289:292]" -type "float3"  -0.0079438267 -0.070738219
		 -0.093463369 0.0077371094 0.070738219 -0.09900932 0.0079438267 0.070738219 0.09900932
		 -0.0077817249 -0.070738219 0.093463384;
createNode polySplit -n "polySplit20";
	setAttr -s 2 ".e[0:1]"  0 0.52805501;
	setAttr -s 2 ".d[0:1]"  -2147483064 -2147483237;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit21";
	setAttr -s 2 ".e[0:1]"  0 0.56045902;
	setAttr -s 2 ".d[0:1]"  -2147483063 -2147483241;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMergeVert -n "polyMergeVert45";
	setAttr ".ics" -type "componentList" 2 "vtx[277]" "vtx[293]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert46";
	setAttr ".ics" -type "componentList" 2 "vtx[284]" "vtx[293]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polySplit -n "polySplit22";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483084 -2147483061;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit23";
	setAttr -s 2 ".e[0:1]"  1 0.131015;
	setAttr -s 2 ".d[0:1]"  -2147483079 -2147483063;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyMirror -n "polyMirror3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -7.4137639999389648 7.1415876150131226 0.067091226577758789 ;
	setAttr ".d" 1;
createNode polyTweak -n "polyTweak47";
	setAttr ".uopa" yes;
	setAttr -s 3 ".tk";
	setAttr ".tk[273]" -type "float3" 0 -0.19461004 0 ;
	setAttr ".tk[275]" -type "float3" 0 -0.19461004 0 ;
	setAttr ".tk[278]" -type "float3" 0 -0.19461004 0 ;
createNode deleteComponent -n "deleteComponent42";
	setAttr ".dc" -type "componentList" 2 "f[303:314]" "f[318:579]";
createNode deleteComponent -n "deleteComponent43";
	setAttr ".dc" -type "componentList" 1 "f[303:305]";
createNode polyTweak -n "polyTweak48";
	setAttr ".uopa" yes;
	setAttr -s 27 ".tk[294:320]" -type "float3"  15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0 15.053760529 0.067452759 0
		 15.053760529 0.067452759 0 15.053760529 0.067452759 0;
createNode deleteComponent -n "deleteComponent44";
	setAttr ".dc" -type "componentList" 1 "f[144]";
createNode polyMergeVert -n "polyMergeVert47";
	setAttr ".ics" -type "componentList" 2 "vtx[214]" "vtx[297]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak49";
	setAttr ".uopa" yes;
	setAttr -s 31 ".tk";
	setAttr ".tk[212]" -type "float3" -0.0072849775 0.039156869 -0.042398527 ;
	setAttr ".tk[213]" -type "float3" -0.0072849775 0.039156869 0.042398527 ;
	setAttr ".tk[214]" -type "float3" 0.0072849775 -0.039156869 0.037300609 ;
	setAttr ".tk[215]" -type "float3" 0.0072849775 -0.039156869 -0.037300609 ;
	setAttr ".tk[294]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[295]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[296]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[297]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[298]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[299]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[300]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[301]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[302]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[303]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[304]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[305]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[306]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[307]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[308]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[309]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[310]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[311]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[312]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[313]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[314]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[315]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[316]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[317]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[318]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[319]" -type "float3" 0 0 -0.026183795 ;
	setAttr ".tk[320]" -type "float3" 0 0 -0.026183795 ;
createNode polyMergeVert -n "polyMergeVert48";
	setAttr ".ics" -type "componentList" 2 "vtx[215]" "vtx[294]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert49";
	setAttr ".ics" -type "componentList" 2 "vtx[212]" "vtx[294]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent45";
	setAttr ".dc" -type "componentList" 0;
createNode polyMergeVert -n "polyMergeVert50";
	setAttr ".ics" -type "componentList" 2 "vtx[213]" "vtx[294]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode deleteComponent -n "deleteComponent46";
	setAttr ".dc" -type "componentList" 0;
createNode polyMergeVert -n "polyMergeVert51";
	setAttr ".ics" -type "componentList" 2 "vtx[213]" "vtx[316]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert52";
	setAttr ".ics" -type "componentList" 2 "vtx[291]" "vtx[293]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert53";
	setAttr ".ics" -type "componentList" 2 "vtx[155]" "vtx[233]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak50";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[153]" -type "float3" -0.24545701 0 0 ;
	setAttr ".tk[155]" -type "float3" 0.24545701 0 0 ;
createNode polySplit -n "polySplit24";
	setAttr -s 4 ".e[0:3]"  0 0.74601299 0.61400902 0;
	setAttr -s 4 ".d[0:3]"  -2147483373 -2147483370 -2147483357 -2147483347;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit25";
	setAttr -s 4 ".e[0:3]"  1 0.25180599 0.361027 1;
	setAttr -s 4 ".d[0:3]"  -2147483363 -2147483360 -2147483351 -2147483341;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode mia_material_x -n "mia_material_x3";
createNode shadingEngine -n "mia_material_x3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo6";
createNode fractal -n "fractal1";
	setAttr ".a" 0.63247865438461304;
createNode place2dTexture -n "place2dTexture1";
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 380 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.12988518 0.0037911963 0.079973049
		 0.0037911963 0.071003333 -0.03792692 0.10522326 -0.03792692 0.018215902 0.0037911963
		 0.027186159 -0.03792692 -0.031693645 0.0037911963 -0.0070325518 -0.03792692 0.071327955
		 -0.079645038 0.11032454 -0.079645038 0.026860762 -0.079645038 -0.012135018 -0.079645038
		 0.077424169 -0.12136316 0.11578701 -0.12136316 0.020763414 -0.12136316 -0.017598717
		 -0.12136316 0.071623407 -0.16308127 0.11039633 -0.16308127 0.026561918 -0.16308127
		 -0.012210562 -0.16308127 0.071560957 -0.2047994 0.110339 -0.2047994 0.026621806 -0.2047994
		 -0.012155972 -0.2047994 0.076973163 -0.24651749 0.11571174 -0.24651749 0.021208171
		 -0.24651749 -0.017530436 -0.24651749 0.068516001 -0.2882356 0.098213807 -0.2882356
		 0.0296642 -0.2882356 -3.3069911e-005 -0.2882356 0.067364134 -0.3299537 0.098535545
		 -0.3299537 0.030814398 -0.3299537 -0.00035549005 -0.3299537 0.07463216 -0.3716718
		 0.10848767 -0.3716718 0.023543037 -0.3716718 -0.010306045 -0.3716718 0.083082117
		 -0.41338992 0.09383747 -0.41338992 0.015330254 -0.41338992 0.0043528802 -0.41338992
		 0.082617067 -0.45510802 0.095351018 -0.45510802 0.015615944 -0.45510802 0.0028250157
		 -0.45510802 0.07275372 -0.49682614 0.10975453 -0.49682614 0.025390942 -0.49682614
		 -0.011601739 -0.49682614 -0.11481868 0.0037911963 -0.16879414 0.0037911963 -0.16512644
		 -0.03792692 -0.11463545 -0.03792692 -0.070740148 0.0037911963 -0.066987306 -0.03792692
		 -0.16776949 -0.079645038 -0.1150611 -0.079645038 -0.069462135 -0.079645038 -0.17335303
		 -0.12136316 -0.11853235 -0.12136316 -0.06918484 -0.12136316 0.26698616 0.0037911963
		 0.21300913 0.0037911963 0.21282691 -0.03792692 0.26331812 -0.03792692 0.16893151
		 0.0037911963 0.16517828 -0.03792692 0.21325208 -0.079645038 0.26596087 -0.079645038
		 0.16765225 -0.079645038 0.2167231 -0.12136316 0.27154428 -0.12136316 0.16737451 -0.12136316
		 0.33626431 0.49862555 0.28223211 0.49862555 0.27638996 0.48180979 0.33096552 0.48180979
		 0.25606564 0.49862555 0.26113471 0.48180979 0.19914454 0.49862555 0.20662253 0.48180979
		 0.33044553 0.45690745 0.27518868 0.45690745 0.2759454 0.4352943 0.3318626 0.4352943
		 0.26210031 0.45690745 0.26129493 0.4352943 0.20705663 0.45690745 0.20562097 0.4352943
		 0.28453609 0.40493339 0.33658502 0.40493339 0.25302824 0.40493339 0.20084189 0.40493339
		 0.3833375 0.3734712 0.30523574 0.3734712 0.30885267 0.3317531 0.37682217 0.3317531
		 0.22993354 0.3734712 0.22593978 0.3317531 0.15140975 0.3734712 0.15733546 0.3317531
		 0.30886081 0.29003495 0.37683165 0.29003495 0.15722319 0.28629938 0.2255917 0.29003495
		 0.3062011 0.24831687 0.38337129 0.24831687 0.22860517 0.24831687 0.15125473 0.24831687
		 0.31904379 0.18649384 0.27387139 0.18649384 0.27392283 0.16488065 0.3173753 0.16488065
		 0.26385355 0.18649384 0.26400971 0.16488065 0.21883228 0.18649384 0.22074211 0.16488065
		 0.32113582 0.1399783 0.2764647 0.1399783 0.28465441 0.12316252 0.30982116 0.10230348
		 0.26189876 0.1399783 0.25467888 0.12316252 0.21744759 0.1399783 0.22997496 0.10230348
		 0.30435359 0.081444442 0.2363411 0.081444442 -0.19551197 -0.46215102 -0.28923973
		 -0.46215102 -0.28953844 -0.50386912 -0.19519784 -0.50386912 0.2385315 0.039726369
		 0.30212221 0.039726369 -0.38878492 -0.36462897 -0.48226115 -0.36462897 -0.48270696
		 -0.4063471 -0.38830924 -0.4063471 0.27421364 -0.0019917665 0.29501066 0.018867271
		 0.26524481 -0.0019917665 0.24337178 0.018867271 0.10073907 0.49862555 0.044036966
		 0.49862555 0.047789328 0.48180982 0.099741921 0.48180979 0.1495564 0.49862555 0.15207969
		 0.48180979 0.10082419 0.45690745 0.04695113 0.45690745 0.045059234 0.4352943 0.099849552
		 0.4352943 0.15204485 0.45690745 0.15100706 0.4352943 0.49355698 0.49862555 0.43700284
		 0.49862555 0.43811214 0.48180979 0.49087149 0.48180982 0.38827264 0.49862555 0.38581431
		 0.48180979 0.49142942 0.45690745 0.43710613 0.45690745 0.43796197 0.4352943 0.49296841
		 0.4352943 0.38580656 0.45690745 0.38676965 0.4352943 0.44260496 0.40493339 0.49652448
		 0.40493339 0.38791755 0.40493339 0.28296131 0.21685468 0.33155411 0.21685468 0.25454974
		 0.21685468 0.20578957 0.21685468 0.095120408 0.40493339 0.041277286 0.40493339 0.14963616
		 0.40493339 0.34711158 0.3734712 0.29354677 0.3734712 0.29954159 0.3734712 0.36040142
		 0.3734712 0.32200086 0.3317531 0.34367093 0.3317531 0.24417873 0.3734712 0.23743136
		 0.3734712 0.18955879 0.3734712 0.1754241 0.3734712 0.21351272 0.3317531 0.19160993
		 0.3317531 0.3229858 0.29003495 0.34336263 0.29003495 0.21236144 0.29003495 0.19181162
		 0.29003495 0.29048437 0.24831687 0.35282817 0.24831687 0.3626554 0.24831687 0.29572153
		 0.24831687 0.24611986 0.24831687 0.24046138 0.24831687 0.18301311 0.24831687 0.17273258
		 0.24831687 0.30331889 0.3734712 0.36894915 0.3734712 0.35949227 0.3317531 0.23302405
		 0.3734712 0.16641824 0.3734712 0.17528312 0.3317531 0.35888141 0.29003495 0.1759126
		 0.29003495 0.370433 0.24831687 0.3015469 0.24831687 0.23436302 0.24831687 0.16471054
		 0.24831687 0.37304279 0.3734712 0.30247402 0.3734712 0.37192729 0.3317531 0.23332985
		 0.3734712 0.16197841 0.3734712 0.16221416 0.3317531 0.38335648 0.29003495 0.38537738
		 0.3317531 0.36355478 0.3317531 0.36429214 0.29003495 0.15701137 0.3317531 0.15698679
		 0.29003495 0.16169737 0.29003495 0.16172969 0.3317531 0.30313006 0.24831687 0.37525132
		 0.24831687 0.37257528 0.29003495 0.23255339 0.24831687 0.16170546 0.29003495 0.15985125
		 0.24831687 0.39253286 0.3734712 0.45274863 0.3734712 0.50724417 0.3734712 0.084906906
		 0.3734712 0.030409774 0.3734712 0.14492619 0.3734712 -0.22517847 -0.46215102 -0.27165431
		 -0.46215102 -0.27920863 -0.46215102 -0.20618032 -0.46215102 -0.26995385 -0.50386912
		 -0.27851608 -0.50386912 -0.22687502 -0.50386912 -0.20679259 -0.50386912 -0.40616563
		 -0.36462897 -0.45291498 -0.36462897;
	setAttr ".uvtk[250:379]" -0.47167253 -0.36462897 -0.39861611 -0.36462897 -0.45128939
		 -0.4063471 -0.4710699 -0.4063471 -0.40798941 -0.4063471 -0.3992869 -0.4063471 -0.28169608
		 -0.50386912 -0.20163864 -0.50386912 -0.2821264 -0.46215102 -0.20127067 -0.46215102
		 -0.47625625 -0.4063471 -0.3960155 -0.4063471 -0.47658694 -0.36462897 -0.39569393
		 -0.36462897 0.37347868 0.3317531 0.37350261 0.29003495 0.37360102 0.3317531 0.37374038
		 0.29003495 0.16017087 0.29003495 0.16020665 0.3317531 0.15999115 0.29003495 0.16008341
		 0.3317531 0.37340772 0.3317531 0.37345159 0.3317531 0.37340325 0.29003495 0.37345937
		 0.29003495 0.16017902 0.29003495 0.16016878 0.3317531 0.16022237 0.29003495 0.16022159
		 0.3317531 0.21909758 0.3317531 0.31555146 0.3317531 0.21710283 0.29003495 0.31700104
		 0.29003495 0.37247384 0.37189487 0.37400368 0.2553834 -0.24539591 -0.50386912 -0.24332991
		 -0.50386918 -0.24211472 -0.50386912 -0.24094513 -0.50386918 -0.2370473 -0.46215102
		 -0.24331024 -0.46215102 -0.23965697 -0.46215102 -0.25496987 -0.46215102 -0.42537877
		 -0.36462897 -0.43756771 -0.36462897 -0.43234217 -0.36462897 -0.44159079 -0.36462897
		 -0.44550508 -0.4063471 -0.43007308 -0.4063471 -0.43009216 -0.4063471 -0.42670554
		 -0.4063471 -0.3731581 0.38036317 -0.4981581 0.30632648 -0.37331244 0.056450292 -0.24831246
		 0.12221841 -0.6231581 0.23205535 -0.49831244 -0.0092476066 -0.31088963 -0.068171598
		 -0.18588963 -0.023539623 -0.43588963 -0.11408578 -0.020995177 -0.14899549 -0.094345562
		 -0.14899549 -0.09156207 -0.27414984 -0.0079708565 -0.27414984 -0.16316141 -0.14899549
		 -0.17542927 -0.27414984 -0.091891222 -0.33672699 -0.0076167653 -0.33672699 -0.18387096
		 -0.33672699 -0.091836393 -0.39930418 -0.0007817084 -0.39930418 -0.18314217 -0.39930418
		 -0.7481581 0.12853885 -0.8731581 0.0058179097 -0.74831247 -0.24800797 -0.62331247
		 -0.12294848 -0.12315811 0.60384917 -0.24815811 0.48159608 -0.12331246 0.23495282
		 0.0016875444 0.35823074 -0.17991997 0.22111443 -0.30491999 0.29438245 -0.18007432
		 0.0443554 -0.055074319 -0.02232817 -0.42991999 0.36777455 -0.30507433 0.11099344
		 -0.11765149 -0.0860129 0.0073485062 -0.136591 -0.24265149 -0.044111915 0.1690228
		 0.0081235589 -0.0046273367 0.0081235589 -0.0076804459 -0.11703078 0.15726912 -0.11703078
		 -0.17708507 0.0081235589 -0.17220606 -0.11703078 -0.0065249782 -0.17960796 0.15905035
		 -0.17960796 -0.16438691 -0.17960796 -0.0057565216 -0.24218513 0.15301657 -0.24218513
		 -0.16467142 -0.24218513 -0.55491996 0.46733454 -0.67991996 0.58290601 -0.55507433
		 0.3392415 -0.43007433 0.21647248 0.070080027 0.0084959585 -0.054919973 0.12364418
		 0.069925681 -0.12478473 0.19492568 -0.2470784 0.37215903 0.3317531 0.37559095 0.3317531
		 0.37555316 0.29003495 0.37220562 0.29003495 0.35652846 0.30972362 0.39089423 0.30837181
		 -0.23094596 0.086141758 -0.22606061 0.086141758 -0.22540945 0.044423655 -0.23139259
		 0.044423655 -0.22024223 0.086141758 -0.23645002 0.086141758 -0.24132274 0.06276048
		 -0.23369496 0.044423655 -0.22083169 0.044423655 -0.21420494 0.064112313 0.32457262
		 0.3317531 0.33363739 0.29003495 0.2102446 0.33175313 0.20228924 0.28868634;
createNode polyMapCut -n "polyMapCut1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[284]" "e[306]" "e[324]" "e[460]" "e[464]" "e[647:649]";
createNode polyTweak -n "polyTweak51";
	setAttr ".uopa" yes;
	setAttr -s 63 ".tk";
	setAttr ".tk[2]" -type "float3" 0 0.00027166921 0 ;
	setAttr ".tk[41]" -type "float3" 0 0.057969637 0 ;
	setAttr ".tk[42]" -type "float3" 0 0.074313477 0 ;
	setAttr ".tk[45]" -type "float3" 0 0.098740943 0 ;
	setAttr ".tk[46]" -type "float3" 0 0.10222156 0 ;
	setAttr ".tk[64]" -type "float3" 0 0 -0.012496178 ;
	setAttr ".tk[67]" -type "float3" 0 0 -0.014239206 ;
	setAttr ".tk[68]" -type "float3" 0 0 -0.020835083 ;
	setAttr ".tk[69]" -type "float3" 0 0 -0.02071636 ;
	setAttr ".tk[70]" -type "float3" 0 0 0.030017385 ;
	setAttr ".tk[71]" -type "float3" 0 0 0.03039176 ;
	setAttr ".tk[72]" -type "float3" 0 0 0.0070284526 ;
	setAttr ".tk[75]" -type "float3" 0 0 0.007043411 ;
	setAttr ".tk[120]" -type "float3" 0 0 -0.057585161 ;
	setAttr ".tk[122]" -type "float3" 0 0 -0.13790292 ;
	setAttr ".tk[124]" -type "float3" 0 0 -0.061297581 ;
	setAttr ".tk[125]" -type "float3" 0 0 -0.13790818 ;
	setAttr ".tk[126]" -type "float3" 0 0 0.15236746 ;
	setAttr ".tk[127]" -type "float3" 0 0 0.15231317 ;
	setAttr ".tk[129]" -type "float3" 0 0 0.060163151 ;
	setAttr ".tk[131]" -type "float3" 0 0 0.05971916 ;
	setAttr ".tk[132]" -type "float3" 0 0.018353369 -0.16945316 ;
	setAttr ".tk[133]" -type "float3" 0 0.00027166921 0 ;
	setAttr ".tk[134]" -type "float3" 0 0.04687712 -0.036797505 ;
	setAttr ".tk[135]" -type "float3" 0 0.00027166921 0 ;
	setAttr ".tk[136]" -type "float3" 0 0.019264195 -0.1760858 ;
	setAttr ".tk[137]" -type "float3" 0 0.048666321 -0.035926528 ;
	setAttr ".tk[138]" -type "float3" 0 0.04050523 0.10791965 ;
	setAttr ".tk[139]" -type "float3" 0 0.043980625 0.10373413 ;
	setAttr ".tk[141]" -type "float3" 0 0.0063070897 0.12946565 ;
	setAttr ".tk[142]" -type "float3" 0 0 0.0017478424 ;
	setAttr ".tk[143]" -type "float3" 0 0.0059586163 0.13330682 ;
	setAttr ".tk[144]" -type "float3" 0 0.17491335 0 ;
	setAttr ".tk[145]" -type "float3" 0 0.1067546 0 ;
	setAttr ".tk[146]" -type "float3" 0 0.18428281 0 ;
	setAttr ".tk[147]" -type "float3" 0 0.15187378 0 ;
	setAttr ".tk[148]" -type "float3" 0 0.10755751 0 ;
	setAttr ".tk[149]" -type "float3" 0 0.18595102 0 ;
	setAttr ".tk[150]" -type "float3" 0 0.17457649 0 ;
	setAttr ".tk[151]" -type "float3" 0 0.15381202 0 ;
	setAttr ".tk[152]" -type "float3" 0 0.12538025 0 ;
	setAttr ".tk[153]" -type "float3" 0 0.16877654 0 ;
	setAttr ".tk[154]" -type "float3" 0 0.1395649 0 ;
	setAttr ".tk[155]" -type "float3" 0 0.16631337 0 ;
	setAttr ".tk[156]" -type "float3" 0 0.12910464 0 ;
	setAttr ".tk[157]" -type "float3" 0 0.20140547 0 ;
	setAttr ".tk[158]" -type "float3" 0 0.14829695 0 ;
	setAttr ".tk[159]" -type "float3" 0 0.2089221 0.00036252427 ;
	setAttr ".tk[160]" -type "float3" 0 0 -0.13587546 ;
	setAttr ".tk[161]" -type "float3" 0 0 -0.18670677 ;
	setAttr ".tk[162]" -type "float3" 0 0 0.18896529 ;
	setAttr ".tk[163]" -type "float3" 0 0 0.15099274 ;
	setAttr ".tk[165]" -type "float3" 0 0 0.00108292 ;
	setAttr ".tk[166]" -type "float3" 0 0 0.15238728 ;
	setAttr ".tk[167]" -type "float3" 0 0 0.18682349 ;
	setAttr ".tk[168]" -type "float3" 0 0 -0.18896529 ;
	setAttr ".tk[169]" -type "float3" 0 0 -0.14263053 ;
	setAttr ".tk[232]" -type "float3" 0 0.019729292 -0.18080789 ;
	setAttr ".tk[233]" -type "float3" 0 0.0097544529 0.15732074 ;
	setAttr ".tk[314]" -type "float3" 0 0.23143589 0 ;
	setAttr ".tk[315]" -type "float3" 0 0.24044587 0 ;
	setAttr ".tk[316]" -type "float3" 0 0.23240663 0 ;
	setAttr ".tk[317]" -type "float3" 0 0.23870765 0 ;
createNode polyMergeVert -n "polyMergeVert54";
	setAttr ".ics" -type "componentList" 2 "vtx[141]" "vtx[233]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
	setAttr -s 195 ".uvtk";
	setAttr ".uvtk[76]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[77]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[78]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[79]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[80]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[81]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[82]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[83]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[84]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[85]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[86]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[87]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[88]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[89]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[90]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[91]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[92]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[93]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[94]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[95]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[96]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[97]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[98]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[99]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[100]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[101]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[102]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[103]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[104]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[105]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[106]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[107]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[108]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[109]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[110]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[111]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[112]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[113]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[114]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[115]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[116]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[117]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[118]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[119]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[120]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[121]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[122]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[123]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[124]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[125]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[126]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[127]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[128]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[129]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[134]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[135]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[140]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[141]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[142]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[143]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[144]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[145]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[146]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[147]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[148]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[149]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[150]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[151]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[152]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[153]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[154]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[155]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[156]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[157]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[158]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[159]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[160]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[161]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[162]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[163]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[164]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[165]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[166]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[167]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[168]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[169]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[170]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[171]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[172]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[173]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[174]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[175]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[176]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[177]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[178]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[179]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[180]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[181]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[182]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[183]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[184]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[185]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[186]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[187]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[188]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[189]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[190]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[191]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[192]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[193]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[194]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[195]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[196]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[197]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[198]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[199]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[200]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[201]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[202]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[203]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[204]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[205]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[206]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[207]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[208]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[209]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[210]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[211]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[212]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[213]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[214]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[215]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[216]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[217]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[218]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[219]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[220]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[221]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[222]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[223]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[224]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[225]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[226]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[227]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[228]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[229]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[230]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[231]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[232]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[233]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[234]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[235]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[236]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[237]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[238]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[239]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[264]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[265]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[266]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[267]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[268]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[269]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[270]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[271]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[272]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[273]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[274]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[275]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[276]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[277]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[278]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[279]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[280]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[281]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[282]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[283]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[284]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[359]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[360]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[361]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[362]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[363]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[364]" -type "float2" 0.49489218 0 ;
	setAttr ".uvtk[375]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[376]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[377]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[378]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[379]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[380]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[381]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[382]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[383]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[384]" -type "float2" -0.0028772799 0 ;
	setAttr ".uvtk[385]" -type "float2" 0.49489212 0 ;
	setAttr ".uvtk[386]" -type "float2" -0.0028772799 0 ;
createNode deleteComponent -n "deleteComponent47";
	setAttr ".dc" -type "componentList" 12 "map[102:103]" "map[106]" "map[207]" "map[219]" "map[224:227]" "map[232:233]" "map[268:271]" "map[276:279]" "map[377:378]" "map[380]" "map[384]" "map[386]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk";
	setAttr ".uvtk[102]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[103]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[106]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[207]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[219]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[224]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[225]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[226]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[227]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[232]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[233]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[268]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[269]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[270]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[271]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[276]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[277]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[278]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[279]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[377]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[378]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[380]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[384]" -type "float2" 0 0.0057545598 ;
	setAttr ".uvtk[386]" -type "float2" 0 0.0057545598 ;
createNode polyMapDel -n "polyMapDel1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "f[143]" "f[147]" "f[156]" "f[201:204]" "f[209:212]" "f[217:220]" "f[228]" "f[230:231]" "f[233]" "f[331:333]";
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 171 ".uvtk";
	setAttr ".uvtk[76]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[77]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[78]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[79]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[80]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[81]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[82]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[83]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[84]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[85]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[86]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[87]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[88]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[89]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[90]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[91]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[92]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[93]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[94]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[95]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[96]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[97]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[98]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[99]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[100]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[101]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[102]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[103]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[104]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[105]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[106]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[107]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[108]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[109]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[110]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[111]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[112]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[113]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[114]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[115]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[116]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[117]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[118]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[119]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[120]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[121]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[122]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[123]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[124]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[125]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[126]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[127]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[128]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[129]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[134]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[135]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[140]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[141]" -type "float2" -0.41145101 0.043159157 ;
	setAttr ".uvtk[142]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[143]" -type "float2" -0.41145101 0.043159157 ;
	setAttr ".uvtk[144]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[145]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[146]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[147]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[148]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[149]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[150]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[151]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[152]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[153]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[154]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[155]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[156]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[157]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[158]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[159]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[160]" -type "float2" -0.41145101 0.043159187 ;
	setAttr ".uvtk[161]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[162]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[163]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[164]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[165]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[166]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[167]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[168]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[169]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[170]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[171]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[172]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[173]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[174]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[175]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[176]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[177]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[178]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[179]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[180]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[181]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[182]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[183]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[184]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[185]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[186]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[187]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[188]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[189]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[190]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[191]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[192]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[193]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[194]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[195]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[196]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[197]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[198]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[199]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[200]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[201]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[202]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[203]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[204]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[205]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[206]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[207]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[208]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[209]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[210]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[211]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[212]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[213]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[214]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[215]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[216]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[217]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[218]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[219]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[220]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[221]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[222]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[223]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[224]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[225]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[228]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[229]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[230]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[231]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[234]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[235]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[236]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[237]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[238]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[239]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[264]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[265]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[266]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[267]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[272]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[273]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[274]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[275]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[278]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[279]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[280]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[281]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[282]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[283]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[284]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[359]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[360]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[361]" -type "float2" -0.41145101 0.043159217 ;
	setAttr ".uvtk[362]" -type "float2" -0.41145101 0.043159217 ;
createNode polyMapDel -n "polyMapDel2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "f[0:142]" "f[144:146]" "f[148:155]" "f[157:200]" "f[205:208]" "f[213:216]" "f[221:227]" "f[229]" "f[232]" "f[234:275]" "f[294:301]" "f[320:330]";
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:333]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".t" -type "double3" 0 6.504648660821152 0 ;
	setAttr ".s" -type "double3" 15.053760528564453 15.053760528564453 15.053760528564453 ;
	setAttr ".pvt" -type "float3" 0 6.5046487 0 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapCut -n "polyMapCut2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[127]" "e[151]" "e[154:159]" "e[162]" "e[466:467]" "e[477]";
createNode polyMapCut -n "polyMapCut3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[358]" "e[360]" "e[362:363]" "e[366]" "e[368]" "e[370:371]" "e[473:474]" "e[483:484]";
createNode polyTweakUV -n "polyTweakUV5";
	setAttr ".uopa" yes;
	setAttr -s 15 ".uvtk";
	setAttr ".uvtk[20]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[21]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[22]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[23]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[24]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[25]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[26]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[27]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[28]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[29]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[30]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[31]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[32]" -type "float2" 0.0019531255 0 ;
	setAttr ".uvtk[33]" -type "float2" 0.0019531255 0 ;
createNode polyMapSewMove -n "polyMapSewMove1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[356]" "e[377]" "e[391]";
createNode polyMapSewMove -n "polyMapSewMove2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[367]" "e[381]" "e[397]";
createNode polyMapSewMove -n "polyMapSewMove3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[365]" "e[383]" "e[399]";
createNode polyMapSewMove -n "polyMapSewMove4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[361]" "e[372]" "e[393]";
createNode polyMapCut -n "polyMapCut4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[273]" "e[284]" "e[300]" "e[306]" "e[312]" "e[324]" "e[459:460]" "e[464:465]" "e[641:643]" "e[646:648]";
createNode polyMapDel -n "polyMapDel3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
createNode polyChipOff -n "polyChipOff2";
	setAttr ".ics" -type "componentList" 3 "f[185:188]" "f[244:245]" "f[262:275]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.11311626 7.1415877 0.067091227 ;
	setAttr ".rs" 51177;
	setAttr ".lt" -type "double3" -2.7278526659735292e-016 2.4980018054066022e-016 0.23206241785947881 ;
	setAttr ".ls" -type "double3" 1 1 1.2598847573173948 ;
createNode polyTweak -n "polyTweak52";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[4]" -type "float3" 0 -0.19280612 0.34769651 ;
	setAttr ".tk[7]" -type "float3" 0 -0.19280612 0.34769651 ;
createNode polySeparate -n "polySeparate2";
	setAttr ".ic" 2;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:353]";
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:333]";
createNode polyChipOff -n "polyChipOff3";
	setAttr ".ics" -type "componentList" 3 "f[181:184]" "f[238:239]" "f[248:261]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 51785;
	setAttr ".lt" -type "double3" -2.8320377184858081e-016 -1.6653345369377348e-016 
		0.21391003577678111 ;
createNode polySeparate -n "polySeparate3";
	setAttr ".ic" 2;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:333]";
createNode polyCube -n "polyCube6";
	setAttr ".w" 3.3770189426562904;
	setAttr ".h" 3.9939429456091702;
	setAttr ".d" 2.7060235215677775;
	setAttr ".sw" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube7";
	setAttr ".w" 2.7206319632159168;
	setAttr ".h" 0.7015325619752959;
	setAttr ".d" 3.172398776725295;
	setAttr ".sw" 3;
	setAttr ".sd" 3;
	setAttr ".cuv" 4;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode polyChipOff -n "polyChipOff4";
	setAttr ".ics" -type "componentList" 4 "f[63:64]" "f[66]" "f[68:69]" "f[328:330]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 61075;
	setAttr ".lt" -type "double3" 5.6378512969246231e-018 -0.11749145684674328 0.3878440076789017 ;
createNode polySeparate -n "polySeparate4";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:333]";
	setAttr ".gi" 21;
createNode blinn -n "blinn1";
	setAttr ".c" -type "float3" 0.96100003 0.68191594 0.05958198 ;
createNode shadingEngine -n "blinn1SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo7";
createNode polyExtrudeEdge -n "polyExtrudeEdge9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]" "e[219]" "e[221]" "e[223:224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.038100719 4.7652655 0.026220143 ;
	setAttr ".rs" 50760;
	setAttr ".lt" -type "double3" -8.8817841970012523e-016 -1.457167719820518e-015 2.200385183842267 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.5038700103759766 4.7652654647827148 -1.8958899974822998 ;
	setAttr ".cbx" -type "double3" 2.5800714492797852 4.7652654647827148 1.948330283164978 ;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:345]";
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode polyChipOff -n "polyChipOff5";
	setAttr ".ics" -type "componentList" 1 "f[197:200]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 38284;
	setAttr ".lt" -type "double3" 5.9932027941214834e-017 -4.2500725161431774e-017 0.24205914969161221 ;
createNode polyTweak -n "polyTweak53";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[317:328]" -type "float3"  1.0062278509 -0.77057022 -0.75048316
		 1.27433491 -0.86203563 -0.14389753 1.16399622 -0.89375669 0.4423632 0.88420105 -0.85273194
		 0.81446749 0.4274098 -0.85542083 1.086200237 -0.42381945 -0.85984927 1.086795092
		 -0.87735832 -0.8641029 0.82054597 -1.16421223 -0.90551972 0.44681504 -1.27433491
		 -0.86792469 -0.15022311 -0.99948561 -0.77326691 -0.75631714 -0.46861699 -0.76726389
		 -1.086795092 0.47305632 -0.76563668 -1.086306334;
createNode polySeparate -n "polySeparate5";
	setAttr ".ic" 2;
	setAttr -s 2 ".out";
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:345]";
	setAttr ".gi" 30;
createNode polyMirror -n "polyMirror4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.29631063157276838 0 0.068838212562500264 0 0 1.0000000000000004 0 0
		 -0.2262913282761323 0 0.97405966693371704 0 0.4315631992759823 17.253833525031617 -0.080440353152686508 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 0.027496816933940033 14.739374391883421 -2.3922497971674406 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode polyMirror -n "polyMirror5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 0.30042474341387854 0.0035877007175099977 0.047652826150394047 0
		 -0.012100038756859244 0.99992629051377713 0.0010012998755508612 0 -0.15662541433022378 -0.0028843238794762222 0.98765386662617993 0
		 0.1961815804997491 16.649194901722293 -1.0053377249152569 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" -0.20819497587132976 14.832107141917286 -2.8606685310043924 ;
	setAttr ".d" 1;
	setAttr ".mm" 1;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOff";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".scan" 1;
	setAttr ".ray" no;
createNode mentalrayOptions -s -n "PreviewImrRayTracyOn";
	setAttr ".minsp" 0;
	setAttr ".fil" 1;
	setAttr ".scan" 1;
	setAttr ".rflr" 1;
	setAttr ".rfrr" 2;
	setAttr ".maxr" 3;
	setAttr ".shrd" 1;
createNode polySoftEdge -n "polySoftEdge8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.17112895299488604 0 0.047196801430042103 0 0 0.5835537109868123 0 0
		 -0.15514968341591076 0 0.56255089489078447 0 1.0042857506001159 16.453342384475835 -0.82578140526729427 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.29631063157276838 0 0.068838212562500264 0 0 1.0000000000000004 0 0
		 -0.2262913282761323 0 0.97405966693371704 0 0.63428166260927399 16.521290715927002 -0.861906397811675 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.30420172565561304 0 0 0 0 1.0000000000000004 0 0 0 0 1 0
		 0.15887036748399125 16.836944066083426 -1.2365774177262923 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.30042474341387854 0.0035877007175099977 0.047652826150394047 0
		 -0.012100038756859244 0.99992629051377713 0.0010012998755508612 0 -0.15662541433022378 -0.0028843238794762222 0.98765386662617993 0
		 0.39840942858614692 16.649194901722293 -1.5330928520226932 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak54";
	setAttr ".uopa" yes;
	setAttr -s 38 ".tk";
	setAttr ".tk[0]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[1]" -type "float3" 1.4940214 -0.0055684103 -0.07207866 ;
	setAttr ".tk[2]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[3]" -type "float3" 1.4940214 -0.0055684103 -0.07207866 ;
	setAttr ".tk[36]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[37]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[38]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[39]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[40]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[41]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[42]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[43]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[44]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[45]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[46]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[47]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[48]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[49]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[50]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[51]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[52]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[53]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[54]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[55]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[56]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[57]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[58]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[59]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[60]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[61]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[62]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[63]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[64]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[65]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[66]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[67]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[68]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
	setAttr ".tk[69]" -type "float3" 1.4940214 -0.0055684117 -0.072078653 ;
createNode polySoftEdge -n "polySoftEdge13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.15288314273501663 0 -0.09021863048072315 0 0 0.70678971934542345 0 0
		 0.29657501214460469 0 0.50257158274011804 0 -0.79262178616995871 16.453342384475857 -1.1992694102928014 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.2474152781412924 0 0 0 0 1.357801698279683 0 0 0 0 1 0
		 -0.043848095849300439 15.81327725963088 -0.56285786379339253 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.0607472943976743 0 -0.65639930954285097 0 0 1.0000000000000004 0 0
		 0.52620752771355894 0 0.85035618288901982 0 -0.13168273863102065 15.81327725963088 -0.56285786379339253 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.015253640226053 0 0.7247792230383443 0 0 1.1167363413118179 0 0
		 -0.58102480844895499 0 0.81388584701225464 0 0.15096323317162885 15.813277259630881 -0.56285786379339253 1;
	setAttr ".a" 0;
createNode polySoftEdge -n "polySoftEdge17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.76340043019675263 0 0 0 0 0.76340043019675263 0 0
		 0 0 0.76340043019675263 0 0.16883499960583315 14.971971284535954 -0.087655743487303539 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak55";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[0:31]" -type "float3"  0.9593631 -3.2163523e-008
		 -0.72778159 0.2399071 -3.2163523e-008 -0.5767166 -0.2399071 -3.2163523e-008 -0.5767166
		 -0.95936316 -3.2163523e-008 -0.72778159 -0.23536637 -2.515527e-008 0.29667801 -0.2892229
		 -2.515527e-008 0.69526774 0.2892229 -2.515527e-008 0.69526774 0.23536634 -2.515527e-008
		 0.29667801 -0.86766899 -2.515527e-008 0.23175587 -0.28922281 0.79187483 0.23175578
		 0.28922281 0.79187483 0.23175578 0.86766887 -2.515527e-008 0.23175587 -0.86766899
		 -2.515527e-008 -0.23175587 -0.28922281 0.79187483 -0.23175578 0.28922281 0.79187483
		 -0.23175578 0.86766887 -2.515527e-008 -0.23175587 -0.23536637 -2.515527e-008 -0.29667801
		 -0.2892229 -2.515527e-008 -0.69526774 0.2892229 -2.515527e-008 -0.69526774 0.23536634
		 -2.515527e-008 -0.29667801 0.9593631 -3.2163523e-008 0.72778159 0.2399071 -3.2163523e-008
		 0.5767166 -0.2399071 -3.2163523e-008 0.5767166 -0.95936316 -3.2163523e-008 0.72778159
		 0.71972132 -3.2163523e-008 0.19223885 0.23990715 -8.704577e-008 0.1922389 -0.23990715
		 -8.704577e-008 0.1922389 -0.71972132 -3.2163523e-008 0.19223885 0.71972132 -3.2163523e-008
		 -0.19223885 0.23990715 -8.704577e-008 -0.1922389 -0.23990715 -8.704577e-008 -0.1922389
		 -0.71972132 -3.2163523e-008 -0.19223885;
createNode polySoftEdge -n "polySoftEdge18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.19017935386421858 -0.0011583162448882208 0.41457774775161244 0
		 0.27600108889152775 0.00035374144398818273 -0.12660906016161425 0 7.9986272459808409e-016 0.55419190899345228 0.0015483935026757852 0
		 -2.475750352644086 10.236935439535646 0.41321996929957816 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak56";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[0:31]" -type "float3"  0 0.49852836 -0.34204021 0
		 0.4781208 0 0 0.4781208 0 0 0.49852836 -0.34204021 0 0.20253366 -0.34204021 0 0.17529331
		 0 0 0.17529331 0 0 0.20253366 -0.34204021 -0.25822634 0.18788861 0 -0.16225202 0.69140881
		 0.18919435 0.16225214 0.69140881 0.18919435 0.25822634 0.18788861 0 -0.25822634 0.18788861
		 0 -0.16225202 0.69140881 -0.18919435 0.16225214 0.69140881 -0.18919435 0.25822634
		 0.18788861 0 0 0.18510674 0.27363217 0 0.17529331 0 0 0.17529331 0 0 0.18510674 0.27363217
		 0 0.48564985 0.27363217 0 0.4781208 0 0 0.4781208 0 0 0.48564985 0.27363217 -0.25822634
		 0.48774979 0 -0.16225196 0.18098079 -0.18919435 0.16225198 0.18098079 -0.18919435
		 0.25822634 0.48774979 0 -0.25822634 0.48774979 0 -0.16225196 0.18098079 0.18919435
		 0.16225198 0.18098079 0.18919435 0.25822634 0.48774979 0;
createNode polySoftEdge -n "polySoftEdge20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak57";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[0:15]" -type "float3"  -0.15767312 -0.36316898 0.048415389
		 0.18157041 -0.36279339 0.048661854 0.11554734 1.4901161e-008 0 -0.096897438 1.4901161e-008
		 0 0.37047899 -0.32290429 0.020511251 1.024417758 -0.23385809 -0.14475277 1.000007510185
		 -0.31342369 -0.27570334 0.010045296 -0.068255402 -0.18218148 -0.0031877023 -0.069293037
		 -0.18495102 0.17172168 -1.053831816 -0.4708752 -0.14247864 -1.064785719 -0.47371167
		 0.44039297 -0.47753218 -0.23783198 -0.35404372 -0.32226238 0.019108038 -0.95283717
		 -0.23424135 -0.14642677 -1.024417877 -0.31200662 -0.28243691 -0.40345752 -0.48759916
		 -0.25392118;
createNode polySoftEdge -n "polySoftEdge21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22208600124591804 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak58";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.017938185 0.056603566 0.077409759
		 0.22979501 0.058904871 -0.065324321 0.9450531 -0.059362501 0.066446066 0.94153154
		 -0.054744758 -0.066446066 -0.0058283508 -0.052282341 -0.077409759 0.83646423 0.054744761
		 0.057512809 -0.0086637735 -0.058904871 0.060021792 0.83355653 0.059362501 -0.051403653;
createNode polyExtrudeEdge -n "polyExtrudeEdge10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[111:113]" "e[120:122]" "e[163:165]" "e[170:172]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.034993649 5.2992406 0.061978102 ;
	setAttr ".rs" 59117;
	setAttr ".lt" -type "double3" -4.4408920985006262e-016 -1.2073675392798577e-015 
		1.1094668472202358 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.4350535869598389 5.2992405891418457 -1.8243739604949951 ;
	setAttr ".cbx" -type "double3" 2.5050408840179443 5.2992405891418457 1.9483301639556885 ;
createNode polyTweak -n "polyTweak59";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[58]" -type "float3" 0 0.19350898 0 ;
	setAttr ".tk[317]" -type "float3" 0 0.15975422 0 ;
	setAttr ".tk[318]" -type "float3" 0 -0.1509286 0 ;
	setAttr ".tk[319]" -type "float3" 0 -0.18593732 0 ;
	setAttr ".tk[324]" -type "float3" 0 -0.18593732 0 ;
	setAttr ".tk[325]" -type "float3" 0 -0.1509286 0 ;
	setAttr ".tk[326]" -type "float3" 0 0.17311525 0 ;
	setAttr ".tk[327]" -type "float3" 0 0.17036772 0 ;
	setAttr ".tk[328]" -type "float3" 0 0.17036772 0 ;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:357]";
	setAttr ".gi" 32;
createNode polySoftEdge -n "polySoftEdge22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak60";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[329:340]" -type "float3"  0.31649458 -0.85734349 -0.21289808
		 0.16108435 -0.85556698 -0.31599423 -0.15930712 -0.85554105 -0.31599712 -0.31429908
		 -0.85740787 -0.21393925 0.27486736 -0.85545158 0.22817925 0.13532449 -0.85975653
		 0.31599712 -0.13362379 -0.859869 0.31598333 -0.27246323 -0.85600883 0.22924167 -0.34037447
		 -0.86063439 0.1225512 -0.38127428 -0.86274862 -0.038288102 0.34075278 -0.85963595
		 0.12144516 0.38127428 -0.86210424 -0.037260842;
createNode deleteComponent -n "deleteComponent48";
	setAttr ".dc" -type "componentList" 1 "f[346:357]";
createNode deleteComponent -n "deleteComponent49";
	setAttr ".dc" -type "componentList" 1 "f[334:345]";
createNode polyExtrudeEdge -n "polyExtrudeEdge11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[18]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.3286906 8.7849588 0.85719723 ;
	setAttr ".rs" 59192;
	setAttr ".lt" -type "double3" -3.3306690738754696e-016 0.83146898155195015 1.8318679906315083e-015 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.601177453994751 8.5003993791899468 0.58892941474914551 ;
	setAttr ".cbx" -type "double3" -1.0562038421630859 9.0695178789458062 1.1254650354385376 ;
createNode polyExtrudeEdge -n "polyExtrudeEdge12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.75690246 8.4380512 1.1701344 ;
	setAttr ".rs" 38606;
	setAttr ".lt" -type "double3" -2.9837243786801082e-016 -0.7322905304146694 1.1102230246251565e-015 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0562038421630859 8.375702647622564 1.1254650354385376 ;
	setAttr ".cbx" -type "double3" -0.45760101079940796 8.5003993791899468 1.2148036956787109 ;
createNode polyTweak -n "polyTweak61";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[16:17]" -type "float3"  -0.14434682 0.15074205 -0.14211187
		 0.14434683 -0.15074205 0.14211187;
createNode polyExtrudeEdge -n "polyExtrudeEdge13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.059462309 8.3762751 1.2151793 ;
	setAttr ".rs" 40275;
	setAttr ".lt" -type "double3" -1.3173056395698879e-017 -1.142896116370363 -6.106226635438361e-016 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.45760101079940796 8.375702647622564 1.2148036956787109 ;
	setAttr ".cbx" -type "double3" 0.57652562856674194 8.3768480104765679 1.2155548334121704 ;
createNode polyTweak -n "polyTweak62";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[18:19]" -type "float3"  0.10826463 -0.022552924 0.016158001
		 -0.10826463 0.022552924 -0.016158001;
createNode polyExtrudeEdge -n "polyExtrudeEdge14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[4]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.86445367 8.437645 1.1726487 ;
	setAttr ".rs" 55082;
	setAttr ".lt" -type "double3" -6.5225602696727947e-016 -0.74794539315640141 -1.8873791418627661e-015 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.57652562856674194 8.3768480104765679 1.1297425031661987 ;
	setAttr ".cbx" -type "double3" 1.1523816585540771 8.4984424394926812 1.2155548334121704 ;
createNode polyTweak -n "polyTweak63";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[20:21]" -type "float3"  0.22547206 0.00024975653 0.00016375085
		 -0.22547206 -0.00024975653 -0.00016375085;
createNode polyExtrudeEdge -n "polyExtrudeEdge15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.4608271 8.784564 0.8618874 ;
	setAttr ".rs" 49236;
	setAttr ".lt" -type "double3" -1.8873791418627661e-015 -0.80425495345696174 -2.9143354396410359e-015 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 1.1523816585540771 8.4984424394926812 0.59403228759765625 ;
	setAttr ".cbx" -type "double3" 1.7692725658416748 9.0706861299834038 1.1297425031661987 ;
createNode polyTweak -n "polyTweak64";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[22:23]" -type "float3"  0.10849805 0.022909842 -0.016168047
		 -0.10849801 -0.022909842 0.016168047;
createNode polyExtrudeEdge -n "polyExtrudeEdge16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[390]" "e[392]" "e[394:395]" "e[398]" "e[400]" "e[402:403]" "e[468]" "e[476]" "e[481]" "e[486]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.055006683 2.8493929 -0.030319422 ;
	setAttr ".rs" 43539;
	setAttr ".lt" -type "double3" 4.3368086899420177e-017 8.4301123482073692e-016 0.49826287387328588 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.7945336103439331 2.8381328582763672 -0.8661237359046936 ;
	setAttr ".cbx" -type "double3" 1.9045469760894775 2.8606529235839844 0.80548489093780518 ;
createNode polyTweak -n "polyTweak65";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[58]" -type "float3" 0 -0.18401887 0 ;
	setAttr ".tk[317]" -type "float3" 0 -5.9604645e-008 0 ;
	setAttr ".tk[318]" -type "float3" 7.4505806e-009 -8.9406967e-008 0 ;
	setAttr ".tk[319]" -type "float3" 9.3132257e-010 2.9802322e-008 0 ;
	setAttr ".tk[321]" -type "float3" -7.4505806e-009 -2.9802322e-008 0 ;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:345]";
	setAttr ".gi" 36;
createNode polyExtrudeEdge -n "polyExtrudeEdge17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[374]" "e[376]" "e[378:379]" "e[382]" "e[384]" "e[386:387]" "e[469]" "e[475]" "e[482]" "e[485]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.055006862 2.2534246 -0.023163348 ;
	setAttr ".rs" 50294;
	setAttr ".lt" -type "double3" 8.8817841970012523e-016 -9.1593399531575415e-016 0.69191081985801262 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.4856551885604858 2.2442226409912109 -0.67934596538543701 ;
	setAttr ".cbx" -type "double3" 1.5956689119338989 2.2626266479492187 0.63301926851272583 ;
createNode polyTweak -n "polyTweak66";
	setAttr ".uopa" yes;
	setAttr -s 12 ".tk[317:328]" -type "float3"  0.039078623 -0.38014859 -0.11931932
		 0.031556755 -0.37991452 0.1098616 0.14419691 -0.37619591 0.13232641 0.21822302 -0.37394983
		 0.064658351 0.23827286 -0.37568665 -0.066227511 0.16092511 -0.37807328 -0.1290406
		 -0.038381919 -0.37993401 -0.11948645 -0.14991967 -0.37877885 -0.13375768 -0.23827288
		 -0.37604088 -0.066410787 -0.21846008 -0.37408626 0.06470044 -0.14309561 -0.37615085
		 0.13375768 -0.031576216 -0.37982029 0.11198407;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:357]";
	setAttr ".gi" 37;
createNode polyExtrudeEdge -n "polyExtrudeEdge18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[209]" "e[211]" "e[213]" "e[221]" "e[223:224]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.026334047 4.7652655 0.026220143 ;
	setAttr ".rs" 55364;
	setAttr ".lt" -type "double3" -6.6613381477509392e-016 -6.106226635438361e-016 1.5711117808374802 ;
	setAttr ".tp" 2.5699;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.0410549640655518 4.7652654647827148 -1.8958899974822998 ;
	setAttr ".cbx" -type "double3" 2.0937230587005615 4.7652654647827148 1.948330283164978 ;
createNode polyTweak -n "polyTweak67";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk[317:340]" -type "float3"  0 -1.4901161e-008 0 0 -1.4901161e-008
		 0 0 -1.4901161e-008 0 0 -1.4901161e-008 0 0 -1.4901161e-008 0 0 -1.4901161e-008 0
		 0 -1.4901161e-008 0 0 -1.4901161e-008 0 0 -1.4901161e-008 0 0 -1.4901161e-008 0 0
		 -1.4901161e-008 0 0 -1.4901161e-008 0 0.46798539 -0.32629406 -0.13993338 0.30197266
		 -0.34085476 -0.28791705 0.055557895 -0.36975229 -0.23036526 0.042260841 -0.36785921
		 0.22881408 0.28893653 -0.33563906 0.29048893 0.43985838 -0.32290286 0.16026376 -0.055024896
		 -0.36836976 -0.23040983 -0.28311679 -0.34156072 -0.29347607 -0.46798539 -0.32781631
		 -0.14098059 -0.43992722 -0.32333809 0.16178747 -0.28079632 -0.33483839 0.29347607
		 -0.042101063 -0.36624953 0.22849412;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode polySoftEdge -n "polySoftEdge23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak68";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[341:348]" -type "float3"  1.51229107 -1.27926457 1.20867395
		 0.79757011 -1.30088603 1.51924527 -0.7989645 -1.30605567 1.5199399 -1.51431739 -1.28960335
		 1.21006274 -1.69882691 -1.16437793 -1.18604028 -0.9056316 -1.19694686 -1.5199399
		 0.90607542 -1.19550335 -1.51950276 1.69882691 -1.16148865 -1.18519306;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[704:705]" "e[707]" "e[709]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47484162449836731;
	setAttr ".re" 707;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[697:698]" "e[700]" "e[702]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.46931096911430359;
	setAttr ".re" 700;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyMapSewMove -n "polyMapSewMove5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:23]";
createNode polyTweak -n "polyTweak69";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[18:25]" -type "float3"  0.0018516568 0 -0.21216393
		 0.0018516568 0 -0.21216393 0 0 -0.13604683 0 0 -0.13604683 0.0018516568 0 -0.21216393
		 0.0018516568 0 -0.21216393 0.12197937 0.1131511 -0.10592732 -0.12197939 -0.1131511
		 0.10592732;
createNode polyTweakUV -n "polyTweakUV6";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" -0.00062941946 0.0019920319
		 -0.67293978 0.0019920319 -0.67293978 -0.67031837 -0.00062941946 -0.67031837 0.33548689
		 0.0019920319 -0.33682355 0.0019920319 -0.33682355 -0.67031837 0.33548689 -0.67031837
		 0.0013237055 0.33615524 -0.67098671 0.33615524 -0.67098671 -0.33615518 0.0013237055
		 -0.33615518 0.33548689 0.33615524 -0.33682355 0.33615524 -0.33682355 -0.33615518
		 0.33548689 -0.33615518 0.0013237055 0.67031837 -0.67098671 0.67031837 -0.67098671
		 -0.0019920487 0.0013237055 -0.0019920487;
createNode polyCopyUV -n "polyCopyUV1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:7]";
	setAttr ".uvi" -type "string" "map1";
createNode polyTweakUV -n "polyTweakUV7";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.0019531155 0.32768714 -0.32573652
		 1.6870771e-010 0.0019505851 -0.32768959 0.32964024 -2.4556671e-006 -2.2317388e-006
		 1.5069755e-008 -4.7616136e-006 1.5069755e-008 -4.7616136e-006 -2.4854692e-006 -2.2317388e-006
		 -2.4854692e-006 -9.5169996e-009 -1.5069122e-007 -2.5101722e-006 -1.5069122e-007 -2.5101722e-006
		 -2.6805665e-006 -9.5169996e-009 -2.6805665e-006 -2.2317388e-006 -1.5069122e-007 -4.7616136e-006
		 -1.5069122e-007 -4.7616136e-006 -2.6805665e-006 -2.2317388e-006 -2.6805665e-006 -9.5169996e-009
		 2.5152131e-006 -2.5101722e-006 2.5152131e-006 -2.5101722e-006 1.5139904e-008 -9.5169996e-009
		 1.5139904e-008;
createNode polyMapCut -n "polyMapCut5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[0]" "e[4:5]" "e[16]" "e[18]";
createNode polyTweakUV -n "polyTweakUV8";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk[12:19]" -type "float2" -0.0035815081 0 -0.0035815081
		 0 -0.0035815081 0 -0.0035815081 0 -0.0019308407 0.00029420783 -0.0019308367 0.00029420783
		 -0.0019308367 0.00029420783 -0.0019308407 0.00029420783;
createNode polyMapDel -n "polyMapDel4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[8:12]";
createNode polyPlanarProj -n "polyPlanarProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:12]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.070642709732055664 8.3334701061248779 0.20866537094116211 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 4.3758149147033691 2.7387747764587402 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyTweakUV -n "polyTweakUV9";
	setAttr ".uopa" yes;
	setAttr -s 8 ".uvtk";
	setAttr ".uvtk[6]" -type "float2" 0.0027567758 -0.22881374 ;
	setAttr ".uvtk[7]" -type "float2" 0.049887601 -0.22889617 ;
	setAttr ".uvtk[8]" -type "float2" -0.036967255 -0.22796479 ;
	setAttr ".uvtk[9]" -type "float2" 0.0070765414 -0.13246934 ;
	setAttr ".uvtk[10]" -type "float2" -0.0010756963 -0.13194615 ;
	setAttr ".uvtk[11]" -type "float2" 0.040816426 -0.11632684 ;
	setAttr ".uvtk[14]" -type "float2" 0.024349168 -0.24404301 ;
	setAttr ".uvtk[15]" -type "float2" -0.065607272 -0.15581731 ;
createNode polyMapSewMove -n "polyMapSewMove6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[5]";
createNode polyTweakUV -n "polyTweakUV10";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk[0:25]" -type "float2" -0.34755474 0.39248741 -0.5839445
		 0.33945611 -0.54864681 0.18768232 -0.31458205 0.23982121 -0.70851701 0.27844331 -0.80533469
		 0.051039834 -0.74418145 -0.18862131 -0.47358683 -0.068374462 -0.2732726 -0.02735576
		 -0.41380858 -0.39142656 -0.19155715 -0.34516349 -0.61844879 -0.37815073 -0.20365934
		 0.39072326 -0.034669448 0.22291121 0.021101918 -0.0078779375 0.0086030085 -0.20725967
		 0.058057383 0.36129925 -0.033049472 0.43646622 -0.2114694 0.44862679 -0.30715185
		 0.44642061 -0.42914039 0.51330227 -0.56244922 0.48339611 -0.67719102 0.3668232 -0.75067675
		 0.32325172 -0.8888551 0.26700205 -0.94065881 0.13004965;
createNode polyPlanarProj -n "polyPlanarProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".ix" -type "matrix" 0.19017935386421858 -0.0011583162448882208 0.41457774775161244 0
		 0.27600108889152775 0.00035374144398818273 -0.12660906016161425 0 7.9986272459808409e-016 0.55419190899345228 0.0015483935026757852 0
		 -2.475750352644086 10.236935439535646 0.41321996929957816 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -2.3825119733810425 10.237051486968994 0.37044899165630341 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 1.3945159018039703 1.7593088150024414 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[0:5]" "e[12:17]" "e[28]" "e[31:32]" "e[35:36]" "e[39]" "e[44]" "e[47:48]" "e[51:52]" "e[55]";
createNode polyTweakUV -n "polyTweakUV11";
	setAttr ".uopa" yes;
	setAttr -s 56 ".uvtk[0:55]" -type "float2" -0.0071630003 0 -1.035055757
		 0 1.078033924 0 1.078033805 0 -1.035055757 0 1.078033924 0 -1.035055757 0 -0.0071630152
		 0 1.078033924 0 -0.0071630003 0 1.078033924 0 -0.0071630152 0 1.078033924 0 -0.0071630003
		 0 1.078033924 0 -0.0071630152 0 -0.0071630003 0 -0.0071630003 0 -0.0071630301 0 -0.0071630152
		 0 -1.035055757 0 -1.035055757 0 -1.035055757 0 -0.0071630152 0 -1.035055757 0 -0.0071630003
		 0 -1.035055757 0 -0.0071630161 0 -1.035055757 0 -0.0071630003 0 -1.035055757 0 -0.0071630161
		 0 -1.035055757 0 -0.0071630152 0 -1.035055757 0 -1.035055757 0 -1.035055757 0 -1.035055757
		 0 -1.035055757 0 -0.0071630003 0 1.078033924 0 1.078033924 0 1.078033805 0 1.078033805
		 0 1.078033924 0 1.078033805 0 1.078033924 0 -0.0071630003 0 -0.0071630301 0 -0.0071630003
		 0 1.078033924 0 1.078033924 0 -0.0071630301 0 -0.0071630003 0 -0.0071630301 0 -0.0071630003
		 0;
createNode polyMapCut -n "polyMapCut8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[42]";
createNode polyTweakUV -n "polyTweakUV12";
	setAttr ".uopa" yes;
	setAttr -s 58 ".uvtk[0:57]" -type "float2" -0.84635013 -0.41020045 1.046362758
		 -0.0019119261 -1.35090685 -0.45960063 -1.47670078 -0.41013369 1.46109986 -0.0016365129
		 -1.22643006 -0.45932499 1.87240255 0.048382793 -0.071885251 -0.40941095 -1.39525688
		 -0.33341891 -0.98949152 -0.30626577 -1.22623897 -0.33304441 0.010134447 -0.30528167
		 -1.39599288 -0.12459231 -0.99092937 -0.15247074 -1.22697508 -0.12421783 0.009243059
		 -0.15148687 -0.62947822 0.0016794128 -0.90865195 -0.038393535 -0.34918848 0.0019550461
		 -0.074192405 -0.037566632 1.040944338 0.45947275 0.62562293 0.41940022 1.45568144
		 0.45974836 -0.062261194 -0.037529208 1.0097250938 0.33317211 -0.91788632 -0.15243353
		 1.57286584 0.33354616 0.0091575133 -0.15144967 1.012177706 0.12434531 -0.9165473
		 -0.30622855 1.57531834 0.12471958 0.010106126 -0.30524448 1.99077916 0.15251186 -0.060483512
		 -0.40937355 0.51038146 0.15152778 0.62819135 0.04755589 1.98897314 0.30630669 0.5085752
		 0.30532283 1.8698343 0.42022714 -0.84776974 -0.038356107 -1.068121433 -0.15138224
		 -1.1038506 -0.037462015 -1.51243949 -0.15236612 -1.47728086 -0.038288914 -1.067579508
		 -0.30517706 -1.51189744 -0.30616114 -1.10327041 -0.40930635 -0.90847325 -0.4102383
		 -0.32606205 0.0019920319 -0.5864169 0.0017163986 -1.22805631 0.0020596657 -1.3525331
		 0.0017840326 -0.34837681 -0.45942962 -0.62615556 -0.45970523 -0.32030568 -0.45939285
		 -0.58200437 -0.45966825 -0.35677788 0.0019550461 -0.32018235 0.0019920319;
createNode createUVSet -n "createUVSet1";
	setAttr ".uvs" -type "string" "uvSet";
createNode polyCopyUV -n "polyCopyUV2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".uvs" -type "string" "uvSet";
	setAttr ".uvi" -type "string" "map1";
createNode polyTweakUV -n "polyTweakUV13";
	setAttr ".uopa" yes;
	setAttr -s 58 ".uvtk[0:57]" -type "float2" 0.22249587 0.37132728 0.22937748
		 0.31836396 0.23668 0.31832433 0.2457325 0.37128669 0.23663941 0.3186588 0.22917598
		 0.31861934 0.24357462 0.37221259 0.22023398 0.37217259 -0.39610174 0.48483026 -0.2614187
		 0.43186775 -0.30890268 0.56696582 -0.43378544 0.59614986 -0.12814598 0.43216288 -0.12794159
		 0.5673669 0.0037165186 0.48571607 0.041929357 0.59720343 -0.3096908 0.79054868 -0.4343659
		 0.76081228 -0.12872969 0.79094982 0.041349035 0.76186579 -0.26315996 0.9258554 -0.39672291
		 0.88295072 -0.12988728 0.92615044 0.0030953749 0.88383603 0.24474262 0.76940721 0.23649672
		 0.81231177 0.23019467 0.81235135 0.2222662 0.76944727 0.23365594 0.81260705 0.23329151
		 0.81264651 0.22668673 0.81260705 0.22119871 0.77029252 0.24367388 0.77033275 0.23869096
		 0.81264651 -0.20284775 0.42573372 -0.33630818 0.46863782 -0.32627612 0.33341256 -0.16523531
		 0.30359527 -0.46958089 0.46893296 -0.5072372 0.33381295 -0.6026659 0.42661899 -0.6409502
		 0.3046487 -0.32706425 0.10982945 -0.16581573 0.13893256 -0.50802529 0.1102301 -0.64153063
		 0.13998631 -0.33804929 -0.025349703 -0.20367308 0.027613703 -0.47132206 -0.025054786
		 -0.60349107 0.028499095 0.24921075 0.64836222 0.21564373 0.64832234 0.24941793 0.48369974
		 0.21590349 0.48365992 0.21678165 0.64730877 0.25036871 0.64726883 0.21663047 0.48264617
		 0.25012663 0.48260632;
	setAttr ".uvs" -type "string" "uvSet";
createNode polyCopyUV -n "polyCopyUV3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".uvs" -type "string" "FullSet";
	setAttr ".uvi" -type "string" "map1";
createNode polyCopyUV -n "polyCopyUV4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".uvs" -type "string" "FullSet";
	setAttr ".uvi" -type "string" "FullSet";
createNode polyTweakUV -n "polyTweakUV15";
	setAttr ".uopa" yes;
	setAttr -s 132 ".uvtk[0:131]" -type "float2" 0.13872388 0.13308749 -0.73517919
		 0.13308749 -0.73517919 -0.74081558 0.13872388 -0.74081558 0.0019285434 0.13498752
		 -0.87197453 0.13498752 -0.87197453 -0.73891556 0.0019285434 -0.73891556 0.2717191
		 0.13498752 -0.602184 0.13498752 -0.602184 -0.73891556 0.2717191 -0.73891556 0.66120541
		 0.13498752 -0.21269768 0.13498752 -0.21269768 -0.73891556 0.66120541 -0.73891556
		 0.79419947 0.13498752 -0.079703636 0.13498752 -0.079703636 -0.73891556 0.79419947
		 -0.73891556 0.40281531 0.1444871 -0.47108781 0.1444871 -0.47108781 -0.72941601 0.40281531
		 -0.72941601 0.1330241 0.26608297 -0.740879 0.26608297 -0.740879 -0.60782009 0.1330241
		 -0.60782009 0.53391111 0.266083 -0.33999199 0.266083 -0.33999199 -0.60782009 0.53391111
		 -0.60782009 0.0019285434 0.26798302 -0.87197453 0.26798302 -0.87197453 -0.60592008
		 0.0019285434 -0.60592008 0.26601928 0.26798302 -0.60788381 0.26798302 -0.60788381
		 -0.60592008 0.26601928 -0.60592008 0.66690516 0.26798302 -0.20699793 0.26798302 -0.20699793
		 -0.60592008 0.66690516 -0.60592008 0.79989922 0.26798302 -0.07400389 0.26798302 -0.07400389
		 -0.60592008 0.79989922 -0.60592008 0.39711547 0.2774826 -0.4767876 0.2774826 -0.4767876
		 -0.59642047 0.39711547 -0.59642047 0.1330241 0.39907846 -0.740879 0.39907846 -0.740879
		 -0.47482461 0.1330241 -0.47482461 0.52821136 0.39907846 -0.34569174 0.39907846 -0.34569174
		 -0.47482461 0.52821136 -0.47482461 0.0019285434 0.40097851 -0.87197453 0.40097851
		 -0.87197453 -0.47292459 0.0019285434 -0.47292459 0.26601928 0.40097851 -0.60788381
		 0.40097851 -0.60788381 -0.47292459 0.26601928 -0.47292459 0.66120541 0.40097851 -0.21269768
		 0.40097851 -0.21269768 -0.47292459 0.66120541 -0.47292459 0.79799926 0.40097851 -0.075903803
		 0.40097851 -0.075903803 -0.47292459 0.79799926 -0.47292459 0.39711547 0.41047809
		 -0.4767876 0.41047809 -0.4767876 -0.46342501 0.39711547 -0.46342501 0.1330241 0.53207397
		 -0.740879 0.53207397 -0.740879 -0.34182912 0.1330241 -0.34182912 0.52821136 0.53207397
		 -0.34569174 0.53207397 -0.34569174 -0.34182912 0.52821136 -0.34182912 0.0019285434
		 0.53397399 -0.87197453 0.53397399 -0.87197453 -0.3399291 0.0019285434 -0.3399291
		 0.26601928 0.53397399 -0.60788381 0.53397399 -0.60788381 -0.3399291 0.26601928 -0.3399291
		 0.66120541 0.53397387 -0.21269768 0.53397387 -0.21269768 -0.33992922 0.66120541 -0.33992922
		 0.79419947 0.53397387 -0.079703636 0.53397387 -0.079703636 -0.33992922 0.79419947
		 -0.33992922 0.39711547 0.54347342 -0.4767876 0.54347342 -0.4767876 -0.33042964 0.39711547
		 -0.33042964 0.1330241 0.66506934 -0.740879 0.66506934 -0.740879 -0.20883375 0.1330241
		 -0.20883375 0.52821136 0.66506934 -0.34569174 0.66506934 -0.34569174 -0.20883375
		 0.52821136 -0.20883375 0.66120541 0.66696924 -0.21269768 0.66696924 -0.21269768 -0.20693384
		 0.66120541 -0.20693384 -0.21269768 0.25200367 -0.34569174 0.25010377 0.66120541 0.25200367
		 -0.740879 0.25010377 0.52821136 0.25010377 0.1330241 0.25010377 -0.4767876 0.13334112
		 -0.079703636 0.12384154 0.39711547 0.13334112 -0.21269768 0.12384154 0.79419947 0.12384154
		 0.66120541 0.12384154;
createNode polyTweakUV -n "polyTweakUV16";
	setAttr ".uopa" yes;
	setAttr -s 36 ".uvtk[0:35]" -type "float2" 0.79419947 0.66696936 -0.079703636
		 0.66696936 -0.079703636 -0.20693372 0.79419947 -0.20693372 0.0019285434 0.66696948
		 -0.87197453 0.66696948 -0.87197453 -0.2069336 0.0019285434 -0.2069336 0.26601928
		 0.66696948 -0.60788381 0.66696948 -0.60788381 -0.2069336 0.26601928 -0.2069336 0.39711547
		 0.67646891 -0.4767876 0.67646891 -0.4767876 -0.19743414 0.39711547 -0.19743414 0.1330241
		 0.79806483 -0.740879 0.79806483 -0.740879 -0.075838268 0.1330241 -0.075838268 0.52821136
		 0.79806483 -0.34569174 0.79806483 -0.34569174 -0.075838268 0.52821136 -0.075838268
		 0.66120541 0.79996473 -0.21269768 0.79996473 -0.21269768 -0.073938347 0.66120541
		 -0.073938347 0.79419947 0.79996485 -0.079703636 0.79996485 -0.079703636 -0.073938228
		 0.79419947 -0.073938228 0.0019285434 0.79996496 -0.87197453 0.79996496 -0.87197453
		 -0.073938109 0.0019285434 -0.073938109;
createNode polyTweakUV -n "polyTweakUV17";
	setAttr ".uopa" yes;
	setAttr -s 58 ".uvtk[0:57]" -type "float2" 0.22960122 0.40608883 0.23648268
		 0.35312548 0.24378553 0.35308591 0.25283784 0.40604833 0.24374482 0.35342032 0.23628139
		 0.35338098 0.25068006 0.40697414 0.22733948 0.40693411 -0.2593224 0.46887812 -0.12463945
		 0.41591573 -0.17212343 0.55101377 -0.29700634 0.58019763 0.0086331917 0.4162108 0.0088375192
		 0.55141461 0.14049567 0.46976382 0.17870864 0.5812512 -0.1729117 0.77459669 -0.29758671
		 0.74486041 0.008049462 0.77499765 0.17812818 0.74591368 -0.12638079 0.90990311 -0.25994369
		 0.86699855 0.0068920502 0.91019833 0.13987441 0.86788392 0.25184786 0.80416894 0.24360192
		 0.84707355 0.23730008 0.84711307 0.2293717 0.80420893 0.24076135 0.8473686 0.24039701
		 0.84740806 0.23379202 0.8473686 0.22830412 0.80505401 0.25077936 0.80509424 0.24579637
		 0.84740806 -0.47285372 0.41599262 -0.60631418 0.45889673 -0.59628218 0.32367146 -0.43524134
		 0.29385415 -0.73958689 0.45919192 -0.77724326 0.32407179 -0.8726719 0.41687799 -0.91095626
		 0.29490754 -0.59707022 0.10008826 -0.43582171 0.12919153 -0.77803129 0.10048898 -0.91153651
		 0.13024512 -0.60805535 -0.035090681 -0.47367904 0.017872725 -0.74132806 -0.034795903
		 -0.87349719 0.018757939 0.25631624 0.68312377 0.22274922 0.68308389 0.25652328 0.51846141
		 0.22300875 0.51842147 0.22388718 0.68207043 0.25747412 0.68203056 0.22373594 0.51740772
		 0.25723183 0.51736802;
	setAttr ".uvs" -type "string" "FullSet";
createNode polyTweak -n "polyTweak70";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[118]" -type "float3" 0 0 3.7252903e-008 ;
	setAttr ".tk[119]" -type "float3" 0 0 3.7252903e-008 ;
	setAttr ".tk[341]" -type "float3" 0.32617977 0.2482135 -0.30238217 ;
	setAttr ".tk[342]" -type "float3" 0.17202456 0.2482135 0 ;
	setAttr ".tk[343]" -type "float3" -0.17232528 0.2482135 0 ;
	setAttr ".tk[344]" -type "float3" -0.32661682 0.2482135 -0.30238217 ;
	setAttr ".tk[345]" -type "float3" -0.1275551 0.36361906 0.37859154 ;
	setAttr ".tk[346]" -type "float3" -0.19533169 0.29849374 0 ;
	setAttr ".tk[347]" -type "float3" 0.19542751 0.29849374 -2.9802322e-008 ;
	setAttr ".tk[348]" -type "float3" 0.12755516 0.36361906 0.37859154 ;
	setAttr ".tk[349]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[350]" -type "float3" -1.3411045e-007 0 3.7252903e-008 ;
	setAttr ".tk[351]" -type "float3" 1.3411045e-007 0 3.7252903e-008 ;
	setAttr ".tk[352]" -type "float3" 2.9802322e-008 0 0 ;
	setAttr ".tk[354]" -type "float3" -5.9604645e-008 0 0 ;
createNode deleteComponent -n "deleteComponent50";
	setAttr ".dc" -type "componentList" 1 "map[0:131]";
createNode polyMapDel -n "polyMapDel5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[334:369]";
createNode polyCopyUV -n "polyCopyUV5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:137]";
	setAttr ".uvs" -type "string" "FullSet";
	setAttr ".uvi" -type "string" "";
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[32:35]" "e[48:51]";
	setAttr ".ix" -type "matrix" 0.76340043019675263 0 0 0 0 0.76340043019675263 0 0
		 0 0 0.76340043019675263 0 0.16883499960583315 14.971971284535954 -0.087655743487303539 1;
	setAttr ".wt" 0.5326991081237793;
	setAttr ".dr" no;
	setAttr ".re" 32;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyPlanarProj -n "polyPlanarProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:37]";
	setAttr ".ix" -type "matrix" 0.76340043019675263 0 0 0 0 0.76340043019675263 0 0
		 0 0 0.76340043019675263 0 0.16883499960583315 14.971971284535954 -0.087655743487303539 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.1688348650932312 15.274230480194092 -0.087655782699584961 ;
	setAttr ".ps" -type "double2" 3.9027754068374634 3.6534967422485352 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMapCut -n "polyMapCut9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[62]" "e[64]" "e[66]" "e[68]" "e[70]" "e[72]" "e[74:75]";
createNode polyTweakUV -n "polyTweakUV18";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" -0.24898398 0.90319246 -0.32844186
		 0.89260679 -0.12930958 0.064618766 0.080342546 0.083503857 -0.45477474 0.87702209
		 -0.46264288 0.035937075 -0.53423262 0.86643696 -0.67229503 0.017051961 -0.11034863
		 -0.096732236 0.20402385 0.10512628 -0.44368199 -0.13363788 -0.79597622 -0.0045704343
		 0.049523253 -0.14690013 0.20402385 0.12070377 -0.28381005 -0.10018954 -0.63610435
		 0.1124988 0.3638956 -0.014772774 0.049523253 -0.14256115 0.0305622 0.027120871 0.24021433
		 0.0076019531 -0.28381005 -0.10452857 -0.30277109 0.05671538 -0.63610435 0.098608881
		 -0.51242316 0.076234259 -0.16857004 0.86854154 -0.089112133 0.8577863 -0.29490292
		 0.88436806 -0.37436074 0.89512283 -0.1685701 0.8673768 -0.042237137 0.84673423 -0.29490298
		 0.88553309 -0.42123568 0.90617502 -0.042237137 0.84075469 -0.1685701 0.8668865 -0.32844183
		 0.89383799 -0.20210898 0.91407245 -0.29490298 0.88602328 -0.45477474 0.87579143 -0.42123568
		 0.91215467 -0.58110762 0.85555553 -0.11034863 -0.091846108 0.3638956 -0.028662596
		 -0.44368199 -0.13852412 -0.79597622 -0.02014794 -0.58110744 0.84878445 -0.45477474
		 0.87515646 -0.32844183 0.8944729 -0.20210898 0.92084515;
createNode polyMapCut -n "polyMapCut10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24]";
createNode polyMapSewMove -n "polyMapSewMove7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[24]";
createNode polyMapSewMove -n "polyMapSewMove8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[25]";
createNode polyMapSewMove -n "polyMapSewMove9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[26]";
createNode polyMapSewMove -n "polyMapSewMove10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[27]";
createNode polyMapSewMove -n "polyMapSewMove11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[29]";
createNode polyMapSewMove -n "polyMapSewMove12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[30]";
createNode polyMapSewMove -n "polyMapSewMove13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[30]";
createNode polyMapSewMove -n "polyMapSewMove14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[31]";
createNode polyMapSewMove -n "polyMapSewMove15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[32]";
createNode polyTweakUV -n "polyTweakUV19";
	setAttr ".uopa" yes;
	setAttr -s 72 ".uvtk[0:71]" -type "float2" 0.40080109 0.19694559 -0.59919888
		 0.0027922848 0.4216032 0.089802735 -0.5783968 -0.10435058 0.0016931576 0.0019920322
		 -0.8041535 0.0019920322 -0.8041535 -0.80385464 0.0016931576 -0.80385464 0.79359901
		 -0.0019919341 -0.40055427 -0.0019919341 -0.8041535 -1.6097014 0.0016931576 -1.6097014
		 -0.40055427 0.80385476 0.79359901 0.80385476 -0.8041535 -2.41554809 0.0016931576
		 -2.41554809 0.59495443 -0.0019919341 -0.59919888 -0.0019919341 -0.8041535 -3.22139478
		 0.0016931576 -3.22139478 -0.59919888 0.80385476 0.59495443 0.80385476 -0.8041535
		 -4.02724123 0.0016931576 -4.02724123 0.98083395 -0.001638189 0.17498723 -0.001638189
		 0.17498723 -0.80748487 0.98083395 -0.80748487 0.79359901 -0.20245759 -0.40055427
		 -0.20245759 0.17498723 -1.61333168 0.98083395 -1.61333168 -0.40055427 0.60338908
		 0.79359901 0.60338908 0.17498723 -2.41917825 0.98083395 -2.41917825 0.59495443 -0.20245759
		 -0.59919888 -0.20245759 0.17498723 -3.22502494 0.98083395 -3.22502494 -0.59919888
		 0.60338908 0.59495443 0.60338908 0.17498723 -4.030871391 0.98083395 -4.030871391
		 0.44893962 0.19694559 -0.55106038 0.0027922848 -0.57186252 -0.10435058 0.42813748
		 0.089802735 0.64962727 0.0019920322 -0.54452604 0.0019920322 -0.54452604 -0.80385464
		 0.64962727 -0.80385464 0.84827179 0.0019920322 -0.34588146 0.0019920322 -0.34588146
		 -0.80385464 0.84827179 -0.80385464 0.59495443 0.2024577 -0.59919888 0.2024577 -0.59919888
		 -0.60338902 0.59495443 -0.60338902 0.79359901 0.20245774 -0.40055427 0.20245774 -0.40055427
		 -0.60338897 0.79359901 -0.60338897 0.59495443 0.40292341 -0.59919888 0.40292341 -0.59919888
		 -0.40292329 0.59495443 -0.40292329 0.79359901 0.40292343 -0.40055427 0.40292343 -0.40055427
		 -0.40292326 0.79359901 -0.40292326;
createNode polyMapSewMove -n "polyMapSewMove16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[28]";
createNode polyMapSewMove -n "polyMapSewMove17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[42]";
createNode polyMapSewMove -n "polyMapSewMove18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[42]";
createNode polyMapSewMove -n "polyMapSewMove19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[39]";
createNode polyMapSewMove -n "polyMapSewMove20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48]";
createNode polyMapSewMove -n "polyMapSewMove21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[51]";
createNode polyMapSewMove -n "polyMapSewMove22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[57]";
createNode polyMapSewMove -n "polyMapSewMove23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
createNode polyMapSewMove -n "polyMapSewMove24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
createNode polyMapSewMove -n "polyMapSewMove25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64]";
createNode polyMapSewMove -n "polyMapSewMove26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[63]";
createNode polyMapSewMove -n "polyMapSewMove27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[60]";
createNode polyMapSewMove -n "polyMapSewMove28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[48]";
createNode polyMapSewMove -n "polyMapSewMove29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[36]";
createNode polyMapSewMove -n "polyMapSewMove30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[20]";
createNode polyMapSewMove -n "polyMapSewMove31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[21]";
createNode polyMapSewMove -n "polyMapSewMove32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:67]";
createNode polyTweakUV -n "polyTweakUV20";
	setAttr ".uopa" yes;
	setAttr -s 48 ".uvtk[0:47]" -type "float2" 0.00011762258 0.022251843
		 -0.15651169 0.02225264 0.00011742635 0.0054704258 -0.15651169 0.005470308 -0.21247327
		 -0.5913434 -0.3695066 -0.59134346 -0.15651169 -0.15115817 0.00011758993 -0.15115817
		 -0.36950558 -1.37651098 -0.21247253 -1.37651074 -0.15651169 -0.307787 0.00011758993
		 -0.307787 -0.21247274 -1.21947694 -0.36950582 -1.21947718 -0.15651169 -0.46441624
		 0.00011758993 -0.46441624 -0.21247333 -0.43431008 -0.3695066 -0.43431014 -0.15651169
		 -0.62104517 0.00011758993 -0.62104517 -0.21247315 -1.062443733 -0.36950618 -1.062443972
		 -0.15651169 -0.77767402 0.00011761511 -0.77767378 -0.3695066 -0.74837691 -0.21247289
		 -0.74837691 -0.1565105 -0.93430328 0.0001179702 -0.93430269 -0.3695066 -0.27727649
		 -0.21247289 -0.27727649 -0.15651052 -1.090931892 0.00011830009 -1.090931296 -0.21247289
		 -0.90541029 -0.3695066 -0.90541029 -0.15650985 -1.2475611 0.0001187788 -1.2475605
		 -0.36950606 0.036790188 -0.21247265 0.036790013 -0.15650973 -1.40418947 0.00011938972
		 -1.40418923 -0.21247289 -0.1202434 -0.36950654 -0.12024328 -0.15650906 -1.56081879
		 0.00012000065 -1.56081855 -0.36950612 0.2106483 -0.21247293 0.21064852 -0.21247241
		 0.19382361 -0.36950612 0.19382372;
createNode polyTweakUV -n "polyTweakUV21";
	setAttr ".uopa" yes;
	setAttr -s 32 ".uvtk[0:31]" -type "float2" 0.41752008 0.0031508082 -0.29565904
		 0.0031508082 -0.29565904 -0.71002829 0.41752008 -0.71002829 0.0019920322 0.0031508082
		 -0.71118706 0.0031508082 -0.71118706 -0.71002829 0.0019920322 -0.71002829 0.58732641
		 -0.12269395 -0.12585272 -0.12269395 -0.71118706 -1.4232074 0.0019920322 -1.4232074
		 -0.12585272 0.59048516 0.58732641 0.59048516 -0.71118706 -2.13638639 0.0019920322
		 -2.13638639 0.71118712 0.0031508082 -0.001992 0.0031508082 -0.001992 -0.71002829
		 0.71118712 -0.71002829 0.41752008 0.29681799 -0.29565904 0.29681799 -0.29565904 -0.41636112
		 0.41752008 -0.41636112 0.71118712 0.29681799 -0.001992 0.29681799 -0.001992 -0.41636112
		 0.71118712 -0.41636112 0.29366148 0.58848739 -0.41951764 0.58848739 -0.41951764 -0.1246917
		 0.29366148 -0.1246917;
createNode polyMapSewMove -n "polyMapSewMove33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:27]";
createNode polyMapSewMove -n "polyMapSewMove34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:102]";
createNode polyTweakUV -n "polyTweakUV22";
	setAttr ".uopa" yes;
	setAttr -s 70 ".uvtk[0:69]" -type "float2" 0.54182261 0.0019920322 -0.41593102
		 0.0019920322 0.54182261 -0.10286568 -0.41593102 -0.10286568 0.54182261 -15.76161957
		 -0.41593102 -15.76161957 -0.41593102 -1.081537962 0.54182261 -1.081537962 0.54182261
		 -14.7829504 -0.41593102 -14.7829504 -0.41593102 -2.060210228 0.54182261 -2.060210228
		 0.54182261 -13.80427837 -0.41593102 -13.80427837 -0.41593102 -3.038882017 0.54182261
		 -3.038882017 0.54182261 -12.8256073 -0.41593102 -12.8256073 -0.41593102 -4.017555237
		 0.54182261 -4.017555237 0.54182261 -11.84693527 -0.41593102 -11.84693527 -0.41593102
		 -4.99622631 0.54182261 -4.99622631 0.54182261 -10.86826038 -0.41593102 -10.86826038
		 -0.41593102 -5.97489929 0.54182261 -5.97489929 0.54182261 -9.88959217 -0.41593102
		 -9.88959217 -0.41593102 -6.95357275 0.54182261 -6.95357275 0.54182261 -8.91091633
		 -0.41593102 -8.91091633 -0.41593102 -7.93224621 0.54182261 -7.93224621 0.54182261
		 -7.93224621 -0.41593102 -7.93224621 -0.41593102 -8.91091633 0.54182261 -8.91091633
		 0.54182261 -6.95357275 -0.41593102 -6.95357275 -0.41593102 -9.88959217 0.54182261
		 -9.88959217 0.54182261 -5.97489929 -0.41593102 -5.97489929 -0.41593102 -10.86826038
		 0.54182261 -10.86826038 0.54182261 -4.99622631 -0.41593102 -4.99622631 -0.41593102
		 -11.84693527 0.54182261 -11.84693527 0.54182261 -4.017555237 -0.41593102 -4.017555237
		 -0.41593102 -12.8256073 0.54182261 -12.8256073 0.54182261 -3.038882017 -0.41593102
		 -3.038882017 -0.41593102 -13.80427837 0.54182261 -13.80427837 0.54182261 -2.060210228
		 -0.41593102 -2.060210228 -0.41593102 -14.7829504 0.54182261 -14.7829504 0.54182261
		 -1.081537962 -0.41593102 -1.081537962 -0.41593102 -15.76161957 0.54182261 -15.76161957
		 -0.41593102 -0.10286568 -0.41593102 0.0019920322;
createNode polyMapSewMove -n "polyMapSewMove35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:27]";
createNode polyTweakUV -n "polyTweakUV23";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.23096013 0.003186676 -0.64001787
		 0.003186676 -0.64001787 -0.95543945 0.23096013 -0.95543945 0.23096013 -8.62444687
		 -0.64001787 -8.62444687 -0.64001787 -1.91406536 0.23096013 -1.91406536 0.23096013
		 -7.66582155 -0.64001787 -7.66582155 -0.64001787 -2.87269115 0.23096013 -2.87269115
		 0.23096013 -6.70719528 -0.64001787 -6.70719528 -0.64001787 -3.83131695 0.23096013
		 -3.83131695 0.23096013 -5.74856949 -0.64001787 -5.74856949 -0.64001787 -4.78994226
		 0.23096013 -4.78994226;
createNode polyMapSewMove -n "polyMapSewMove36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:33]";
createNode polyTweakUV -n "polyTweakUV24";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.50629497 0.0037555494 -0.46434331
		 0.0037555494 0.50629497 -0.099504873 -0.46434331 -0.099504873 0.50629497 -9.73712254
		 -0.46434331 -9.73712254 -0.46434331 -1.063266635 0.50629497 -1.063266635 0.50629497
		 -8.77336216 -0.46434331 -8.77336216 -0.46434331 -2.027028322 0.50629497 -2.027028322
		 0.50629497 -7.80959702 -0.46434331 -7.80959702 -0.46434331 -2.99078941 0.50629497
		 -2.99078941 0.50629497 -6.84583569 -0.46434331 -6.84583569 -0.46434331 -3.95455146
		 0.50629497 -3.95455146 0.50629497 -5.88207436 -0.46434331 -5.88207436 -0.46434331
		 -4.9183135 0.50629497 -4.9183135;
createNode polyMapSewMove -n "polyMapSewMove37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:33]";
createNode polyMapSewMove -n "polyMapSewMove38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:33]";
createNode polyTweakUV -n "polyTweakUV25";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.23096013 0.7406984 -0.75442928
		 0.7406984 0.23096013 0.63512087 -0.75442928 0.63512087 0.23096013 -9.21877289 -0.75442928
		 -9.21877289 -0.75442928 -0.35026854 0.23096013 -0.35026854 0.23096013 -8.23338413
		 -0.75442928 -8.23338413 -0.75442928 -1.33565795 0.23096013 -1.33565795 0.23096013
		 -7.2479949 -0.75442928 -7.2479949 -0.75442928 -2.32104754 0.23096013 -2.32104754
		 0.23096013 -6.26260567 -0.75442928 -6.26260567 -0.75442928 -3.30643725 0.23096013
		 -3.30643725 0.23096013 -5.277215 -0.75442928 -5.277215 -0.75442928 -4.29182625 0.23096013
		 -4.29182625;
createNode polyTweakUV -n "polyTweakUV26";
	setAttr ".uopa" yes;
	setAttr -s 24 ".uvtk[0:23]" -type "float2" 0.25227639 0.60572159 -0.73098785
		 0.60572159 0.25227639 0.50037193 -0.73098785 0.50037193 0.25227639 -9.33227253 -0.73098785
		 -9.33227253 -0.73098785 -0.48289257 0.25227639 -0.48289257 0.25227639 -8.34900761
		 -0.73098785 -8.34900761 -0.73098785 -1.46615684 0.25227639 -1.46615684 0.25227639
		 -7.36574268 -0.73098785 -7.36574268 -0.73098785 -2.44942117 0.25227639 -2.44942117
		 0.25227639 -6.38247824 -0.73098785 -6.38247824 -0.73098785 -3.43268561 0.25227639
		 -3.43268561 0.25227639 -5.39921379 -0.73098785 -5.39921379 -0.73098785 -4.4159503
		 0.25227639 -4.4159503;
createNode polyMapSewMove -n "polyMapSewMove39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:27]";
createNode polyTweakUV -n "polyTweakUV27";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" -0.42823231 -0.66388285 -0.41946641
		 -0.66388285 -0.41946647 -0.749098 -0.42823231 -0.74909747 -0.42823067 -1.43081808
		 -0.41946584 -1.4308126 -0.41946626 -0.83431286 -0.42823264 -0.83431208 -0.42823163
		 -1.34560382 -0.41946629 -1.34559786 -0.41946715 -0.91952735 -0.42823285 -0.91952682
		 -0.42823175 -1.26038849 -0.41946641 -1.26038384 -0.41946793 -1.0047419071 -0.42823237
		 -1.0047416687 -0.42823228 -1.17517221 -0.41946727 -1.17516994 -0.41946757 -1.089956403
		 -0.42823264 -1.08995676;
createNode polyTweakUV -n "polyTweakUV28";
	setAttr ".uopa" yes;
	setAttr -s 20 ".uvtk[0:19]" -type "float2" 0.042452302 0.28624648 -0.10622409
		 0.28624642 -0.10622406 0.041240931 0.042452343 0.041240953 0.042453248 -1.42879093
		 -0.10622337 -1.42879188 -0.10622406 -0.20376448 0.042452343 -0.20376448 0.042453956
		 -1.91880214 -0.10622267 -1.91880262 -0.10622406 -0.4487699 0.042452343 -0.4487699
		 -0.10622268 -1.67379725 0.042453948 -1.67379653 -0.10622406 -0.69377548 0.042452376
		 -0.69377536 0.04245254 -1.1837858 -0.10622381 -1.18378675 -0.1062241 -0.93878102
		 0.042452291 -0.93878067;
createNode polySoftEdge -n "polySoftEdge25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -0.03063318306591345 0 1;
	setAttr ".a" 0;
createNode polyPlanarProj -n "polyPlanarProj7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:369]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.11311626434326172 7.1415876150131226 0.067091226577758789 ;
	setAttr ".ps" -type "double2" 15.053760528564453 14.089360475540161 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyMergeVert -n "polyMergeVert55";
	setAttr ".ics" -type "componentList" 2 "vtx[132]" "vtx[232]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMapCut -n "polyMapCut14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 47 "e[128]" "e[167]" "e[169]" "e[174]" "e[176]" "e[178]" "e[192]" "e[202:203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215:217]" "e[219]" "e[221]" "e[223:224]" "e[228]" "e[234]" "e[252]" "e[257]" "e[272]" "e[283]" "e[299]" "e[305]" "e[311]" "e[323]" "e[338]" "e[352]" "e[357:362]" "e[365:373]" "e[375]" "e[377:381]" "e[383]" "e[385:387]" "e[389]" "e[391:395]" "e[397]" "e[402]" "e[458:459]" "e[463:464]" "e[467:468]" "e[472:475]" "e[481:485]" "e[640:642]" "e[645:647]" "e[657]";
createNode polyMapCut -n "polyMapCut15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[277]" "e[282]" "e[287]" "e[638]" "e[643]";
createNode polyTweakUV -n "polyTweakUV34";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk";
	setAttr ".uvtk[64]" -type "float2" 0.42125863 -0.077678904 ;
	setAttr ".uvtk[65]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[66]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[67]" -type "float2" 0.42125863 -0.077678904 ;
	setAttr ".uvtk[68]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[69]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[70]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[71]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[72]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[73]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[74]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[75]" -type "float2" 0.4212586 -0.077678904 ;
	setAttr ".uvtk[76]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[79]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[80]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[117]" -type "float2" 0.42125872 -0.077678904 ;
	setAttr ".uvtk[120]" -type "float2" 0.4212586 -0.077678904 ;
	setAttr ".uvtk[121]" -type "float2" 0.42125872 -0.077678904 ;
	setAttr ".uvtk[137]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[138]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[139]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[140]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[141]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[143]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[144]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[145]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[146]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[147]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[148]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[162]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[163]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[164]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[165]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[166]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[175]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[177]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[178]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[358]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[359]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[411]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[413]" -type "float2" 0.42125863 -0.077678904 ;
	setAttr ".uvtk[450]" -type "float2" 0.42125869 -0.077678904 ;
	setAttr ".uvtk[451]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[452]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[454]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[456]" -type "float2" 0.42125869 -0.077678904 ;
	setAttr ".uvtk[458]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[460]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[476]" -type "float2" 0.42125863 -0.077678904 ;
	setAttr ".uvtk[479]" -type "float2" 0.42125869 -0.077678904 ;
	setAttr ".uvtk[481]" -type "float2" 0.42125863 -0.077678904 ;
	setAttr ".uvtk[484]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[486]" -type "float2" 0.42125866 -0.077678904 ;
	setAttr ".uvtk[487]" -type "float2" 0.42125866 -0.077678904 ;
createNode polyMapCut -n "polyMapCut16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[31]" "e[34]" "e[77:78]";
createNode polyTweakUV -n "polyTweakUV35";
	setAttr ".uopa" yes;
	setAttr -s 156 ".uvtk";
	setAttr ".uvtk[40]" -type "float2" 0.39138216 0.54673994 ;
	setAttr ".uvtk[42]" -type "float2" 0.39138216 0.54674006 ;
	setAttr ".uvtk[44]" -type "float2" 0.39138216 0.54673994 ;
	setAttr ".uvtk[47]" -type "float2" 0.39138216 0.54673994 ;
	setAttr ".uvtk[56]" -type "float2" -0.23303671 0.91422087 ;
	setAttr ".uvtk[57]" -type "float2" -0.23303671 0.91422087 ;
	setAttr ".uvtk[58]" -type "float2" -0.23303671 0.91422087 ;
	setAttr ".uvtk[59]" -type "float2" -0.23303671 0.91422087 ;
	setAttr ".uvtk[60]" -type "float2" -0.23303673 0.91422093 ;
	setAttr ".uvtk[61]" -type "float2" -0.23303673 0.91422087 ;
	setAttr ".uvtk[62]" -type "float2" -0.23303673 0.91422087 ;
	setAttr ".uvtk[63]" -type "float2" -0.23303673 0.91422087 ;
	setAttr ".uvtk[77]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[81]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[82]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[85]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[88]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[90]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[91]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[92]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[93]" -type "float2" 0.39138216 0.54673994 ;
	setAttr ".uvtk[94]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[95]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[96]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[97]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[98]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[99]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[100]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[101]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[102]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[103]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[104]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[105]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[106]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[107]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[108]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[109]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[110]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[111]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[112]" -type "float2" -0.23303673 0.91422087 ;
	setAttr ".uvtk[113]" -type "float2" -0.23303673 0.91422087 ;
	setAttr ".uvtk[114]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[115]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[116]" -type "float2" -0.23303673 0.91422087 ;
	setAttr ".uvtk[118]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[119]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[122]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[123]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[124]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[125]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[126]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[127]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[128]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[129]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[130]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[131]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[132]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[133]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[134]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[135]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[136]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[142]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[149]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[150]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[151]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[152]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[153]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[154]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[155]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[156]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[157]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[158]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[159]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[160]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[161]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[169]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[170]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[171]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[172]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[173]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[180]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[181]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[183]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[189]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[190]" -type "float2" -0.23303671 0.91422093 ;
	setAttr ".uvtk[192]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[193]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[194]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[195]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[196]" -type "float2" -0.23303673 0.91422093 ;
	setAttr ".uvtk[197]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[198]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[199]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[322]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[323]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[324]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[325]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[326]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[327]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[344]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[345]" -type "float2" 0.40930805 0.54375231 ;
	setAttr ".uvtk[346]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[347]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[348]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[349]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[350]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[351]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[356]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[361]" -type "float2" 0.39138216 0.54673994 ;
	setAttr ".uvtk[364]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[365]" -type "float2" -0.23303673 0.91422093 ;
	setAttr ".uvtk[366]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[368]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[370]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[378]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[380]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[382]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[401]" -type "float2" -0.23303671 0.91422093 ;
	setAttr ".uvtk[404]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[407]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[408]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[410]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[414]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[416]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[417]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[418]" -type "float2" -0.23303673 0.91422093 ;
	setAttr ".uvtk[419]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[421]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[423]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[427]" -type "float2" -0.23303671 0.91422093 ;
	setAttr ".uvtk[435]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[443]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[444]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[446]" -type "float2" -0.23303671 0.91422087 ;
	setAttr ".uvtk[447]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[448]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[449]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[453]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[455]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[457]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[459]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[461]" -type "float2" 0.40930811 0.54375231 ;
	setAttr ".uvtk[462]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[463]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[464]" -type "float2" -0.23303673 0.91422087 ;
	setAttr ".uvtk[465]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[466]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[467]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[469]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[471]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[473]" -type "float2" 0.12846893 1.0367146 ;
	setAttr ".uvtk[475]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[477]" -type "float2" -0.23303671 0.91422087 ;
	setAttr ".uvtk[478]" -type "float2" 0.12846896 1.0367146 ;
	setAttr ".uvtk[480]" -type "float2" 0.39138216 0.54674 ;
	setAttr ".uvtk[483]" -type "float2" 0.39138216 0.54674 ;
createNode polyMapCut -n "polyMapCut17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[397]" "e[399]" "e[401:402]" "e[480]" "e[485]";
createNode polyTweakUV -n "polyTweakUV36";
	setAttr ".uopa" yes;
	setAttr -s 26 ".uvtk";
	setAttr ".uvtk[194]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[198]" -type "float2" -0.0059752837 -0.13145654 ;
	setAttr ".uvtk[322]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[323]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[324]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[325]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[326]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[327]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[364]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[366]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[368]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[370]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[378]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[380]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[416]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[417]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[419]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[421]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[423]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[435]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[492]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[494]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[496]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[497]" -type "float2" -0.1613331 -0.10158009 ;
	setAttr ".uvtk[498]" -type "float2" -0.0059752837 -0.13145666 ;
	setAttr ".uvtk[499]" -type "float2" -0.1613331 -0.10158009 ;
createNode deleteComponent -n "deleteComponent52";
	setAttr ".dc" -type "componentList" 7 "map[322:327]" "map[364]" "map[417]" "map[492]" "map[494]" "map[497]" "map[499]";
createNode polyMapDel -n "polyMapDel8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[338:341]" "f[344:345]";
createNode polyMapCut -n "polyMapCut18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[395:396]";
createNode polyTweakUV -n "polyTweakUV37";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk";
	setAttr ".uvtk[194]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[322]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[323]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[366]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[370]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[378]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[380]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[419]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[423]" -type "float2" -0.074691288 0.059753049 ;
	setAttr ".uvtk[435]" -type "float2" -0.074691288 0.059753049 ;
createNode polyMapSewMove -n "polyMapSewMove40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[397]" "e[485]";
createNode polyMapDel -n "polyMapDel9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[350:353]" "f[356:357]";
createNode polyMapSewMove -n "polyMapSewMove41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[381]" "e[484]";
createNode polyTweakUV -n "polyTweakUV38";
	setAttr ".uopa" yes;
	setAttr -s 28 ".uvtk";
	setAttr ".uvtk[188]" -type "float2" -0.22407375 0.19718492 ;
	setAttr ".uvtk[191]" -type "float2" -0.31967857 -0.044814743 ;
	setAttr ".uvtk[316]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[317]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[318]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[319]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[320]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[321]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[381]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[383]" -type "float2" -0.22407375 0.19718492 ;
	setAttr ".uvtk[384]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[386]" -type "float2" -0.22407375 0.19718491 ;
	setAttr ".uvtk[388]" -type "float2" -0.22407375 0.19718491 ;
	setAttr ".uvtk[395]" -type "float2" -0.31967857 -0.044814751 ;
	setAttr ".uvtk[397]" -type "float2" -0.22407375 0.19718491 ;
	setAttr ".uvtk[398]" -type "float2" -0.31967857 -0.044814751 ;
	setAttr ".uvtk[400]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[402]" -type "float2" -0.22407375 0.19718492 ;
	setAttr ".uvtk[403]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[405]" -type "float2" -0.31967857 -0.044814743 ;
	setAttr ".uvtk[424]" -type "float2" -0.31967857 -0.044814743 ;
	setAttr ".uvtk[425]" -type "float2" -0.22407375 0.19718492 ;
	setAttr ".uvtk[426]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[429]" -type "float2" -0.31967857 -0.044814751 ;
	setAttr ".uvtk[431]" -type "float2" -0.22407375 0.19718491 ;
	setAttr ".uvtk[432]" -type "float2" -0.22407375 0.19718492 ;
	setAttr ".uvtk[433]" -type "float2" -0.27785146 0.056765355 ;
	setAttr ".uvtk[439]" -type "float2" -0.22407375 0.19718491 ;
createNode polyMapDel -n "polyMapDel10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[334:337]" "f[342:343]";
createNode polyTweakUV -n "polyTweakUV39";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[328]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[329]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[330]" -type "float2" -0.19120963 0.092617154 ;
	setAttr ".uvtk[331]" -type "float2" -0.19120963 0.092617154 ;
	setAttr ".uvtk[332]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[333]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[385]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[387]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[394]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[396]" -type "float2" -0.19120963 0.092617154 ;
	setAttr ".uvtk[428]" -type "float2" -0.19120961 0.092617154 ;
	setAttr ".uvtk[438]" -type "float2" -0.19120963 0.092617154 ;
createNode polyMapDel -n "polyMapDel11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[346:349]" "f[354:355]";
createNode polyMapSewMove -n "polyMapSewMove42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[394]" "e[467]";
createNode polyMapSewMove -n "polyMapSewMove43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[373]" "e[468]";
createNode polyTweakUV -n "polyTweakUV40";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[328]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[330]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[332]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[344]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[345]" -type "float2" 0.014938294 -0.62441885 ;
	setAttr ".uvtk[346]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[347]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[348]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[349]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[350]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[351]" -type "float2" 0.014938234 -0.62441885 ;
	setAttr ".uvtk[426]" -type "float2" 0.014938294 -0.62441885 ;
createNode polyMergeUV -n "polyMergeUV1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 24 "map[64:76]" "map[79:80]" "map[117]" "map[120:121]" "map[137:141]" "map[143:148]" "map[162:166]" "map[175]" "map[177:178]" "map[328:334]" "map[336]" "map[339]" "map[344:351]" "map[358:359]" "map[369]" "map[387]" "map[394]" "map[396]" "map[411]" "map[413]" "map[418]" "map[420]" "map[426]" "map[433]";
	setAttr ".d" 0.0099999997764825821;
createNode polyTweakUV -n "polyTweakUV41";
	setAttr ".uopa" yes;
	setAttr -s 12 ".uvtk";
	setAttr ".uvtk[317]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[319]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[337]" -type "float2" 0.39436981 0.54375231 ;
	setAttr ".uvtk[338]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[339]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[340]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[349]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[350]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[351]" -type "float2" 0.39436981 0.54375231 ;
	setAttr ".uvtk[352]" -type "float2" 0.39436981 0.54375231 ;
	setAttr ".uvtk[365]" -type "float2" 0.39436978 0.54375231 ;
	setAttr ".uvtk[418]" -type "float2" 0.39436987 0.54375231 ;
createNode polyMergeUV -n "polyMergeUV2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 36 "map[40]" "map[42]" "map[44]" "map[47]" "map[77]" "map[81:82]" "map[85]" "map[88]" "map[90:103]" "map[106]" "map[108]" "map[115]" "map[118:119]" "map[123]" "map[125:136]" "map[142]" "map[149:161]" "map[169:173]" "map[180:181]" "map[183]" "map[317]" "map[319]" "map[321]" "map[334]" "map[337:340]" "map[349:353]" "map[358]" "map[364:365]" "map[382]" "map[400]" "map[404:405]" "map[407]" "map[411]" "map[418]" "map[424]" "map[434]";
	setAttr ".d" 0.0099999997764825821;
createNode polyMapCut -n "polyMapCut19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[156:157]";
createNode polyTweakUV -n "polyTweakUV42";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[104]" -type "float2" 0.017094016 -0.003921032 ;
	setAttr ".uvtk[105]" -type "float2" 0.024475992 -0.015011549 ;
	setAttr ".uvtk[107]" -type "float2" -0.016729712 -0.0039215088 ;
	setAttr ".uvtk[109]" -type "float2" -0.026369572 -0.015571117 ;
	setAttr ".uvtk[114]" -type "float2" -0.016443372 -0.014747024 ;
	setAttr ".uvtk[122]" -type "float2" 0.016561002 -0.014746547 ;
createNode polyMapCut -n "polyMapCut20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[126]" "e[128]" "e[356]" "e[358]" "e[363]" "e[368]" "e[389]" "e[402]";
createNode polyMapDel -n "polyMapDel12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[79]" "f[174]" "f[180]";
createNode polyMapSewMove -n "polyMapSewMove44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[391]" "e[393]" "e[475]";
createNode polyMapSewMove -n "polyMapSewMove45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[399]" "e[401]" "e[480]";
createNode polyTweakUV -n "polyTweakUV43";
	setAttr ".uopa" yes;
	setAttr -s 115 ".uvtk";
	setAttr ".uvtk[64]" -type "float2" 0.01191169 0 ;
	setAttr ".uvtk[65]" -type "float2" 0.009558022 0 ;
	setAttr ".uvtk[66]" -type "float2" 0.0082777739 0 ;
	setAttr ".uvtk[67]" -type "float2" 0.012273192 0 ;
	setAttr ".uvtk[68]" -type "float2" -0.012412906 0 ;
	setAttr ".uvtk[69]" -type "float2" -0.011240661 0 ;
	setAttr ".uvtk[70]" -type "float2" -0.014609218 0 ;
	setAttr ".uvtk[71]" -type "float2" -0.015179753 0 ;
	setAttr ".uvtk[72]" -type "float2" 0.0022341609 0 ;
	setAttr ".uvtk[73]" -type "float2" -0.0011968017 0 ;
	setAttr ".uvtk[74]" -type "float2" -0.0053803325 0 ;
	setAttr ".uvtk[75]" -type "float2" -0.0020461082 0 ;
	setAttr ".uvtk[76]" -type "float2" -0.0030658841 0 ;
	setAttr ".uvtk[79]" -type "float2" -0.0023795366 0 ;
	setAttr ".uvtk[80]" -type "float2" -0.0011321306 0 ;
	setAttr ".uvtk[88]" -type "float2" 0.0018382072 0.0012667179 ;
	setAttr ".uvtk[90]" -type "float2" -0.0013623238 0.002117753 ;
	setAttr ".uvtk[91]" -type "float2" -0.0041020513 -0.018869281 ;
	setAttr ".uvtk[92]" -type "float2" 0.0020863414 -0.017614722 ;
	setAttr ".uvtk[94]" -type "float2" 0.045059264 -0.0017507672 ;
	setAttr ".uvtk[95]" -type "float2" 0.037368059 -0.0023612976 ;
	setAttr ".uvtk[96]" -type "float2" 0.034809172 -0.0021409988 ;
	setAttr ".uvtk[97]" -type "float2" 0.033667266 -0.00090926886 ;
	setAttr ".uvtk[98]" -type "float2" -0.036143303 -0.0023587346 ;
	setAttr ".uvtk[99]" -type "float2" -0.03243196 -0.0021310449 ;
	setAttr ".uvtk[100]" -type "float2" -0.043788671 -0.0017523766 ;
	setAttr ".uvtk[101]" -type "float2" -0.031470358 -0.00090670586 ;
	setAttr ".uvtk[103]" -type "float2" 0.025818348 -0.00356704 ;
	setAttr ".uvtk[106]" -type "float2" -0.02649188 -0.0035331249 ;
	setAttr ".uvtk[117]" -type "float2" 0.021473527 0 ;
	setAttr ".uvtk[118]" -type "float2" -0.015960932 -6.9797039e-005 ;
	setAttr ".uvtk[119]" -type "float2" -0.027144313 -0.00069910288 ;
	setAttr ".uvtk[120]" -type "float2" 0.02025342 0 ;
	setAttr ".uvtk[121]" -type "float2" 0.014971733 0 ;
	setAttr ".uvtk[126]" -type "float2" 0.016388059 -7.0393085e-005 ;
	setAttr ".uvtk[127]" -type "float2" 0.027401924 -0.00070077181 ;
	setAttr ".uvtk[130]" -type "float2" 0.020850301 -0.0028524995 ;
	setAttr ".uvtk[131]" -type "float2" 0.034756899 -0.0031957626 ;
	setAttr ".uvtk[133]" -type "float2" 0.023183525 -0.0034390688 ;
	setAttr ".uvtk[134]" -type "float2" -0.023199439 -0.0033707547 ;
	setAttr ".uvtk[135]" -type "float2" -0.034137845 -0.0027366704 ;
	setAttr ".uvtk[136]" -type "float2" -0.020426691 -0.0024917431 ;
	setAttr ".uvtk[137]" -type "float2" 0.024595857 0 ;
	setAttr ".uvtk[138]" -type "float2" -0.011104882 0 ;
	setAttr ".uvtk[139]" -type "float2" -0.0030108094 0 ;
	setAttr ".uvtk[140]" -type "float2" 0.0017462373 0 ;
	setAttr ".uvtk[141]" -type "float2" 0.0029907823 0 ;
	setAttr ".uvtk[142]" -type "float2" -0.02814775 -0.0043304227 ;
	setAttr ".uvtk[143]" -type "float2" -0.035673499 0 ;
	setAttr ".uvtk[145]" -type "float2" -0.0051406026 0 ;
	setAttr ".uvtk[146]" -type "float2" 0.0082674026 0 ;
	setAttr ".uvtk[147]" -type "float2" -0.006070137 0 ;
	setAttr ".uvtk[148]" -type "float2" 0.041778445 0 ;
	setAttr ".uvtk[149]" -type "float2" 0.028828792 0.019126058 ;
	setAttr ".uvtk[150]" -type "float2" -0.00090920925 -0.0081702471 ;
	setAttr ".uvtk[151]" -type "float2" 0.0049735904 -0.0016124249 ;
	setAttr ".uvtk[152]" -type "float2" 0.0016507506 -0.00573313 ;
	setAttr ".uvtk[153]" -type "float2" -0.004295826 -0.00032615766 ;
	setAttr ".uvtk[154]" -type "float2" 0.012459576 -0.0079526901 ;
	setAttr ".uvtk[155]" -type "float2" 0.0081715584 -0.0080533028 ;
	setAttr ".uvtk[156]" -type "float2" 0.013746321 0.00046861172 ;
	setAttr ".uvtk[157]" -type "float2" 0.0096822977 0.0011726618 ;
	setAttr ".uvtk[158]" -type "float2" -0.013096988 -0.0075866347 ;
	setAttr ".uvtk[159]" -type "float2" -0.011112154 0.001411228 ;
	setAttr ".uvtk[160]" -type "float2" -0.0078502297 -0.0064505078 ;
	setAttr ".uvtk[161]" -type "float2" -0.0139575 0.0014068225 ;
	setAttr ".uvtk[162]" -type "float2" 0.0014969707 0 ;
	setAttr ".uvtk[163]" -type "float2" 0.0015466213 0 ;
	setAttr ".uvtk[164]" -type "float2" -0.038844645 0 ;
	setAttr ".uvtk[165]" -type "float2" -0.0049800873 0 ;
	setAttr ".uvtk[166]" -type "float2" -0.0046793222 0 ;
	setAttr ".uvtk[169]" -type "float2" 0 0.00016184145 ;
	setAttr ".uvtk[170]" -type "float2" 0.0077264309 -0.0045608282 ;
	setAttr ".uvtk[171]" -type "float2" 0.0027797818 -0.002871871 ;
	setAttr ".uvtk[172]" -type "float2" -0.005536139 -0.0029189968 ;
	setAttr ".uvtk[173]" -type "float2" -0.0091994405 -0.0046150414 ;
	setAttr ".uvtk[175]" -type "float2" -0.00048243999 0 ;
	setAttr ".uvtk[177]" -type "float2" -0.0029076338 0 ;
	setAttr ".uvtk[178]" -type "float2" 0.0067335963 0 ;
	setAttr ".uvtk[180]" -type "float2" 0.00019437075 0.0077406168 ;
	setAttr ".uvtk[183]" -type "float2" -0.0033120513 0.0075803995 ;
	setAttr ".uvtk[319]" -type "float2" 0.0080297515 0.0026765894 ;
	setAttr ".uvtk[320]" -type "float2" -0.011032224 0 ;
	setAttr ".uvtk[326]" -type "float2" -0.012493312 0 ;
	setAttr ".uvtk[327]" -type "float2" 0.0052136779 0 ;
	setAttr ".uvtk[328]" -type "float2" 0.0056350231 0 ;
	setAttr ".uvtk[329]" -type "float2" -0.0019168258 0 ;
	setAttr ".uvtk[331]" -type "float2" -0.0007943511 0 ;
	setAttr ".uvtk[334]" -type "float2" -0.018452704 0 ;
	setAttr ".uvtk[335]" -type "float2" 0.018190861 0.0025772452 ;
	setAttr ".uvtk[337]" -type "float2" -0.019064546 0.0025510192 ;
	setAttr ".uvtk[339]" -type "float2" -0.0085473061 0 ;
	setAttr ".uvtk[340]" -type "float2" 0.00043082237 0 ;
	setAttr ".uvtk[341]" -type "float2" -0.00022608042 0 ;
	setAttr ".uvtk[342]" -type "float2" -0.0092365742 0 ;
	setAttr ".uvtk[343]" -type "float2" -0.00219208 0 ;
	setAttr ".uvtk[344]" -type "float2" -0.0026988387 0 ;
	setAttr ".uvtk[345]" -type "float2" -0.0060176849 0 ;
	setAttr ".uvtk[346]" -type "float2" -0.0065588355 0 ;
	setAttr ".uvtk[353]" -type "float2" -0.0030755997 0 ;
	setAttr ".uvtk[354]" -type "float2" -0.0005864501 0 ;
	setAttr ".uvtk[363]" -type "float2" -0.023786247 0 ;
	setAttr ".uvtk[379]" -type "float2" -0.018845091 -0.0056535117 ;
	setAttr ".uvtk[381]" -type "float2" 0.033763051 0 ;
	setAttr ".uvtk[388]" -type "float2" -0.044048786 0 ;
	setAttr ".uvtk[390]" -type "float2" -0.028005958 0 ;
	setAttr ".uvtk[397]" -type "float2" 0.019884231 0.0044187303 ;
	setAttr ".uvtk[398]" -type "float2" 0.018647444 0.0042767879 ;
	setAttr ".uvtk[404]" -type "float2" 0 0.00014418573 ;
	setAttr ".uvtk[405]" -type "float2" 0.036872983 0 ;
	setAttr ".uvtk[407]" -type "float2" -0.009845674 0 ;
	setAttr ".uvtk[408]" -type "float2" -0.02927449 -0.014637277 ;
	setAttr ".uvtk[412]" -type "float2" -0.0018323064 0 ;
	setAttr ".uvtk[414]" -type "float2" -0.025186419 0 ;
	setAttr ".uvtk[420]" -type "float2" 0.031767283 0.0037063146 ;
createNode deleteComponent -n "deleteComponent53";
	setAttr ".dc" -type "componentList" 10 "map[148:158]" "map[160]" "map[167:171]" "map[173]" "map[180]" "map[183]" "map[381]" "map[401]" "map[403:405]" "map[420]";
createNode polyTweakUV -n "polyTweakUV44";
	setAttr ".uopa" yes;
	setAttr -s 6 ".uvtk";
	setAttr ".uvtk[125]" -type "float2" -0.013516676 -0.0027033202 ;
	setAttr ".uvtk[128]" -type "float2" -0.0091718584 0 ;
	setAttr ".uvtk[132]" -type "float2" -0.0048691113 0.011761918 ;
	setAttr ".uvtk[142]" -type "float2" -0.010340278 0.0041361665 ;
	setAttr ".uvtk[379]" -type "float2" -0.0067593995 0.0045061968 ;
	setAttr ".uvtk[408]" -type "float2" 0 0.01373438 ;
createNode polyMapCut -n "polyMapCut21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[12:14]" "e[33]" "e[35]" "e[91]" "e[93]" "e[95]" "e[103]" "e[105]" "e[107]";
createNode polyTweakUV -n "polyTweakUV45";
	setAttr ".uopa" yes;
	setAttr -s 68 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.52130258 0.22706142 ;
	setAttr ".uvtk[1]" -type "float2" -0.53122699 0.22706142 ;
	setAttr ".uvtk[2]" -type "float2" -0.52613401 0.22706142 ;
	setAttr ".uvtk[3]" -type "float2" -0.54428297 0.22706142 ;
	setAttr ".uvtk[4]" -type "float2" -0.54942048 0.22706142 ;
	setAttr ".uvtk[5]" -type "float2" -0.55426514 0.22706142 ;
	setAttr ".uvtk[6]" -type "float2" -0.56093812 0.22706142 ;
	setAttr ".uvtk[7]" -type "float2" -0.51463199 0.22706142 ;
	setAttr ".uvtk[8]" -type "float2" -0.52642775 0.22706136 ;
	setAttr ".uvtk[9]" -type "float2" -0.51802462 0.22706136 ;
	setAttr ".uvtk[10]" -type "float2" -0.54913402 0.22706136 ;
	setAttr ".uvtk[11]" -type "float2" -0.55754197 0.22706136 ;
	setAttr ".uvtk[12]" -type "float2" -0.53015959 0.22706136 ;
	setAttr ".uvtk[13]" -type "float2" -0.52004039 0.22706136 ;
	setAttr ".uvtk[14]" -type "float2" -0.54540187 0.22706136 ;
	setAttr ".uvtk[15]" -type "float2" -0.55552393 0.22706136 ;
	setAttr ".uvtk[16]" -type "float2" 0.072313517 0.0089629125 ;
	setAttr ".uvtk[17]" -type "float2" 0.22875974 0.0089629721 ;
	setAttr ".uvtk[18]" -type "float2" -0.078290135 0.0089629125 ;
	setAttr ".uvtk[19]" -type "float2" -0.53550482 0.22706136 ;
	setAttr ".uvtk[20]" -type "float2" 0.060827058 -0.056595042 ;
	setAttr ".uvtk[21]" -type "float2" 0.18628451 -0.052645937 ;
	setAttr ".uvtk[22]" -type "float2" -0.066805542 -0.056577399 ;
	setAttr ".uvtk[23]" -type "float2" -0.19226274 -0.052630439 ;
	setAttr ".uvtk[24]" -type "float2" 0.044858258 -0.060711518 ;
	setAttr ".uvtk[25]" -type "float2" 0.14939556 -0.050330475 ;
	setAttr ".uvtk[26]" -type "float2" -0.050839175 -0.060731307 ;
	setAttr ".uvtk[27]" -type "float2" -0.15538216 -0.050259903 ;
	setAttr ".uvtk[28]" -type "float2" 0.058156054 -0.024522383 ;
	setAttr ".uvtk[29]" -type "float2" 0.1811333 -0.012501496 ;
	setAttr ".uvtk[30]" -type "float2" -0.064162076 -0.024418611 ;
	setAttr ".uvtk[31]" -type "float2" -0.18712938 -0.012443858 ;
	setAttr ".uvtk[32]" -type "float2" 0.061295193 0.044380352 ;
	setAttr ".uvtk[33]" -type "float2" 0.17642763 0.019689426 ;
	setAttr ".uvtk[34]" -type "float2" -0.067337662 0.044467017 ;
	setAttr ".uvtk[35]" -type "float2" -0.182441 0.019860312 ;
	setAttr ".uvtk[36]" -type "float2" 0.045027476 0.061239585 ;
	setAttr ".uvtk[37]" -type "float2" 0.14780506 0.040965065 ;
	setAttr ".uvtk[38]" -type "float2" -0.051122863 0.061560497 ;
	setAttr ".uvtk[39]" -type "float2" -0.15384671 0.041223034 ;
	setAttr ".uvtk[41]" -type "float2" 0.18913963 0.021671753 ;
	setAttr ".uvtk[43]" -type "float2" -0.19516844 0.022072714 ;
	setAttr ".uvtk[45]" -type "float2" -0.54634476 0.22706142 ;
	setAttr ".uvtk[46]" -type "float2" -0.2433461 0.0089629721 ;
	setAttr ".uvtk[48]" -type "float2" -0.25010055 0.023719829 ;
	setAttr ".uvtk[49]" -type "float2" -0.31370634 0.0089629721 ;
	setAttr ".uvtk[50]" -type "float2" -0.25642553 -0.015063959 ;
	setAttr ".uvtk[51]" -type "float2" -0.32826066 0.0089629721 ;
	setAttr ".uvtk[52]" -type "float2" 0.24411187 0.023573201 ;
	setAttr ".uvtk[53]" -type "float2" -0.551247 0.22706142 ;
	setAttr ".uvtk[54]" -type "float2" 0.25044414 -0.015161294 ;
	setAttr ".uvtk[55]" -type "float2" -0.54713285 0.22706136 ;
	setAttr ".uvtk[324]" -type "float2" 0.067962795 0.0089629721 ;
	setAttr ".uvtk[325]" -type "float2" 0.042827766 0.0089629721 ;
	setAttr ".uvtk[359]" -type "float2" -0.53334004 0.22706142 ;
	setAttr ".uvtk[411]" -type "float2" -0.0491 0.0089629721 ;
	setAttr ".uvtk[422]" -type "float2" 0.32229498 0.0089629721 ;
	setAttr ".uvtk[423]" -type "float2" -0.54005873 0.22706136 ;
	setAttr ".uvtk[424]" -type "float2" 0.30776837 0.0089629721 ;
	setAttr ".uvtk[425]" -type "float2" 0.23745778 0.0089629721 ;
	setAttr ".uvtk[426]" -type "float2" -0.5284363 0.22706136 ;
	setAttr ".uvtk[427]" -type "float2" -0.23473367 0.0089629721 ;
	setAttr ".uvtk[428]" -type "float2" -0.52433074 0.22706142 ;
	setAttr ".uvtk[429]" -type "float2" -0.52925801 0.22706142 ;
	setAttr ".uvtk[430]" -type "float2" -0.073787838 0.0089629721 ;
	setAttr ".uvtk[431]" -type "float2" -0.54208577 0.22706142 ;
	setAttr ".uvtk[432]" -type "float2" -0.53816843 0.22706136 ;
	setAttr ".uvtk[433]" -type "float2" -0.53739274 0.22706136 ;
createNode polyMapDel -n "polyMapDel13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[62]" "f[65]" "f[67]" "f[140]" "f[145]" "f[150:151]" "f[197:200]" "f[205:208]" "f[213:216]" "f[227]" "f[229]" "f[232]" "f[276:301]";
createNode polyMapDel -n "polyMapDel14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[143]" "f[147]" "f[156]" "f[201:204]" "f[209:212]" "f[217:220]" "f[228]" "f[230:231]" "f[233]" "f[302:327]" "f[331:333]";
createNode polyTweakUV -n "polyTweakUV46";
	setAttr ".uopa" yes;
	setAttr -s 38 ".uvtk";
	setAttr ".uvtk[87]" -type "float2" -0.17627135 0.17627135 ;
	setAttr ".uvtk[167]" -type "float2" -0.17627135 0.17627135 ;
	setAttr ".uvtk[200]" -type "float2" -0.17627135 0.17627136 ;
	setAttr ".uvtk[202]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[203]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[204]" -type "float2" -0.17627135 0.17627136 ;
	setAttr ".uvtk[205]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[206]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[207]" -type "float2" -0.17627135 0.17627136 ;
	setAttr ".uvtk[209]" -type "float2" -0.17627135 0.17627136 ;
	setAttr ".uvtk[210]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[211]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[216]" -type "float2" -0.1374319 0.24498729 ;
	setAttr ".uvtk[217]" -type "float2" -0.1374319 0.24498729 ;
	setAttr ".uvtk[220]" -type "float2" -0.1374319 0.24498729 ;
	setAttr ".uvtk[221]" -type "float2" -0.1374319 0.24498729 ;
	setAttr ".uvtk[228]" -type "float2" -0.1374319 0.24498731 ;
	setAttr ".uvtk[233]" -type "float2" -0.1374319 0.24498731 ;
	setAttr ".uvtk[235]" -type "float2" -0.17627135 0.17627135 ;
	setAttr ".uvtk[239]" -type "float2" -0.1374319 0.24498729 ;
	setAttr ".uvtk[243]" -type "float2" -0.1374319 0.24498731 ;
	setAttr ".uvtk[244]" -type "float2" -0.1374319 0.24498731 ;
	setAttr ".uvtk[245]" -type "float2" -0.1374319 0.24498731 ;
	setAttr ".uvtk[248]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[249]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[250]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[251]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[252]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[253]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[254]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[255]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[256]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[257]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[258]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[259]" -type "float2" -0.0029876474 0.0029876502 ;
	setAttr ".uvtk[291]" -type "float2" -0.17627135 0.17627135 ;
	setAttr ".uvtk[296]" -type "float2" -0.17627135 0.17627136 ;
	setAttr ".uvtk[299]" -type "float2" -0.17627135 0.17627135 ;
createNode polyMapDel -n "polyMapDel15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[248:261]";
createNode polyMapDel -n "polyMapDel16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[262:275]";
createNode polyTweakUV -n "polyTweakUV47";
	setAttr ".uopa" yes;
	setAttr -s 40 ".uvtk";
	setAttr ".uvtk[16]" -type "float2" -8.559227e-005 0 ;
	setAttr ".uvtk[17]" -type "float2" -0.00016874075 0 ;
	setAttr ".uvtk[18]" -type "float2" 4.285574e-005 0 ;
	setAttr ".uvtk[20]" -type "float2" -0.0013907552 -0.0064445138 ;
	setAttr ".uvtk[21]" -type "float2" 0.0021775365 -0.0045920014 ;
	setAttr ".uvtk[22]" -type "float2" 0.001349777 -0.0064523816 ;
	setAttr ".uvtk[23]" -type "float2" -0.0022163391 -0.0045794249 ;
	setAttr ".uvtk[24]" -type "float2" -0.0048097372 -0.0089203119 ;
	setAttr ".uvtk[25]" -type "float2" 0.0075423121 -0.0056667924 ;
	setAttr ".uvtk[26]" -type "float2" 0.004768312 -0.0088837743 ;
	setAttr ".uvtk[27]" -type "float2" -0.0075739622 -0.0056967139 ;
	setAttr ".uvtk[28]" -type "float2" 0.0033954382 -0.008226335 ;
	setAttr ".uvtk[29]" -type "float2" 0.016047657 -0.0084134936 ;
	setAttr ".uvtk[30]" -type "float2" -0.0034155548 -0.0082910061 ;
	setAttr ".uvtk[31]" -type "float2" -0.016069591 -0.0083969831 ;
	setAttr ".uvtk[32]" -type "float2" 0.0032663345 -0.0084069371 ;
	setAttr ".uvtk[33]" -type "float2" 0.016007304 -0.0098474026 ;
	setAttr ".uvtk[34]" -type "float2" -0.0032698512 -0.0083930492 ;
	setAttr ".uvtk[35]" -type "float2" -0.016012579 -0.0098639131 ;
	setAttr ".uvtk[36]" -type "float2" 0.00030362606 -0.0076965094 ;
	setAttr ".uvtk[37]" -type "float2" 0.012336552 -0.0085806847 ;
	setAttr ".uvtk[38]" -type "float2" -0.00031861663 -0.0077079535 ;
	setAttr ".uvtk[39]" -type "float2" -0.012320906 -0.0085505247 ;
	setAttr ".uvtk[41]" -type "float2" 0.013194382 -0.0063082576 ;
	setAttr ".uvtk[43]" -type "float2" -0.013152391 -0.0063087344 ;
	setAttr ".uvtk[46]" -type "float2" -8.3297491e-005 0 ;
	setAttr ".uvtk[48]" -type "float2" -0.0080651641 -0.0067796111 ;
	setAttr ".uvtk[49]" -type "float2" -8.2403421e-005 0 ;
	setAttr ".uvtk[50]" -type "float2" -0.0066267252 -0.0048069358 ;
	setAttr ".uvtk[51]" -type "float2" 4.6670437e-005 0 ;
	setAttr ".uvtk[52]" -type "float2" 0.0080518723 -0.0067878962 ;
	setAttr ".uvtk[54]" -type "float2" 0.0065963268 -0.004774332 ;
	setAttr ".uvtk[168]" -type "float2" 5.1558018e-006 0 ;
	setAttr ".uvtk[182]" -type "float2" 0.00012651086 0 ;
	setAttr ".uvtk[225]" -type "float2" 2.3841858e-005 0 ;
	setAttr ".uvtk[226]" -type "float2" 3.0815601e-005 0 ;
	setAttr ".uvtk[232]" -type "float2" -8.98242e-005 0 ;
	setAttr ".uvtk[256]" -type "float2" -2.3841858e-005 0 ;
	setAttr ".uvtk[257]" -type "float2" -7.7962875e-005 0 ;
	setAttr ".uvtk[275]" -type "float2" -4.6283007e-005 0 ;
createNode polyMapSewMove -n "polyMapSewMove46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[383]" "e[385]" "e[481]";
createNode polyMapSewMove -n "polyMapSewMove47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[377:378]" "e[474]";
createNode polyTweakUV -n "polyTweakUV48";
	setAttr ".uopa" yes;
	setAttr -s 296 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.86352217 -0.58130294 0.86609352 -0.58322668
		 0.86555773 -0.57920694 0.86839217 -0.58322573 0.86892575 -0.57920694 0.87096065 -0.58130294
		 0.8723473 -0.57870471 0.86213541 -0.57870471 0.8656261 -0.57287759 0.8617475 -0.57330978
		 0.86885703 -0.57287759 0.87273538 -0.57330978 0.8661471 -0.5687331 0.86284488 -0.56964779
		 0.86833602 -0.5687331 0.87163812 -0.56964779 -0.089493744 -0.29013491 -0.085649595
		 -0.29152444 -0.093121871 -0.29013491 0.87332368 -0.56793475 -0.090135872 -0.29374936
		 -0.087664023 -0.29484767 -0.092479758 -0.29374886 -0.094951488 -0.29484627 -0.090623371
		 -0.29626811 -0.088565849 -0.29649839 -0.091992401 -0.29626727 -0.094049715 -0.29649636
		 -0.090252303 -0.29856113 -0.087744266 -0.29837927 -0.092363656 -0.29855916 -0.09487129
		 -0.29837555 -0.090184271 -0.30104128 -0.087764919 -0.30084318 -0.092432685 -0.30103624
		 -0.094850667 -0.30083543 -0.09035819 -0.303729 -0.088233806 -0.30287021 -0.092262
		 -0.30371347 -0.094382159 -0.30285576 -0.64917874 -0.75922966 -0.086963095 -0.30404195
		 -0.72746474 -0.75917143 -0.095650896 -0.30402187 -0.64907682 -0.75930727 0.86084837
		 -0.58133185 -0.097413309 -0.30492154 -0.72762287 -0.75929499 -0.096627034 -0.30107763
		 -0.099419251 -0.30184048 -0.096584149 -0.29761738 -0.099855199 -0.29616994 -0.085987717
		 -0.30108541 0.85907626 -0.57825083 -0.086031094 -0.29762062 0.8589946 -0.57258028
		 0.78459799 -0.27757925 0.74776298 -0.33500832 0.81174743 -0.35750827 0.87409574 -0.29203022
		 0.63549215 -0.45433185 0.66178858 -0.51499486 0.58347082 -0.48600915 0.5994283 -0.58048558
		 -0.32200724 -0.14630383 -0.31908047 -0.14630383 -0.31888178 -0.14434499 -0.32153568
		 -0.14434499 -0.31239855 -0.14630383 -0.31258556 -0.14434499 -0.30946335 -0.14630383
		 -0.30992752 -0.14434499 -0.31794342 -0.14242394 -0.32053381 -0.14239541 -0.31346852
		 -0.14242394 -0.31091103 -0.14239541 -0.31823936 -0.13407248 -0.5895077 -0.7602582
		 0.86529827 -0.56654525 -0.31686512 -0.13437226 -0.31448904 -0.13436905 -0.7450192
		 -0.76034176 -0.63060105 -0.76034772 0.44961351 -0.11743034 0.47090551 -0.10658181
		 -0.58265632 -0.76018769 0.86918491 -0.56654525 -0.28821748 -0.27939895 -0.72338957
		 -0.76034439 0.86606634 -0.58378208 -0.64828521 -0.76035219 -0.72016084 -0.76174122
		 -0.64971924 -0.76174664 -0.78445452 -0.76127452 -0.54950285 -0.77186304 -0.63927054
		 -0.77189368 -0.62938392 -0.77384144 -0.51833749 -0.77377963 -0.73238575 -0.77189356
		 -0.74420583 -0.77384096 -0.82206303 -0.7718631 -0.8548494 -0.77377951 -0.46206698
		 -0.77571148 -0.61935121 -0.77591556 -0.54061031 -0.51914364 -0.48173305 -0.45902291
		 -0.7569353 -0.77591383 -0.59982979 -0.58133602 -0.91355765 -0.77571148 -0.62402123
		 -0.60845429 -0.51980948 -0.50062758 -0.55423957 -0.53678608 0.6362614 -0.38096803
		 0.67327178 -0.34209985 -0.67865127 -0.66545224 -0.99188811 -0.77563649 0.5259797
		 -0.55822569 -0.30606735 -0.14820632 -0.94284624 -0.77373749 -0.90573686 -0.77181023
		 -0.30637878 -0.14630383 -0.30711326 -0.14434499 -0.43510872 -0.40968397 -0.38103151
		 -0.77563649 -0.41242027 -0.38433895 -0.31228119 -0.77577221 -0.42939118 -0.77373755
		 -0.46563184 -0.77181029 -0.33056113 -0.77373397 -0.36850715 -0.77177513 -0.5096271
		 -0.76989174 -0.57472938 -0.76998597 -0.43928099 -0.76915812 -0.64716619 -0.77002674
		 -0.72305328 -0.77002335 -0.79543531 -0.76996297 -0.86053336 -0.76987362 -0.3086341
		 -0.1423184 -0.31917834 -0.14037512 -0.31704178 -0.14043322 -0.31667858 -0.13924295
		 -0.31880885 -0.13916717 -0.465969 -0.76765823 -0.32124934 -0.13896523 -0.31431019
		 -0.14043322 -0.31466773 -0.13924295 -0.31226003 -0.14037512 -0.31264237 -0.13916717
		 -0.31016827 -0.1402183 -0.89677411 -0.76543528 -0.54930699 -0.7680586 -0.55202913
		 -0.76647633 -0.8192904 -0.76793623 -0.81531531 -0.76641178 -0.65194303 -0.76826262
		 -0.59150004 -0.76820958 -0.59544605 -0.76657379 -0.65197885 -0.76661426 -0.71693182
		 -0.76824421 -0.71565604 -0.76660228 -0.77727437 -0.76812911 -0.7719003 -0.7665267
		 -0.31649038 -0.13749219 -0.31883049 -0.13741615 -0.32146165 -0.13745655 -0.31484726
		 -0.13749219 -0.3126066 -0.13741615 -0.27239341 -0.26276147 -0.093896493 -0.30735946
		 -0.82872885 -0.76487857 -0.58500946 -0.76507527 -0.65007657 -0.7650665 -0.71644205
		 -0.76506889 -0.78055257 -0.76507801 0.87363273 -0.58133185 -0.31680518 -0.13649571
		 0.87540609 -0.57825083 -0.31454882 -0.13649571 -0.31221995 -0.13635027 -0.34556448
		 -0.32767797 -0.64552772 -0.76351827 -0.56273007 -0.76378286 -0.096965872 -0.29152444
		 -0.72067338 -0.76352632 -0.31021798 -0.13896523 -0.367412 -0.35055241 -0.47699746
		 -0.76645297 0.56712079 -0.61441487 -0.40234053 -0.38287649 -0.44250602 -0.42514756
		 0.62878966 -0.26201525 0.67993349 -0.21000117 -0.37359521 -0.35261297 -0.3577877
		 -0.33601195 -0.55647165 -0.54474634 -0.51514637 -0.50143433 0.47002977 -0.43210867
		 -0.58770716 -0.5774731 0.51070619 -0.38858584 0.48068547 -0.085495442 -0.39917386
		 -0.38384402 0.62158781 -0.1823169 -0.31298238 -0.15113603 -0.87680995 -0.77834982
		 -0.39994872 -0.38465777 -0.75162709 -0.77818906 -0.50494725 -0.77837038 -0.28821748
		 -0.27939895 0.64928687 -0.15184501 0.86842853 -0.5837698 -0.62831163 -0.77819806
		 -0.32432655 -0.14434499 -0.47265106 -0.44272879 0.47847748 -0.33280644 0.51140738
		 -0.29938352 -0.30924591 -0.14828131 -0.52384031 -0.51490301 -0.53704768 -0.52877325
		 -1.038628221 -0.77359962 -0.73090082 -0.71394253 -0.47216979 -0.46050447 -0.50162846
		 -0.49150273 -0.68050104 -0.66101271 -0.56108308 -0.53560007 0.87548816 -0.57258028
		 -0.085198693 -0.30492154 -0.083194911 -0.30184048 0.86115932 -0.56793475 -0.34201401
		 -0.33564666 0.40089646 -0.17368777 -0.77060086 -0.75563544 -0.31317356 -0.13407619
		 -0.082759932 -0.29616994 -0.34201401 -0.33564666 -0.88839573 -0.76746243 -0.25784048
		 -0.24746305 -0.73221779 -0.72019005 0.71575278 -0.17404734 -0.47297394 -0.4613488
		 -0.47297025 -0.46134534 0.90483987 -0.25974268 -0.5876987 -0.76130128 -0.45263422
		 -0.42170718 -0.37156248 -0.36662707 -0.35658506 -0.35091996 -0.3755039 -0.37076631
		 0.36845574 -0.20880879 0.38936687 -0.1919914 -0.310029 -0.15120146 -0.78516579 -0.76025456;
	setAttr ".uvtk[250:295]" -0.31802896 -0.13282807 -0.3228288 -0.1423184 -0.31707913
		 -0.13291757 -0.31904241 -0.14830631 -0.32221839 -0.14828131 -0.31242466 -0.14830631
		 -0.089964665 -0.3072941 -0.088708125 -0.30737174 -0.60351217 -0.59407151 -0.332358
		 -0.31380853 -0.31847927 -0.15113893 -0.32143345 -0.15120727 -0.31906706 -0.1530648
		 -0.31705877 -0.15315291 -0.31439793 -0.1531468 -0.31239069 -0.15305258 -0.78731042
		 -0.78036404 -0.74171412 -0.78029442 -0.63995153 -0.78031629 -0.59439534 -0.78040779
		 -0.78181672 -0.76020926 -0.31335279 -0.13282442 -0.32536274 -0.14820632 -0.51654863
		 -0.50290698 -0.31427336 -0.13291158 -0.092663646 -0.3072359 0.55363268 -0.34094155
		 -0.46730313 -0.76493204 -0.31928286 -0.13634241 -0.51068288 -0.48266989 -0.31001055
		 -0.13745655 -0.83976537 -0.76487947 -0.32129306 -0.1402183 -0.79945797 -0.76382458
		 -0.53734076 -0.76488674 0.84577727 -0.22237471 -0.95938301 -0.76953387 -1.073150754
		 -0.77541465 -0.44139349 -0.42397925 0.44459823 -0.36681309 -0.79035324 -0.77637929
		 -0.25784054 -0.24746317 0.58521408 -0.2218798 -0.3991735 -0.38384366 -0.32506299
		 -0.14630383 -1.0029966831 -0.77177513;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "f[143]" "f[147]" "f[156]" "f[201:204]" "f[209:212]" "f[217:220]" "f[228]" "f[230:231]" "f[233]" "f[302:327]" "f[331:333]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 6.8997390270233154 6.8997390270233154 6.8997390270233154 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSewMove -n "polyMapSewMove48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[412]" "e[426]" "e[446]" "e[606]" "e[609]" "e[635]";
createNode polyTweakUV -n "polyTweakUV49";
	setAttr ".uopa" yes;
	setAttr -s 31 ".uvtk";
	setAttr ".uvtk[310]" -type "float2" -0.30378494 0.035851792 ;
	setAttr ".uvtk[311]" -type "float2" -0.28925785 0.057911266 ;
	setAttr ".uvtk[312]" -type "float2" -0.28962329 0.041035969 ;
	setAttr ".uvtk[313]" -type "float2" -0.28233284 0.035851792 ;
	setAttr ".uvtk[314]" -type "float2" -0.32693556 0.033222649 ;
	setAttr ".uvtk[315]" -type "float2" -0.30878121 0.036107425 ;
	setAttr ".uvtk[316]" -type "float2" -0.31492221 0.057816241 ;
	setAttr ".uvtk[317]" -type "float2" -0.30905649 0.037053738 ;
	setAttr ".uvtk[318]" -type "float2" -0.31332639 0.055383958 ;
	setAttr ".uvtk[319]" -type "float2" -0.30764508 0.036728743 ;
	setAttr ".uvtk[320]" -type "float2" -0.3039844 0.042435654 ;
	setAttr ".uvtk[321]" -type "float2" -0.30524674 0.038228896 ;
	setAttr ".uvtk[322]" -type "float2" -0.29163131 0.047475711 ;
	setAttr ".uvtk[323]" -type "float2" -0.30649894 0.035264455 ;
	setAttr ".uvtk[324]" -type "float2" -0.29867727 0.031324893 ;
	setAttr ".uvtk[325]" -type "float2" -0.30750719 0.013136396 ;
	setAttr ".uvtk[326]" -type "float2" -0.30962706 0.027287852 ;
	setAttr ".uvtk[350]" -type "float2" -0.32115489 0.035851792 ;
	setAttr ".uvtk[351]" -type "float2" -0.30030555 0.035851792 ;
	setAttr ".uvtk[353]" -type "float2" -0.35812926 0.034079619 ;
	setAttr ".uvtk[354]" -type "float2" -0.32727361 0.038251545 ;
	setAttr ".uvtk[355]" -type "float2" -0.3012833 0.035851792 ;
	setAttr ".uvtk[357]" -type "float2" -0.30339369 0.035851806 ;
	setAttr ".uvtk[359]" -type "float2" -0.31044507 0.03585428 ;
	setAttr ".uvtk[360]" -type "float2" -0.30959994 0.035851806 ;
	setAttr ".uvtk[362]" -type "float2" -0.31350803 0.035851799 ;
	setAttr ".uvtk[363]" -type "float2" -0.31374893 0.035851799 ;
	setAttr ".uvtk[365]" -type "float2" -0.31582415 0.035851803 ;
	setAttr ".uvtk[366]" -type "float2" -0.31080878 0.034409072 ;
	setAttr ".uvtk[367]" -type "float2" -0.31854039 0.035851806 ;
	setAttr ".uvtk[368]" -type "float2" -0.31871867 0.035851806 ;
createNode polyMergeVert -n "polyMergeVert56";
	setAttr ".ics" -type "componentList" 1 "vtx[315]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMapSewMove -n "polyMapSewMove49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[414]" "e[425]" "e[444]";
createNode polyTweakUV -n "polyTweakUV50";
	setAttr ".uopa" yes;
	setAttr -s 41 ".uvtk";
	setAttr ".uvtk[296]" -type "float2" -0.013004811 0.23574716 ;
	setAttr ".uvtk[297]" -type "float2" -0.016276391 0.23574716 ;
	setAttr ".uvtk[298]" -type "float2" -0.027147712 0.23574716 ;
	setAttr ".uvtk[299]" -type "float2" -0.026253166 0.2357471 ;
	setAttr ".uvtk[300]" -type "float2" -0.019171046 0.23574716 ;
	setAttr ".uvtk[301]" -type "float2" -0.032986403 0.23574716 ;
	setAttr ".uvtk[302]" -type "float2" 0.0076421499 0.2357471 ;
	setAttr ".uvtk[303]" -type "float2" -0.001470957 0.23574716 ;
	setAttr ".uvtk[304]" -type "float2" 0.011895463 0.2357471 ;
	setAttr ".uvtk[305]" -type "float2" 0.0070730746 0.23574716 ;
	setAttr ".uvtk[306]" -type "float2" -0.018558951 0.29006791 ;
	setAttr ".uvtk[307]" -type "float2" 0.022986749 0.25155085 ;
	setAttr ".uvtk[308]" -type "float2" -0.043737512 0.26761529 ;
	setAttr ".uvtk[309]" -type "float2" 0.015254835 0.24257566 ;
	setAttr ".uvtk[310]" -type "float2" -0.0076910108 0.2357471 ;
	setAttr ".uvtk[311]" -type "float2" -0.00077195279 0.23574716 ;
	setAttr ".uvtk[312]" -type "float2" -0.016733797 0.23574716 ;
	setAttr ".uvtk[313]" -type "float2" -0.0092936922 0.2357471 ;
	setAttr ".uvtk[314]" -type "float2" 0.014857516 0.23574716 ;
	setAttr ".uvtk[315]" -type "float2" -0.0085160881 0.23574716 ;
	setAttr ".uvtk[316]" -type "float2" -0.011983218 0.23574716 ;
	setAttr ".uvtk[317]" -type "float2" 0.0024403632 0.23574716 ;
	setAttr ".uvtk[318]" -type "float2" 0.0037382804 0.23574716 ;
	setAttr ".uvtk[319]" -type "float2" 0.048667241 0.251335 ;
	setAttr ".uvtk[320]" -type "float2" 0.050308645 0.25751156 ;
	setAttr ".uvtk[321]" -type "float2" 0.055869989 0.23435275 ;
	setAttr ".uvtk[322]" -type "float2" 0.043491337 0.23126982 ;
	setAttr ".uvtk[323]" -type "float2" 0.04985258 0.23574713 ;
	setAttr ".uvtk[324]" -type "float2" 0.05289901 0.23574713 ;
	setAttr ".uvtk[325]" -type "float2" 0.047847383 0.23574711 ;
	setAttr ".uvtk[326]" -type "float2" 0.053934321 0.23574713 ;
	setAttr ".uvtk[353]" -type "float2" 0.029681111 0.23574716 ;
	setAttr ".uvtk[354]" -type "float2" 0.0043069422 0.23574716 ;
	setAttr ".uvtk[359]" -type "float2" 0.043224413 0.24247593 ;
	setAttr ".uvtk[360]" -type "float2" -0.0019601788 0.22590508 ;
	setAttr ".uvtk[362]" -type "float2" 0.04616034 0.23574713 ;
	setAttr ".uvtk[363]" -type "float2" 0.047362871 0.23574713 ;
	setAttr ".uvtk[365]" -type "float2" 0.040916026 0.23574713 ;
	setAttr ".uvtk[366]" -type "float2" 0.039009213 0.23574713 ;
	setAttr ".uvtk[367]" -type "float2" 0.045905754 0.23574713 ;
	setAttr ".uvtk[368]" -type "float2" 0.046009645 0.23574713 ;
createNode polyMapCut -n "polyMapCut22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[416]" "e[627]" "e[630:631]";
createNode polyTweakUV -n "polyTweakUV51";
	setAttr ".uopa" yes;
	setAttr -s 43 ".uvtk";
	setAttr ".uvtk[296]" -type "float2" 1.2615772 0.010305924 ;
	setAttr ".uvtk[297]" -type "float2" 1.2957554 0.0083665047 ;
	setAttr ".uvtk[298]" -type "float2" 1.2542965 0.022013051 ;
	setAttr ".uvtk[299]" -type "float2" 1.2957554 0.0083665047 ;
	setAttr ".uvtk[300]" -type "float2" 1.2625562 0.053250302 ;
	setAttr ".uvtk[301]" -type "float2" 1.2906036 -0.035813797 ;
	setAttr ".uvtk[302]" -type "float2" 1.2957554 0.033194188 ;
	setAttr ".uvtk[303]" -type "float2" 1.2957554 0.0086307619 ;
	setAttr ".uvtk[304]" -type "float2" 1.2886937 0.031887908 ;
	setAttr ".uvtk[305]" -type "float2" 1.2956569 0.0086618606 ;
	setAttr ".uvtk[306]" -type "float2" 1.2849296 0.040843833 ;
	setAttr ".uvtk[307]" -type "float2" 1.2794193 0.023319662 ;
	setAttr ".uvtk[308]" -type "float2" 1.2726561 0.026031014 ;
	setAttr ".uvtk[309]" -type "float2" 1.2231401 0.0011573967 ;
	setAttr ".uvtk[310]" -type "float2" 1.2957554 0.0083665047 ;
	setAttr ".uvtk[311]" -type "float2" 1.3317373 -0.02176372 ;
	setAttr ".uvtk[312]" -type "float2" 1.3724463 0.027504561 ;
	setAttr ".uvtk[313]" -type "float2" 1.2710345 -0.027763963 ;
	setAttr ".uvtk[314]" -type "float2" 1.3336177 0.057882383 ;
	setAttr ".uvtk[315]" -type "float2" 1.2957554 0.0083664451 ;
	setAttr ".uvtk[316]" -type "float2" 1.2957554 0.0083664451 ;
	setAttr ".uvtk[317]" -type "float2" 1.2957554 0.0083665047 ;
	setAttr ".uvtk[318]" -type "float2" 1.2957554 0.0083664451 ;
	setAttr ".uvtk[319]" -type "float2" 1.2944492 0.0092994291 ;
	setAttr ".uvtk[320]" -type "float2" 1.2957554 0.0083664451 ;
	setAttr ".uvtk[321]" -type "float2" 1.295755 0.0083666928 ;
	setAttr ".uvtk[322]" -type "float2" 1.2957554 0.0083664153 ;
	setAttr ".uvtk[323]" -type "float2" 1.2957554 0.0083663855 ;
	setAttr ".uvtk[324]" -type "float2" 1.2957553 0.0083663855 ;
	setAttr ".uvtk[325]" -type "float2" 1.2957554 0.0083664153 ;
	setAttr ".uvtk[326]" -type "float2" 1.2957554 0.0083664153 ;
	setAttr ".uvtk[353]" -type "float2" 1.302742 0.0630854 ;
	setAttr ".uvtk[354]" -type "float2" 1.2978892 0.051144514 ;
	setAttr ".uvtk[359]" -type "float2" 1.2893953 0.012909276 ;
	setAttr ".uvtk[360]" -type "float2" 1.295712 0.0083974078 ;
	setAttr ".uvtk[362]" -type "float2" 1.2957554 0.0083663855 ;
	setAttr ".uvtk[363]" -type "float2" 1.2957554 0.0083663855 ;
	setAttr ".uvtk[365]" -type "float2" 1.2957554 0.0083663855 ;
	setAttr ".uvtk[366]" -type "float2" 1.2957554 0.0083664153 ;
	setAttr ".uvtk[367]" -type "float2" 1.2957554 0.0083664153 ;
	setAttr ".uvtk[368]" -type "float2" 1.2957554 0.0083664153 ;
	setAttr ".uvtk[381]" -type "float2" 1.284516 0.03714674 ;
	setAttr ".uvtk[382]" -type "float2" 1.2824252 0.015913038 ;
createNode polyMergeUV -n "polyMergeUV3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "map[296:326]" "map[353:354]" "map[359:360]" "map[362:363]" "map[365:368]" "map[381:382]";
	setAttr ".d" 0.0099999997764825821;
createNode polyTweakUV -n "polyTweakUV52";
	setAttr ".uopa" yes;
	setAttr -s 380 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.35708511 0.08851739 -0.36377871
		 0.093525223 -0.36238405 0.083061159 -0.36976251 0.093522698 -0.37115139 0.083061159
		 -0.3764486 0.08851739 -0.38005829 0.081753783 -0.35347512 0.081753783 -0.36256191
		 0.066584826 -0.35246536 0.067709923 -0.37097257 0.066584826 -0.3810685 0.067709923
		 -0.36391822 0.055796102 -0.355322 0.058177263 -0.3696163 0.055796102 -0.37821212
		 0.058177263 -0.24805638 0.11532868 -0.25806329 0.11894587 -0.23861182 0.11532868
		 -0.38259995 0.053718012 -0.24638483 0.12473763 -0.25281942 0.12759671 -0.24028336
		 0.12473635 -0.23384905 0.12759304 -0.2451158 0.13129437 -0.25047183 0.13189383 -0.24155201
		 0.13129218 -0.2361965 0.13188852 -0.24608175 0.13726337 -0.25261056 0.13679004 -0.24058557
		 0.13725828 -0.23405783 0.13678035 -0.24625884 0.14371964 -0.25255677 0.14320393 -0.24040589
		 0.14370649 -0.23411152 0.14318375 -0.2458061 0.15071617 -0.25133619 0.14848061 -0.2408502
		 0.15067576 -0.23533112 0.14844298 0.29277888 -0.055761091 -0.25464404 0.15153086
		 0.29776865 -0.055912632 -0.23202839 0.15147854 0.29277238 -0.055558991 -0.35012475
		 0.088592649 -0.22744057 0.15382054 0.29777879 -0.055590954 -0.22948734 0.1438143
		 -0.2222188 0.1458001 -0.229599 0.13480666 -0.22108395 0.13103878 -0.25718313 0.14383452
		 -0.34551167 0.08057224 -0.25707018 0.13481513 -0.34529912 0.065810926 -0.090538427
		 -0.10549361 -0.091703244 -0.099456891 -0.097276978 -0.10196456 -0.097276978 -0.11011194
		 -0.091791332 -0.084693402 -0.097277023 -0.082368635 -0.090364881 -0.079393558 -0.097277023
		 -0.074219681 0.14425269 0.20968129 0.13663387 0.20968129 0.13611665 0.20458212 0.1430251
		 0.20458212 0.11923978 0.20968129 0.11972666 0.20458212 0.11159906 0.20968129 0.11280733
		 0.20458212 0.13367394 0.1995814 0.14041713 0.1995071 0.12202507 0.1995814 0.11536758
		 0.1995071 0.13444436 0.17784126 0.28897563 -0.05308355 -0.36170855 0.050100811 0.13086693
		 0.17862161 0.12468167 0.1786132 0.29888761 -0.052866142 0.29159483 -0.052850567 -0.058725879
		 -0.095128886 -0.059441309 -0.097159944 0.28853887 -0.053267118 -0.37182602 0.050100811
		 0.28125095 0.070662022 0.29750893 -0.052859318 -0.3637079 0.094970919 0.29272199
		 -0.052838959 0.29730311 -0.049223032 0.29281339 -0.04920898 0.30140108 -0.050437998
		 0.2864258 -0.022874465 0.2921474 -0.022794686 0.29151726 -0.017724305 0.28443933
		 -0.017885258 0.29808235 -0.02279502 0.29883575 -0.017725604 0.30379817 -0.022874258
		 0.30588791 -0.017885594 0.28085279 -0.012856382 0.29087773 -0.012325178 0.31339729
		 0.069883496 0.31122342 0.064472668 0.29964706 -0.012329614 0.31339723 0.077622108
		 0.30962986 -0.012856382 0.31122297 0.083066739 0.30917057 0.07160423 0.30917057 0.076103404
		 -0.087282702 -0.089528881 -0.087282702 -0.094365217 0.31169838 0.089706272 0.31462249
		 -0.013051593 -0.091100588 -0.071108252 0.10275875 0.21463378 0.31149665 -0.017994957
		 0.30913138 -0.023011895 0.10356947 0.20968129 0.10548137 0.20458212 0.31169844 0.057881176
		 0.27568772 -0.013051593 0.31362543 0.052892622 0.27130574 -0.012698335 0.27877012
		 -0.017994875 0.28108004 -0.023011679 0.27247089 -0.01800408 0.2748895 -0.023103252
		 0.2838842 -0.028006002 0.28803363 -0.027760664 0.27940044 -0.029915744 0.29265061
		 -0.027654584 0.2974875 -0.027663507 0.30210102 -0.027820649 0.30625021 -0.028053142
		 0.10944039 0.19930662 0.13688862 0.19424799 0.13132684 0.19439921 0.13038142 0.19130073
		 0.13592681 0.1911035 0.2811015 -0.033820264 0.14227976 0.19057782 0.12421613 0.19439921
		 0.12514684 0.19130073 0.11887922 0.19424799 0.11987448 0.1911035 0.11343408 0.19383974
		 0.3085601 -0.039606877 0.28641325 -0.032777991 0.28658676 -0.036896866 0.30362147
		 -0.033096466 0.30336809 -0.037064947 0.29295507 -0.032246914 0.28910261 -0.032385025
		 0.28935412 -0.036643121 0.29295734 -0.036537874 0.29709733 -0.032294758 0.29701599
		 -0.036569048 0.30094343 -0.032594468 0.30060095 -0.036765717 0.12989144 0.18674329
		 0.13598315 0.18654531 0.14283241 0.18665048 0.1256142 0.18674329 0.11978137 0.18654531
		 0.28127512 0.068568818 -0.23659536 0.16016681 0.30422306 -0.041056056 0.2886889 -0.040544059
		 0.2928361 -0.040566806 0.29706615 -0.040560652 0.30115241 -0.04053697 -0.38340437
		 0.088592649 0.13071094 0.18414927 -0.38802069 0.08057224 0.12483733 0.18414927 0.11877488
		 0.18377067 0.29641983 0.062225528 0.29254621 -0.044597164 0.28726882 -0.043908395
		 -0.2286053 0.11894587 0.29733583 -0.044576228 0.11356348 0.19057782 0.29650852 0.064987361
		 0.28180441 -0.036957651 -0.097277023 -0.069997884 0.30204159 0.06374079 0.30192819
		 0.069108523 -0.079403371 -0.096827373 -0.079508834 -0.10339986 0.30213711 0.059884209
		 0.30213711 0.057818595 0.3020398 0.083883822 0.30192819 0.078600824 -0.079612352
		 -0.075861841 0.30213708 0.087863371 -0.079562411 -0.081229746 -0.058769237 -0.099143744
		 0.29659054 0.069051668 -0.073980875 -0.10158091 0.12075961 0.22226022 0.30728763
		 -0.0059883688 0.29659054 0.069152929 0.29930878 -0.0064067813 0.28358585 -0.0059349178
		 0.28125095 0.070662022 -0.073895022 -0.10529072 -0.3698571 0.094938949 0.29144886
		 -0.0063834861 0.15029019 0.20458212 0.3198019 0.054276787 -0.07399305 -0.082867175
		 -0.074065141 -0.087094598 0.111033 0.21482898 0.29641992 0.085521705 0.29642001 0.087247483
		 0.31760159 -0.018353844 0.3198019 0.088023692 0.29659027 0.078590713 0.29651308 0.082521319
		 0.3198019 0.081437677 0.3198019 0.065832689 -0.38823441 0.065810926 -0.25923699 0.15382054
		 -0.26445329 0.1458001 -0.35093427 0.053718012 0.28156763 0.077359334 -0.059042476
		 -0.088430285 0.3198019 0.093211502 0.12125731 0.17785092 -0.2655856 0.13103878 0.28156763
		 0.077359334 0.30802608 -0.034329966 0.28129417 0.066647202 0.31362543 0.094682291
		 -0.079612203 -0.107972 0.29659051 0.078695565 0.29659006 0.078695565 -0.097276978
		 -0.11412945 0.28886026 -0.050368275 0.3198019 0.051661085 0.28163278 0.081152178
		 0.28160462 0.079224542 0.28163281 0.08166717 -0.059107833 -0.084122434 -0.0594275
		 -0.086519346 0.11307154 0.22243057 0.30144647 -0.053093053;
	setAttr ".uvtk[250:379]" 0.13389659 0.17460184 0.14639136 0.19930662 0.13142407
		 0.17483482 0.13653481 0.21489404 0.14480229 0.21482898 0.1193078 0.21489404 -0.24683051
		 0.1599967 -0.25010148 0.16019878 0.30213708 0.089928694 0.29641983 0.060499769 0.13506883
		 0.22226779 0.14275901 0.22244568 0.13659896 0.22728115 0.1313711 0.2275105 0.12444449
		 0.22749458 0.11921931 0.22724932 0.30158311 -0.00074499747 0.29867694 -0.00092623587
		 0.29219079 -0.00086929154 0.28928715 -0.00063110882 0.30123299 -0.053211063 0.12172386
		 0.17459235 0.15298758 0.21463378 0.30192816 0.078784078 0.12412024 0.17481925 -0.23980466
		 0.15984514 -0.079403147 -0.087006427 0.28118652 -0.040916912 0.13716067 0.1837502
		 0.3198019 0.059246682 0.1130235 0.18665048 0.30492648 -0.04105375 0.14239354 0.19383974
		 0.30235735 -0.043799758 0.28565055 -0.041034896 -0.091100588 -0.11289791 0.31255066
		 -0.028937627 0.31980199 -0.013629016 0.30192816 0.06896317 -0.07389529 -0.078542672
		 0.3198019 0.095792644 0.28129417 0.066647217 -0.074065588 -0.0967388 0.29659051 0.069051668
		 0.15220724 0.20968129 0.31533051 -0.023103252 -0.78846455 -0.77514964 -0.86745697
		 -0.73238504 -0.82299107 -0.80176783 -0.82008499 -0.71148759 -0.85762423 -0.82340193
		 -0.77235955 -0.73175973 -0.86272848 -0.60678083 -0.89078319 -0.60903972 -0.86853987
		 -0.56490868 -0.89873499 -0.56794316 -0.87972671 -0.44224527 -0.9105143 -0.41671446
		 -0.85724646 -0.40869358 -0.88984156 -0.38886943 -0.93120939 -0.73945832 -1.017805457
		 -0.78319806 -0.97694665 -0.81157088 -0.97097689 -0.72191936 -0.92061245 -0.60885733
		 -0.95017761 -0.60786533 -0.92564636 -0.56802464 -0.95594627 -0.5648905 -0.94635105
		 -0.41113672 -0.97102171 -0.41189933 -0.95378757 -0.38794592 -0.97826719 -0.38744956
		 -0.9531247 -0.33411896 -0.98340261 -0.33041379 -0.95764101 -0.27731034 -0.97568059
		 -0.28354621 -0.29543924 -0.40818116 -0.22648078 -0.43084198 -0.25343466 -0.29583293
		 -0.28924492 -0.29644504 -0.28379515 -0.45396805 -0.26100796 -0.45967609 -0.25524151
		 -0.25693867 -0.28743804 -0.25755477 -0.21240553 -0.47481459 -0.26023149 -0.10983252
		 -0.28126401 -0.11103985 -0.27086782 -0.097496532 -0.25332472 -0.097684644 -0.28893122
		 -0.097684644 -0.24963851 -0.050612777 -0.27276045 -0.050612777 -0.2958824 -0.050612777
		 -0.24963851 -0.0089270677 -0.27276045 0.002057102 -0.2958824 -0.0089270677 -0.33674416
		 -0.061851863 -0.33674416 -0.081059381 -0.56022698 0.70613176 -0.22696745 0.73861504
		 -0.89309376 0.75846136 -0.56022698 0.69571161 -0.93004334 -0.82712829 -0.8641246
		 -0.82217145 -0.89654082 0.75846136 -0.56324446 0.69571161 -0.89309376 0.76435769
		 -0.56716961 0.70613176 -0.92542171 -0.39189756 -0.88869166 -0.38085967 -0.23337902
		 0.73842371 -0.90243864 -0.33441925 -0.92780399 -0.33441925 -0.22838323 0.75080782
		 -0.89847213 -0.28959867 -0.92496383 -0.27703163 -0.85573685 -0.36704534 -0.85569125
		 -0.34650359 -0.22536574 0.75080782 -0.2311212 0.68668449 -0.2345683 0.68668449 -0.23806387
		 0.6760543 -0.2311212 0.6760543 -0.086422935 0.019370919 -0.08944048 0.019370919 -0.08944048
		 0.014472817 -0.086422935 0.014472817 -0.89309376 0.77025396 -0.89654082 0.77025396
		 -0.89855981 0.76435769;
createNode polyMapSewMove -n "polyMapSewMove50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[592]";
createNode polyMapSewMove -n "polyMapSewMove51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[624]";
createNode polyMapSewMove -n "polyMapSewMove52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[610]";
createNode polyMapSewMove -n "polyMapSewMove53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[612]";
createNode polyMapSewMove -n "polyMapSewMove54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[594]";
createNode polyMapSewMove -n "polyMapSewMove55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[594]";
createNode polyMapSewMove -n "polyMapSewMove56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[598]";
createNode polyMapSewMove -n "polyMapSewMove57";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[596]";
createNode polyTweakUV -n "polyTweakUV53";
	setAttr ".uopa" yes;
	setAttr -s 52 ".uvtk";
	setAttr ".uvtk[296]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[297]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[298]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[299]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[300]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[301]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[302]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[303]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[304]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[305]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[306]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[307]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[308]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[309]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[310]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[311]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[312]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[313]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[314]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[315]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[316]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[317]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[318]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[319]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[320]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[321]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[322]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[323]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[324]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[325]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[348]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[349]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[350]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[351]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[352]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[353]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[354]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[355]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[356]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[357]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[358]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[359]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[360]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[361]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[362]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[363]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[364]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[365]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[366]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[367]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[368]" -type "float2" 0 1.0202479 ;
	setAttr ".uvtk[369]" -type "float2" 0 1.0202479 ;
createNode polyMapCut -n "polyMapCut23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[612]";
createNode polyTweakUV -n "polyTweakUV54";
	setAttr ".uopa" yes;
	setAttr -s 372 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" 0.14075921 -0.0060954946 0.14223157
		 -0.0071970369 0.14192481 -0.0048953197 0.14354782 -0.0071964827 0.14385329 -0.0048953197
		 0.14501849 -0.0060954946 0.14581248 -0.004607744 0.13996515 -0.004607744 0.14196394
		 -0.0012711196 0.13974304 -0.0015186009 0.14381395 -0.0012711196 0.1460347 -0.0015186009
		 0.14226228 0.0011020108 0.1403714 0.00057824102 0.14351566 0.0011020108 0.1454064
		 0.00057824102 0.0061219865 0.055096172 0.0083231321 0.054300524 0.004044523 0.055096172
		 0.14637156 0.0015591168 0.0057543055 0.053026546 0.0071696872 0.05239765 0.0044121994
		 0.053026829 0.0029968861 0.052398458 0.0054751639 0.0515843 0.0066533005 0.051452439
		 0.0046912576 0.05158478 0.00351324 0.051453605 0.0056876382 0.050271332 0.0071237395
		 0.05037545 0.0044786767 0.050272454 0.0030428092 0.050377581 0.0057265917 0.048851192
		 0.0071119135 0.048964623 0.0044391532 0.048854079 0.0030546179 0.048969064 0.0056270058
		 0.047312204 0.0068434291 0.047803942 0.0045368858 0.047321096 0.0033228851 0.047812227
		 0.018522987 0.01383677 0.0075710374 0.047133002 0.017425414 0.013870104 0.0025964063
		 0.047144514 0.018524418 0.013792316 0.13922818 -0.0061120484 0.0015872457 0.046629358
		 0.017423199 0.013799347 0.0020374649 0.048830371 0.00043864359 0.048393559 0.0020620215
		 0.050811723 0.0001890214 0.051640518 0.008129525 0.048825916 0.13821349 -0.0043478478
		 0.0081046866 0.050809857 0.13816673 -0.0011008889 0.0951728 0.036773037 0.095429018
		 0.035445176 0.096655041 0.035996772 0.096655041 0.037788905 0.095448382 0.03219774
		 0.096655034 0.031686377 0.095134616 0.031031964 0.096655034 0.029893897 0.085580833
		 -0.10261281 0.0872567 -0.10261281 0.08737047 -0.10149118 0.08585085 -0.10149118 0.091082774
		 -0.10261281 0.090975679 -0.10149118 0.092763461 -0.10261281 0.092497684 -0.10149118
		 0.087907784 -0.10039119 0.086424522 -0.10037486 0.090470113 -0.10039119 0.091934524
		 -0.10037486 0.08773832 -0.095609151 0.019359581 0.013247808 0.14177623 0.0023547704
		 0.088525221 -0.095780805 0.089885756 -0.095778957 0.017179303 0.013199987 0.018783448
		 0.01319656 0.088175185 0.034493171 0.088332541 0.03493993 0.019455634 0.013288186
		 0.14400172 0.0023547704 0.023013873 -0.043675642 0.017482549 0.013198486 0.142216
		 -0.0075150379 0.018535517 0.013194008 0.017527815 0.012398633 0.01851541 0.012395542
		 0.016626416 0.012665883 0.01992045 0.0066029001 0.018661901 0.0065853512 0.018800514
		 0.00547005 0.020357387 0.0055054463 0.017356424 0.0065854248 0.017190704 0.0054703355
		 0.016099142 0.006602854 0.015639476 0.0055055274 0.021146305 0.0043992819 0.01894117
		 0.0042824363 0.015942836 -0.043504395 0.016421005 -0.042314209 0.017012237 0.0042834119
		 0.015942849 -0.04520661 0.014816384 0.0043992819 0.016421108 -0.046404235 0.016872557
		 -0.043882895 0.016872557 -0.044872552 0.094456643 0.033261374 0.094456643 0.03432519
		 0.016316537 -0.04786469 0.013718188 0.0044422215 0.095296443 0.029209495 0.094708018
		 -0.10370218 0.014405757 0.0055295839 0.014926032 0.0066331294 0.094529681 -0.10261281
		 0.094109118 -0.10149118 0.016316524 -0.040864319 0.022282422 0.0044422215 0.015892649
		 -0.039767016 0.023246305 0.0043645175 0.021604419 0.0055295583 0.021096326 0.0066330819
		 0.022990022 0.0055315825 0.022458019 0.0066532246 0.02047951 0.0077316537 0.019566771
		 0.0076776873 0.021465765 0.0081517277 0.018551202 0.007654354 0.017487263 0.0076563167
		 0.016472466 0.0076908823 0.015559788 0.0077420226 0.093238287 -0.10033076 0.087200664
		 -0.099218041 0.088424057 -0.099251308 0.088632017 -0.098569751 0.087412231 -0.098526366
		 0.021091595 0.0090105776 0.086014815 -0.098410733 0.089988157 -0.099251308 0.089783438
		 -0.098569751 0.091162086 -0.099218041 0.090943165 -0.098526366 0.092359819 -0.099128239
		 0.01505169 0.010283425 0.019923193 0.0087813158 0.01988503 0.0096873203 0.016138015
		 0.0088513689 0.016193746 0.009724292 0.018484231 0.0086644981 0.019331647 0.0086948778
		 0.019276325 0.0096315062 0.018483728 0.0096083544 0.017573087 0.0086750221 0.017590974
		 0.0096152108 0.016727082 0.0087409476 0.016802428 0.0096584717 0.08873979 -0.097567275
		 0.087399833 -0.097523734 0.085893244 -0.097546861 0.089680634 -0.097567275 0.090963647
		 -0.097523734 0.023008553 -0.043215215 0.0036009764 0.045233399 0.016005687 0.010602192
		 0.019422645 0.010489572 0.018510399 0.010494575 0.017579954 0.010493221 0.016681122
		 0.010488012 0.14654851 -0.0061120484 0.088559531 -0.096996687 0.14756393 -0.0043478478
		 0.089851514 -0.096996687 0.091185041 -0.096913405 0.019677265 -0.041819919 0.018574176
		 0.011381109 0.019735001 0.011229604 0.0018434451 0.054300524 0.017520631 0.011376503
		 0.092331357 -0.098410733 0.019657765 -0.042427424 0.020936977 0.0097006904 0.096655034
		 0.028965255 0.018440679 -0.042153221 0.018465623 -0.043333929 0.092723474 0.034866776
		 0.092746675 0.036312487 0.018419677 -0.041304912 0.018419674 -0.040850539 0.018441074
		 -0.046583965 0.018465623 -0.045421895 0.092769459 0.030255115 0.018419677 -0.047459319
		 0.092758462 0.031435862 0.088184707 0.035376295 0.019639714 -0.043321423 0.091530733
		 0.035912383 0.090748467 -0.10537972 0.015331589 0.0028885663 0.019639717 -0.043343697
		 0.017086659 0.002980602 0.020545119 0.0028768091 0.023013873 -0.043675642 0.091511838
		 0.036728408 0.14356863 -0.0075080073 0.018815545 0.0029754778 0.084252797 -0.10149118
		 0.014534052 -0.040071484 0.0915334 0.031796038 0.091549255 0.032725915 0.092887975
		 -0.10374512 0.019677248 -0.046944242 0.019677227 -0.047323849 0.013062889 0.0056085261
		 0.014534053 -0.047494587 0.019639771 -0.045419671 0.019656753 -0.046284262 0.014534053
		 -0.046045899 0.014534053 -0.042613365 0.14761095 -0.0011008889 0.0085813003 0.046629358
		 0.0097287009 0.048393559 0.13940625 0.0015591168 0.022944214 -0.045148812 0.088244826
		 0.033019718 0.014534053 -0.048635721 0.090638988 -0.095611274 0.0099777691 0.051640518
		 0.022944214 -0.045148812 0.015169156 0.0091226939 0.023004375 -0.042792514 0.015892651
		 -0.04895924 0.092769414 0.037318192 0.019639723 -0.045442734 0.019639824 -0.045442734
		 0.096655041 0.038672611 0.019384941 0.012650546 0.014534052 -0.039496124 0.022929884
		 -0.045983098 0.022936072 -0.04555909 0.022929873 -0.046096381 0.088259198 0.032072149
		 0.088329501 0.032599382 0.09243957 -0.10541719 0.016616445 0.013249898;
	setAttr ".uvtk[250:371]" 0.087858804 -0.094896592 0.085110411 -0.10033076 0.088402674
		 -0.094947845 0.087278493 -0.10375943 0.08545994 -0.10374512 0.091067813 -0.10375943
		 0.0058523389 0.045270827 0.0065718321 0.045226369 0.018419677 -0.047913618 0.019677265
		 -0.041440312 0.087600954 -0.10538138 0.085909382 -0.10542052 0.087264381 -0.10648415
		 0.088414326 -0.1065346 0.089937925 -0.1065311 0.091087274 -0.10647715 0.016586374
		 0.0017352127 0.01722564 0.0017750787 0.018652355 0.0017625532 0.019291054 0.0017101613
		 0.016663399 0.013275856 0.090536371 -0.094894506 0.083659478 -0.10370218 0.018465627
		 -0.045462206 0.09000925 -0.094944417 0.004306905 0.045304157 0.092723429 0.032706521
		 0.021072891 0.010571586 0.087140821 -0.096908905 0.014534053 -0.041164666 0.092450134
		 -0.097546861 0.015850956 0.010601684 0.085989781 -0.099128239 0.016416065 0.011205708
		 0.02009096 0.010597537 0.095296443 0.038401715 0.014173911 0.0079365773 0.012578882
		 0.0045692339 0.018465627 -0.043301959 0.091511898 0.030844802 0.014534053 -0.049203478
		 0.023004375 -0.042792518 0.091549367 0.034847293 0.019639723 -0.043321423 0.083831124
		 -0.10261281 0.013562445 0.0066532246 0.0045179301 -1.0041311979 0.0067553008 -1.0053424835
		 0.0054958542 -1.0033773184 0.0054135411 -1.0059343576 0.0064768023 -1.0027645826
		 0.0040617688 -1.0053602457 0.0066213747 -1.0089001656 0.0074159945 -1.0088361502
		 0.006785973 -1.01008606 0.0076412177 -1.01000011 0.0071028313 -1.013560414 0.0079748146
		 -1.014283657 0.0064658988 -1.014511108 0.0073145945 -1.015072107 0.0085610263 -1.0051422119
		 0.011013793 -1.0039032698 0.0098565081 -1.0030996799 0.0096874218 -1.005638957 0.0082608834
		 -1.0088412762 0.0090982998 -1.0088694096 0.0084034624 -1.0099978447 0.0092616919
		 -1.010086656 0.0089899143 -1.014441609 0.0096886922 -1.014419913 0.0092005506 -1.015098453
		 0.0098939128 -1.015112519 0.0091817714 -1.01662302 0.010039366 -1.016727924 0.046642561
		 -0.38281488 0.047256362 -0.38260275 0.0029129451 0.011321889 0.0006507709 0.012065275
		 0.0015349888 0.0076363245 0.0027097422 0.0076564057 0.0025309622 0.01282392 0.0017834287
		 0.013011169 0.0015942603 0.0063604042 0.0026504677 0.0063806176 0.00018903631 0.013507755
		 0.0017579576 0.0015346053 0.002447929 0.0015742135 0.0021068845 0.0011299265 0.0015313806
		 0.0011360979 0.0026994499 0.0011360979 0.0014104566 -0.00040808739 0.0021689713 -0.00040808739
		 0.0029274819 -0.00040808739 0.0014104566 -0.0017755773 0.0021689713 -0.0021359113
		 0.0029274819 -0.0017755773 0.004267944 -3.9391194e-005 0.004267944 0.00059070945
		 0.048918456 -0.38724685 0.050560787 -0.39308181 0.048155025 -0.38503671 0.049666941
		 -0.38941327 0.0085280053 -1.0026589632 0.0066609178 -1.0027993917 0.047438368 -0.3852843
		 0.049039565 -0.38962993 0.0477314 -0.38381085 0.047475036 -0.3877455 0.0083970772
		 -1.014986515 0.0072858413 -1.015219808 0.049241427 -0.39358187 0.007746126 -1.016614556
		 0.0084645702 -1.016614556 0.049391173 -0.39064831 0.0076337797 -1.017884016 0.0083841272
		 -1.018239975 0.0064229537 -1.015683889 0.006422054 -1.016272187 0.050018571 -0.3904317
		 0.046595011 -0.38420355 0.0092582712 -1.018249869 0.0098720696 -1.018037677;
createNode polyAutoProj -n "polyAutoProj3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "f[62]" "f[65]" "f[67]" "f[140]" "f[145]" "f[150:151]" "f[197:200]" "f[205:208]" "f[213:216]" "f[227]" "f[229]" "f[232]" "f[276:301]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 6.7419765591621399 6.7419765591621399 6.7419765591621399 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSewMove -n "polyMapSewMove58";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[405]" "e[417]" "e[433]";
createNode polyMapSewMove -n "polyMapSewMove59";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[407]" "e[422]" "e[438]";
createNode polyTweakUV -n "polyTweakUV55";
	setAttr ".uopa" yes;
	setAttr -s 44 ".uvtk";
	setAttr ".uvtk[372]" -type "float2" -0.40009466 0.053129308 ;
	setAttr ".uvtk[373]" -type "float2" -0.37742174 0.061400276 ;
	setAttr ".uvtk[374]" -type "float2" -0.39121321 0.054710601 ;
	setAttr ".uvtk[375]" -type "float2" -0.38835382 0.065122202 ;
	setAttr ".uvtk[376]" -type "float2" -0.40130928 0.067705251 ;
	setAttr ".uvtk[377]" -type "float2" -0.39623809 0.046241745 ;
	setAttr ".uvtk[378]" -type "float2" -0.39856035 0.047390625 ;
	setAttr ".uvtk[379]" -type "float2" -0.40202722 0.14531349 ;
	setAttr ".uvtk[380]" -type "float2" -0.3990837 0.14575385 ;
	setAttr ".uvtk[381]" -type "float2" -0.37307936 0.03353902 ;
	setAttr ".uvtk[382]" -type "float2" -0.40706918 0.036653072 ;
	setAttr ".uvtk[383]" -type "float2" -0.40565792 0.077096082 ;
	setAttr ".uvtk[384]" -type "float2" -0.37794667 0.085417606 ;
	setAttr ".uvtk[385]" -type "float2" -0.43950269 0.069588102 ;
	setAttr ".uvtk[386]" -type "float2" -0.3933793 0.084873691 ;
	setAttr ".uvtk[387]" -type "float2" -0.40247059 0.086736165 ;
	setAttr ".uvtk[388]" -type "float2" -0.42680109 0.068251789 ;
	setAttr ".uvtk[389]" -type "float2" -0.40064123 0.099708237 ;
	setAttr ".uvtk[390]" -type "float2" -0.37070128 0.1238189 ;
	setAttr ".uvtk[391]" -type "float2" -0.40834177 0.094894156 ;
	setAttr ".uvtk[392]" -type "float2" -0.43840361 0.088282272 ;
	setAttr ".uvtk[393]" -type "float2" -0.41816482 0.072940223 ;
	setAttr ".uvtk[395]" -type "float2" -0.374805 0.049328934 ;
	setAttr ".uvtk[396]" -type "float2" -0.34677503 0.064511485 ;
	setAttr ".uvtk[397]" -type "float2" -0.33577964 0.10215601 ;
	setAttr ".uvtk[398]" -type "float2" -0.40255189 0.096964508 ;
	setAttr ".uvtk[399]" -type "float2" -0.41092187 0.065122202 ;
	setAttr ".uvtk[401]" -type "float2" -0.4034673 0.065122202 ;
	setAttr ".uvtk[403]" -type "float2" -0.34211355 0.0011739795 ;
	setAttr ".uvtk[405]" -type "float2" -0.31600511 0.055956203 ;
	setAttr ".uvtk[406]" -type "float2" -0.32503697 0.087147996 ;
	setAttr ".uvtk[407]" -type "float2" -0.3301014 0.087273456 ;
	setAttr ".uvtk[408]" -type "float2" -0.32723343 0.057755638 ;
	setAttr ".uvtk[409]" -type "float2" -0.32247207 0.1145949 ;
	setAttr ".uvtk[410]" -type "float2" -0.26525092 0.074981757 ;
	setAttr ".uvtk[411]" -type "float2" -0.40960288 0.065122217 ;
	setAttr ".uvtk[412]" -type "float2" -0.3931734 0.064866677 ;
	setAttr ".uvtk[414]" -type "float2" -0.41438511 0.065122217 ;
	setAttr ".uvtk[415]" -type "float2" -0.42834988 0.061315369 ;
	setAttr ".uvtk[417]" -type "float2" -0.39083186 0.065122202 ;
	setAttr ".uvtk[419]" -type "float2" -0.39629599 0.065122202 ;
	setAttr ".uvtk[421]" -type "float2" -0.42807117 -0.00076986832 ;
	setAttr ".uvtk[422]" -type "float2" -0.49205405 0.05920234 ;
	setAttr ".uvtk[423]" -type "float2" -0.53892428 -0.0059308377 ;
createNode polyMapCut -n "polyMapCut24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[548:549]";
createNode polyMapSewMove -n "polyMapSewMove60";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[548:549]";
createNode polyMapSewMove -n "polyMapSewMove61";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[588]";
createNode polyMapSewMove -n "polyMapSewMove62";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[278]";
createNode polyMapSewMove -n "polyMapSewMove63";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[290]";
createNode polyMapSewMove -n "polyMapSewMove64";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[579]";
createNode polyTweakUV -n "polyTweakUV56";
	setAttr ".uopa" yes;
	setAttr -s 60 ".uvtk";
	setAttr ".uvtk[372]" -type "float2" 0.022503018 0.13516864 ;
	setAttr ".uvtk[373]" -type "float2" 0.020666867 0.17801133 ;
	setAttr ".uvtk[374]" -type "float2" -0.020965904 0.1792556 ;
	setAttr ".uvtk[375]" -type "float2" -0.021956652 0.13288833 ;
	setAttr ".uvtk[376]" -type "float2" 0.043550819 0.17469233 ;
	setAttr ".uvtk[377]" -type "float2" -0.0096766949 0.052828133 ;
	setAttr ".uvtk[378]" -type "float2" 0.01550597 0.052672029 ;
	setAttr ".uvtk[379]" -type "float2" -0.0056577967 -0.06020344 ;
	setAttr ".uvtk[380]" -type "float2" 0.013376329 -0.066378936 ;
	setAttr ".uvtk[381]" -type "float2" -0.01529187 -0.089777231 ;
	setAttr ".uvtk[382]" -type "float2" 0.009295797 -0.093134373 ;
	setAttr ".uvtk[383]" -type "float2" 0.0070912214 -0.10322693 ;
	setAttr ".uvtk[384]" -type "float2" -0.016915645 -0.10504064 ;
	setAttr ".uvtk[385]" -type "float2" 0.042680658 -0.093708038 ;
	setAttr ".uvtk[386]" -type "float2" -0.0018945653 -0.15769994 ;
	setAttr ".uvtk[387]" -type "float2" -0.0069815777 -0.15671429 ;
	setAttr ".uvtk[388]" -type "float2" 0.042157777 -0.15782091 ;
	setAttr ".uvtk[389]" -type "float2" 0.0062944433 -0.19894254 ;
	setAttr ".uvtk[390]" -type "float2" -0.033138856 -0.19353831 ;
	setAttr ".uvtk[391]" -type "float2" 0.05612655 -0.13773401 ;
	setAttr ".uvtk[392]" -type "float2" 0.066614121 -0.12008923 ;
	setAttr ".uvtk[393]" -type "float2" 0.034795657 -0.17680633 ;
	setAttr ".uvtk[396]" -type "float2" -0.048648745 0.17457995 ;
	setAttr ".uvtk[397]" -type "float2" -0.086531132 0.14586952 ;
	setAttr ".uvtk[398]" -type "float2" -0.050959796 0.11901717 ;
	setAttr ".uvtk[399]" -type "float2" -0.026598319 0.035149515 ;
	setAttr ".uvtk[401]" -type "float2" -0.023875367 0.0050812308 ;
	setAttr ".uvtk[403]" -type "float2" -0.031687051 -0.071289726 ;
	setAttr ".uvtk[405]" -type "float2" -0.050048731 -0.095029563 ;
	setAttr ".uvtk[408]" -type "float2" -0.032435488 -0.14006317 ;
	setAttr ".uvtk[410]" -type "float2" -0.087033764 -0.18050289 ;
	setAttr ".uvtk[411]" -type "float2" 0.056888998 0.11520712 ;
	setAttr ".uvtk[412]" -type "float2" 0.064600378 0.15834251 ;
	setAttr ".uvtk[414]" -type "float2" 0.086531132 0.144822 ;
	setAttr ".uvtk[417]" -type "float2" 0.034265131 0.035795569 ;
	setAttr ".uvtk[419]" -type "float2" 0.031610817 -0.0020678975 ;
	setAttr ".uvtk[421]" -type "float2" 0.032207556 -0.07311862 ;
	setAttr ".uvtk[423]" -type "float2" 0.10281213 -0.06562005 ;
	setAttr ".uvtk[424]" -type "float2" 0.034800768 0.12908967 ;
	setAttr ".uvtk[425]" -type "float2" 0.0087170303 0.12173625 ;
	setAttr ".uvtk[426]" -type "float2" 0.028176486 0.10605237 ;
	setAttr ".uvtk[427]" -type "float2" -0.004039824 0.11883448 ;
	setAttr ".uvtk[428]" -type "float2" -0.010228038 0.093553036 ;
	setAttr ".uvtk[429]" -type "float2" -0.0071684122 0.032372326 ;
	setAttr ".uvtk[430]" -type "float2" 0.012885362 0.032095909 ;
	setAttr ".uvtk[431]" -type "float2" -0.0061565638 0.011262685 ;
	setAttr ".uvtk[432]" -type "float2" 0.011873513 0.011004776 ;
	setAttr ".uvtk[433]" -type "float2" -0.0039705038 -0.066164196 ;
	setAttr ".uvtk[434]" -type "float2" 0.0082615018 -0.066639006 ;
	setAttr ".uvtk[435]" -type "float2" 0.0020899773 -0.073339641 ;
	setAttr ".uvtk[436]" -type "float2" -0.008025527 -0.07323432 ;
	setAttr ".uvtk[437]" -type "float2" 0.011914104 -0.07323432 ;
	setAttr ".uvtk[438]" -type "float2" 0.0010300875 -0.099594533 ;
	setAttr ".uvtk[439]" -type "float2" -0.011918187 -0.099594533 ;
	setAttr ".uvtk[440]" -type "float2" 0.013978392 -0.099594533 ;
	setAttr ".uvtk[441]" -type "float2" -0.034800828 -0.082544446 ;
	setAttr ".uvtk[442]" -type "float2" -0.034800828 -0.093300641 ;
	setAttr ".uvtk[443]" -type "float2" 0.0010300875 -0.12908971 ;
	setAttr ".uvtk[444]" -type "float2" -0.011918187 -0.12293851 ;
	setAttr ".uvtk[445]" -type "float2" 0.013978392 -0.12293851 ;
createNode polyMapSewMove -n "polyMapSewMove65";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[578]";
createNode polyMapSewMove -n "polyMapSewMove66";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[408]" "e[554]" "e[562:563]" "e[570]";
createNode polyMapSewMove -n "polyMapSewMove67";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[575]";
createNode polyMapSewMove -n "polyMapSewMove68";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[555]";
createNode polyMapCut -n "polyMapCut25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[562]";
createNode polyTweakUV -n "polyTweakUV57";
	setAttr ".uopa" yes;
	setAttr -s 446 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.15292585 0.093614496 -0.16211262
		 0.10048758 -0.16019846 0.086125992 -0.17032519 0.10048416 -0.17223138 0.086125992
		 -0.17950162 0.093614496 -0.18445578 0.084331654 -0.14797124 0.084331654 -0.16044258
		 0.063512743 -0.14658539 0.065056905 -0.17198595 0.063512743 -0.18584229 0.065056905
		 -0.16230406 0.048705552 -0.15050605 0.05197363 -0.17012453 0.048705552 -0.18192202
		 0.05197363 0.0060108271 -0.070687875 -0.0077233473 -0.065723419 0.018973205 -0.070687875
		 -0.18794416 0.045853432 0.0083049908 -0.057774413 -0.00052631734 -0.05385042 0.01667908
		 -0.057776172 0.025509942 -0.053855434 0.010046699 -0.048775494 0.0026957004 -0.047952745
		 0.014937893 -0.048778489 0.022288159 -0.047960024 0.0087209623 -0.040583212 -0.00023959993
		 -0.041232862 0.016264295 -0.040590223 0.025223417 -0.041246165 0.0084779132 -0.031722218
		 -0.00016583566 -0.032429993 0.016510902 -0.031740244 0.025149731 -0.032457691 0.0090992777
		 -0.022119679 0.0015093869 -0.025187904 0.0159011 -0.022175176 0.023475872 -0.025239591
		 0.29357758 -0.076660268 -0.0030305472 -0.021001572 0.30042586 -0.076868251 0.02800875
		 -0.021073394 0.29356867 -0.07638289 -0.14337297 0.093717784 0.034305394 -0.017859068
		 0.30043969 -0.076426759 0.031496249 -0.031592317 0.041472126 -0.028866818 0.031343028
		 -0.04395498 0.043029644 -0.049126267 -0.0065153087 -0.03156453 -0.13704169 0.082710035
		 -0.0063603255 -0.043943357 -0.13674992 0.062450584 0.0094083026 -0.037400611 0.0078096339
		 -0.029115396 0.000159911 -0.0325571 0.000159911 -0.043739077 0.0076888083 -0.0088529587
		 0.00015993354 -0.0056623067 0.0096465722 -0.0015791024 0.00015993354 0.0055218916
		 -2.2273065e-005 0.18473266 -0.010478868 0.18473266 -0.011188679 0.1777342 -0.0017070461
		 0.1777342 -0.034351654 0.18473266 -0.033683449 0.1777342 -0.044838324 0.18473266
		 -0.04318006 0.1777342 -0.014541285 0.17087084 -0.005286416 0.17076887 -0.030528985
		 0.17087084 -0.039666194 0.17076887 -0.013483871 0.14103323 0.28835765 -0.072985433
		 -0.15927136 0.04088895 -0.018393818 0.14210424 -0.026882887 0.14209272 0.30196154
		 -0.072687045 0.29195243 -0.072665662 0.05307008 -0.023175344 0.052088257 -0.025962913
		 0.28775832 -0.073237367 -0.17315729 0.04088895 0.16235977 0.024439309 0.30006942
		 -0.072677679 -0.16201542 0.10247176 0.29349935 -0.072649732 0.29978696 -0.06768699
		 0.29362482 -0.0676677 0.30541128 -0.069354489 0.28485811 -0.031524438 0.29271081
		 -0.031414937 0.29184592 -0.024456004 0.28213182 -0.024676906 0.30085635 -0.031415399
		 0.30189034 -0.024457784 0.30870119 -0.031524152 0.31156927 -0.024677366 0.27720934
		 -0.017774932 0.29096833 -0.01704587 0.20647959 0.023370855 0.20349607 0.015944663
		 0.30300391 -0.017051958 0.20647956 0.033991799 0.31670496 -0.017774932 0.20349541
		 0.041464388 0.2006786 0.025732454 0.2006786 0.031907436 0.013876815 -0.015489521
		 0.013876815 -0.022127233 0.20414791 0.050576929 0.32355717 -0.018042851 0.008636835
		 0.0097922301 -0.056971442 0.19152978 0.31926709 -0.024827465 0.31602082 -0.031713054
		 -0.055858668 0.18473266 -0.05323457 0.1777342 0.20414799 0.0068979873 0.27012047
		 -0.018042851 0.20679277 5.1409206e-005 0.26410633 -0.017558016 0.27435088 -0.024827352
		 0.27752119 -0.031712759 0.26570541 -0.024839984 0.26902485 -0.031838436 0.28136978
		 -0.038567312 0.28706488 -0.038230591 0.27521607 -0.04118837 0.29340154 -0.038084999
		 0.30003998 -0.038097247 0.30637181 -0.038312916 0.31206653 -0.038632009 -0.047801021
		 0.17049374 -0.010129183 0.16355094 -0.017762588 0.16375855 -0.019060174 0.15950592
		 -0.011449284 0.15923522 0.27755067 -0.046547178 -0.0027301074 0.15851374 -0.027521826
		 0.16375855 -0.026244465 0.15950592 -0.034846559 0.16355094 -0.033480555 0.15923522
		 -0.042319812 0.16299063 0.31523681 -0.05448911 0.28484094 -0.045116693 0.28507906
		 -0.050769713 0.30845866 -0.045553792 0.30811092 -0.051000394 0.2938194 -0.04438781
		 0.2885319 -0.04457736 0.28887707 -0.050421458 0.29382253 -0.050277002 0.29950449
		 -0.044453476 0.29939285 -0.050319783 0.30478311 -0.044864815 0.30431303 -0.050589714
		 -0.019732641 0.15325096 -0.011371913 0.1529793 -0.0019715368 0.1531236 -0.025602963
		 0.15325096 -0.033608347 0.1529793 0.16239297 0.021566495 0.021740712 -0.0091489665
		 0.30928427 -0.056478068 0.28796411 -0.05577537 0.29365608 -0.055806592 0.29946163
		 -0.055798139 0.30506989 -0.055765636 -0.18904822 0.093717784 -0.018607859 0.14969073
		 -0.19538398 0.082710035 -0.026669201 0.14969073 -0.034989737 0.14917114 0.1831786
		 0.012860531 0.29325813 -0.061338134 0.28601515 -0.060392816 0.032706838 -0.065723419
		 0.29983181 -0.06130939 -0.042142253 0.15851374 0.18330026 0.016651062 0.27851546
		 -0.050853133 0.00015993354 0.011316169 0.19089429 0.014940181 0.19073865 0.022307172
		 0.02469095 -0.025506463 0.024546202 -0.034526993 0.19102533 0.0096471412 0.19102535
		 0.0068120183 0.19089183 0.042585809 0.19073865 0.03533506 0.024404049 0.0032680612
		 0.19102533 0.048047606 0.024472618 -0.0040992158 0.053010646 -0.028685618 0.18341289
		 0.022229141 0.03213302 -0.032030553 -0.032265797 0.20199685 0.31349033 -0.0083487984
		 0.18341288 0.022368174 0.30253956 -0.0089230556 0.28096041 -0.0082754381 0.16235977
		 0.024439309 0.032250937 -0.037122142 -0.17045502 0.10242791 0.29175216 -0.0088910833
		 0.0082640965 0.1777342 0.21526974 0.0019511387 0.032116383 -0.0063465419 0.032017447
		 -0.012148541 -0.045615226 0.1917977 0.18317871 0.044833764 0.18317883 0.047202323
		 0.32764593 -0.025320025 0.21526976 0.048267659 0.18341254 0.035321195 0.18330657
		 0.040715817 0.21526976 0.039228562 0.21526976 0.01781125 -0.19567728 0.062450584
		 -0.0093341907 -0.017859068 -0.016493412 -0.028866818 -0.14448403 0.045853432 0.16279441
		 0.033631157 0.052635547 -0.013981726 0.21526976 0.055387773 -0.031582709 0.14104646
		 -0.018047454 -0.049126267 0.16279441 0.033631157 0.31450382 -0.047246732 0.16241904
		 0.018929051 0.20679274 0.057406377 0.024404319 -0.040802058 0.18341284 0.035465099
		 0.18341221 0.035465099 0.000159911 -0.049252979 0.28819942 -0.069258794 0.21526974
		 -0.0016388797 0.16288382 0.038836706 0.16284522 0.036191098 0.16288391 0.039543521
		 0.052545857 -0.0080693392 0.052107159 -0.011359027 -0.042817388 0.20223065 0.30547345
		 -0.072998472;
	setAttr ".uvtk[250:445]" -0.014235692 0.1365872 0.0029129409 0.17049374 -0.017629122
		 0.13690697 -0.010614823 0.19188702 0.00073211844 0.1917977 -0.034258347 0.19188702
		 0.0076933098 -0.0093824789 0.0032040332 -0.0091051022 0.19102533 0.050882209 0.1831786
		 0.010491974 -0.012626773 0.20200725 -0.0020722512 0.20225139 -0.01052672 0.20888789
		 -0.017701812 0.20920268 -0.02720841 0.20918085 -0.034379806 0.2088442 0.30566111
		 -0.0011524336 0.30167237 -0.0014011776 0.29277039 -0.0013230235 0.28878522 -0.00099612505
		 0.30518049 -0.07316044 -0.030942395 0.13657416 0.011966133 0.19152978 0.19073862
		 0.035586577 -0.02765343 0.13688558 0.017336065 -0.009590446 0.024691205 -0.012027524
		 0.27766743 -0.056287099 -0.0097558303 0.14914306 0.21526976 0.008772037 -0.04288337
		 0.1531236 0.31024975 -0.056474898 -0.0025738471 0.16299063 0.30672371 -0.060243711
		 0.28379413 -0.056449022 0.008636835 -0.047562726 0.32071367 -0.039845936 0.33066589
		 -0.018835347 0.19073862 0.022107683 0.032250613 -0.00041129364 0.21526976 0.058930293
		 0.16241904 0.018929074 0.03201681 -0.025384905 0.18341284 0.022229141 0.010895138
		 0.18473266 0.32452896 -0.031838436 0.3727203 -0.089365922 0.35876015 -0.081808239
		 0.36661848 -0.094070092 0.36713207 -0.078115039 0.36049786 -0.097893476 0.37556654
		 -0.081697695 0.35959578 -0.059610404 0.35463777 -0.06000961 0.35856879 -0.052210435
		 0.35323244 -0.052746698 0.35659176 -0.030532349 0.35115096 -0.02601975 0.3605659
		 -0.024600258 0.35527048 -0.021100394 0.34749329 -0.083058231 0.33218932 -0.09078832
		 0.33941022 -0.095802575 0.34046525 -0.07995861 0.34936607 -0.05997739 0.34414107
		 -0.059802093 0.34847644 -0.052761108 0.34312162 -0.052207209 0.34481731 -0.02503459
		 0.34045732 -0.025169371 0.34350306 -0.02093612 0.33917686 -0.020848393 0.34362024
		 -0.011423382 0.33826929 -0.01076857 0.58657873 -0.021703316 0.58274895 -0.023026953
		 0.37613946 -0.082671985 0.39025432 -0.087310344 0.38473719 -0.05967585 0.37740734
		 -0.059801143 0.37852284 -0.092043921 0.38318706 -0.093212239 0.38436738 -0.051714726
		 0.37777716 -0.051840845 0.39313531 -0.096310891 0.38334599 -0.021604128 0.37904093
		 -0.021851264 0.3811689 -0.019079128 0.38475972 -0.019117635 0.37747157 -0.019117635
		 0.38551423 -0.0094826687 0.3807815 -0.0094826687 0.37604877 -0.0094826687 0.38551423
		 -0.0009501836 0.3807815 0.0012981223 0.37604877 -0.0009501836 0.3676849 -0.011783154
		 0.3676849 -0.015714677 0.57237828 0.0059499699 0.56213093 0.042357352 0.57714176
		 -0.0078402096 0.56770808 0.019467335 0.34769934 -0.098552033 0.35934907 -0.097675972
		 0.58161324 -0.0062952917 0.57162255 0.020819314 0.57978493 -0.015489034 0.58138454
		 0.009061248 0.34851626 -0.021634178 0.35544983 -0.020178407 0.5703631 0.045477383
		 0.35257792 -0.011476434 0.34809515 -0.011476434 0.56942874 0.027173487 0.35327891
		 -0.003555398 0.34859705 -0.0013344287 0.36083382 -0.017283348 0.36083946 -0.013612088
		 0.56551403 0.025821948 0.58687544 -0.013038746 0.34314293 -0.0012728998 0.33931312
		 -0.0025965485 0.54665893 -0.25259337 0.54601765 -0.23763058 0.53147745 -0.23719601
		 0.53113139 -0.25338978 0.55400985 -0.23878972 0.53542018 -0.28135076 0.5442152 -0.28140527
		 0.53682381 -0.29347399 0.54347146 -0.29224089 0.53682023 -0.32479155 0.54351008 -0.32480308
		 0.54123425 -0.33586985 0.53298151 -0.33651623 0.54847735 -0.33461997 0.54112506 -0.34606174
		 0.53384948 -0.34640354 0.54828656 -0.34289512 0.5409497 -0.36196041 0.53338003 -0.36205488
		 0.5583626 -0.34727475 0.56206471 -0.34174213 0.54804558 -0.35672712 0.63708287 -0.53377223
		 0.6693756 -0.49620774 0.52180922 -0.23882899 0.50857878 -0.24885607 0.52100205 -0.25823426
		 0.52951032 -0.28752503 0.64064229 -0.53683221 0.53046131 -0.29650328 0.63397598 -0.5565064
		 0.52982712 -0.32413954 0.6266073 -0.54977846 0.5271998 -0.33494991 0.66746205 -0.50665843
		 0.66339606 -0.50316274 0.52669168 -0.34559807 0.65261579 -0.51570213 0.52849752 -0.35785699
		 0.5586682 -0.25956491 0.56136143 -0.24449991 0.64560908 -0.53105414 0.56902075 -0.24922194
		 0.67582315 -0.50175089 0.64204955 -0.52799433 0.55076683 -0.28709188 -0.42379925
		 -0.2576552 0.54983985 -0.29468411 0.6608054 -0.52274233 0.54766214 -0.32303369 -0.43724561
		 -0.2576552 0.5566656 -0.32873288 -0.41298762 -0.12679413 -0.42653114 -0.13061225
		 -0.41642714 -0.13875583 -0.43315491 -0.13211896 -0.43636805 -0.14524589 -0.43477938
		 -0.17701286 -0.4243668 -0.17715637 -0.43425396 -0.18797365 -0.42489219 -0.18810757
		 -0.43311891 -0.22817612 -0.42676765 -0.22842267 -0.42997211 -0.2319019 -0.43522441
		 -0.23184715 -0.42487112 -0.23184715 -0.43052244 -0.24553424 -0.43724561 -0.24553424
		 -0.42379925 -0.24553424 -0.44912696 -0.23668133 -0.44912696 -0.24226624 -0.43052244
		 -0.26084903 0.67982942 -0.49309948 0.67494696 -0.48890159;
createNode polyPlanarProj -n "polyPlanarProj8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[334:357]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.054092288017272949 2.2716758251190186 -0.046428024768829346 ;
	setAttr ".ic" -type "double2" 0.50723210606579006 1.2412908850851174 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 3.882152795791626 2.1792987585067749 ;
	setAttr ".is" -type "double2" 0.25268237320169984 0.14179006474698624 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV58";
	setAttr ".uopa" yes;
	setAttr -s 494 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.25296935 0.082379915 -0.26652676
		 0.092522897 -0.26370192 0.071328633 -0.27864647 0.092517816 -0.2814596 0.071328633
		 -0.29218864 0.082379915 -0.2994999 0.068680681 -0.24565758 0.068680681 -0.26406217
		 0.037957024 -0.24361236 0.040235788 -0.28109738 0.037957024 -0.30154607 0.040235788
		 -0.26680931 0.016105238 -0.24939831 0.020928103 -0.27835044 0.016105238 -0.29576063
		 0.020928103 0.50434351 0.01235232 0.48407525 0.019678636 0.52347285 0.01235232 -0.30464777
		 0.011896236 0.50772911 0.031409439 0.49469629 0.037200347 0.52008724 0.031406786
		 0.53311944 0.037192926 0.51029944 0.044689663 0.49945116 0.045903794 0.51751763 0.04468517
		 0.52836484 0.045893129 0.50834292 0.056779467 0.49511936 0.055820771 0.51947516 0.056769069
		 0.53269649 0.055801153 0.50798428 0.069856055 0.49522826 0.06881164 0.51983911 0.069829486
		 0.53258777 0.068770707 0.5089013 0.084027126 0.49770042 0.07949923 0.51893908 0.083945289
		 0.53011757 0.079422906 -0.00031130153 0.42828053 0.49100071 0.085677139 0.0097950604
		 0.42797357 0.536807 0.085571185 -0.00032446079 0.42868981 -0.23887156 0.082532361
		 0.54609942 0.090314731 0.0098154629 0.42862511 0.54195368 0.070047796 0.55667573
		 0.074070051 0.5417276 0.051803563 0.55897427 0.044172011 0.48585787 0.070088871 -0.22952819
		 0.06628751 0.48608655 0.051820647 -0.2290976 0.036389522 -0.50465447 -0.00048032377
		 -0.50701368 0.011746535 -0.51830292 0.0066674547 -0.51830292 -0.0098344861 -0.50719202
		 0.041649051 -0.5183028 0.046357583 -0.5043028 0.052383497 -0.5183028 0.062862806
		 -0.21372038 0.18061388 -0.22915187 0.18061388 -0.23019934 0.17028596 -0.2162067 0.17028596
		 -0.2643823 0.18061388 -0.26339611 0.17028596 -0.27985802 0.18061388 -0.27741092 0.17028596
		 -0.23514698 0.16015725 -0.2214891 0.16000679 -0.25874084 0.16015725 -0.27222517 0.16000679
		 -0.23358655 0.11612415 -0.0080147227 0.43370366 -0.26233372 0.0045698318 -0.24083236
		 0.11770476 -0.25336015 0.11768774 0.012061302 0.43414405 -0.0027097175 0.43417555
		 -0.44022039 0.02051267 -0.44166926 0.016398828 -0.0088993255 0.43333191 -0.28282604
		 0.0045698318 -0.62786978 -0.034871478 0.0092690624 0.43415782 -0.26638335 0.095451094
		 -0.00042676149 0.43419912 0.0088521782 0.44152293 -0.00024153868 0.44155136 0.017152246
		 0.43906206 -0.013179217 0.49488997 -0.0015905045 0.49505156 -0.0028668491 0.50532132
		 -0.017202502 0.50499529 0.010430452 0.49505097 0.011956328 0.5053187 0.022007421
		 0.49489048 0.026239991 0.50499457 -0.024466889 0.51518095 -0.0041620024 0.51625687
		 -0.56275958 -0.036448307 -0.56716257 -0.047407582 0.013599636 0.51624793 -0.56275976
		 -0.020774391 0.033819076 0.51518095 -0.56716359 -0.0097466642 -0.57132047 -0.032963108
		 -0.57132047 -0.023850346 -0.49806008 0.031855058 -0.49806008 0.02205945 -0.56620061
		 0.0037012557 0.043931328 0.51478553 -0.50579292 0.069164768 -0.29776359 0.1906448
		 0.037600115 0.50477308 0.032809384 0.49461171 -0.29612154 0.18061388 -0.29224887
		 0.17028596 -0.56620055 -0.060758147 -0.034928277 0.51478553 -0.56229752 -0.070862174
		 -0.043803718 0.51550108 -0.028685205 0.50477326 -0.024006749 0.4946121 -0.041443862
		 0.50475466 -0.036545083 0.49442661 -0.018326979 0.48449638 -0.0099225463 0.48499334
		 -0.027408473 0.48062843 -0.00057128136 0.48520821 0.009225619 0.48519018 0.018569872
		 0.48487186 0.026973819 0.48440096 -0.28423023 0.15960079 -0.22863582 0.14935489 -0.23990075
		 0.14966117 -0.24181572 0.14338543 -0.23058391 0.14298588 -0.023963021 0.47272012
		 -0.21771646 0.14192118 -0.25430298 0.14966117 -0.25241801 0.14338543 -0.26511261
		 0.14935489 -0.26309672 0.14298588 -0.27614132 0.14852795 0.031652391 0.4609997 -0.013204503
		 0.47483113 -0.012853057 0.46648866 0.021649448 0.47418615 0.021136265 0.46614826
		 4.551539e-005 0.47590679 -0.0077575636 0.47562709 -0.0072481069 0.46700263 5.0117909e-005
		 0.46721575 0.0084353033 0.47580996 0.0082707284 0.46715268 0.016225377 0.47520289
		 0.015531535 0.46675429 -0.2428081 0.13415457 -0.2304699 0.13375366 -0.21659695 0.13396665
		 -0.25147137 0.13415457 -0.26328537 0.13375366 -0.62782079 -0.039111141 0.52755696
		 0.10316867 0.022867927 0.4580645 -0.0085954173 0.45910156 -0.00019535763 0.45905545
		 0.0083720665 0.45906794 0.016648617 0.45911589 -0.30627713 0.082532361 -0.24114826
		 0.12890059 -0.31562722 0.06628751 -0.25304487 0.12890059 -0.26532388 0.12813374 -0.59714627
		 -0.05195906 -0.0007826963 0.45089227 -0.011471575 0.45228732 0.54374027 0.019678636
		 0.0089183208 0.45093474 -0.27587923 0.14192118 -0.59696674 -0.046365112 -0.022539372
		 0.46636552 -0.5183028 0.071413666 -0.58575976 -0.048890021 -0.58598942 -0.038017999
		 -0.48210108 0.017072439 -0.48231462 0.0037603788 -0.5855664 -0.05670125 -0.58556634
		 -0.060885075 -0.58576345 -0.0080916723 -0.58598942 -0.01879202 -0.48252439 0.059536733
		 -0.5855664 -3.1444662e-005 -0.48242319 0.04866432 -0.44030809 0.012380833 -0.59680051
		 -0.038133197 -0.47111836 0.0074445195 -0.2613039 0.20609167 0.029075077 0.52909154
		 -0.59680051 -0.037928067 0.012914353 0.52824414 -0.018931152 0.52919984 -0.62786978
		 -0.034871478 -0.47094432 -6.9405236e-005 -0.27883816 0.095386229 -0.0030052797 0.52829129
		 -0.2014918 0.17028596 -0.54978758 -0.06805864 -0.47114286 0.045347866 -0.47128886
		 0.03678555 -0.28100458 0.19104022 -0.59714615 -0.0047742571 -0.59714597 -0.0012788302
		 0.049965262 0.50404626 -0.54978758 0.0002933444 -0.59680104 -0.018812513 -0.59695739
		 -0.010851284 -0.54978758 -0.013046172 -0.54978758 -0.044652916 -0.31606001 0.036389522
		 0.48169798 0.090314731 0.47113279 0.074070051 -0.24051119 0.011896236 -0.62722838
		 -0.021306515 -0.44086161 0.034080204 -0.54978758 0.010800888 -0.26029593 0.11614371
		 0.46883929 0.044172011 -0.62722838 -0.021306515 0.030570865 0.47168773 -0.62778223
		 -0.043003339 -0.56229752 0.013779833 -0.4825241 -0.0055002072 -0.59680063 -0.018600136
		 -0.59680146 -0.018600136 -0.51830292 -0.017971672 -0.0082483133 0.43920329 -0.54978758
		 -0.073356502 -0.62709641 -0.013624481 -0.6271534 -0.01752867 -0.62709635 -0.012581301
		 -0.44099408 0.042805422 -0.4416413 0.03795065 -0.27687559 0.20643671 0.017244177
		 0.43368444;
	setAttr ".uvtk[250:493]" -0.23469597 0.10956296 -0.20938869 0.15960079 -0.23970391
		 0.11003482 -0.22935241 0.19117194 -0.2126072 0.19104022 -0.26424459 0.19117194 0.5068264
		 0.10282412 0.50020128 0.1032334 -0.5855664 0.0041517899 -0.59714627 -0.055454385
		 -0.23232161 0.20610693 -0.21674567 0.20646727 -0.22922246 0.21626115 -0.23981114
		 0.21672569 -0.25384054 0.2166934 -0.26442379 0.2161967 0.017520966 0.53971171 0.011634608
		 0.53934467 -0.0015026476 0.53945982 -0.0073837345 0.53994238 0.016811775 0.43344542
		 -0.25935096 0.10954376 -0.19602852 0.1906448 -0.58598953 -0.018420791 -0.25449723
		 0.11000332 0.52105683 0.10251722 -0.48210064 0.036964096 -0.023790874 0.45834631
		 -0.22808471 0.12809224 -0.54978758 -0.057992604 -0.27697301 0.13396665 0.024292741
		 0.45806921 -0.21748599 0.14852795 0.019089255 0.45250735 -0.014749253 0.45810735
		 -0.50579292 -0.015477219 0.039734941 0.48260951 0.054422051 0.51361603 -0.58598953
		 -0.038312428 -0.47094485 0.054106794 -0.54978758 0.016028808 -0.62778223 -0.043003347
		 -0.4712899 0.01725189 -0.59680063 -0.038133197 -0.19760905 0.18061388 0.045365401
		 0.49442661 0.16196062 -0.13060507 0.14135879 -0.11945171 0.15295579 -0.13754728 0.15371378
		 -0.11400144 0.14392318 -0.14318965 0.16616096 -0.11928858 0.14259194 -0.08669313
		 0.13527507 -0.087282255 0.14107631 -0.075772591 0.13320124 -0.076563984 0.13815875
		 -0.043781061 0.13012944 -0.037121564 0.14402357 -0.035026737 0.1362088 -0.029861793
		 0.12473167 -0.12129641 0.10214667 -0.1327042 0.11280297 -0.14010401 0.1143599 -0.11672211
		 0.12749536 -0.087234706 0.11978458 -0.086976007 0.12618253 -0.076585248 0.11828002
		 -0.07576783 0.12078255 -0.03566771 0.11434818 -0.035866607 0.11884309 -0.029619368
		 0.11245855 -0.029489901 0.11901602 -0.015580887 0.11111916 -0.014614543 -0.70225459
		 -0.034306943 -0.70790642 -0.036260284 0.16957584 -0.12402287 0.19040592 -0.130868
		 0.18226393 -0.090086199 0.17144692 -0.090271078 0.17309307 -0.13785365 0.17997633
		 -0.13957785 0.18171826 -0.07833752 0.17199275 -0.078523643 0.19465755 -0.14415069
		 0.18021092 -0.033901632 0.17385766 -0.034266345 0.17699803 -0.030175351 0.18229726
		 -0.03023218 0.17154166 -0.03023218 0.18341075 -0.016013324 0.17642635 -0.016013324
		 0.16944198 -0.016013324 0.18341075 -0.0034214519 0.17642635 -0.00010350165 0.16944198
		 -0.0034214519 0.15709899 -0.019408276 0.15709899 -0.025210245 -0.72321099 0.006502552
		 -0.7383337 0.06023087 -0.71618128 -0.013848364 -0.73010302 0.026450824 0.12503572
		 -0.14416152 0.14222783 -0.14286867 -0.70958233 -0.011568426 -0.72432613 0.028445994
		 -0.71228063 -0.025136171 -0.70991999 0.011094016 0.12624133 -0.030649526 0.13647354
		 -0.028501173 -0.72618496 0.064835258 0.13223526 -0.01565918 0.12561983 -0.01565918
		 -0.72756374 0.037823256 0.13326971 -0.0039696572 0.12636058 -0.00069204875 0.14441906
		 -0.024228763 0.14442728 -0.018810883 -0.7333408 0.035828691 -0.70181674 -0.021520149
		 0.11831157 -0.00060124666 0.11265966 -0.0025546297 0.57085192 0.22460184 0.56941277
		 0.25818071 0.53678203 0.25915596 0.5360055 0.22281455 0.58734858 0.25557938 0.54563028
		 0.16006552 0.5653677 0.15994313 0.54878014 0.13285905 0.56369853 0.13562627 0.54877216
		 0.062577337 0.56378525 0.062551431 0.55867791 0.037715852 0.54015744 0.036265217
		 0.57493263 0.040520739 0.55843282 0.014843593 0.54210532 0.014076476 0.57450449 0.021949966
		 0.55803943 -0.020835608 0.54105175 -0.021047674 0.59711671 0.01212133 0.60542494
		 0.024537412 0.57396358 -0.0090913186 -0.29730344 0.069489628 -0.24964714 0.12492564
		 0.51508504 0.25549129 0.4853937 0.23298883 0.51327366 0.21194269 0.53236753 0.14620946
		 -0.29205057 0.064973876 0.53450167 0.12606078 -0.30188841 0.035939541 0.53307849
		 0.064040586 -0.3127628 0.045868259 0.52718234 0.039780293 -0.25247112 0.10950299
		 -0.25847155 0.11466173 0.52604192 0.015884105 -0.27438059 0.096156701 0.53009462
		 -0.011626923 0.59780264 0.20895647 0.60384655 0.24276483 -0.28472069 0.073500894
		 0.62103528 0.23216784 -0.24013233 0.11674523 -0.28997374 0.078016445 0.58007067 0.14718153
		 0.73846209 -0.30691385 0.57799029 0.1301433 -0.26229468 0.085767008 0.57310325 0.066522211
		 0.70713013 -0.30691385 0.59330833 0.053732287 0.76365471 -0.0019894217 0.73209637
		 -0.010886149 0.75564009 -0.029861823 0.71666205 -0.014396966 0.70917493 -0.044984564
		 0.71287686 -0.11900599 0.73713958 -0.11934043 0.71410114 -0.14454611 0.73591536 -0.14485818
		 0.71674603 -0.23822357 0.73154533 -0.23879795 0.72407836 -0.24690491 0.7118398 -0.24677747
		 0.73596448 -0.24677747 0.7227962 -0.27867034 0.70713013 -0.27867034 0.73846209 -0.27867034
		 0.67944491 -0.25804162 0.67944491 -0.27105534 0.7227962 -0.31435597 -0.23421997 0.12951273
		 -0.24142519 0.13570771 0.30469653 -0.26989743 0.28794199 -0.37848994 0.25888616 -0.4085125
		 0.30129847 -0.28389555 0.32603002 -0.3731446 0.30112186 -0.39149475 0.35595697 -0.33347818
		 0.38155597 -0.27640191 0.39982045 -0.2480709 0.35330105 -0.32373777 0.35411283 -0.26526678
		 0.37568501 -0.24237725 0.33266181 -0.24772267 0.29509383 -0.26170629 0.31795084 -0.23553841
		 0.35499644 -0.21810631 0.25047156 -0.29170695 0.25780302 -0.34807843 0.2335227 -0.38036969
		 0.26059613 -0.30263638 0.28182378 -0.37220532 0.25892434 -0.39256063 0.32021359 -0.35882553
		 0.3235634 -0.35116783 0.17150274 -0.27340174 0.14172225 -0.26248485 0.13753133 -0.26542065
		 0.19133736 -0.28370482 0.09443301 -0.26028728 0.094279319 -0.33328187 0.045478638
		 -0.32618922 0.050180651 -0.27083623 0.13219537 -0.33174002 0.12763074 -0.3284944
		 0.15763888 -0.31518528 0.18422846 -0.31674793 -0.46127304 -0.30001849 -0.49924821
		 -0.30433786 -0.49299392 -0.31053576 -0.41712886 -0.30885115 -0.54156756 -0.31809223
		 -0.53131127 -0.35450941 -0.55907232 -0.35826433 -0.56542677 -0.3308906 -0.49772811
		 -0.36888376 -0.49623886 -0.36493146 -0.45946366 -0.37254623 -0.41215158 -0.36972883;
createNode polyTweakUV -n "polyTweakUV59";
	setAttr ".uopa" yes;
createNode lambert -n "Texture";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo8";
createNode polyAutoProj -n "polyAutoProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -0.22208600124591804 0 0 1;
	setAttr ".s" -type "double3" 1.1577094793319702 1.1577094793319702 1.1577094793319702 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyMapSewMove -n "polyMapSewMove69";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[1]" "e[5]" "e[8]";
createNode polyTweakUV -n "polyTweakUV60";
	setAttr ".uopa" yes;
	setAttr -s 10 ".uvtk[0:9]" -type "float2" -0.23232038 0.62121171 -0.15893567
		 0.13741903 0.22399072 0.14993106 0.19565271 0.55089289 0.52264816 -0.77865362 -0.14301541
		 -0.24318832 0.21345153 -0.19512013 0.18767929 -1.030615926 0.30327749 -0.51255268
		 -0.031541903 -0.69981563;
createNode checker -n "checker1";
createNode place2dTexture -n "place2dTexture2";
	setAttr ".re" -type "float2" 10 10 ;
createNode mia_material_x -n "mia_material_x4";
createNode shadingEngine -n "mia_material_x4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo9";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/rasmul2/Desktop/Experimental Game Design/fire.png";
createNode place2dTexture -n "place2dTexture3";
createNode lambert -n "lambert3";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr -s 15 ".dsm";
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo10";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/rasmul2/Desktop/Experimental Game Design/fire.png";
createNode place2dTexture -n "place2dTexture4";
createNode file -n "file3";
	setAttr ".ail" yes;
createNode place2dTexture -n "place2dTexture5";
createNode bump2d -n "bump2d1";
	setAttr ".bd" 0.18796992301940918;
	setAttr ".vc2" -type "float3" 9.9999997e-006 9.9999997e-006 0 ;
createNode polyPlane -n "polyPlane1";
	setAttr ".w" 26.926239742216062;
	setAttr ".h" 32.579314544505223;
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode polyAutoProj -n "polyAutoProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[248:249]" "f[252:263]" "f[266:275]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".s" -type "double3" 1.7977529168128967 1.7977529168128967 1.7977529168128967 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyTweakUV -n "polyTweakUV61";
	setAttr ".uopa" yes;
	setAttr -s 62 ".uvtk[494:555]" -type "float2" 0.36529338 -0.0067867041
		 0.28219709 -0.0075560808 0.27887571 -0.2006506 0.36372215 -0.2006506 0.19168299 -0.0085350871
		 0.19513556 -0.2006506 -0.24868286 -0.0042856634 -0.33352929 -0.0042856634 -0.33352929
		 -0.19194919 -0.22173411 -0.19194919 -0.41726953 -0.0042856634 -0.42421174 -0.19194919
		 -0.33352929 -0.41311878 -0.22173411 -0.34688878 -0.44532448 -0.34688878 -0.18050623
		 0.22045296 -0.18050623 0.40811652 -0.37262177 0.41311875 -0.37262177 0.21966976 -0.18050623
		 0.065513372 -0.34693843 0.065513372 -0.18050623 -0.00071650743 -0.34693843 -0.00071650743
		 0.019912928 0.0042856932 0.019912928 0.19194928 -0.17395091 0.19273254 -0.17395091
		 -0.00071650743 0.019912928 0.34688887 -0.1465193 0.34688887 0.019912928 0.41311875
		 -0.1465193 0.41311875 0.012828887 -0.0067867041 0.017610073 -0.21436638 0.10245663
		 -0.21436638 0.096183181 -0.0079185665 0.18619671 -0.21436638 0.17683846 -0.009409368
		 -0.18929917 -0.0042856634 -0.21624786 -0.19194919 -0.10445261 -0.19194919 -0.10445261
		 -0.0042856634 -0.21624786 -0.34688878 -0.10445261 -0.41311878 -0.013770401 -0.19194919
		 -0.020712614 -0.0042856634 0.0073426366 -0.34688878 0.44532448 0.19194925 0.24036735
		 0.20130518 0.24036735 -0.0032176673 0.44532448 0.0042856634 0.44532448 0.34688887
		 0.27889228 0.34688887 0.44532448 0.41311875 0.27889228 0.41311875 0.23427442 0.40561545
		 0.026694804 0.41311875 0.026694804 0.20859602 0.23427442 0.21795186 0.067842215 0.063012302
		 0.23427442 0.063012302 0.067842215 -0.0032175779 0.23427442 -0.0032175779;
createNode polyMapSewMove -n "polyMapSewMove70";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[519]" "e[523]";
createNode polyMapSewMove -n "polyMapSewMove71";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[494:495]";
createNode polyMapSewMove -n "polyMapSewMove72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[502]";
createNode polyMapSewMove -n "polyMapSewMove73";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[501]";
createNode polyMapSewMove -n "polyMapSewMove74";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[518]";
createNode polyMapSewMove -n "polyMapSewMove75";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[506]";
createNode polyMapSewMove -n "polyMapSewMove76";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[530]";
createNode polyTweakUV -n "polyTweakUV62";
	setAttr ".uopa" yes;
	setAttr -s 54 ".uvtk[494:547]" -type "float2" 0.38119537 -0.41327339 0.38132179
		 -0.41620046 0.38813084 -0.41608799 0.38803059 -0.4130972 0.38146389 -0.41938925 0.38823038
		 -0.41903925 0.35982811 -0.3988063 0.35683608 -0.3988063 0.35683608 -0.40542385 0.36077833
		 -0.40542385 0.35388321 -0.3988063 0.35363841 -0.40542385 0.35683608 -0.41322291 0.36077833
		 -0.41088745 0.35289389 -0.41088745 0.38802904 -0.39088139 0.38802904 -0.38426384
		 0.38125455 -0.38408744 0.38125455 -0.39090902 0.38802904 -0.39634499 0.38216019 -0.39634499
		 0.38802904 -0.39868024 0.38216013 -0.39868066 0.37685847 -0.39096957 0.38803011 -0.40647909
		 0.38119394 -0.40645242 0.36953861 -0.39129949 0.3880294 -0.40101549 0.38216048 -0.40101629
		 0.37685847 -0.39876851 0.37098956 -0.39876875 0.36948657 -0.41923243 0.37680751 -0.41912973
		 0.37683445 -0.41613793 0.36955291 -0.41629362 0.37686044 -0.41318506 0.36963165 -0.41345012
		 0.36192209 -0.3988063 0.36097187 -0.40542385 0.364914 -0.40542385 0.364914 -0.3988063
		 0.36097187 -0.41088745 0.364914 -0.41322291 0.36811173 -0.40542385 0.36786693 -0.3988063
		 0.36885631 -0.41088745 0.37685913 -0.40656745 0.36963171 -0.40623814 0.36953861 -0.38408744
		 0.37685847 -0.38435203 0.37685865 -0.40110385 0.37098986 -0.40110433 0.37685847 -0.39643317
		 0.37098956 -0.39643317;
createNode polyPlanarProj -n "polyPlanarProj9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[250:251]" "f[264:265]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.053784757852554321 0.61307045817375183 0.53597497940063477 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1.7977529168128967 0.58712661266326904 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV63";
	setAttr ".uopa" yes;
	setAttr -s 13 ".uvtk";
	setAttr ".uvtk[548]" -type "float2" 0.8482917 -0.16694582 ;
	setAttr ".uvtk[549]" -type "float2" 0.69428146 0.12143032 ;
	setAttr ".uvtk[550]" -type "float2" 0.69515538 -0.73151684 ;
	setAttr ".uvtk[551]" -type "float2" 0.81333131 -0.83816797 ;
	setAttr ".uvtk[552]" -type "float2" 0.5402711 -0.16694582 ;
	setAttr ".uvtk[553]" -type "float2" 0.57416373 -0.83816808 ;
	setAttr ".uvtk[554]" -type "float2" -0.081196263 -0.16694582 ;
	setAttr ".uvtk[555]" -type "float2" -0.081336811 -0.80084139 ;
	setAttr ".uvtk[556]" -type "float2" 0.061445989 -0.7475158 ;
	setAttr ".uvtk[557]" -type "float2" 0.072814032 0.12143032 ;
	setAttr ".uvtk[558]" -type "float2" 0.17528334 -0.80084139 ;
	setAttr ".uvtk[559]" -type "float2" 0.22682449 -0.16694582 ;
createNode polyMapDel -n "polyMapDel17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
createNode polyCopyUV -n "polyCopyUV6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:29]";
	setAttr ".uvi" -type "string" "uvSet";
createNode polyMapDel -n "polyMapDel18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:12]" "f[14:29]";
createNode polyCopyUV -n "polyCopyUV7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "f[0:12]" "f[14:29]";
	setAttr ".uvi" -type "string" "FullSet";
createNode polyNormal -n "polyNormal1";
	setAttr ".ics" -type "componentList" 2 "f[337]" "f[342]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal2";
	setAttr ".ics" -type "componentList" 3 "f[79]" "f[174]" "f[180]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal3";
	setAttr ".ics" -type "componentList" 5 "f[338]" "f[345:346]" "f[350]" "f[354]" "f[357]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal4";
	setAttr ".ics" -type "componentList" 4 "f[336]" "f[339]" "f[349]" "f[351]";
	setAttr ".unm" no;
createNode polyTweakUV -n "polyTweakUV33";
	setAttr ".uopa" yes;
	setAttr -s 239 ".uvtk[0:238]" -type "float2" -0.35847846 -0.28484008 -0.37874162
		 -0.26960993 -0.37585735 -0.30098251 -0.35275525 -0.30402923 -0.39572507 -0.27147081
		 -0.39707699 -0.30171582 -0.4149743 -0.28928882 -0.41928983 -0.30421385 -0.35442945
		 -0.33313751 -0.37680781 -0.33137581 -0.39664257 -0.31561103 -0.3957819 -0.33111238
		 -0.41742629 -0.33250588 -0.37981528 -0.35896862 -0.36199033 -0.35415339 -0.3926225
		 -0.357916 -0.41098958 -0.35098419 -0.3760469 -0.37346187 -0.35375226 -0.36661851
		 -0.39661252 -0.37416747 -0.41918632 -0.36089873 -0.34405008 -0.37369168 -0.37143892
		 -0.38438106 0.18265651 -0.13887911 0.18990177 -0.11891337 -0.40259385 -0.38413638
		 0.18359514 -0.15960696 -0.42938909 -0.36813986 0.19237331 -0.17854978 0.20463942
		 -0.13998683 0.2053699 -0.12525438 0.20445921 -0.157267 0.20582962 -0.17229818 0.22171368
		 -0.13850181 0.22085114 -0.11656041 0.22023098 -0.15718548 0.22114395 -0.18146305
		 -0.3451449 -0.27602595 -0.37867963 -0.25562784 -0.37878588 -0.2625744 -0.39900449
		 -0.25790381 -0.39724019 -0.26464406 -0.42765158 -0.28265896 -0.44548118 -0.30330637
		 -0.44287238 -0.29250258 0.23567832 -0.19765481 -0.43435654 -0.30434927 0.21413879
		 -0.19136448 -0.44292247 -0.33160621 -0.43133625 -0.33265179 0.23756787 -0.083941497
		 0.25773731 -0.080064416 -0.33595946 -0.30431947 0.23749569 -0.097527735 0.21420547
		 -0.10473732 -0.32494166 -0.33226472 -0.33950073 -0.33307898 0.23608306 -0.14015608
		 0.23738271 -0.10861572 0.26451999 -0.12781501 0.25683072 -0.1033004 0.27676982 -0.099573895
		 0.27318215 -0.089369155 0.2790972 -0.079590484 0.23701711 -0.18410826 0.24398421
		 -0.16655518 0.25235263 -0.19234714 0.25660431 -0.18276814 0.26473597 -0.20091094
		 -0.33354947 -0.28427508 -0.32227501 -0.30146131 0.23725717 -0.20945877 0.2489665
		 -0.20831725 0.21080661 -0.2078048 0.18386345 -0.19099821 0.16998333 -0.16373326 0.16827986
		 -0.13709012 0.1794869 -0.10672328 0.20981821 -0.085792318 0.33650595 0.66855669 -0.12060174
		 0.70179743 -0.11437249 0.71404636 0.33330929 0.67958653 0.33683863 0.65009469 -0.12083197
		 0.68129492 0.3341544 0.63906467 -0.11517699 0.66904587 0.29054672 0.65009469 -0.059716754
		 0.68129492 -0.065615624 0.66904587 0.29337934 0.63906467 0.29088157 0.66855669 -0.05997267
		 0.70179743 0.29423797 0.67958653 -0.06644927 0.71404636 0.30640945 0.68701875 -0.081077889
		 0.72230005 0.32126933 0.68701875 -0.099710301 0.72230005 -0.082868695 0.71907169
		 -0.086294822 0.70299143 -0.067590512 0.70060962 -0.070773512 0.71163958 -0.097290404
		 0.71907169 -0.096412003 0.70309418 -0.10938759 0.71163958 -0.11259179 0.70060962
		 -0.084907293 0.68149608 -0.067400083 0.68214732 -0.11276678 0.68214732 -0.096322834
		 0.68160671 -0.082504697 0.66368538 -0.070355266 0.67111754 -0.097628422 0.66368538
		 -0.10968718 0.67111754 0.30504185 0.66955739 0.32250804 0.66955739 0.30488685 0.64909357
		 0.32268289 0.64909357 0.30606309 0.63163251 0.32173476 0.63163251 0.30918258 0.62613368
		 0.30578703 0.63163251 -0.088244565 0.65786827 -0.096613906 0.65926856 0.32401314
		 0.63163251 0.32400441 0.62754649 0.31176513 0.62659228 0.32031879 0.62799215 0.31841922
		 0.62035781 0.32600811 0.62948322 -0.10376553 0.6615361 -0.10897626 0.66446245 0.33294091
		 0.63240939 0.3356775 0.62960213 0.32725769 0.62948322 0.3330251 0.62543684 0.29727039
		 0.62537104 -0.073588341 0.65742397 0.28653711 0.63699305 -0.081917092 0.66368538
		 -0.086571366 0.65818697 -0.095235161 0.65241063 -0.09961056 0.6595996 -0.10076783
		 0.66368538 -0.10293735 0.6615361 -0.10949825 0.65748966 -0.11137328 0.66165519 0.2809754
		 0.64924186 0.28149322 0.66974443 0.28858322 0.68199337 0.30370331 0.69024706 0.32318726
		 0.69024706 0.33816844 0.68199337 0.34546614 0.66974443 0.34597969 0.64924186 0.34030229
		 0.63699305 -0.12090014 0.51478714 -0.033060458 0.6455195 -0.36809987 0.66447443 -0.46002507
		 0.52323544 -0.12014796 0.29596379 -0.46119207 0.28682595 -0.031221243 0.16523121
		 -0.37235981 0.14558725 0.6232329 0.29596379 0.57502365 0.16523121 0.65593159 0.14644422
		 0.57543892 0.28682595 0.62378126 0.51478714 0.57423812 0.52323544 0.57643396 0.6455195
		 0.47765312 0.66447443 0.3784605 0.73361081 0.22703548 0.75964493 0.12944563 0.73361081
		 -0.1137713 0.75964493 0.28250077 0.73275381 0.49559548 0.6446625 0.59702408 0.51393014
		 0.34471777 0.54243022 -0.027336039 0.73275381 0.012563214 0.54504293 -0.27605096
		 0.6446625 -0.33731601 0.51393014 0.59794897 0.29510659 0.35397321 0.28353894 0.013321973
		 0.28301203 -0.33826599 0.29510659 0.49773192 0.16437405 0.28370586 0.076282896 -0.028454021
		 0.076282896 -0.27820826 0.16437405 0.34416988 0.52665001 0.031722374 0.52665001 0.34378874
		 0.28410083 0.03213479 0.28410083 0.37695313 0.077140033 0.13069294 0.077140033 0.25145161
		 -0.029814707 0.33929574 0.00266201 0.29073367 -0.02117406 0.22398119 0.077140033
		 0.02640046 -0.012657204 0.14584994 0.019819135 0.45156643 0.077140033 0.37228474
		 0.01267284 0.3853561 -0.086415939 -0.011280747 0.12119689 0.096813597 0.062277831
		 -0.37586716 0.10694265 0.039636001 0.12119689 -0.13237402 0.061420798 -0.30045414
		 0.12033971 0.15054768 0.062277831 0.11195029 0.022149587 0.039808989 0.12119689 0.65714586
		 0.037495047 -0.34434173 0.12033971 0.015949192 0.10779981 0.012077837 0.10779981
		 -0.24319349 0.021292556 -0.18085578 0.061420798 -0.10431436 0.076282896 -0.017329572
		 -0.022031194 0.11065764 -0.087273099 0.11939792 0.011815595 0.21013628 0.076282896
		 0.46102858 0.03663801 0.48308864 0.14558725 0.018621136 0.14644422 -0.047535609 0.28768325
		 -0.048591021 0.52409285 0.014276218 0.6653316 0.20701523 0.76050222 0.46929213 0.76050222
		 0.65832072 0.6653316 0.72597408 0.52409285 0.72522503 0.28768325;
createNode polyMapCut -n "polyMapCut13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[320]" "e[322]" "e[324]" "e[326]" "e[328]" "e[330]" "e[332]" "e[334]" "e[336]" "e[338]" "e[349:359]";
createNode polyPlanarProj -n "polyPlanarProj6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[46:71]" "f[98:101]" "f[122:137]" "f[155:164]" "f[167:176]";
	setAttr ".ix" -type "matrix" -0.76249569608391388 0 -9.3378791357279816e-017 0 0 0.76249569608391388 0 0
		 9.3378791357279816e-017 0 -0.76249569608391388 0 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 3.6064447164535522 12.574454307556152 -1.919364407658577 ;
	setAttr ".ro" -type "double3" 0 90 0 ;
	setAttr ".ps" -type "double2" 3.7648364007472992 4.5418319702148437 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV32";
	setAttr ".uopa" yes;
	setAttr -s 157 ".uvtk[0:156]" -type "float2" 0.63175136 0.099649981 0.57054001
		 0.14565717 0.57925296 0.050886713 0.64903975 0.041683286 0.51923656 0.14003608 0.51515269
		 0.048671719 0.4610886 0.086211383 0.44805223 0.041125335 0.64398277 -0.046247069
		 0.57638186 -0.040925682 0.51646519 0.0066966615 0.5190652 -0.040129974 0.45368141
		 -0.044339444 0.56729686 -0.12427821 0.62114275 -0.10973223 0.52860892 -0.12109833
		 0.47312567 -0.10015874 0.57868057 -0.16805919 0.64602816 -0.14738704 0.51655591 -0.17019075
		 0.44836515 -0.13010871 0.67533678 -0.16875367 0.59260035 -0.20104428 -0.098525293
		 0.21272829 -0.23638561 0.19925964 0.49848762 -0.200305 0.020485826 0.2757557 0.41754431
		 -0.15198277 0.10667659 0.38040936 -0.15467136 0.3011314 -0.24324237 0.26831168 -0.052711062
		 0.34891957 0.031626586 0.4090533 -0.21204734 0.37495881 -0.33839998 0.30322024 -0.098137252
		 0.41031417 0.041786924 0.49835294 0.67202926 0.12627575 0.57072777 0.18789446 0.57040638
		 0.16691031 0.50932986 0.18101944 0.5146597 0.16065829 0.4227927 0.10623848 0.36893302
		 0.043866813 0.37681365 0.076502696 0.095422208 0.66530329 0.40253875 0.040716439
		 0.11987868 0.52087915 0.37666237 -0.041621033 0.41166186 -0.044779807 -0.57753628
		 0.36316368 -0.65777719 0.45300901 0.69977695 0.040806614 -0.49757028 0.40010545 -0.38887087
		 0.27257341 0.73305935 -0.043611031 0.68907946 -0.046070408 -0.24328704 0.48444238
		 -0.4321543 0.40761548 -0.39677837 0.63174009 -0.51878285 0.51108181 -0.59748328 0.62049878
		 -0.6471678 0.57074028 -0.72143245 0.57868958 0.012079757 0.62500775 -0.11082411 0.62334752
		 0.016743351 0.74400467 -0.05160873 0.74179924 0.031727515 0.84169888 0.70705694 0.10135665
		 0.74111485 0.049440555 0.16021989 0.71003896 0.12014848 0.7702108 0.22589101 0.53918719
		 0.20400964 0.31684026 0.083501391 0.16089118 -0.068057016 0.075000681 -0.27826867
		 0.043116495 -0.48758814 0.18760079 -0.68634319 -0.10287245 -0.40253764 -0.088506669
		 -0.32671273 0.051847488 -0.5948472 0.023513168 -0.6872915 -0.31442022 -0.40188169
		 -0.32343534 -0.59725523 -0.44080579 -0.32441983 -0.46378949 0.39304718 -0.31442022
		 0.47718328 -0.32343534 0.40080926 -0.46378949 0.29918623 -0.44080579 0.39209309 -0.10287245
		 0.47791231 -0.088506669 0.29673913 0.023513168 0.40318513 0.051847488 0.031505525
		 0.10867533 0.18700403 0.14642239 -0.32698068 0.10867533 -0.11097471 0.14642239 0.17683899
		 0.10943016 0.14373273 -0.074824706 0.44923878 -0.10211761 0.3759236 0.024268001 -0.098198384
		 0.10943016 -0.12858848 -0.073646635 -0.29426968 0.024268001 -0.37092692 -0.10211761
		 0.16238406 -0.32113057 0.44869608 -0.31366536 -0.37042809 -0.31366536 -0.11822987
		 -0.31986186 0.17580181 -0.52521312 0.37473118 -0.44005099 -0.097235717 -0.52521312
		 -0.29341608 -0.44005099 0.079918861 -0.09140414 -0.36388332 -0.09140414 0.080360524
		 -0.32588851 -0.36438164 -0.32588851 0.032492436 -0.52596796 -0.32830739 -0.52596796
		 -0.10397179 -0.58897346 0.035911124 -0.52596796 0.060283914 -0.59186691 -0.072922364
		 -0.575822 -0.33214712 -0.52596796 -0.30329421 -0.57278478 -0.11222294 -0.58372188
		 -0.29365724 -0.5676769 -0.2663027 -0.65515745 -0.43881172 -0.5505951 -0.18200843
		 -0.54984021 -0.25792995 -0.51630944 -0.55147845 -0.51706421 -0.59626806 -0.54923105
		 -0.44332641 -0.5505951 -0.57518756 -0.59696013 0.22301021 -0.59771335 0.31093043
		 -0.59695852 0.36619863 -0.46454436 0.17183876 -0.52521312 0.054896474 -0.58821863
		 -0.056420654 -0.65440255 -0.065025657 -0.57202989 -0.090556018 -0.52521312 -0.18535212
		 -0.54984021 -0.28303304 -0.59620535 -0.29121095 -0.54847622 0.47523353 -0.32419017
		 0.47375771 -0.089261517 0.36036733 0.051092669 0.059406914 0.14566755 -0.34719816
		 0.14566755 -0.64741617 0.051092669 -0.76179123 -0.089261517 -0.76325488 -0.32419017
		 -0.65349734 -0.46454436;
createNode polyMapCut -n "polyMapCut12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[299]" "e[301]" "e[303]" "e[305]" "e[307]" "e[309]" "e[311]" "e[313]" "e[315]" "e[317]" "e[365:373]";
createNode polyPlanarProj -n "polyPlanarProj5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[72:97]" "f[102:121]" "f[145:154]" "f[177:185]";
	setAttr ".ix" -type "matrix" -0.76249569608391388 0 -9.3378791357279816e-017 0 0 0.76249569608391388 0 0
		 9.3378791357279816e-017 0 -0.76249569608391388 0 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" -3.4331208467483521 12.463723182678223 -1.7281982451677322 ;
	setAttr ".ro" -type "double3" 0 59.999999999999993 0 ;
	setAttr ".ps" -type "double2" 3.7648364007472992 4.4423503875732422 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV31";
	setAttr ".uopa" yes;
	setAttr -s 62 ".uvtk[17:78]" -type "float2" -0.0041740006 -0.0075658862
		 -0.00020917531 0.0035559249 -0.0044243536 0.0060660685 0.00034243782 0.0019403566
		 -0.0022981588 0.039068729 -0.018495834 0.047165785 0.0065840483 -0.26727602 0.018571258
		 -0.25788859 0.0071831401 0.055690084 -0.02066642 -0.26174241 0.0070636934 0.040027551
		 -0.036778659 -0.23711911 0.008908093 -0.25115296 -0.00035494566 -0.23145652 -0.016274214
		 -0.24351546 -0.014970422 -0.21952412 0.0015440583 -0.16961175 0.015485525 -0.1485067
		 -0.00012928247 -0.1485067 -0.040064454 -0.1485067 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 -0.1126464 -0.14850673 0 0 -0.069396973 -0.17264417 0 0 0 0 0.15968812 -0.1485067
		 0.22714674 -0.1485067 0 0 0.093330741 -0.1485067 0.045808196 -0.17603806 0 0 0 0
		 -0.026849568 -0.14850673 0.046252251 -0.14850673 0.0051320195 -0.1485067 0.079676747
		 -0.1485067 0.09738493 -0.1485067 0.12905502 -0.1485067 0.16202259 -0.1485067 -0.053231627
		 -0.14850673 -0.0033288002 -0.1485067 -0.088802934 -0.1485067 -0.060142159 -0.1485067
		 -0.12272227 -0.1485067 0 0 0 0 -0.16855508 -0.1485067 -0.18237743 -0.1485067 -0.15215543
		 -0.1485067 -0.10222203 -0.1485067 -0.041978121 -0.1485067 0.015306592 -0.1485067
		 0.083125651 -0.1485067 0.14400482 -0.1485067;
createNode deleteComponent -n "deleteComponent51";
	setAttr ".dc" -type "componentList" 4 "vtx[56:58]" "vtx[61]" "vtx[63]" "vtx[174]";
createNode polyTweakUV -n "polyTweakUV30";
	setAttr ".uopa" yes;
	setAttr -s 47 ".uvtk";
	setAttr ".uvtk[0]" -type "float2" -0.031111687 0.44131461 ;
	setAttr ".uvtk[1]" -type "float2" -0.0038354844 0.44131458 ;
	setAttr ".uvtk[2]" -type "float2" -0.0041934103 0.44131461 ;
	setAttr ".uvtk[3]" -type "float2" -0.031074397 0.44131461 ;
	setAttr ".uvtk[4]" -type "float2" 0.016298473 0.44131461 ;
	setAttr ".uvtk[5]" -type "float2" 0.0075891316 0.44131455 ;
	setAttr ".uvtk[6]" -type "float2" 0.043138444 0.44131458 ;
	setAttr ".uvtk[7]" -type "float2" 0.044024348 0.44131455 ;
	setAttr ".uvtk[8]" -type "float2" -0.018700402 0.44131461 ;
	setAttr ".uvtk[9]" -type "float2" -0.0032820851 0.44131458 ;
	setAttr ".uvtk[10]" -type "float2" -0.00073292851 0.44131458 ;
	setAttr ".uvtk[11]" -type "float2" 0.0059652627 0.44131458 ;
	setAttr ".uvtk[12]" -type "float2" 0.0019463599 0.44131458 ;
	setAttr ".uvtk[13]" -type "float2" 0.029549539 0.44131458 ;
	setAttr ".uvtk[14]" -type "float2" 0.0003939569 0.44131458 ;
	setAttr ".uvtk[15]" -type "float2" -0.0084981471 0.44131458 ;
	setAttr ".uvtk[16]" -type "float2" -0.00068369508 0.44131458 ;
	setAttr ".uvtk[17]" -type "float2" 0.017595947 0.44131458 ;
	setAttr ".uvtk[18]" -type "float2" -0.0035470277 0.44131458 ;
	setAttr ".uvtk[19]" -type "float2" -0.0087286681 0.44131452 ;
	setAttr ".uvtk[20]" -type "float2" -0.038352352 0.44131452 ;
	setAttr ".uvtk[21]" -type "float2" -0.021835279 0.44131452 ;
	setAttr ".uvtk[22]" -type "float2" 0.0079190135 0.44131452 ;
	setAttr ".uvtk[23]" -type "float2" 0.017819524 0.44131458 ;
	setAttr ".uvtk[24]" -type "float2" 0.050480604 0.44131458 ;
	setAttr ".uvtk[25]" -type "float2" -0.08621259 0.44131458 ;
	setAttr ".uvtk[26]" -type "float2" -0.019678056 0.44131458 ;
	setAttr ".uvtk[29]" -type "float2" 0.038413942 0.44131458 ;
	setAttr ".uvtk[31]" -type "float2" 0.096019328 0.44131452 ;
	setAttr ".uvtk[41]" -type "float2" -0.05583147 0.44131458 ;
	setAttr ".uvtk[42]" -type "float2" -0.084359363 0.44131458 ;
	setAttr ".uvtk[43]" -type "float2" -0.011007667 0.44131458 ;
	setAttr ".uvtk[44]" -type "float2" -0.0070011467 0.44131458 ;
	setAttr ".uvtk[45]" -type "float2" 0.04246825 0.44131458 ;
	setAttr ".uvtk[46]" -type "float2" 0.028673828 0.44131458 ;
	setAttr ".uvtk[47]" -type "float2" 0.097461909 0.44131455 ;
	setAttr ".uvtk[48]" -type "float2" 0.15551233 0.44131461 ;
	setAttr ".uvtk[49]" -type "float2" 0.16072077 0.44131458 ;
	setAttr ".uvtk[51]" -type "float2" 0.095950097 0.44131455 ;
	setAttr ".uvtk[53]" -type "float2" 0.1338011 0.44131458 ;
	setAttr ".uvtk[54]" -type "float2" 0.07179305 0.44131458 ;
	setAttr ".uvtk[58]" -type "float2" -0.08473824 0.44131455 ;
	setAttr ".uvtk[61]" -type "float2" -0.13868946 0.44131458 ;
	setAttr ".uvtk[62]" -type "float2" -0.059985958 0.44131458 ;
	setAttr ".uvtk[75]" -type "float2" -0.14462171 0.44131455 ;
	setAttr ".uvtk[76]" -type "float2" -0.1376716 0.44131458 ;
	setAttr ".uvtk[77]" -type "float2" -0.15916239 0.44131455 ;
createNode polyMapDel -n "polyMapDel7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[46:71]" "f[98:101]" "f[122:137]" "f[155:164]" "f[167:176]";
createNode polyMapDel -n "polyMapDel6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "f[72:97]" "f[102:121]" "f[145:154]" "f[177:185]";
createNode polyTweakUV -n "polyTweakUV29";
	setAttr ".uopa" yes;
	setAttr -s 224 ".uvtk[0:223]" -type "float2" -0.58318365 -0.068620048
		 -0.36213416 -0.03186949 -0.40209672 -0.10757216 -0.66428041 -0.11492384 -0.17028919
		 -0.036359664 -0.13015492 -0.10934152 0.037458595 -0.079354852 0.096405976 -0.11536961
		 -0.67041928 -0.18516266 -0.39968133 -0.1422386 -0.39698687 -0.18091193 -0.13238963
		 -0.14287123 -0.13488273 -0.18027632 0.10492921 -0.18363886 -0.35713512 -0.24749394
		 -0.5879975 -0.23587461 -0.17325985 -0.24495392 0.042640958 -0.2282273 -0.36784348
		 -0.26665625 -0.37841618 -0.28557605 -0.63211745 -0.26449174 -0.61019802 -0.25027433
		 -0.1619224 -0.26343173 -0.15072833 -0.28167555 0.078548096 -0.2513538 -0.64901727
		 -0.26696253 -0.38270941 -0.28942809 0.12105245 -0.32475364 0.077801719 -0.30304366
		 -0.14370723 -0.28533387 0.15986843 -0.3208532 0.096962363 -0.2531718 0.19895525 -0.28990573
		 0.12468042 -0.28308773 0.085323237 -0.27122441 0.15602729 -0.28054777 0.19283387
		 -0.26357713 0.11807058 -0.2174872 0.070855841 -0.21259739 0.16246665 -0.21616584
		 0.20463431 -0.20841749 -0.61354858 -0.057917994 -0.64352894 -0.047351364 -0.34572157
		 0.0018696744 -0.35387561 -0.014892487 -0.18696606 -0.0036221133 -0.17868075 -0.019886622
		 0.085923009 -0.063357174 0.19832782 -0.11317965 0.14884454 -0.08711008 0.21387206
		 -0.15876262 0.18447068 -0.11569624 0.21647021 -0.22067812 0.21445738 -0.1814674 0.19996643
		 -0.18399061 0.051416975 -0.14974958 0.053290166 -0.14363381 0.069789074 -0.10827897
		 -0.77263051 -0.11562414 0.056926019 -0.15048006 0.054789785 -0.22266094 -0.79850137
		 -0.183057 -0.78218472 -0.18502155 0.11039144 -0.16574903 0.064331003 -0.16038153
		 0.093757831 -0.090749308 0.065243311 -0.11162741 0.063529991 -0.062288716 0.051922992
		 -0.070787273 0.04187749 -0.056065332 0.20560533 -0.15945716 0.18376084 -0.13957827
		 0.21086498 -0.12019673 0.19953099 -0.10988256 0.21758775 -0.090072967 0.092730649
		 0.11505592 0.092133217 0.15009952 0.17081419 0.1554102 0.20135452 0.11755035 0.092730649
		 0.056399088 0.20135452 0.05417937 0.092133217 0.021355461 0.17081419 0.016319513
		 -0.19905208 0.056399088 -0.14790961 0.021355461 -0.08852002 0.016319513 -0.11387758
		 0.05417937 -0.19905208 0.11505592 -0.11387758 0.11755035 -0.14790961 0.15009952 -0.08852002
		 0.1554102 -0.098860912 0.17371285 -0.0091006607 0.18092126 -0.0016000668 0.17371285
		 0.095976911 0.18092126 0.072278023 0.17371285 -0.021455264 0.15009952 -0.022052694
		 0.11505592 0.16953887 0.17371285 0.21858758 0.15009952 0.26973003 0.11505592 -0.022052694
		 0.056399088 0.26973003 0.056399088 -0.021455264 0.021355461 0.072278023 -0.0022578829
		 0.16953887 -0.0022578829 0.21858758 0.021355461 -0.19362387 0.11823583 -0.072400354
		 0.11823583 -0.19362387 0.053219143 -0.072400354 0.053219143 -0.098860912 -0.0022578829
		 -0.0016000668 -0.0022578829 0.31852421 0.093567565 0.20469251 0.09734156 0.23634154
		 0.13625824 0.31912136 0.12861116 0.31852421 0.034910738 0.20469251 0.032201741 0.31912136
		 -0.0001329315 0.23634154 -0.0067149927 0.61030668 0.034910738 0.52872372 0.032201741
		 0.50291479 -0.0067149927 0.55916429 -0.0001329315 0.61030668 0.093567565 0.52872372
		 0.09734156 0.55916429 0.12861116 0.50291479 0.13625824 0.51011568 0.15222451 0.42105195
		 0.16248146 0.41285485 0.15222451 0.31304154 0.16248146 0.33897662 0.15222451 0.43330735
		 0.093567565 0.43271005 0.12861116 0.24171577 0.15222451 0.19266708 0.12861116 0.14152475
		 0.093567565 0.43330735 0.034910738 0.14152475 0.034910738 0.33897662 -0.023746274
		 0.43271005 -0.0001329315 0.24171571 -0.023746274 0.19266708 -0.0001329315 0.60487849
		 0.09674748 0.48365501 0.09674748 0.60487849 0.031730793 0.48365501 0.031730793 0.5101155
		 -0.023746274 0.41285485 -0.023746274 0.025497032 -0.030927662 -0.023393199 -0.022222143
		 0.058388591 -0.028611546 0.092989139 -0.0022578829 0.094071157 -0.026098818 0.045181125
		 -0.017393297 -0.0095121209 -0.0022578829 0.014714738 -0.019538702 0.37454757 -0.041216139
		 0.41857645 -0.023746274 0.33931273 -0.042227689 0.29046017 -0.03777881 0.32057518
		 -0.023746274 0.32708719 -0.036727324 0.42527282 -0.039759964 0.37642032 -0.035311155
		 0.34447491 -0.059567265 0.29909575 -0.030574678 0.26488385 -0.030574678 0.24557224
		 -0.021277508 0.29536021 -0.021277508 0.25695306 -0.030196588 0.33226535 -0.030574678
		 0.26801515 -0.043430649 0.48679119 -0.043639418 0.044511996 -0.046100024 0.11272049
		 0.0095518101 0.050027803 -0.0062417896 0.16876218 0.0059605781 0.15902321 0.0095518101
		 0.16449258 -0.0062417896 0.19729838 0.0095518101 0.10810114 -0.0062417896 0.16106442
		 -0.01699833 0.15918535 0.0095518101 -0.048343781 -0.012884898 0.16106442 -0.01699833
		 0.10810114 -0.0062417896 0.092989139 -0.0022578829 0.058388591 -0.028611546 0.044511996
		 -0.046100024 0.014714738 -0.019538702 -0.0095121209 -0.0022578829 -0.048343781 -0.012884898
		 -0.08852002 0.016319513 -0.77589792 -0.1026116 -0.67911822 -0.067256764 -0.78688574
		 -0.10872737 0.21937518 -0.15420187 0.21093935 -0.12813228 0.17081419 0.016319513
		 0.20135452 0.05417937 0.20135452 0.11755035 0.17081419 0.1554102 0.095976911 0.18092126
		 -0.0091006607 0.18092126 -0.08852002 0.1554102 -0.11387758 0.11755035 -0.11387758
		 0.05417937 0.22212496 -0.22248961 0.2020945 -0.29419401 0.16106538 -0.32635605 0.12032054
		 -0.33045033 0.074920654 -0.30798474 0.049436759 -0.22407919 0.2409696 0.032840826
		 0.14593233 0.033192594 0.13740914 0.10146184 0.22547384 0.10113521 0.27606612 0.12339595
		 0.2699272 0.053157125 0.16771601 0.12269565 0.15816179 0.053298246;
createNode polyMapCut -n "polyMapCut11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 33 "e[12]" "e[62:63]" "e[69]" "e[95]" "e[100]" "e[106]" "e[109]" "e[148]" "e[151]" "e[155:156]" "e[209]" "e[213:214]" "e[217]" "e[289]" "e[291]" "e[293]" "e[295]" "e[297]" "e[299]" "e[301]" "e[325]" "e[327]" "e[329]" "e[331]" "e[333]" "e[335]" "e[337]" "e[339]" "e[341]" "e[343]" "e[345]" "e[347:348]" "e[356:364]";
createNode polyPlanarProj -n "polyPlanarProj4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:185]";
	setAttr ".ix" -type "matrix" -0.76249569608391388 0 -9.3378791357279816e-017 0 0 0.76249569608391388 0 0
		 9.3378791357279816e-017 0 -0.76249569608391388 0 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.089827060699462891 12.031687259674072 -0.67397117614746094 ;
	setAttr ".ps" -type "double2" 9.7421045303344727 5.8277616500854492 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweak -n "polyTweak72";
	setAttr ".uopa" yes;
	setAttr -s 35 ".tk";
	setAttr ".tk[133]" -type "float3" -0.073444881 0.26857415 0.17064494 ;
	setAttr ".tk[134]" -type "float3" 0.089362778 0.26911938 -0.13045296 ;
	setAttr ".tk[141]" -type "float3" -0.05121848 0.18913257 -0.13398698 ;
	setAttr ".tk[142]" -type "float3" -0.17516787 -0.098796591 -0.0017167192 ;
	setAttr ".tk[143]" -type "float3" -0.17927946 -0.0064738318 -0.0066001611 ;
	setAttr ".tk[144]" -type "float3" -0.12636629 0.097742975 -0.0068761795 ;
	setAttr ".tk[145]" -type "float3" -0.032100756 0.12564681 -0.0072903722 ;
	setAttr ".tk[146]" -type "float3" 0.052499242 0.12056144 -0.0072659575 ;
	setAttr ".tk[147]" -type "float3" 0.1376895 0.080613837 -0.0067616245 ;
	setAttr ".tk[148]" -type "float3" 0.17927946 -0.0084481724 -0.0045409766 ;
	setAttr ".tk[149]" -type "float3" 0.17357007 -0.093266517 -0.00061787665 ;
	setAttr ".tk[150]" -type "float3" -0.081677034 0.23401634 0.17356454 ;
	setAttr ".tk[151]" -type "float3" -0.097015582 0.17269944 0.18970308 ;
	setAttr ".tk[152]" -type "float3" -0.12056798 0.071077168 0.22920287 ;
	setAttr ".tk[153]" -type "float3" -0.12056798 -0.099021122 0.22920287 ;
	setAttr ".tk[154]" -type "float3" -0.097015582 -0.20064338 0.18970308 ;
	setAttr ".tk[155]" -type "float3" -0.039937381 -0.26911938 0.076533511 ;
	setAttr ".tk[156]" -type "float3" 0.040441293 -0.26911938 -0.076268427 ;
	setAttr ".tk[157]" -type "float3" 0.10136151 -0.20064338 -0.18741696 ;
	setAttr ".tk[158]" -type "float3" 0.12056796 -0.099021122 -0.2292029 ;
	setAttr ".tk[159]" -type "float3" 0.12056796 0.071077168 -0.2292029 ;
	setAttr ".tk[160]" -type "float3" 0.10136151 0.17269944 -0.18741696 ;
	setAttr ".tk[161]" -type "float3" -0.073565513 0.13213219 -0.13635157 ;
	setAttr ".tk[162]" -type "float3" -0.087669961 0.058238428 -0.1666629 ;
	setAttr ".tk[163]" -type "float3" -0.087669961 -0.065447077 -0.1666629 ;
	setAttr ".tk[164]" -type "float3" -0.073565513 -0.13934083 -0.13635157 ;
	setAttr ".tk[165]" -type "float3" -0.029390484 -0.18913257 -0.055466399 ;
	setAttr ".tk[166]" -type "float3" 0.029056199 -0.18913257 0.055642202 ;
	setAttr ".tk[167]" -type "float3" 0.070682697 -0.13934083 0.137868 ;
	setAttr ".tk[168]" -type "float3" 0.087669969 -0.065447077 0.1666629 ;
	setAttr ".tk[169]" -type "float3" 0.087669969 0.058238428 0.1666629 ;
	setAttr ".tk[170]" -type "float3" 0.070682697 0.13213219 0.137868 ;
	setAttr ".tk[172]" -type "float3" 0.15605438 -0.12564681 0.0024108144 ;
	setAttr ".tk[174]" -type "float3" -0.17127848 -0.10639281 0.0072903717 ;
	setAttr ".tk[181]" -type "float3" 0.069541253 0.15235041 0.13868862 ;
createNode polySplit -n "polySplit29";
	setAttr -s 10 ".e[0:9]"  0 1 0.492264 0.53920799 0.57390702 1 0.59010202
		 0.53488201 1 1;
	setAttr -s 10 ".d[0:9]"  -2147483346 -2147483387 -2147483395 -2147483465 -2147483403 -2147483399 
		-2147483407 -2147483462 -2147483383 -2147483459;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit28";
	setAttr -s 11 ".e[0:10]"  0 1 0.52208298 0.55571699 1 0.47964901 0.55270398
		 0.50734597 1 0.0042412099 0.81231803;
	setAttr -s 11 ".d[0:10]"  -2147483325 -2147483364 -2147483532 -2147483410 -2147483380 -2147483413 
		-2147483533 -2147483370 -2147483368 -2147483306 -2147483305;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit27";
	setAttr ".v[0]" -type "float3"  -3.2294221 0.77544999 0.33427799;
	setAttr -s 3 ".e[0:2]"  1 31 0.67949599;
	setAttr -s 3 ".d[0:2]"  -2147483580 0 -2147483582;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit26";
	setAttr -s 2 ".e[0:1]"  1 0.52482498;
	setAttr -s 2 ".d[0:1]"  -2147483591 -2147483592;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[111:114]" "e[117:122]" "e[275]";
	setAttr ".ix" -type "matrix" -0.76249569608391388 0 -9.3378791357279816e-017 0 0 0.76249569608391388 0 0
		 9.3378791357279816e-017 0 -0.76249569608391388 0 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 1;
	setAttr ".wt" 0.54745543003082275;
	setAttr ".dr" no;
	setAttr ".re" 118;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 11 "e[172]" "e[174]" "e[177]" "e[180]" "e[189]" "e[192]" "e[195]" "e[198]" "e[201]" "e[204]" "e[257]";
	setAttr ".ix" -type "matrix" -0.76249569608391388 0 -9.3378791357279816e-017 0 0 0.76249569608391388 0 0
		 9.3378791357279816e-017 0 -0.76249569608391388 0 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 1;
	setAttr ".wt" 0.55202019214630127;
	setAttr ".re" 195;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[29]" "e[31:32]" "e[34]" "e[57]" "e[61]" "e[68]" "e[72]";
	setAttr ".ix" -type "matrix" -0.76249569608391388 0 -9.3378791357279816e-017 0 0 0.76249569608391388 0 0
		 9.3378791357279816e-017 0 -0.76249569608391388 0 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 1;
	setAttr ".wt" 0.49218419194221497;
	setAttr ".re" 57;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySoftEdge -n "polySoftEdge24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" -0.76249569608391388 0 -9.3378791357279816e-017 0 0 0.76249569608391388 0 0
		 9.3378791357279816e-017 0 -0.76249569608391388 0 0.2953737504820646 10.697926706498546 3.6172851808000985e-017 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak71";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[3]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[120]" -type "float3" 0 -0.31525654 0 ;
	setAttr ".tk[121]" -type "float3" 0 -0.31525654 0 ;
	setAttr ".tk[122]" -type "float3" 0 -0.31525654 0 ;
	setAttr ".tk[123]" -type "float3" 0 -0.31525654 0 ;
	setAttr ".tk[136]" -type "float3" 0 -0.19504195 0 ;
	setAttr ".tk[137]" -type "float3" 0 -0.19504195 0 ;
	setAttr ".tk[138]" -type "float3" 0 -0.19504195 0 ;
	setAttr ".tk[139]" -type "float3" 0 -0.19504195 0 ;
createNode polyTweakUV -n "polyTweakUV14";
	setAttr ".uopa" yes;
	setAttr -s 219 ".uvtk[0:218]" -type "float2" 0.075313941 0.89810348 -0.0080194063
		 0.88759542 0.0024886907 0.8042621 0.085822031 0.81477016 -0.091352746 0.87708735
		 -0.080844656 0.79375398 -0.17468606 0.86657923 -0.16417797 0.78324592 0.012996757
		 0.72092879 0.096330099 0.73143679 -0.070336588 0.71042067 -0.15366989 0.69991255
		 0.023504823 0.63759542 0.10683817 0.64810348 -0.05982852 0.62708735 -0.14316183 0.61657923
		 0.034012921 0.5542621 0.11734626 0.5647701 -0.049320422 0.54375398 -0.13265374 0.53324592
		 0.044520985 0.47092876 0.12785433 0.48143679 -0.038812358 0.46042067 -0.12214567
		 0.44991255 0.055029053 0.38759544 0.13836239 0.39810348 -0.02830429 0.37708735 -0.1116376
		 0.36657923 0.065537147 0.30426213 0.1488705 0.31477016 -0.017796192 0.29375404 -0.10112951
		 0.28324592 0.58069223 -0.88256598 0.49735889 -0.8930741 0.50786692 -0.97640741 0.59120023
		 -0.96589929 0.41402555 -0.90358216 0.42453358 -0.98691547 0.33069223 -0.91409022
		 0.34120026 -0.99742353 -0.25801945 0.85607123 -0.33084464 0.7622298 -0.24751134 0.77273786
		 -0.40366989 0.66838837 -0.32033658 0.67889643 -0.23700327 0.68940455 -0.39316183
		 0.58505499 -0.30982852 0.59556311 -0.22649521 0.60607123 0.15864725 0.9086116 0.16915534
		 0.82527822 0.2524887 0.83578634 0.26299676 0.75245297 0.34633011 0.76296103 0.17966342
		 0.74194491 0.27350482 0.66911966 0.35683817 0.67962772 0.19017148 0.6586116 0.0019285434
		 0.0019920322 -0.87197453 0.0019920322 -0.87197453 -0.87191105 0.0019285434 -0.87191105
		 0.1330241 0.0019920322 -0.740879 0.0019920322 0.1330241 -0.87191105 0.26601928 0.0019920322
		 -0.60788381 0.0019920322 -0.60788381 -0.87191105 0.26601928 -0.87191105 0.39711547
		 0.0019920322 -0.4767876 0.0019920322 -0.4767876 -0.87191105 0.39711547 -0.87191105
		 0.52821136 0.0019920322 -0.34569174 0.0019920322 0.091259815 -0.87191105 0.66120541
		 0.0019920322 -0.21269768 0.0019920322 -0.21269768 -0.87191105 0.66120541 -0.87191105
		 0.79419947 0.0019920322 -0.079703636 0.0019920322 -0.079703636 -0.87191105 0.79419947
		 -0.87191105 0.52821136 0.13118765 -0.34569174 0.13118765 0.091259815 -0.74271548
		 0.14877021 0.653391 0.11212568 0.60617137 0.028792333 0.59566337 -0.05454101 0.58515525
		 0.41924599 -0.94498348 0.50257939 -0.93447542 0.11724599 0.903391 0.58591276 -0.9239673
		 -0.075877681 0.75436372 0.0074556591 0.76487184 -0.077456467 0.7999649 -0.077456467
		 0.72713965 -0.29593223 0.7999649 -0.29593223 0.72713965 -0.077456467 0.6543144 -0.29593223
		 0.6543144 -0.077456467 0.58148915 -0.29593223 0.58148915 -0.077456467 0.50866389
		 -0.29593223 0.50866389 -0.077456467 0.43583858 -0.29593223 0.43583858 -0.077456467
		 0.36301336 -0.29593223 0.36301336 -0.077456467 0.29018816 -0.29593223 0.29018816
		 -0.077456467 0.21736288 -0.29593223 0.21736288 -0.077456467 0.14453766 -0.29593223
		 0.14453766 -0.077456467 0.071712442 -0.29593223 0.071712442 -0.077456467 -0.001112834
		 -0.29593223 -0.001112834 -0.077456467 -0.073938049 -0.29593223 -0.073938049 -0.4415828
		 0.7999649 -0.51440799 0.7999649 -0.51440799 0.72713965 -0.4415828 0.72713965 -0.36875755
		 0.7999649 -0.36875755 0.72713965 -0.51440799 0.6543144 -0.4415828 0.6543144 -0.36875755
		 0.6543144 -0.51440799 0.58148915 -0.4415828 0.58148915 -0.36875755 0.58148915 0.1410193
		 0.7999649 0.068194024 0.7999649 0.068194024 0.72713965 0.1410193 0.72713965 -0.004631253
		 0.7999649 -0.004631253 0.72713965 0.068194024 0.6543144 0.1410193 0.6543144 -0.004631253
		 0.6543144 0.068194024 0.58148915 0.1410193 0.58148915 -0.004631253 0.58148915 0.052864872
		 0.73473912 0.052864872 0.80756438 -0.22865936 0.80756438 -0.22865936 0.73473912 0.052864872
		 0.66191387 -0.22865936 0.66191387 0.052864872 0.58908862 -0.22865936 0.58908862 0.052864872
		 0.51626337 -0.22865936 0.51626337 0.052864872 0.44343805 -0.22865936 0.44343805 0.052864872
		 0.37061286 -0.22865936 0.37061286 0.052864872 0.29778764 -0.22865936 0.29778764 0.052864872
		 0.22496235 -0.22865936 0.22496235 0.052864872 0.15213715 -0.22865936 0.15213715 0.052864872
		 0.079311863 -0.22865936 0.079311863 0.052864872 0.0064866454 -0.22865936 0.0064866454
		 0.052864872 -0.066338569 -0.22865936 -0.066338569 -0.4163422 0.80756438 -0.51018357
		 0.80756438 -0.51018357 0.73473912 -0.4163422 0.73473912 -0.3225008 0.80756438 -0.3225008
		 0.73473912 -0.51018357 0.66191387 -0.4163422 0.66191387 -0.3225008 0.66191387 -0.51018357
		 0.58908862 -0.4163422 0.58908862 -0.3225008 0.58908862 0.33438909 0.80756438 0.24054769
		 0.80756438 0.24054769 0.73473912 0.33438909 0.73473912 0.14670625 0.80756438 0.14670625
		 0.73473912 0.24054769 0.66191387 0.33438909 0.66191387 0.14670625 0.66191387 0.24054769
		 0.58908862 0.33438909 0.58908862 0.14670625 0.58908862 -0.077456467 0.43583858 -0.077456467
		 0.50866389 -0.29593223 0.50866389 -0.29593223 0.43583858 0.052864872 0.44343805 -0.22865936
		 0.44343805 -0.22865936 0.51626337 0.052864872 0.51626337 -0.052706715 0.49805701
		 0.052864872 0.51626337 -0.22865936 0.51626337 -0.22865936 0.58908862 0.052864872
		 0.58908862 -0.052706715 0.57088232 -0.052706715 0.42523178 -0.24131329 0.46314806
		 -0.077456467 0.50866389 -0.077456467 0.58148915 -0.29593223 0.58148915 -0.29593223
		 0.50866389 -0.24131329 0.53597337 -0.24131329 0.39032283;
createNode polyCollapseF -n "polyCollapseF6";
	setAttr ".ics" -type "componentList" 1 "f[49]";
createNode polyExtrudeFace -n "polyExtrudeFace12";
	setAttr ".ics" -type "componentList" 1 "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.9131064 3.9792004 1.3624868 ;
	setAttr ".rs" 52934;
	setAttr ".lt" -type "double3" -1.1449174941446927e-016 -6.106226635438361e-016 0.54234115958033569 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.7363190650939941 3.6694192886352539 0.51559096574783325 ;
	setAttr ".cbx" -type "double3" -4.0898938179016113 4.2889814376831055 2.2093827724456787 ;
createNode polyCollapseF -n "polyCollapseF5";
	setAttr ".ics" -type "componentList" 1 "f[49]";
createNode polyExtrudeFace -n "polyExtrudeFace11";
	setAttr ".ics" -type "componentList" 1 "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.7056689 4.3813581 3.8578019 ;
	setAttr ".rs" 54784;
	setAttr ".lt" -type "double3" -2.4806545706468341e-016 4.5796699765787707e-016 0.27585465916316221 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.2562670707702637 4.174163818359375 3.2913634777069092 ;
	setAttr ".cbx" -type "double3" -3.1550710201263428 4.5885524749755859 4.4242405891418457 ;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[136:139]" -type "float3"  0.040511839 0.10258686 -0.28045723
		 0.27261442 -0.10258686 0.02650084 -0.27261439 0.10258686 -0.084705338 -0.15116 -0.10258686
		 0.28045729;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	setAttr ".ics" -type "componentList" 1 "f[49]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -3.8190954 3.9792004 3.6719401 ;
	setAttr ".rs" 42974;
	setAttr ".lt" -type "double3" -2.6367796834847468e-016 -1.1102230246251565e-016 
		0.45731936369618637 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.6423077583312988 3.6694192886352539 2.8250441551208496 ;
	setAttr ".cbx" -type "double3" -2.9958827495574951 4.2889814376831055 4.5188360214233398 ;
createNode polyCollapseF -n "polyCollapseF4";
	setAttr ".ics" -type "componentList" 1 "f[50]";
createNode polyExtrudeFace -n "polyExtrudeFace9";
	setAttr ".ics" -type "componentList" 1 "f[50]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.3661008 5.1789141 2.5172133 ;
	setAttr ".rs" 39288;
	setAttr ".lt" -type "double3" 6.357761539454998e-016 5.5511151231257827e-016 0.34763470874029445 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -4.8052630424499512 5.0013580322265625 2.0836167335510254 ;
	setAttr ".cbx" -type "double3" -3.926938533782959 5.3564696311950684 2.9508099555969238 ;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[124]" -type "float3" 0.094500959 -0.16729553 -0.089163542 ;
	setAttr ".tk[125]" -type "float3" 0.094500959 -0.16729553 -0.089163542 ;
	setAttr ".tk[126]" -type "float3" 0.094500959 -0.16729553 -0.089163542 ;
	setAttr ".tk[127]" -type "float3" 0.094500959 -0.16729553 -0.089163542 ;
	setAttr ".tk[129]" -type "float3" -3.7252903e-009 0 1.3969839e-009 ;
	setAttr ".tk[130]" -type "float3" -3.7252903e-009 0 1.3969839e-009 ;
	setAttr ".tk[131]" -type "float3" -3.7252903e-009 0 1.3969839e-009 ;
	setAttr ".tk[132]" -type "float3" -3.7252903e-009 0 1.3969839e-009 ;
createNode polyCollapseF -n "polyCollapseF3";
	setAttr ".ics" -type "componentList" 1 "f[78]";
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[134:137]" -type "float3"  -0.40128338 0.15100595 0.12468488
		 0.059632648 0.15100595 0.41282815 0.40128338 -0.15100595 -0.039009068 -0.22250432
		 -0.15100595 -0.41282815;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	setAttr ".ics" -type "componentList" 1 "f[78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.4522495 3.9792004 1.1117756 ;
	setAttr ".rs" 51790;
	setAttr ".lt" -type "double3" 1.6653345369377348e-016 -4.7184478546569153e-016 0.54950831205397543 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.6290369033813477 3.6694192886352539 0.26487982273101807 ;
	setAttr ".cbx" -type "double3" 6.2754621505737305 4.2889814376831055 1.9586715698242187 ;
createNode polyCollapseF -n "polyCollapseF2";
	setAttr ".ics" -type "componentList" 1 "f[78]";
createNode polyCollapseF -n "polyCollapseF1";
	setAttr ".ics" -type "componentList" 1 "f[78]";
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[136:139]" -type "float3"  -0.15614475 -0.058758557 0.015178963
		 0.086579777 -0.058758557 0.16063695 0.15614466 0.058758557 -0.048516475 -0.023203705
		 0.058758557 -0.16063701;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	setAttr ".ics" -type "componentList" 1 "f[78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.254735 4.3461752 3.590831 ;
	setAttr ".rs" 56612;
	setAttr ".lt" -type "double3" 2.2551405187698492e-016 -7.4940054162198066e-016 0.25280361353032288 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.9306163787841797 4.2242069244384766 3.257387638092041 ;
	setAttr ".cbx" -type "double3" 4.5788536071777344 4.4681434631347656 3.9242744445800781 ;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[132:135]" -type "float3"  -0.49909377 -0.18781286 0.048517119
		 0.2767396 -0.18781286 0.51345265 0.49909389 0.18781286 -0.1550761 -0.074167311 0.18781286
		 -0.51345259;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	setAttr ".ics" -type "componentList" 1 "f[78]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.3582382 3.9792004 3.4212291 ;
	setAttr ".rs" 36103;
	setAttr ".lt" -type "double3" 1.0061396160665481e-016 -3.0531133177191805e-016 0.41731088283386819 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 3.5350255966186523 3.6694192886352539 2.5743329524993896 ;
	setAttr ".cbx" -type "double3" 5.1814508438110352 4.2889814376831055 4.268125057220459 ;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[120]" -type "float3" 0.20261483 0.17755577 -0.64110541 ;
	setAttr ".tk[121]" -type "float3" 0.5643006 -0.050857931 0.23150913 ;
	setAttr ".tk[122]" -type "float3" -0.56430048 0.050857946 -0.23150915 ;
	setAttr ".tk[123]" -type "float3" -0.20261483 -0.17755584 0.64110506 ;
	setAttr ".tk[128]" -type "float3" -0.24539085 -0.01265377 0.074207067 ;
	setAttr ".tk[129]" -type "float3" 0.067544542 -0.044176731 0.25907248 ;
	setAttr ".tk[130]" -type "float3" 0.24539085 0.01265377 -0.074207239 ;
	setAttr ".tk[131]" -type "float3" -0.067544959 0.044176731 -0.25907245 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 4.6757813 4.8504505 2.5664096 ;
	setAttr ".rs" 35699;
	setAttr ".lt" -type "double3" -2.0935082545484693e-015 3.4694469519536142e-016 0.40326016426320455 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 4.1717591285705566 4.7597136497497559 2.0342857837677002 ;
	setAttr ".cbx" -type "double3" 5.1798038482666016 4.941187858581543 3.0985336303710937 ;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[124:127]" -type "float3"  -0.72890174 -0.30247328 0.45532021
		 -0.091988936 -0.23772623 0.84248519 0.269979 -0.35445359 0.14449513 -0.36693484 -0.41920057
		 -0.24267045;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	setAttr ".ics" -type "componentList" 2 "f[50]" "f[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.26957107 4.2889814 2.3918581 ;
	setAttr ".rs" 39695;
	setAttr ".lt" -type "double3" 0 3.6310015459834269e-016 0.8899329299761406 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -5.3695635795593262 4.2889814376831055 1.1918008327484131 ;
	setAttr ".cbx" -type "double3" 5.9087057113647461 4.2889814376831055 3.5919153690338135 ;
createNode deleteComponent -n "deleteComponent27";
	setAttr ".dc" -type "componentList" 2 "vtx[59:62]" "vtx[66:68]";
createNode polyMergeVert -n "polyMergeVert10";
	setAttr ".ics" -type "componentList" 2 "vtx[11]" "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert9";
	setAttr ".ics" -type "componentList" 2 "vtx[7]" "vtx[99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert8";
	setAttr ".ics" -type "componentList" 2 "vtx[37]" "vtx[101]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert7";
	setAttr ".ics" -type "componentList" 2 "vtx[39]" "vtx[102]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk[99:130]" -type "float3"  -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114 -7.071957588 0 -0.25071114
		 -7.071957588 0 -0.25071114;
createNode deleteComponent -n "deleteComponent26";
	setAttr ".dc" -type "componentList" 1 "f[75:76]";
createNode deleteComponent -n "deleteComponent25";
	setAttr ".dc" -type "componentList" 1 "f[75]";
createNode deleteComponent -n "deleteComponent24";
	setAttr ".dc" -type "componentList" 3 "f[75:77]" "f[79]" "f[82]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 5 "f[75:98]" "f[103]" "f[105:108]" "f[110:111]" "f[113:119]";
createNode polyMirror -n "polyMirror1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[46:74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".p" -type "double3" 3.8055500984191895 1.6986693143844604 0.88390159606933594 ;
	setAttr ".mm" 1;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 30 ".tk";
	setAttr ".tk[3]" -type "float3" -5.9604645e-008 0 0 ;
	setAttr ".tk[43]" -type "float3" -2.9802322e-008 0 0 ;
	setAttr ".tk[71]" -type "float3" 0.60459948 0 -0.22431448 ;
	setAttr ".tk[72]" -type "float3" -5.9604645e-008 0 2.9802322e-008 ;
	setAttr ".tk[73]" -type "float3" 0.6045996 -0.085171223 -0.22431448 ;
	setAttr ".tk[74]" -type "float3" -2.9802322e-008 -0.085171223 1.4901161e-008 ;
	setAttr ".tk[75]" -type "float3" 0.6045996 0.085171238 -0.22431448 ;
	setAttr ".tk[76]" -type "float3" -2.9802322e-008 0.085171238 1.4901161e-008 ;
	setAttr ".tk[77]" -type "float3" 0.60459948 1.4901161e-008 -0.22431448 ;
	setAttr ".tk[78]" -type "float3" -5.9604645e-008 1.4901161e-008 2.9802322e-008 ;
	setAttr ".tk[79]" -type "float3" 0.60459948 0.25551364 -0.22431445 ;
	setAttr ".tk[80]" -type "float3" 0 0.25551364 0 ;
	setAttr ".tk[81]" -type "float3" 0.60459954 0.25551364 -0.22431453 ;
	setAttr ".tk[82]" -type "float3" 7.4505806e-009 0.25551364 -1.4901161e-008 ;
	setAttr ".tk[83]" -type "float3" 0.60459965 1.4901161e-008 -0.22431448 ;
	setAttr ".tk[84]" -type "float3" 3.7252903e-009 1.4901161e-008 5.9604645e-008 ;
	setAttr ".tk[85]" -type "float3" 0.6045993 0.085171238 -0.22431442 ;
	setAttr ".tk[86]" -type "float3" 0 0.085171238 2.9802322e-008 ;
	setAttr ".tk[87]" -type "float3" 0.6045993 -0.085171223 -0.22431442 ;
	setAttr ".tk[88]" -type "float3" 0 -0.085171223 2.9802322e-008 ;
	setAttr ".tk[89]" -type "float3" 0.60459965 0 -0.22431448 ;
	setAttr ".tk[90]" -type "float3" 3.7252903e-009 0 5.9604645e-008 ;
	setAttr ".tk[91]" -type "float3" 0.60459924 -0.25551373 -0.22431453 ;
	setAttr ".tk[92]" -type "float3" 2.2351742e-008 -0.25551373 -2.9802322e-008 ;
	setAttr ".tk[93]" -type "float3" 0.60459954 -0.25551373 -0.2243145 ;
	setAttr ".tk[94]" -type "float3" 4.4703484e-008 -0.25551373 0 ;
	setAttr ".tk[95]" -type "float3" 0.60459936 0 -0.22431448 ;
	setAttr ".tk[96]" -type "float3" 0.60459948 0 -0.22431448 ;
	setAttr ".tk[97]" -type "float3" 0.60459936 0 -0.22431448 ;
	setAttr ".tk[98]" -type "float3" 0.60459948 0 -0.22431448 ;
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 12 "vtx[72:73]" "vtx[76:77]" "vtx[80:81]" "vtx[84:85]" "vtx[88:89]" "vtx[92:93]" "vtx[96:97]" "vtx[100:101]" "vtx[104:105]" "vtx[108:109]" "vtx[112:113]" "vtx[116:117]";
createNode deleteComponent -n "deleteComponent21";
	setAttr ".dc" -type "componentList" 12 "e[155]" "e[158]" "e[161]" "e[164]" "e[167]" "e[170]" "e[173]" "e[176]" "e[179]" "e[182]" "e[185]" "e[188]";
createNode deleteComponent -n "deleteComponent20";
	setAttr ".dc" -type "componentList" 12 "e[156]" "e[160]" "e[164]" "e[168]" "e[172]" "e[176]" "e[180]" "e[184]" "e[188]" "e[192]" "e[196]" "e[200]";
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 1 "f[86]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "vtx[66]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 2 "vtx[56]" "vtx[73:75]";
createNode polyMergeVert -n "polyMergeVert6";
	setAttr ".ics" -type "componentList" 2 "vtx[3]" "vtx[124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert5";
	setAttr ".ics" -type "componentList" 3 "vtx[3]" "vtx[42]" "vtx[124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert4";
	setAttr ".ics" -type "componentList" 2 "vtx[40]" "vtx[124]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert3";
	setAttr ".ics" -type "componentList" 2 "vtx[43]" "vtx[126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert2";
	setAttr ".ics" -type "componentList" 3 "vtx[9]" "vtx[43]" "vtx[126]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyMergeVert -n "polyMergeVert1";
	setAttr ".ics" -type "componentList" 2 "vtx[9]" "vtx[127]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".am" yes;
createNode polyUnite -n "polyUnite2";
	setAttr -s 2 ".ip";
	setAttr -s 2 ".im";
createNode polyNormal -n "polyNormal5";
	setAttr ".ics" -type "componentList" 1 "f[245]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal6";
	setAttr ".ics" -type "componentList" 3 "f[79]" "f[174]" "f[180]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal7";
	setAttr ".ics" -type "componentList" 1 "f[79]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal8";
	setAttr ".ics" -type "componentList" 2 "f[334]" "f[341]";
	setAttr ".unm" no;
createNode polyPlanarProj -n "polyPlanarProj10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "f[79]" "f[174]" "f[180]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 0.055006533861160278 3.2629077434539795 0.04270172119140625 ;
	setAttr ".ro" -type "double3" -90 0 0 ;
	setAttr ".ps" -type "double2" 1.1313677430152893 2.1452174186706543 ;
	setAttr ".cam" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode polyTweakUV -n "polyTweakUV64";
	setAttr ".uopa" yes;
	setAttr -s 9 ".uvtk";
	setAttr ".uvtk[560]" -type "float2" -0.12513641 -0.2926358 ;
	setAttr ".uvtk[561]" -type "float2" -0.10826391 0.63264793 ;
	setAttr ".uvtk[562]" -type "float2" -0.56434846 0.63264793 ;
	setAttr ".uvtk[563]" -type "float2" -0.54942369 -0.29349971 ;
	setAttr ".uvtk[564]" -type "float2" 0.12392563 0.49888787 ;
	setAttr ".uvtk[565]" -type "float2" 0.11021692 -0.20063196 ;
	setAttr ".uvtk[566]" -type "float2" -0.78494143 -0.20921986 ;
	setAttr ".uvtk[567]" -type "float2" -0.80222219 0.49888787 ;
createNode polyNormal -n "polyNormal9";
	setAttr ".ics" -type "componentList" 2 "f[79]" "f[174]";
	setAttr ".unm" no;
createNode polyNormal -n "polyNormal10";
	setAttr ".ics" -type "componentList" 1 "f[174]";
	setAttr ".unm" no;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 12 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 12 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 6 ".u";
select -ne :defaultRenderingList1;
select -ne :lightList1;
	setAttr -s 3 ".l";
select -ne :defaultTextureList1;
	setAttr -s 5 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 21 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 19 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "mentalRay";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :defaultLightSet;
	setAttr -s 3 ".dsm";
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
connectAttr "head.di" "|pCube1|polySurface1.do";
connectAttr "deleteComponent32.og" "polySurfaceShape1.i";
connectAttr "groupId3.id" "polySurfaceShape1.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape1.iog.og[0].gco";
connectAttr "deleteComponent16.og" "polySurfaceShape2.i";
connectAttr "groupId4.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId1.id" "pCubeShape1.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape1.iog.og[1].gco";
connectAttr "groupParts1.og" "pCubeShape1.i";
connectAttr "groupId2.id" "pCubeShape1.ciog.cog[1].cgid";
connectAttr "groupId5.id" "pCubeShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape2.iog.og[0].gco";
connectAttr "groupParts11.og" "pCubeShape2.i";
connectAttr "groupId6.id" "pCubeShape2.ciog.cog[0].cgid";
connectAttr "hair.di" "|polySurface2.do";
connectAttr "polyTweakUV33.out" "polySurface2Shape.i";
connectAttr "polyTweakUV33.uvtk[0]" "polySurface2Shape.uvst[0].uvtw";
connectAttr "body.di" "pCube3.do";
connectAttr "groupId8.id" "pCubeShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape3.iog.og[0].gco";
connectAttr "groupParts12.og" "pCubeShape3.i";
connectAttr "groupId9.id" "pCubeShape3.ciog.cog[0].cgid";
connectAttr "deleteComponent35.og" "|polySurface1|transform7|polySurface1Shape.i"
		;
connectAttr "groupId10.id" "|polySurface1|transform7|polySurface1Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface1|transform7|polySurface1Shape.iog.og[0].gco"
		;
connectAttr "SecondHairLayer.di" "polySurface3.do";
connectAttr "groupId11.id" "pCubeShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape4.iog.og[0].gco";
connectAttr "groupParts14.og" "pCubeShape4.i";
connectAttr "groupId12.id" "pCubeShape4.ciog.cog[0].cgid";
connectAttr "polySoftEdge7.out" "|polySurface4|transform9|polySurface1Shape.i";
connectAttr "groupId13.id" "|polySurface4|transform9|polySurface1Shape.iog.og[0].gid"
		;
connectAttr ":initialShadingGroup.mwc" "|polySurface4|transform9|polySurface1Shape.iog.og[0].gco"
		;
connectAttr "groupId14.id" "pCubeShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCubeShape5.iog.og[0].gco";
connectAttr "groupParts16.og" "pCubeShape5.i";
connectAttr "groupId15.id" "pCubeShape5.ciog.cog[0].cgid";
connectAttr "polyNormal10.out" "polySurfaceShape8.i";
connectAttr "polyTweakUV64.uvtk[0]" "polySurfaceShape8.uvst[0].uvtw";
connectAttr "polyTweakUV60.out" "polySurfaceShape9.i";
connectAttr "polyTweakUV60.uvtk[0]" "polySurfaceShape9.uvst[0].uvtw";
connectAttr "polyChipOff5.out" "polySurfaceShape6.i";
connectAttr "groupId22.id" "polySurfaceShape6.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape6.iog.og[0].gco";
connectAttr "polySoftEdge25.out" "polySurfaceShape7.i";
connectAttr "polyTweakUV10.uvtk[0]" "polySurfaceShape7.uvst[0].uvtw";
connectAttr "polyChipOff4.out" "polySurfaceShape5.i";
connectAttr "groupId21.id" "polySurfaceShape5.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape5.iog.og[0].gco";
connectAttr "polyChipOff3.out" "polySurfaceShape3.i";
connectAttr "groupId19.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupParts17.og" "polySurface5Shape.i";
connectAttr "groupId17.id" "polySurface5Shape.iog.og[1].gid";
connectAttr ":initialShadingGroup.mwc" "polySurface5Shape.iog.og[1].gco";
connectAttr "polyTweakUV5.uvtk[0]" "polySurface5Shape.uvst[0].uvtw";
connectAttr "groupId18.id" "polySurface5Shape.ciog.cog[0].cgid";
connectAttr "polyTweakUV18.out" "pCubeShape6.i";
connectAttr "polyTweakUV18.uvtk[0]" "pCubeShape6.uvst[0].uvtw";
connectAttr "polyCopyUV6.out" "pCubeShape7.i";
connectAttr "polyTweakUV12.uvtk[0]" "pCubeShape7.uvst[0].uvtw";
connectAttr "polyTweakUV13.uvtk[0]" "pCubeShape7.uvst[1].uvtw";
connectAttr "polyTweakUV26.out" "pPlaneShape8.i";
connectAttr "polyTweakUV26.uvtk[0]" "pPlaneShape8.uvst[0].uvtw";
connectAttr "polyTweakUV20.out" "pPlaneShape4.i";
connectAttr "polyTweakUV20.uvtk[0]" "pPlaneShape4.uvst[0].uvtw";
connectAttr "polyTweakUV24.out" "pPlaneShape5.i";
connectAttr "polyTweakUV24.uvtk[0]" "pPlaneShape5.uvst[0].uvtw";
connectAttr "polyTweakUV22.out" "pPlaneShape6.i";
connectAttr "polyTweakUV22.uvtk[0]" "pPlaneShape6.uvst[0].uvtw";
connectAttr "polyTweakUV25.out" "pPlaneShape7.i";
connectAttr "polyTweakUV25.uvtk[0]" "pPlaneShape7.uvst[0].uvtw";
connectAttr "polyTweakUV27.out" "pPlaneShape9.i";
connectAttr "polyTweakUV27.uvtk[0]" "pPlaneShape9.uvst[0].uvtw";
connectAttr "polyTweakUV28.out" "pPlaneShape10.i";
connectAttr "polyTweakUV28.uvtk[0]" "pPlaneShape10.uvst[0].uvtw";
connectAttr "polyTweakUV23.out" "pPlaneShape11.i";
connectAttr "polyTweakUV23.uvtk[0]" "pPlaneShape11.uvst[0].uvtw";
connectAttr "polyCopyUV7.out" "pCubeShape8.i";
connectAttr "polyTweakUV17.uvtk[0]" "pCubeShape8.uvst[2].uvtw";
connectAttr "polyPlane1.out" "pPlaneShape12.i";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOff.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":PreviewImrRayTracyOn.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "mentalrayTexture1.msg" ":mentalrayGlobals.tx[0]";
connectAttr "mentalrayTexture2.msg" ":mentalrayGlobals.tx[1]";
connectAttr "mentalrayTexture3.msg" ":mentalrayGlobals.tx[2]";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "misss_fast_shader_x1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "misss_fast_shader_x2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "misss_fast_shader_x_passes1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "fire.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "mia_material_x4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "misss_fast_shader_x1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "misss_fast_shader_x2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "misss_fast_shader_x_passes1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "fire.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "blinn1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "mia_material_x4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyTweak1.out" "polyChipOff1.ip";
connectAttr "pCubeShape1.wm" "polyChipOff1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "pCubeShape1.o" "polySeparate1.ip";
connectAttr "polyChipOff1.out" "groupParts1.ig";
connectAttr "groupId1.id" "groupParts1.gi";
connectAttr "polySeparate1.out[0]" "groupParts2.ig";
connectAttr "groupId3.id" "groupParts2.gi";
connectAttr "polySeparate1.out[1]" "groupParts3.ig";
connectAttr "groupParts3.og" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "polyExtrudeEdge1.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge1.mp";
connectAttr "polyExtrudeEdge1.out" "groupParts4.ig";
connectAttr "groupParts4.og" "polyExtrudeEdge2.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge2.mp";
connectAttr "polyExtrudeEdge2.out" "groupParts5.ig";
connectAttr "polyTweak2.out" "polyExtrudeEdge3.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge3.mp";
connectAttr "groupParts5.og" "polyTweak2.ip";
connectAttr "polyExtrudeEdge3.out" "groupParts6.ig";
connectAttr "groupParts6.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyExtrudeEdge4.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge4.mp";
connectAttr "polyExtrudeEdge4.out" "groupParts7.ig";
connectAttr "groupParts7.og" "polyCollapseEdge1.ip";
connectAttr "polyCollapseEdge1.out" "polyExtrudeEdge5.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge5.mp";
connectAttr "polyExtrudeEdge5.out" "groupParts8.ig";
connectAttr "polyTweak3.out" "polyExtrudeEdge6.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge6.mp";
connectAttr "groupParts8.og" "polyTweak3.ip";
connectAttr "polyExtrudeEdge6.out" "groupParts9.ig";
connectAttr "groupParts9.og" "polyExtrudeEdge7.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeEdge7.mp";
connectAttr "polyExtrudeEdge7.out" "groupParts10.ig";
connectAttr "groupId4.id" "groupParts10.gi";
connectAttr "groupParts10.og" "polyCollapseEdge2.ip";
connectAttr "polyTweak4.out" "polyExtrudeFace1.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyCollapseEdge2.out" "polyTweak4.ip";
connectAttr "polyTweak5.out" "polyExtrudeFace2.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak5.ip";
connectAttr "polyExtrudeFace2.out" "polyExtrudeFace3.ip";
connectAttr "polySurfaceShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak6.out" "polySplitRing1.ip";
connectAttr "polySurfaceShape2.wm" "polySplitRing1.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak6.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "polySurfaceShape2.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "polyCube2.out" "groupParts11.ig";
connectAttr "groupId5.id" "groupParts11.gi";
connectAttr "polyTweak10.out" "polySoftEdge1.ip";
connectAttr "polySurfaceShape1.wm" "polySoftEdge1.mp";
connectAttr "groupParts2.og" "polyTweak10.ip";
connectAttr "mentalrayTexture2.msg" "misss_fast_shader_x1.s00";
connectAttr "misss_fast_shader_x1.msg" "misss_fast_shader_x1SG.mims";
connectAttr "misss_fast_lmap_maya1.msg" "misss_fast_shader_x1SG.milm";
connectAttr "misss_fast_shader_x1SG.msg" "materialInfo1.sg";
connectAttr "misss_fast_shader_x1.msg" "materialInfo1.m";
connectAttr "expression1.out[0]" "mentalrayTexture1.miwd";
connectAttr "expression2.out[0]" "mentalrayTexture1.mihg";
connectAttr ":defaultResolution.w" "expression1.in[0]";
connectAttr ":time1.o" "expression1.tim";
connectAttr ":defaultResolution.h" "expression2.in[0]";
connectAttr ":time1.o" "expression2.tim";
connectAttr "mentalrayTexture2.msg" "misss_fast_lmap_maya1.s00";
connectAttr "expression3.out[0]" "mentalrayTexture2.miwd";
connectAttr "expression4.out[0]" "mentalrayTexture2.mihg";
connectAttr ":defaultResolution.w" "expression3.in[0]";
connectAttr ":time1.o" "expression3.tim";
connectAttr ":defaultResolution.h" "expression4.in[0]";
connectAttr ":time1.o" "expression4.tim";
connectAttr "misss_fast_shader_x2.msg" "misss_fast_shader_x2SG.mims";
connectAttr "misss_fast_shader_x2SG.msg" "materialInfo2.sg";
connectAttr "misss_fast_shader_x2.msg" "materialInfo2.m";
connectAttr "mentalrayTexture3.msg" "misss_fast_shader_x_passes1.s03";
connectAttr "misss_fast_shader_x_passes1.msg" "misss_fast_shader_x_passes1SG.mims"
		;
connectAttr "misss_fast_lmap_maya2.msg" "misss_fast_shader_x_passes1SG.milm";
connectAttr "misss_fast_shader_x_passes1SG.msg" "materialInfo3.sg";
connectAttr "misss_fast_shader_x_passes1.msg" "materialInfo3.m";
connectAttr "expression5.out[0]" "mentalrayTexture3.miwd";
connectAttr "expression6.out[0]" "mentalrayTexture3.mihg";
connectAttr ":defaultResolution.w" "expression5.in[0]";
connectAttr ":time1.o" "expression5.tim";
connectAttr ":defaultResolution.h" "expression6.in[0]";
connectAttr ":time1.o" "expression6.tim";
connectAttr "mentalrayTexture3.msg" "misss_fast_lmap_maya2.s00";
connectAttr "mia_material_x1.msg" "fire.mips";
connectAttr "mia_material_x1.msg" "fire.miss";
connectAttr "mia_material_x1.msg" "fire.mims";
connectAttr "fire.msg" "materialInfo4.sg";
connectAttr "mia_material_x1.msg" "materialInfo4.m";
connectAttr "mia_material_x1.msg" "materialInfo4.t" -na;
connectAttr "layerManager.dli[1]" "hair.id";
connectAttr "layerManager.dli[2]" "head.id";
connectAttr "polyTweak18.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polyCube3.out" "polyTweak18.ip";
connectAttr "polyTweak19.out" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplitRing3.out" "polyTweak19.ip";
connectAttr "polySplitRing4.out" "polyTweak20.ip";
connectAttr "polyTweak20.out" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "polyExtrudeFace13.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace13.out" "polyExtrudeFace14.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace14.mp";
connectAttr "polyTweak21.out" "polyExtrudeFace15.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace15.mp";
connectAttr "polyExtrudeFace14.out" "polyTweak21.ip";
connectAttr "polyTweak22.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polyExtrudeFace15.out" "polyTweak22.ip";
connectAttr "polyTweak23.out" "polySplitRing6.ip";
connectAttr "pCubeShape3.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak23.ip";
connectAttr "polyTweak24.out" "polyExtrudeFace16.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace16.mp";
connectAttr "polySplitRing6.out" "polyTweak24.ip";
connectAttr "polyExtrudeFace16.out" "polyExtrudeFace17.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace17.mp";
connectAttr "polyExtrudeFace17.out" "polyTweak25.ip";
connectAttr "polyTweak25.out" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "polyMergeVert11.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert11.mp";
connectAttr "polyMergeVert11.out" "polyMergeVert12.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert12.mp";
connectAttr "polyMergeVert12.out" "polyMergeVert13.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert13.mp";
connectAttr "polyMergeVert13.out" "polyMergeVert14.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert14.mp";
connectAttr "polyMergeVert14.out" "polyMergeVert15.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert15.mp";
connectAttr "polyMergeVert15.out" "polyMergeVert16.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert16.mp";
connectAttr "polyMergeVert16.out" "polyMergeVert17.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert17.mp";
connectAttr "polyMergeVert17.out" "polyMergeVert18.ip";
connectAttr "pCubeShape3.wm" "polyMergeVert18.mp";
connectAttr "polyTweak26.out" "polySplitRing7.ip";
connectAttr "pCubeShape3.wm" "polySplitRing7.mp";
connectAttr "polyMergeVert18.out" "polyTweak26.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape3.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "pCubeShape3.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape3.wm" "polySplitRing10.mp";
connectAttr "polyTweak27.out" "polyExtrudeFace18.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace18.mp";
connectAttr "polySplitRing10.out" "polyTweak27.ip";
connectAttr "polyTweak28.out" "polySplitRing11.ip";
connectAttr "pCubeShape3.wm" "polySplitRing11.mp";
connectAttr "polyExtrudeFace18.out" "polyTweak28.ip";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape3.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape3.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape3.wm" "polySplitRing14.mp";
connectAttr "polyTweak29.out" "polyExtrudeFace19.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace19.mp";
connectAttr "polySplitRing14.out" "polyTweak29.ip";
connectAttr "layerManager.dli[3]" "body.id";
connectAttr "polyExtrudeFace19.out" "polySoftEdge2.ip";
connectAttr "pCubeShape3.wm" "polySoftEdge2.mp";
connectAttr "polySoftEdge2.out" "polyTweak30.ip";
connectAttr "polyTweak30.out" "deleteComponent31.ig";
connectAttr "polySoftEdge1.out" "deleteComponent32.ig";
connectAttr "polySurfaceShape1.o" "polyUnite3.ip[0]";
connectAttr "pCubeShape3.o" "polyUnite3.ip[1]";
connectAttr "polySurfaceShape1.wm" "polyUnite3.im[0]";
connectAttr "pCubeShape3.wm" "polyUnite3.im[1]";
connectAttr "deleteComponent31.og" "groupParts12.ig";
connectAttr "groupId8.id" "groupParts12.gi";
connectAttr "polyUnite3.out" "groupParts13.ig";
connectAttr "groupId10.id" "groupParts13.gi";
connectAttr "groupParts13.og" "polyMergeVert19.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert19.mp"
		;
connectAttr "polyTweak31.out" "polyMergeVert20.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert20.mp"
		;
connectAttr "polyMergeVert19.out" "polyTweak31.ip";
connectAttr "polyMergeVert20.out" "polyMergeVert21.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert21.mp"
		;
connectAttr "polyMergeVert21.out" "polyMergeVert22.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert22.mp"
		;
connectAttr "polyTweak32.out" "polySoftEdge3.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polySoftEdge3.mp";
connectAttr "polyMergeVert22.out" "polyTweak32.ip";
connectAttr "mia_material_x2.msg" "mia_material_x2SG.mips";
connectAttr "mia_material_x2.msg" "mia_material_x2SG.miss";
connectAttr "mia_material_x2.msg" "mia_material_x2SG.mims";
connectAttr "polySurface3Shape.iog" "mia_material_x2SG.dsm" -na;
connectAttr "mia_material_x2SG.msg" "materialInfo5.sg";
connectAttr "mia_material_x2.msg" "materialInfo5.m";
connectAttr "layerManager.dli[4]" "SecondHairLayer.id";
connectAttr "polyTweak33.out" "polySoftEdge4.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polySoftEdge4.mp";
connectAttr "polySoftEdge3.out" "polyTweak33.ip";
connectAttr "polySoftEdge4.out" "polyTweak34.ip";
connectAttr "polyTweak34.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak35.ip";
connectAttr "polyTweak35.out" "polySplit3.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit5.out" "polySplit6.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplit11.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "deleteComponent33.ig";
connectAttr "deleteComponent33.og" "deleteComponent34.ig";
connectAttr "deleteComponent34.og" "polySoftEdge5.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polySoftEdge5.mp";
connectAttr "polySoftEdge5.out" "polySplit14.ip";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "polySplit15.out" "polyTweak36.ip";
connectAttr "polyTweak36.out" "polySplit16.ip";
connectAttr "polySplit16.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polySplit19.ip";
connectAttr "polyTweak37.out" "polyMergeVert23.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert23.mp"
		;
connectAttr "polySplit19.out" "polyTweak37.ip";
connectAttr "polyMergeVert23.out" "polyMergeVert24.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert24.mp"
		;
connectAttr "polyTweak38.out" "polyMergeVert25.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert25.mp"
		;
connectAttr "polyMergeVert24.out" "polyTweak38.ip";
connectAttr "polyMergeVert25.out" "polyMergeVert26.ip";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyMergeVert26.mp"
		;
connectAttr "polyMergeVert26.out" "polyTweak39.ip";
connectAttr "polyTweak39.out" "deleteComponent35.ig";
connectAttr "polyCube4.out" "deleteComponent36.ig";
connectAttr "|polySurface1|transform7|polySurface1Shape.o" "polyUnite4.ip[0]";
connectAttr "pCubeShape4.o" "polyUnite4.ip[1]";
connectAttr "|polySurface1|transform7|polySurface1Shape.wm" "polyUnite4.im[0]";
connectAttr "pCubeShape4.wm" "polyUnite4.im[1]";
connectAttr "deleteComponent36.og" "groupParts14.ig";
connectAttr "groupId11.id" "groupParts14.gi";
connectAttr "polyUnite4.out" "groupParts15.ig";
connectAttr "groupId13.id" "groupParts15.gi";
connectAttr "groupParts15.og" "polyTweak40.ip";
connectAttr "polyTweak40.out" "deleteComponent37.ig";
connectAttr "deleteComponent37.og" "polyMergeVert27.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert27.mp"
		;
connectAttr "polyMergeVert27.out" "polyMergeVert28.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert28.mp"
		;
connectAttr "polyMergeVert28.out" "polyMergeVert29.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert29.mp"
		;
connectAttr "polyMergeVert29.out" "polyMergeVert30.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert30.mp"
		;
connectAttr "polyMergeVert30.out" "polyMergeVert31.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert31.mp"
		;
connectAttr "polyMergeVert31.out" "polyMergeVert32.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert32.mp"
		;
connectAttr "polyTweak41.out" "polySoftEdge6.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polySoftEdge6.mp";
connectAttr "polyMergeVert32.out" "polyTweak41.ip";
connectAttr "polyTweak42.out" "polyMergeVert33.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert33.mp"
		;
connectAttr "polySoftEdge6.out" "polyTweak42.ip";
connectAttr "polyMergeVert33.out" "polyMergeVert34.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert34.mp"
		;
connectAttr "polyTweak43.out" "polyMirror2.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMirror2.mp";
connectAttr "polyMergeVert34.out" "polyTweak43.ip";
connectAttr "polyMirror2.out" "deleteComponent38.ig";
connectAttr "deleteComponent38.og" "deleteComponent39.ig";
connectAttr "deleteComponent39.og" "deleteComponent40.ig";
connectAttr "polyTweak44.out" "polyMergeVert35.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert35.mp"
		;
connectAttr "deleteComponent40.og" "polyTweak44.ip";
connectAttr "polyMergeVert35.out" "polyMergeVert36.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert36.mp"
		;
connectAttr "polyMergeVert36.out" "polyMergeVert37.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert37.mp"
		;
connectAttr "polyMergeVert37.out" "polyMergeVert38.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert38.mp"
		;
connectAttr "polyMergeVert38.out" "polyMergeVert39.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert39.mp"
		;
connectAttr "polyMergeVert39.out" "polyMergeVert40.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyMergeVert40.mp"
		;
connectAttr "polyTweak45.out" "polySoftEdge7.ip";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polySoftEdge7.mp";
connectAttr "polyMergeVert40.out" "polyTweak45.ip";
connectAttr "polyCube5.out" "polyExtrudeFace20.ip";
connectAttr "pCubeShape5.wm" "polyExtrudeFace20.mp";
connectAttr "|polySurface4|transform9|polySurface1Shape.o" "polyUnite5.ip[0]";
connectAttr "pCubeShape5.o" "polyUnite5.ip[1]";
connectAttr "|polySurface4|transform9|polySurface1Shape.wm" "polyUnite5.im[0]";
connectAttr "pCubeShape5.wm" "polyUnite5.im[1]";
connectAttr "polyExtrudeFace20.out" "groupParts16.ig";
connectAttr "groupId14.id" "groupParts16.gi";
connectAttr "polyUnite5.out" "deleteComponent41.ig";
connectAttr "deleteComponent41.og" "polyMergeVert41.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert41.mp";
connectAttr "polyMergeVert41.out" "polyMergeVert42.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert42.mp";
connectAttr "polyMergeVert42.out" "polyMergeVert43.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert43.mp";
connectAttr "polyMergeVert43.out" "polyMergeVert44.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert44.mp";
connectAttr "polyMergeVert44.out" "polySplitRing15.ip";
connectAttr "polySurface5Shape.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polyTweak46.ip";
connectAttr "polyTweak46.out" "polySplit20.ip";
connectAttr "polySplit20.out" "polySplit21.ip";
connectAttr "polySplit21.out" "polyMergeVert45.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert45.mp";
connectAttr "polyMergeVert45.out" "polyMergeVert46.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert46.mp";
connectAttr "polyMergeVert46.out" "polySplit22.ip";
connectAttr "polySplit22.out" "polySplit23.ip";
connectAttr "polyTweak47.out" "polyMirror3.ip";
connectAttr "polySurface5Shape.wm" "polyMirror3.mp";
connectAttr "polySplit23.out" "polyTweak47.ip";
connectAttr "polyMirror3.out" "deleteComponent42.ig";
connectAttr "deleteComponent42.og" "deleteComponent43.ig";
connectAttr "deleteComponent43.og" "polyTweak48.ip";
connectAttr "polyTweak48.out" "deleteComponent44.ig";
connectAttr "polyTweak49.out" "polyMergeVert47.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert47.mp";
connectAttr "deleteComponent44.og" "polyTweak49.ip";
connectAttr "polyMergeVert47.out" "polyMergeVert48.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert48.mp";
connectAttr "polyMergeVert48.out" "polyMergeVert49.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert49.mp";
connectAttr "polyMergeVert49.out" "deleteComponent45.ig";
connectAttr "deleteComponent45.og" "polyMergeVert50.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert50.mp";
connectAttr "polyMergeVert50.out" "deleteComponent46.ig";
connectAttr "deleteComponent46.og" "polyMergeVert51.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert51.mp";
connectAttr "polyMergeVert51.out" "polyMergeVert52.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert52.mp";
connectAttr "polyMergeVert52.out" "polyMergeVert53.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert53.mp";
connectAttr "polyMergeVert53.out" "polyTweak50.ip";
connectAttr "polyTweak50.out" "polySplit24.ip";
connectAttr "polySplit24.out" "polySplit25.ip";
connectAttr "fractal1.oc" "mia_material_x3.S01";
connectAttr "fractal1.oa" "mia_material_x3.S01A";
connectAttr "mia_material_x3.msg" "mia_material_x3SG.mips";
connectAttr "mia_material_x3.msg" "mia_material_x3SG.miss";
connectAttr "mia_material_x3.msg" "mia_material_x3SG.mims";
connectAttr "mia_material_x3SG.msg" "materialInfo6.sg";
connectAttr "mia_material_x3.msg" "materialInfo6.m";
connectAttr "fractal1.msg" "materialInfo6.t" -na;
connectAttr "place2dTexture1.o" "fractal1.uv";
connectAttr "place2dTexture1.ofs" "fractal1.fs";
connectAttr "polySplit25.out" "polyTweakUV1.ip";
connectAttr "polyTweak51.out" "polyMapCut1.ip";
connectAttr "polyTweakUV1.out" "polyTweak51.ip";
connectAttr "polyMapCut1.out" "polyMergeVert54.ip";
connectAttr "polySurface5Shape.wm" "polyMergeVert54.mp";
connectAttr "polyMergeVert54.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV2.out" "deleteComponent47.ig";
connectAttr "deleteComponent47.og" "polyTweakUV3.ip";
connectAttr "polyTweakUV3.out" "polyMapDel1.ip";
connectAttr "polyMapDel1.out" "polyTweakUV4.ip";
connectAttr "polyTweakUV4.out" "polyMapDel2.ip";
connectAttr "polyMapDel2.out" "polyAutoProj1.ip";
connectAttr "polySurface5Shape.wm" "polyAutoProj1.mp";
connectAttr "polyAutoProj1.out" "polyMapCut2.ip";
connectAttr "polyMapCut2.out" "polyMapCut3.ip";
connectAttr "polyMapCut3.out" "polyTweakUV5.ip";
connectAttr "polyTweakUV5.out" "polyMapSewMove1.ip";
connectAttr "polyMapSewMove1.out" "polyMapSewMove2.ip";
connectAttr "polyMapSewMove2.out" "polyMapSewMove3.ip";
connectAttr "polyMapSewMove3.out" "polyMapSewMove4.ip";
connectAttr "polyMapSewMove4.out" "polyMapCut4.ip";
connectAttr "polyMapCut4.out" "polyMapDel3.ip";
connectAttr "polyTweak52.out" "polyChipOff2.ip";
connectAttr "polySurface5Shape.wm" "polyChipOff2.mp";
connectAttr "polyMapDel3.out" "polyTweak52.ip";
connectAttr "polySurface5Shape.o" "polySeparate2.ip";
connectAttr "polyChipOff2.out" "groupParts17.ig";
connectAttr "groupId17.id" "groupParts17.gi";
connectAttr "polySeparate2.out[0]" "groupParts18.ig";
connectAttr "groupId19.id" "groupParts18.gi";
connectAttr "groupParts18.og" "polyChipOff3.ip";
connectAttr "polySurfaceShape3.wm" "polyChipOff3.mp";
connectAttr "polySurfaceShape3.o" "polySeparate3.ip";
connectAttr "polySeparate3.out[0]" "groupParts20.ig";
connectAttr "groupId21.id" "groupParts20.gi";
connectAttr "groupParts20.og" "polyChipOff4.ip";
connectAttr "polySurfaceShape5.wm" "polyChipOff4.mp";
connectAttr "polySurfaceShape5.o" "polySeparate4.ip";
connectAttr "polySeparate4.out[0]" "groupParts21.ig";
connectAttr "blinn1.oc" "blinn1SG.ss";
connectAttr "blinn1SG.msg" "materialInfo7.sg";
connectAttr "blinn1.msg" "materialInfo7.m";
connectAttr "groupParts21.og" "polyExtrudeEdge9.ip";
connectAttr "polySurfaceShape6.wm" "polyExtrudeEdge9.mp";
connectAttr "polyExtrudeEdge9.out" "groupParts22.ig";
connectAttr "groupId22.id" "groupParts22.gi";
connectAttr "polyTweak53.out" "polyChipOff5.ip";
connectAttr "polySurfaceShape6.wm" "polyChipOff5.mp";
connectAttr "groupParts22.og" "polyTweak53.ip";
connectAttr "polySurfaceShape6.o" "polySeparate5.ip";
connectAttr "polySeparate5.out[0]" "groupParts23.ig";
connectAttr "polySurfaceShape10.o" "polyMirror4.ip";
connectAttr "pPlaneShape4.wm" "polyMirror4.mp";
connectAttr "polySurfaceShape11.o" "polyMirror5.ip";
connectAttr "pPlaneShape6.wm" "polyMirror5.mp";
connectAttr "groupParts23.og" "polySoftEdge8.ip";
connectAttr "polySurfaceShape8.wm" "polySoftEdge8.mp";
connectAttr "polySurfaceShape12.o" "polySoftEdge9.ip";
connectAttr "pPlaneShape8.wm" "polySoftEdge9.mp";
connectAttr "polyMirror4.out" "polySoftEdge10.ip";
connectAttr "pPlaneShape4.wm" "polySoftEdge10.mp";
connectAttr "polySurfaceShape13.o" "polySoftEdge11.ip";
connectAttr "pPlaneShape5.wm" "polySoftEdge11.mp";
connectAttr "polyTweak54.out" "polySoftEdge12.ip";
connectAttr "pPlaneShape6.wm" "polySoftEdge12.mp";
connectAttr "polyMirror5.out" "polyTweak54.ip";
connectAttr "polySurfaceShape14.o" "polySoftEdge13.ip";
connectAttr "pPlaneShape7.wm" "polySoftEdge13.mp";
connectAttr "polySurfaceShape15.o" "polySoftEdge14.ip";
connectAttr "pPlaneShape9.wm" "polySoftEdge14.mp";
connectAttr "polySurfaceShape16.o" "polySoftEdge15.ip";
connectAttr "pPlaneShape10.wm" "polySoftEdge15.mp";
connectAttr "polySurfaceShape17.o" "polySoftEdge16.ip";
connectAttr "pPlaneShape11.wm" "polySoftEdge16.mp";
connectAttr "polyTweak55.out" "polySoftEdge17.ip";
connectAttr "pCubeShape6.wm" "polySoftEdge17.mp";
connectAttr "polyCube6.out" "polyTweak55.ip";
connectAttr "polyTweak56.out" "polySoftEdge18.ip";
connectAttr "pCubeShape7.wm" "polySoftEdge18.mp";
connectAttr "polyCube7.out" "polyTweak56.ip";
connectAttr "polyTweak57.out" "polySoftEdge20.ip";
connectAttr "polySurfaceShape7.wm" "polySoftEdge20.mp";
connectAttr "polySeparate4.out[1]" "polyTweak57.ip";
connectAttr "polyTweak58.out" "polySoftEdge21.ip";
connectAttr "polySurfaceShape9.wm" "polySoftEdge21.mp";
connectAttr "polySeparate5.out[1]" "polyTweak58.ip";
connectAttr "polyTweak59.out" "polyExtrudeEdge10.ip";
connectAttr "polySurfaceShape8.wm" "polyExtrudeEdge10.mp";
connectAttr "polySoftEdge8.out" "polyTweak59.ip";
connectAttr "polyExtrudeEdge10.out" "groupParts24.ig";
connectAttr "polyTweak60.out" "polySoftEdge22.ip";
connectAttr "polySurfaceShape8.wm" "polySoftEdge22.mp";
connectAttr "groupParts24.og" "polyTweak60.ip";
connectAttr "polySoftEdge22.out" "deleteComponent48.ig";
connectAttr "deleteComponent48.og" "deleteComponent49.ig";
connectAttr "polySoftEdge20.out" "polyExtrudeEdge11.ip";
connectAttr "polySurfaceShape7.wm" "polyExtrudeEdge11.mp";
connectAttr "polyTweak61.out" "polyExtrudeEdge12.ip";
connectAttr "polySurfaceShape7.wm" "polyExtrudeEdge12.mp";
connectAttr "polyExtrudeEdge11.out" "polyTweak61.ip";
connectAttr "polyTweak62.out" "polyExtrudeEdge13.ip";
connectAttr "polySurfaceShape7.wm" "polyExtrudeEdge13.mp";
connectAttr "polyExtrudeEdge12.out" "polyTweak62.ip";
connectAttr "polyTweak63.out" "polyExtrudeEdge14.ip";
connectAttr "polySurfaceShape7.wm" "polyExtrudeEdge14.mp";
connectAttr "polyExtrudeEdge13.out" "polyTweak63.ip";
connectAttr "polyTweak64.out" "polyExtrudeEdge15.ip";
connectAttr "polySurfaceShape7.wm" "polyExtrudeEdge15.mp";
connectAttr "polyExtrudeEdge14.out" "polyTweak64.ip";
connectAttr "polyTweak65.out" "polyExtrudeEdge16.ip";
connectAttr "polySurfaceShape8.wm" "polyExtrudeEdge16.mp";
connectAttr "deleteComponent49.og" "polyTweak65.ip";
connectAttr "polyExtrudeEdge16.out" "groupParts25.ig";
connectAttr "polyTweak66.out" "polyExtrudeEdge17.ip";
connectAttr "polySurfaceShape8.wm" "polyExtrudeEdge17.mp";
connectAttr "groupParts25.og" "polyTweak66.ip";
connectAttr "polyExtrudeEdge17.out" "groupParts26.ig";
connectAttr "polyTweak67.out" "polyExtrudeEdge18.ip";
connectAttr "polySurfaceShape8.wm" "polyExtrudeEdge18.mp";
connectAttr "groupParts26.og" "polyTweak67.ip";
connectAttr "polyTweak68.out" "polySoftEdge23.ip";
connectAttr "polySurfaceShape8.wm" "polySoftEdge23.mp";
connectAttr "polyExtrudeEdge18.out" "polyTweak68.ip";
connectAttr "polySoftEdge23.out" "polySplitRing16.ip";
connectAttr "polySurfaceShape8.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "polySurfaceShape8.wm" "polySplitRing17.mp";
connectAttr "polyTweak69.out" "polyMapSewMove5.ip";
connectAttr "polyExtrudeEdge15.out" "polyTweak69.ip";
connectAttr "polyMapSewMove5.out" "polyTweakUV6.ip";
connectAttr "polyTweakUV6.out" "polyCopyUV1.ip";
connectAttr "polyCopyUV1.out" "polyTweakUV7.ip";
connectAttr "polyTweakUV7.out" "polyMapCut5.ip";
connectAttr "polyMapCut5.out" "polyTweakUV8.ip";
connectAttr "polyTweakUV8.out" "polyMapDel4.ip";
connectAttr "polyMapDel4.out" "polyPlanarProj1.ip";
connectAttr "polySurfaceShape7.wm" "polyPlanarProj1.mp";
connectAttr "polyPlanarProj1.out" "polyMapCut6.ip";
connectAttr "polyMapCut6.out" "polyTweakUV9.ip";
connectAttr "polyTweakUV9.out" "polyMapSewMove6.ip";
connectAttr "polyMapSewMove6.out" "polyTweakUV10.ip";
connectAttr "polySoftEdge18.out" "polyPlanarProj2.ip";
connectAttr "pCubeShape7.wm" "polyPlanarProj2.mp";
connectAttr "polyPlanarProj2.out" "polyMapCut7.ip";
connectAttr "polyMapCut7.out" "polyTweakUV11.ip";
connectAttr "polyTweakUV11.out" "polyMapCut8.ip";
connectAttr "polyMapCut8.out" "polyTweakUV12.ip";
connectAttr "polyTweakUV12.out" "createUVSet1.ig";
connectAttr "createUVSet1.og" "polyCopyUV2.ip";
connectAttr "polyCopyUV2.out" "polyTweakUV13.ip";
connectAttr "polySurfaceShape18.o" "polyCopyUV3.ip";
connectAttr "polyCopyUV3.out" "polyCopyUV4.ip";
connectAttr "polySplitRing17.out" "polyTweakUV15.ip";
connectAttr "polySoftEdge14.out" "polyTweakUV16.ip";
connectAttr "polyCopyUV4.out" "polyTweakUV17.ip";
connectAttr "polyTweakUV15.out" "polyTweak70.ip";
connectAttr "polyTweak70.out" "deleteComponent50.ig";
connectAttr "deleteComponent50.og" "polyMapDel5.ip";
connectAttr "polySoftEdge17.out" "polySplitRing18.ip";
connectAttr "pCubeShape6.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polyPlanarProj3.ip";
connectAttr "pCubeShape6.wm" "polyPlanarProj3.mp";
connectAttr "polyPlanarProj3.out" "polyMapCut9.ip";
connectAttr "polyMapCut9.out" "polyTweakUV18.ip";
connectAttr "polySoftEdge10.out" "polyMapCut10.ip";
connectAttr "polyMapCut10.out" "polyMapSewMove7.ip";
connectAttr "polyMapSewMove7.out" "polyMapSewMove8.ip";
connectAttr "polyMapSewMove8.out" "polyMapSewMove9.ip";
connectAttr "polyMapSewMove9.out" "polyMapSewMove10.ip";
connectAttr "polyMapSewMove10.out" "polyMapSewMove11.ip";
connectAttr "polyMapSewMove11.out" "polyMapSewMove12.ip";
connectAttr "polyMapSewMove12.out" "polyMapSewMove13.ip";
connectAttr "polyMapSewMove13.out" "polyMapSewMove14.ip";
connectAttr "polyMapSewMove14.out" "polyMapSewMove15.ip";
connectAttr "polyMapSewMove15.out" "polyTweakUV19.ip";
connectAttr "polyTweakUV19.out" "polyMapSewMove16.ip";
connectAttr "polyMapSewMove16.out" "polyMapSewMove17.ip";
connectAttr "polyMapSewMove17.out" "polyMapSewMove18.ip";
connectAttr "polyMapSewMove18.out" "polyMapSewMove19.ip";
connectAttr "polyMapSewMove19.out" "polyMapSewMove20.ip";
connectAttr "polyMapSewMove20.out" "polyMapSewMove21.ip";
connectAttr "polyMapSewMove21.out" "polyMapSewMove22.ip";
connectAttr "polyMapSewMove22.out" "polyMapSewMove23.ip";
connectAttr "polyMapSewMove23.out" "polyMapSewMove24.ip";
connectAttr "polyMapSewMove24.out" "polyMapSewMove25.ip";
connectAttr "polyMapSewMove25.out" "polyMapSewMove26.ip";
connectAttr "polyMapSewMove26.out" "polyMapSewMove27.ip";
connectAttr "polyMapSewMove27.out" "polyMapSewMove28.ip";
connectAttr "polyMapSewMove28.out" "polyMapSewMove29.ip";
connectAttr "polySoftEdge15.out" "polyMapSewMove30.ip";
connectAttr "polyMapSewMove30.out" "polyMapSewMove31.ip";
connectAttr "polyMapSewMove29.out" "polyMapSewMove32.ip";
connectAttr "polyMapSewMove32.out" "polyTweakUV20.ip";
connectAttr "polyMapSewMove31.out" "polyTweakUV21.ip";
connectAttr "polyTweakUV21.out" "polyMapSewMove33.ip";
connectAttr "polySoftEdge12.out" "polyMapSewMove34.ip";
connectAttr "polyMapSewMove34.out" "polyTweakUV22.ip";
connectAttr "polySoftEdge16.out" "polyMapSewMove35.ip";
connectAttr "polyMapSewMove35.out" "polyTweakUV23.ip";
connectAttr "polySoftEdge11.out" "polyMapSewMove36.ip";
connectAttr "polyMapSewMove36.out" "polyTweakUV24.ip";
connectAttr "polySoftEdge13.out" "polyMapSewMove37.ip";
connectAttr "polySoftEdge9.out" "polyMapSewMove38.ip";
connectAttr "polyMapSewMove37.out" "polyTweakUV25.ip";
connectAttr "polyMapSewMove38.out" "polyTweakUV26.ip";
connectAttr "polyTweakUV16.out" "polyMapSewMove39.ip";
connectAttr "polyMapSewMove39.out" "polyTweakUV27.ip";
connectAttr "polyMapSewMove33.out" "polyTweakUV28.ip";
connectAttr "polyTweakUV10.out" "polySoftEdge25.ip";
connectAttr "polySurfaceShape7.wm" "polySoftEdge25.mp";
connectAttr "polyMapDel5.out" "polyPlanarProj7.ip";
connectAttr "polySurfaceShape8.wm" "polyPlanarProj7.mp";
connectAttr "polyPlanarProj7.out" "polyMergeVert55.ip";
connectAttr "polySurfaceShape8.wm" "polyMergeVert55.mp";
connectAttr "polyMergeVert55.out" "polyMapCut14.ip";
connectAttr "polyMapCut14.out" "polyMapCut15.ip";
connectAttr "polyMapCut15.out" "polyTweakUV34.ip";
connectAttr "polyTweakUV34.out" "polyMapCut16.ip";
connectAttr "polyMapCut16.out" "polyTweakUV35.ip";
connectAttr "polyTweakUV35.out" "polyMapCut17.ip";
connectAttr "polyMapCut17.out" "polyTweakUV36.ip";
connectAttr "polyTweakUV36.out" "deleteComponent52.ig";
connectAttr "deleteComponent52.og" "polyMapDel8.ip";
connectAttr "polyMapDel8.out" "polyMapCut18.ip";
connectAttr "polyMapCut18.out" "polyTweakUV37.ip";
connectAttr "polyTweakUV37.out" "polyMapSewMove40.ip";
connectAttr "polyMapSewMove40.out" "polyMapDel9.ip";
connectAttr "polyMapDel9.out" "polyMapSewMove41.ip";
connectAttr "polyMapSewMove41.out" "polyTweakUV38.ip";
connectAttr "polyTweakUV38.out" "polyMapDel10.ip";
connectAttr "polyMapDel10.out" "polyTweakUV39.ip";
connectAttr "polyTweakUV39.out" "polyMapDel11.ip";
connectAttr "polyMapDel11.out" "polyMapSewMove42.ip";
connectAttr "polyMapSewMove42.out" "polyMapSewMove43.ip";
connectAttr "polyMapSewMove43.out" "polyTweakUV40.ip";
connectAttr "polyTweakUV40.out" "polyMergeUV1.ip";
connectAttr "polyMergeUV1.out" "polyTweakUV41.ip";
connectAttr "polyTweakUV41.out" "polyMergeUV2.ip";
connectAttr "polyMergeUV2.out" "polyMapCut19.ip";
connectAttr "polyMapCut19.out" "polyTweakUV42.ip";
connectAttr "polyTweakUV42.out" "polyMapCut20.ip";
connectAttr "polyMapCut20.out" "polyMapDel12.ip";
connectAttr "polyMapDel12.out" "polyMapSewMove44.ip";
connectAttr "polyMapSewMove44.out" "polyMapSewMove45.ip";
connectAttr "polyMapSewMove45.out" "polyTweakUV43.ip";
connectAttr "polyTweakUV43.out" "deleteComponent53.ig";
connectAttr "deleteComponent53.og" "polyTweakUV44.ip";
connectAttr "polyTweakUV44.out" "polyMapCut21.ip";
connectAttr "polyMapCut21.out" "polyTweakUV45.ip";
connectAttr "polyTweakUV45.out" "polyMapDel13.ip";
connectAttr "polyMapDel13.out" "polyMapDel14.ip";
connectAttr "polyMapDel14.out" "polyTweakUV46.ip";
connectAttr "polyTweakUV46.out" "polyMapDel15.ip";
connectAttr "polyMapDel15.out" "polyMapDel16.ip";
connectAttr "polyMapDel16.out" "polyTweakUV47.ip";
connectAttr "polyTweakUV47.out" "polyMapSewMove46.ip";
connectAttr "polyMapSewMove46.out" "polyMapSewMove47.ip";
connectAttr "polyMapSewMove47.out" "polyTweakUV48.ip";
connectAttr "polyTweakUV48.out" "polyAutoProj2.ip";
connectAttr "polySurfaceShape8.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "polyMapSewMove48.ip";
connectAttr "polyMapSewMove48.out" "polyTweakUV49.ip";
connectAttr "polyTweakUV49.out" "polyMergeVert56.ip";
connectAttr "polySurfaceShape8.wm" "polyMergeVert56.mp";
connectAttr "polyMergeVert56.out" "polyMapSewMove49.ip";
connectAttr "polyMapSewMove49.out" "polyTweakUV50.ip";
connectAttr "polyTweakUV50.out" "polyMapCut22.ip";
connectAttr "polyMapCut22.out" "polyTweakUV51.ip";
connectAttr "polyTweakUV51.out" "polyMergeUV3.ip";
connectAttr "polyMergeUV3.out" "polyTweakUV52.ip";
connectAttr "polyTweakUV52.out" "polyMapSewMove50.ip";
connectAttr "polyMapSewMove50.out" "polyMapSewMove51.ip";
connectAttr "polyMapSewMove51.out" "polyMapSewMove52.ip";
connectAttr "polyMapSewMove52.out" "polyMapSewMove53.ip";
connectAttr "polyMapSewMove53.out" "polyMapSewMove54.ip";
connectAttr "polyMapSewMove54.out" "polyMapSewMove55.ip";
connectAttr "polyMapSewMove55.out" "polyMapSewMove56.ip";
connectAttr "polyMapSewMove56.out" "polyMapSewMove57.ip";
connectAttr "polyMapSewMove57.out" "polyTweakUV53.ip";
connectAttr "polyTweakUV53.out" "polyMapCut23.ip";
connectAttr "polyMapCut23.out" "polyTweakUV54.ip";
connectAttr "polyTweakUV54.out" "polyAutoProj3.ip";
connectAttr "polySurfaceShape8.wm" "polyAutoProj3.mp";
connectAttr "polyAutoProj3.out" "polyMapSewMove58.ip";
connectAttr "polyMapSewMove58.out" "polyMapSewMove59.ip";
connectAttr "polyMapSewMove59.out" "polyTweakUV55.ip";
connectAttr "polyTweakUV55.out" "polyMapCut24.ip";
connectAttr "polyMapCut24.out" "polyMapSewMove60.ip";
connectAttr "polyMapSewMove60.out" "polyMapSewMove61.ip";
connectAttr "polyMapSewMove61.out" "polyMapSewMove62.ip";
connectAttr "polyMapSewMove62.out" "polyMapSewMove63.ip";
connectAttr "polyMapSewMove63.out" "polyMapSewMove64.ip";
connectAttr "polyMapSewMove64.out" "polyTweakUV56.ip";
connectAttr "polyTweakUV56.out" "polyMapSewMove65.ip";
connectAttr "polyMapSewMove65.out" "polyMapSewMove66.ip";
connectAttr "polyMapSewMove66.out" "polyMapSewMove67.ip";
connectAttr "polyMapSewMove67.out" "polyMapSewMove68.ip";
connectAttr "polyMapSewMove68.out" "polyMapCut25.ip";
connectAttr "polyMapCut25.out" "polyTweakUV57.ip";
connectAttr "polyTweakUV57.out" "polyPlanarProj8.ip";
connectAttr "polySurfaceShape8.wm" "polyPlanarProj8.mp";
connectAttr "polyPlanarProj8.out" "polyTweakUV58.ip";
connectAttr "polySoftEdge21.out" "polyTweakUV59.ip";
connectAttr "checker1.oc" "Texture.c";
connectAttr "Texture.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo8.sg";
connectAttr "Texture.msg" "materialInfo8.m";
connectAttr "checker1.msg" "materialInfo8.t" -na;
connectAttr "polyTweakUV59.out" "polyAutoProj4.ip";
connectAttr "polySurfaceShape9.wm" "polyAutoProj4.mp";
connectAttr "polyAutoProj4.out" "polyMapSewMove69.ip";
connectAttr "polyMapSewMove69.out" "polyTweakUV60.ip";
connectAttr "place2dTexture2.o" "checker1.uv";
connectAttr "place2dTexture2.ofs" "checker1.fs";
connectAttr "file1.oc" "mia_material_x4.S01";
connectAttr "file1.oa" "mia_material_x4.S01A";
connectAttr "mia_material_x4.msg" "mia_material_x4SG.mips";
connectAttr "mia_material_x4.msg" "mia_material_x4SG.miss";
connectAttr "mia_material_x4.msg" "mia_material_x4SG.mims";
connectAttr "mia_material_x4SG.msg" "materialInfo9.sg";
connectAttr "mia_material_x4.msg" "materialInfo9.m";
connectAttr "file1.msg" "materialInfo9.t" -na;
connectAttr "place2dTexture3.c" "file1.c";
connectAttr "place2dTexture3.tf" "file1.tf";
connectAttr "place2dTexture3.rf" "file1.rf";
connectAttr "place2dTexture3.mu" "file1.mu";
connectAttr "place2dTexture3.mv" "file1.mv";
connectAttr "place2dTexture3.s" "file1.s";
connectAttr "place2dTexture3.wu" "file1.wu";
connectAttr "place2dTexture3.wv" "file1.wv";
connectAttr "place2dTexture3.re" "file1.re";
connectAttr "place2dTexture3.of" "file1.of";
connectAttr "place2dTexture3.r" "file1.ro";
connectAttr "place2dTexture3.n" "file1.n";
connectAttr "place2dTexture3.vt1" "file1.vt1";
connectAttr "place2dTexture3.vt2" "file1.vt2";
connectAttr "place2dTexture3.vt3" "file1.vt3";
connectAttr "place2dTexture3.vc1" "file1.vc1";
connectAttr "place2dTexture3.o" "file1.uv";
connectAttr "place2dTexture3.ofs" "file1.fs";
connectAttr "file2.oc" "lambert3.c";
connectAttr "file2.ot" "lambert3.it";
connectAttr "bump2d1.o" "lambert3.n";
connectAttr "lambert3.oc" "lambert3SG.ss";
connectAttr "pCubeShape8.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape11.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape10.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape9.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape7.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape6.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape5.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape4.iog" "lambert3SG.dsm" -na;
connectAttr "pPlaneShape8.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape7.iog" "lambert3SG.dsm" -na;
connectAttr "pCubeShape6.iog" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape7.iog" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape9.iog" "lambert3SG.dsm" -na;
connectAttr "polySurfaceShape8.iog" "lambert3SG.dsm" -na;
connectAttr "polySurface2Shape.iog" "lambert3SG.dsm" -na;
connectAttr "lambert3SG.msg" "materialInfo10.sg";
connectAttr "lambert3.msg" "materialInfo10.m";
connectAttr "file2.msg" "materialInfo10.t" -na;
connectAttr "place2dTexture4.c" "file2.c";
connectAttr "place2dTexture4.tf" "file2.tf";
connectAttr "place2dTexture4.rf" "file2.rf";
connectAttr "place2dTexture4.mu" "file2.mu";
connectAttr "place2dTexture4.mv" "file2.mv";
connectAttr "place2dTexture4.s" "file2.s";
connectAttr "place2dTexture4.wu" "file2.wu";
connectAttr "place2dTexture4.wv" "file2.wv";
connectAttr "place2dTexture4.re" "file2.re";
connectAttr "place2dTexture4.of" "file2.of";
connectAttr "place2dTexture4.r" "file2.ro";
connectAttr "place2dTexture4.n" "file2.n";
connectAttr "place2dTexture4.vt1" "file2.vt1";
connectAttr "place2dTexture4.vt2" "file2.vt2";
connectAttr "place2dTexture4.vt3" "file2.vt3";
connectAttr "place2dTexture4.vc1" "file2.vc1";
connectAttr "place2dTexture4.o" "file2.uv";
connectAttr "place2dTexture4.ofs" "file2.fs";
connectAttr "place2dTexture5.c" "file3.c";
connectAttr "place2dTexture5.tf" "file3.tf";
connectAttr "place2dTexture5.rf" "file3.rf";
connectAttr "place2dTexture5.mu" "file3.mu";
connectAttr "place2dTexture5.mv" "file3.mv";
connectAttr "place2dTexture5.s" "file3.s";
connectAttr "place2dTexture5.wu" "file3.wu";
connectAttr "place2dTexture5.wv" "file3.wv";
connectAttr "place2dTexture5.re" "file3.re";
connectAttr "place2dTexture5.of" "file3.of";
connectAttr "place2dTexture5.r" "file3.ro";
connectAttr "place2dTexture5.n" "file3.n";
connectAttr "place2dTexture5.vt1" "file3.vt1";
connectAttr "place2dTexture5.vt2" "file3.vt2";
connectAttr "place2dTexture5.vt3" "file3.vt3";
connectAttr "place2dTexture5.vc1" "file3.vc1";
connectAttr "place2dTexture5.o" "file3.uv";
connectAttr "place2dTexture5.ofs" "file3.fs";
connectAttr "file3.oa" "bump2d1.bv";
connectAttr "polyTweakUV58.out" "polyAutoProj5.ip";
connectAttr "polySurfaceShape8.wm" "polyAutoProj5.mp";
connectAttr "polyAutoProj5.out" "polyTweakUV61.ip";
connectAttr "polyTweakUV61.out" "polyMapSewMove70.ip";
connectAttr "polyMapSewMove70.out" "polyMapSewMove71.ip";
connectAttr "polyMapSewMove71.out" "polyMapSewMove72.ip";
connectAttr "polyMapSewMove72.out" "polyMapSewMove73.ip";
connectAttr "polyMapSewMove73.out" "polyMapSewMove74.ip";
connectAttr "polyMapSewMove74.out" "polyMapSewMove75.ip";
connectAttr "polyMapSewMove75.out" "polyMapSewMove76.ip";
connectAttr "polyMapSewMove76.out" "polyTweakUV62.ip";
connectAttr "polyTweakUV62.out" "polyPlanarProj9.ip";
connectAttr "polySurfaceShape8.wm" "polyPlanarProj9.mp";
connectAttr "polyPlanarProj9.out" "polyTweakUV63.ip";
connectAttr "polyTweakUV13.out" "polyMapDel17.ip";
connectAttr "polyMapDel17.out" "polyCopyUV6.ip";
connectAttr "polyTweakUV17.out" "polyMapDel18.ip";
connectAttr "polyMapDel18.out" "polyCopyUV7.ip";
connectAttr "polyTweakUV63.out" "polyNormal1.ip";
connectAttr "polyNormal1.out" "polyNormal2.ip";
connectAttr "polyNormal2.out" "polyNormal3.ip";
connectAttr "polyNormal3.out" "polyNormal4.ip";
connectAttr "polyMapCut13.out" "polyTweakUV33.ip";
connectAttr "polyPlanarProj6.out" "polyMapCut13.ip";
connectAttr "polyTweakUV32.out" "polyPlanarProj6.ip";
connectAttr "polySurface2Shape.wm" "polyPlanarProj6.mp";
connectAttr "polyMapCut12.out" "polyTweakUV32.ip";
connectAttr "polyPlanarProj5.out" "polyMapCut12.ip";
connectAttr "polyTweakUV31.out" "polyPlanarProj5.ip";
connectAttr "polySurface2Shape.wm" "polyPlanarProj5.mp";
connectAttr "deleteComponent51.og" "polyTweakUV31.ip";
connectAttr "polyTweakUV30.out" "deleteComponent51.ig";
connectAttr "polyMapDel7.out" "polyTweakUV30.ip";
connectAttr "polyMapDel6.out" "polyMapDel7.ip";
connectAttr "polyTweakUV29.out" "polyMapDel6.ip";
connectAttr "polyMapCut11.out" "polyTweakUV29.ip";
connectAttr "polyPlanarProj4.out" "polyMapCut11.ip";
connectAttr "polyTweak72.out" "polyPlanarProj4.ip";
connectAttr "polySurface2Shape.wm" "polyPlanarProj4.mp";
connectAttr "polySplit29.out" "polyTweak72.ip";
connectAttr "polySplit28.out" "polySplit29.ip";
connectAttr "polySplit27.out" "polySplit28.ip";
connectAttr "polySplit26.out" "polySplit27.ip";
connectAttr "polySplitRing21.out" "polySplit26.ip";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "polySurface2Shape.wm" "polySplitRing21.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "polySurface2Shape.wm" "polySplitRing20.mp";
connectAttr "polySoftEdge24.out" "polySplitRing19.ip";
connectAttr "polySurface2Shape.wm" "polySplitRing19.mp";
connectAttr "polyTweak71.out" "polySoftEdge24.ip";
connectAttr "polySurface2Shape.wm" "polySoftEdge24.mp";
connectAttr "polyTweakUV14.out" "polyTweak71.ip";
connectAttr "polyCollapseF6.out" "polyTweakUV14.ip";
connectAttr "polyExtrudeFace12.out" "polyCollapseF6.ip";
connectAttr "polyCollapseF5.out" "polyExtrudeFace12.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace11.out" "polyCollapseF5.ip";
connectAttr "polyTweak17.out" "polyExtrudeFace11.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak17.ip";
connectAttr "polyCollapseF4.out" "polyExtrudeFace10.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace9.out" "polyCollapseF4.ip";
connectAttr "polyTweak16.out" "polyExtrudeFace9.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace9.mp";
connectAttr "polyCollapseF3.out" "polyTweak16.ip";
connectAttr "polyTweak15.out" "polyCollapseF3.ip";
connectAttr "polyExtrudeFace8.out" "polyTweak15.ip";
connectAttr "polyCollapseF2.out" "polyExtrudeFace8.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace8.mp";
connectAttr "polyCollapseF1.out" "polyCollapseF2.ip";
connectAttr "polyTweak14.out" "polyCollapseF1.ip";
connectAttr "polyExtrudeFace7.out" "polyTweak14.ip";
connectAttr "polyTweak13.out" "polyExtrudeFace7.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak13.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace6.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace6.mp";
connectAttr "polyExtrudeFace5.out" "polyTweak12.ip";
connectAttr "polyTweak11.out" "polyExtrudeFace5.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak11.ip";
connectAttr "deleteComponent27.og" "polyExtrudeFace4.ip";
connectAttr "polySurface2Shape.wm" "polyExtrudeFace4.mp";
connectAttr "polyMergeVert10.out" "deleteComponent27.ig";
connectAttr "polyMergeVert9.out" "polyMergeVert10.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert10.mp";
connectAttr "polyMergeVert8.out" "polyMergeVert9.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert9.mp";
connectAttr "polyMergeVert7.out" "polyMergeVert8.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert8.mp";
connectAttr "polyTweak9.out" "polyMergeVert7.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert7.mp";
connectAttr "deleteComponent26.og" "polyTweak9.ip";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "polyMirror1.out" "deleteComponent23.ig";
connectAttr "polyTweak8.out" "polyMirror1.ip";
connectAttr "polySurface2Shape.wm" "polyMirror1.mp";
connectAttr "deleteComponent22.og" "polyTweak8.ip";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "polyMergeVert6.out" "deleteComponent17.ig";
connectAttr "polyMergeVert5.out" "polyMergeVert6.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert6.mp";
connectAttr "polyMergeVert4.out" "polyMergeVert5.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert5.mp";
connectAttr "polyMergeVert3.out" "polyMergeVert4.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert4.mp";
connectAttr "polyMergeVert2.out" "polyMergeVert3.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert3.mp";
connectAttr "polyMergeVert1.out" "polyMergeVert2.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert2.mp";
connectAttr "polyUnite2.out" "polyMergeVert1.ip";
connectAttr "polySurface2Shape.wm" "polyMergeVert1.mp";
connectAttr "polySurfaceShape2.o" "polyUnite2.ip[0]";
connectAttr "pCubeShape2.o" "polyUnite2.ip[1]";
connectAttr "polySurfaceShape2.wm" "polyUnite2.im[0]";
connectAttr "pCubeShape2.wm" "polyUnite2.im[1]";
connectAttr "polyNormal4.out" "polyNormal5.ip";
connectAttr "polyNormal5.out" "polyNormal6.ip";
connectAttr "polyNormal6.out" "polyNormal7.ip";
connectAttr "polyNormal7.out" "polyNormal8.ip";
connectAttr "polyNormal8.out" "polyPlanarProj10.ip";
connectAttr "polySurfaceShape8.wm" "polyPlanarProj10.mp";
connectAttr "polyPlanarProj10.out" "polyTweakUV64.ip";
connectAttr "polyTweakUV64.out" "polyNormal9.ip";
connectAttr "polyNormal9.out" "polyNormal10.ip";
connectAttr "misss_fast_shader_x1SG.pa" ":renderPartition.st" -na;
connectAttr "misss_fast_shader_x2SG.pa" ":renderPartition.st" -na;
connectAttr "misss_fast_shader_x_passes1SG.pa" ":renderPartition.st" -na;
connectAttr "fire.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x2SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x3SG.pa" ":renderPartition.st" -na;
connectAttr "blinn1SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "mia_material_x4SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "misss_fast_shader_x1.msg" ":defaultShaderList1.s" -na;
connectAttr "misss_fast_shader_x2.msg" ":defaultShaderList1.s" -na;
connectAttr "misss_fast_shader_x_passes1.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material_x1.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material_x2.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material_x3.msg" ":defaultShaderList1.s" -na;
connectAttr "blinn1.msg" ":defaultShaderList1.s" -na;
connectAttr "Texture.msg" ":defaultShaderList1.s" -na;
connectAttr "mia_material_x4.msg" ":defaultShaderList1.s" -na;
connectAttr "lambert3.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture4.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture5.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "bump2d1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "directionalLightShape1.ltd" ":lightList1.l" -na;
connectAttr "directionalLightShape2.ltd" ":lightList1.l" -na;
connectAttr "pointLightShape1.ltd" ":lightList1.l" -na;
connectAttr "fractal1.msg" ":defaultTextureList1.tx" -na;
connectAttr "checker1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "pCubeShape1.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.ciog.cog[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape1.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface1|transform7|polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "|polySurface4|transform9|polySurface1Shape.iog.og[0]" ":initialShadingGroup.dsm"
		 -na;
connectAttr "pCubeShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface5Shape.iog.og[1]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurface5Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape5.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape6.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape12.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pPlaneShape13.iog" ":initialShadingGroup.dsm" -na;
connectAttr "groupId1.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId6.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId12.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId13.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId14.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId15.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId17.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId18.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId19.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId21.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId22.msg" ":initialShadingGroup.gn" -na;
connectAttr "directionalLight1.iog" ":defaultLightSet.dsm" -na;
connectAttr "directionalLight2.iog" ":defaultLightSet.dsm" -na;
connectAttr "pointLight1.iog" ":defaultLightSet.dsm" -na;
dataStructure -fmt "raw" -as "name=externalContentTable:string=node:string=key:string=upath:uint32=upathcrc:string=rpath:string=roles";
applyMetadata -fmt "raw" -v "channel\nname externalContentTable\nstream\nname v1.0\nindexType numeric\nstructure externalContentTable\n0\n\"|directionalLight1|directionalLightShape1\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\n1\n\"|directionalLight2|directionalLightShape2\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\n2\n\"|pointLight1|pointLightShape1\" \"dmapName\" \"depthmap\" 2097411553 \"\" \"sourceImages\"\n3\n\"file1\" \"fileTextureName\" \"C:/Users/rasmul2/Desktop/Experimental Game Design/fire.png\" 63598174 \"C:/Users/rasmul2/Desktop/Experimental Game Design/fire.png\" \"sourceImages\"\n4\n\"file2\" \"fileTextureName\" \"C:/Users/rasmul2/Desktop/Experimental Game Design/fire.png\" 63598174 \"C:/Users/rasmul2/Desktop/Experimental Game Design/fire.png\" \"sourceImages\"\nendStream\nendChannel\nendAssociations\n" 
		-scn;
// End of fire_character.ma
