ROOT=$1
# Change to the current directory
cd $PWD

# Remove the "result_instrumented" folder if it exists
if [ -d result_instrumented ]; then
    rm -rf result_instrumented
fi

# Create a new "result_instrumented" folder
mkdir result_instrumented
cp tcas.c result_instrumented/
cd result_instrumented
# Build the code without coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o tcas.exe tcas.c -w
mkdir outputs


./tcas.exe  958 1 1 2597  574 4253 0  399  400 0 0 1     > ./outputs/t1

./tcas.exe  627 0 0  621  216  382 1  400  641 1 1 0     > ./outputs/t2

./tcas.exe  549 1 1 4398  133 1445 1  641  639 0 0 1     > ./outputs/t3

./tcas.exe  576 0 1 3469  183  381 2  641  501 1 0 1     > ./outputs/t4

./tcas.exe  992 1 0 3342   23 4657 1  640  741 0 0 0     > ./outputs/t5

./tcas.exe  548 0 1   34  542 3514 2  499  401 1 1 1     > ./outputs/t6

./tcas.exe  710 0 0  127  403 4616 3  500  400 0 0 0     > ./outputs/t7

./tcas.exe  638 0 1  698  499 2465 3  500  501 0 0 0     > ./outputs/t8

./tcas.exe  893 1 0  205  283 5056 3  400  641 1 1 1     > ./outputs/t9

./tcas.exe  976 1 1 5378  390 1000 2  641  741 1 0 0     > ./outputs/t10

./tcas.exe  763 0 0  136  576 2305 0  401  741 0 0 0     > ./outputs/t11

./tcas.exe  570 0 1 1945  376 2064 0  739  740 1 1 1     > ./outputs/t12

./tcas.exe  967 1 0  659  204 3825 3  500  399 0 0 0     > ./outputs/t13

./tcas.exe  892 0 1 2009   40 1011 1  641  740 1 1 0     > ./outputs/t14

./tcas.exe  911 1 1 4194  242 4667 1  401  399 1 1 1     > ./outputs/t15

./tcas.exe  929 0 1 1072  134 1036 1  741  639 1 1 0     > ./outputs/t16

./tcas.exe  588 1 0 4341  336 2774 2  740  400 1 0 1     > ./outputs/t17

./tcas.exe  963 0 0 5985  377  994 3  400  499 0 1 1     > ./outputs/t18

./tcas.exe  699 1 1  619  432  912 2  740  639 0 1 0     > ./outputs/t19

./tcas.exe  818 0 1 1876  318  793 1  499  501 1 0 0     > ./outputs/t20

./tcas.exe  926 1 0 1694  263  651 2  501  499 1 0 0     > ./outputs/t21

./tcas.exe  579 0 1  882  101 5381 0  639  499 0 1 0     > ./outputs/t22

./tcas.exe  878 0 0 1063   86 4714 1  499  400 0 0 0     > ./outputs/t23

./tcas.exe  822 0 1 1469  234 4419 1  399  399 1 1 1     > ./outputs/t24

./tcas.exe  653 1 0  432   67  203 0  401  401 1 0 0     > ./outputs/t25

./tcas.exe  601 1 1  777  424  309 1  641  401 0 1 1     > ./outputs/t26

./tcas.exe  764 0 1 2969  491 2466 0  639  501 0 1 1     > ./outputs/t27

./tcas.exe  594 1 1 2484  121 1193 2  500  740 0 0 1     > ./outputs/t28

./tcas.exe  992 1 0 1793  517  254 0  739  500 1 1 1     > ./outputs/t29

./tcas.exe  832 1 1 4454  148 4683 3  501  640 0 1 1     > ./outputs/t30

./tcas.exe  882 0 1  674  444  191 3  741  740 1 0 0     > ./outputs/t31

./tcas.exe  753 1 0 3203  448 1667 0  501  641 0 0 0     > ./outputs/t32

./tcas.exe  953 1 1  682   24 2477 2  739  399 1 1 0     > ./outputs/t33

./tcas.exe  588 1 0 3362   93 1315 3  741  639 1 0 1     > ./outputs/t34

./tcas.exe  965 0 0 2078   76  303 1  401  640 0 1 1     > ./outputs/t35

./tcas.exe  612 0 0 5073  510 1151 1  501  500 1 0 0     > ./outputs/t36

./tcas.exe  783 1 0 4006  586 1219 0  501  740 0 1 1     > ./outputs/t37

./tcas.exe  903 0 1 4075  608 5049 1  399  741 0 1 1     > ./outputs/t38

./tcas.exe  888 0 0 2521  241  647 1  741  639 1 0 0     > ./outputs/t39

./tcas.exe  971 0 1  183  524  747 2  400  401 1 1 1     > ./outputs/t40

./tcas.exe  668 0 0 4507  418 4267 2  740  640 0 1 1     > ./outputs/t41

./tcas.exe  731 0 0 2686  128  674 2  499  740 0 0 0     > ./outputs/t42

./tcas.exe  935 0 0  121  179 2414 0  501  639 1 0 1     > ./outputs/t43

./tcas.exe  952 1 1  802   26 3803 1  400  740 1 1 0     > ./outputs/t44

./tcas.exe  673 1 0 2913   18 2294 3  400  641 0 1 0     > ./outputs/t45

./tcas.exe  832 0 1  934    9 1145 2  399  401 0 1 1     > ./outputs/t46

./tcas.exe  547 1 1 1723  236 2963 0  739  501 1 1 1     > ./outputs/t47

./tcas.exe  799 0 1 5588  485  211 0  399  499 0 0 1     > ./outputs/t48

./tcas.exe  711 0 0  201  181 2943 1  739  741 0 0 0     > ./outputs/t49

./tcas.exe  987 0 0  813  318  888 3  641  400 1 0 0     > ./outputs/t50

./tcas.exe  821 0 1  138   79  356 2  399  640 0 1 1     > ./outputs/t51

./tcas.exe  528 1 0 5170   22  500 1  740  639 1 1 1     > ./outputs/t52

./tcas.exe  896 1 1 5784  557  585 2  739  641 1 0 0     > ./outputs/t53

./tcas.exe  546 0 1 1900  507 4846 1  501  641 0 1 1     > ./outputs/t54

./tcas.exe  822 0 0  447  353 1740 2  399  639 0 0 1     > ./outputs/t55

./tcas.exe  796 0 1  108   59  134 3  640  740 1 1 0     > ./outputs/t56

./tcas.exe  775 1 1 2961  373 5279 3  640  499 0 1 0     > ./outputs/t57

./tcas.exe  763 1 1 2635  387 4709 3  641  741 0 0 1     > ./outputs/t58

./tcas.exe  568 1 1 3423   52 3011 3  499  640 0 1 1     > ./outputs/t59

./tcas.exe  972 0 1 4644  495 4090 1  640  500 0 0 1     > ./outputs/t60

./tcas.exe  562 0 0 1642   19  895 2  400  739 0 0 1     > ./outputs/t61

./tcas.exe  804 0 1 3945   71  376 2  501  739 0 0 0     > ./outputs/t62

./tcas.exe  610 0 1  282  158   14 3  500  499 1 1 0     > ./outputs/t63

./tcas.exe  743 1 0  773  436  860 2  501  740 1 0 1     > ./outputs/t64

./tcas.exe  947 1 0 1660  606 2279 3  739  500 1 0 0     > ./outputs/t65

./tcas.exe  919 0 1  904  185 2680 0  641  401 0 0 0     > ./outputs/t66

./tcas.exe  529 0 1 2376  616 4702 3  501  739 0 0 0     > ./outputs/t67

./tcas.exe  632 0 1 1479  544 2213 1  499  641 1 0 0     > ./outputs/t68

./tcas.exe  871 0 1 4564  133  362 1  499  400 0 0 0     > ./outputs/t69

./tcas.exe  562 1 1 2836  195 5909 2  499  741 0 1 1     > ./outputs/t70

./tcas.exe  610 0 1  135  539 5537 1  739  639 1 0 0     > ./outputs/t71

./tcas.exe  867 1 1 1874  201 4704 0  499  499 1 0 1     > ./outputs/t72

./tcas.exe  845 1 0  647  226 4212 2  501  499 0 0 1     > ./outputs/t73

./tcas.exe  822 1 0 5034  541 2582 2  740  740 0 1 0     > ./outputs/t74

./tcas.exe  769 0 1  903   91  233 3  399  740 1 1 0     > ./outputs/t75

./tcas.exe  667 0 0 4200  562  645 3  640  739 1 0 1     > ./outputs/t76

./tcas.exe  597 0 0 5459  555 2985 3  741  401 1 1 0     > ./outputs/t77

./tcas.exe  959 1 1 1600  566 3684 1  641  740 0 0 1     > ./outputs/t78

./tcas.exe  557 0 1 1365  369  241 0  500  401 0 0 0     > ./outputs/t79

./tcas.exe  877 0 1 3749  566 3439 1  641  739 0 1 0     > ./outputs/t80

./tcas.exe  637 1 1  486  588 3732 2  399  641 1 0 1     > ./outputs/t81

./tcas.exe  950 1 1 1309    2 5510 3  740  639 1 0 0     > ./outputs/t82

./tcas.exe  925 0 1  508  500 1124 3  740  740 1 0 1     > ./outputs/t83

./tcas.exe  691 0 0 1625  534 5258 0  400  639 1 0 0     > ./outputs/t84

./tcas.exe  833 1 1  927  145 2642 2  641  501 1 0 1     > ./outputs/t85

./tcas.exe  804 0 1 1933  194 1176 0  640  639 1 0 0     > ./outputs/t86

./tcas.exe  937 0 1 2358  298  524 1  740  741 1 1 1     > ./outputs/t87

./tcas.exe  542 0 0   96  231 2100 2  400  741 1 0 0     > ./outputs/t88

./tcas.exe  975 0 0 1371  238 1272 1  400  640 1 1 1     > ./outputs/t89

./tcas.exe  690 0 0  173  231  681 1  499  741 1 1 1     > ./outputs/t90

./tcas.exe  866 1 1 5987   18 2595 1  639  639 0 0 0     > ./outputs/t91

./tcas.exe  915 0 0 1855   99 3443 2  401  740 0 0 1     > ./outputs/t92

./tcas.exe  630 1 0 3335  578 2359 3  401  740 1 0 1     > ./outputs/t93

./tcas.exe  843 1 1 1806  481 1209 3  640  500 1 1 1     > ./outputs/t94

./tcas.exe  564 1 0  389  179  377 3  741  501 0 1 0     > ./outputs/t95

./tcas.exe  685 1 1 4828  116  410 2  501  500 1 1 0     > ./outputs/t96

./tcas.exe  716 0 0 1318   76   54 2  400  640 1 1 1     > ./outputs/t97

./tcas.exe  624 1 0 3575  185 2668 2  501  639 0 1 1     > ./outputs/t98

./tcas.exe  922 0 0 5533  587 5628 1  640  499 0 0 0     > ./outputs/t99

./tcas.exe  651 1 0  270  517 5308 0  739  740 0 1 1     > ./outputs/t100

./tcas.exe  931 0 0  472  619  702 3  639  740 0 0 1     > ./outputs/t101

./tcas.exe  827 0 1 1691  437  776 1  641  399 1 0 1     > ./outputs/t102

./tcas.exe  636 0 0 4210  340 4046 0  741  401 0 1 1     > ./outputs/t103

./tcas.exe  838 1 0 5179  451 3128 2  399  740 1 0 0     > ./outputs/t104

./tcas.exe  807 1 1 3747  344 2226 1  641  401 0 0 1     > ./outputs/t105

./tcas.exe  953 1 1 5194  356 2325 3  501  401 1 1 0     > ./outputs/t106

./tcas.exe  779 1 1 5328  619 4294 0  501  399 0 1 1     > ./outputs/t107

./tcas.exe  932 0 1 2219  415  189 0  641  500 1 1 0     > ./outputs/t108

./tcas.exe  969 1 0  691  510  603 1  740  399 1 1 1     > ./outputs/t109

./tcas.exe  530 0 0  515   36  368 2  740  400 1 1 1     > ./outputs/t110

./tcas.exe  940 1 1  203  198  885 0  499  500 0 0 0     > ./outputs/t111

./tcas.exe  877 0 0  996  157 2459 1  501  740 1 1 0     > ./outputs/t112

./tcas.exe  779 1 0 4175   94 5280 1  739  499 0 1 1     > ./outputs/t113

./tcas.exe  753 1 0 5017   27 1162 3  740  640 1 0 0     > ./outputs/t114

./tcas.exe  890 0 1 4178  598 5835 2  741  401 1 0 1     > ./outputs/t115

./tcas.exe  969 1 1  375  228  986 0  499  499 1 1 1     > ./outputs/t116

./tcas.exe  705 0 0 3770  607  499 1  401  399 0 0 0     > ./outputs/t117

./tcas.exe  886 1 1 1380  305 2806 0  641  739 0 0 0     > ./outputs/t118

./tcas.exe  833 0 0  981  545  739 0  499  399 1 0 0     > ./outputs/t119

./tcas.exe  656 0 0  892  409 4552 1  399  639 0 1 1     > ./outputs/t120

./tcas.exe  913 0 0   58   84 1982 1  739  500 1 1 1     > ./outputs/t121

./tcas.exe  675 1 0  300  395 2397 2  501  639 0 1 1     > ./outputs/t122

./tcas.exe  625 1 1 3344  560 3343 1  501  499 1 1 0     > ./outputs/t123

./tcas.exe  750 0 0 5769   41  906 1  401  741 0 1 1     > ./outputs/t124

./tcas.exe  817 1 0  973  245 3280 3  740  640 1 0 1     > ./outputs/t125

./tcas.exe  651 0 1  982  211  394 3  500  741 0 0 0     > ./outputs/t126

./tcas.exe  646 0 1 1598  269 5991 0  400  739 0 0 0     > ./outputs/t127

./tcas.exe  670 1 1 1329  428 5569 1  399  740 1 1 1     > ./outputs/t128

./tcas.exe  622 1 0 4421  180 1996 2  639  640 0 1 0     > ./outputs/t129

./tcas.exe  548 1 1 4416  322 1952 0  739  500 0 0 0     > ./outputs/t130

./tcas.exe  654 1 1 2133  113  442 3  641  741 0 0 0     > ./outputs/t131

./tcas.exe  543 0 1 2857  188 2979 3  401  741 0 0 0     > ./outputs/t132

./tcas.exe  845 1 0 2624  419 4353 1  400  641 1 1 1     > ./outputs/t133

./tcas.exe  837 1 1 3649   52 3911 3  640  499 0 1 0     > ./outputs/t134

./tcas.exe  812 1 0 2155  530 1846 2  640  739 0 1 1     > ./outputs/t135

./tcas.exe  554 1 0 4534    6 1975 3  399  499 1 1 1     > ./outputs/t136

./tcas.exe  888 1 0 3648  302  215 1  501  399 1 1 0     > ./outputs/t137

./tcas.exe  702 1 1 3653  250  423 1  401  501 0 0 0     > ./outputs/t138

./tcas.exe  774 1 1  551  433 2572 1  740  639 0 0 1     > ./outputs/t139

./tcas.exe  594 1 1 5449  318 4116 1  400  501 1 1 1     > ./outputs/t140

./tcas.exe  961 0 1  902  126 3531 1  740  500 1 0 0     > ./outputs/t141

./tcas.exe  934 1 1 2743  366 5463 2  739  399 0 1 1     > ./outputs/t142

./tcas.exe  533 0 0 5750  407 4328 2  641  400 1 1 1     > ./outputs/t143

./tcas.exe  712 1 1 2545  341 4146 0  641  740 1 0 0     > ./outputs/t144

./tcas.exe  780 0 0  702   12 4837 3  740  739 1 0 0     > ./outputs/t145

./tcas.exe  861 1 1 2982  567 3850 3  400  401 1 0 1     > ./outputs/t146

./tcas.exe  829 1 0 4012  389  818 1  401  400 0 1 1     > ./outputs/t147

./tcas.exe  660 0 1 3874   28  726 1  400  401 1 1 0     > ./outputs/t148

./tcas.exe  716 1 1 2749  240  993 3  401  739 0 1 0     > ./outputs/t149

./tcas.exe  739 1 1  609   48 1187 1  741  639 1 1 1     > ./outputs/t150

./tcas.exe  592 1 0 1045  226 4721 2  640  401 0 0 1     > ./outputs/t151

./tcas.exe  833 0 0  678  405  963 2  400  739 1 0 1     > ./outputs/t152

./tcas.exe  940 0 0  651  469 3461 2  639  400 0 1 0     > ./outputs/t153

./tcas.exe  690 0 0  404  384  908 0  500  740 0 0 1     > ./outputs/t154

./tcas.exe  757 1 1 3234  187 2853 3  401  500 0 1 1     > ./outputs/t155

./tcas.exe  879 0 1  553  347 2553 1  639  400 0 0 1     > ./outputs/t156

./tcas.exe  719 1 1 5010  438 4880 0  741  640 1 1 1     > ./outputs/t157

./tcas.exe  690 1 1  380  577  239 0  641  640 0 1 1     > ./outputs/t158

./tcas.exe  793 0 1  176   89 4431 0  740  399 1 0 0     > ./outputs/t159

./tcas.exe  771 0 0 1054  289  282 3  400  641 0 0 1     > ./outputs/t160

./tcas.exe  979 0 1  931  141   79 1  639  399 0 0 0     > ./outputs/t161

./tcas.exe  858 0 1 3222  405  349 1  740  500 0 0 0     > ./outputs/t162

./tcas.exe  918 1 0  818  542 1868 2  639  639 0 0 1     > ./outputs/t163

./tcas.exe  741 1 1  966  413 2508 3  741  641 1 0 0     > ./outputs/t164

./tcas.exe  990 1 1 3490  323  281 2  640  741 0 0 1     > ./outputs/t165

./tcas.exe  536 0 1  927  423 2757 3  399  501 1 0 1     > ./outputs/t166

./tcas.exe  927 1 0 4902  351 2093 0  739  740 1 0 0     > ./outputs/t167

./tcas.exe  749 0 1 1037  384  703 3  400  740 1 1 1     > ./outputs/t168

./tcas.exe  946 1 0 2345  180  170 2  399  400 0 1 0     > ./outputs/t169

./tcas.exe  631 1 0 1569  330 1984 0  740  500 1 1 1     > ./outputs/t170

./tcas.exe  550 1 1  489  113 1317 1  640  399 1 0 1     > ./outputs/t171

./tcas.exe  641 0 1   41  422 4244 3  740  401 0 1 1     > ./outputs/t172

./tcas.exe  700 0 1 1300  580 3798 2  639  741 1 1 0     > ./outputs/t173

./tcas.exe  666 1 0  201  119 3080 2  399  640 1 0 0     > ./outputs/t174

./tcas.exe  661 0 1 3235  287 2268 1  640  399 0 1 1     > ./outputs/t175

./tcas.exe  826 0 0 3619  369 2109 1  741  639 0 1 1     > ./outputs/t176

./tcas.exe  874 0 1  771    9 4043 1  500  639 1 1 1     > ./outputs/t177

./tcas.exe  911 1 1 3373  346 1773 2  400  501 1 1 1     > ./outputs/t178

./tcas.exe  749 0 1 2307  230 1594 1  741  740 1 0 1     > ./outputs/t179

./tcas.exe  567 1 0 5621  399 3514 1  500  400 0 1 0     > ./outputs/t180

./tcas.exe  635 1 0 5854  219  617 3  399  401 1 1 0     > ./outputs/t181

./tcas.exe  897 1 1 1701  109 3438 1  641  401 0 1 0     > ./outputs/t182

./tcas.exe  598 0 1 2589  130  629 3  399  500 0 0 1     > ./outputs/t183

./tcas.exe  893 0 1 5001  301  711 2  400  739 1 0 0     > ./outputs/t184

./tcas.exe  530 0 0 1564  583 4042 1  400  500 1 0 1     > ./outputs/t185

./tcas.exe  854 0 0 5295  258  895 3  639  500 1 1 1     > ./outputs/t186

./tcas.exe  550 1 0  968   10 5679 0  500  740 0 0 0     > ./outputs/t187

./tcas.exe  828 1 0 4580  568 2638 0  740  639 0 1 0     > ./outputs/t188

./tcas.exe  944 1 1 4283  251 3431 2  639  641 1 0 1     > ./outputs/t189

./tcas.exe  768 0 0  889  193 4424 3  740  740 1 1 0     > ./outputs/t190

./tcas.exe  857 0 1  574  409 3712 2  501  501 1 1 0     > ./outputs/t191

./tcas.exe  659 1 0  781   18  271 3  399  499 1 0 1     > ./outputs/t192

./tcas.exe  827 1 1 1935  339  968 0  399  740 0 1 1     > ./outputs/t193

./tcas.exe  768 1 1 2197  496 5257 1  639  399 0 0 0     > ./outputs/t194

./tcas.exe  684 1 1 5744  499  870 3  741  739 1 1 1     > ./outputs/t195

./tcas.exe  722 1 0  201  343  665 1  639  499 1 1 0     > ./outputs/t196

./tcas.exe  571 1 0  397  173 2247 2  641  499 1 0 1     > ./outputs/t197

./tcas.exe  956 0 1 3698   70  717 3  399  499 1 0 1     > ./outputs/t198

./tcas.exe  850 1 1 4146  473  899 1  740  500 1 0 0     > ./outputs/t199

./tcas.exe  642 1 1 3494  125 2158 0  500  400 1 0 1     > ./outputs/t200

./tcas.exe  628 1 0 2784    4 3034 3  399  399 1 0 0     > ./outputs/t201

./tcas.exe  838 0 0 5849  266 1016 2  401  500 0 0 0     > ./outputs/t202

./tcas.exe  824 1 1 1917   99  850 3  739  739 0 0 1     > ./outputs/t203

./tcas.exe  686 0 0 1705  525 5369 1  641  401 0 1 0     > ./outputs/t204

./tcas.exe  934 0 1  372  159 1322 1  401  639 1 1 0     > ./outputs/t205

./tcas.exe  999 0 0 3577   27 4795 0  641  500 1 1 0     > ./outputs/t206

./tcas.exe  738 0 1  573  548  268 3  499  741 1 1 0     > ./outputs/t207

./tcas.exe  988 1 0 5692  580 4270 0  639  639 1 0 1     > ./outputs/t208

./tcas.exe  762 0 0 1874  205 4933 3  399  641 1 0 1     > ./outputs/t209

./tcas.exe  540 1 1  122  460 5776 2  640  740 1 0 1     > ./outputs/t210

./tcas.exe  745 1 1 5728  191 2829 1  401  640 0 1 0     > ./outputs/t211

./tcas.exe 1000 1 0  177  288 5884 3  401  640 0 0 1     > ./outputs/t212

./tcas.exe  638 1 0 2578  156 3757 0  500  399 1 0 0     > ./outputs/t213

./tcas.exe  919 0 1  131  300 3506 0  641  501 0 0 1     > ./outputs/t214

./tcas.exe  874 0 0 5644  103 4207 3  399  740 1 0 0     > ./outputs/t215

./tcas.exe  848 1 1 2141  138 2142 1  500  399 1 1 0     > ./outputs/t216

./tcas.exe  910 1 0  427  162 2489 2  740  741 0 0 1     > ./outputs/t217

./tcas.exe  838 1 0 2922  557  983 1  740  640 0 0 1     > ./outputs/t218

./tcas.exe  913 0 1  452  437  263 1  741  741 1 1 1     > ./outputs/t219

./tcas.exe  776 0 1  798  308 3693 0  400  741 0 0 0     > ./outputs/t220

./tcas.exe  556 0 0 5915  151  482 2  400  739 1 0 0     > ./outputs/t221

./tcas.exe  974 0 1  420  156 5924 0  741  400 0 0 1     > ./outputs/t222

./tcas.exe  781 1 0  930  207 4163 1  639  399 0 0 0     > ./outputs/t223

./tcas.exe  916 0 1 1828   43 3898 3  499  640 0 1 0     > ./outputs/t224

./tcas.exe  813 0 0 1259   55  662 1  399  501 0 1 1     > ./outputs/t225

./tcas.exe  822 0 0 1474   38 1377 3  641  640 1 0 0     > ./outputs/t226

./tcas.exe  538 0 0  186  548 2387 0  739  639 0 0 0     > ./outputs/t227

./tcas.exe  983 1 1 4732   69 1731 2  640  739 1 0 1     > ./outputs/t228

./tcas.exe  685 1 0  117   74 5136 0  640  639 1 1 0     > ./outputs/t229

./tcas.exe  660 1 1 4014  407  561 3  501  400 0 1 1     > ./outputs/t230

./tcas.exe  535 0 0 1871   69 5220 2  500  641 0 1 1     > ./outputs/t231

./tcas.exe  651 0 1  703  399   62 3  741  641 1 1 0     > ./outputs/t232

./tcas.exe  868 0 0 2014  577 1420 1  740  401 1 0 0     > ./outputs/t233

./tcas.exe  760 0 0  104  113 1610 3  741  401 1 0 1     > ./outputs/t234

./tcas.exe  856 0 1 4927  182 3316 0  741  740 0 0 1     > ./outputs/t235

./tcas.exe  874 0 0 3373  525 1643 2  399  641 1 1 0     > ./outputs/t236

./tcas.exe  844 1 1 3839   76 2610 1  740  640 0 1 0     > ./outputs/t237

./tcas.exe  782 1 1  263  499 1160 0  641  740 1 1 1     > ./outputs/t238

./tcas.exe  679 0 0  279  453  454 1  641  499 0 0 1     > ./outputs/t239

./tcas.exe  898 1 0 2193   11 2865 2  741  641 0 1 1     > ./outputs/t240

./tcas.exe  878 1 0 2425  103  556 1  740  739 1 0 0     > ./outputs/t241

./tcas.exe  743 1 0 1305  269  942 1  740  501 0 0 1     > ./outputs/t242

./tcas.exe  953 0 1 2935  224 2070 3  499  641 0 1 0     > ./outputs/t243

./tcas.exe  897 1 1 2226  306 3860 3  740  641 0 0 1     > ./outputs/t244

./tcas.exe  733 0 1  367   18 1266 1  499  399 0 0 1     > ./outputs/t245

./tcas.exe  643 1 1 5514  362 2288 1  400  741 1 1 0     > ./outputs/t246

./tcas.exe  541 0 1 5231  502 1059 1  399  639 0 0 0     > ./outputs/t247

./tcas.exe  598 0 0 3491  413 5933 3  741  401 0 0 0     > ./outputs/t248

./tcas.exe  750 1 1  682  313 4253 2  499  740 0 0 1     > ./outputs/t249

./tcas.exe  563 1 1 4688  587  773 3  640  639 0 0 0     > ./outputs/t250

./tcas.exe  544 0 0 4467  603 5942 1  501  640 0 0 0     > ./outputs/t251

./tcas.exe  661 1 1 1802  117 1355 3  400  499 0 1 0     > ./outputs/t252

./tcas.exe  880 0 1  412  407  936 1  401  739 1 0 1     > ./outputs/t253

./tcas.exe  832 0 0  375  147 2068 0  739  741 0 1 1     > ./outputs/t254

./tcas.exe  751 1 1 1924  408 2617 0  639  640 1 1 1     > ./outputs/t255

./tcas.exe  698 0 0  990  464 5856 3  640  501 1 0 0     > ./outputs/t256

./tcas.exe  858 0 1 1894  242  772 3  400  639 0 1 0     > ./outputs/t257

./tcas.exe  798 0 1 5229  263 1740 0  740  401 1 1 0     > ./outputs/t258

./tcas.exe  710 1 1 5993  315  239 1  641  401 0 1 1     > ./outputs/t259

./tcas.exe  743 1 1 3478  260 1672 1  400  499 1 0 0     > ./outputs/t260

./tcas.exe  745 0 0 2069  495 3141 3  501  501 1 1 1     > ./outputs/t261

./tcas.exe  865 0 1  796  147  444 0  499  400 1 1 1     > ./outputs/t262

./tcas.exe  554 1 1 2815  476 1600 3  641  401 0 1 1     > ./outputs/t263

./tcas.exe  536 0 0 3139  164 5669 1  399  501 0 0 1     > ./outputs/t264

./tcas.exe  849 0 1 4435  344  969 3  399  401 0 1 0     > ./outputs/t265

./tcas.exe  715 1 1 1085  409 1577 3  640  740 0 1 0     > ./outputs/t266

./tcas.exe  726 1 0 1021  340 5644 2  641  399 0 0 0     > ./outputs/t267

./tcas.exe  974 0 0 1091  325   69 3  501  741 1 0 0     > ./outputs/t268

./tcas.exe  584 1 0  679   53  117 1  739  401 0 1 1     > ./outputs/t269

./tcas.exe  998 1 0 2921  563  904 1  499  641 1 0 0     > ./outputs/t270

./tcas.exe  786 1 0  383  548 5870 0  639  399 1 0 1     > ./outputs/t271

./tcas.exe  809 0 0  108  413  343 3  401  399 1 0 1     > ./outputs/t272

./tcas.exe  873 1 0 2763    4  208 3  741  401 0 0 1     > ./outputs/t273

./tcas.exe  523 1 0 5002  473  909 3  499  501 0 0 0     > ./outputs/t274

./tcas.exe  982 1 1  927  524 5556 2  500  501 1 1 1     > ./outputs/t275

./tcas.exe  921 1 0 2049  162 1259 3  401  641 1 0 1     > ./outputs/t276

./tcas.exe  679 1 1 3180  297 5750 3  739  400 0 0 0     > ./outputs/t277

./tcas.exe  755 0 0 2949  565 2031 0  399  741 1 1 0     > ./outputs/t278

./tcas.exe  643 0 1 1976  129  124 1  499  641 0 0 1     > ./outputs/t279

./tcas.exe  815 0 0  836  295 1267 3  739  499 1 0 0     > ./outputs/t280

./tcas.exe  677 1 0 4864  257 5470 1  501  399 0 1 0     > ./outputs/t281

./tcas.exe  986 1 1 1534  145 2736 3  641  401 0 0 0     > ./outputs/t282

./tcas.exe  841 1 1  670  226 4140 1  640  740 0 1 1     > ./outputs/t283

./tcas.exe  960 0 1 5487  575 2958 0  400  500 1 0 1     > ./outputs/t284

./tcas.exe  945 1 1 1426  406  555 2  401  739 1 1 0     > ./outputs/t285

./tcas.exe  587 0 0 3575    5  815 0  639  739 1 1 0     > ./outputs/t286

./tcas.exe  816 1 1 5118  231 4376 1  500  499 0 1 1     > ./outputs/t287

./tcas.exe  772 1 1 2007  377  416 1  401  639 1 0 1     > ./outputs/t288

./tcas.exe  802 0 1 3169  150 4244 2  739  400 0 0 1     > ./outputs/t289

./tcas.exe  745 1 0   85  144 5206 3  401  499 1 0 0     > ./outputs/t290

./tcas.exe  944 0 0 2065  348  818 2  640  739 0 1 0     > ./outputs/t291

./tcas.exe  937 1 1 5273  326  878 1  640  641 1 1 1     > ./outputs/t292

./tcas.exe  594 0 1  574  103  969 2  499  399 0 0 1     > ./outputs/t293

./tcas.exe  725 1 1 2766  354 4811 3  641  501 1 1 0     > ./outputs/t294

./tcas.exe  523 1 1  877  601 5608 1  639  400 0 0 0     > ./outputs/t295

./tcas.exe  931 1 0 5113   72 3242 3  400  639 1 1 0     > ./outputs/t296

./tcas.exe  716 1 0 5046  323 3839 1  639  500 0 1 0     > ./outputs/t297

./tcas.exe  893 1 0 5078  256 3944 1  500  641 0 0 1     > ./outputs/t298

./tcas.exe  819 0 0 3878  331 5704 3  740  499 1 1 0     > ./outputs/t299

./tcas.exe  611 0 0 1509   98  667 3  739  399 1 1 1     > ./outputs/t300

./tcas.exe  574 0 1 2060  111 2572 3  500  641 0 0 0     > ./outputs/t301

./tcas.exe  989 1 0 1208   55 4201 2  499  400 1 1 1     > ./outputs/t302

./tcas.exe  895 1 1  985  483 3388 2  501  400 1 0 0     > ./outputs/t303

./tcas.exe  724 0 1 1495  597 5243 0  640  500 1 1 0     > ./outputs/t304

./tcas.exe  932 1 1 3456  557  571 2  640  400 0 0 0     > ./outputs/t305

./tcas.exe  521 1 0 1907  348 2633 0  499  501 0 1 0     > ./outputs/t306

./tcas.exe  608 1 1  674  216  442 0  741  400 0 0 0     > ./outputs/t307

./tcas.exe  589 0 1 3817  593  223 3  400  641 1 1 1     > ./outputs/t308

./tcas.exe  841 0 1 3618  311 1559 1  400  739 1 0 1     > ./outputs/t309

./tcas.exe  746 1 0  121  246  362 1  401  640 1 1 0     > ./outputs/t310

./tcas.exe  628 1 0 5645  573 1477 2  501  399 1 1 0     > ./outputs/t311

./tcas.exe  845 1 0  805  521  374 3  499  740 1 0 1     > ./outputs/t312

./tcas.exe  690 0 1 4135  106 3520 1  499  639 1 0 1     > ./outputs/t313

./tcas.exe  548 1 1 2625  249 1679 0  641  501 1 1 1     > ./outputs/t314

./tcas.exe  763 0 0  907  444 1881 0  741  399 0 0 1     > ./outputs/t315

./tcas.exe  750 1 1 1730  298   60 0  640  500 0 0 0     > ./outputs/t316

./tcas.exe  653 1 0 1707  280 3904 3  501  740 0 0 1     > ./outputs/t317

./tcas.exe  697 0 0  539  241 2597 3  640  741 0 1 0     > ./outputs/t318

./tcas.exe  556 1 1  351    9  281 3  741  639 0 0 1     > ./outputs/t319

./tcas.exe  789 0 0 3283  354 1116 2  640  400 0 0 0     > ./outputs/t320

./tcas.exe  717 0 0 3436  374 1439 2  640  740 1 1 0     > ./outputs/t321

./tcas.exe  596 0 0 5238  574  857 3  739  501 1 1 0     > ./outputs/t322

./tcas.exe  767 0 1 2316  399 3575 0  499  501 0 1 1     > ./outputs/t323

./tcas.exe  806 1 0 2197  495 5711 0  401  739 0 0 1     > ./outputs/t324

./tcas.exe  593 0 1  765  481 3711 0  500  641 1 0 1     > ./outputs/t325

./tcas.exe  955 0 1 1836  542 3698 3  500  401 1 0 0     > ./outputs/t326

./tcas.exe  622 1 1 3661   13  223 1  499  739 0 1 0     > ./outputs/t327

./tcas.exe  719 0 0 5273  196 3585 1  740  740 1 1 1     > ./outputs/t328

./tcas.exe  772 0 1 3773   87 4375 1  639  400 1 0 1     > ./outputs/t329

./tcas.exe  612 1 0 4829    4  200 1  399  500 1 1 1     > ./outputs/t330

./tcas.exe  694 1 1 3238   81 1642 1  500  739 0 0 0     > ./outputs/t331

./tcas.exe  564 0 0  417  556 3138 0  741  639 1 0 0     > ./outputs/t332

./tcas.exe  994 0 0 3682  579   39 0  400  740 1 1 1     > ./outputs/t333

./tcas.exe  689 1 0 5258  331 1464 2  640  501 0 1 1     > ./outputs/t334

./tcas.exe  971 1 0  383  189 4986 3  739  501 0 0 0     > ./outputs/t335

./tcas.exe  775 0 1  865  102 2303 3  401  401 1 1 1     > ./outputs/t336

./tcas.exe  612 0 1 3691  242  485 1  401  500 1 0 0     > ./outputs/t337

./tcas.exe  980 1 1  904  214 2419 1  400  641 1 0 1     > ./outputs/t338

./tcas.exe  785 1 0 2740  421  162 3  741  741 1 0 0     > ./outputs/t339

./tcas.exe  546 0 0 2569  544 2947 0  399  640 1 0 1     > ./outputs/t340

./tcas.exe  886 0 0 2059  459  274 1  401  641 1 1 1     > ./outputs/t341

./tcas.exe  889 0 0 3799  100 4302 1  499  640 1 0 1     > ./outputs/t342

./tcas.exe  698 1 1 4165  477 5526 2  641  500 1 1 0     > ./outputs/t343

./tcas.exe  644 0 1 2518  298  896 2  401  500 1 0 1     > ./outputs/t344

./tcas.exe  843 0 1 1935    2 4489 0  499  401 0 0 0     > ./outputs/t345

./tcas.exe  577 1 1 2046  389  495 0  740  501 0 1 1     > ./outputs/t346

./tcas.exe  856 1 1 2716  320 1742 2  641  401 1 1 0     > ./outputs/t347

./tcas.exe  900 1 0 3346  507  663 2  640  639 0 0 1     > ./outputs/t348

./tcas.exe  995 0 1 3499   70 1262 1  640  399 0 0 0     > ./outputs/t349

./tcas.exe  656 0 1 4956  595 2307 2  501  741 0 0 1     > ./outputs/t350

./tcas.exe  878 0 1 4939  250 1842 2  640  400 1 0 0     > ./outputs/t351

./tcas.exe  591 1 1 1124  287 2790 2  640  501 1 1 1     > ./outputs/t352

./tcas.exe  785 0 1 2802  447 2187 1  400  740 1 1 1     > ./outputs/t353

./tcas.exe  904 1 1 2361  527  419 2  401  400 1 1 1     > ./outputs/t354

./tcas.exe  619 1 0  197  287 4568 2  500  499 0 0 1     > ./outputs/t355

./tcas.exe  928 1 1  380  232 5117 1  740  499 0 0 0     > ./outputs/t356

./tcas.exe  860 1 1  602  331 5657 3  639  740 1 1 0     > ./outputs/t357

./tcas.exe  661 0 0  767   26 5316 3  640  399 0 1 1     > ./outputs/t358

./tcas.exe  534 1 0 5360  149 1528 3  740  499 1 1 0     > ./outputs/t359

./tcas.exe  774 1 1 1231  234   61 2  400  500 1 1 1     > ./outputs/t360

./tcas.exe  804 0 1 3514  152 1152 1  740  501 1 1 1     > ./outputs/t361

./tcas.exe  887 0 0 1725  477 2346 2  741  739 1 0 0     > ./outputs/t362

./tcas.exe  808 1 1  946  546  661 1  400  640 0 1 0     > ./outputs/t363

./tcas.exe  800 1 0 2067  586  284 3  740  499 0 0 1     > ./outputs/t364

./tcas.exe  811 0 0 2117  222 3074 3  501  399 1 0 1     > ./outputs/t365

./tcas.exe  661 0 0  963  177 5207 3  499  400 1 0 0     > ./outputs/t366

./tcas.exe  995 0 0 2133  218  905 1  501  501 0 0 1     > ./outputs/t367

./tcas.exe  788 0 0  113  177 2105 2  501  741 0 1 1     > ./outputs/t368

./tcas.exe  906 0 0 4284  439  111 2  740  740 0 1 1     > ./outputs/t369

./tcas.exe  537 0 1 1397  427 1241 1  739  740 0 1 0     > ./outputs/t370

./tcas.exe  876 1 1  508  401  271 0  401  400 1 0 0     > ./outputs/t371

./tcas.exe  548 1 0 2001  399  523 0  741  739 0 0 0     > ./outputs/t372

./tcas.exe  801 0 1 5536  450  504 2  741  740 0 0 1     > ./outputs/t373

./tcas.exe  921 0 1 2166  315 3826 0  739  500 1 1 1     > ./outputs/t374

./tcas.exe  958 0 0 1971  138 4932 2  400  640 0 0 1     > ./outputs/t375

./tcas.exe  661 1 1   23  469 2852 1  400  500 1 1 1     > ./outputs/t376

./tcas.exe  878 0 1 5906  588 3803 2  499  399 0 0 1     > ./outputs/t377

./tcas.exe  664 1 0 3757   24 2579 1  499  739 0 1 1     > ./outputs/t378

./tcas.exe  564 1 0  463  166  199 2  500  640 1 1 0     > ./outputs/t379

./tcas.exe  787 0 1 3296  306  326 3  741  639 1 1 0     > ./outputs/t380

./tcas.exe  843 0 1  154  327 2365 0  640  499 0 0 0     > ./outputs/t381

./tcas.exe  669 1 0  287  436 2803 3  740  400 1 1 1     > ./outputs/t382

./tcas.exe  734 0 0 2049  280 5472 0  399  499 0 0 0     > ./outputs/t383

./tcas.exe  578 1 0 1170  526 4785 1  399  741 1 0 1     > ./outputs/t384

./tcas.exe  541 1 0 3553  365  687 0  400  741 1 1 0     > ./outputs/t385

./tcas.exe  530 0 1  129  519 1555 1  501  640 0 1 0     > ./outputs/t386

./tcas.exe  847 0 1 2379  193 4481 0  641  741 0 0 0     > ./outputs/t387

./tcas.exe  867 1 1 1211  581  153 2  640  641 1 1 1     > ./outputs/t388

./tcas.exe  607 1 1 4250   14 4883 2  399  641 1 0 0     > ./outputs/t389

./tcas.exe  558 0 1   84  275 4457 1  501  401 1 0 1     > ./outputs/t390

./tcas.exe  526 0 1  751  595 2071 3  400  641 1 0 0     > ./outputs/t391

./tcas.exe  745 0 1  730  516  245 1  641  399 1 1 0     > ./outputs/t392

./tcas.exe  812 1 0 4165   80  690 0  741  401 0 1 1     > ./outputs/t393

./tcas.exe  785 0 1 4931  240  554 2  499  400 0 1 1     > ./outputs/t394

./tcas.exe  540 1 0  672  233    7 0  641  399 1 0 0     > ./outputs/t395

./tcas.exe  756 0 1  562  415 3339 2  640  640 0 0 0     > ./outputs/t396

./tcas.exe  695 0 1   55  100 2038 1  499  401 0 0 0     > ./outputs/t397

./tcas.exe  559 1 1 1883  613 4507 2  640  500 1 1 1     > ./outputs/t398

./tcas.exe  676 1 0  566  287 5295 2  399  500 1 1 1     > ./outputs/t399

./tcas.exe  571 0 0 3403  576  850 1  741  500 1 0 0     > ./outputs/t400

./tcas.exe  831 0 1  468  108 3882 1  500  399 0 1 0     > ./outputs/t401

./tcas.exe  794 1 1  562  577 2901 2  499  401 0 0 1     > ./outputs/t402

./tcas.exe  680 0 0  505   44  186 1  739  741 0 1 0     > ./outputs/t403

./tcas.exe  924 0 0 1568   86  533 0  739  499 1 1 0     > ./outputs/t404

./tcas.exe  833 1 0 4117  424 2255 1  501  401 1 0 0     > ./outputs/t405

./tcas.exe  759 0 0 1552  265 4793 0  641  640 1 0 0     > ./outputs/t406

./tcas.exe  973 0 0 1209  444 4409 2  399  641 1 0 0     > ./outputs/t407

./tcas.exe  739 1 1 5287  252  632 1  740  639 1 0 1     > ./outputs/t408

./tcas.exe  912 0 0 2658  192 3449 3  399  401 0 1 0     > ./outputs/t409

./tcas.exe  750 0 0 5376  523 2611 2  500  639 0 0 0     > ./outputs/t410

./tcas.exe  953 0 1 1508  132  672 3  499  499 0 1 0     > ./outputs/t411

./tcas.exe  782 1 1  513  224 5295 0  641  639 0 1 0     > ./outputs/t412

./tcas.exe  722 1 1 1415  245  316 0  401  739 0 0 1     > ./outputs/t413

./tcas.exe  836 1 0 4086  407  308 2  499  400 0 1 0     > ./outputs/t414

./tcas.exe  994 0 1 3194  242  687 1  501  741 0 0 1     > ./outputs/t415

./tcas.exe  644 1 1 1986  596 2448 0  741  400 1 0 0     > ./outputs/t416

./tcas.exe  935 1 1  792  272 3451 3  401  740 1 1 1     > ./outputs/t417

./tcas.exe  690 1 1 4560  148   43 2  741  500 0 1 0     > ./outputs/t418

./tcas.exe  596 1 0 4634  393  376 1  640  501 0 1 0     > ./outputs/t419

./tcas.exe  538 0 1  404  384 4237 2  640  499 0 0 1     > ./outputs/t420

./tcas.exe  799 0 1  386  380  351 1  639  639 1 0 1     > ./outputs/t421

./tcas.exe  640 0 1 2175  485 1271 3  639  499 1 0 0     > ./outputs/t422

./tcas.exe  884 0 1  754  323 2052 3  399  640 1 0 0     > ./outputs/t423

./tcas.exe  635 1 0 1142  511 4704 1  740  500 0 0 1     > ./outputs/t424

./tcas.exe  781 1 0 1855  408 3758 3  741  741 1 1 0     > ./outputs/t425

./tcas.exe  757 1 1  319   51  300 1  401  741 0 1 0     > ./outputs/t426

./tcas.exe  526 1 1 5505  562 2174 2  639  399 1 0 0     > ./outputs/t427

./tcas.exe  867 0 0 4266  161 5389 1  640  741 0 0 0     > ./outputs/t428

./tcas.exe  693 1 1 4557  254  482 3  740  739 0 0 1     > ./outputs/t429

./tcas.exe  671 0 1 5327  132  902 2  400  500 1 0 1     > ./outputs/t430

./tcas.exe  818 0 1  100  562 4914 0  739  401 0 1 0     > ./outputs/t431

./tcas.exe  780 1 0 5331   10 1209 3  399  640 1 0 1     > ./outputs/t432

./tcas.exe  706 1 0 4170  207  133 3  499  400 0 0 1     > ./outputs/t433

./tcas.exe  714 1 1 1027  537  387 3  739  400 1 1 1     > ./outputs/t434

./tcas.exe  946 0 0  693  550 4173 2  399  400 1 0 1     > ./outputs/t435

./tcas.exe  630 1 0 2188  209 2525 0  639  739 0 0 1     > ./outputs/t436

./tcas.exe  914 1 1 4924  384 5869 3  740  741 0 0 1     > ./outputs/t437

./tcas.exe  721 1 0 4129  379 2370 3  500  741 1 1 1     > ./outputs/t438

./tcas.exe  831 1 0 4955    8 4715 0  500  399 0 0 0     > ./outputs/t439

./tcas.exe  905 1 0 1171  158  385 0  739  499 1 0 0     > ./outputs/t440

./tcas.exe  899 0 1 4998    2 4230 0  500  501 0 0 0     > ./outputs/t441

./tcas.exe  924 0 1 1780  437  998 2  501  639 0 1 1     > ./outputs/t442

./tcas.exe  574 1 0  317  311 2079 1  400  400 1 1 0     > ./outputs/t443

./tcas.exe  623 0 1 4856  546  420 3  500  501 0 1 1     > ./outputs/t444

./tcas.exe  699 0 0 4483  280  358 1  499  639 1 1 1     > ./outputs/t445

./tcas.exe  942 1 1 2938  179  534 0  740  641 0 1 0     > ./outputs/t446

./tcas.exe  571 0 1  379  114 2328 2  400  401 1 1 1     > ./outputs/t447

./tcas.exe  965 0 0 5560  431 1871 0  741  399 1 0 1     > ./outputs/t448

./tcas.exe  974 0 1 1279  110 1990 3  400  501 1 1 0     > ./outputs/t449

./tcas.exe  559 1 1 2851  413 4323 2  501  740 0 0 0     > ./outputs/t450

./tcas.exe  655 1 1 4095  265 3490 2  739  499 1 1 0     > ./outputs/t451

./tcas.exe  860 1 1 2944  139 5412 0  399  641 1 0 1     > ./outputs/t452

./tcas.exe  924 1 0 1981  336 3860 2  500  501 1 1 0     > ./outputs/t453

./tcas.exe  848 1 0 2408  180  525 0  740  401 0 1 0     > ./outputs/t454

./tcas.exe  921 0 1 1788  125  516 3  399  739 1 0 1     > ./outputs/t455

./tcas.exe  852 1 1 1399  347 1245 1  400  641 0 0 0     > ./outputs/t456

./tcas.exe  897 0 0 2622  326 3725 2  401  400 0 0 0     > ./outputs/t457

./tcas.exe  933 0 1  567  407 1839 0  641  640 0 0 1     > ./outputs/t458

./tcas.exe  776 1 0  954   72 2987 3  399  741 0 1 1     > ./outputs/t459

./tcas.exe  748 1 0  508   81 1372 0  740  739 0 1 1     > ./outputs/t460

./tcas.exe  624 0 1 3277  264 5028 3  640  400 1 1 1     > ./outputs/t461

./tcas.exe  570 1 1 5125   85 4371 0  400  499 1 1 0     > ./outputs/t462

./tcas.exe  546 0 1 4364   90 4988 3  739  640 0 1 0     > ./outputs/t463

./tcas.exe  732 0 0 2558  599 3531 0  399  739 1 0 0     > ./outputs/t464

./tcas.exe  795 0 0 3378   59  440 0  399  740 0 1 1     > ./outputs/t465

./tcas.exe  574 0 0  321  131 1814 0  639  641 1 1 0     > ./outputs/t466

./tcas.exe  997 1 0 4466  100 4610 1  639  400 1 0 1     > ./outputs/t467

./tcas.exe  740 1 1  972  312 3512 3  501  740 0 0 0     > ./outputs/t468

./tcas.exe  869 0 0 5624   18  702 2  500  641 1 0 1     > ./outputs/t469

./tcas.exe  955 0 1 1567  366  363 0  401  639 1 1 0     > ./outputs/t470

./tcas.exe  735 1 0 2792  119  224 3  739  739 0 0 0     > ./outputs/t471

./tcas.exe  912 1 0 4251  133  545 1  739  399 1 1 0     > ./outputs/t472

./tcas.exe  607 1 0 5014  531  310 1  739  501 0 0 1     > ./outputs/t473

./tcas.exe  733 1 0 1785  585  343 3  741  499 0 1 1     > ./outputs/t474

./tcas.exe  811 1 1 4100  193 5500 3  641  500 0 1 0     > ./outputs/t475

./tcas.exe  715 0 0 1768  391 1782 2  740  399 0 0 0     > ./outputs/t476

./tcas.exe  797 0 0 4454  508  288 2  741  401 1 0 1     > ./outputs/t477

./tcas.exe  578 0 0 4590  303  220 0  499  501 1 0 1     > ./outputs/t478

./tcas.exe  621 0 1  675  520 3199 3  641  400 0 0 0     > ./outputs/t479

./tcas.exe  841 0 1  427    9 4967 2  740  501 1 1 0     > ./outputs/t480

./tcas.exe  524 0 0 2495  396  506 3  740  640 0 1 0     > ./outputs/t481

./tcas.exe  848 0 0 2494  271 2583 1  501  641 1 0 1     > ./outputs/t482

./tcas.exe  966 0 0 5272  252  451 3  499  740 0 1 0     > ./outputs/t483

./tcas.exe  820 0 0 1557  524 1163 0  499  499 0 0 0     > ./outputs/t484

./tcas.exe  679 1 1  541  338 5123 0  641  641 1 0 1     > ./outputs/t485

./tcas.exe  565 0 0 4233   97 5531 1  739  641 0 0 0     > ./outputs/t486

./tcas.exe  793 0 0 5989  606 3063 3  500  641 0 0 1     > ./outputs/t487

./tcas.exe  609 0 0  259    8 3583 0  641  741 0 1 1     > ./outputs/t488

./tcas.exe  962 0 0 3810  528 1326 2  641  400 0 0 1     > ./outputs/t489

./tcas.exe  587 1 0 4426  303 1022 0  499  741 1 0 0     > ./outputs/t490

./tcas.exe  607 0 0 3707  320 5543 0  639  639 1 1 1     > ./outputs/t491

./tcas.exe  584 1 1 1289  401 4395 1  501  639 0 1 1     > ./outputs/t492

./tcas.exe  564 1 1 4996  391 1494 3  640  500 0 1 1     > ./outputs/t493

./tcas.exe  952 0 1 2813  121 3907 0  501  401 1 0 0     > ./outputs/t494

./tcas.exe  817 0 1 4129   65 3077 0  739  401 1 0 1     > ./outputs/t495

./tcas.exe  726 0 0 3176  519 2689 1  400  641 1 1 1     > ./outputs/t496

./tcas.exe  895 0 1 5104  338  372 3  500  639 0 0 0     > ./outputs/t497

./tcas.exe  928 1 1 3716  536 1907 2  501  639 1 0 0     > ./outputs/t498

./tcas.exe  608 1 1 3093  528 5892 1  400  400 0 1 0     > ./outputs/t499

./tcas.exe  627 1 0  151  446 1983 3  401  500 0 1 1     > ./outputs/t500

./tcas.exe 597 -1 0 -1 577 0 0 605 931 0 2 0     > ./outputs/t501

./tcas.exe 653 1 -1 740 -1 702 -1 0 -1 2 1 1     > ./outputs/t502

./tcas.exe 0 0 0 0 609 -1 1 582 89 4 0 -1     > ./outputs/t503

./tcas.exe -1 1 0 9343 0 127 3 -100 0 1 2 0     > ./outputs/t504

./tcas.exe 640 0 0 569 400 586 1 1012 1037 0 1 1     > ./outputs/t505

./tcas.exe 1174 1 0 586 373 559 2 259 351 0 2 0     > ./outputs/t506

./tcas.exe 684 1 1 522 426 478 0 848 496 0 2 1     > ./outputs/t507

./tcas.exe 1016 1 1 628 0 614 0 0 746 0 2 1     > ./outputs/t508

./tcas.exe 913 0 1 722 520 657 2 714 822 0 2 0     > ./outputs/t509

./tcas.exe 4 1 1 0 409 648 2 601 657 0 2 1     > ./outputs/t510

./tcas.exe 595 0 1 647 357 695 1 536 593 0 1 0     > ./outputs/t511

./tcas.exe 925 1 1 557 349 608 3 994 880 0 2 1     > ./outputs/t512

./tcas.exe 1108 1 1 583 449 601 1 712 725 0 2 1     > ./outputs/t513

./tcas.exe 681 1 0 614 482 0 0 707 757 0 2 0     > ./outputs/t514

./tcas.exe 1081 1 0 675 428 638 0 917 920 0 2 1     > ./outputs/t515

./tcas.exe 652 1 1 638 609 620 1 726 0 0 2 0     > ./outputs/t516

./tcas.exe 1093 1 1 0 580 750 1 678 447 0 2 0     > ./outputs/t517

./tcas.exe 859 1 0 632 355 662 2 379 97 0 2 0     > ./outputs/t518

./tcas.exe 709 1 1 4523 547 657 3 743 743 0 2 1     > ./outputs/t519

./tcas.exe 694 1 0 631 485 642 9 442 418 0 2 1     > ./outputs/t520

./tcas.exe 647 1 1 570 505 615 1 341 392 0 2 1     > ./outputs/t521

./tcas.exe 810 1 0 686 458 122 3 1017 980 0 1 1     > ./outputs/t522

./tcas.exe 766 1 1 0 380 744 0 370 369 0 2 1     > ./outputs/t523

./tcas.exe 860 1 1 618 329 574 4 893 914 0 2 0     > ./outputs/t524

./tcas.exe 654 1 1 912 496 465 0 587 495 0 2 1     > ./outputs/t525

./tcas.exe 760 1 1 753 595 619 0 679 630 0 2 0     > ./outputs/t526

./tcas.exe 1149 1 0 562 485 272 1 670 633 2 2 1     > ./outputs/t527

./tcas.exe 987 1 0 550 587 819 2 929 955 0 1 0     > ./outputs/t528

./tcas.exe 907 1 0 560 342 601 3 961 399 2 2 1     > ./outputs/t529

./tcas.exe 1207 1 1 591 996 658 1 556 0 0 1 1     > ./outputs/t530

./tcas.exe -1 1 0 631 370 661 2 820 825 1 2 1     > ./outputs/t531

./tcas.exe 775 1 1 0 506 596 0 906 685 0 2 1     > ./outputs/t532

./tcas.exe 1018 1 1 3177 325 624 3 1026 1017 0 2 0     > ./outputs/t533

./tcas.exe 868 1 1 731 361 699 1 672 690 0 2 0     > ./outputs/t534

./tcas.exe 895 1 1 -1 403 718 2 694 708 0 2 1     > ./outputs/t535

./tcas.exe 837 1 1 711 452 726 2 593 506 2 2 1     > ./outputs/t536

./tcas.exe 887 1 1 591 589 -100 2 424 457 0 2 0     > ./outputs/t537

./tcas.exe 1027 1 1 -100 369 599 1 737 708 0 2 0     > ./outputs/t538

./tcas.exe 589 1 0 657 557 644 3 0 999 0 2 1     > ./outputs/t539

./tcas.exe 1144 1 1 590 490 646 3 457 0 0 2 1     > ./outputs/t540

./tcas.exe 646 1 1 630 310 615 2 318 314 0 1 1     > ./outputs/t541

./tcas.exe 1168 1 1 0 590 673 0 387 377 0 2 1     > ./outputs/t542

./tcas.exe 248 1 0 0 584 616 3 566 523 0 2 0     > ./outputs/t543

./tcas.exe 837 1 0 691 396 0 0 949 942 0 1 0     > ./outputs/t544

./tcas.exe 854 1 1 703 502 730 1 0 617 0 2 1     > ./outputs/t545

./tcas.exe 1172 1 1 0 590 732 3 745 765 0 2 0     > ./outputs/t546

./tcas.exe 746 1 0 0 391 601 3 837 957 0 2 0     > ./outputs/t547

./tcas.exe 897 1 1 3257 470 707 2 744 693 0 1 0     > ./outputs/t548

./tcas.exe 589 0 1 584 798 567 2 957 925 0 2 0     > ./outputs/t549

./tcas.exe 697 0 0 726 322 725 3 638 650 0 2 1     > ./outputs/t550

./tcas.exe 787 1 1 0 293 597 0 726 686 1 2 1     > ./outputs/t551

./tcas.exe 866 0 1 657 464 43 2 403 424 0 2 1     > ./outputs/t552

./tcas.exe 854 1 0 687 426 684 1 623 744 3 2 1     > ./outputs/t553

./tcas.exe 1016 1 0 658 359 644 1 391 442 1 2 1     > ./outputs/t554

./tcas.exe 905 0 1 699 436 742 1 372 331 0 2 0     > ./outputs/t555

./tcas.exe 892 0 1 762 445 157 2 442 440 0 2 1     > ./outputs/t556

./tcas.exe 1005 1 1 601 394 601 1 717 0 0 2 0     > ./outputs/t557

./tcas.exe 934 1 0 5216 458 972 1 539 464 0 2 1     > ./outputs/t558

./tcas.exe 1184 1 1 4983 523 689 0 653 938 0 1 1     > ./outputs/t559

./tcas.exe 1146 1 0 656 392 691 0 860 0 1 2 1     > ./outputs/t560

./tcas.exe 666 1 1 577 342 558 2 193 1016 0 2 0     > ./outputs/t561

./tcas.exe 1059 0 0 640 380 580 0 748 692 2 2 0     > ./outputs/t562

./tcas.exe 934 1 0 603 333 552 0 410 439 0 2 1     > ./outputs/t563

./tcas.exe 947 1 1 677 237 681 2 594 352 0 2 0     > ./outputs/t564

./tcas.exe 655 1 1 628 348 861 2 455 0 0 2 0     > ./outputs/t565

./tcas.exe 1137 1 1 687 292 572 2 0 372 0 1 1     > ./outputs/t566

./tcas.exe 812 1 0 663 336 587 0 518 20 0 2 0     > ./outputs/t567

./tcas.exe 1022 1 1 554 320 598 2 914 494 2 1 0     > ./outputs/t568

./tcas.exe 761 1 0 608 527 596 0 663 632 0 2 1     > ./outputs/t569

./tcas.exe 0 0 1 60 432 738 3 863 852 0 2 1     > ./outputs/t570

./tcas.exe 808 1 0 581 492 448 2 452 0 0 2 1     > ./outputs/t571

./tcas.exe 845 1 1 667 661 683 1 446 404 2 2 0     > ./outputs/t572

./tcas.exe 815 1 0 625 419 657 0 0 887 0 1 0     > ./outputs/t573

./tcas.exe 756 1 1 586 341 824 3 417 361 0 2 1     > ./outputs/t574

./tcas.exe 640 1 0 654 438 0 1 0 415 2 1 1     > ./outputs/t575

./tcas.exe 1118 1 1 712 261 735 1 423 450 0 1 1     > ./outputs/t576

./tcas.exe 1073 1 1 2223 379 752 0 435 438 2 2 0     > ./outputs/t577

./tcas.exe 763 1 1 6514 0 643 3 816 756 0 2 1     > ./outputs/t578

./tcas.exe 1064 1 1 674 401 663 9 560 900 0 1 0     > ./outputs/t579

./tcas.exe 592 1 1 701 532 688 3 396 372 0 2 1     > ./outputs/t580

./tcas.exe 1037 1 0 610 504 623 3 0 877 0 2 1     > ./outputs/t581

./tcas.exe 795 1 -1 538 325 601 2 702 634 0 1 1     > ./outputs/t582

./tcas.exe 709 1 1 686 483 672 1 465 475 1 2 1     > ./outputs/t583

./tcas.exe 847 1 1 1325 360 668 2 817 803 0 1 1     > ./outputs/t584

./tcas.exe 782 1 0 729 462 0 1 449 818 0 2 1     > ./outputs/t585

./tcas.exe 964 1 1 2672 326 714 2 18 609 2 2 1     > ./outputs/t586

./tcas.exe 796 1 1 0 535 627 1 329 0 0 2 1     > ./outputs/t587

./tcas.exe 1058 1 0 707 0 703 0 901 906 0 2 0     > ./outputs/t588

./tcas.exe 732 1 1 654 413 710 2 306 375 -1 2 1     > ./outputs/t589

./tcas.exe 1122 1 1 705 374 716 1 0 547 0 2 0     > ./outputs/t590

./tcas.exe 1022 1 0 716 503 -1 1 629 815 0 2 1     > ./outputs/t591

./tcas.exe 1109 1 1 557 344 639 0 370 -100 0 2 1     > ./outputs/t592

./tcas.exe 764 -1 0 561 530 592 1 593 619 0 2 1     > ./outputs/t593

./tcas.exe 756 1 1 546 603 603 0 0 796 2 2 0     > ./outputs/t594

./tcas.exe 811 1 0 691 350 0 0 619 0 0 2 0     > ./outputs/t595

./tcas.exe 1149 1 1 606 399 602 1 441 369 0 2 0     > ./outputs/t596

./tcas.exe 1096 1 0 714 496 682 1 944 908 0 1 0     > ./outputs/t597

./tcas.exe 1039 0 1 1310 948 653 0 0 922 0 2 0     > ./outputs/t598

./tcas.exe 806 1 0 744 0 349 2 839 -100 0 2 1     > ./outputs/t599

./tcas.exe 1032 1 0 707 389 727 1 297 0 2 2 0     > ./outputs/t600

./tcas.exe 854 1 1 4049 773 654 2 595 625 0 2 1     > ./outputs/t601

./tcas.exe 1159 0 1 672 298 178 2 468 0 0 2 0     > ./outputs/t602

./tcas.exe 752 1 1 733 398 746 3 328 0 0 2 9     > ./outputs/t603

./tcas.exe 1143 0 0 604 365 0 1 451 458 0 2 1     > ./outputs/t604

./tcas.exe -1 1 1 604 607 622 0 0 0 0 2 0     > ./outputs/t605

./tcas.exe 943 1 1 668 833 956 2 588 556 0 2 0     > ./outputs/t606

./tcas.exe 1175 1 0 619 491 684 1 693 60 2 1 1     > ./outputs/t607

./tcas.exe 784 1 1 566 870 578 2 969 694 0 2 1     > ./outputs/t608

./tcas.exe 708 1 1 871 369 712 3 427 478 0 2 1     > ./outputs/t609

./tcas.exe 162 1 0 587 577 110 0 647 962 1 2 1     > ./outputs/t610

./tcas.exe 1074 1 0 0 305 666 3 306 356 0 1 1     > ./outputs/t611

./tcas.exe 800 1 0 735 323 724 2 233 584 0 2 0     > ./outputs/t612

./tcas.exe 1078 1 0 673 311 692 2 551 490 2 2 0     > ./outputs/t613

./tcas.exe 613 1 1 711 538 0 1 363 398 0 2 1     > ./outputs/t614

./tcas.exe 860 1 0 -1 485 422 0 330 273 0 2 1     > ./outputs/t615

./tcas.exe 615 1 1 767 616 0 1 751 673 0 2 0     > ./outputs/t616

./tcas.exe 0 1 0 692 465 646 3 872 825 2 2 1     > ./outputs/t617

./tcas.exe 792 0 0 625 409 541 2 381 403 0 2 0     > ./outputs/t618

./tcas.exe -1 0 1 593 447 655 1 366 314 0 1 1     > ./outputs/t619

./tcas.exe 1113 1 0 7965 430 596 1 820 876 0 2 0     > ./outputs/t620

./tcas.exe 999 1 0 0 447 610 1 511 464 1 2 0     > ./outputs/t621

./tcas.exe 865 1 1 634 344 699 1 -100 600 0 2 0     > ./outputs/t622

./tcas.exe 974 0 1 651 539 671 1 955 997 1 2 0     > ./outputs/t623

./tcas.exe 1016 1 0 712 426 0 0 361 745 0 2 1     > ./outputs/t624

./tcas.exe 1051 1 0 618 294 236 1 230 872 0 1 0     > ./outputs/t625

./tcas.exe 232 1 1 583 513 601 0 0 928 1 2 1     > ./outputs/t626

./tcas.exe 661 0 0 544 598 0 1 573 566 0 2 0     > ./outputs/t627

./tcas.exe 784 1 0 0 365 732 0 611 624 2 2 1     > ./outputs/t628

./tcas.exe 695 0 0 593 451 568 2 981 0 0 2 1     > ./outputs/t629

./tcas.exe 1112 1 1 601 400 663 1 298 0 1 2 0     > ./outputs/t630

./tcas.exe 876 -1 1 745 375 892 1 930 930 0 2 1     > ./outputs/t631

./tcas.exe 1063 1 0 662 0 592 3 416 346 0 2 1     > ./outputs/t632

./tcas.exe 271 1 1 697 633 691 3 890 868 0 1 1     > ./outputs/t633

./tcas.exe 1208 1 0 544 -1 605 1 797 801 0 2 1     > ./outputs/t634

./tcas.exe 1185 1 -1 710 378 674 3 604 554 0 2 0     > ./outputs/t635

./tcas.exe 1206 1 0 5140 355 730 2 980 693 2 2 0     > ./outputs/t636

./tcas.exe 1155 1 0 603 349 514 3 816 863 1 2 0     > ./outputs/t637

./tcas.exe 6 0 0 648 427 687 0 961 947 0 1 1     > ./outputs/t638

./tcas.exe 601 1 0 672 0 660 3 577 545 0 2 3     > ./outputs/t639

./tcas.exe 648 1 0 680 511 428 3 0 314 0 2 1     > ./outputs/t640

./tcas.exe 774 1 1 0 433 239 0 -1 390 0 2 1     > ./outputs/t641

./tcas.exe 909 1 0 575 444 -100 1 523 981 0 2 0     > ./outputs/t642

./tcas.exe 780 0 1 669 562 387 1 0 951 0 2 1     > ./outputs/t643

./tcas.exe 697 1 0 728 614 725 1 173 131 1 2 0     > ./outputs/t644

./tcas.exe 0 1 1 752 563 695 1 602 656 0 2 1     > ./outputs/t645

./tcas.exe 1004 1 0 0 393 597 1 450 743 0 2 0     > ./outputs/t646

./tcas.exe 849 1 1 734 651 0 2 571 565 0 2 1     > ./outputs/t647

./tcas.exe 777 1 0 6281 379 700 0 594 0 0 2 1     > ./outputs/t648

./tcas.exe 1169 1 0 616 922 690 3 0 784 0 2 0     > ./outputs/t649

./tcas.exe 1090 1 0 762 308 713 1 774 759 1 1 0     > ./outputs/t650

./tcas.exe 1170 1 1 605 569 629 2 662 665 0 2 9     > ./outputs/t651

./tcas.exe 981 1 1 459 317 590 2 533 544 2 2 1     > ./outputs/t652

./tcas.exe 1158 0 0 608 441 601 0 671 812 0 2 1     > ./outputs/t653

./tcas.exe 0 1 0 1049 563 594 3 401 372 0 2 0     > ./outputs/t654

./tcas.exe 1105 1 1 -100 430 529 3 842 74 0 2 1     > ./outputs/t655

./tcas.exe 680 1 1 3803 981 581 3 769 812 0 2 0     > ./outputs/t656

./tcas.exe 1165 1 0 690 19 871 0 293 346 1 2 0     > ./outputs/t657

./tcas.exe 0 1 0 570 620 611 0 992 1023 0 2 0     > ./outputs/t658

./tcas.exe 1105 0 0 584 450 293 1 755 638 0 1 1     > ./outputs/t659

./tcas.exe 966 -1 1 3658 196 660 1 0 452 0 2 1     > ./outputs/t660

./tcas.exe 639 1 0 8459 370 678 1 737 810 0 1 0     > ./outputs/t661

./tcas.exe 836 1 0 637 -1 0 0 984 1003 0 2 1     > ./outputs/t662

./tcas.exe 903 1 1 684 368 661 0 725 0 0 2 1     > ./outputs/t663

./tcas.exe 908 0 0 613 38 564 1 775 835 1 2 0     > ./outputs/t664

./tcas.exe 1196 0 -1 688 398 663 0 485 434 0 1 1     > ./outputs/t665

./tcas.exe 1055 1 0 9520 512 686 3 0 368 0 2 1     > ./outputs/t666

./tcas.exe 618 -1 1 737 0 708 1 907 371 0 2 0     > ./outputs/t667

./tcas.exe 825 1 1 783 329 499 3 931 914 1 2 1     > ./outputs/t668

./tcas.exe 969 1 0 719 330 690 1 932 -1 0 2 0     > ./outputs/t669

./tcas.exe 1072 1 1 0 457 603 0 481 759 1 2 1     > ./outputs/t670

./tcas.exe 1101 1 1 713 422 0 3 785 778 1 2 1     > ./outputs/t671

./tcas.exe 1119 1 1 586 386 221 2 830 979 0 2 0     > ./outputs/t672

./tcas.exe 832 1 -1 82 314 0 2 0 806 0 2 1     > ./outputs/t673

./tcas.exe 767 1 1 726 767 714 2 0 798 2 2 0     > ./outputs/t674

./tcas.exe 1188 1 1 590 758 610 1 691 669 2 1 1     > ./outputs/t675

./tcas.exe 1030 1 1 743 536 737 3 597 754 1 2 1     > ./outputs/t676

./tcas.exe -1 1 0 5409 534 551 0 175 764 0 2 1     > ./outputs/t677

./tcas.exe 880 1 1 651 496 696 2 716 283 0 1 1     > ./outputs/t678

./tcas.exe 656 1 1 612 513 543 1 0 285 0 1 1     > ./outputs/t679

./tcas.exe 990 1 1 9671 622 173 2 0 766 0 2 1     > ./outputs/t680

./tcas.exe -100 1 1 650 497 655 3 806 764 0 2 1     > ./outputs/t681

./tcas.exe 759 1 0 5966 544 494 2 965 955 -1 2 0     > ./outputs/t682

./tcas.exe 636 1 0 637 352 716 1 335 -100 0 2 1     > ./outputs/t683

./tcas.exe 922 1 0 583 576 558 1 435 474 1 2 0     > ./outputs/t684

./tcas.exe 967 1 0 2215 354 582 0 999 0 0 2 1     > ./outputs/t685

./tcas.exe 937 1 0 605 0 554 0 633 622 0 2 0     > ./outputs/t686

./tcas.exe 594 1 1 770 455 751 0 610 -1 0 2 0     > ./outputs/t687

./tcas.exe 1057 1 0 0 379 614 0 812 799 0 2 -1     > ./outputs/t688

./tcas.exe 736 0 1 7870 571 700 3 469 438 0 2 1     > ./outputs/t689

./tcas.exe 690 1 0 626 252 676 3 366 611 0 1 1     > ./outputs/t690

./tcas.exe 458 1 0 4251 551 721 1 617 588 0 1 0     > ./outputs/t691

./tcas.exe 795 1 1 1372 334 686 3 559 381 0 2 1     > ./outputs/t692

./tcas.exe 842 0 0 631 599 623 3 910 875 1 2 1     > ./outputs/t693

./tcas.exe 702 1 0 695 889 0 0 412 469 0 2 0     > ./outputs/t694

./tcas.exe 681 1 0 1904 340 904 3 344 360 0 2 0     > ./outputs/t695

./tcas.exe 945 1 0 720 292 692 1 890 888 0 1 0     > ./outputs/t696

./tcas.exe 896 1 0 592 405 882 1 466 549 0 1 0     > ./outputs/t697

./tcas.exe 832 1 0 9715 387 665 1 899 800 0 2 1     > ./outputs/t698

./tcas.exe 651 1 0 -1 571 599 2 41 514 0 2 0     > ./outputs/t699

./tcas.exe 1098 1 1 664 607 0 -1 580 162 0 2 0     > ./outputs/t700

./tcas.exe 0 1 0 713 334 670 2 353 328 1 2 1     > ./outputs/t701

./tcas.exe 603 -1 0 654 507 11 3 611 600 0 1 1     > ./outputs/t702

./tcas.exe 848 1 0 645 519 579 9 512 970 0 2 0     > ./outputs/t703

./tcas.exe 19 0 0 4907 421 657 1 665 0 0 2 0     > ./outputs/t704

./tcas.exe 772 1 0 0 311 599 2 978 891 1 2 0     > ./outputs/t705

./tcas.exe 613 1 0 0 413 696 3 794 743 0 2 1     > ./outputs/t706

./tcas.exe 1092 1 1 2461 931 0 2 647 715 2 2 0     > ./outputs/t707

./tcas.exe -1 1 0 655 565 658 0 858 870 0 2 0     > ./outputs/t708

./tcas.exe 1106 0 0 521 0 592 2 220 0 0 2 1     > ./outputs/t709

./tcas.exe 746 1 0 653 345 667 3 386 153 0 1 0     > ./outputs/t710

./tcas.exe 683 1 1 8310 300 0 1 0 0 0 1 1     > ./outputs/t711

./tcas.exe -100 0 0 636 630 0 0 467 507 1 2 0     > ./outputs/t712

./tcas.exe 469 1 1 579 703 109 3 432 500 0 2 1     > ./outputs/t713

./tcas.exe 717 1 -1 641 433 500 2 145 0 2 2 0     > ./outputs/t714

./tcas.exe 699 1 0 -1 311 0 1 705 854 2 2 1     > ./outputs/t715

./tcas.exe -1 1 1 685 442 -1 2 338 364 0 2 1     > ./outputs/t716

./tcas.exe 844 1 0 683 0 663 2 361 725 2 2 0     > ./outputs/t717

./tcas.exe 733 1 0 696 228 704 3 693 638 1 2 0     > ./outputs/t718

./tcas.exe 733 0 0 730 717 747 1 767 288 2 2 0     > ./outputs/t719

./tcas.exe 653 1 0 605 619 554 3 913 601 2 2 0     > ./outputs/t720

./tcas.exe 1115 1 1 739 422 739 2 528 534 3 1 1     > ./outputs/t721

./tcas.exe 926 1 0 590 50 532 3 957 922 0 2 0     > ./outputs/t722

./tcas.exe 675 -1 0 656 506 655 0 564 590 0 2 0     > ./outputs/t723

./tcas.exe 1179 1 0 697 805 691 0 594 213 0 2 1     > ./outputs/t724

./tcas.exe 1166 1 1 0 352 748 3 297 318 0 1 0     > ./outputs/t725

./tcas.exe 232 1 1 564 333 0 1 862 601 0 2 0     > ./outputs/t726

./tcas.exe 0 1 0 743 318 747 2 694 726 0 1 1     > ./outputs/t727

./tcas.exe 829 1 0 0 464 314 3 784 809 0 1 0     > ./outputs/t728

./tcas.exe 1195 1 0 0 460 666 3 509 492 0 2 0     > ./outputs/t729

./tcas.exe 790 1 1 719 436 697 1 681 417 2 2 1     > ./outputs/t730

./tcas.exe 878 1 0 681 131 650 1 855 816 2 2 1     > ./outputs/t731

./tcas.exe 0 1 0 634 577 673 2 527 635 0 2 0     > ./outputs/t732

./tcas.exe -1 1 1 513 194 552 0 0 331 0 2 0     > ./outputs/t733

./tcas.exe 616 0 1 752 604 702 0 459 857 0 2 1     > ./outputs/t734

./tcas.exe 1129 1 0 665 586 225 2 785 973 0 2 0     > ./outputs/t735

./tcas.exe 1017 1 0 666 369 646 3 -1 772 0 2 1     > ./outputs/t736

./tcas.exe 1124 1 0 605 233 507 1 0 409 0 2 1     > ./outputs/t737

./tcas.exe 608 1 1 685 588 718 3 17 883 0 1 1     > ./outputs/t738

./tcas.exe 983 1 1 0 636 741 2 460 275 0 1 0     > ./outputs/t739

./tcas.exe 334 1 0 728 533 660 2 481 496 0 1 0     > ./outputs/t740

./tcas.exe 611 1 0 660 667 0 1 936 924 0 1 0     > ./outputs/t741

./tcas.exe 1036 0 0 586 585 304 0 505 578 1 2 0     > ./outputs/t742

./tcas.exe 881 1 -1 740 521 722 3 311 958 1 2 0     > ./outputs/t743

./tcas.exe 1173 1 0 5952 576 657 0 292 741 2 1 1     > ./outputs/t744

./tcas.exe 930 1 0 642 311 0 3 0 699 0 1 1     > ./outputs/t745

./tcas.exe 1108 1 0 772 879 723 0 286 340 0 1 0     > ./outputs/t746

./tcas.exe 0 1 0 592 607 626 1 586 642 0 2 1     > ./outputs/t747

./tcas.exe 0 1 1 771 401 503 2 513 822 0 2 1     > ./outputs/t748

./tcas.exe 1019 0 1 6630 400 631 0 416 384 0 2 0     > ./outputs/t749

./tcas.exe -1 1 0 -100 606 721 3 927 947 2 2 1     > ./outputs/t750

./tcas.exe 915 0 0 721 613 784 2 330 356 2 1 0     > ./outputs/t751

./tcas.exe 816 1 0 706 496 737 1 917 908 -1 2 0     > ./outputs/t752

./tcas.exe 1150 1 1 594 -100 533 2 494 548 0 2 0     > ./outputs/t753

./tcas.exe 0 1 0 767 593 798 2 657 678 1 2 0     > ./outputs/t754

./tcas.exe 833 0 1 648 385 621 0 446 0 0 2 1     > ./outputs/t755

./tcas.exe 991 0 0 6052 411 45 0 1028 977 2 2 0     > ./outputs/t756

./tcas.exe 1058 -1 0 643 495 661 0 1001 978 0 1 1     > ./outputs/t757

./tcas.exe 693 0 1 639 352 609 1 470 793 0 2 0     > ./outputs/t758

./tcas.exe 925 1 1 625 491 584 0 421 592 1 1 1     > ./outputs/t759

./tcas.exe 810 1 0 0 296 50 1 446 -1 0 2 0     > ./outputs/t760

./tcas.exe 855 1 0 4592 49 290 0 627 617 0 2 0     > ./outputs/t761

./tcas.exe 834 1 0 638 378 0 2 0 842 0 2 1     > ./outputs/t762

./tcas.exe 573 1 0 667 0 623 0 651 671 1 1 0     > ./outputs/t763

./tcas.exe 1134 0 0 559 587 0 0 1003 0 0 2 0     > ./outputs/t764

./tcas.exe 817 1 0 566 402 603 2 348 760 0 2 1     > ./outputs/t765

./tcas.exe 610 0 0 0 587 665 3 673 722 0 2 1     > ./outputs/t766

./tcas.exe -1 1 0 631 461 0 0 645 604 0 2 1     > ./outputs/t767

./tcas.exe 1046 1 -1 565 505 553 1 -100 975 0 2 1     > ./outputs/t768

./tcas.exe 832 1 0 562 347 788 0 0 785 2 2 1     > ./outputs/t769

./tcas.exe 621 1 1 6021 353 718 1 320 561 0 1 1     > ./outputs/t770

./tcas.exe 789 -1 0 707 518 636 3 137 0 0 1 1     > ./outputs/t771

./tcas.exe 649 0 0 645 347 702 1 502 76 0 2 1     > ./outputs/t772

./tcas.exe 657 1 0 666 0 613 0 840 976 0 2 0     > ./outputs/t773

./tcas.exe 688 0 0 0 561 594 0 713 675 0 2 0     > ./outputs/t774

./tcas.exe 612 1 0 555 479 560 4 0 651 0 2 1     > ./outputs/t775

./tcas.exe 1046 0 0 8338 578 663 3 936 892 0 1 0     > ./outputs/t776

./tcas.exe 1153 1 1 745 861 0 1 748 566 1 2 0     > ./outputs/t777

./tcas.exe 824 1 0 0 519 426 1 357 694 0 2 0     > ./outputs/t778

./tcas.exe 815 1 0 582 0 543 0 906 897 2 2 0     > ./outputs/t779

./tcas.exe 1188 1 0 592 426 979 1 911 -1 2 2 1     > ./outputs/t780

./tcas.exe 0 0 1 6241 380 757 3 0 890 0 2 0     > ./outputs/t781

./tcas.exe 1132 1 0 0 607 565 1 351 593 2 2 1     > ./outputs/t782

./tcas.exe 813 1 1 694 381 722 0 357 0 0 2 1     > ./outputs/t783

./tcas.exe 1075 1 1 515 0 611 1 830 0 0 2 0     > ./outputs/t784

./tcas.exe 1140 1 1 9266 412 763 0 344 384 2 2 0     > ./outputs/t785

./tcas.exe 633 0 0 636 533 661 0 573 553 2 1 1     > ./outputs/t786

./tcas.exe 1000 0 0 -100 566 687 1 477 241 0 1 0     > ./outputs/t787

./tcas.exe 1022 1 0 647 988 694 1 0 0 0 2 0     > ./outputs/t788

./tcas.exe 607 1 0 603 447 688 -1 787 829 0 2 0     > ./outputs/t789

./tcas.exe -1 1 0 538 409 0 2 474 479 2 2 0     > ./outputs/t790

./tcas.exe 627 0 0 697 398 828 -1 915 919 0 2 1     > ./outputs/t791

./tcas.exe 892 1 1 1424 630 0 3 550 586 0 2 3     > ./outputs/t792

./tcas.exe 764 1 0 9447 619 0 3 747 769 1 2 1     > ./outputs/t793

./tcas.exe 664 0 1 693 536 655 1 -100 0 0 2 0     > ./outputs/t794

./tcas.exe 1101 0 1 4426 372 625 1 518 566 0 2 0     > ./outputs/t795

./tcas.exe 890 1 0 3344 502 537 1 417 578 0 2 0     > ./outputs/t796

./tcas.exe 154 1 0 642 514 661 2 999 0 0 1 0     > ./outputs/t797

./tcas.exe 774 0 0 0 623 664 0 817 807 0 2 1     > ./outputs/t798

./tcas.exe 741 1 0 5872 449 649 2 0 -1 2 2 0     > ./outputs/t799

./tcas.exe 739 1 0 7 609 597 3 0 343 0 2 0     > ./outputs/t800

./tcas.exe 681 -1 1 9974 308 564 2 391 396 0 2 0     > ./outputs/t801

./tcas.exe 789 1 1 635 557 720 4 694 0 0 2 1     > ./outputs/t802

./tcas.exe 1009 1 1 606 320 530 2 0 0 0 2 1     > ./outputs/t803

./tcas.exe 608 1 0 531 628 547 3 -1 482 1 2 1     > ./outputs/t804

./tcas.exe 1200 0 1 626 534 642 0 758 744 1 2 1     > ./outputs/t805

./tcas.exe 1181 0 0 714 351 781 0 419 0 0 1 1     > ./outputs/t806

./tcas.exe 0 1 0 734 330 755 3 831 892 0 1 0     > ./outputs/t807

./tcas.exe 994 0 1 7341 364 742 0 606 659 0 2 1     > ./outputs/t808

./tcas.exe 586 0 1 790 79 0 0 689 677 0 2 0     > ./outputs/t809

./tcas.exe -1 1 0 1231 543 671 2 545 545 0 2 1     > ./outputs/t810

./tcas.exe 890 1 0 0 577 622 0 0 284 0 2 1     > ./outputs/t811

./tcas.exe 695 1 0 560 0 578 3 807 988 0 2 1     > ./outputs/t812

./tcas.exe 47 1 1 685 497 668 3 812 817 0 2 0     > ./outputs/t813

./tcas.exe 1157 0 0 766 480 432 3 0 0 0 2 0     > ./outputs/t814

./tcas.exe 659 1 0 0 865 578 3 452 538 1 2 1     > ./outputs/t815

./tcas.exe 1046 1 0 531 505 557 2 261 0 0 1 0     > ./outputs/t816

./tcas.exe 724 0 1 662 0 0 0 762 728 0 2 1     > ./outputs/t817

./tcas.exe 989 1 1 714 693 746 2 960 903 0 2 9     > ./outputs/t818

./tcas.exe 377 0 0 5169 412 572 3 801 797 0 2 1     > ./outputs/t819

./tcas.exe 619 1 0 0 480 0 0 928 0 0 1 1     > ./outputs/t820

./tcas.exe 879 1 1 793 310 -1 2 622 593 0 2 1     > ./outputs/t821

./tcas.exe 635 1 0 585 -1 0 1 0 971 0 2 1     > ./outputs/t822

./tcas.exe 0 0 0 621 413 714 2 416 360 0 2 1     > ./outputs/t823

./tcas.exe -1 1 0 770 600 0 0 401 359 0 2 0     > ./outputs/t824

./tcas.exe 674 1 0 679 472 655 3 523 -1 1 1 1     > ./outputs/t825

./tcas.exe 1041 1 -1 0 494 660 3 68 546 0 2 0     > ./outputs/t826

./tcas.exe 1136 1 0 600 151 0 2 699 867 0 2 1     > ./outputs/t827

./tcas.exe -1 1 1 679 532 628 3 0 360 0 2 0     > ./outputs/t828

./tcas.exe 890 1 1 0 523 931 1 880 866 2 2 1     > ./outputs/t829

./tcas.exe 970 1 1 620 469 126 0 0 0 0 2 0     > ./outputs/t830

./tcas.exe 1195 1 1 622 378 621 2 520 0 2 2 0     > ./outputs/t831

./tcas.exe 834 0 0 573 887 599 1 0 874 0 2 0     > ./outputs/t832

./tcas.exe 629 0 1 615 603 663 0 897 874 -1 1 1     > ./outputs/t833

./tcas.exe 1145 1 0 718 520 628 0 639 0 3 2 1     > ./outputs/t834

./tcas.exe 623 -1 0 683 461 732 3 634 671 0 2 1     > ./outputs/t835

./tcas.exe 774 0 0 654 427 636 1 0 0 1 2 1     > ./outputs/t836

./tcas.exe 653 1 1 688 592 709 3 883 849 0 1 -1     > ./outputs/t837

./tcas.exe 987 0 1 740 67 735 3 330 326 0 2 1     > ./outputs/t838

./tcas.exe 852 1 0 694 586 708 1 -100 621 0 2 1     > ./outputs/t839

./tcas.exe 847 1 0 626 888 580 1 0 172 0 2 1     > ./outputs/t840

./tcas.exe 1099 1 1 670 349 680 3 729 789 2 2 0     > ./outputs/t841

./tcas.exe 841 1 0 0 351 719 3 485 0 0 1 0     > ./outputs/t842

./tcas.exe 929 0 0 0 408 754 0 211 941 0 2 1     > ./outputs/t843

./tcas.exe 691 0 0 0 548 737 1 410 364 1 1 0     > ./outputs/t844

./tcas.exe 0 0 1 604 473 650 3 536 0 0 2 1     > ./outputs/t845

./tcas.exe 1002 1 0 706 306 668 2 0 -100 0 2 1     > ./outputs/t846

./tcas.exe 819 1 1 9386 518 775 1 707 726 2 2 0     > ./outputs/t847

./tcas.exe 1077 1 -1 593 324 636 2 0 448 0 2 1     > ./outputs/t848

./tcas.exe 822 1 1 701 453 872 2 851 849 0 2 9     > ./outputs/t849

./tcas.exe 925 1 -1 650 432 655 0 859 891 0 2 0     > ./outputs/t850

./tcas.exe 1162 1 1 1025 344 631 3 453 466 0 2 4     > ./outputs/t851

./tcas.exe 1078 1 0 581 567 655 3 637 906 2 2 0     > ./outputs/t852

./tcas.exe 777 1 0 646 616 628 2 904 0 0 1 1     > ./outputs/t853

./tcas.exe 782 1 0 0 418 610 1 0 618 0 2 0     > ./outputs/t854

./tcas.exe 1084 1 1 995 501 604 2 0 482 -1 2 1     > ./outputs/t855

./tcas.exe 1013 1 0 643 373 706 3 0 808 2 2 1     > ./outputs/t856

./tcas.exe -1 1 0 706 291 643 1 644 564 0 2 0     > ./outputs/t857

./tcas.exe 0 1 0 552 382 612 1 0 754 0 2 1     > ./outputs/t858

./tcas.exe 733 1 1 590 341 589 3 534 620 1 2 0     > ./outputs/t859

./tcas.exe 706 1 1 4649 316 935 3 605 850 0 2 1     > ./outputs/t860

./tcas.exe 0 1 1 2311 594 715 3 906 926 0 2 1     > ./outputs/t861

./tcas.exe 995 1 1 756 419 339 0 0 540 0 2 0     > ./outputs/t862

./tcas.exe 850 1 0 187 443 542 0 410 407 4 2 0     > ./outputs/t863

./tcas.exe 878 1 1 0 321 0 2 550 596 0 2 0     > ./outputs/t864

./tcas.exe 1146 0 0 0 550 530 2 899 857 0 1 0     > ./outputs/t865

./tcas.exe 862 1 0 0 383 0 2 474 721 0 2 1     > ./outputs/t866

./tcas.exe 757 1 1 692 581 640 1 840 841 1 2 0     > ./outputs/t867

./tcas.exe 692 0 0 0 439 655 3 852 539 0 2 0     > ./outputs/t868

./tcas.exe 1165 1 0 592 -1 605 0 0 596 0 2 1     > ./outputs/t869

./tcas.exe 760 1 -1 0 314 0 3 452 423 0 2 1     > ./outputs/t870

./tcas.exe 948 0 1 584 415 574 3 665 642 2 2 1     > ./outputs/t871

./tcas.exe -100 0 0 1879 547 626 0 854 875 0 2 0     > ./outputs/t872

./tcas.exe 615 0 0 2299 456 549 0 748 0 2 2 0     > ./outputs/t873

./tcas.exe 1117 0 1 0 569 0 2 716 741 0 2 1     > ./outputs/t874

./tcas.exe 818 1 1 563 554 999 1 0 615 1 2 1     > ./outputs/t875

./tcas.exe 780 1 0 6500 579 -1 1 730 683 0 2 0     > ./outputs/t876

./tcas.exe 463 1 1 0 387 590 1 907 867 0 1 0     > ./outputs/t877

./tcas.exe 990 1 1 0 325 0 0 727 665 0 2 1     > ./outputs/t878

./tcas.exe 952 1 0 588 0 774 0 593 639 -1 2 0     > ./outputs/t879

./tcas.exe 1019 1 0 4248 0 551 2 544 550 1 2 1     > ./outputs/t880

./tcas.exe 974 1 0 611 978 521 3 0 962 2 1 0     > ./outputs/t881

./tcas.exe -1 1 1 576 500 0 0 641 883 4 2 1     > ./outputs/t882

./tcas.exe 868 1 1 729 501 740 3 1017 0 0 2 1     > ./outputs/t883

./tcas.exe 1084 1 1 704 538 707 2 0 -1 0 2 0     > ./outputs/t884

./tcas.exe 935 1 0 4528 388 0 0 853 956 0 2 0     > ./outputs/t885

./tcas.exe 1058 1 1 365 560 652 1 0 682 0 2 0     > ./outputs/t886

./tcas.exe 1032 1 1 7944 330 0 1 361 0 0 2 1     > ./outputs/t887

./tcas.exe 987 1 0 642 606 0 0 413 0 0 2 1     > ./outputs/t888

./tcas.exe 994 1 0 647 755 410 0 564 548 1 2 1     > ./outputs/t889

./tcas.exe 911 1 0 527 516 541 0 0 465 2 1 0     > ./outputs/t890

./tcas.exe 754 1 0 0 335 604 3 531 453 3 2 1     > ./outputs/t891

./tcas.exe 856 0 1 5631 380 590 0 961 695 0 2 0     > ./outputs/t892

./tcas.exe 36 0 0 622 340 620 1 0 423 0 1 0     > ./outputs/t893

./tcas.exe 716 1 1 618 341 767 1 0 0 0 2 1     > ./outputs/t894

./tcas.exe 753 1 1 620 583 650 1 826 779 2 1 0     > ./outputs/t895

./tcas.exe 872 1 1 0 669 561 1 955 931 0 2 0     > ./outputs/t896

./tcas.exe 1119 0 0 749 332 696 1 533 526 1 2 0     > ./outputs/t897

./tcas.exe 1032 1 0 5936 652 0 2 893 920 0 2 0     > ./outputs/t898

./tcas.exe 903 1 1 577 396 -100 2 314 515 0 2 0     > ./outputs/t899

./tcas.exe 1130 1 1 8164 493 665 2 421 424 0 2 -1     > ./outputs/t900

./tcas.exe -1 1 1 9836 458 698 2 530 552 2 1 0     > ./outputs/t901

./tcas.exe 1141 0 1 687 434 690 0 0 438 0 1 0     > ./outputs/t902

./tcas.exe 692 0 1 650 353 2 3 408 435 1 2 1     > ./outputs/t903

./tcas.exe 814 -1 1 652 309 705 2 716 687 0 1 0     > ./outputs/t904

./tcas.exe 722 1 0 693 573 674 1 862 822 0 2 3     > ./outputs/t905

./tcas.exe 1089 1 0 0 587 0 0 449 -100 1 2 1     > ./outputs/t906

./tcas.exe 986 1 1 535 478 521 2 934 874 1 1 1     > ./outputs/t907

./tcas.exe 609 1 1 8407 595 583 2 560 485 0 2 0     > ./outputs/t908

./tcas.exe 898 1 0 688 0 741 1 703 44 0 2 1     > ./outputs/t909

./tcas.exe 1154 1 1 552 433 593 4 727 829 0 2 9     > ./outputs/t910

./tcas.exe 856 1 1 574 -100 515 3 941 674 0 2 1     > ./outputs/t911

./tcas.exe 1034 1 0 642 397 581 1 445 -1 0 1 0     > ./outputs/t912

./tcas.exe 840 1 1 0 515 573 0 0 54 0 1 0     > ./outputs/t913

./tcas.exe 757 1 0 0 527 205 3 698 750 2 2 0     > ./outputs/t914

./tcas.exe 397 1 1 685 603 656 2 501 991 0 2 1     > ./outputs/t915

./tcas.exe 793 1 1 8753 425 622 1 744 0 0 2 0     > ./outputs/t916

./tcas.exe 1084 1 0 58 197 731 2 547 984 0 2 0     > ./outputs/t917

./tcas.exe 1156 1 1 9408 599 0 0 904 902 0 2 0     > ./outputs/t918

./tcas.exe 721 1 0 690 438 613 2 0 991 0 2 1     > ./outputs/t919

./tcas.exe 0 1 0 709 851 776 3 214 588 0 2 0     > ./outputs/t920

./tcas.exe -100 1 1 753 474 747 1 920 420 0 2 0     > ./outputs/t921

./tcas.exe 133 1 1 611 507 0 2 801 860 0 2 0     > ./outputs/t922

./tcas.exe 988 1 1 -1 312 655 2 749 734 0 1 1     > ./outputs/t923

./tcas.exe 1171 0 1 718 630 688 3 252 769 0 1 1     > ./outputs/t924

./tcas.exe 1065 1 0 -1 597 582 3 840 881 2 2 0     > ./outputs/t925

./tcas.exe 619 1 -1 746 349 961 0 0 868 0 2 0     > ./outputs/t926

./tcas.exe 911 1 0 -1 549 -100 3 396 383 0 2 0     > ./outputs/t927

./tcas.exe 1001 1 1 737 -100 741 1 828 0 0 2 0     > ./outputs/t928

./tcas.exe 590 1 0 610 325 417 1 578 287 0 2 0     > ./outputs/t929

./tcas.exe 1062 1 1 1941 575 682 3 872 880 1 2 0     > ./outputs/t930

./tcas.exe 604 1 0 652 354 0 2 371 323 2 2 1     > ./outputs/t931

./tcas.exe 1130 0 0 581 426 657 0 848 0 0 2 0     > ./outputs/t932

./tcas.exe 924 0 0 770 424 756 2 0 0 0 2 1     > ./outputs/t933

./tcas.exe 1129 1 1 2950 208 669 1 724 512 0 2 0     > ./outputs/t934

./tcas.exe 599 1 1 654 522 0 0 659 399 0 2 0     > ./outputs/t935

./tcas.exe 954 1 0 672 625 744 2 732 810 2 2 1     > ./outputs/t936

./tcas.exe 972 1 1 460 299 688 1 440 0 0 1 1     > ./outputs/t937

./tcas.exe 0 1 1 522 555 530 1 933 914 2 2 0     > ./outputs/t938

./tcas.exe 801 1 0 782 524 0 3 381 435 0 1 0     > ./outputs/t939

./tcas.exe 0 0 0 598 440 637 2 437 455 0 2 0     > ./outputs/t940

./tcas.exe 817 0 1 0 364 15 0 886 851 0 2 1     > ./outputs/t941

./tcas.exe 1157 1 1 0 563 797 2 459 58 0 2 0     > ./outputs/t942

./tcas.exe 1151 1 0 578 611 0 0 331 378 0 1 1     > ./outputs/t943

./tcas.exe 1149 1 1 0 527 607 3 818 860 2 1 0     > ./outputs/t944

./tcas.exe 1079 1 0 613 397 0 3 524 477 1 2 0     > ./outputs/t945

./tcas.exe 949 1 0 648 515 619 2 0 825 0 2 0     > ./outputs/t946

./tcas.exe 1078 1 0 589 605 584 1 -1 323 0 2 1     > ./outputs/t947

./tcas.exe 903 0 1 660 612 703 1 867 883 0 2 1     > ./outputs/t948

./tcas.exe 1159 1 0 730 910 738 0 740 747 1 2 1     > ./outputs/t949

./tcas.exe 1156 1 0 693 104 674 2 499 883 2 2 1     > ./outputs/t950

./tcas.exe 886 0 0 5515 447 700 3 478 597 0 2 0     > ./outputs/t951

./tcas.exe 1107 1 1 665 853 701 0 653 892 1 2 1     > ./outputs/t952

./tcas.exe 655 1 0 749 487 139 2 477 850 0 2 0     > ./outputs/t953

./tcas.exe 1184 -1 0 0 391 534 3 491 476 0 2 1     > ./outputs/t954

./tcas.exe 879 0 0 0 -100 728 0 517 507 0 2 1     > ./outputs/t955

./tcas.exe 826 1 0 655 326 577 0 0 425 1 2 0     > ./outputs/t956

./tcas.exe 323 1 0 4964 498 697 3 780 810 0 2 1     > ./outputs/t957

./tcas.exe 1084 1 1 703 387 726 3 384 0 1 2 1     > ./outputs/t958

./tcas.exe 988 1 0 622 496 613 1 379 404 0 2 0     > ./outputs/t959

./tcas.exe 1039 -1 1 630 618 0 3 0 801 1 2 1     > ./outputs/t960

./tcas.exe 1185 1 1 595 0 534 1 560 0 0 2 1     > ./outputs/t961

./tcas.exe 700 1 0 575 415 -1 0 795 796 2 2 0     > ./outputs/t962

./tcas.exe 665 1 1 585 445 533 0 209 848 0 2 1     > ./outputs/t963

./tcas.exe 820 1 1 561 0 599 2 993 817 0 2 0     > ./outputs/t964

./tcas.exe 1189 1 1 753 620 761 2 0 185 0 1 0     > ./outputs/t965

./tcas.exe 910 1 1 722 601 707 3 0 0 0 2 0     > ./outputs/t966

./tcas.exe 986 1 1 618 321 595 1 0 418 0 1 4     > ./outputs/t967

./tcas.exe 1079 1 1 631 547 663 2 401 314 4 1 0     > ./outputs/t968

./tcas.exe 204 1 0 707 601 741 1 695 652 2 2 1     > ./outputs/t969

./tcas.exe 797 0 0 8545 149 589 3 278 280 1 1 1     > ./outputs/t970

./tcas.exe -100 1 0 1362 527 922 2 437 358 0 2 1     > ./outputs/t971

./tcas.exe 965 1 1 7468 524 693 1 830 0 0 2 0     > ./outputs/t972

./tcas.exe 0 1 0 7119 153 556 2 836 841 1 1 1     > ./outputs/t973

./tcas.exe 1006 0 -1 8234 374 598 1 811 514 0 2 0     > ./outputs/t974

./tcas.exe 830 1 0 -1 473 631 3 22 0 0 2 1     > ./outputs/t975

./tcas.exe 904 1 0 530 438 0 2 951 0 1 2 0     > ./outputs/t976

./tcas.exe 638 0 1 545 325 589 1 900 798 0 2 0     > ./outputs/t977

./tcas.exe 0 1 -1 0 388 737 3 0 470 0 2 1     > ./outputs/t978

./tcas.exe 1053 1 0 6178 547 127 0 518 489 0 2 0     > ./outputs/t979

./tcas.exe 610 1 1 611 0 616 1 541 578 9 2 1     > ./outputs/t980

./tcas.exe 899 1 1 -100 601 571 3 618 595 4 1 0     > ./outputs/t981

./tcas.exe 1085 1 1 1017 510 614 0 595 614 2 2 4     > ./outputs/t982

./tcas.exe 650 1 1 0 197 701 0 682 711 0 2 -1     > ./outputs/t983

./tcas.exe 1015 0 1 600 526 629 1 569 0 0 2 1     > ./outputs/t984

./tcas.exe -100 0 1 3803 419 630 3 -1 437 0 2 1     > ./outputs/t985

./tcas.exe 598 0 0 639 0 327 1 411 374 0 2 0     > ./outputs/t986

./tcas.exe 1118 0 1 725 0 756 2 860 846 0 2 1     > ./outputs/t987

./tcas.exe 652 1 0 -100 478 779 0 356 371 -1 2 0     > ./outputs/t988

./tcas.exe 698 1 0 3071 59 307 0 849 904 0 2 0     > ./outputs/t989

./tcas.exe 734 1 1 615 -100 591 2 889 -1 0 2 0     > ./outputs/t990

./tcas.exe 628 1 0 706 1 976 0 417 652 2 2 1     > ./outputs/t991

./tcas.exe 913 1 1 661 -100 255 3 0 668 0 2 0     > ./outputs/t992

./tcas.exe 618 0 1 754 390 215 0 250 830 0 2 1     > ./outputs/t993

./tcas.exe 617 0 1 640 441 662 1 677 528 4 2 1     > ./outputs/t994

./tcas.exe 766 1 0 719 300 700 3 406 378 1 1 1     > ./outputs/t995

./tcas.exe 119 1 0 715 292 212 0 322 341 0 2 1     > ./outputs/t996

./tcas.exe 939 1 1 532 534 -100 2 335 971 1 2 1     > ./outputs/t997

./tcas.exe 190 1 1 724 567 715 1 1011 1021 1 2 1     > ./outputs/t998

./tcas.exe -100 1 1 680 602 702 0 831 860 2 2 1     > ./outputs/t999

./tcas.exe 685 1 0 586 0 601 1 646 701 0 1 0     > ./outputs/t1000

./tcas.exe  679 1 1  541  338 5123 0  641  641 0 0 1     > ./outputs/t1001

./tcas.exe  644 1 1 1886  596 2348 0  741  400 1 0 0     > ./outputs/t1002

./tcas.exe  722 1 1 1415  245  316 0  401  739 0 0 0     > ./outputs/t1003

./tcas.exe  722 1 1 1415  275  316 0  401  799 0 0 0     > ./outputs/t1004

./tcas.exe  782 1 1  513  224 5295 0  641  639 0 1 1     > ./outputs/t1005

./tcas.exe  782 1 1  413  224 4295 0  641  639 0 1 1     > ./outputs/t1006

./tcas.exe  786 1 1  383  548 5870 0  639  399 1 0 1     > ./outputs/t1007

./tcas.exe  786 1 1  383  448 4870 0  639  399 1 0 1     > ./outputs/t1008

./tcas.exe  638 1 0 2578  156 3757 0  400  399 1 0 1     > ./outputs/t1009

./tcas.exe  638 1 0 2278  156 3757 0  650  399 1 0 1     > ./outputs/t1010

./tcas.exe  727 1 1 1935  339  968 0  399  740 0 1 1     > ./outputs/t1011

./tcas.exe  927 1 1 4902  351 2093 0  739  740 1 0 0     > ./outputs/t1012

./tcas.exe  927 1 1 4702  251 1093 0  739  740 1 0 0     > ./outputs/t1013

./tcas.exe  867 1 1 1774  101 2204 0  499  499 1 0 1     > ./outputs/t1014

./tcas.exe  867 1 1 1674  101 2104 0  499  499 1 0 1     > ./outputs/t1015

./tcas.exe  653 1 0 3203  448 1267 0  541  641 0 0 0     > ./outputs/t1016

./tcas.exe  653 1 0 3203  448 1267 0  541  641 1 0 0     > ./outputs/t1017

./tcas.exe  653 1 0  632  167  203 0  401  401 1 0 0     > ./outputs/t1018

./tcas.exe  958 1 1 2297  574 4253 0  399  400 0 0 1     > ./outputs/t1019

./tcas.exe  958 1 1 2297  574 4253 0  399  300 0 0 1     > ./outputs/t1020

./tcas.exe  958 1 1 2297  574 4253 0  399  300 1 0 1     > ./outputs/t1021

./tcas.exe  635 1 0 1142  411 4704 1  740  500 0 0 1     > ./outputs/t1022

./tcas.exe  635 1 0 1142  511 2704 1  740  500 0 0 1     > ./outputs/t1023

./tcas.exe  635 1 0 1142  511 2704 1  740  500 1 0 1     > ./outputs/t1024

./tcas.exe  635 1 0 1142  511 1704 1  740  500 1 0 1     > ./outputs/t1025

./tcas.exe  635 1 0 1142  411 1704 1  740  500 1 0 1     > ./outputs/t1026

./tcas.exe  675 1 0 1142  411 1704 1  740  500 1 0 1     > ./outputs/t1027

./tcas.exe  675 1 0 1142  411 1704 1  640  500 1 0 1     > ./outputs/t1028

./tcas.exe  675 1 1 1142  411 1704 1  640  500 1 0 1     > ./outputs/t1029

./tcas.exe  775 1 1 1142  411 1704 1  640  500 1 0 1     > ./outputs/t1030

./tcas.exe  775 1 1 1142  411 1704 1  540  500 1 0 1     > ./outputs/t1031

./tcas.exe  775 1 1 1142  411 1504 1  540  500 1 0 1     > ./outputs/t1032

./tcas.exe  775 1 1 1042  411 1504 1  540  500 1 0 1     > ./outputs/t1033

./tcas.exe  775 1 1 942  411 1504 1  540  500 1 0 1     > ./outputs/t1034

./tcas.exe  775 1 1 942  311 1504 1  540  500 1 0 1     > ./outputs/t1035

./tcas.exe  775 1 1 942  211 1504 1  540  500 1 0 1     > ./outputs/t1036

./tcas.exe  775 1 1 942  211 1204 1  540  500 1 0 1     > ./outputs/t1037

./tcas.exe  644 1 1 1986  596 2448 0  741  400 1 0 1     > ./outputs/t1038

./tcas.exe  644 1 0 1986  596 2448 0  741  400 1 0 1     > ./outputs/t1039

./tcas.exe  644 1 0 1786  596 2448 0  741  400 1 0 1     > ./outputs/t1040

./tcas.exe  644 1 0 1786  596 2248 0  741  400 1 0 1     > ./outputs/t1041

./tcas.exe  644 1 0 1786  596 2248 0  721  400 1 0 1     > ./outputs/t1042

./tcas.exe  624 1 0 1786  596 2248 0  721  400 1 0 1     > ./outputs/t1043

./tcas.exe  624 1 0 1786  496 2248 0  721  400 1 0 1     > ./outputs/t1044

./tcas.exe  624 1 0 1286  496 2248 0  721  400 1 0 1     > ./outputs/t1045

./tcas.exe  624 1 0 1086  496 2248 0  721  400 1 0 1     > ./outputs/t1046

./tcas.exe  604 1 0 1086  496 2248 0  721  400 1 0 1     > ./outputs/t1047

./tcas.exe  604 1 0 1086  496 1248 0  721  400 1 0 1     > ./outputs/t1048

./tcas.exe  604 1 0 1086  396 1248 0  721  400 1 0 1     > ./outputs/t1049

./tcas.exe  958 1 0 2597  574 4253 0  399  400 0 0 1     > ./outputs/t1050

./tcas.exe  958 1 0 2597  574 4253 0  379  400 0 0 1     > ./outputs/t1051

./tcas.exe  958 1 0 2597  574 4253 0  379  400 1 0 1     > ./outputs/t1052

./tcas.exe  958 1 0 2597  574 3253 0  379  400 1 0 1     > ./outputs/t1053

./tcas.exe  958 1 0 2597  474 3253 0  379  400 1 0 1     > ./outputs/t1054

./tcas.exe  958 1 0 2597  474 3253 0  379  400 0 0 1     > ./outputs/t1055

./tcas.exe  958 1 1 2597  574 4253 0  399  400 0 0 1     > ./outputs/t1056

./tcas.exe  939 1 1 532 434 -100 2 335 971 1 2 1     > ./outputs/t1057

./tcas.exe  939 1 1 532 434 0 2 335 971 1 2 1     > ./outputs/t1058

./tcas.exe  939 1 0 532 434 0 2 335 971 1 2 1     > ./outputs/t1059

./tcas.exe  839 1 0 532 434 0 2 335 971 1 2 1     > ./outputs/t1060

./tcas.exe  839 1 0 532 234 0 2 335 971 1 2 1     > ./outputs/t1061

./tcas.exe  839 1 0 532 234 0 2 325 971 1 2 1     > ./outputs/t1062

./tcas.exe  820 1 1 561 0 599 2 993 817 1 2 0     > ./outputs/t1063

./tcas.exe  820 1 0 561 0 599 2 993 817 1 2 0     > ./outputs/t1064

./tcas.exe  820 1 0 561 0 599 2 893 817 1 2 0     > ./outputs/t1065

./tcas.exe  720 1 0 561 0 599 2 893 817 1 2 0     > ./outputs/t1066

./tcas.exe  720 1 0 461 0 599 2 893 817 1 2 0     > ./outputs/t1067

./tcas.exe  655 1 0 749 487 139 2 477 850 1 2 0     > ./outputs/t1068

./tcas.exe  655 1 0 749 487 139 2 477 850 1 2 1     > ./outputs/t1069

./tcas.exe  655 1 1 749 487 139 2 477 850 1 2 1     > ./outputs/t1070

./tcas.exe  655 1 0 749 387 139 2 477 850 1 2 1     > ./outputs/t1071

./tcas.exe  755 1 0 749 387 139 2 477 850 1 2 1     > ./outputs/t1072

./tcas.exe  755 1 0 649 387 139 2 477 850 1 2 1     > ./outputs/t1073

./tcas.exe  698 1 0 3071 59 307 0 849 904 1 2 0     > ./outputs/t1074

./tcas.exe  698 1 0 2071 59 307 0 849 904 1 2 0     > ./outputs/t1075

./tcas.exe  698 1 0 2071 49 307 0 849 904 1 2 0     > ./outputs/t1076

./tcas.exe  798 1 0 2071 49 307 0 849 904 1 2 0     > ./outputs/t1077

./tcas.exe  798 1 1 2071 49 307 0 849 904 1 2 0     > ./outputs/t1078

./tcas.exe  700 1 0 575 415 1 0 795 796 2 2 0     > ./outputs/t1079

./tcas.exe  700 1 1 575 415 1 0 795 796 2 2 0     > ./outputs/t1080

./tcas.exe  700 1 1 575 415 1 0 795 796 1 2 0     > ./outputs/t1081

./tcas.exe  700 1 1 275 415 1 0 795 796 1 2 0     > ./outputs/t1082

./tcas.exe  700 1 1 275 415 1 0 695 796 1 2 0     > ./outputs/t1083

./tcas.exe  800 1 1 275 415 1 0 695 796 1 2 0     > ./outputs/t1084

./tcas.exe  1062 1 0 1941 575 682 3 872 880 1 2 0     > ./outputs/t1085

./tcas.exe  1062 1 0 1941 545 582 3 872 880 1 2 0     > ./outputs/t1086

./tcas.exe  1062 1 0 1941 545 582 2 872 880 1 2 0     > ./outputs/t1087

./tcas.exe  1062 1 0 1941 545 582 2 772 880 1 2 0     > ./outputs/t1088

./tcas.exe  1062 1 0 1941 545 582 2 772 780 1 2 0     > ./outputs/t1089

./tcas.exe  1062 1 1 1941 545 582 2 772 780 1 2 0     > ./outputs/t1090

./tcas.exe  1062 1 0 1941 445 582 2 772 780 1 2 0     > ./outputs/t1091

./tcas.exe  1062 1 0 1241 445 582 2 772 780 1 2 0     > ./outputs/t1092

./tcas.exe  1062 1 0 1241 445 582 2 712 780 1 2 0     > ./outputs/t1093

./tcas.exe  935 1 0 3528 388 0 0 853 956 0 2 0     > ./outputs/t1094

./tcas.exe  935 1 0 3528 288 0 0 853 956 0 2 0     > ./outputs/t1095

./tcas.exe  935 1 1 3528 288 0 0 853 956 0 2 0     > ./outputs/t1096

./tcas.exe  935 1 1 3528 288 0 0 853 956 1 2 0     > ./outputs/t1097

./tcas.exe  935 1 1 2528 288 0 0 853 956 1 2 0     > ./outputs/t1098

./tcas.exe  757 1 0 692 581 640 1 840 841 1 2 0     > ./outputs/t1099

./tcas.exe  757 1 0 692 581 640 1 840 841 0 2 0     > ./outputs/t1100

./tcas.exe  757 1 1 692 481 640 1 840 841 0 2 0     > ./outputs/t1101

./tcas.exe  757 1 1 692 481 640 2 840 841 1 2 0     > ./outputs/t1102

./tcas.exe  757 1 1 692 481 640 2 840 891 1 2 0     > ./outputs/t1103

./tcas.exe  913 1 0 661 -100 255 3 0 668 0 2 0     > ./outputs/t1104

./tcas.exe  913 1 0 661 0 255 3 0 668 0 2 0     > ./outputs/t1105

./tcas.exe  913 1 0 661 0 255 3 0 368 0 2 0     > ./outputs/t1106

./tcas.exe  913 1 0 661 0 255 3 1 368 0 2 0     > ./outputs/t1107

./tcas.exe  913 1 0 661 0 255 3 100 368 0 2 0     > ./outputs/t1108

./tcas.exe  713 1 0 661 0 255 3 100 368 0 2 0     > ./outputs/t1109

./tcas.exe  713 1 0 661 0 255 3 100 368 1 2 0     > ./outputs/t1110

./tcas.exe  713 1 0 661 0 255 3 100 228 1 2 0     > ./outputs/t1111

./tcas.exe  613 1 0 661 0 255 3 100 228 1 2 0     > ./outputs/t1112

./tcas.exe  613 1 0 661 0 155 3 100 228 1 2 0     > ./outputs/t1113

./tcas.exe  613 1 0 561 0 155 3 100 228 1 2 0     > ./outputs/t1114

./tcas.exe  613 1 0 461 0 155 3 100 228 1 2 0     > ./outputs/t1115

./tcas.exe  613 1 0 461 0 55 3 100 228 1 2 0     > ./outputs/t1116

./tcas.exe  758 1 1 2597  574 4253 0  399  400 0 0 1     > ./outputs/t1117

./tcas.exe  1058 1 1 2597  574 4253 0  399  400 0 0 1     > ./outputs/t1118

./tcas.exe  1058 1 1 2597  574 3253 0  399  400 0 0 1     > ./outputs/t1119

./tcas.exe  1058 1 1 2597  274 3253 0  399  400 0 0 1     > ./outputs/t1120

./tcas.exe  1058 1 0 2597  274 3253 0  399  400 0 0 1     > ./outputs/t1121

./tcas.exe  1058 1 0 2597  174 3253 0  399  400 0 0 1     > ./outputs/t1122

./tcas.exe  1058 1 0 1597  174 3253 0  399  400 0 0 1     > ./outputs/t1123

./tcas.exe  1058 1 0 1597  174 4253 0  399  400 0 0 1     > ./outputs/t1124

./tcas.exe  1058 1 0 1597  174 7253 0  399  400 0 0 1     > ./outputs/t1125

./tcas.exe  775 1 1 942  211 5204 1  540  500 1 0 1     > ./outputs/t1126

./tcas.exe  775 1 1 642  211 5204 1  540  500 1 0 1     > ./outputs/t1127

./tcas.exe  775 1 0 642  211 5204 1  540  500 1 0 1     > ./outputs/t1128

./tcas.exe  605 1 0 1142  511 4704 1  740  500 0 0 1     > ./outputs/t1129

./tcas.exe  611 1 1 1142  511 4704 1  740  500 0 0 1     > ./outputs/t1130

./tcas.exe  611 1 1 1142  511 4704 1  740  500 1 0 1     > ./outputs/t1131

./tcas.exe  604 1 0 1086  496 8248 0  721  400 1 0 1     > ./outputs/t1132

./tcas.exe  604 1 0 1086  196 8248 0  721  400 1 0 1     > ./outputs/t1133

./tcas.exe  604 1 0 1111  196 8248 0  721  400 1 0 1     > ./outputs/t1134

./tcas.exe  604 1 0 1111  196 8248 0  721  400 0 0 0     > ./outputs/t1135

./tcas.exe  604 1 0 911  196 8248 0  721  400 0 0 0     > ./outputs/t1136

./tcas.exe  604 1 0 911  96 8248 0  721  400 0 0 0     > ./outputs/t1137

./tcas.exe  604 1 1 911  96 8248 0  721  400 1 0 1     > ./outputs/t1138

./tcas.exe 1058 1 0 1597  174 3253 0  399  400 1 0 1     > ./outputs/t1139

./tcas.exe 1058 1 0 597  174 3253 0  399  400 1 0 1     > ./outputs/t1140

./tcas.exe 958 1 0 597  174 3253 0  399  400 1 0 1     > ./outputs/t1141

./tcas.exe 958 1 0 597  64 3253 0  399  400 1 0 1     > ./outputs/t1142

./tcas.exe 958 1 0 497  64 3253 0  399  400 1 0 1     > ./outputs/t1143

./tcas.exe 958 1 0 497  64 3253 0  399  200 1 0 1     > ./outputs/t1144

./tcas.exe 958 1 0 797  64 3253 0  399  200 1 0 1     > ./outputs/t1145

./tcas.exe 958 1 0 797  64 3253 0  399  100 1 0 1     > ./outputs/t1146

./tcas.exe 958 1 0 997  64 3253 0  399  120 1 0 1     > ./outputs/t1147

./tcas.exe 918 1 0 917  64 2253 0  399  120 1 0 1     > ./outputs/t1148

./tcas.exe 918 1 0 917  64 2153 0  299  126 1 0 1     > ./outputs/t1149

./tcas.exe 918 1 0 917  64 1153 0  299  126 1 0 1     > ./outputs/t1150

./tcas.exe 718 1 0 917  64 1153 0  299  126 1 0 1     > ./outputs/t1151

./tcas.exe 718 1 0 717  64 1153 0  299  126 1 0 1     > ./outputs/t1152

./tcas.exe 718 1 0 717  34 1153 0  299  126 1 0 1      > ./outputs/t1153

./tcas.exe 718 1 0 717  34 1153 0  229  126 1 0 1     > ./outputs/t1154

./tcas.exe 718 1 0 717  334 1153 0  229  126 1 0 1     > ./outputs/t1155

./tcas.exe 1058 1 0 997  174 7253 0  399  400 0 0 1     > ./outputs/t1156

./tcas.exe 1058 1 0 997  174 7253 0  329  400 0 0 1     > ./outputs/t1157

./tcas.exe 1258 1 0 897  174 7253 1  629  500 0 0 1     > ./outputs/t1158

./tcas.exe 1558 1 0 897  174 7253 2  729  640  0 0 1     > ./outputs/t1159

./tcas.exe 1558 1 0 697  174 7253 2  729  640  0 0 1     > ./outputs/t1160

./tcas.exe 1558 1 0 697  174 7253 2  729  640  1 0 1     > ./outputs/t1161

./tcas.exe 1558 1 1 697  174 7253 2  729  640  1 0 1     > ./outputs/t1162

./tcas.exe 1558 1 1 697  174 7253 2  929  640  1 0 1     > ./outputs/t1163

./tcas.exe 1558 1 1 697  174 7253 3  929  740  1 0 1     > ./outputs/t1164

./tcas.exe 1558 1 1 697  174 7253 3  741  740  1 0 1     > ./outputs/t1165

./tcas.exe 701 1 1 697  174 7253 3  741  740  1 0 1     > ./outputs/t1166

./tcas.exe 701 1 1 697  174 753 3  741  740  1 0 1     > ./outputs/t1167

./tcas.exe 701 1 1 697  174 753 3  749  740  0 0 1     > ./outputs/t1168

./tcas.exe 734 1 0 343 30 545 0 565 321 1 0 1     > ./outputs/t1169

./tcas.exe 934 1 0 343 30 545 0 565 21 0 0 1     > ./outputs/t1170

./tcas.exe 934 1 0 533 30 545 0 565 21 0 0 1     > ./outputs/t1171

./tcas.exe 934 1 0 533 30 545 1 565 21 0 0 1     > ./outputs/t1172

./tcas.exe 934 1 0 533 30 545 2 565 21 0 0 1     > ./outputs/t1173

./tcas.exe 934 1 0 533 30 545 3 565 21 0 0 1     > ./outputs/t1174

./tcas.exe 934 1 0 533 30 545 3 565 421 0 0 1     > ./outputs/t1175

./tcas.exe 934 1 0 533 30 545 3 765 621 0 0 1     > ./outputs/t1176

./tcas.exe 934 0 0 533 30 545 3 765 621 0 0 1     > ./outputs/t1177

./tcas.exe 934 1 0 533 730 545 3 765 621 0 0 1     > ./outputs/t1178

./tcas.exe 34 1 0 533 30 545 3 765 621 0 0 1     > ./outputs/t1179

./tcas.exe 734 1 1 533 30 545 3 765 621 1 1 1     > ./outputs/t1180

./tcas.exe 734 1 0 533 30 545 3 765 621 1 1 1     > ./outputs/t1181

./tcas.exe 734 1 0 343 30 545 0 265 321 1 0 0     > ./outputs/t1182

./tcas.exe 934 1 0 343 30 545 0 5 121 0 0 1     > ./outputs/t1183

./tcas.exe 934 1 0 533 30 545 0 65 421 0 0 1     > ./outputs/t1184

./tcas.exe 934 1 0 533 30 545 1 65 165 0 0 1     > ./outputs/t1185

./tcas.exe 934 1 0 533 30 545 2 565 721 0 0 1     > ./outputs/t1186

./tcas.exe 934 1 0 533 30 545 3 565 621 0 0 1     > ./outputs/t1187

./tcas.exe 934 1 0 533 30 545 3 365 421 0 0 0     > ./outputs/t1188

./tcas.exe 934 1 0 533 30 545 3 365 365 0 0 0     > ./outputs/t1189

./tcas.exe 1058 1 0 997  174 7253 0  399  200 0 0 1     > ./outputs/t1190

./tcas.exe 1058 1 0 997  174 7253 0  329  100 0 0 1     > ./outputs/t1191

./tcas.exe 1258 1 0 897  174 7253 1  629  650 0 0 0     > ./outputs/t1192

./tcas.exe 1558 1 0 897  174 7253 2  729  840  0 0 1     > ./outputs/t1193

./tcas.exe 934 1 0 533 30 545 1 65 165 0 0 1     > ./outputs/t1194

./tcas.exe 934 1 0 533 30 545 1 65 165 1 0 1     > ./outputs/t1195

./tcas.exe 634 1 0 533 30 545 1 65 165 1 0 1     > ./outputs/t1196

./tcas.exe 634 1 0 533 30 545 2 65 165 1 0 1     > ./outputs/t1197

./tcas.exe 634 1 0 533 30 545 3 65 165 1 0 1     > ./outputs/t1198

./tcas.exe 634 1 0 533 300 545 3 65 465 1 0 1     > ./outputs/t1199

./tcas.exe 634 1 0 533 400 645 3 265 465 1 0 1     > ./outputs/t1200

./tcas.exe 1034 1 0 533 400 645 3 265 465 1 0 1     > ./outputs/t1201

./tcas.exe 1034 1 0 533 400 645 3 265 465 0 0 1     > ./outputs/t1202

./tcas.exe 1034 1 0 533 400 645 0 265 465 0 0 1     > ./outputs/t1203

./tcas.exe 1034 1 0 433 400 645 0 265 465 0 0 1     > ./outputs/t1204

./tcas.exe 634 1 0 533 30 545 2 65 165 1 0 1     > ./outputs/t1205

./tcas.exe 634 1 0 533 300 545 2 65 465 1 0 1     > ./outputs/t1206

./tcas.exe 634 1 0 533 400 645 2 265 465 1 0 1     > ./outputs/t1207

./tcas.exe 1034 1 0 533 400 645 2 265 465 1 0 1     > ./outputs/t1208

./tcas.exe 1034 1 0 533 400 645 2 265 465 0 0 1     > ./outputs/t1209

./tcas.exe 1034 1 0 533 400 645 2 265 465 0 0 1     > ./outputs/t1210

./tcas.exe 958 1 0 497  64 3253 2  399  400 1 0 1     > ./outputs/t1211

./tcas.exe 958 1 0 497  64 3253 2  399  200 1 0 1     > ./outputs/t1212

./tcas.exe 958 1 0 797  64 3253 2  399  200 1 0 1     > ./outputs/t1213

./tcas.exe 958 1 0 797  64 3253 2  399  100 1 0 1     > ./outputs/t1214

./tcas.exe 958 1 0 997  64 3253 2  399  120 1 0 1     > ./outputs/t1215

./tcas.exe 918 1 0 917  64 2253 2  399  120 1 0 1     > ./outputs/t1216

./tcas.exe 918 1 0 917  64 2153 2  299  126 1 0 1     > ./outputs/t1217

./tcas.exe 918 1 0 917  64 1153 2  299  126 1 0 1     > ./outputs/t1218

./tcas.exe 718 1 0 917  64 1153 2  299  126 1 0 1     > ./outputs/t1219

./tcas.exe 718 1 0 717  64 1153 2  299  126 1 0 1     > ./outputs/t1220

./tcas.exe 718 1 0 717  34 1153 2  299  126 1 0 1      > ./outputs/t1221

./tcas.exe 718 1 0 717  34 1153 2  229  126 1 0 1     > ./outputs/t1222

./tcas.exe 718 1 0 717  334 1153 2  229  126 1 0 1     > ./outputs/t1223

./tcas.exe 1034 1 0 433 200 245 0 565 765 0 0 1     > ./outputs/t1224

./tcas.exe 1034 1 0 433 200 245 0 565 665 0 0 1     > ./outputs/t1225

./tcas.exe 1034 1 0 433 200 245 0 565 665 1 0 1     > ./outputs/t1226

./tcas.exe 1034 1 0 433 200 245 1 565 665 0 0 1     > ./outputs/t1227

./tcas.exe 634 1 0 433 200 245 1 565 795 0 0 1     > ./outputs/t1228

./tcas.exe 634 1 0 433 200 245 1 565 795 1 0 1     > ./outputs/t1229

./tcas.exe 634 1 1 433 200 245 1 565 795 1 0 1     > ./outputs/t1230

./tcas.exe 634 1 0 633 200 535 1 565 795 0 0 1     > ./outputs/t1231

./tcas.exe 634 1 0 633 200 535 2 665 795 0 0 1     > ./outputs/t1232

./tcas.exe 634 1 0 633 200 535 2 665 795 1 0 1     > ./outputs/t1233

./tcas.exe 634 1 1 633 200 535 1 565 795 0 1 1     > ./outputs/t1234

./tcas.exe 634 1 1 633 200 535 0 565 795 0 1 1     > ./outputs/t1235

./tcas.exe 634 1 1 633 200 535 2 665 795 0 1 1     > ./outputs/t1236

./tcas.exe 634 1 1 633 200 535 3 765 795 1 1 1     > ./outputs/t1237

./tcas.exe 634 1 1 633 200 535 3 765 995 0 1 1     > ./outputs/t1238

./tcas.exe 634 1 0 533 30 545 3 65 165 1 0 1     > ./outputs/t1239

./tcas.exe 634 1 0 533 300 545 3 65 465 1 0 1     > ./outputs/t1240

./tcas.exe 634 1 0 533 400 645 3 265 465 1 0 1     > ./outputs/t1241

./tcas.exe 1034 1 0 533 400 645 3 265 465 1 0 1     > ./outputs/t1242

./tcas.exe 1034 1 0 533 400 645 3 265 465 0 0 1     > ./outputs/t1243

./tcas.exe 1034 1 0 533 400 645 3 265 465 0 0 1     > ./outputs/t1244

./tcas.exe 958 1 0 497  64 3253 3  399  400 1 0 1     > ./outputs/t1245

./tcas.exe 958 1 0 497  64 3253 3  399  200 1 0 1     > ./outputs/t1246

./tcas.exe 958 1 0 797  64 3253 3  399  200 1 0 1     > ./outputs/t1247

./tcas.exe 958 1 0 797  64 3253 3  399  100 1 0 1     > ./outputs/t1248

./tcas.exe 958 1 0 997  64 3253 3  399  120 1 0 1     > ./outputs/t1249

./tcas.exe 918 1 0 917  64 2253 3  399  120 1 0 1     > ./outputs/t1250

./tcas.exe 918 1 0 917  64 2153 3  299  126 1 0 1     > ./outputs/t1251

./tcas.exe 918 1 0 917  64 1153 3  299  126 1 0 1     > ./outputs/t1252

./tcas.exe 718 1 0 917  64 1153 3  299  126 1 0 1     > ./outputs/t1253

./tcas.exe 718 1 0 717  64 1153 3  299  126 1 0 1     > ./outputs/t1254

./tcas.exe 718 1 0 717  34 1153 3  299  126 1 0 1      > ./outputs/t1255

./tcas.exe 718 1 0 717  34 1153 3  229  126 1 0 1     > ./outputs/t1256

./tcas.exe 718 1 0 717  334 1153 3  229  126 1 0 1     > ./outputs/t1257

./tcas.exe 634 1 0 633 200 535 0 565 795 1 0 1     > ./outputs/t1258

./tcas.exe 634 1 0 633 200 535 0 265 795 1 0 1     > ./outputs/t1259

./tcas.exe 634 1 0 633 300 535 0 265 795 1 0 1     > ./outputs/t1260

./tcas.exe 634 1 0 633 300 535 0 665 795 0 0 1     > ./outputs/t1261

./tcas.exe 634 1 1 633 300 535 0 665 795 0 1 1     > ./outputs/t1262

./tcas.exe 634 1 1 633 100 535 0 665 795 0 1 1     > ./outputs/t1263

./tcas.exe 634 1 1 633 100 535 0 665 795 0 1 0     > ./outputs/t1264

./tcas.exe 634 1 0 633 100 535 0 665 795 1 0 0     > ./outputs/t1265

./tcas.exe 634 1 0 633 500 535 0 665 795 1 0 0     > ./outputs/t1266

./tcas.exe 634 1 0 633 500 335 0 665 795 1 0 0     > ./outputs/t1267

./tcas.exe 634 1 0 233 500 335 3 845 740 1 0 0     > ./outputs/t1268

./tcas.exe 634 1 0 233 500 335 3 845 740 1 0 1     > ./outputs/t1269

./tcas.exe 634 1 1 233 500 335 3 845 740 0 1 1     > ./outputs/t1270

./tcas.exe 934 1 1 233 500 335 2 845 640 0 1 1     > ./outputs/t1271

./tcas.exe 934 1 1 233 500 335 1 845 500 0 1 1     > ./outputs/t1272

./tcas.exe 934 1 1 233 500 335 0 845 400 0 1 1     > ./outputs/t1273

./tcas.exe 934 1 1 233 100 335 0 845 400 0 1 1     > ./outputs/t1274

./tcas.exe 634 1 1 233 100 335 0 845 400 0 1 1     > ./outputs/t1275

./tcas.exe 634 1 1 233 100 335 0 445 400 0 1 1     > ./outputs/t1276

./tcas.exe 634 1 1 233 400 335 0 445 400 0 1 1     > ./outputs/t1277

./tcas.exe 634 1 1 233 400 235 0 445 400 0 1 1     > ./outputs/t1278

./tcas.exe 634 1 1 233 400 234 0 445 400 0 1 1     > ./outputs/t1279

./tcas.exe 934 1 0 233 500 335 0 845 400 1 0 1     > ./outputs/t1280

./tcas.exe 934 1 0 233 100 335 0 845 400 0 0 1     > ./outputs/t1281

./tcas.exe 634 1 0 233 100 335 0 845 400 0 0 1     > ./outputs/t1282

./tcas.exe 634 1 0 233 100 335 0 445 400 1 0 1     > ./outputs/t1283

./tcas.exe 634 1 0 233 400 335 0 445 400 0 0 1     > ./outputs/t1284

./tcas.exe 634 1 0 233 400 235 0 445 400 0 0 1     > ./outputs/t1285

./tcas.exe 634 1 0 233 400 234 0 445 400 1 0 1     > ./outputs/t1286

./tcas.exe 634 1 0 433 400 634 0 345 500 1 0 1     > ./outputs/t1287

./tcas.exe 634 1 1 433 400 634 0 345 500 0 1 1     > ./outputs/t1288

./tcas.exe 634 1 1 433 200 634 0 345 500 0 1 1     > ./outputs/t1289

./tcas.exe 634 1 0 433 200 634 0 345 500 0 0 1     > ./outputs/t1290

./tcas.exe 634 1 0 433 200 634 0 345 500 1 0 1     > ./outputs/t1291

./tcas.exe 634 1 0 433 300 634 0 345 450 1 0 1     > ./outputs/t1292

./tcas.exe 1934 1 0 433 300 634 0 345 450 1 0 1     > ./outputs/t1293

./tcas.exe 634 1 0 633 200 535 2 565 795 1 0 1     > ./outputs/t1294

./tcas.exe 634 1 0 633 200 535 2 265 795 1 0 1     > ./outputs/t1295

./tcas.exe 634 1 0 633 300 535 2 265 795 1 0 1     > ./outputs/t1296

./tcas.exe 634 1 0 633 300 535 2 665 795 0 0 1     > ./outputs/t1297

./tcas.exe 634 1 1 633 300 535 2 665 795 0 1 1     > ./outputs/t1298

./tcas.exe 634 1 1 633 100 535 2 665 795 0 1 1     > ./outputs/t1299

./tcas.exe 634 1 1 633 100 535 2 665 795 0 1 0     > ./outputs/t1300

./tcas.exe 634 1 0 633 100 535 2 665 795 1 0 0     > ./outputs/t1301

./tcas.exe 634 1 0 633 500 535 2 665 795 1 0 0     > ./outputs/t1302

./tcas.exe 634 1 0 633 500 335 2 665 795 1 0 0     > ./outputs/t1303

./tcas.exe 934 1 0 433 400 234 0 445 550 1 0 1     > ./outputs/t1304

./tcas.exe 934 1 1 433 400 234 0 445 550 0 1 1     > ./outputs/t1305

./tcas.exe 934 1 1 433 400 234 0 445 550 0 1 0     > ./outputs/t1306

./tcas.exe 634 1 1 433 500 234 0 445 550 0 1 1     > ./outputs/t1307

./tcas.exe 634 1 0 433 500 234 0 445 550 1 0 1     > ./outputs/t1308

./tcas.exe 634 1 0 433 500 334 0 445 550 1 0 1     > ./outputs/t1309

./tcas.exe 634 1 0 633 200 535 3 565 795 1 0 1     > ./outputs/t1310

./tcas.exe 634 1 0 633 200 535 3 265 795 1 0 1     > ./outputs/t1311

./tcas.exe 634 1 0 633 300 535 3 265 795 1 0 1     > ./outputs/t1312

./tcas.exe 634 1 0 633 300 535 3 665 795 0 0 1     > ./outputs/t1313

./tcas.exe 634 1 1 633 300 535 3 665 795 0 1 1     > ./outputs/t1314

./tcas.exe 634 1 1 633 100 535 3 665 795 0 1 1     > ./outputs/t1315

./tcas.exe 634 1 1 633 100 535 3 665 795 0 1 0     > ./outputs/t1316

./tcas.exe 634 1 0 633 100 535 3 665 795 1 0 0     > ./outputs/t1317

./tcas.exe 634 1 0 633 500 535 3 665 795 1 0 0     > ./outputs/t1318

./tcas.exe 634 1 0 633 500 335 3 665 795 1 0 0     > ./outputs/t1319

./tcas.exe 634 1 0 433 500 334 0 445 350 1 0 1     > ./outputs/t1320

./tcas.exe 634 1 1 433 500 334 0 445 350 0 1 1     > ./outputs/t1321

./tcas.exe 634 1 1 433 500 334 0 445 350 0 1 0     > ./outputs/t1322

./tcas.exe 634 1 0 433 300 433 0 445 350 1 0 1     > ./outputs/t1323

./tcas.exe 934 1 0 433 400 433 0 445 350 1 0 0     > ./outputs/t1324

./tcas.exe 934 1 0 433 400 433 1 445 350 1 0 0     > ./outputs/t1325

./tcas.exe 934 1 0 433 400 433 2 445 350 1 0 0     > ./outputs/t1326

./tcas.exe 934 1 0 433 400 433 3 445 350 1 0 0     > ./outputs/t1327

./tcas.exe 934 1 0 433 400 433 3 445 350 1 0 1     > ./outputs/t1328

./tcas.exe 934 1 1 433 400 433 3 445 350 0 1 1     > ./outputs/t1329

./tcas.exe 934 1 1 433 500 433 3 445 350 0 1 1     > ./outputs/t1330

./tcas.exe 734 1 1 433 100 433 3 445 350 0 1 1     > ./outputs/t1331

./tcas.exe 634 1 0 633 200 535 1 565 795 1 0 1     > ./outputs/t1332

./tcas.exe 634 1 0 633 200 535 1 265 795 1 0 1     > ./outputs/t1333

./tcas.exe 634 1 0 633 300 535 1 265 795 1 0 1     > ./outputs/t1334

./tcas.exe 634 1 0 633 300 535 1 665 795 0 0 1     > ./outputs/t1335

./tcas.exe 634 1 1 633 300 535 1 665 795 0 1 1     > ./outputs/t1336

./tcas.exe 634 1 1 633 100 535 1 665 795 0 1 1     > ./outputs/t1337

./tcas.exe 634 1 1 633 100 535 1 665 795 0 1 0     > ./outputs/t1338

./tcas.exe 634 1 0 633 100 535 1 665 795 1 0 0     > ./outputs/t1339

./tcas.exe 634 1 0 633 500 535 1 665 795 1 0 0     > ./outputs/t1340

./tcas.exe 634 1 0 633 500 335 1 665 795 1 0 0     > ./outputs/t1341

./tcas.exe 934 1 0 433 400 234 0 445 550 1 0 0     > ./outputs/t1342

./tcas.exe 934 1 0 433 200 234 0 445 550 1 0 0     > ./outputs/t1343

./tcas.exe 934 1 0 433 200 234 0 445 550 0 0 0      > ./outputs/t1344

./tcas.exe 601 1 0 502 100 602 0 500 400 1 0 0     > ./outputs/t1345

./tcas.exe 601 1 0 502 200 602 0 599 400 1 0 1     > ./outputs/t1346

./tcas.exe 601 1 0 502 200 602 0 599 400 0 0 1     > ./outputs/t1347

./tcas.exe 901 1 0 502 200 602 0 599 400 0 0 0     > ./outputs/t1348

./tcas.exe 901 1 1 502 200 602 0 599 400 0 1 0     > ./outputs/t1349

./tcas.exe 901 1 1 502 200 503 0 401 400 0 1 0     > ./outputs/t1350

./tcas.exe 901 1 1 502 200 503 0 401 400 0 1 1     > ./outputs/t1351

./tcas.exe 901 1 1 502 200 503 1 401 500 0 1 1     > ./outputs/t1352

./tcas.exe 901 1 1 502 200 503 1 401 500 0 1 0     > ./outputs/t1353

./tcas.exe 901 1 1 502 200 650 2 701 640 0 1 0     > ./outputs/t1354

./tcas.exe 901 1 1 502 200 650 2 701 640 0 1 1     > ./outputs/t1355

./tcas.exe 901 1 1 502 200 650 3 801 740 0 1 1     > ./outputs/t1356

./tcas.exe 901 1 1 502 200 650 3 801 740 0 1 0     > ./outputs/t1357

./tcas.exe 901 1 0 502 200 503 1 401 500 0 0 1     > ./outputs/t1358

./tcas.exe 901 1 0 502 200 503 1 401 500 0 0 0     > ./outputs/t1359

./tcas.exe 901 1 0 502 200 650 2 701 640 0 0 0     > ./outputs/t1360

./tcas.exe 901 1 0 502 200 650 2 701 640 0 0 1     > ./outputs/t1361

./tcas.exe 901 1 0 502 200 650 3 801 740 0 0 1     > ./outputs/t1362

./tcas.exe 901 1 0 502 200 650 3 801 740 0 0 0     > ./outputs/t1363

./tcas.exe 599 0 0 400 100 300 0 800 400 0 0 0     > ./outputs/t1364

./tcas.exe 601 0 0 400 100 300 0 800 400 0 0 0     > ./outputs/t1365

./tcas.exe 599 1 0 400 601 300 0 800 400 0 0 0     > ./outputs/t1366

./tcas.exe 602 1 0 400 601 300 0 800 400 0 0 0     > ./outputs/t1367

./tcas.exe 602 1 0 400 601 300 0 800 400 0 1 0     > ./outputs/t1368

./tcas.exe 602 1 0 400 601 300 0 800 400 1 1 0     > ./outputs/t1369

./tcas.exe 602 1 0 400 601 300 0 800 400 1 1 1     > ./outputs/t1370

./tcas.exe 602 1 1 400 601 300 0 800 400 1 1 1     > ./outputs/t1371

./tcas.exe 602 1 1 400 601 300 3 800 400 1 1 1     > ./outputs/t1372

./tcas.exe 602 1 1 400 601 300 3 800 400 1 0 1     > ./outputs/t1373

./tcas.exe 602 1 1 400 601 300 3 800 400 0 0 1     > ./outputs/t1374

./tcas.exe 602 0 1 400 601 300 3 800 400 0 0 1     > ./outputs/t1375

./tcas.exe 602 0 1 400 601 300 3 800 400 1 0 1     > ./outputs/t1376

./tcas.exe 602 0 1 400 601 300 3 800 400 1 1 1     > ./outputs/t1377

./tcas.exe 602 0 1 400 601 300 3 800 400 1 1 0     > ./outputs/t1378

./tcas.exe 601 1 0 502 100 602 0 300 400 1 0 0     > ./outputs/t1379

./tcas.exe 601 1 0 502 200 602 0 299 400 1 0 1     > ./outputs/t1380

./tcas.exe 601 1 0 502 200 602 0 299 400 0 0 1     > ./outputs/t1381

./tcas.exe 901 1 0 502 200 602 0 299 400 0 0 0     > ./outputs/t1382

./tcas.exe 901 1 1 502 200 602 0 299 400 0 1 0     > ./outputs/t1383

./tcas.exe 901 1 1 502 200 503 0 301 400 0 1 0     > ./outputs/t1384

./tcas.exe 901 1 1 502 200 503 0 301 400 0 1 1     > ./outputs/t1385

./tcas.exe 901 1 1 502 200 503 1 201 500 0 1 1     > ./outputs/t1386

./tcas.exe 901 1 1 502 200 503 1 201 500 0 1 0     > ./outputs/t1387

./tcas.exe 901 1 1 502 200 650 2 501 640 0 1 0     > ./outputs/t1388

./tcas.exe 901 1 1 502 200 650 2 301 640 0 1 1     > ./outputs/t1389

./tcas.exe 901 1 1 502 200 650 3 401 740 0 1 1     > ./outputs/t1390

./tcas.exe 901 1 1 502 200 650 3 201 740 0 1 0     > ./outputs/t1391

./tcas.exe 901 1 0 502 200 503 1 101 500 0 0 1     > ./outputs/t1392

./tcas.exe 901 1 0 502 200 503 1 401 500 0 0 0     > ./outputs/t1393

./tcas.exe 901 1 0 502 200 650 2 301 640 0 0 0     > ./outputs/t1394

./tcas.exe 901 1 0 502 200 650 2 201 640 0 0 1     > ./outputs/t1395

./tcas.exe 901 1 0 502 200 650 3 401 740 0 0 1     > ./outputs/t1396

./tcas.exe 901 1 0 502 200 650 3 601 740 0 0 0     > ./outputs/t1397

./tcas.exe 601 1 0 502 100 402 0 500 400 1 0 0     > ./outputs/t1398

./tcas.exe 601 1 0 502 200 402 0 599 400 1 0 1     > ./outputs/t1399

./tcas.exe 601 1 0 502 200 502 0 599 400 0 0 1     > ./outputs/t1400

./tcas.exe 901 1 0 502 200 402 0 599 400 0 0 0     > ./outputs/t1401

./tcas.exe 901 1 1 502 200 302 0 599 400 0 1 0     > ./outputs/t1402

./tcas.exe 901 1 1 502 200 403 0 401 400 0 1 0     > ./outputs/t1403

./tcas.exe 901 1 1 502 200 403 0 401 400 0 1 1     > ./outputs/t1404

./tcas.exe 901 1 1 502 200 303 1 401 500 0 1 1     > ./outputs/t1405

./tcas.exe 901 1 1 502 200 203 1 401 500 0 1 0     > ./outputs/t1406

./tcas.exe 901 1 1 502 200 450 2 701 640 0 1 0     > ./outputs/t1407

./tcas.exe 901 1 1 502 200 450 2 701 640 0 1 1     > ./outputs/t1408

./tcas.exe 901 1 1 502 200 450 3 801 740 0 1 1     > ./outputs/t1409

./tcas.exe 901 1 1 502 200 350 3 801 740 0 1 0     > ./outputs/t1410

./tcas.exe 901 1 0 502 200 403 1 401 500 0 0 1     > ./outputs/t1411

./tcas.exe 901 1 0 502 200 303 1 401 500 0 0 0     > ./outputs/t1412

./tcas.exe 901 1 0 502 200 450 2 701 640 0 0 0     > ./outputs/t1413

./tcas.exe 901 1 0 502 200 350 2 701 640 0 0 1     > ./outputs/t1414

./tcas.exe 901 1 0 502 200 450 3 801 740 0 0 1     > ./outputs/t1415

./tcas.exe 901 1 0 502 200 350 3 801 740 0 0 0     > ./outputs/t1416

./tcas.exe 675 1 0 300 599 424 0 500 400 1 0 1     > ./outputs/t1417

./tcas.exe 675 1 0 300 599 424 0 400 400 0 0 1     > ./outputs/t1418

./tcas.exe 675 1 0 300 599 424 1 500 500 0 0 1     > ./outputs/t1419

./tcas.exe 675 1 1 300 0 424 1 500 500 0 1 1     > ./outputs/t1420

./tcas.exe 675 1 1 300 0 424 1 600 500 0 1 1      > ./outputs/t1421

./tcas.exe 675 1 1 300 0 424 1 600 500 0 1 0     > ./outputs/t1422

./tcas.exe 675 1 0 300 599 424 2 700 640  1 0 1     > ./outputs/t1423

./tcas.exe 675 1 0 300 599 424 2 800 640 0 0 1     > ./outputs/t1424

./tcas.exe 675 1 0 300 599 424 3 900 740 0 0 1     > ./outputs/t1425

./tcas.exe 675 1 1 300 0 424 3 900 740 0 1 1     > ./outputs/t1426

./tcas.exe 675 1 1 300 0 424 3 900 740 0 1 1      > ./outputs/t1427

./tcas.exe 675 1 1 300 0 424 3 900 740 0 1 0     > ./outputs/t1428

./tcas.exe 675 0 0 300 0 424 5 600 500 1 1 1     > ./outputs/t1429

./tcas.exe 675 1 0 300 0 424 1 600 500 0 1 0     > ./outputs/t1430

./tcas.exe 675 1 0 300 0 424 5 600 500 0 1 0     > ./outputs/t1431

./tcas.exe 675 1 0 300 0 424 5 600 500 1 1 0     > ./outputs/t1432

./tcas.exe 675 1 0 300 0 424 5 600 500 1 1 1     > ./outputs/t1433

./tcas.exe 675 0 0 300 0 424 5 600 500 1 1 1     > ./outputs/t1434

./tcas.exe 65 0 0 300 0 424 5 600 500 1 1 1     > ./outputs/t1435

./tcas.exe 65 0 1 300 0 424 5 600 500 1 1 1      > ./outputs/t1436

./tcas.exe 65 0 1 300 0 424 5 600 500 0 0 0     > ./outputs/t1437

./tcas.exe 65 0 1 300 700 424 5 600 500 0 0 0     > ./outputs/t1438

./tcas.exe 65 0 1 300 700 424 5 600 500 1 1 1     > ./outputs/t1439

./tcas.exe 765 1 0 300 400 424 5 400 500 1 0 1     > ./outputs/t1440

./tcas.exe 765 1 0 300 400 424 5 400 500 0 0 1     > ./outputs/t1441

./tcas.exe 765 1 0 300 400 424 5 400 500 0 0 0     > ./outputs/t1442

./tcas.exe 765 1 0 300 400 424 2 400 500 0 0 0     > ./outputs/t1443

./tcas.exe 765 1 0 300 400 424 3 400 500 0 0 0     > ./outputs/t1444

./tcas.exe 765 1 0 300 400 424 4 400 500 0 1 0     > ./outputs/t1445

./tcas.exe 765 1 0 300 400 424 4 400 500 0 1 1     > ./outputs/t1446

./tcas.exe 765 1 0 300 400 424 4 400 500 1 1 1     > ./outputs/t1447

./tcas.exe 765 1 0 300 500 424 3 400 500 1 1 1     > ./outputs/t1448

./tcas.exe 765 1 0 300 600 424 3 400 500 1 1 1     > ./outputs/t1449

./tcas.exe 718 1 0 717 34 1153 0 229 126 1 0 0     > ./outputs/t1450

./tcas.exe 718 1 0 717 34 1153 0 229 126 0 0 0     > ./outputs/t1451

./tcas.exe 718 1 1 717 34 1153 0 229 126 0 1 0     > ./outputs/t1452

./tcas.exe 718 1 1 717 34 1153 1 229 126 0 1 0     > ./outputs/t1453

./tcas.exe 718 1 1 717 34 1153 2 229 126 0 1 0     > ./outputs/t1454

./tcas.exe 718 1 1 717 34 1153 3 229 126 0 1 0     > ./outputs/t1455

./tcas.exe 718 1 1 717 34 1153 1 229 226 0 1 0     > ./outputs/t1456

./tcas.exe 718 1 0 717 34 1153 1 429 326 0 0 0     > ./outputs/t1457

./tcas.exe 718 1 0 717 34 1153 2 429 326 0 0 0     > ./outputs/t1458

./tcas.exe 601 1 0 717 534 1153 2 429 326 0 0 0     > ./outputs/t1459

./tcas.exe 765 1 0 500 400 424 5 400 500 1 0 1     > ./outputs/t1460

./tcas.exe 765 1 0 500 400 424 5 400 500 0 0 1     > ./outputs/t1461

./tcas.exe 765 1 0 500 400 424 5 400 500 0 0 0     > ./outputs/t1462

./tcas.exe 765 1 0 500 400 424 2 400 500 0 0 0     > ./outputs/t1463

./tcas.exe 765 1 0 500 400 424 3 400 500 0 0 0     > ./outputs/t1464

./tcas.exe 675 1 0 300 0 424 1 600 500 0 1 0     > ./outputs/t1465

./tcas.exe 675 1 0 300 0 424 3 600 500 0 1 0     > ./outputs/t1466

./tcas.exe 675 1 0 300 599 424 2 600 500 1 1 0     > ./outputs/t1467

./tcas.exe 675 1 0 300 0 424 0 600 500 1 1 1     > ./outputs/t1468

./tcas.exe 675 0 0 300 0 424 1 600 500 1 1 1     > ./outputs/t1469

./tcas.exe 65 0 0 300 0 424 2 600 500 1 1 1     > ./outputs/t1470

./tcas.exe 65 0 1 300 0 424 3 600 500 1 1 1      > ./outputs/t1471

./tcas.exe 5 0 1 300 0 424 2 600 500 0 0 0     > ./outputs/t1472

./tcas.exe 65 0 1 300 700 424 1 600 500 0 0 0     > ./outputs/t1473

./tcas.exe 65 0 1 300 700 424 2 600 500 1 1 1     > ./outputs/t1474

./tcas.exe 765 1 0 300 300 424 0 400 500 1 0 1     > ./outputs/t1475

./tcas.exe 765 1 0 300 100 424 2 400 500 0 0 1     > ./outputs/t1476

./tcas.exe 765 1 0 300 0 424 1 400 500 0 0 0     > ./outputs/t1477

./tcas.exe 765 1 0 300 40 424 2 400 500 0 0 0     > ./outputs/t1478

./tcas.exe 765 1 0 300 400 424 3 400 500 1 0 0     > ./outputs/t1479

./tcas.exe 765 1 0 500 400 424 3 600 800 1 0 1     > ./outputs/t1480

./tcas.exe 765 1 0 500 400 424 3 600 800 1 0 0     > ./outputs/t1481

./tcas.exe 765 1 0 500 400 424 3 600 800 0 0 0     > ./outputs/t1482

./tcas.exe 765 1 0 500 400 424 3 600 800 0 0 1     > ./outputs/t1483

./tcas.exe 665 1 0 500 500 624 3 600 800 0 0 1     > ./outputs/t1484

./tcas.exe 665 1 0 600 500 524 3 600 800 0 0 1     > ./outputs/t1485

./tcas.exe 765 1 0 500 400 424 5 600 500 1 0 1     > ./outputs/t1486

./tcas.exe 765 1 0 500 400 424 5 600 500 0 0 1     > ./outputs/t1487

./tcas.exe 765 1 0 500 400 424 5 600 500 0 0 0     > ./outputs/t1488

./tcas.exe 765 1 0 500 400 424 2 600 500 0 0 0     > ./outputs/t1489

./tcas.exe 765 1 0 500 400 424 3 600 500 0 0 0     > ./outputs/t1490

./tcas.exe 700 1 1 400 200 500 1 100 200 1 0 0     > ./outputs/t1491

./tcas.exe 700 1 1 400 200 600 1 100 500 1 0 0     > ./outputs/t1492

./tcas.exe 700 1 1 400 300 600 3 100 500 1 0 0     > ./outputs/t1493

./tcas.exe 700 1 0 400 300 600 3 100 500 1 0 1     > ./outputs/t1494

./tcas.exe 700 1 0 400 300 600 3 100 500 0 0 1     > ./outputs/t1495

./tcas.exe 700 1 0 400 300 600 3 100 500 0 0 0      > ./outputs/t1496

./tcas.exe 700 1 0 400 400 600 2 100 500 0 0 0     > ./outputs/t1497

./tcas.exe 700 1 0 400 400 600 2 100 500 0 1 0     > ./outputs/t1498

./tcas.exe 700 1 0 400 400 600 2 100 500 0 1 1     > ./outputs/t1499

./tcas.exe 700 1 0 400 200 600 0 100 500 0 1 1     > ./outputs/t1500

./tcas.exe 700 1 1 400 200 600 0 100 500 0 1 1      > ./outputs/t1501

./tcas.exe 700 1 1 400 300 600 2 100 500 0 1 1      > ./outputs/t1502

./tcas.exe 700 1 1 400 300 600 2 100 300 0 1 1      > ./outputs/t1503

./tcas.exe 700 1 1 400 300 600 2 100 300 1 1 1     > ./outputs/t1504

./tcas.exe 800 1 1 400 300 600 3 100 300 1 1 1     > ./outputs/t1505

./tcas.exe 700 1 0 400 300 600 3 100 800 0 0 1     > ./outputs/t1506

./tcas.exe 700 1 0 400 200 600 0 100 300 0 1 1     > ./outputs/t1507

./tcas.exe 700 1 1 400 200 600 1 100 500 1 0 0     > ./outputs/t1508

./tcas.exe 700 1 0 400 400 600 2 100 500 0 0 0     > ./outputs/t1509

./tcas.exe 700 1 0 400 400 600 2 100 600 0 0 0     > ./outputs/t1510

./tcas.exe 700 1 1 400 300 600 2 100 500 0 1 1     > ./outputs/t1511

./tcas.exe 610 1 0 400 400 200 2 300 400 1 1 1      > ./outputs/t1512

./tcas.exe 610 1 0 400 400 200 3 300 400 1 1 1     > ./outputs/t1513

./tcas.exe 610 1 0 400 400 200 3 300 400 1 1 0     > ./outputs/t1514

./tcas.exe 610 1 0 400 400 200 3 300 400 0 1 0     > ./outputs/t1515

./tcas.exe 610 1 0 400 0 200 0 300 400 0 1 0     > ./outputs/t1516

./tcas.exe 610 1 0 400 0 200 1 300 400 0 1 0     > ./outputs/t1517

./tcas.exe 610 1 0 400 0 200 1 300 400 1 1 1     > ./outputs/t1518

./tcas.exe 610 1 0 400 0 200 1 300 800 1 1 1     > ./outputs/t1519

./tcas.exe 665 1 0 500 500 624 2 600 800 0 0 1     > ./outputs/t1520

./tcas.exe 665 1 0 500 500 624 2 600 800 1 0 1     > ./outputs/t1521

./tcas.exe 665 1 0 500 500 624 3 600 800 1 0 1     > ./outputs/t1522

./tcas.exe 665 1 0 500 500 624 3 600 600 1 0 0     > ./outputs/t1523

./tcas.exe 665 1 0 500 500 624 2 600 600 1 0 0     > ./outputs/t1524

./tcas.exe 665 1 1 500 500 624 2 600 600 0 1 0     > ./outputs/t1525

./tcas.exe 665 1 1 500 500 624 3 600 600 0 1 0     > ./outputs/t1526

./tcas.exe 665 1 1 500 200 624 3 600 600 0 1 0     > ./outputs/t1527

./tcas.exe 665 1 1 300 200 624 3 600 600 0 1 0     > ./outputs/t1528

./tcas.exe 765 1 0 500 400 424 2 600 500 0 0 0     > ./outputs/t1529

./tcas.exe 765 1 0 500 400 424 2 600 500 1 0 1     > ./outputs/t1530

./tcas.exe 765 1 0 500 400 424 3 600 500 1 0 1     > ./outputs/t1531

./tcas.exe 765 1 1 500 400 424 3 600 500 0 1 1     > ./outputs/t1532

./tcas.exe 765 1 1 500 400 424 0 600 500 0 1 1     > ./outputs/t1533

./tcas.exe 765 1 1 600 400 524 0 600 500 0 1 1     > ./outputs/t1534

./tcas.exe 765 1 1 600 400 524 2 600 500 0 1 1     > ./outputs/t1535

./tcas.exe 901 1 0 502 200 450 3 801 740 1 0 1     > ./outputs/t1536

./tcas.exe 901 1 0 502 200 450 2 801 740 1 0 1     > ./outputs/t1537

./tcas.exe 901 1 1 502 200 450 1 801 740 1 0 1     > ./outputs/t1538

./tcas.exe 901 1 1 502 200 450 1 801 740 0 1 0     > ./outputs/t1539

./tcas.exe 901 1 1 502 200 450 1 801 740 0 1 1     > ./outputs/t1540

./tcas.exe 901 1 1 502 200 450 0 801 740 0 1 1     > ./outputs/t1541

./tcas.exe 675 1 0 300 0 424 1 600 500 0 1 1     > ./outputs/t1542

./tcas.exe 675 1 0 300 0 424 2 600 500 0 1 1     > ./outputs/t1543

./tcas.exe 675 1 1 300 0 424 2 600 500 0 1 1     > ./outputs/t1544

./tcas.exe 675 1 1 300 0 424 3 600 500 0 1 1     > ./outputs/t1545

./tcas.exe 675 1 1 300 0 424 0 600 500 0 1 1     > ./outputs/t1546

./tcas.exe 675 1 1 300 0 424 0 600 300 0 1 1     > ./outputs/t1547

./tcas.exe 675 1 1 300 0 424 0 600 300 0 1 0     > ./outputs/t1548

./tcas.exe 611 1 1 1142 511 4704 1 740 500 0 1 1     > ./outputs/t1549

./tcas.exe 611 1 1 1142 511 4704 1 740 500 0 1 0     > ./outputs/t1550

./tcas.exe 611 1 0 1142 511 4704 1 740 500 1 1 0     > ./outputs/t1551

./tcas.exe 611 1 0 1142 511 4704 2 740 500 1 1 0     > ./outputs/t1552

./tcas.exe 611 1 0 1142 511 4704 3 740 500 1 1 0     > ./outputs/t1553

./tcas.exe 611 1 0 1142 511 4704 0 740 500 1 1 0     > ./outputs/t1554

./tcas.exe 611 1 0 1142 511 4704 0 740 500 0 1 0     > ./outputs/t1555

./tcas.exe 611 1 0 1142 511 4704 0 740 500 0 1 1     > ./outputs/t1556

./tcas.exe 611 1 0 1142 511 4704 2 740 500 0 1 1     > ./outputs/t1557

./tcas.exe 718 1 0 717 34 1153 2 429 326 0 0 1     > ./outputs/t1558

./tcas.exe 718 1 0 717 34 1153 3 429 326 0 0 1     > ./outputs/t1559

./tcas.exe 634 1 0 633 500 335 1 665 795 1 0 1     > ./outputs/t1560

./tcas.exe 634 1 0 633 500 335 2 665 795 1 0 1     > ./outputs/t1561

./tcas.exe 634 1 1 633 500 335 2 665 795 1 0 1     > ./outputs/t1562

./tcas.exe 634 1 1 633 500 335 2 665 795 0 1 1     > ./outputs/t1563

./tcas.exe 634 1 1 633 500 335 3 665 795 0 1 1     > ./outputs/t1564

./tcas.exe 634 1 1 633 500 335 0 665 795 0 1 1     > ./outputs/t1565

./tcas.exe 634 1 1 733 500 335 0 665 795 0 1 1     > ./outputs/t1566

./tcas.exe 500 0 1 300 0 424 2 600 500 0 0 0     > ./outputs/t1567

./tcas.exe 500 0 1 300 0 424 2 600 500 1 1 1     > ./outputs/t1568

./tcas.exe 500 0 0 300 0 424 2 600 500 1 1 1     > ./outputs/t1569

./tcas.exe 400 0 1 300 80 424 2 600 500 0 0 0     > ./outputs/t1570

./tcas.exe 700 0 1 300 80 424 2 600 500 0 0 0     > ./outputs/t1571

./tcas.exe 700 0 1 300 0 424 2 600 500 0 0 0     > ./outputs/t1572

./tcas.exe 700 0 1 300 0 424 2 600 500 1 1 1     > ./outputs/t1573

./tcas.exe 700 0 0 300 0 424 2 600 500 1 1 1     > ./outputs/t1574

./tcas.exe 1078 1 0 581 567 655 3 637 906 1 1 0     > ./outputs/t1575

./tcas.exe 1078 1 1 581 567 655 3 637 906 0 1 0     > ./outputs/t1576

./tcas.exe 1078 1 1 581 567 655 3 637 906 0 1 1     > ./outputs/t1577

./tcas.exe 1078 1 1 581 567 655 0 637 906 0 1 1     > ./outputs/t1578

./tcas.exe 1     > ./outputs/t1579

./tcas.exe 1 1 581 567 655 0 637 906 0 1 1     > ./outputs/t1580

./tcas.exe 1 581 567 655 0 637 906 0 1 1     > ./outputs/t1581

./tcas.exe 581 567 655 0 637 906 0 1 1     > ./outputs/t1582

./tcas.exe 567 655 0 637 906 0 1 1     > ./outputs/t1583

./tcas.exe 655 0 637 906 0 1 1     > ./outputs/t1584

./tcas.exe 0 637 906 0 1 1     > ./outputs/t1585

./tcas.exe 637 906 0 1 1     > ./outputs/t1586

./tcas.exe 906 0 1 1     > ./outputs/t1587

./tcas.exe 0 1 1     > ./outputs/t1588

./tcas.exe 1 1     > ./outputs/t1589

./tcas.exe 1078 1 1 567 655 0 637 906 0 1 1     > ./outputs/t1590

./tcas.exe 1078 1 1 655 0 637 906 0 1 1     > ./outputs/t1591

./tcas.exe 1078 1 1 0 637 906 0 1 1     > ./outputs/t1592

./tcas.exe 1078 1 1 637 906 0 1 1     > ./outputs/t1593

./tcas.exe 1078 1 1 581 655 0 637 906 0 1 1     > ./outputs/t1594

./tcas.exe 1078 1 1 581 0 637 906 0 1 1     > ./outputs/t1595

./tcas.exe 1078 1 1 581 637 906 0 1 1     > ./outputs/t1596

./tcas.exe 1078 1 1 581 906 0 1 1     > ./outputs/t1597

./tcas.exe 1078 1 1 581 906 1 1     > ./outputs/t1598

./tcas.exe 1078 1 1 581 567 655 0 906 0 1 1     > ./outputs/t1599

./tcas.exe 1078 1 1 581 567 655 0 0 1 1     > ./outputs/t1600

./tcas.exe 1078 1 1 581 567 655 0 1 1     > ./outputs/t1601

./tcas.exe 1078 1 1 581 567 655 0 1     > ./outputs/t1602

./tcas.exe 1078 1 1 581 567 0 637 0 1 1     > ./outputs/t1603

./tcas.exe 1078 1 1 567 655 0 906 0 1 1     > ./outputs/t1604

./tcas.exe 1078 1 581 655 0 906 0 1 1     > ./outputs/t1605

./tcas.exe 1078 1 1 655 0 906 0 1 1     > ./outputs/t1606

./tcas.exe 1078 1 655 0 906 0 1 1     > ./outputs/t1607

./tcas.exe 1078 1 1 637 906 1 1     > ./outputs/t1608



gcov tcas.c
gcovr -r . --html-details -o coverage_and_instrument_report.html

rm tcas.c