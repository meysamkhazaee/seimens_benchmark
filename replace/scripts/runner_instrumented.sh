ROOT=$1
# Change to the current directory
cd $PWD

# Remove the "result_instrumented" folder if it exists
if [ -d result_instrumented ]; then
    rm -rf result_instrumented
fi

# Create a new "result_instrumented" folder
mkdir result_instrumented
cp replace_instrumented.c result_instrumented/
cd result_instrumented
# Build the code without coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o replace_instrumented.exe replace_instrumented.c -w -lm
mkdir outputs

./replace_instrumented.exe '-?' 'a&'  < $ROOT/inputs/temp-test/1.inp.1.1 > ./outputs/t1

./replace_instrumented.exe ' ' '@%@&'  < $ROOT/inputs/temp-test/777.inp.334.1 > ./outputs/t2

./replace_instrumented.exe ' ' 'NEW'  < $ROOT/inputs/temp-test/550.inp.238.1 > ./outputs/t3

./replace_instrumented.exe ' ' 'NEW'  < $ROOT/inputs/temp-test/551.inp.238.3 > ./outputs/t4

./replace_instrumented.exe ' ' 'rY NCDt+32Ilu>dr~s^1Q{0*{RLN>Muz'  < $ROOT/inputs/input/ruin.1224 > ./outputs/t5

./replace_instrumented.exe ' '  < $ROOT/inputs/input/ruin.1160 > ./outputs/t6

./replace_instrumented.exe ' *' '@%&a'  < $ROOT/inputs/temp-test/2298.inp.975.1 > ./outputs/t7

./replace_instrumented.exe ' *' 'a&'  < $ROOT/inputs/temp-test/1839.inp.782.1 > ./outputs/t8

./replace_instrumented.exe ' *' 'a&'  < $ROOT/inputs/temp-test/1840.inp.782.2 > ./outputs/t9

./replace_instrumented.exe ' *' 'a&'  < $ROOT/inputs/temp-test/1841.inp.782.3 > ./outputs/t10

./replace_instrumented.exe ' *-' '@t'  < $ROOT/inputs/temp-test/1828.inp.778.1 > ./outputs/t11

./replace_instrumented.exe ' *-' '@t'  < $ROOT/inputs/temp-test/1829.inp.778.2 > ./outputs/t12

./replace_instrumented.exe ' *-' '@t'  < $ROOT/inputs/temp-test/1830.inp.778.3 > ./outputs/t13

./replace_instrumented.exe ' *?' ''  < $ROOT/inputs/temp-test/1964.inp.834.1 > ./outputs/t14

./replace_instrumented.exe ' *?' ''  < $ROOT/inputs/temp-test/1965.inp.834.2 > ./outputs/t15

./replace_instrumented.exe ' *[0-9]-? [^a-c]@[*-^a-c]' ''  < $ROOT/inputs/temp-test/758.inp.325.1 > ./outputs/t16

./replace_instrumented.exe ' *[0-9]-? [^a-c]@[*-^a-c]' ''  < $ROOT/inputs/temp-test/759.inp.325.3 > ./outputs/t17

./replace_instrumented.exe ' *[0-9]@[[9-B]??[0-9]-[^-[^0-9]-[a-c][^a-c]' 'NEW'  < $ROOT/inputs/temp-test/1133.inp.487.1 > ./outputs/t18

./replace_instrumented.exe ' *[0-9]@[[9-B]??[0-9]-[^-[^0-9]-[a-c][^a-c]' 'NEW'  < $ROOT/inputs/temp-test/1134.inp.487.2 > ./outputs/t19

./replace_instrumented.exe ' *[9-B]' 'a&'  < $ROOT/inputs/temp-test/1274.inp.547.1 > ./outputs/t20

./replace_instrumented.exe ' *[9-B]' 'a&'  < $ROOT/inputs/temp-test/1275.inp.547.3 > ./outputs/t21

./replace_instrumented.exe ' *^-]-' '@n'  < $ROOT/inputs/temp-test/956.inp.412.1 > ./outputs/t22

./replace_instrumented.exe ' *^-]-' '@n'  < $ROOT/inputs/temp-test/957.inp.412.2 > ./outputs/t23

./replace_instrumented.exe ' *a-c]' '&a@%'  < $ROOT/inputs/temp-test/74.inp.32.1 > ./outputs/t24

./replace_instrumented.exe ' *a-c]' '&a@%'  < $ROOT/inputs/temp-test/75.inp.32.3 > ./outputs/t25

./replace_instrumented.exe ' -[][^9-B][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t26

./replace_instrumented.exe ' -[^9-B]*$' '@%&a'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t27

./replace_instrumented.exe ' -[^9-B]*' '@%&a'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t28

./replace_instrumented.exe ' -[^9-B]?*'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t29

./replace_instrumented.exe ' -[^9-B][][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t30

./replace_instrumented.exe ' -[^9-B][^][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t31

./replace_instrumented.exe ' -[^9-B][a-c]*$' '@%&a'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t32

./replace_instrumented.exe ' -[^9-B][a-c]*' '@%&a'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t33

./replace_instrumented.exe ' -[^9-B][a-c]?*' '@%&a'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t34

./replace_instrumented.exe ' -[^9-B][a-c][9-B]'   < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t35

./replace_instrumented.exe ' -[^9-B][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t36

./replace_instrumented.exe ' -[^9-B][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t37

./replace_instrumented.exe ' -[^9-B][a-c][9-B]'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t38

./replace_instrumented.exe ' -[^][^9-B][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t39

./replace_instrumented.exe ' -]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1638.inp.698.1 > ./outputs/t40

./replace_instrumented.exe ' -c*[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/477.inp.209.1 > ./outputs/t41

./replace_instrumented.exe ' -c*[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/478.inp.209.2 > ./outputs/t42

./replace_instrumented.exe ' -c*[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/479.inp.209.3 > ./outputs/t43

./replace_instrumented.exe ' ?' '&'  < $ROOT/inputs/temp-test/54.inp.23.1 > ./outputs/t44

./replace_instrumented.exe ' [a-c]' '&'  < $ROOT/inputs/temp-test/634.inp.274.1 > ./outputs/t45

./replace_instrumented.exe ' [a-c]' '&'  < $ROOT/inputs/temp-test/635.inp.274.2 > ./outputs/t46

./replace_instrumented.exe ' [a-c]' '&'  < $ROOT/inputs/temp-test/636.inp.274.3 > ./outputs/t47

./replace_instrumented.exe ' [a-c]' '&@n'  < $ROOT/inputs/temp-test/634.inp.274.1 > ./outputs/t48

./replace_instrumented.exe ' [a-c]' '&@n'  < $ROOT/inputs/temp-test/635.inp.274.2 > ./outputs/t49

./replace_instrumented.exe ' [a-c]' '&@n'  < $ROOT/inputs/temp-test/636.inp.274.3 > ./outputs/t50

./replace_instrumented.exe ' [a-c]' '&@nfoo'  < $ROOT/inputs/temp-test/635.inp.274.2 > ./outputs/t51

./replace_instrumented.exe ' ^a-]' 'NEW'  < $ROOT/inputs/temp-test/2186.inp.925.1 > ./outputs/t52

./replace_instrumented.exe ' ^a-]' 'NEW'  < $ROOT/inputs/temp-test/2187.inp.925.2 > ./outputs/t53

./replace_instrumented.exe '!$' '^'  < $ROOT/inputs/input/ruin.1470 > ./outputs/t54

./replace_instrumented.exe '!' 'JeQwMtQsX"@?#Q1)jO;[#@Y^SE,&N$~<>FK'  < $ROOT/inputs/input/ruin.677 > ./outputs/t55

./replace_instrumented.exe '!' '\-'  < $ROOT/inputs/input/ruin.1946 > ./outputs/t56

./replace_instrumented.exe '!' 'f)n'\'':Ig"_@4},'  < $ROOT/inputs/input/ruin.1784 > ./outputs/t57

./replace_instrumented.exe '!2' 4  < $ROOT/inputs/moni/f7.inp > ./outputs/t58

./replace_instrumented.exe '"' '6'  < $ROOT/inputs/input/ruin.197 > ./outputs/t59

./replace_instrumented.exe '"@@' 'm'  < $ROOT/inputs/input/ruin.1890 > ./outputs/t60

./replace_instrumented.exe '##[0-9]?[a-b]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t61

./replace_instrumented.exe '#' '&'  < $ROOT/inputs/input/ruin.1044 > ./outputs/t62

./replace_instrumented.exe '#' '&G:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_J'  < $ROOT/inputs/input/ruin.1044 > ./outputs/t63

./replace_instrumented.exe '#' '_W$'  < $ROOT/inputs/input/ruin.1198 > ./outputs/t64

./replace_instrumented.exe '#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO-[^--z]-[^a--b][^0-9]@* *?-c' '@n'  < $ROOT/inputs/temp-test/902.inp.388.1 > ./outputs/t65

./replace_instrumented.exe '$ -[^9-B][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/528.inp.229.1 > ./outputs/t66

./replace_instrumented.exe '$ -[^9-B][a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t67

./replace_instrumented.exe '$$**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t68

./replace_instrumented.exe '$%**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t69

./replace_instrumented.exe '$%-[@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/216.inp.96.11 > ./outputs/t70

./replace_instrumented.exe '$%? ' 'a@nb@tc'  < $ROOT/inputs/temp-test/218.inp.97.5 > ./outputs/t71

./replace_instrumented.exe '$%?@*' 'NEW'  < $ROOT/inputs/temp-test/523.inp.226.5 > ./outputs/t72

./replace_instrumented.exe '$%?^$' '@%&a'  < $ROOT/inputs/temp-test/513.inp.223.10 > ./outputs/t73

./replace_instrumented.exe '$%@*?' '@%&a'  < $ROOT/inputs/temp-test/199.inp.89.5 > ./outputs/t74

./replace_instrumented.exe '$%[^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t75

./replace_instrumented.exe '$'   < $ROOT/inputs/moni/f7.inp > ./outputs/t76

./replace_instrumented.exe '$' '%'  < $ROOT/inputs/input/ruin.1122 > ./outputs/t77

./replace_instrumented.exe '$' ''\''Z y<j$`3-b6{hC,KW4dJZ\tWkm'  < $ROOT/inputs/input/ruin.1104 > ./outputs/t78

./replace_instrumented.exe '$' 'F]"8mW1FGw`iK4QO;MuiQ4{%mW1FGw`iK4QO;MuiQ4{%mW1FGw`iK4QO;MuiQ4{%mW1FGw`iK4QO;MuiQ4{%`#tLmW1FGw`iK4QO;MuiQ4{%mW1FGw`iK4QO;MuiQ4{%mW1FGw`iK4QO;MuiQ4{%mW1FGw`iK4QO;MuiQ4{%mW1FGw`iK4QO;MuiQ4{%R:h2`^Ndy W4p?5Yd9N%7tp~'  < $ROOT/inputs/input/ruin.154 > ./outputs/t79

./replace_instrumented.exe '$' 'K'  < $ROOT/inputs/input/ruin.1121 > ./outputs/t80

./replace_instrumented.exe '$' 'Pb'  < $ROOT/inputs/input/ruin.1111 > ./outputs/t81

./replace_instrumented.exe '$' 'X'\'',id`ucU?Bhj!aeGJ~qW=F*9LTRouw#I-quWg}}wkR8Cwfff{{JGSTC2v7(*^3wSqSn{{\Jx9r8a'  < $ROOT/inputs/input/ruin.130 > ./outputs/t82

./replace_instrumented.exe '$' 'xv'\''%;99C.L6GYG|5'\''B4JA{:,!;i0:/n+[q}2g+Q+T[#; `w&%3:]~,5M]m.'  < $ROOT/inputs/input/ruin.1118 > ./outputs/t83

./replace_instrumented.exe '$- ' '&'  < $ROOT/inputs/temp-test/524.inp.227.1 > ./outputs/t84

./replace_instrumented.exe '$-'   < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t85

./replace_instrumented.exe '$-' '&@n'   < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t86

./replace_instrumented.exe '$-*[][^0-9]' '&'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t87

./replace_instrumented.exe '$-*[^0-9]$' '&'  < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t88

./replace_instrumented.exe '$-*[^0-9]' '&'  < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t89

./replace_instrumented.exe '$-*[^0-9]' '&'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t90

./replace_instrumented.exe '$-*[^0-9]' '&@n' < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t91

./replace_instrumented.exe '$-*[^0-9]'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t92

./replace_instrumented.exe '$-*[^][^0-9]' '&'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t93

./replace_instrumented.exe '$-[@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t94

./replace_instrumented.exe '$-[@n][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t95

./replace_instrumented.exe '$-[@n][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t96

./replace_instrumented.exe '$-[][@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t97

./replace_instrumented.exe '$-[^][@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t98

./replace_instrumented.exe '$? ' 'a@nb@tc'  < $ROOT/inputs/temp-test/217.inp.97.1 > ./outputs/t99

./replace_instrumented.exe '$?-[^-z][0-9]' '&a@%'  < $ROOT/inputs/temp-test/224.inp.100.1 > ./outputs/t100

./replace_instrumented.exe '$?-[^-z][0-9]'  < $ROOT/inputs/temp-test/224.inp.100.1 > ./outputs/t101

./replace_instrumented.exe '$?@*'   < $ROOT/inputs/temp-test/522.inp.226.3 > ./outputs/t102

./replace_instrumented.exe '$?@*' '@%&a'  < $ROOT/inputs/temp-test/532.inp.231.1 > ./outputs/t103

./replace_instrumented.exe '$?@*' 'NEW'  < $ROOT/inputs/temp-test/521.inp.226.1 > ./outputs/t104

./replace_instrumented.exe '$?@*' 'NEW'  < $ROOT/inputs/temp-test/522.inp.226.3 > ./outputs/t105

./replace_instrumented.exe '$?[^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t106

./replace_instrumented.exe '$?[^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t107

./replace_instrumented.exe '$?^'   < $ROOT/inputs/temp-test/512.inp.223.3 > ./outputs/t108

./replace_instrumented.exe '$?^' '@%&a'  < $ROOT/inputs/temp-test/511.inp.223.1 > ./outputs/t109

./replace_instrumented.exe '$?^' '@%&a'  < $ROOT/inputs/temp-test/512.inp.223.3 > ./outputs/t110

./replace_instrumented.exe '$@*?' '@%&a'  < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t111

./replace_instrumented.exe '$@[*-?[a-c$' 'a@nb@tc'  < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t112

./replace_instrumented.exe '$@[*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t113

./replace_instrumented.exe '$@[*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t114

./replace_instrumented.exe '$@[*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t115

./replace_instrumented.exe '$@[*-?[a-c'  < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t116

./replace_instrumented.exe '$[^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t117

./replace_instrumented.exe '$[^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t118

./replace_instrumented.exe '$[^0-9]?-?[^a--b]' '&a@%'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t119

./replace_instrumented.exe '$[^9-B]@['   < $ROOT/inputs/temp-test/219.inp.98.1 > ./outputs/t120

./replace_instrumented.exe '$[^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/219.inp.98.1 > ./outputs/t121

./replace_instrumented.exe '$[^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/220.inp.98.2 > ./outputs/t122

./replace_instrumented.exe '$[^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/221.inp.98.3 > ./outputs/t123

./replace_instrumented.exe '$[^9-B][9-B]'   < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t124

./replace_instrumented.exe '$[^9-B][9-B]' '&@n'  < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t125

./replace_instrumented.exe '$[^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t126

./replace_instrumented.exe '$[^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t127

./replace_instrumented.exe '$[^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t128

./replace_instrumented.exe '$[^9-B][9-B]*$'   < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t129

./replace_instrumented.exe '$[^9-B][9-B][]' '@%&a'  < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t130

./replace_instrumented.exe '$[^9-B][9-B][^]' '@%&a'  < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t131

./replace_instrumented.exe '$[^a-c][9-B]'   < $ROOT/inputs/temp-test/222.inp.99.1 > ./outputs/t132

./replace_instrumented.exe '$[^a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/222.inp.99.1 > ./outputs/t133

./replace_instrumented.exe '$[^a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/223.inp.99.3 > ./outputs/t134

./replace_instrumented.exe '$[^a-c]a-]' 'NEW'  < $ROOT/inputs/temp-test/211.inp.94.1 > ./outputs/t135

./replace_instrumented.exe '$[a-c?$' 'a&'  < $ROOT/inputs/temp-test/520.inp.225.8 > ./outputs/t136

./replace_instrumented.exe '$[a-c?'   < $ROOT/inputs/temp-test/516.inp.225.1 > ./outputs/t137

./replace_instrumented.exe '$[a-c?'   < $ROOT/inputs/temp-test/519.inp.225.4 > ./outputs/t138

./replace_instrumented.exe '$[a-c?' 'a&'  < $ROOT/inputs/temp-test/516.inp.225.1 > ./outputs/t139

./replace_instrumented.exe '$[a-c?' 'a&'  < $ROOT/inputs/temp-test/517.inp.225.2 > ./outputs/t140

./replace_instrumented.exe '$[a-c?' 'a&'  < $ROOT/inputs/temp-test/518.inp.225.3 > ./outputs/t141

./replace_instrumented.exe '$[a-c?' 'a&'  < $ROOT/inputs/temp-test/519.inp.225.4 > ./outputs/t142

./replace_instrumented.exe '$^-?[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/510.inp.222.4 > ./outputs/t143

./replace_instrumented.exe '$a' ''  < $ROOT/inputs/moni/f7.inp > ./outputs/t144

./replace_instrumented.exe '$c*[^a-'   < $ROOT/inputs/temp-test/514.inp.224.1 > ./outputs/t145

./replace_instrumented.exe '$c*[^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/514.inp.224.1 > ./outputs/t146

./replace_instrumented.exe '$c*[^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/515.inp.224.3 > ./outputs/t147

./replace_instrumented.exe '$c[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t148

./replace_instrumented.exe '$c[^0-9]'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t149

./replace_instrumented.exe '% ' 'NEW'  < $ROOT/inputs/temp-test/552.inp.238.7 > ./outputs/t150

./replace_instrumented.exe '% *' 'a&'  < $ROOT/inputs/temp-test/1842.inp.782.7 > ./outputs/t151

./replace_instrumented.exe '% *^-]-$' '@n'  < $ROOT/inputs/temp-test/958.inp.412.11 > ./outputs/t152

./replace_instrumented.exe '%*$' ':m9#`%w*An#HIw)ZLBs!y-|, 5 M_m9u_Lao'  < $ROOT/inputs/input/ruin.1258 > ./outputs/t153

./replace_instrumented.exe '%*$' 'D9RnxwW@{i=z85OwG0--kJo<'  < $ROOT/inputs/input/ruin.1554 > ./outputs/t154

./replace_instrumented.exe '%*$' 'U'  < $ROOT/inputs/input/ruin.1536 > ./outputs/t155

./replace_instrumented.exe '%*$' 'i'  < $ROOT/inputs/input/ruin.1625 > ./outputs/t156

./replace_instrumented.exe '%*$' 'nQ;+jYa.#8vT9@X-GD(e4]YKBjzXF(V+MTO]u;aGY^jo'\''q:'  < $ROOT/inputs/input/ruin.1390 > ./outputs/t157

./replace_instrumented.exe '%*$' 66  < $ROOT/inputs/moni/f7.inp > ./outputs/t158

./replace_instrumented.exe '%*' ' <+%@x-,=f$.L5#T(AD4Q@iix)H`Ce K,+UO#:wj,q7KJO@]d~.N,<'\''Hi73GN$Gl(HX1C'  < $ROOT/inputs/input/ruin.328 > ./outputs/t159

./replace_instrumented.exe '%*' '0'  < $ROOT/inputs/input/ruin.1821 > ./outputs/t160

./replace_instrumented.exe '%*' 'G'  < $ROOT/inputs/input/ruin.1088 > ./outputs/t161

./replace_instrumented.exe '%*' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t162

./replace_instrumented.exe '%*' 'lc_lv50iK!'\''g`jS`LIK\!&3W>wi_0pbHri'  < $ROOT/inputs/input/ruin.1845 > ./outputs/t163

./replace_instrumented.exe '%*' 'q'  < $ROOT/inputs/input/ruin.1973 > ./outputs/t164

./replace_instrumented.exe '%*' 's'  < $ROOT/inputs/input/ruin.1058 > ./outputs/t165

./replace_instrumented.exe '%*' 's7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp'  < $ROOT/inputs/input/ruin.1058 > ./outputs/t166

./replace_instrumented.exe '%*' 't'  < $ROOT/inputs/input/ruin.526 > ./outputs/t167

./replace_instrumented.exe '%*' 'yh'  < $ROOT/inputs/input/ruin.1653 > ./outputs/t168

./replace_instrumented.exe '%*' '|/2:-r3lyg[Iq$dLi?"/#U'  < $ROOT/inputs/input/ruin.308 > ./outputs/t169

./replace_instrumented.exe '%*?$' 'vLd?Rz=SEH)PEv2'  < $ROOT/inputs/input/ruin.1265 > ./outputs/t170

./replace_instrumented.exe '%*?$'  < $ROOT/inputs/input/ruin.1265 > ./outputs/t171

./replace_instrumented.exe '%*@@$' '^^+p&y=3[ZYIgTBk:JTg x?51<dbL'  < $ROOT/inputs/input/ruin.1331 > ./outputs/t172

./replace_instrumented.exe '%*@@p&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIgTBk$' '^^+p&y=3[ZYIgTBk:JTg x?51<dbL'  < $ROOT/inputs/input/ruin.1331 > ./outputs/t173

./replace_instrumented.exe '%*B]ddB]@t]*[@t@][9-B]B]ddB]@t]*[@t@][9-B]B]ddB]@t]*[@t@][9-B]B]ddB]@t]*[@t@][9-B]B]ddB]@t]*[@t@][9-B]B]ddB]@t]*[@t@][9-B]B]ddB]@t]*[@t@][9-B]' ' <+%@x-,=f$.L5#T(AD4Q@iix)H`Ce K,+UO#:wj,q7KJO@]d~.N,<'\''Hi73GN$Gl(HX1C'  < $ROOT/inputs/input/ruin.328 > ./outputs/t174

./replace_instrumented.exe '%*[O]D?'   < $ROOT/inputs/input/ruin.1161 > ./outputs/t175

./replace_instrumented.exe '%*[O]D?' 'dR{6FgfE'  < $ROOT/inputs/input/ruin.1161 > ./outputs/t176

./replace_instrumented.exe '%*\1Pf2' 'g'  < $ROOT/inputs/input/ruin.4 > ./outputs/t177

./replace_instrumented.exe '%*^' 'y8sdW9T'  < $ROOT/inputs/input/ruin.1065 > ./outputs/t178

./replace_instrumented.exe '%- ' '@t'  < $ROOT/inputs/temp-test/1790.inp.761.7 > ./outputs/t179

./replace_instrumented.exe '%- [^@n]?[^0-9]?[0-9]?$' '@%&a'  < $ROOT/inputs/temp-test/163.inp.73.10 > ./outputs/t180

./replace_instrumented.exe '%-' '%s$0#=(`Y2,;:8*/t"3Yn=VCI-|H6q[k%+sNf3%f`xvS*o(uD'  < $ROOT/inputs/input/ruin.1972 > ./outputs/t181

./replace_instrumented.exe '%-' ''  < $ROOT/inputs/temp-test/1650.inp.703.5 > ./outputs/t182

./replace_instrumented.exe '%-' 'NEW'  < $ROOT/inputs/temp-test/725.inp.312.5 > ./outputs/t183

./replace_instrumented.exe '%-' 'a&'  < $ROOT/inputs/temp-test/1312.inp.563.7 > ./outputs/t184

./replace_instrumented.exe '%-*-' '@n'  < $ROOT/inputs/temp-test/2009.inp.852.5 > ./outputs/t185

./replace_instrumented.exe '%-*?$' '&a@%'  < $ROOT/inputs/temp-test/1103.inp.474.11 > ./outputs/t186

./replace_instrumented.exe '%-*?' '&a@%'  < $ROOT/inputs/temp-test/1102.inp.474.5 > ./outputs/t187

./replace_instrumented.exe '%--%[^9-B][0-9]--[0-9]*-$' '@%@&'  < $ROOT/inputs/temp-test/18.inp.8.11 > ./outputs/t188

./replace_instrumented.exe '%--*a-c]?[^0-9]$' '@n'  < $ROOT/inputs/temp-test/1154.inp.496.10 > ./outputs/t189

./replace_instrumented.exe '%--@*-[^-z]-?[^--z][^9-B]?$' '&a@%'  < $ROOT/inputs/temp-test/503.inp.219.10 > ./outputs/t190

./replace_instrumented.exe '%--@*-[^-z]-?[^--z][^9-B]?' '&a@%'  < $ROOT/inputs/temp-test/501.inp.219.5 > ./outputs/t191

./replace_instrumented.exe '%--[0-9]?-?$' 'NEW'  < $ROOT/inputs/temp-test/2061.inp.873.10 > ./outputs/t192

./replace_instrumented.exe '%--[^9-B][0-9]--[0-9]*-$' '@%@&'  < $ROOT/inputs/temp-test/18.inp.8.11 > ./outputs/t193

./replace_instrumented.exe '%-?$' '&'  < $ROOT/inputs/temp-test/375.inp.162.10 > ./outputs/t194

./replace_instrumented.exe '%-?$' 'a&'  < $ROOT/inputs/temp-test/1079.inp.464.10 > ./outputs/t195

./replace_instrumented.exe '%-??[^0-9][9-B][^9-B]$' 'a&'  < $ROOT/inputs/temp-test/39.inp.16.11 > ./outputs/t196

./replace_instrumented.exe '%-?@[[^9-B]---?' 'a@n'  < $ROOT/inputs/temp-test/966.inp.416.5 > ./outputs/t197

./replace_instrumented.exe '%-?[^0-9]?' '&'  < $ROOT/inputs/temp-test/466.inp.203.5 > ./outputs/t198

./replace_instrumented.exe '%-@**' 'NEW'  < $ROOT/inputs/temp-test/1838.inp.781.5 > ./outputs/t199

./replace_instrumented.exe '%-@t$' ''  < $ROOT/inputs/temp-test/42.inp.17.11 > ./outputs/t200

./replace_instrumented.exe '%-[9-B]' '&'  < $ROOT/inputs/temp-test/1336.inp.573.5 > ./outputs/t201

./replace_instrumented.exe '%-[@n][^a--b]$'   < $ROOT/inputs/temp-test/216.inp.96.11 > ./outputs/t202

./replace_instrumented.exe '%-[@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/216.inp.96.11 > ./outputs/t203

./replace_instrumented.exe '%-[@n][^a--b]*$' 'NEW'  < $ROOT/inputs/temp-test/216.inp.96.11 > ./outputs/t204

./replace_instrumented.exe '%-[@n][^a--b]*' 'NEW'  < $ROOT/inputs/temp-test/216.inp.96.11 > ./outputs/t205

./replace_instrumented.exe '%-[][@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/216.inp.96.11 > ./outputs/t206

./replace_instrumented.exe '%-[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/2013.inp.854.7 > ./outputs/t207

./replace_instrumented.exe '%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]%-[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/892.inp.383.5 > ./outputs/t208

./replace_instrumented.exe '%-[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/892.inp.383.5 > ./outputs/t209

./replace_instrumented.exe '%-[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1717.inp.731.7 > ./outputs/t210

./replace_instrumented.exe '%-[^9-B][^0-9] $' 'a@n'  < $ROOT/inputs/temp-test/2026.inp.859.11 > ./outputs/t211

./replace_instrumented.exe '%-[^9-B][^0-9][_-z]?-^*?$' '@n'  < $ROOT/inputs/temp-test/1051.inp.452.11 > ./outputs/t212

./replace_instrumented.exe '%-[^][@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/216.inp.96.11 > ./outputs/t213

./replace_instrumented.exe '%-[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/863.inp.371.5 > ./outputs/t214

./replace_instrumented.exe '%-[^a-c]' 'b@t'  < $ROOT/inputs/temp-test/1654.inp.704.5 > ./outputs/t215

./replace_instrumented.exe '%-]-' '@n'  < $ROOT/inputs/temp-test/1123.inp.483.7 > ./outputs/t216

./replace_instrumented.exe '%-][^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/580.inp.249.7 > ./outputs/t217

./replace_instrumented.exe '%-^$' ''  < $ROOT/inputs/temp-test/575.inp.247.10 > ./outputs/t218

./replace_instrumented.exe '%-^$' '@%&a'  < $ROOT/inputs/temp-test/1249.inp.535.10 > ./outputs/t219

./replace_instrumented.exe '%-^-]$' '@%&a'  < $ROOT/inputs/temp-test/2311.inp.980.11 > ./outputs/t220

./replace_instrumented.exe '%-^?*' ''  < $ROOT/inputs/temp-test/575.inp.247.10 > ./outputs/t221

./replace_instrumented.exe '%-c---[^0-9][0-9][9-B]-' '@n'  < $ROOT/inputs/temp-test/1034.inp.444.5 > ./outputs/t222

./replace_instrumented.exe '%-c?' '@%@&'  < $ROOT/inputs/temp-test/605.inp.260.5 > ./outputs/t223

./replace_instrumented.exe '%.$' 'D'  < $ROOT/inputs/input/ruin.1460 > ./outputs/t224

./replace_instrumented.exe '%? '   < $ROOT/inputs/temp-test/218.inp.97.5 > ./outputs/t225

./replace_instrumented.exe '%? ' 'a@nb@tc'  < $ROOT/inputs/temp-test/218.inp.97.5 > ./outputs/t226

./replace_instrumented.exe '%? *' '@t'  < $ROOT/inputs/temp-test/859.inp.369.5 > ./outputs/t227

./replace_instrumented.exe '%?$' '2'  < $ROOT/inputs/input/ruin.1261 > ./outputs/t228

./replace_instrumented.exe '%?$' '9e1'  < $ROOT/inputs/input/ruin.1325 > ./outputs/t229

./replace_instrumented.exe '%?$' 'AP'  < $ROOT/inputs/input/ruin.202 > ./outputs/t230

./replace_instrumented.exe '%?$' 'L<5GMRl"'\''7Wl'\''3=ure'\''wFll;_2}wNR7cy/'  < $ROOT/inputs/input/ruin.1356 > ./outputs/t231

./replace_instrumented.exe '%?$' 'TU#\gNe$1p#Jb0WI'  < $ROOT/inputs/input/ruin.1320 > ./outputs/t232

./replace_instrumented.exe '%?$' '\'  < $ROOT/inputs/input/ruin.1440 > ./outputs/t233

./replace_instrumented.exe '%?$' 'k (M~}|3y!1|/)<WQV:Mkr1'  < $ROOT/inputs/input/ruin.774 > ./outputs/t234

./replace_instrumented.exe '%?$' 'oN5<e4k|K|}HrFB=iZSgZHM$1+R*ygT'  < $ROOT/inputs/input/ruin.1872 > ./outputs/t235

./replace_instrumented.exe '%?$'  < $ROOT/inputs/input/ruin.1261 > ./outputs/t236

./replace_instrumented.exe '%?' ')]CS#C@X3[0J\$&a[[@mGOQ'  < $ROOT/inputs/input/ruin.1876 > ./outputs/t237

./replace_instrumented.exe '%?' '+'  < $ROOT/inputs/input/ruin.556 > ./outputs/t238

./replace_instrumented.exe '%?' '.RM'  < $ROOT/inputs/input/ruin.1857 > ./outputs/t239

./replace_instrumented.exe '%?' '/*XX9X]4-DijN '  < $ROOT/inputs/input/ruin.727 > ./outputs/t240

./replace_instrumented.exe '%?' '1'  < $ROOT/inputs/input/ruin.1671 > ./outputs/t241

./replace_instrumented.exe '%?' '6b/]'  < $ROOT/inputs/input/ruin.219 > ./outputs/t242

./replace_instrumented.exe '%?' '7 EB+%@FvoUS  '  < $ROOT/inputs/input/ruin.1526 > ./outputs/t243

./replace_instrumented.exe '%?' 'Q!I*e$7'  < $ROOT/inputs/input/ruin.1457 > ./outputs/t244

./replace_instrumented.exe '%?' 'd6|=C@vL&W124Sl,6$@BY9x[JBrfpE<o0p,J"WO\A/HIDw'  < $ROOT/inputs/input/ruin.585 > ./outputs/t245

./replace_instrumented.exe '%?' 'k'  < $ROOT/inputs/input/ruin.1361 > ./outputs/t246

./replace_instrumented.exe '%?' 'n'  < $ROOT/inputs/input/ruin.233 > ./outputs/t247

./replace_instrumented.exe '%?' 'qwZj/of[4fLna,@rHHd<;;1Imlc@Ya*B'  < $ROOT/inputs/input/ruin.1094 > ./outputs/t248

./replace_instrumented.exe '%?' 'w'  < $ROOT/inputs/input/ruin.1257 > ./outputs/t249

./replace_instrumented.exe '%?' '}=$="fk-Rix[&n#bBsqn8i!#\<p1+jntBsBI74.+2qg+$7!x/R'  < $ROOT/inputs/input/ruin.1500 > ./outputs/t250

./replace_instrumented.exe '%?*$' 'w'  < $ROOT/inputs/input/ruin.1257 > ./outputs/t251

./replace_instrumented.exe '%?*@*' 'NEW'  < $ROOT/inputs/temp-test/523.inp.226.5 > ./outputs/t252

./replace_instrumented.exe '%?-$' '@t'  < $ROOT/inputs/temp-test/1871.inp.793.11 > ./outputs/t253

./replace_instrumented.exe '%?-' '@n'  < $ROOT/inputs/temp-test/913.inp.393.5 > ./outputs/t254

./replace_instrumented.exe '%?? *' 'NEW'  < $ROOT/inputs/temp-test/1531.inp.655.5 > ./outputs/t255

./replace_instrumented.exe '%??-?[^@n][a-]-@*[^a--b][0-9]-$' '@%&a'  < $ROOT/inputs/temp-test/2249.inp.953.11 > ./outputs/t256

./replace_instrumented.exe '%??[@n]-?[9-B]-^-]??[9-B]-*[^0-9]-' '@n'  < $ROOT/inputs/temp-test/1347.inp.578.7 > ./outputs/t257

./replace_instrumented.exe '%??^[^9-B]@*?@**$' '@n'  < $ROOT/inputs/temp-test/251.inp.111.11 > ./outputs/t258

./replace_instrumented.exe '%??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**??^[^9-B]@*?@**$' '@n'  < $ROOT/inputs/temp-test/251.inp.111.11 > ./outputs/t259

./replace_instrumented.exe '%?@![$]@n' ''  < $ROOT/inputs/input/ruin.967 > ./outputs/t260

./replace_instrumented.exe '%?@*$' '@%&a'  < $ROOT/inputs/temp-test/534.inp.231.11 > ./outputs/t261

./replace_instrumented.exe '%?@*$' 'b@t'  < $ROOT/inputs/temp-test/935.inp.402.10 > ./outputs/t262

./replace_instrumented.exe '%?@*'   < $ROOT/inputs/temp-test/523.inp.226.5 > ./outputs/t263

./replace_instrumented.exe '%?@*' 'NEW'  < $ROOT/inputs/temp-test/523.inp.226.5 > ./outputs/t264

./replace_instrumented.exe '%?@@' '&a@%'  < $ROOT/inputs/temp-test/2230.inp.945.7 > ./outputs/t265

./replace_instrumented.exe '%?[-$' 'a&'  < $ROOT/inputs/temp-test/784.inp.337.11 > ./outputs/t266

./replace_instrumented.exe '%?[0-9][9-B]-$' 'a&'  < $ROOT/inputs/temp-test/1974.inp.838.11 > ./outputs/t267

./replace_instrumented.exe '%?[9-B][^a-c]' '@t'  < $ROOT/inputs/temp-test/939.inp.403.5 > ./outputs/t268

./replace_instrumented.exe '%?[9-B]^a-c]-[a-c]-[^0-9]- *?-^a-]' 'NEW'  < $ROOT/inputs/temp-test/1019.inp.438.5 > ./outputs/t269

./replace_instrumented.exe '%?[@@][^0-9][a-c]?-[^0-9]- [^9-B]$' 'NEW'  < $ROOT/inputs/temp-test/1129.inp.485.10 > ./outputs/t270

./replace_instrumented.exe '%?[]^$' '@%&a'  < $ROOT/inputs/temp-test/513.inp.223.10 > ./outputs/t271

./replace_instrumented.exe '%?[^9-B][^9-B]A' 'a@n'  < $ROOT/inputs/temp-test/1808.inp.768.5 > ./outputs/t272

./replace_instrumented.exe '%?[^@@][^--z]c-[^0-9][9-B]??' 'a@n'  < $ROOT/inputs/temp-test/305.inp.136.5 > ./outputs/t273

./replace_instrumented.exe '%?[^@n]^[@@][0-9]??-]' 'NEW'  < $ROOT/inputs/temp-test/1127.inp.484.5 > ./outputs/t274

./replace_instrumented.exe '%?[^@n]^[@@][0-9]??-]temp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.intemp-test/1183.i-*[^a-b]-*-*[^a-b]-*-*[^a-b]-*-*[^a-b]-*n' 'NEW'  < $ROOT/inputs/temp-test/1127.inp.484.5 > ./outputs/t275

./replace_instrumented.exe '%?[^@t]$' 'NEW'  < $ROOT/inputs/temp-test/1485.inp.637.10 > ./outputs/t276

./replace_instrumented.exe '%?[^]^$' '@%&a'  < $ROOT/inputs/temp-test/513.inp.223.10 > ./outputs/t277

./replace_instrumented.exe '%?[^a--b][0-9]A*[9-B]??[^9-B]?-' 'b@t'  < $ROOT/inputs/temp-test/1414.inp.606.7 > ./outputs/t278

./replace_instrumented.exe '%?[^a-c]-^?-[a-c]-?c*?[^9-B]-?' 'NEW'  < $ROOT/inputs/temp-test/1588.inp.676.7 > ./outputs/t279

./replace_instrumented.exe '%?[a--b]@[*[0-9][^a-c]?@*[0-9][- *[^@@][-z][9-B]- *-[a-c]$' 'NEW'  < $ROOT/inputs/temp-test/1743.inp.741.10 > ./outputs/t280

./replace_instrumented.exe '%?[a-]$' '@t'  < $ROOT/inputs/temp-test/2165.inp.915.10 > ./outputs/t281

./replace_instrumented.exe '%?[a-c$' 'a@n'  < $ROOT/inputs/temp-test/770.inp.330.10 > ./outputs/t282

./replace_instrumented.exe '%?[a-c-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2201.inp.932.5 > ./outputs/t283

./replace_instrumented.exe '%?[a-c-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2202.inp.932.7 > ./outputs/t284

./replace_instrumented.exe '%?^$'   < $ROOT/inputs/temp-test/513.inp.223.10 > ./outputs/t285

./replace_instrumented.exe '%?^$' '@%&a'  < $ROOT/inputs/temp-test/513.inp.223.10 > ./outputs/t286

./replace_instrumented.exe '%?^*$' 'a@n'  < $ROOT/inputs/temp-test/1242.inp.533.11 > ./outputs/t287

./replace_instrumented.exe '%?^*' '&a@%'  < $ROOT/inputs/temp-test/977.inp.420.7 > ./outputs/t288

./replace_instrumented.exe '%?c*$' '@n'  < $ROOT/inputs/temp-test/350.inp.153.11 > ./outputs/t289

./replace_instrumented.exe '%?c*$' '@n@'  < $ROOT/inputs/temp-test/350.inp.153.11 > ./outputs/t290

./replace_instrumented.exe '%@(' 'y:s*EV b!c[n@w>v'  < $ROOT/inputs/input/ruin.1752 > ./outputs/t291

./replace_instrumented.exe '%@*$'  < $ROOT/inputs/temp-test/199.inp.89.5 > ./outputs/t292

./replace_instrumented.exe '%@**-$' '&a@%'  < $ROOT/inputs/temp-test/137.inp.63.11 > ./outputs/t293

./replace_instrumented.exe '%@**-' '&a@%'  < $ROOT/inputs/temp-test/136.inp.63.5 > ./outputs/t294

./replace_instrumented.exe '%@**-' '@t'  < $ROOT/inputs/temp-test/1492.inp.639.5 > ./outputs/t295

./replace_instrumented.exe '%@**--[0-9]?a-c][^-$' '&'  < $ROOT/inputs/temp-test/280.inp.125.10 > ./outputs/t296

./replace_instrumented.exe '%@*-[^0-9]-@[[^a-c] ' 'NEW'  < $ROOT/inputs/temp-test/1489.inp.638.5 > ./outputs/t297

./replace_instrumented.exe '%@*?' '&@n' < $ROOT/inputs/temp-test/199.inp.89.5 > ./outputs/t298

./replace_instrumented.exe '%@*?' '@%&a'  < $ROOT/inputs/temp-test/199.inp.89.5 > ./outputs/t299

./replace_instrumented.exe '%@*?'  < $ROOT/inputs/temp-test/199.inp.89.5 > ./outputs/t300

./replace_instrumented.exe '%@@ ' 'L^2'\''NNI-~vNzrKq>fKK]A mg,@5N/o2s\V7N>'  < $ROOT/inputs/input/ruin.1640 > ./outputs/t301

./replace_instrumented.exe '%@@$' ' J5VXPw6h<vW[6**p36MrPLqh'\''Q'  < $ROOT/inputs/input/ruin.1167 > ./outputs/t302

./replace_instrumented.exe '%@@$' '@atD,[O7M4J)7%|eNA;t(aw'  < $ROOT/inputs/input/ruin.1732 > ./outputs/t303

./replace_instrumented.exe '%@@$' 'C=K8]r8DZs;rx:9A7J^=P3r4Te2f&G1'  < $ROOT/inputs/input/ruin.1708 > ./outputs/t304

./replace_instrumented.exe '%@@$' 'H'  < $ROOT/inputs/input/ruin.324 > ./outputs/t305

./replace_instrumented.exe '%@@$' 'KV5^u_vH*;0X>-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^c4^sOw%oe5'\''AZr@KBq'  < $ROOT/inputs/input/ruin.1341 > ./outputs/t306

./replace_instrumented.exe '%@@$' 'KV5^u_vH*;0X>c4^sOw%oe5'\''AZr@KBq'  < $ROOT/inputs/input/ruin.1341 > ./outputs/t307

./replace_instrumented.exe '%@@$' 'zAlI%9cFthJlYpJ\@u|j6dDwUDk?N}i+ Z,hIh$"#iu4zV'  < $ROOT/inputs/input/ruin.515 > ./outputs/t308

./replace_instrumented.exe '%@@$?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*?[^--z]c[^9-B][^9-B]c?*' 'KV5^u_vH*;0X>c4^sOw%oe5'\''AZr@KBq'  < $ROOT/inputs/input/ruin.1341 > ./outputs/t309

./replace_instrumented.exe '%@@$@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]' 'H'  < $ROOT/inputs/input/ruin.324 > ./outputs/t310

./replace_instrumented.exe '%@@' ' B!ls?r*Bk.lC'\''l<T+]?*;};+pT+]:0qdY0\L"V0w*T2'  < $ROOT/inputs/input/ruin.767 > ./outputs/t311

./replace_instrumented.exe '%@@' '6'  < $ROOT/inputs/input/ruin.190 > ./outputs/t312

./replace_instrumented.exe '%@@' '7'  < $ROOT/inputs/input/ruin.209 > ./outputs/t313

./replace_instrumented.exe '%@@' '<'  < $ROOT/inputs/input/ruin.1961 > ./outputs/t314

./replace_instrumented.exe '%@@' 'A'  < $ROOT/inputs/input/ruin.23 > ./outputs/t315

./replace_instrumented.exe '%@@' 'C#6L=cT|[<GnK><~'  < $ROOT/inputs/input/ruin.152 > ./outputs/t316

./replace_instrumented.exe '%@@' 'E'  < $ROOT/inputs/input/ruin.1281 > ./outputs/t317

./replace_instrumented.exe '%@@' 'H'  < $ROOT/inputs/input/ruin.90 > ./outputs/t318

./replace_instrumented.exe '%@@' 'Hgsuo[7/`Q'  < $ROOT/inputs/input/ruin.123 > ./outputs/t319

./replace_instrumented.exe '%@@' 'JOmk4tJ'  < $ROOT/inputs/input/ruin.223 > ./outputs/t320

./replace_instrumented.exe '%@@' 'KJ={Rl7_z1X$p:%SG'  < $ROOT/inputs/input/ruin.1477 > ./outputs/t321

./replace_instrumented.exe '%@@' 'M.10\?_|(0803q:sHHzal#;;M<2`.,HRVz"'\''il'  < $ROOT/inputs/input/ruin.133 > ./outputs/t322

./replace_instrumented.exe '%@@' 'V@'  < $ROOT/inputs/input/ruin.1083 > ./outputs/t323

./replace_instrumented.exe '%@@' 'Yp'  < $ROOT/inputs/input/ruin.3 > ./outputs/t324

./replace_instrumented.exe '%@@' 'b04ZLrhsr,4"4&K!&ZA1"ZA;]/XF3SXotQ'  < $ROOT/inputs/input/ruin.1226 > ./outputs/t325

./replace_instrumented.exe '%@@' 'i'  < $ROOT/inputs/input/ruin.472 > ./outputs/t326

./replace_instrumented.exe '%@@' 'j'  < $ROOT/inputs/input/ruin.38 > ./outputs/t327

./replace_instrumented.exe '%@@' 'j'  < $ROOT/inputs/input/ruin.441 > ./outputs/t328

./replace_instrumented.exe '%@@' 'k'  < $ROOT/inputs/input/ruin.1730 > ./outputs/t329

./replace_instrumented.exe '%@@' 'm|~+U+9'\''<y9E'  < $ROOT/inputs/input/ruin.1120 > ./outputs/t330

./replace_instrumented.exe '%@@' 'sI1TM{>'\''bMi-}&'  < $ROOT/inputs/input/ruin.477 > ./outputs/t331

./replace_instrumented.exe '%@@' 'tU/3F0P2)T;xy=$:fIU'  < $ROOT/inputs/input/ruin.781 > ./outputs/t332

./replace_instrumented.exe '%@@' 'w'  < $ROOT/inputs/input/ruin.1634 > ./outputs/t333

./replace_instrumented.exe '%@@' '}Y}'  < $ROOT/inputs/input/ruin.1314 > ./outputs/t334

./replace_instrumented.exe '%@@*$' 'm|~+U+9'\''<y9E'  < $ROOT/inputs/input/ruin.1120 > ./outputs/t335

./replace_instrumented.exe '%@@*' 'p'  < $ROOT/inputs/input/ruin.283 > ./outputs/t336

./replace_instrumented.exe '%@@*[^9-B] *-c*[-' '&a@%'  < $ROOT/inputs/temp-test/1497.inp.641.7 > ./outputs/t337

./replace_instrumented.exe '%@@=' ')&hL~6sDzLioa!)wc9QfBOO'\''qiXG^o1*za&dr |;Z%Nn^h*rq'  < $ROOT/inputs/input/ruin.399 > ./outputs/t338

./replace_instrumented.exe '%@@?$' '>A('  < $ROOT/inputs/input/ruin.751 > ./outputs/t339

./replace_instrumented.exe '%@@@@@@$' 'PxkC zwUtqc`<IFt"RoQ!F'\''D9z7OL;xo$/o&6XdE=StMNWl|iTbck%*z'  < $ROOT/inputs/input/ruin.525 > ./outputs/t340

./replace_instrumented.exe '%@@@@\x[^v]@@' '/!OJ=t,WAMc%C'  < $ROOT/inputs/input/ruin.344 > ./outputs/t341

./replace_instrumented.exe '%@@\' '_e/7aN*GF0pWy#='  < $ROOT/inputs/input/ruin.310 > ./outputs/t342

./replace_instrumented.exe '%@[*[9-B]' '&'  < $ROOT/inputs/temp-test/492.inp.215.5 > ./outputs/t343

./replace_instrumented.exe '%@[*[9-B]@' '&'  < $ROOT/inputs/temp-test/492.inp.215.5 > ./outputs/t344

./replace_instrumented.exe '%@[*[a-c]$' 'NEW'  < $ROOT/inputs/temp-test/1372.inp.588.11 > ./outputs/t345

./replace_instrumented.exe '%@[[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B]' 'a&'  < $ROOT/inputs/temp-test/2269.inp.961.5 > ./outputs/t346

./replace_instrumented.exe '%@d' 'fg~4[LmRA3o6:cW<[RU@3H*M;Z:.;y'\'',gC?= VPAFmAF'\'':1)z3<<'  < $ROOT/inputs/input/ruin.377 > ./outputs/t347

./replace_instrumented.exe '%@n' '`'  < $ROOT/inputs/input/ruin.1158 > ./outputs/t348

./replace_instrumented.exe '%@n' 'l|'  < $ROOT/inputs/input/ruin.1775 > ./outputs/t349

./replace_instrumented.exe '%@n' 'v'  < $ROOT/inputs/input/ruin.1561 > ./outputs/t350

./replace_instrumented.exe '%@n'  < $ROOT/inputs/input/ruin.1158 > ./outputs/t351

./replace_instrumented.exe '%@n?' ''  < $ROOT/inputs/input/ruin.1860 > ./outputs/t352

./replace_instrumented.exe '%@t$' '\_'  < $ROOT/inputs/input/ruin.1586 > ./outputs/t353

./replace_instrumented.exe '%@t*' '@'  < $ROOT/inputs/input/ruin.1787 > ./outputs/t354

./replace_instrumented.exe '%A' ':45s3M%Yaoud%{~QFrbA`:&NwJ9(nw}Qy=?D['  < $ROOT/inputs/input/ruin.1115 > ./outputs/t355

./replace_instrumented.exe '%A*$' ':45s3M%Yaoud%{~QFrbA`:&NwJ9(nw}Qy=?D['  < $ROOT/inputs/input/ruin.1115 > ./outputs/t356

./replace_instrumented.exe '%A*[^0-9]*$' '@%@&'  < $ROOT/inputs/temp-test/36.inp.15.10 > ./outputs/t357

./replace_instrumented.exe '%A[0-9]?@**[a-c][^0-9]$' '@%&a'  < $ROOT/inputs/temp-test/672.inp.292.11 > ./outputs/t358

./replace_instrumented.exe '%E$' 'I'  < $ROOT/inputs/input/ruin.1790 > ./outputs/t359

./replace_instrumented.exe '%E' 'E'  < $ROOT/inputs/input/ruin.1184 > ./outputs/t360

./replace_instrumented.exe '%E?' 'h'  < $ROOT/inputs/input/ruin.903 > ./outputs/t361

./replace_instrumented.exe '%O$' '\'  < $ROOT/inputs/input/ruin.683 > ./outputs/t362

./replace_instrumented.exe '%P$' 'dLQ('  < $ROOT/inputs/input/ruin.1532 > ./outputs/t363

./replace_instrumented.exe '%S' ' P'  < $ROOT/inputs/input/ruin.1601 > ./outputs/t364

./replace_instrumented.exe '%S?*' ' P'  < $ROOT/inputs/input/ruin.1601 > ./outputs/t365

./replace_instrumented.exe '%U' 'N+2rHDje[,A_^!$*}]k`e2{1lp*{^'  < $ROOT/inputs/input/ruin.15 > ./outputs/t366

./replace_instrumented.exe '%U' 'h<z?cC=|(I]>/deslsGqiEdmY'  < $ROOT/inputs/input/ruin.1760 > ./outputs/t367

./replace_instrumented.exe '%V' '`wtFDA"\YWV{x=qMe@$iJ&LgdV'  < $ROOT/inputs/input/ruin.757 > ./outputs/t368

./replace_instrumented.exe '%V' 'd'  < $ROOT/inputs/input/ruin.1707 > ./outputs/t369

./replace_instrumented.exe '%WQtcc@n' '( $V0B&16|L'  < $ROOT/inputs/input/ruin.270 > ./outputs/t370

./replace_instrumented.exe '%[-z][^9-B]?--[^9-B]-[^9-B][^9-B]-?@%[-z][^9-B]?--[^9-B]-[^9-B][^9-B]-?@[[%[-z][^9-B]?--[^9-B]-[^9-B][^9-B]-?@[%[-z][^9-B]?--[^9-B]-[^9-B][^9-B]-?@[%[-z][^9-B]?--[^9-B]-[^9-B][^9-B]-?@[' '@n'  < $ROOT/inputs/temp-test/2096.inp.888.5 > ./outputs/t371

./replace_instrumented.exe '%[-z][^9-B]?--[^9-B]-[^9-B][^9-B]-?@[' '@n'  < $ROOT/inputs/temp-test/2096.inp.888.5 > ./outputs/t372

./replace_instrumented.exe '%[0-4-1]' '-1'  < $ROOT/inputs/moni/f7.inp > ./outputs/t373

./replace_instrumented.exe '%[0-9H]$' 'l*>nm)BOulbBc1&N6A'  < $ROOT/inputs/input/ruin.549 > ./outputs/t374

./replace_instrumented.exe '%[0-9]' 'l'  < $ROOT/inputs/input/ruin.1572 > ./outputs/t375

./replace_instrumented.exe '%[0-9]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t376

./replace_instrumented.exe '%[0-9]-[9-B]?-[9-B]^-]?$' 'NEW'  < $ROOT/inputs/temp-test/1672.inp.712.10 > ./outputs/t377

./replace_instrumented.exe '%[0-9]?' '@t'  < $ROOT/inputs/temp-test/1048.inp.451.5 > ./outputs/t378

./replace_instrumented.exe '%[0-9]@@' '@%&a'  < $ROOT/inputs/temp-test/1696.inp.723.5 > ./outputs/t379

./replace_instrumented.exe '%[0-9]@[*' '@n'  < $ROOT/inputs/temp-test/844.inp.362.5 > ./outputs/t380

./replace_instrumented.exe '%[0-9][^9-B][@t][^a-c]' '@%&a'  < $ROOT/inputs/temp-test/1040.inp.447.5 > ./outputs/t381

./replace_instrumented.exe '%[1]*@@' '@YLmg{>yPr b&3<TkY4-a|k+L63(J^$~xY:n\b6%fo3[-n, =}@e'  < $ROOT/inputs/input/ruin.626 > ./outputs/t382

./replace_instrumented.exe '%[9-B]' '&'  < $ROOT/inputs/temp-test/2307.inp.979.7 > ./outputs/t383

./replace_instrumented.exe '%[9-B]-$' 'NEW'  < $ROOT/inputs/temp-test/1455.inp.623.10 > ./outputs/t384

./replace_instrumented.exe '%[9-B]?$' '&a@%'  < $ROOT/inputs/temp-test/2045.inp.867.10 > ./outputs/t385

./replace_instrumented.exe '%[9-B]?' '@%&a'  < $ROOT/inputs/temp-test/801.inp.344.5 > ./outputs/t386

./replace_instrumented.exe '%[9-B]?-@[*[^9-B]-@tc*a-]' '@n'  < $ROOT/inputs/temp-test/1536.inp.657.7 > ./outputs/t387

./replace_instrumented.exe '%[9-B][^a--]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1355.inp.581.5 > ./outputs/t388

./replace_instrumented.exe '%[9-B]c*?@[*-? $' '&'  < $ROOT/inputs/temp-test/436.inp.191.10 > ./outputs/t389

./replace_instrumented.exe '%[>-AA-G>-A]' '%'  < $ROOT/inputs/input/ruin.801 > ./outputs/t390

./replace_instrumented.exe '%[>-A]$' 'Rob"FQFK`\,mU`gzl<R<1`Ns4W.g'  < $ROOT/inputs/input/ruin.371 > ./outputs/t391

./replace_instrumented.exe '%[@t]- [^0-9][^a-^?@n?$' 'a&'  < $ROOT/inputs/temp-test/2252.inp.954.10 > ./outputs/t392

./replace_instrumented.exe '%[@t]@*?[^-[9-B]-' 'b@t'  < $ROOT/inputs/temp-test/1732.inp.736.5 > ./outputs/t393

./replace_instrumented.exe '%[A-G0-9]' 'aKzJRRKf,'\''We6;r+n+]pU-`P}I'  < $ROOT/inputs/input/ruin.988 > ./outputs/t394

./replace_instrumented.exe '%[A-G]' 'P'  < $ROOT/inputs/input/ruin.730 > ./outputs/t395

./replace_instrumented.exe '%[A-G]' 'xeD;,?BG|~6y8P D&x*"3r^Ej5VL$'  < $ROOT/inputs/input/ruin.1081 > ./outputs/t396

./replace_instrumented.exe '%[I]'   < $ROOT/inputs/input/ruin.1156 > ./outputs/t397

./replace_instrumented.exe '%[I]' 'r?alRkSvq6'  < $ROOT/inputs/input/ruin.1156 > ./outputs/t398

./replace_instrumented.exe '%[R]$' 'f&<'  < $ROOT/inputs/input/ruin.9 > ./outputs/t399

./replace_instrumented.exe '%[Z-a]^_`a]$' 'easgtgK\'\''\*W LdSez|/"f'  < $ROOT/inputs/input/ruin.76 > ./outputs/t400

./replace_instrumented.exe '%[]? ' 'a@nb@tc'  < $ROOT/inputs/temp-test/218.inp.97.5 > ./outputs/t401

./replace_instrumented.exe '%[][^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t402

./replace_instrumented.exe '%[^-z] ' 'NEW'  < $ROOT/inputs/temp-test/248.inp.110.5 > ./outputs/t403

./replace_instrumented.exe '%[^0-9] [^9-B]--[0-9]??[a-c]?-' ''  < $ROOT/inputs/temp-test/568.inp.244.5 > ./outputs/t404

./replace_instrumented.exe '%[^0-9]' '&'  < $ROOT/inputs/temp-test/665.inp.289.5 > ./outputs/t405

./replace_instrumented.exe '%[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/2005.inp.851.5 > ./outputs/t406

./replace_instrumented.exe '%[^0-9]*$' '@t'  < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t407

./replace_instrumented.exe '%[^0-9]*' '@t'  < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t408

./replace_instrumented.exe '%[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1570.inp.670.5 > ./outputs/t409

./replace_instrumented.exe '%[^0-9]-?[9-B]?-[9-B]?'   < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t410

./replace_instrumented.exe '%[^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t411

./replace_instrumented.exe '%[^0-9]?' '@%@&'  < $ROOT/inputs/temp-test/942.inp.404.5 > ./outputs/t412

./replace_instrumented.exe '%[^0-9]?*' '@t'  < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t413

./replace_instrumented.exe '%[^0-9]@t*' '&a@%'  < $ROOT/inputs/temp-test/461.inp.202.5 > ./outputs/t414

./replace_instrumented.exe '%[^0-9]A?' '@n'  < $ROOT/inputs/temp-test/1835.inp.780.7 > ./outputs/t415

./replace_instrumented.exe '%[^0-9][^0-9][^9-B]' '@n'  < $ROOT/inputs/temp-test/1955.inp.829.5 > ./outputs/t416

./replace_instrumented.exe '%[^0-9][a--][^9-B][^-z]$' 'a@nb@tc'  < $ROOT/inputs/temp-test/2256.inp.956.10 > ./outputs/t417

./replace_instrumented.exe '%[^0-9][a-]$' ''  < $ROOT/inputs/temp-test/151.inp.68.10 > ./outputs/t418

./replace_instrumented.exe '%[^0-9][a-c]$' ''  < $ROOT/inputs/temp-test/728.inp.313.10 > ./outputs/t419

./replace_instrumented.exe '%[^9-B]$' 'a&'  < $ROOT/inputs/temp-test/1539.inp.658.10 > ./outputs/t420

./replace_instrumented.exe '%[^9-B]-' '@%&a'  < $ROOT/inputs/temp-test/2131.inp.902.5 > ./outputs/t421

./replace_instrumented.exe '%[^9-B]?' '&'  < $ROOT/inputs/temp-test/2161.inp.914.5 > ./outputs/t422

./replace_instrumented.exe '%[^9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1555.inp.665.5 > ./outputs/t423

./replace_instrumented.exe '%[^9-B]?-[^9-B]-*-[^9-B][^0-9]-*-[^0-9]$' '@%&a'  < $ROOT/inputs/temp-test/1083.inp.466.10 > ./outputs/t424

./replace_instrumented.exe '%[^9-B]?[a-c-?a-][^a-]-?-[9-B][0-9][^a-c*[0-9][^0-9]@[[9-B][^a-c]$' ''  < $ROOT/inputs/temp-test/1224.inp.525.10 > ./outputs/t425

./replace_instrumented.exe '%[^9-B][9-B]-*?[^@@]-a-]-' '@%&a'  < $ROOT/inputs/temp-test/2143.inp.907.5 > ./outputs/t426

./replace_instrumented.exe '%[^9-B][a-c]$' '@%&a'  < $ROOT/inputs/temp-test/1306.inp.561.10 > ./outputs/t427

./replace_instrumented.exe '%[^>-A]' 'm})h'  < $ROOT/inputs/input/ruin.816 > ./outputs/t428

./replace_instrumented.exe '%[^>-A]' 'rw`h-v1P5_?OU7NRz`:a9HNb]H="9cjwym["lqG<!&sYJc^dbfdN7N2ms3E ZS&g'  < $ROOT/inputs/input/ruin.666 > ./outputs/t429

./replace_instrumented.exe '%[^>-A]' 'w'  < $ROOT/inputs/input/ruin.1698 > ./outputs/t430

./replace_instrumented.exe '%[^?z-}>-A0-9A-GZ-a]^_`a-c-ac-a]' 'NA'  < $ROOT/inputs/input/ruin.293 > ./outputs/t431

./replace_instrumented.exe '%[^?z-}>-A0-9A-GZ-a]^_`a-c-ac-a]@n' 'N&A'  < $ROOT/inputs/input/ruin.293 > ./outputs/t432

./replace_instrumented.exe '%[^A-G]$' 'Pb'  < $ROOT/inputs/input/ruin.1111 > ./outputs/t433

./replace_instrumented.exe '%[^A-G]' '(Qk '  < $ROOT/inputs/input/ruin.1205 > ./outputs/t434

./replace_instrumented.exe '%[^B]' 'o'  < $ROOT/inputs/input/ruin.733 > ./outputs/t435

./replace_instrumented.exe '%[^Z-a]^_`a]' 'J=iYas^_]iYPHxV5eUw(z'  < $ROOT/inputs/input/ruin.1660 > ./outputs/t436

./replace_instrumented.exe '%[^]? ' 'a@nb@tc'  < $ROOT/inputs/temp-test/218.inp.97.5 > ./outputs/t437

./replace_instrumented.exe '%[^][^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/527.inp.228.5 > ./outputs/t438

./replace_instrumented.exe '%[^a-' '&'  < $ROOT/inputs/temp-test/2316.inp.982.7 > ./outputs/t439

./replace_instrumented.exe '%[^a-?[a-]?-?-]' '&'  < $ROOT/inputs/temp-test/49.inp.20.7 > ./outputs/t440

./replace_instrumented.exe '%[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/2282.inp.966.7 > ./outputs/t441

./replace_instrumented.exe '%[^a-c]???@*?[^a-c][a-c[^9-B]$' 'NEW'  < $ROOT/inputs/temp-test/484.inp.211.10 > ./outputs/t442

./replace_instrumented.exe '%[^a-c]?[^0-9]a-c][9-B]c*?[^0-9]$' ''  < $ROOT/inputs/temp-test/1295.inp.555.10 > ./outputs/t443

./replace_instrumented.exe '%[^a-c]?[^0-9]a-c][9-B]c*?[^0-9]' ''  < $ROOT/inputs/temp-test/1294.inp.555.7 > ./outputs/t444

./replace_instrumented.exe '%[^a-c]@t*$' '@t'  < $ROOT/inputs/temp-test/1191.inp.512.10 > ./outputs/t445

./replace_instrumented.exe '%[^a-c]@t*' '@t'  < $ROOT/inputs/temp-test/1190.inp.512.7 > ./outputs/t446

./replace_instrumented.exe '%[^a-c][0-9]' 'a&'  < $ROOT/inputs/temp-test/1784.inp.759.5 > ./outputs/t447

./replace_instrumented.exe '%[^a-c][9-B]$' '@%@&'  < $ROOT/inputs/temp-test/1644.inp.700.10 > ./outputs/t448

./replace_instrumented.exe '%[^a-c]^*' '@%@&'  < $ROOT/inputs/temp-test/2300.inp.976.5 > ./outputs/t449

./replace_instrumented.exe '%[^c-a>-A]' 'q\)&urQRC6v%ZLu%T%'  < $ROOT/inputs/input/ruin.1358 > ./outputs/t450

./replace_instrumented.exe '%[^~>-A<]' 'W'  < $ROOT/inputs/input/ruin.1816 > ./outputs/t451

./replace_instrumented.exe '%[_-z]-' '@n'  < $ROOT/inputs/temp-test/811.inp.348.7 > ./outputs/t452

./replace_instrumented.exe '%[a-?$' 'NEW'  < $ROOT/inputs/temp-test/737.inp.316.11 > ./outputs/t453

./replace_instrumented.exe '%[a-]-*[a-c][^a--]-$' '@t'  < $ROOT/inputs/temp-test/1091.inp.470.10 > ./outputs/t454

./replace_instrumented.exe '%[a-b]?**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t455

./replace_instrumented.exe '%[a-c-@@[0-9][^a-]?a-c]--c*$' '@%@&'  < $ROOT/inputs/temp-test/1976.inp.839.10 > ./outputs/t456

./replace_instrumented.exe '%[a-c[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/1431.inp.614.7 > ./outputs/t457

./replace_instrumented.exe '%[a-c]$' 'a@nb@tc'  < $ROOT/inputs/temp-test/1342.inp.576.11 > ./outputs/t458

./replace_instrumented.exe '%[a-c]-$' 'a@nb@tc'  < $ROOT/inputs/temp-test/1632.inp.694.10 > ./outputs/t459

./replace_instrumented.exe '%[a-c]?[^9-B][9-B][^a--b][0-9]-@@*' '@%&a'  < $ROOT/inputs/temp-test/490.inp.214.7 > ./outputs/t460

./replace_instrumented.exe '%[a-c]?[^9-B][9-B][^a--b][0-9]-@@*@' '@%&a'  < $ROOT/inputs/temp-test/490.inp.214.7 > ./outputs/t461

./replace_instrumented.exe '%[a-c][^0-9]*[a-c]' '&@n'  < $ROOT/inputs/temp-test/693.inp.300.5 > ./outputs/t462

./replace_instrumented.exe '%[a-c][^0-9]*[a-c]' '&@nmohaw'  < $ROOT/inputs/temp-test/693.inp.300.5 > ./outputs/t463

./replace_instrumented.exe '%[a-c][^0-9]-*-[a-c]-' '@n'  < $ROOT/inputs/temp-test/693.inp.300.5 > ./outputs/t464

./replace_instrumented.exe '%[c-az-}z-}>-AA-Gz-}z-}c-a]r' '%'  < $ROOT/inputs/input/ruin.1529 > ./outputs/t465

./replace_instrumented.exe '%[g]' 'JR]VaH^{mV&/1Ta}4.dF0WCLpBLR8AShG"$St'  < $ROOT/inputs/input/ruin.1432 > ./outputs/t466

./replace_instrumented.exe '%[k]' 'T'  < $ROOT/inputs/input/ruin.475 > ./outputs/t467

./replace_instrumented.exe '%[q0-9]' '.^u>`Y~4'\''!d;?[6eMR*)X+D>xU%AUWv8y$.jdQ@jBn='\''(J8f,KIL4L'  < $ROOT/inputs/input/ruin.285 > ./outputs/t468

./replace_instrumented.exe '%[z-}Z-a]^_`a->-A>-A-c-ac-a-A-GABCDEFGl-A-GABCDEFG~-A-GABCDEFG-z-}z-}!-A-GABCDEFG]' '=h'  < $ROOT/inputs/input/ruin.770 > ./outputs/t469

./replace_instrumented.exe '%[z-}]$' 'h'  < $ROOT/inputs/input/ruin.898 > ./outputs/t470

./replace_instrumented.exe '%^' 'x'  < $ROOT/inputs/input/ruin.1600 > ./outputs/t471

./replace_instrumented.exe '%^*??-$' '@%@&'  < $ROOT/inputs/temp-test/2242.inp.950.10 > ./outputs/t472

./replace_instrumented.exe '%^*[^@@]-?^a-][a--][^@@]?-[0-9]' '@%@&'  < $ROOT/inputs/temp-test/1684.inp.717.5 > ./outputs/t473

./replace_instrumented.exe '%^*[^a--]$' 'a&'  < $ROOT/inputs/temp-test/257.inp.113.10 > ./outputs/t474

./replace_instrumented.exe '%^*a-c]' '@%&a'  < $ROOT/inputs/temp-test/2247.inp.952.7 > ./outputs/t475

./replace_instrumented.exe '%^-$' '&'  < $ROOT/inputs/temp-test/875.inp.375.11 > ./outputs/t476

./replace_instrumented.exe '%^-]?' '&'  < $ROOT/inputs/temp-test/1768.inp.752.5 > ./outputs/t477

./replace_instrumented.exe '%^-]@**' 'b@t'  < $ROOT/inputs/temp-test/743.inp.318.5 > ./outputs/t478

./replace_instrumented.exe '%^?*' 'x'  < $ROOT/inputs/input/ruin.1600 > ./outputs/t479

./replace_instrumented.exe '%^a-]?a-][^a-]' ''  < $ROOT/inputs/temp-test/449.inp.196.7 > ./outputs/t480

./replace_instrumented.exe '%^a-][9-B][^--z]??@[*?$' 'a&'  < $ROOT/inputs/temp-test/2154.inp.911.10 > ./outputs/t481

./replace_instrumented.exe '%^a-c]-' 'NEW'  < $ROOT/inputs/temp-test/194.inp.87.7 > ./outputs/t482

./replace_instrumented.exe '%^a-c]?*' 'NEW'  < $ROOT/inputs/temp-test/194.inp.87.7 > ./outputs/t483

./replace_instrumented.exe '%^a-c][a-c]$' 'b@t'  < $ROOT/inputs/temp-test/1059.inp.455.10 > ./outputs/t484

./replace_instrumented.exe '%a' kkkkkkkkkkkkk  < $ROOT/inputs/moni/f7.inp > ./outputs/t485

./replace_instrumented.exe '%a' kkkkkkkkkkkkk$  < $ROOT/inputs/moni/f7.inp > ./outputs/t486

./replace_instrumented.exe '%a-]-*?c[^--z]a-][^a-][a--b]?' 'a&'  < $ROOT/inputs/temp-test/1327.inp.569.5 > ./outputs/t487

./replace_instrumented.exe '%a-]@@*$' 'NEW'  < $ROOT/inputs/temp-test/1204.inp.516.10 > ./outputs/t488

./replace_instrumented.exe '%a-c]-[0-9]@t*@*?$' '@%@&'  < $ROOT/inputs/temp-test/993.inp.427.10 > ./outputs/t489

./replace_instrumented.exe '%a-c][^@@]' '@t'  < $ROOT/inputs/temp-test/1515.inp.648.7 > ./outputs/t490

./replace_instrumented.exe '%a[ ]*' '&@t'  < $ROOT/inputs/moni/f8.inp > ./outputs/t491

./replace_instrumented.exe '%a[ ]*[ ]c$' '&@n'  < $ROOT/inputs/moni/f8.inp > ./outputs/t492

./replace_instrumented.exe '%c' '&a@%'  < $ROOT/inputs/temp-test/312.inp.139.7 > ./outputs/t493

./replace_instrumented.exe '%c*' '&a@%'  < $ROOT/inputs/temp-test/2088.inp.884.5 > ./outputs/t494

./replace_instrumented.exe '%dB' 'P'  < $ROOT/inputs/input/ruin.517 > ./outputs/t495

./replace_instrumented.exe '%e@n[^>-A/]$' '98&)4@z=|'\''-xLsL|#?_(vf/fhZ'  < $ROOT/inputs/input/ruin.201 > ./outputs/t496

./replace_instrumented.exe '%f' '\'  < $ROOT/inputs/input/ruin.1034 > ./outputs/t497

./replace_instrumented.exe '%f' '\KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@'  < $ROOT/inputs/input/ruin.1034 > ./outputs/t498

./replace_instrumented.exe '[^a-c]?$' 'a@n'  < $ROOT/inputs/temp-test/70.inp.30.9 > ./outputs/t499

./replace_instrumented.exe '[^a-c]?' '&a@%'  < $ROOT/inputs/temp-test/2031.inp.862.1 > ./outputs/t500

./replace_instrumented.exe '[^a-c]?' '&a@%'  < $ROOT/inputs/temp-test/2032.inp.862.2 > ./outputs/t501

./replace_instrumented.exe '[^a-c]?' '&a@%'  < $ROOT/inputs/temp-test/2033.inp.862.3 > ./outputs/t502

./replace_instrumented.exe '[^a-c]?' ''  < $ROOT/inputs/temp-test/1148.inp.494.1 > ./outputs/t503

./replace_instrumented.exe '[^a-c]?' ''  < $ROOT/inputs/temp-test/1149.inp.494.3 > ./outputs/t504

./replace_instrumented.exe '[^a-c]?' 'a@n'  < $ROOT/inputs/temp-test/69.inp.30.1 > ./outputs/t505

./replace_instrumented.exe '[^a-c]???@*?[^a-c][a-c[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/482.inp.211.1 > ./outputs/t506

./replace_instrumented.exe '[^a-c]???@*?[^a-c][a-c[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/483.inp.211.4 > ./outputs/t507

./replace_instrumented.exe '[^a-c]?[^0-9]a-c][9-B]c*?[^0-9]' ''  < $ROOT/inputs/temp-test/1293.inp.555.1 > ./outputs/t508

./replace_instrumented.exe '[^a-c]@*' ''  < $ROOT/inputs/temp-test/827.inp.356.1 > ./outputs/t509

./replace_instrumented.exe '[^a-c]@** *? [0-9]-?@**-' 'b@t'  < $ROOT/inputs/temp-test/396.inp.173.1 > ./outputs/t510

./replace_instrumented.exe '[^a-c]@** *? [0-9]-?@**-' 'b@t'  < $ROOT/inputs/temp-test/397.inp.173.3 > ./outputs/t511

./replace_instrumented.exe '[^a-c]@t*' '@t'  < $ROOT/inputs/temp-test/1187.inp.512.1 > ./outputs/t512

./replace_instrumented.exe '[^a-c]@t*' '@t'  < $ROOT/inputs/temp-test/1188.inp.512.2 > ./outputs/t513

./replace_instrumented.exe '[^a-c]@t*' '@t'  < $ROOT/inputs/temp-test/1189.inp.512.4 > ./outputs/t514

./replace_instrumented.exe '[^a-c]A*' '@t'  < $ROOT/inputs/temp-test/1481.inp.636.1 > ./outputs/t515

./replace_instrumented.exe '[^a-c]A*' '@t'  < $ROOT/inputs/temp-test/1482.inp.636.2 > ./outputs/t516

./replace_instrumented.exe '[^a-c]A*' '@t'  < $ROOT/inputs/temp-test/1483.inp.636.3 > ./outputs/t517

./replace_instrumented.exe '[^a-c][0-9]' 'a&'  < $ROOT/inputs/temp-test/1781.inp.759.1 > ./outputs/t518

./replace_instrumented.exe '[^a-c][0-9]' 'a&'  < $ROOT/inputs/temp-test/1782.inp.759.2 > ./outputs/t519

./replace_instrumented.exe '[^a-c][0-9]' 'a&'  < $ROOT/inputs/temp-test/1783.inp.759.3 > ./outputs/t520

./replace_instrumented.exe '[^a-c][9-B]$' '&a@%'  < $ROOT/inputs/temp-test/1980.inp.840.6 > ./outputs/t521

./replace_instrumented.exe '[^a-c][9-B]'   < $ROOT/inputs/temp-test/223.inp.99.3 > ./outputs/t522

./replace_instrumented.exe '[^a-c][9-B]' '&a@%'  < $ROOT/inputs/temp-test/1977.inp.840.1 > ./outputs/t523

./replace_instrumented.exe '[^a-c][9-B]' '&a@%'  < $ROOT/inputs/temp-test/1978.inp.840.3 > ./outputs/t524

./replace_instrumented.exe '[^a-c][9-B]' '&a@%'  < $ROOT/inputs/temp-test/1979.inp.840.4 > ./outputs/t525

./replace_instrumented.exe '[^a-c][9-B]' ''  < $ROOT/inputs/temp-test/1851.inp.786.1 > ./outputs/t526

./replace_instrumented.exe '[^a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/222.inp.99.1 > ./outputs/t527

./replace_instrumented.exe '[^a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/223.inp.99.3 > ./outputs/t528

./replace_instrumented.exe '[^a-c][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1641.inp.700.1 > ./outputs/t529

./replace_instrumented.exe '[^a-c][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1642.inp.700.2 > ./outputs/t530

./replace_instrumented.exe '[^a-c][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1643.inp.700.3 > ./outputs/t531

./replace_instrumented.exe '[^a-c][][9-B]' '@%&a'  < $ROOT/inputs/temp-test/222.inp.99.1 > ./outputs/t532

./replace_instrumented.exe '[^a-c][]a-]' 'NEW'  < $ROOT/inputs/temp-test/211.inp.94.1 > ./outputs/t533

./replace_instrumented.exe '[^a-c][^][9-B]' '@%&a'  < $ROOT/inputs/temp-test/222.inp.99.1 > ./outputs/t534

./replace_instrumented.exe '[^a-c][^]a-]' 'NEW'  < $ROOT/inputs/temp-test/211.inp.94.1 > ./outputs/t535

./replace_instrumented.exe '[^a-c][a--b]' 'a@n'  < $ROOT/inputs/temp-test/789.inp.340.1 > ./outputs/t536

./replace_instrumented.exe '[^a-c][a--b]' 'a@n'  < $ROOT/inputs/temp-test/790.inp.340.3 > ./outputs/t537

./replace_instrumented.exe '[^a-c]^*' '@%@&'  < $ROOT/inputs/temp-test/2299.inp.976.1 > ./outputs/t538

./replace_instrumented.exe '[^a-c]^*' 'NEW'  < $ROOT/inputs/temp-test/43.inp.18.1 > ./outputs/t539

./replace_instrumented.exe '[^a-c]^*?---[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1446.inp.620.1 > ./outputs/t540

./replace_instrumented.exe '[^a-c]^*?---[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1447.inp.620.2 > ./outputs/t541

./replace_instrumented.exe '[^a-c]^*?---[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1448.inp.620.3 > ./outputs/t542

./replace_instrumented.exe '[^a-c]a-]'   < $ROOT/inputs/temp-test/211.inp.94.1 > ./outputs/t543

./replace_instrumented.exe '[^a-c]a-]' '&@n'  < $ROOT/inputs/temp-test/211.inp.94.1 > ./outputs/t544

./replace_instrumented.exe '[^a-c]a-]' '@%&a'  < $ROOT/inputs/temp-test/599.inp.258.1 > ./outputs/t545

./replace_instrumented.exe '[^a-c]a-]' '@%&a'  < $ROOT/inputs/temp-test/600.inp.258.3 > ./outputs/t546

./replace_instrumented.exe '[^a-c]a-]' 'NEW'  < $ROOT/inputs/temp-test/211.inp.94.1 > ./outputs/t547

./replace_instrumented.exe '[^a-c]a-][^0-9][9-B]^$' 'a@nb@tc'  < $ROOT/inputs/temp-test/678.inp.294.9 > ./outputs/t548

./replace_instrumented.exe '[^a-c]a-][^0-9][9-B]^' 'a@nb@tc'  < $ROOT/inputs/temp-test/676.inp.294.1 > ./outputs/t549

./replace_instrumented.exe '[^a-c]a-][^0-9][9-B]^' 'a@nb@tc'  < $ROOT/inputs/temp-test/677.inp.294.3 > ./outputs/t550

./replace_instrumented.exe '[^a-c]a-c]' 'a@n'  < $ROOT/inputs/temp-test/581.inp.250.1 > ./outputs/t551

./replace_instrumented.exe '[^a-c]a-c]' 'a@n'  < $ROOT/inputs/temp-test/582.inp.250.2 > ./outputs/t552

./replace_instrumented.exe '[^a-c]a-c]@*-[^a--]-]-]-' 'a&'  < $ROOT/inputs/temp-test/1994.inp.847.1 > ./outputs/t553

./replace_instrumented.exe '[^a-c]a-c]@*-[^a--]-]-]-' 'a&'  < $ROOT/inputs/temp-test/1995.inp.847.2 > ./outputs/t554

./replace_instrumented.exe '[^a-c]a-c]@*-[^a--]-]-]-' 'a&'  < $ROOT/inputs/temp-test/1996.inp.847.3 > ./outputs/t555

./replace_instrumented.exe '[^a-c]c*' 'b@t'  < $ROOT/inputs/temp-test/1558.inp.667.1 > ./outputs/t556

./replace_instrumented.exe '[^a-c]c*' 'b@t'  < $ROOT/inputs/temp-test/1559.inp.667.2 > ./outputs/t557

./replace_instrumented.exe '[^a-c]c*' 'b@t'  < $ROOT/inputs/temp-test/1560.inp.667.3 > ./outputs/t558

./replace_instrumented.exe '[^a-c]c*' 'b@t'  < $ROOT/inputs/temp-test/1561.inp.667.4 > ./outputs/t559

./replace_instrumented.exe '[^c-aA-GA-G]' '`D)'\''CsjN5-8Dcm%JYz!iFF'  < $ROOT/inputs/input/ruin.1351 > ./outputs/t560

./replace_instrumented.exe '[^c-aA-GA]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY-G]' '`D)'\''CsjN5-8Dcm%JYz!iFF'  < $ROOT/inputs/input/ruin.1351 > ./outputs/t561

./replace_instrumented.exe '[^c-aA-GA]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY-G]-*?* *[a' '`D)'\''CsjN5-8Dcm%JYz!iFF'  < $ROOT/inputs/input/ruin.1351 > ./outputs/t562

./replace_instrumented.exe '[^c-aA-G]' '\.'  < $ROOT/inputs/input/ruin.1420 > ./outputs/t563

./replace_instrumented.exe '[^c-a]$' '( $Pn*#>~&BsFeg_'  < $ROOT/inputs/input/ruin.368 > ./outputs/t564

./replace_instrumented.exe '[^c-a]' '!'  < $ROOT/inputs/input/ruin.469 > ./outputs/t565

./replace_instrumented.exe '[^c-a]' ''\''n52Glpp'  < $ROOT/inputs/input/ruin.1535 > ./outputs/t566

./replace_instrumented.exe '[^c-a]' '*K2l6A0)5";'  < $ROOT/inputs/input/ruin.731 > ./outputs/t567

./replace_instrumented.exe '[^c-a]' 'Cd'\''V/"FE%-roxA3znMH"Vj/iEO{Tr]'  < $ROOT/inputs/input/ruin.690 > ./outputs/t568

./replace_instrumented.exe '[^c-a]' 'L=&XW&%JwE}YEQ"vBljIYg}l'  < $ROOT/inputs/input/ruin.494 > ./outputs/t569

./replace_instrumented.exe '[^c-a]' 'Vy^EeJ{O/i]=ys,]tXg]?;,,<g;AU*QZSavRY*4'  < $ROOT/inputs/input/ruin.25 > ./outputs/t570

./replace_instrumented.exe '[^c-a]' 'X'  < $ROOT/inputs/input/ruin.1887 > ./outputs/t571

./replace_instrumented.exe '[^c-a]' ']dcgBzE@$fo!1~q~Mu'  < $ROOT/inputs/input/ruin.79 > ./outputs/t572

./replace_instrumented.exe '[^c-a]' 'ai*J&OD~k5g{d%7nKT}yCFPq=tEUJEYc@Hon$lyR+t2\Cv=k&Z4'  < $ROOT/inputs/input/ruin.1818 > ./outputs/t573

./replace_instrumented.exe '[^c-a]' 'x'  < $ROOT/inputs/input/ruin.884 > ./outputs/t574

./replace_instrumented.exe '[^c-a]'\''' '1H}ZQ7/sx)W='  < $ROOT/inputs/input/ruin.173 > ./outputs/t575

./replace_instrumented.exe '[^c-a]@n' 'L=&XW&%JwE}YEQ"vBljIYg}l'  < $ROOT/inputs/input/ruin.494 > ./outputs/t576

./replace_instrumented.exe '[^c-ad]\8w[^c-ad]' '&4H~Nda9*ew0ux1#*F"*X3"/;[UiC=(Z@O-w6XEYiKkbBX-ZL%DtJ1dxHklBV\SP:C'  < $ROOT/inputs/input/ruin.1557 > ./outputs/t577

./replace_instrumented.exe '[^ec-a]' 'T}UP?R=Z[T|IG=mM'  < $ROOT/inputs/input/ruin.166 > ./outputs/t578

./replace_instrumented.exe '[^i]' 'aG:]y;Zm{7<\33O~hG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_J_Jp4?/`+iR&LbrJ},3'  < $ROOT/inputs/input/ruin.1040 > ./outputs/t579

./replace_instrumented.exe '[^i]' 'aG:]y;Zm{7<\33O~h_Jp4?/`+iR&LbrJ},3'  < $ROOT/inputs/input/ruin.1040 > ./outputs/t580

./replace_instrumented.exe '[^j]' '^'  < $ROOT/inputs/input/ruin.268 > ./outputs/t581

./replace_instrumented.exe '[^p&y=3[ZYp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIIgTBkz-}Z-a]^_`a-z-}z-}]' 'v5xI27<*qtgs#`vmdnC IH['  < $ROOT/inputs/input/ruin.1333 > ./outputs/t582

./replace_instrumented.exe '[^t]' '3A'  < $ROOT/inputs/input/ruin.1679 > ./outputs/t583

./replace_instrumented.exe '[^t]\jGt|Bd' '&IOTC3<-BYFp<SrAfdt]'  < $ROOT/inputs/input/ruin.1317 > ./outputs/t584

./replace_instrumented.exe '[^y]' 'Tc2k|h=&-k2k|h=&-kA{I^m)l>oO{GA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{Ge'  < $ROOT/inputs/input/ruin.1030 > ./outputs/t585

./replace_instrumented.exe '[^y]' 'Tce'  < $ROOT/inputs/input/ruin.1030 > ./outputs/t586

./replace_instrumented.exe '[^z-}0-9Z-a]^_`a]' 'U'  < $ROOT/inputs/input/ruin.1611 > ./outputs/t587

./replace_instrumented.exe '[^z-}0-9]' '-Z&:|zzG_EZcTV.:M*0"c^'  < $ROOT/inputs/input/ruin.1843 > ./outputs/t588

./replace_instrumented.exe '[^z-}>-A0-9A-G>-A0-9]' '7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpX'  < $ROOT/inputs/input/ruin.1054 > ./outputs/t589

./replace_instrumented.exe '[^z-}>-A0-9A-G>-A0-9]' 'X'  < $ROOT/inputs/input/ruin.1054 > ./outputs/t590

./replace_instrumented.exe '[^z-}>-A]' 'H'  < $ROOT/inputs/input/ruin.1933 > ./outputs/t591

./replace_instrumented.exe '[^z-}A-Gc-ad?]' '&r)ZKX29[^e-9$'  < $ROOT/inputs/input/ruin.745 > ./outputs/t592

./replace_instrumented.exe '[^z-}Z-a]^_`a-z-}z-}]' 'v5xI27<*qtgs#`vmdnC IH['  < $ROOT/inputs/input/ruin.1333 > ./outputs/t593

./replace_instrumented.exe '[^z-}Z-a]^_`a-z-}z-}]' 'v5xz-}Z-a]^_`a-z-}z-}]z-}Z-a]^_`a-z-}z-}]z-}Z-a]^_`a-z-}z-}]z-}Z-a]^_`a-z-}z-}]z-}Z-a]^_`a-z-}z-}]z-}Z-a]^_`a-z-}z-}]z-}Z-a]^_`a-z-}z-}]z-}Z-a]^_`a-z-}z-}]I27<*qtgs#`vmdnC IH[0-9]*[3-4]'  < $ROOT/inputs/input/ruin.1333 > ./outputs/t594

./replace_instrumented.exe '[^z-}Z-a]^_`a]' '&'  < $ROOT/inputs/input/ruin.96 > ./outputs/t595

./replace_instrumented.exe '[^z-}]' '!tYvZIshp/O-, z$MMuM0D0Wl[w'  < $ROOT/inputs/input/ruin.1369 > ./outputs/t596

./replace_instrumented.exe '[^z-}]' '#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO(B='  < $ROOT/inputs/input/ruin.1197 > ./outputs/t597

./replace_instrumented.exe '[^z-}]' '(]E[? g0RJ5hr+k^RH|*q0V^1p#/qQFY%l3_{n[6PFv_frgx[p&G<^#K2Hfw6'  < $ROOT/inputs/input/ruin.178 > ./outputs/t598

./replace_instrumented.exe '[^z-}]' '*C0e+YNj4(j?V|i|z,[YlSNT[z-DW(7.ByKgI2|4h16!)>y Jn)V(0wVfe'  < $ROOT/inputs/input/ruin.746 > ./outputs/t599

./replace_instrumented.exe '[^z-}]' '1gF=n$u]g/C}w8N6'  < $ROOT/inputs/input/ruin.1207 > ./outputs/t600

./replace_instrumented.exe '[^z-}]' '9[u+JB/|waE*e&|<.eSjw]z2%O#}`XSA%F3R['  < $ROOT/inputs/input/ruin.132 > ./outputs/t601

./replace_instrumented.exe '[^z-}]' '>WbZbdg'\''c'  < $ROOT/inputs/input/ruin.653 > ./outputs/t602

./replace_instrumented.exe '[^z-}]' '@NH|fHRf5]'\''w5; %%Q'\''Ft=st0eg6j\)j}H'  < $ROOT/inputs/input/ruin.1975 > ./outputs/t603

./replace_instrumented.exe '[^z-}]' 'B\qm8SPL=zX>(KLz.kURG ?bDPFy8~p+5;Q'  < $ROOT/inputs/input/ruin.1381 > ./outputs/t604

./replace_instrumented.exe '[^z-}]' 'G'  < $ROOT/inputs/input/ruin.796 > ./outputs/t605

./replace_instrumented.exe '[^z-}]' 'R'  < $ROOT/inputs/input/ruin.1664 > ./outputs/t606

./replace_instrumented.exe '[^z-}]' '_&z-.p"MapF'  < $ROOT/inputs/input/ruin.843 > ./outputs/t607

./replace_instrumented.exe '[^z-}]*?' ' '  < $ROOT/inputs/input/ruin.1192 > ./outputs/t608

./replace_instrumented.exe '[^z-}][^z-}]' ' fO?sCGL)h$78e5TolWx>y1s v]'  < $ROOT/inputs/input/ruin.1705 > ./outputs/t609

./replace_instrumented.exe '[^z-}c-a]' 'h'  < $ROOT/inputs/input/ruin.1221 > ./outputs/t610

./replace_instrumented.exe '[^z-}c-a]@n' 'h&[0-9]'  < $ROOT/inputs/input/ruin.1221 > ./outputs/t611

./replace_instrumented.exe '[^z-}z-}*c-a]' 'L'  < $ROOT/inputs/input/ruin.1838 > ./outputs/t612

./replace_instrumented.exe '[^{]' 'V>m9RW"i6a==?f&}(9'  < $ROOT/inputs/input/ruin.1798 > ./outputs/t613

./replace_instrumented.exe '[^|]' '>'  < $ROOT/inputs/input/ruin.1301 > ./outputs/t614

./replace_instrumented.exe '[_-z]' 'NEW'  < $ROOT/inputs/temp-test/1645.inp.701.1 > ./outputs/t615

./replace_instrumented.exe '[_-z]' 'NEW'  < $ROOT/inputs/temp-test/1646.inp.701.3 > ./outputs/t616

./replace_instrumented.exe '[_-z]-' '@n'  < $ROOT/inputs/temp-test/809.inp.348.1 > ./outputs/t617

./replace_instrumented.exe '[_-z]-' '@n'  < $ROOT/inputs/temp-test/810.inp.348.2 > ./outputs/t618

./replace_instrumented.exe '[_-z]-[0-9]^-] ^a-c]-??@*' 'b@t'  < $ROOT/inputs/temp-test/1420.inp.610.1 > ./outputs/t619

./replace_instrumented.exe '[_-z]-^ [^0-9][^a-][a-c]-[^9-B]-?[^9-B]?@**[a-c@t*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1757.inp.747.1 > ./outputs/t620

./replace_instrumented.exe '[_-z]-^ [^0-9][^a-][a-c]-[^9-B]-?[^9-B]?@**[a-c@t*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1758.inp.747.3 > ./outputs/t621

./replace_instrumented.exe '[_-z]?' ''  < $ROOT/inputs/temp-test/169.inp.76.1 > ./outputs/t622

./replace_instrumented.exe '[_-z]?' ''  < $ROOT/inputs/temp-test/170.inp.76.2 > ./outputs/t623

./replace_instrumented.exe '[_-z]?' 'a@n'  < $ROOT/inputs/temp-test/308.inp.138.1 > ./outputs/t624

./replace_instrumented.exe '[_-z]?' 'a@n'  < $ROOT/inputs/temp-test/309.inp.138.2 > ./outputs/t625

./replace_instrumented.exe '[_-z]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1027.inp.442.1 > ./outputs/t626

./replace_instrumented.exe '[_-z]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1028.inp.442.3 > ./outputs/t627

./replace_instrumented.exe '[_-z]?' 'b@t'  < $ROOT/inputs/temp-test/2182.inp.923.1 > ./outputs/t628

./replace_instrumented.exe '[_-z]@*A' '&'  < $ROOT/inputs/temp-test/1480.inp.635.1 > ./outputs/t629

./replace_instrumented.exe '[_-z][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/1380.inp.592.1 > ./outputs/t630

./replace_instrumented.exe '[_-z][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/1381.inp.592.2 > ./outputs/t631

./replace_instrumented.exe '[_-z][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/1382.inp.592.3 > ./outputs/t632

./replace_instrumented.exe '[_-z][^a-c' '@%&a'  < $ROOT/inputs/temp-test/344.inp.151.1 > ./outputs/t633

./replace_instrumented.exe '[_-z][^a-c' '@%&a'  < $ROOT/inputs/temp-test/345.inp.151.2 > ./outputs/t634

./replace_instrumented.exe '[_-z][^a-c' '@%&a@'  < $ROOT/inputs/temp-test/345.inp.151.2 > ./outputs/t635

./replace_instrumented.exe '[_-z][^a-c@' '@%&a@'  < $ROOT/inputs/temp-test/344.inp.151.1 > ./outputs/t636

./replace_instrumented.exe '[_-z]^' '&a@%'  < $ROOT/inputs/temp-test/100.inp.45.1 > ./outputs/t637

./replace_instrumented.exe '[_-z]^' '&a@%'  < $ROOT/inputs/temp-test/101.inp.45.3 > ./outputs/t638

./replace_instrumented.exe '[a--' 'b@t'  < $ROOT/inputs/temp-test/2093.inp.887.1 > ./outputs/t639

./replace_instrumented.exe '[a--' 'b@t'  < $ROOT/inputs/temp-test/2094.inp.887.3 > ./outputs/t640

./replace_instrumented.exe '[a---*-' 'a@n'  < $ROOT/inputs/temp-test/1877.inp.796.1 > ./outputs/t641

./replace_instrumented.exe '[a---*-' 'a@n'  < $ROOT/inputs/temp-test/1878.inp.796.3 > ./outputs/t642

./replace_instrumented.exe '[a---*-' 'a@n'  < $ROOT/inputs/temp-test/1879.inp.796.4 > ./outputs/t643

./replace_instrumented.exe '[a---?-a-][^0-9]^' '@%@&'  < $ROOT/inputs/temp-test/1922.inp.817.1 > ./outputs/t644

./replace_instrumented.exe '[a---?-a-][^0-9]^' '@%@&'  < $ROOT/inputs/temp-test/1923.inp.817.3 > ./outputs/t645

./replace_instrumented.exe '[a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/496.inp.217.1 > ./outputs/t646

./replace_instrumented.exe '[a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/497.inp.217.3 > ./outputs/t647

./replace_instrumented.exe '[a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9][a--] *^a-c]?-[0-9]?--a-]@t*?@[[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/496.inp.217.1 > ./outputs/t648

./replace_instrumented.exe '[a--]?-?@[[^a-c]' '&a@%'  < $ROOT/inputs/temp-test/109.inp.50.1 > ./outputs/t649

./replace_instrumented.exe '[a--]?-?@[[^a-c]' '&a@%'  < $ROOT/inputs/temp-test/110.inp.50.2 > ./outputs/t650

./replace_instrumented.exe '[a--]?-?@[[^a-c]' '&a@%'  < $ROOT/inputs/temp-test/111.inp.50.3 > ./outputs/t651

./replace_instrumented.exe '[a--]?[a--]-@n*-[^@@][a--]-' ''  < $ROOT/inputs/temp-test/108.inp.49.1 > ./outputs/t652

./replace_instrumented.exe '[a--]@@*^-]?-[9-B][^@@]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/718.inp.310.1 > ./outputs/t653

./replace_instrumented.exe '[a--]@@*^-]?-[9-B][^@@]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/719.inp.310.2 > ./outputs/t654

./replace_instrumented.exe '[a--][^a-c]' '@n'  < $ROOT/inputs/temp-test/914.inp.394.1 > ./outputs/t655

./replace_instrumented.exe '[a--][^a-c]' '@n'  < $ROOT/inputs/temp-test/915.inp.394.4 > ./outputs/t656

./replace_instrumented.exe '[a--b] *' 'b@t'  < $ROOT/inputs/temp-test/301.inp.135.2 > ./outputs/t657

./replace_instrumented.exe '[a--b]$' '&a@%'  < $ROOT/inputs/temp-test/1422.inp.611.9 > ./outputs/t658

./replace_instrumented.exe '[a--b]' '&a@%'  < $ROOT/inputs/temp-test/1421.inp.611.2 > ./outputs/t659

./replace_instrumented.exe '[a--b]?$' 'b@t'  < $ROOT/inputs/temp-test/2111.inp.894.8 > ./outputs/t660

./replace_instrumented.exe '[a--b]?' 'b@t'  < $ROOT/inputs/temp-test/2109.inp.894.1 > ./outputs/t661

./replace_instrumented.exe '[a--b]?' 'b@t'  < $ROOT/inputs/temp-test/2110.inp.894.2 > ./outputs/t662

./replace_instrumented.exe '[a--b]?[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1237.inp.531.1 > ./outputs/t663

./replace_instrumented.exe '[a--b]?[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1238.inp.531.2 > ./outputs/t664

./replace_instrumented.exe '[a--b]@*[^a-c] *-[^0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1962.inp.833.1 > ./outputs/t665

./replace_instrumented.exe '[a--b]@*[^a-c] *-[^0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1963.inp.833.4 > ./outputs/t666

./replace_instrumented.exe '[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]' ''  < $ROOT/inputs/temp-test/833.inp.359.1 > ./outputs/t667

./replace_instrumented.exe '[a--b][-z][^9-B]@t*[^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]' ''  < $ROOT/inputs/temp-test/833.inp.359.1 > ./outputs/t668

./replace_instrumented.exe '[a--b]c$' 'NEW'  < $ROOT/inputs/temp-test/711.inp.307.9 > ./outputs/t669

./replace_instrumented.exe '[a--b]c' 'NEW'  < $ROOT/inputs/temp-test/708.inp.307.1 > ./outputs/t670

./replace_instrumented.exe '[a--b]c' 'NEW'  < $ROOT/inputs/temp-test/709.inp.307.2 > ./outputs/t671

./replace_instrumented.exe '[a--b]c' 'NEW'  < $ROOT/inputs/temp-test/710.inp.307.3 > ./outputs/t672

./replace_instrumented.exe '[a-?' 'NEW'  < $ROOT/inputs/temp-test/734.inp.316.1 > ./outputs/t673

./replace_instrumented.exe '[a-?' 'NEW'  < $ROOT/inputs/temp-test/735.inp.316.2 > ./outputs/t674

./replace_instrumented.exe '[a-?' 'NEW'  < $ROOT/inputs/temp-test/736.inp.316.3 > ./outputs/t675

./replace_instrumented.exe '[a-@[*' 'NEW'  < $ROOT/inputs/temp-test/860.inp.370.1 > ./outputs/t676

./replace_instrumented.exe '[a-@[*' 'NEW'  < $ROOT/inputs/temp-test/861.inp.370.2 > ./outputs/t677

./replace_instrumented.exe '[a-[^0-9] *-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1777.inp.757.1 > ./outputs/t678

./replace_instrumented.exe '[a-[^0-9]' ''  < $ROOT/inputs/temp-test/839.inp.361.1 > ./outputs/t679

./replace_instrumented.exe '[a-[^0-9]' ''  < $ROOT/inputs/temp-test/840.inp.361.2 > ./outputs/t680

./replace_instrumented.exe '[a-[^0-9]' ''  < $ROOT/inputs/temp-test/841.inp.361.3 > ./outputs/t681

./replace_instrumented.exe '[a-[^0-9]' ''  < $ROOT/inputs/temp-test/842.inp.361.4 > ./outputs/t682

./replace_instrumented.exe '[a-[^0-9]' '@t'  < $ROOT/inputs/temp-test/1111.inp.478.1 > ./outputs/t683

./replace_instrumented.exe '[a-[^0-9]' '@t'  < $ROOT/inputs/temp-test/1112.inp.478.2 > ./outputs/t684

./replace_instrumented.exe '[a-[^0-9]' '@t'  < $ROOT/inputs/temp-test/1113.inp.478.4 > ./outputs/t685

./replace_instrumented.exe '[a-[^0-9]A*[^9-B][^a-c[^a-c@[-?[^-[0-9]?[^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/97.inp.44.1 > ./outputs/t686

./replace_instrumented.exe '[a-[^0-9]A*[^9-B][^a-c[^a-c@[-?[^-[0-9]?[^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/98.inp.44.2 > ./outputs/t687

./replace_instrumented.exe '[a-[^0-9]A*[^9-B][^a-c[^a-c@[-?[^-[0-9]?[^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/99.inp.44.3 > ./outputs/t688

./replace_instrumented.exe '[a-]' '&@n!4'  < $ROOT/inputs/temp-test/641.inp.277.1 > ./outputs/t689

./replace_instrumented.exe '[a-]' '&@n'  < $ROOT/inputs/temp-test/641.inp.277.1 > ./outputs/t690

./replace_instrumented.exe '[a-]' '&@n'  < $ROOT/inputs/temp-test/642.inp.277.3 > ./outputs/t691

./replace_instrumented.exe '[a-]' '@%@&'  < $ROOT/inputs/temp-test/1259.inp.541.1 > ./outputs/t692

./replace_instrumented.exe '[a-]' '@%@&'  < $ROOT/inputs/temp-test/1260.inp.541.2 > ./outputs/t693

./replace_instrumented.exe '[a-]' '@%@&'  < $ROOT/inputs/temp-test/1261.inp.541.3 > ./outputs/t694

./replace_instrumented.exe '[a-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1543.inp.661.1 > ./outputs/t695

./replace_instrumented.exe '[a-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1544.inp.661.2 > ./outputs/t696

./replace_instrumented.exe '[a-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1545.inp.661.3 > ./outputs/t697

./replace_instrumented.exe '[a-]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t698

./replace_instrumented.exe '[a-]- -^a-c]?[^-?' 'NEW'  < $ROOT/inputs/temp-test/1449.inp.621.1 > ./outputs/t699

./replace_instrumented.exe '[a-]-' '@n'  < $ROOT/inputs/temp-test/641.inp.277.1 > ./outputs/t700

./replace_instrumented.exe '[a-]-' '@n'  < $ROOT/inputs/temp-test/642.inp.277.3 > ./outputs/t701

./replace_instrumented.exe '[a-]-' 'NEW'  < $ROOT/inputs/temp-test/1250.inp.536.1 > ./outputs/t702

./replace_instrumented.exe '[a-]-' 'NEW'  < $ROOT/inputs/temp-test/1251.inp.536.2 > ./outputs/t703

./replace_instrumented.exe '[a-]-*[a-c][^a--]-' '@t'  < $ROOT/inputs/temp-test/1090.inp.470.1 > ./outputs/t704

./replace_instrumented.exe '[a-][^9-B]?[0-9][^a-c]-?@[-?[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/2317.inp.983.1 > ./outputs/t705

./replace_instrumented.exe '[a-][^a-c]-?' '&'  < $ROOT/inputs/temp-test/745.inp.319.1 > ./outputs/t706

./replace_instrumented.exe '[a-][^a-c]-?' '&'  < $ROOT/inputs/temp-test/746.inp.319.2 > ./outputs/t707

./replace_instrumented.exe '[a-]^-[a-c]' 'a@n'  < $ROOT/inputs/temp-test/1556.inp.666.1 > ./outputs/t708

./replace_instrumented.exe '[a-]^-[a-c]' 'a@n'  < $ROOT/inputs/temp-test/1557.inp.666.3 > ./outputs/t709

./replace_instrumented.exe '[a-]c' 'NEW'  < $ROOT/inputs/temp-test/2137.inp.905.1 > ./outputs/t710

./replace_instrumented.exe '[a-]c' 'NEW'  < $ROOT/inputs/temp-test/2138.inp.905.3 > ./outputs/t711

./replace_instrumented.exe '[a-c%[9-B]c*^-[0-9]-^*?@[-[^a-c]?' 'b@t'  < $ROOT/inputs/temp-test/2344.inp.996.1 > ./outputs/t712

./replace_instrumented.exe '[a-c' '&a@%'  < $ROOT/inputs/temp-test/1914.inp.813.1 > ./outputs/t713

./replace_instrumented.exe '[a-c' '&a@%'  < $ROOT/inputs/temp-test/1915.inp.813.3 > ./outputs/t714

./replace_instrumented.exe '[a-c' '@%@&'  < $ROOT/inputs/temp-test/1969.inp.837.2 > ./outputs/t715

./replace_instrumented.exe '[a-c' '@%@&'  < $ROOT/inputs/temp-test/1970.inp.837.3 > ./outputs/t716

./replace_instrumented.exe '[a-c' '@%@&'  < $ROOT/inputs/temp-test/1971.inp.837.4 > ./outputs/t717

./replace_instrumented.exe '[a-c-@@[0-9][^a-]?a-c]--c*' '@%@&'  < $ROOT/inputs/temp-test/1975.inp.839.1 > ./outputs/t718

./replace_instrumented.exe '[a-c?$'   < $ROOT/inputs/temp-test/520.inp.225.8 > ./outputs/t719

./replace_instrumented.exe '[a-c?$' 'a&'  < $ROOT/inputs/temp-test/520.inp.225.8 > ./outputs/t720

./replace_instrumented.exe '[a-c?'   < $ROOT/inputs/temp-test/517.inp.225.2 > ./outputs/t721

./replace_instrumented.exe '[a-c?'   < $ROOT/inputs/temp-test/518.inp.225.3 > ./outputs/t722

./replace_instrumented.exe '[a-c?' 'a&'  < $ROOT/inputs/temp-test/516.inp.225.1 > ./outputs/t723

./replace_instrumented.exe '[a-c?' 'a&'  < $ROOT/inputs/temp-test/517.inp.225.2 > ./outputs/t724

./replace_instrumented.exe '[a-c?' 'a&'  < $ROOT/inputs/temp-test/518.inp.225.3 > ./outputs/t725

./replace_instrumented.exe '[a-c?' 'a&'  < $ROOT/inputs/temp-test/519.inp.225.4 > ./outputs/t726

./replace_instrumented.exe '[a-c?*$' 'a&'  < $ROOT/inputs/temp-test/520.inp.225.8 > ./outputs/t727

./replace_instrumented.exe '[a-c?*' 'a&'  < $ROOT/inputs/temp-test/517.inp.225.2 > ./outputs/t728

./replace_instrumented.exe '[a-c?*' 'a&'  < $ROOT/inputs/temp-test/518.inp.225.3 > ./outputs/t729

./replace_instrumented.exe '[a-c?*' 'a&'  < $ROOT/inputs/temp-test/519.inp.225.4 > ./outputs/t730

./replace_instrumented.exe '[a-c?-?-[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1989.inp.845.1 > ./outputs/t731

./replace_instrumented.exe '[a-c?-?-[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1990.inp.845.3 > ./outputs/t732

./replace_instrumented.exe '[a-c[9-B]c*^-[0-9]-^*?@[-%[^a-c]?' 'b@t'  < $ROOT/inputs/temp-test/2346.inp.996.3 > ./outputs/t733

./replace_instrumented.exe '[a-c[9-B]c*^-[0-9]-^*?@[-[^a-c]?' 'b@t'  < $ROOT/inputs/temp-test/2344.inp.996.1 > ./outputs/t734

./replace_instrumented.exe '[a-c[9-B]c*^-[0-9]-^*?@[-[^a-c]?' 'b@t'  < $ROOT/inputs/temp-test/2345.inp.996.2 > ./outputs/t735

./replace_instrumented.exe '[a-c[9-B]c*^-[0-9]-^*?@[-[^a-c]?' 'b@t'  < $ROOT/inputs/temp-test/2346.inp.996.3 > ./outputs/t736

./replace_instrumented.exe '[a-c[^-' 'a&'  < $ROOT/inputs/temp-test/1135.inp.488.1 > ./outputs/t737

./replace_instrumented.exe '[a-c[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/1429.inp.614.1 > ./outputs/t738

./replace_instrumented.exe '[a-c[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/1430.inp.614.2 > ./outputs/t739

./replace_instrumented.exe '[a-c] *' 'a@nb@tc'  < $ROOT/inputs/temp-test/2106.inp.893.1 > ./outputs/t740

./replace_instrumented.exe '[a-c] *' 'a@nb@tc'  < $ROOT/inputs/temp-test/2107.inp.893.2 > ./outputs/t741

./replace_instrumented.exe '[a-c] *' 'a@nb@tc'  < $ROOT/inputs/temp-test/2108.inp.893.3 > ./outputs/t742

./replace_instrumented.exe '[a-c]%[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/2332.inp.989.1 > ./outputs/t743

./replace_instrumented.exe '[a-c]%[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/2333.inp.989.2 > ./outputs/t744

./replace_instrumented.exe '[a-c]' '&'  < $ROOT/inputs/temp-test/944.inp.406.1 > ./outputs/t745

./replace_instrumented.exe '[a-c]' '&'  < $ROOT/inputs/temp-test/945.inp.406.2 > ./outputs/t746

./replace_instrumented.exe '[a-c]' '@%@&'  < $ROOT/inputs/temp-test/1207.inp.518.1 > ./outputs/t747

./replace_instrumented.exe '[a-c]' '@%@&'  < $ROOT/inputs/temp-test/1208.inp.518.4 > ./outputs/t748

./replace_instrumented.exe '[a-c]' 'NEW'  < $ROOT/inputs/temp-test/1772.inp.755.1 > ./outputs/t749

./replace_instrumented.exe '[a-c]' 'NEW'  < $ROOT/inputs/temp-test/1773.inp.755.2 > ./outputs/t750

./replace_instrumented.exe '[a-c]' 'a@n'  < $ROOT/inputs/temp-test/819.inp.353.1 > ./outputs/t751

./replace_instrumented.exe '[a-c]' 'a@n'  < $ROOT/inputs/temp-test/820.inp.353.2 > ./outputs/t752

./replace_instrumented.exe '[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1340.inp.576.1 > ./outputs/t753

./replace_instrumented.exe '[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1341.inp.576.2 > ./outputs/t754

./replace_instrumented.exe '[a-c]*' '@%&a'  < $ROOT/inputs/temp-test/83.inp.37.1 > ./outputs/t755

./replace_instrumented.exe '[a-c]*-' 'NEW'  < $ROOT/inputs/temp-test/44.inp.19.1 > ./outputs/t756

./replace_instrumented.exe '[a-c]*-' 'NEW'  < $ROOT/inputs/temp-test/45.inp.19.3 > ./outputs/t757

./replace_instrumented.exe '[a-c]*??[a-c]' '@%@&'  < $ROOT/inputs/temp-test/369.inp.161.1 > ./outputs/t758

./replace_instrumented.exe '[a-c]*??[a-c]' '@%@&'  < $ROOT/inputs/temp-test/370.inp.161.2 > ./outputs/t759

./replace_instrumented.exe '[a-c]*??[a-c]' '@%@&'  < $ROOT/inputs/temp-test/371.inp.161.3 > ./outputs/t760

./replace_instrumented.exe '[a-c]-' '@%&a'  < $ROOT/inputs/temp-test/1846.inp.784.1 > ./outputs/t761

./replace_instrumented.exe '[a-c]-' '@%&a'  < $ROOT/inputs/temp-test/1847.inp.784.2 > ./outputs/t762

./replace_instrumented.exe '[a-c]-' '@%&a'  < $ROOT/inputs/temp-test/1848.inp.784.3 > ./outputs/t763

./replace_instrumented.exe '[a-c]-' '@%@&'  < $ROOT/inputs/temp-test/117.inp.54.1 > ./outputs/t764

./replace_instrumented.exe '[a-c]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1630.inp.694.1 > ./outputs/t765

./replace_instrumented.exe '[a-c]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1631.inp.694.3 > ./outputs/t766

./replace_instrumented.exe '[a-c]?' '&@n'  < $ROOT/inputs/temp-test/644.inp.279.1 > ./outputs/t767

./replace_instrumented.exe '[a-c]?' '&@naaaa'  < $ROOT/inputs/temp-test/644.inp.279.1 > ./outputs/t768

./replace_instrumented.exe '[a-c]?' '@t'  < $ROOT/inputs/temp-test/1843.inp.783.1 > ./outputs/t769

./replace_instrumented.exe '[a-c]?' '@t'  < $ROOT/inputs/temp-test/1844.inp.783.2 > ./outputs/t770

./replace_instrumented.exe '[a-c]?' '@t'  < $ROOT/inputs/temp-test/1845.inp.783.3 > ./outputs/t771

./replace_instrumented.exe '[a-c]?' '@t'  < $ROOT/inputs/temp-test/644.inp.279.1 > ./outputs/t772

./replace_instrumented.exe '[a-c]?' '@t'  < $ROOT/inputs/temp-test/645.inp.279.2 > ./outputs/t773

./replace_instrumented.exe '[a-c]?' 'NEW'  < $ROOT/inputs/temp-test/750.inp.322.1 > ./outputs/t774

./replace_instrumented.exe '[a-c]?' 'NEW'  < $ROOT/inputs/temp-test/751.inp.322.3 > ./outputs/t775

./replace_instrumented.exe '[a-c]??@n[^9-B]??-' '@t'  < $ROOT/inputs/temp-test/1278.inp.549.1 > ./outputs/t776

./replace_instrumented.exe '[a-c]??@n[^9-B]??-' '@t'  < $ROOT/inputs/temp-test/1279.inp.549.2 > ./outputs/t777

./replace_instrumented.exe '[a-c]??@n[^9-B]??-' '@t'  < $ROOT/inputs/temp-test/1280.inp.549.3 > ./outputs/t778

./replace_instrumented.exe '[a-c]?[0-9]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t779

./replace_instrumented.exe '[a-c]?[0-9]^*' 'NEW'  < $ROOT/inputs/temp-test/1822.inp.775.1 > ./outputs/t780

./replace_instrumented.exe '[a-c]?[0-9]^*' 'NEW'  < $ROOT/inputs/temp-test/1823.inp.775.3 > ./outputs/t781

./replace_instrumented.exe '[a-c]?[^9-B][9-B][^a--b][0-9]-@@*' '@%&a'  < $ROOT/inputs/temp-test/489.inp.214.1 > ./outputs/t782

./replace_instrumented.exe '[a-c]?[^9-B][9-B][^a--b][0-9]-@@*@' '@%&a'  < $ROOT/inputs/temp-test/489.inp.214.1 > ./outputs/t783

./replace_instrumented.exe '[a-c]?a-]??-@*^a-c][9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1471.inp.631.1 > ./outputs/t784

./replace_instrumented.exe '[a-c]?a-]??-@*^a-c][9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1472.inp.631.3 > ./outputs/t785

./replace_instrumented.exe '[a-c]@t' '&'  < $ROOT/inputs/temp-test/1389.inp.596.1 > ./outputs/t786

./replace_instrumented.exe '[a-c]@t' '&'  < $ROOT/inputs/temp-test/1390.inp.596.3 > ./outputs/t787

./replace_instrumented.exe '[a-c]@t' ''  < $ROOT/inputs/temp-test/1986.inp.844.1 > ./outputs/t788

./replace_instrumented.exe '[a-c]@t' ''  < $ROOT/inputs/temp-test/1987.inp.844.2 > ./outputs/t789

./replace_instrumented.exe '[a-c]@t' ''  < $ROOT/inputs/temp-test/1988.inp.844.3 > ./outputs/t790

./replace_instrumented.exe '[a-c]A' '&'  < $ROOT/inputs/temp-test/922.inp.398.1 > ./outputs/t791

./replace_instrumented.exe '[a-c]A' '&'  < $ROOT/inputs/temp-test/923.inp.398.2 > ./outputs/t792

./replace_instrumented.exe '[a-c]A' '&'  < $ROOT/inputs/temp-test/924.inp.398.3 > ./outputs/t793

./replace_instrumented.exe '[a-c][--' '&a@%'  < $ROOT/inputs/temp-test/1598.inp.680.1 > ./outputs/t794

./replace_instrumented.exe '[a-c][--' '&a@%'  < $ROOT/inputs/temp-test/1599.inp.680.2 > ./outputs/t795

./replace_instrumented.exe '[a-c][^0-9]' '&@n'  < $ROOT/inputs/temp-test/694.inp.300.9 > ./outputs/t796

./replace_instrumented.exe '[a-c][^0-9]' '&@n[0-9]'  < $ROOT/inputs/temp-test/694.inp.300.9 > ./outputs/t797

./replace_instrumented.exe '[a-c][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/535.inp.232.1 > ./outputs/t798

./replace_instrumented.exe '[a-c][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/536.inp.232.2 > ./outputs/t799

./replace_instrumented.exe '[a-c][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/537.inp.232.3 > ./outputs/t800

./replace_instrumented.exe '[a-c][^0-9]*[a-c]' '&@n&t'  < $ROOT/inputs/temp-test/690.inp.300.1 > ./outputs/t801

./replace_instrumented.exe '[a-c][^0-9]*[a-c]' '&@n'  < $ROOT/inputs/temp-test/690.inp.300.1 > ./outputs/t802

./replace_instrumented.exe '[a-c][^0-9]*[a-c]' '&@n'  < $ROOT/inputs/temp-test/691.inp.300.2 > ./outputs/t803

./replace_instrumented.exe '[a-c][^0-9]*[a-c]' '&@n'  < $ROOT/inputs/temp-test/692.inp.300.3 > ./outputs/t804

./replace_instrumented.exe '[a-c][^0-9]*[a-c]' '&@na@t@t'  < $ROOT/inputs/temp-test/691.inp.300.2 > ./outputs/t805

./replace_instrumented.exe '[a-c][^0-9]-*-[a-c]-$' '@n'  < $ROOT/inputs/temp-test/694.inp.300.9 > ./outputs/t806

./replace_instrumented.exe '[a-c][^0-9]-*-[a-c]-' '@n'  < $ROOT/inputs/temp-test/690.inp.300.1 > ./outputs/t807

./replace_instrumented.exe '[a-c][^0-9]-*-[a-c]-' '@n'  < $ROOT/inputs/temp-test/691.inp.300.2 > ./outputs/t808

./replace_instrumented.exe '[a-c][^0-9]-*-[a-c]-' '@n'  < $ROOT/inputs/temp-test/692.inp.300.3 > ./outputs/t809

./replace_instrumented.exe '[a-c][^9-B]' 'NEW'  < $ROOT/inputs/temp-test/2332.inp.989.1 > ./outputs/t810

./replace_instrumented.exe '[a-c][^9-B]' 'NEW'  < $ROOT/inputs/temp-test/2333.inp.989.2 > ./outputs/t811

./replace_instrumented.exe '[a-c][^@n]-[^a-c' '@%@&'  < $ROOT/inputs/temp-test/64.inp.28.1 > ./outputs/t812

./replace_instrumented.exe '[a-c][^@n]-[^a-c' '@%@&'  < $ROOT/inputs/temp-test/65.inp.28.2 > ./outputs/t813

./replace_instrumented.exe '[a-c][^a-c]' 'a&'  < $ROOT/inputs/temp-test/1685.inp.718.1 > ./outputs/t814

./replace_instrumented.exe '[a-c][^a-c]' 'a&'  < $ROOT/inputs/temp-test/1686.inp.718.3 > ./outputs/t815

./replace_instrumented.exe '[a-c]^-]' 'NEW'  < $ROOT/inputs/temp-test/1956.inp.830.1 > ./outputs/t816

./replace_instrumented.exe '[a-c]^-]' 'NEW'  < $ROOT/inputs/temp-test/1957.inp.830.2 > ./outputs/t817

./replace_instrumented.exe '[a-c]^-]' 'NEW'  < $ROOT/inputs/temp-test/1958.inp.830.3 > ./outputs/t818

./replace_instrumented.exe '[a-cc*' 'a@n'  < $ROOT/inputs/temp-test/925.inp.399.1 > ./outputs/t819

./replace_instrumented.exe '[a-cc*' 'a@n'  < $ROOT/inputs/temp-test/926.inp.399.2 > ./outputs/t820

./replace_instrumented.exe '[a-cc*' 'a@n'  < $ROOT/inputs/temp-test/927.inp.399.3 > ./outputs/t821

./replace_instrumented.exe '[a-d]' '&@n'  < $ROOT/inputs/moni/f8.inp > ./outputs/t822

./replace_instrumented.exe '[a-z0-9]@n' '?&<N#N4zMu+/?$@,"oa`nt=1CL!g3y*(k((w!.4aPc>wSP2w2'  < $ROOT/inputs/input/ruin.487 > ./outputs/t823

./replace_instrumented.exe '[a-z]$' 6666666  < $ROOT/inputs/moni/f6.inp > ./outputs/t824

./replace_instrumented.exe '[a-z]*' 'c'  < $ROOT/inputs/moni/f7.inp > ./outputs/t825

./replace_instrumented.exe '[a-z]@n' ';S&=:zD+0/]VKClfA;8d-(~bTN"m'  < $ROOT/inputs/input/ruin.1086 > ./outputs/t826

./replace_instrumented.exe '[a-z]@n' 'P&p'  < $ROOT/inputs/input/ruin.276 > ./outputs/t827

./replace_instrumented.exe '[a-z]@n' 'y&8sdW9T'  < $ROOT/inputs/input/ruin.1065 > ./outputs/t828

./replace_instrumented.exe '[c-a>-AZ-a]^_`a->-A>-A-c-ac-a-A-GABCDEFG-z-}z-}]' '/pWrCGn $(=Vs1rb~eI-_'  < $ROOT/inputs/input/ruin.243 > ./outputs/t829

./replace_instrumented.exe '[c-a>-A]' 'Mc\}+8d\*7-pc Iw4hhz;o>M0T q:ct)|%} 5R\x8a|3y@A\-`$e'  < $ROOT/inputs/input/ruin.56 > ./outputs/t830

./replace_instrumented.exe '[c-aA-GA-G]' '~'  < $ROOT/inputs/input/ruin.1769 > ./outputs/t831

./replace_instrumented.exe '[c-aA-GZ-a]^_`a]@@?' 'I8-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_DDe(Gk8G'  < $ROOT/inputs/input/ruin.1050 > ./outputs/t832

./replace_instrumented.exe '[c-aA-GZ-a]^_`a]@@?' 'I8DDe(Gk8G'  < $ROOT/inputs/input/ruin.1050 > ./outputs/t833

./replace_instrumented.exe '[c-aA-G]' '.8bt`e.7uXtI;mb)w4,*v%}s=:<?cQ6 k=#@zJHd'  < $ROOT/inputs/input/ruin.1017 > ./outputs/t834

./replace_instrumented.exe '[c-aA-G]@@@@' '.kBod&JKL>8L6M2SZY`We5?e BEyk?<_wc7Y(M9N='  < $ROOT/inputs/input/ruin.692 > ./outputs/t835

./replace_instrumented.exe '[c-aCZ-a]^_`a->-A>-A]' 'MN6)$<V>G9kmDmReuQ&W%@sP%7!mP'  < $ROOT/inputs/input/ruin.1003 > ./outputs/t836

./replace_instrumented.exe '[c-aZ-a]^_`a-A-GABCDEFG]' 'X'  < $ROOT/inputs/input/ruin.497 > ./outputs/t837

./replace_instrumented.exe '[c-aZ-a]^_`a]' 'F'  < $ROOT/inputs/input/ruin.468 > ./outputs/t838

./replace_instrumented.exe '[c-aZ-a]^_`a]' 'dt|NbM\.:;'\''5E]m\6;l!?&g4ikE^yZ+P{]q++Ke\6|bYujj"[\l'  < $ROOT/inputs/input/ruin.1099 > ./outputs/t839

./replace_instrumented.exe '[c-a]$' '>'  < $ROOT/inputs/input/ruin.1635 > ./outputs/t840

./replace_instrumented.exe '[c-a]'   < $ROOT/inputs/input/ruin.1163 > ./outputs/t841

./replace_instrumented.exe '[c-a]' ''  < $ROOT/inputs/input/ruin.529 > ./outputs/t842

./replace_instrumented.exe '[c-a]' '('  < $ROOT/inputs/input/ruin.1862 > ./outputs/t843

./replace_instrumented.exe '[c-a]' '*=Ia,P2&C['  < $ROOT/inputs/input/ruin.906 > ./outputs/t844

./replace_instrumented.exe '[c-a]' '<-'\''p@+\*cH#a!.5:5`a'  < $ROOT/inputs/input/ruin.1163 > ./outputs/t845

./replace_instrumented.exe '[c-a]' 'M^Cj&~4#,,`zk.j6n5wIVUMC#A^32{jG//Raz[SCLQ'  < $ROOT/inputs/input/ruin.187 > ./outputs/t846

./replace_instrumented.exe '[c-a]' 'N'  < $ROOT/inputs/input/ruin.1225 > ./outputs/t847

./replace_instrumented.exe '[c-a]' 'Rc}U{^ dhC_9!75dFF'  < $ROOT/inputs/input/ruin.756 > ./outputs/t848

./replace_instrumented.exe '[c-a]' 'WvfXw!)GQ;wfqA==_$'\'';jL^X}LS)ZRG#01|zqwb4Z&E{uTWowB6'  < $ROOT/inputs/input/ruin.1918 > ./outputs/t849

./replace_instrumented.exe '[c-a]' 'g'  < $ROOT/inputs/input/ruin.288 > ./outputs/t850

./replace_instrumented.exe '[c-a]' 'j*,aNncxD\LU/Iefe#fadF0tSa[ta$7K+i l$o>;iO>x.mhhXeutrdDfm/ 9gV?%sMY(vOdQKW^*f[5T'  < $ROOT/inputs/input/ruin.862 > ./outputs/t851

./replace_instrumented.exe '[c-a]' 's'  < $ROOT/inputs/input/ruin.1424 > ./outputs/t852

./replace_instrumented.exe '[c-a]' 'x'  < $ROOT/inputs/input/ruin.1599 > ./outputs/t853

./replace_instrumented.exe '[c-a]'\''Th4oD' 'F!d~`tL_DBH) [K-oW'  < $ROOT/inputs/input/ruin.681 > ./outputs/t854

./replace_instrumented.exe '[c-a]?*' 'x'  < $ROOT/inputs/input/ruin.1599 > ./outputs/t855

./replace_instrumented.exe '[c-a]@@?$' 'I>'  < $ROOT/inputs/input/ruin.29 > ./outputs/t856

./replace_instrumented.exe '[c-a]@n' 'g&h'  < $ROOT/inputs/input/ruin.288 > ./outputs/t857

./replace_instrumented.exe '[c-a][c-a]' '?'  < $ROOT/inputs/input/ruin.703 > ./outputs/t858

./replace_instrumented.exe '[c-a][c-a]' 'uSD-'  < $ROOT/inputs/input/ruin.1990 > ./outputs/t859

./replace_instrumented.exe '[c-a]\$?!I' 'C5"Ugs7z;#[m'  < $ROOT/inputs/input/ruin.1075 > ./outputs/t860

./replace_instrumented.exe '[c-a`]' 'TxfCZ,ncl`!85cZi#F6f>B[=2xb1rZXXah,}F?O2+9xtAeyi[3h9Al$KjK7.Km?K4YU~ '\'''  < $ROOT/inputs/input/ruin.434 > ./outputs/t861

./replace_instrumented.exe '[c-at]' 'AQ'  < $ROOT/inputs/input/ruin.253 > ./outputs/t862

./replace_instrumented.exe '[mA-G]' '}n/rz%ZQ%Z3Z+jQI'  < $ROOT/inputs/input/ruin.1927 > ./outputs/t863

./replace_instrumented.exe '[m]*' '=>q4/4W{xj^&B|w@/f1KHWBb#R/=43XWDWT)K'  < $ROOT/inputs/input/ruin.1454 > ./outputs/t864

./replace_instrumented.exe '[o]' '&'  < $ROOT/inputs/input/ruin.837 > ./outputs/t865

./replace_instrumented.exe '[p]' 'qPv3t,hM>u^_Q739Rf[^O=PY^v@Sd<vR<D=(7y5Y'  < $ROOT/inputs/input/ruin.1471 > ./outputs/t866

./replace_instrumented.exe '[q0-9]@n' '.^&u>`Y~4'\''!d;?[6eMR*)X+D>xU%AUWv8y$.jdQ@jBn='\''(J8f,KIL4L'  < $ROOT/inputs/input/ruin.285 > ./outputs/t867

./replace_instrumented.exe '[q]' '*'  < $ROOT/inputs/input/ruin.395 > ./outputs/t868

./replace_instrumented.exe '[s]' 'SWCmkAgq0?ml-.(QE"<D(s5YN'  < $ROOT/inputs/input/ruin.501 > ./outputs/t869

./replace_instrumented.exe '[z-}0-9]' ')^'  < $ROOT/inputs/input/ruin.191 > ./outputs/t870

./replace_instrumented.exe '[z-}0-9z-}Z-a]^_`a-c-ac-a-0-90123456789->-A>-A]' 'b\Uny"%(>W]TD'\''B!T#}.".bsJjH[Q\%'  < $ROOT/inputs/input/ruin.1731 > ./outputs/t871

./replace_instrumented.exe '[z-}]$' 'x<W#6\5oQ+{Kh2/kx#w6k`0;nznycd:QlGcd,'  < $ROOT/inputs/input/ruin.1253 > ./outputs/t872

./replace_instrumented.exe '[z-}]'   < $ROOT/inputs/input/ruin.1164 > ./outputs/t873

./replace_instrumented.exe '[z-}]' ' <oZI`e4Og*@]nAfBB=i%[o> ?~/z5>FDJ)"'  < $ROOT/inputs/input/ruin.356 > ./outputs/t874

./replace_instrumented.exe '[z-}]' ''  < $ROOT/inputs/input/ruin.1055 > ./outputs/t875

./replace_instrumented.exe '[z-}]' '5S5stRu.W%X4J'  < $ROOT/inputs/input/ruin.503 > ./outputs/t876

./replace_instrumented.exe '[z-}]' '7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp'  < $ROOT/inputs/input/ruin.1055 > ./outputs/t877

./replace_instrumented.exe '[z-}]' ':!OthH~kXWn'  < $ROOT/inputs/input/ruin.894 > ./outputs/t878

./replace_instrumented.exe '[z-}]' 'P'  < $ROOT/inputs/input/ruin.217 > ./outputs/t879

./replace_instrumented.exe '[z-}]' 'Vu'  < $ROOT/inputs/input/ruin.1883 > ./outputs/t880

./replace_instrumented.exe '[z-}]' 'f'  < $ROOT/inputs/input/ruin.872 > ./outputs/t881

./replace_instrumented.exe '[z-}]' 'g|9'  < $ROOT/inputs/input/ruin.1164 > ./outputs/t882

./replace_instrumented.exe '[z-}]*$' 'x<W#6\5oQ+{Kh2/kx#w6k`0;nznycd:QlGcd,'  < $ROOT/inputs/input/ruin.1253 > ./outputs/t883

./replace_instrumented.exe '[z-}]@t' '1O'  < $ROOT/inputs/input/ruin.47 > ./outputs/t884

./replace_instrumented.exe '[z-}c-a]' '-MPvM'\''v'  < $ROOT/inputs/input/ruin.244 > ./outputs/t885

./replace_instrumented.exe '[{]' '=zZZTW>^oIXf'  < $ROOT/inputs/input/ruin.71 > ./outputs/t886

./replace_instrumented.exe '[|Z-a]^_`a]' 'C'  < $ROOT/inputs/input/ruin.1090 > ./outputs/t887

./replace_instrumented.exe '\"Q %?' 'a'  < $ROOT/inputs/input/ruin.982 > ./outputs/t888

./replace_instrumented.exe '\' '<'  < $ROOT/inputs/input/ruin.1395 > ./outputs/t889

./replace_instrumented.exe '\' 'YEb bc%%["wg_QT&UFt:ir*4ne~Bh*oK?f1u3)0}uzx_+!IeT+'\''/M[Yj'  < $ROOT/inputs/input/ruin.1786 > ./outputs/t890

./replace_instrumented.exe '\*' 'g!dZjV4QD8X5M%6e((5C]ZJ/mJ$P0N~8'  < $ROOT/inputs/input/ruin.1391 > ./outputs/t891

./replace_instrumented.exe '\7L' 'OYei+V4`(LC05cWs)XsG(6]gdF'  < $ROOT/inputs/input/ruin.1725 > ./outputs/t892

./replace_instrumented.exe '\8V41?' 'ee8HNWCf2?*3$ft8$/6D'  < $ROOT/inputs/input/ruin.1888 > ./outputs/t893

./replace_instrumented.exe '\<@^@@' '&*pa1X1"X@\UX>IdCGEO|f'  < $ROOT/inputs/input/ruin.901 > ./outputs/t894

./replace_instrumented.exe '\?' '$:Kr*#&N} g}5E6ztAOMT!}qoV,Fb\h7p5Jrvqa'  < $ROOT/inputs/input/ruin.159 > ./outputs/t895

./replace_instrumented.exe '\@@'   < $ROOT/inputs/input/ruin.1165 > ./outputs/t896

./replace_instrumented.exe '\@@' '('\''mg>,gajn*qm-_6So|`!\UG(w,@.$=2g]>RA'  < $ROOT/inputs/input/ruin.1995 > ./outputs/t897

./replace_instrumented.exe '\@@' 'f'  < $ROOT/inputs/input/ruin.1165 > ./outputs/t898

./replace_instrumented.exe '\@@*$' '('\''mg>,gajn*qm-_6So|`!\UG(w,@.$=2g]>RA'  < $ROOT/inputs/input/ruin.1995 > ./outputs/t899

./replace_instrumented.exe '\T[v*' '8-=O.xe7b;<s`,{cP`y=:>K-=B=~q/.'  < $ROOT/inputs/input/ruin.1898 > ./outputs/t900

./replace_instrumented.exe '\VSx"Um@@' '|'  < $ROOT/inputs/input/ruin.1643 > ./outputs/t901

./replace_instrumented.exe '\Y!%aK@@' 'G'  < $ROOT/inputs/input/ruin.142 > ./outputs/t902

./replace_instrumented.exe '\\v<}h]' ':"f$Nb}3DcX'  < $ROOT/inputs/input/ruin.1386 > ./outputs/t903

./replace_instrumented.exe '\a8*' 'r'  < $ROOT/inputs/input/ruin.305 > ./outputs/t904

./replace_instrumented.exe '\l]#+wVDo{!?' 'Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8[0-9]*z$?\aq<W4'  < $ROOT/inputs/input/ruin.1347 > ./outputs/t905

./replace_instrumented.exe '\l]#+wVDo{!?' 'Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?\aq<W4'  < $ROOT/inputs/input/ruin.1347 > ./outputs/t906

./replace_instrumented.exe '\l]#+wVDo{!?@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}[0-9]*' 'Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?\aq<W4'  < $ROOT/inputs/input/ruin.1347 > ./outputs/t907

./replace_instrumented.exe '\u=vvW~U' '2'  < $ROOT/inputs/input/ruin.949 > ./outputs/t908

./replace_instrumented.exe '\xn[^>-A]' 'o'  < $ROOT/inputs/input/ruin.1871 > ./outputs/t909

./replace_instrumented.exe '\x|' '?'  < $ROOT/inputs/input/ruin.924 > ./outputs/t910

./replace_instrumented.exe '\}Os*$' 'y'  < $ROOT/inputs/input/ruin.364 > ./outputs/t911

./replace_instrumented.exe ']' '$'  < $ROOT/inputs/input/ruin.1809 > ./outputs/t912

./replace_instrumented.exe ']' '=x3%"'  < $ROOT/inputs/input/ruin.203 > ./outputs/t913

./replace_instrumented.exe ']' 'IGeVt0Z[JX~d];kXZc?D4${Q c5&'\''#u}/3LoWR#uj'  < $ROOT/inputs/input/ruin.237 > ./outputs/t914

./replace_instrumented.exe ']' 'S'  < $ROOT/inputs/input/ruin.1619 > ./outputs/t915

./replace_instrumented.exe ']' 'a'  < $ROOT/inputs/input/ruin.684 > ./outputs/t916

./replace_instrumented.exe ']' 'd7t3xoKq,7NtyV+.x5<Q?H`Sa2j'  < $ROOT/inputs/input/ruin.812 > ./outputs/t917

./replace_instrumented.exe ']' 'qu!E@^n@92)^Kms}mC/G>>0qc.q'  < $ROOT/inputs/input/ruin.1827 > ./outputs/t918

./replace_instrumented.exe ']?*' 'S'  < $ROOT/inputs/input/ruin.1619 > ./outputs/t919

./replace_instrumented.exe ']@n' '=&lk'  < $ROOT/inputs/input/ruin.277 > ./outputs/t920

./replace_instrumented.exe '^$**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t921

./replace_instrumented.exe '^%a-c]-' '@%@&'  < $ROOT/inputs/temp-test/25.inp.11.2 > ./outputs/t922

./replace_instrumented.exe '^' ')J&ym12(Um?ZG6'  < $ROOT/inputs/input/ruin.1718 > ./outputs/t923

./replace_instrumented.exe '^' '/=VXw>%)rWz0.ROqC>THDqQ^Hr+jB~x]S(cp}#'  < $ROOT/inputs/input/ruin.1204 > ./outputs/t924

./replace_instrumented.exe '^' '>'  < $ROOT/inputs/input/ruin.630 > ./outputs/t925

./replace_instrumented.exe '^' 'RJ"uId4{]]FL|-)/'  < $ROOT/inputs/input/ruin.1789 > ./outputs/t926

./replace_instrumented.exe '^' 'Sy]U)vS+Ig:nzR;}B#I}p0@nOb"@Yqv.A`?PuhL g0{svG=S'  < $ROOT/inputs/input/ruin.1093 > ./outputs/t927

./replace_instrumented.exe '^' 'b@t'  < $ROOT/inputs/temp-test/124.inp.58.1 > ./outputs/t928

./replace_instrumented.exe '^' 'b@t'  < $ROOT/inputs/temp-test/125.inp.58.3 > ./outputs/t929

./replace_instrumented.exe '^' 'e'  < $ROOT/inputs/input/ruin.1661 > ./outputs/t930

./replace_instrumented.exe '^' 'o:d;LeM"ts3$SRInwYpZ;bC1@HdnY?I(lB'  < $ROOT/inputs/input/ruin.1944 > ./outputs/t931

./replace_instrumented.exe '^*%^*?-[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[?' '@%&a'  < $ROOT/inputs/temp-test/15.inp.7.1 > ./outputs/t932

./replace_instrumented.exe '^*%^*?-[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[?' '@%&a'  < $ROOT/inputs/temp-test/16.inp.7.3 > ./outputs/t933

./replace_instrumented.exe '^**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t934

./replace_instrumented.exe '^*-' '&'  < $ROOT/inputs/temp-test/183.inp.82.1 > ./outputs/t935

./replace_instrumented.exe '^*-' '&'  < $ROOT/inputs/temp-test/184.inp.82.3 > ./outputs/t936

./replace_instrumented.exe '^*-' '&a@%'  < $ROOT/inputs/temp-test/1932.inp.821.1 > ./outputs/t937

./replace_instrumented.exe '^*-[a-]-[^@t]' 'a@n'  < $ROOT/inputs/temp-test/1265.inp.543.1 > ./outputs/t938

./replace_instrumented.exe '^*-[a-]-[^@t]' 'a@n'  < $ROOT/inputs/temp-test/1266.inp.543.2 > ./outputs/t939

./replace_instrumented.exe '^*-[a-]-[^@t]' 'a@n'  < $ROOT/inputs/temp-test/1267.inp.543.3 > ./outputs/t940

./replace_instrumented.exe '^*?' '&a@%'  < $ROOT/inputs/temp-test/1540.inp.659.1 > ./outputs/t941

./replace_instrumented.exe '^*??-' '@%@&'  < $ROOT/inputs/temp-test/2240.inp.950.1 > ./outputs/t942

./replace_instrumented.exe '^*??-' '@%@&'  < $ROOT/inputs/temp-test/2241.inp.950.2 > ./outputs/t943

./replace_instrumented.exe '^*[9-B]?' '&'  < $ROOT/inputs/temp-test/1012.inp.435.1 > ./outputs/t944

./replace_instrumented.exe '^*[9-B]?' '&'  < $ROOT/inputs/temp-test/1013.inp.435.3 > ./outputs/t945

./replace_instrumented.exe '^*[^-z]' '@t'  < $ROOT/inputs/temp-test/102.inp.46.1 > ./outputs/t946

./replace_instrumented.exe '^*[^-z]' '@t'  < $ROOT/inputs/temp-test/103.inp.46.2 > ./outputs/t947

./replace_instrumented.exe '^*[^@@]-?^a-][a--][^@@]?-[0-9]' '@%@&'  < $ROOT/inputs/temp-test/1683.inp.717.1 > ./outputs/t948

./replace_instrumented.exe '^*[^a--]$' 'a&'  < $ROOT/inputs/temp-test/256.inp.113.8 > ./outputs/t949

./replace_instrumented.exe '^*[^a--]' 'a&'  < $ROOT/inputs/temp-test/254.inp.113.1 > ./outputs/t950

./replace_instrumented.exe '^*[^a--]' 'a&'  < $ROOT/inputs/temp-test/255.inp.113.2 > ./outputs/t951

./replace_instrumented.exe '^*[^a-[a-c][0-9]?-*-?? ' ''  < $ROOT/inputs/temp-test/1933.inp.822.1 > ./outputs/t952

./replace_instrumented.exe '^*[^a-[a-c][0-9]?-*-?? ' ''  < $ROOT/inputs/temp-test/1934.inp.822.3 > ./outputs/t953

./replace_instrumented.exe '^*[_-z]' 'a@nb@tc'  < $ROOT/inputs/temp-test/653.inp.284.1 > ./outputs/t954

./replace_instrumented.exe '^*[_-z]' 'a@nb@tc'  < $ROOT/inputs/temp-test/654.inp.284.2 > ./outputs/t955

./replace_instrumented.exe '^*[_-z]' 'a@nb@tc'  < $ROOT/inputs/temp-test/655.inp.284.3 > ./outputs/t956

./replace_instrumented.exe '^*[a--]' ''  < $ROOT/inputs/temp-test/1395.inp.598.1 > ./outputs/t957

./replace_instrumented.exe '^*[a-c[9-B]?' 'a&'  < $ROOT/inputs/temp-test/1297.inp.557.1 > ./outputs/t958

./replace_instrumented.exe '^*[a-c[9-B]?' 'a&'  < $ROOT/inputs/temp-test/1298.inp.557.2 > ./outputs/t959

./replace_instrumented.exe '^*^*?-[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[?' '@%&a'  < $ROOT/inputs/temp-test/15.inp.7.1 > ./outputs/t960

./replace_instrumented.exe '^*^*?-[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[?' '@%&a'  < $ROOT/inputs/temp-test/16.inp.7.3 > ./outputs/t961

./replace_instrumented.exe '^*a-c]' '@%&a'  < $ROOT/inputs/temp-test/2244.inp.952.1 > ./outputs/t962

./replace_instrumented.exe '^*a-c]' '@%&a'  < $ROOT/inputs/temp-test/2245.inp.952.2 > ./outputs/t963

./replace_instrumented.exe '^*a-c]' '@%&a'  < $ROOT/inputs/temp-test/2246.inp.952.3 > ./outputs/t964

./replace_instrumented.exe '^-' '&'  < $ROOT/inputs/temp-test/873.inp.375.1 > ./outputs/t965

./replace_instrumented.exe '^-' '&'  < $ROOT/inputs/temp-test/874.inp.375.2 > ./outputs/t966

./replace_instrumented.exe '^-' '@t'  < $ROOT/inputs/temp-test/429.inp.189.1 > ./outputs/t967

./replace_instrumented.exe '^-' '@t'  < $ROOT/inputs/temp-test/430.inp.189.2 > ./outputs/t968

./replace_instrumented.exe '^-' '@t'  < $ROOT/inputs/temp-test/431.inp.189.3 > ./outputs/t969

./replace_instrumented.exe '^-?[][^9-B]' 'a@n'  < $ROOT/inputs/temp-test/510.inp.222.4 > ./outputs/t970

./replace_instrumented.exe '^-?[^9-B]'   < $ROOT/inputs/temp-test/510.inp.222.4 > ./outputs/t971

./replace_instrumented.exe '^-?[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/509.inp.222.1 > ./outputs/t972

./replace_instrumented.exe '^-?[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/510.inp.222.4 > ./outputs/t973

./replace_instrumented.exe '^-?[^9-B]*$' 'a@n'  < $ROOT/inputs/temp-test/510.inp.222.4 > ./outputs/t974

./replace_instrumented.exe '^-?[^9-B]*' 'a@n'  < $ROOT/inputs/temp-test/510.inp.222.4 > ./outputs/t975

./replace_instrumented.exe '^-?[^][^9-B]' 'a@n'  < $ROOT/inputs/temp-test/510.inp.222.4 > ./outputs/t976

./replace_instrumented.exe '^-?[a-c]' '@%@&'  < $ROOT/inputs/temp-test/881.inp.378.1 > ./outputs/t977

./replace_instrumented.exe '^-]-[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1666.inp.711.1 > ./outputs/t978

./replace_instrumented.exe '^-]-[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1667.inp.711.3 > ./outputs/t979

./replace_instrumented.exe '^-]-[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1668.inp.711.4 > ./outputs/t980

./replace_instrumented.exe '^-]?' '&'  < $ROOT/inputs/temp-test/1766.inp.752.1 > ./outputs/t981

./replace_instrumented.exe '^-]?' '&'  < $ROOT/inputs/temp-test/1767.inp.752.2 > ./outputs/t982

./replace_instrumented.exe '^-]@**$' 'b@t'  < $ROOT/inputs/temp-test/744.inp.318.8 > ./outputs/t983

./replace_instrumented.exe '^-]@**' 'b@t'  < $ROOT/inputs/temp-test/741.inp.318.1 > ./outputs/t984

./replace_instrumented.exe '^-]@**' 'b@t'  < $ROOT/inputs/temp-test/742.inp.318.2 > ./outputs/t985

./replace_instrumented.exe '^-][0-9]' 'NEW'  < $ROOT/inputs/temp-test/667.inp.291.1 > ./outputs/t986

./replace_instrumented.exe '^-][0-9]' 'NEW'  < $ROOT/inputs/temp-test/668.inp.291.2 > ./outputs/t987

./replace_instrumented.exe '^?$' '@%@&'  < $ROOT/inputs/temp-test/339.inp.148.6 > ./outputs/t988

./replace_instrumented.exe '^?' '@%@&'  < $ROOT/inputs/temp-test/336.inp.148.1 > ./outputs/t989

./replace_instrumented.exe '^?' '@%@&'  < $ROOT/inputs/temp-test/337.inp.148.2 > ./outputs/t990

./replace_instrumented.exe '^?' '@%@&'  < $ROOT/inputs/temp-test/338.inp.148.3 > ./outputs/t991

./replace_instrumented.exe '^?' 'a&'  < $ROOT/inputs/temp-test/401.inp.175.1 > ./outputs/t992

./replace_instrumented.exe '^?' 'a&'  < $ROOT/inputs/temp-test/402.inp.175.4 > ./outputs/t993

./replace_instrumented.exe '^?[^0-9][a--b]-@[' '&'  < $ROOT/inputs/temp-test/907.inp.391.1 > ./outputs/t994

./replace_instrumented.exe '^?[^0-9][a--b]-@[' '&'  < $ROOT/inputs/temp-test/908.inp.391.2 > ./outputs/t995

./replace_instrumented.exe '^@@\?[^c-a]$' 'bSRy3i[Ff.nx{B>V$n/JFtqSP6s7do)BW%F=xS_&{a'  < $ROOT/inputs/input/ruin.1580 > ./outputs/t996

./replace_instrumented.exe '^[9-B]' '@%@&'  < $ROOT/inputs/temp-test/1967.inp.836.1 > ./outputs/t997

./replace_instrumented.exe '^[9-B]' '@%@&'  < $ROOT/inputs/temp-test/1968.inp.836.4 > ./outputs/t998

./replace_instrumented.exe '^[9-B]^a-]-@[^a-c]$' 'a&'  < $ROOT/inputs/temp-test/779.inp.335.6 > ./outputs/t999

./replace_instrumented.exe '^[9-B]^a-]-@[^a-c]' 'a&'  < $ROOT/inputs/temp-test/778.inp.335.1 > ./outputs/t1000

./replace_instrumented.exe '^[^9-B]' 'a&'  < $ROOT/inputs/temp-test/80.inp.35.1 > ./outputs/t1001

./replace_instrumented.exe '^[^9-B]?' 'a&'  < $ROOT/inputs/temp-test/657.inp.286.1 > ./outputs/t1002

./replace_instrumented.exe '^[^9-B]?' 'a&'  < $ROOT/inputs/temp-test/658.inp.286.2 > ./outputs/t1003

./replace_instrumented.exe '^[^9-B]?' 'a&'  < $ROOT/inputs/temp-test/659.inp.286.4 > ./outputs/t1004

./replace_instrumented.exe '^[^@t]' '&a@%'  < $ROOT/inputs/temp-test/1639.inp.699.1 > ./outputs/t1005

./replace_instrumented.exe '^[^@t]' '&a@%'  < $ROOT/inputs/temp-test/1640.inp.699.3 > ./outputs/t1006

./replace_instrumented.exe '^[a--]' '&a@%'  < $ROOT/inputs/temp-test/984.inp.424.1 > ./outputs/t1007

./replace_instrumented.exe '^a%-]@[*^a-]^' '&'  < $ROOT/inputs/temp-test/13.inp.6.2 > ./outputs/t1008

./replace_instrumented.exe '^a-%]@[*^a-]^' '&'  < $ROOT/inputs/temp-test/12.inp.6.1 > ./outputs/t1009

./replace_instrumented.exe '^a-%c]-' '@%@&'  < $ROOT/inputs/temp-test/24.inp.11.1 > ./outputs/t1010

./replace_instrumented.exe '^a-%c]-' '@%@&'  < $ROOT/inputs/temp-test/26.inp.11.3 > ./outputs/t1011

./replace_instrumented.exe '^a-]-*$' 'NEW'  < $ROOT/inputs/temp-test/559.inp.241.6 > ./outputs/t1012

./replace_instrumented.exe '^a-]-*$' 'NEW'  < $ROOT/inputs/temp-test/560.inp.241.8 > ./outputs/t1013

./replace_instrumented.exe '^a-]-*' 'NEW'  < $ROOT/inputs/temp-test/557.inp.241.1 > ./outputs/t1014

./replace_instrumented.exe '^a-]-*' 'NEW'  < $ROOT/inputs/temp-test/558.inp.241.3 > ./outputs/t1015

./replace_instrumented.exe '^a-]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/138.inp.64.1 > ./outputs/t1016

./replace_instrumented.exe '^a-]?a-][^a-]' ''  < $ROOT/inputs/temp-test/447.inp.196.1 > ./outputs/t1017

./replace_instrumented.exe '^a-]?a-][^a-]' ''  < $ROOT/inputs/temp-test/448.inp.196.3 > ./outputs/t1018

./replace_instrumented.exe '^a-]@[*^a-]%^' '&'  < $ROOT/inputs/temp-test/14.inp.6.4 > ./outputs/t1019

./replace_instrumented.exe '^a-]@[*^a-]^' '&'  < $ROOT/inputs/temp-test/12.inp.6.1 > ./outputs/t1020

./replace_instrumented.exe '^a-]@[*^a-]^' '&'  < $ROOT/inputs/temp-test/13.inp.6.2 > ./outputs/t1021

./replace_instrumented.exe '^a-]@[*^a-]^' '&'  < $ROOT/inputs/temp-test/14.inp.6.4 > ./outputs/t1022

./replace_instrumented.exe '^a-]@n*' '@%&a'  < $ROOT/inputs/temp-test/1516.inp.649.1 > ./outputs/t1023

./replace_instrumented.exe '^a-]@n*' '@%&a'  < $ROOT/inputs/temp-test/1517.inp.649.3 > ./outputs/t1024

./replace_instrumented.exe '^a-][9-B][^--z]??@[*?' 'a&'  < $ROOT/inputs/temp-test/2151.inp.911.1 > ./outputs/t1025

./replace_instrumented.exe '^a-][9-B][^--z]??@[*?' 'a&'  < $ROOT/inputs/temp-test/2152.inp.911.2 > ./outputs/t1026

./replace_instrumented.exe '^a-][9-B][^--z]??@[*?' 'a&'  < $ROOT/inputs/temp-test/2153.inp.911.3 > ./outputs/t1027

./replace_instrumented.exe '^a-][a--b]$' '@%&a'  < $ROOT/inputs/temp-test/2065.inp.875.6 > ./outputs/t1028

./replace_instrumented.exe '^a-][a--b]' '@%&a'  < $ROOT/inputs/temp-test/2064.inp.875.1 > ./outputs/t1029

./replace_instrumented.exe '^a-c?*' 'NEW'  < $ROOT/inputs/temp-test/193.inp.87.3 > ./outputs/t1030

./replace_instrumented.exe '^a-c]' '&a@%'  < $ROOT/inputs/temp-test/2072.inp.878.1 > ./outputs/t1031

./replace_instrumented.exe '^a-c]' '&a@%'  < $ROOT/inputs/temp-test/2073.inp.878.3 > ./outputs/t1032

./replace_instrumented.exe '^a-c]' 'a&'  < $ROOT/inputs/temp-test/626.inp.270.1 > ./outputs/t1033

./replace_instrumented.exe '^a-c]' 'a&'  < $ROOT/inputs/temp-test/627.inp.270.4 > ./outputs/t1034

./replace_instrumented.exe '^a-c]-' '@%@&'  < $ROOT/inputs/temp-test/24.inp.11.1 > ./outputs/t1035

./replace_instrumented.exe '^a-c]-' '@%@&'  < $ROOT/inputs/temp-test/25.inp.11.2 > ./outputs/t1036

./replace_instrumented.exe '^a-c]-' '@%@&'  < $ROOT/inputs/temp-test/26.inp.11.3 > ./outputs/t1037

./replace_instrumented.exe '^a-c]-' 'NEW'  < $ROOT/inputs/temp-test/191.inp.87.1 > ./outputs/t1038

./replace_instrumented.exe '^a-c]-' 'NEW'  < $ROOT/inputs/temp-test/192.inp.87.2 > ./outputs/t1039

./replace_instrumented.exe '^a-c]-' 'NEW'  < $ROOT/inputs/temp-test/193.inp.87.3 > ./outputs/t1040

./replace_instrumented.exe '^a-c]-?*' 'NEW'  < $ROOT/inputs/temp-test/191.inp.87.1 > ./outputs/t1041

./replace_instrumented.exe '^a-c]?' ''  < $ROOT/inputs/temp-test/2196.inp.931.1 > ./outputs/t1042

./replace_instrumented.exe '^a-c]?' ''  < $ROOT/inputs/temp-test/2197.inp.931.3 > ./outputs/t1043

./replace_instrumented.exe '^a-c]?' 'a&'  < $ROOT/inputs/temp-test/961.inp.414.1 > ./outputs/t1044

./replace_instrumented.exe '^a-c]?' 'a&'  < $ROOT/inputs/temp-test/962.inp.414.3 > ./outputs/t1045

./replace_instrumented.exe '^a-c]?*' 'NEW'  < $ROOT/inputs/temp-test/192.inp.87.2 > ./outputs/t1046

./replace_instrumented.exe '^a-c][a-c]' 'b@t'  < $ROOT/inputs/temp-test/1057.inp.455.1 > ./outputs/t1047

./replace_instrumented.exe '^a-c][a-c]' 'b@t'  < $ROOT/inputs/temp-test/1058.inp.455.3 > ./outputs/t1048

./replace_instrumented.exe '^a-c]a-c] [9-B]??-' '@n'  < $ROOT/inputs/temp-test/230.inp.103.1 > ./outputs/t1049

./replace_instrumented.exe '^a-c]a-c] [9-B]??-' '@n'  < $ROOT/inputs/temp-test/231.inp.103.3 > ./outputs/t1050

./replace_instrumented.exe '^d' f  < $ROOT/inputs/moni/f4.inp > ./outputs/t1051

./replace_instrumented.exe '_' '9}* bi8K(A-oQ<`>X6{_]~x)/2?ka!kso='  < $ROOT/inputs/input/ruin.22 > ./outputs/t1052

./replace_instrumented.exe '_' 'd '\''Ts/gEB(0=$(}A.AVje3x'  < $ROOT/inputs/input/ruin.1202 > ./outputs/t1053

./replace_instrumented.exe '_'\''w' ''  < $ROOT/inputs/input/ruin.1220 > ./outputs/t1054

./replace_instrumented.exe '_K' '2$-2ws/Lk;]a=k~'  < $ROOT/inputs/input/ruin.1227 > ./outputs/t1055

./replace_instrumented.exe '`' '[VP/8]e\R?;WE$d6'  < $ROOT/inputs/input/ruin.1473 > ./outputs/t1056

./replace_instrumented.exe '`a-A-GABCDEFG]:@n' '-[&b0:'  < $ROOT/inputs/input/ruin.1020 > ./outputs/t1057

./replace_instrumented.exe '`a-c-ac-a]@n' 'N&A'  < $ROOT/inputs/input/ruin.293 > ./outputs/t1058

./replace_instrumented.exe 'a$' '{:Kvg4Y@Go<Iyg"ZP5a'\''O>)9@XxZ1a/{Y'  < $ROOT/inputs/input/ruin.1503 > ./outputs/t1059

./replace_instrumented.exe 'a' '& #2@@@-'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1060

./replace_instrumented.exe 'a' '&'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1061

./replace_instrumented.exe 'a' '&@n'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1062

./replace_instrumented.exe 'a' ''  < $ROOT/inputs/moni/f7.inp > ./outputs/t1063

./replace_instrumented.exe 'a' ')zLIH{N+2AGC>Gf5'  < $ROOT/inputs/input/ruin.172 > ./outputs/t1064

./replace_instrumented.exe 'a' '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1065

./replace_instrumented.exe 'a' 'Ot<f]|MW(_V*YV'\''<8N?BrfOM-IG-}b#U5KSs0gIf$F\#!n_Ll.*k@e2CjOJ<^T`'  < $ROOT/inputs/input/ruin.700 > ./outputs/t1066

./replace_instrumented.exe 'a' '_,wpFpZ@r`UP}ZE)'  < $ROOT/inputs/input/ruin.1703 > ./outputs/t1067

./replace_instrumented.exe 'a*' 'c-1'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1068

./replace_instrumented.exe 'a-**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1069

./replace_instrumented.exe 'a-]' '@%@&'  < $ROOT/inputs/temp-test/2288.inp.969.2 > ./outputs/t1070

./replace_instrumented.exe 'a-]' '@%@&'  < $ROOT/inputs/temp-test/2289.inp.969.3 > ./outputs/t1071

./replace_instrumented.exe 'a-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/410.inp.180.2 > ./outputs/t1072

./replace_instrumented.exe 'a-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/411.inp.180.3 > ./outputs/t1073

./replace_instrumented.exe 'a-]-*?c[^--z]a-][^a-][a--b]?' 'a&'  < $ROOT/inputs/temp-test/1325.inp.569.1 > ./outputs/t1074

./replace_instrumented.exe 'a-]-*?c[^--z]a-][^a-][a--b]?' 'a&'  < $ROOT/inputs/temp-test/1326.inp.569.2 > ./outputs/t1075

./replace_instrumented.exe 'a-]?-?^-]-[^a-^[^0-9]$' '&a@%'  < $ROOT/inputs/temp-test/2195.inp.930.9 > ./outputs/t1076

./replace_instrumented.exe 'a-]?-?^-]-[^a-^[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/2193.inp.930.1 > ./outputs/t1077

./replace_instrumented.exe 'a-]?-?^-]-[^a-^[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/2194.inp.930.2 > ./outputs/t1078

./replace_instrumented.exe 'a-]?[^0-9]?[^a--][a-c]@[*[^0-9]a-c][^a-c' '@n'  < $ROOT/inputs/temp-test/612.inp.264.1 > ./outputs/t1079

./replace_instrumented.exe 'a-]?[^0-9]?[^a--][a-c]@[*[^0-9]a-c][^a-c' '@n'  < $ROOT/inputs/temp-test/613.inp.264.3 > ./outputs/t1080

./replace_instrumented.exe 'a-]@@*' 'NEW'  < $ROOT/inputs/temp-test/1202.inp.516.1 > ./outputs/t1081

./replace_instrumented.exe 'a-]@@*' 'NEW'  < $ROOT/inputs/temp-test/1203.inp.516.3 > ./outputs/t1082

./replace_instrumented.exe 'a-]A*[^0-9][a-c]' '@%&a'  < $ROOT/inputs/temp-test/1951.inp.828.1 > ./outputs/t1083

./replace_instrumented.exe 'a-][^0-9]' '&'  < $ROOT/inputs/temp-test/729.inp.314.1 > ./outputs/t1084

./replace_instrumented.exe 'a-][^0-9]' '&'  < $ROOT/inputs/temp-test/730.inp.314.2 > ./outputs/t1085

./replace_instrumented.exe 'a-][^0-9]' '&'  < $ROOT/inputs/temp-test/731.inp.314.3 > ./outputs/t1086

./replace_instrumented.exe 'a-][^9-B]' '@%&a'  < $ROOT/inputs/temp-test/662.inp.288.1 > ./outputs/t1087

./replace_instrumented.exe 'a-][^9-B]' '@%&a'  < $ROOT/inputs/temp-test/663.inp.288.2 > ./outputs/t1088

./replace_instrumented.exe 'a-][a-c' ''  < $ROOT/inputs/temp-test/555.inp.240.2 > ./outputs/t1089

./replace_instrumented.exe 'a-][a-c' ''  < $ROOT/inputs/temp-test/556.inp.240.4 > ./outputs/t1090

./replace_instrumented.exe 'a-]^*-?-@@*@n-[^0-9]-' 'a&'  < $ROOT/inputs/temp-test/272.inp.122.1 > ./outputs/t1091

./replace_instrumented.exe 'a-]^*-?-@@*@n-[^0-9]-' 'a&'  < $ROOT/inputs/temp-test/273.inp.122.3 > ./outputs/t1092

./replace_instrumented.exe 'a-c]-' 'a&'  < $ROOT/inputs/temp-test/1910.inp.811.1 > ./outputs/t1093

./replace_instrumented.exe 'a-c]-' 'a&'  < $ROOT/inputs/temp-test/1911.inp.811.3 > ./outputs/t1094

./replace_instrumented.exe 'a-c]-[0-9]@t*@*?' '@%@&'  < $ROOT/inputs/temp-test/991.inp.427.1 > ./outputs/t1095

./replace_instrumented.exe 'a-c]-[0-9]@t*@*?' '@%@&'  < $ROOT/inputs/temp-test/992.inp.427.3 > ./outputs/t1096

./replace_instrumented.exe 'a-c]@*[0-9]?*A-' 'NEW'  < $ROOT/inputs/temp-test/3.inp.2.1 > ./outputs/t1097

./replace_instrumented.exe 'a-c]@*[0-9]?*A-' 'NEW'  < $ROOT/inputs/temp-test/4.inp.2.3 > ./outputs/t1098

./replace_instrumented.exe 'a-c]@*[0-9]?*A-' 'NEW'  < $ROOT/inputs/temp-test/5.inp.2.4 > ./outputs/t1099

./replace_instrumented.exe 'a-c][^@@]' '@t'  < $ROOT/inputs/temp-test/1514.inp.648.1 > ./outputs/t1100

./replace_instrumented.exe 'ab?p**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1101

./replace_instrumented.exe 'abc$%**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1102

./replace_instrumented.exe 'b' '-HM{Qv|H1pLYv2Eb1x5)'  < $ROOT/inputs/input/ruin.589 > ./outputs/t1103

./replace_instrumented.exe 'b' 'UK4N.tls!-g6_D0+`!hP:rH8$|5'\''xGr?'  < $ROOT/inputs/input/ruin.1633 > ./outputs/t1104

./replace_instrumented.exe 'b' 'v+AfoGgD^s"3R2jL|'  < $ROOT/inputs/input/ruin.747 > ./outputs/t1105

./replace_instrumented.exe 'c' '&a@%'  < $ROOT/inputs/temp-test/310.inp.139.1 > ./outputs/t1106

./replace_instrumented.exe 'c' '&a@%'  < $ROOT/inputs/temp-test/311.inp.139.3 > ./outputs/t1107

./replace_instrumented.exe 'c' '|-rnI[>\$@wV'  < $ROOT/inputs/input/ruin.1493 > ./outputs/t1108

./replace_instrumented.exe 'c*' '&a@%'  < $ROOT/inputs/temp-test/2087.inp.884.1 > ./outputs/t1109

./replace_instrumented.exe 'c*' 'a&'  < $ROOT/inputs/temp-test/1408.inp.604.1 > ./outputs/t1110

./replace_instrumented.exe 'c*' 'a&'  < $ROOT/inputs/temp-test/1409.inp.604.3 > ./outputs/t1111

./replace_instrumented.exe 'c*-[^--z]-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2275.inp.964.1 > ./outputs/t1112

./replace_instrumented.exe 'c*?$' 'a@nb@tc'  < $ROOT/inputs/temp-test/805.inp.345.9 > ./outputs/t1113

./replace_instrumented.exe 'c*?' '&'  < $ROOT/inputs/temp-test/340.inp.149.1 > ./outputs/t1114

./replace_instrumented.exe 'c*?' '&'  < $ROOT/inputs/temp-test/341.inp.149.4 > ./outputs/t1115

./replace_instrumented.exe 'c*?' '@%&a'  < $ROOT/inputs/temp-test/354.inp.155.1 > ./outputs/t1116

./replace_instrumented.exe 'c*?' '@%&a'  < $ROOT/inputs/temp-test/355.inp.155.2 > ./outputs/t1117

./replace_instrumented.exe 'c*?' '@%&a@'  < $ROOT/inputs/temp-test/354.inp.155.1 > ./outputs/t1118

./replace_instrumented.exe 'c*?' '@%&a@'  < $ROOT/inputs/temp-test/355.inp.155.2 > ./outputs/t1119

./replace_instrumented.exe 'c*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/802.inp.345.1 > ./outputs/t1120

./replace_instrumented.exe 'c*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/803.inp.345.2 > ./outputs/t1121

./replace_instrumented.exe 'c*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/804.inp.345.3 > ./outputs/t1122

./replace_instrumented.exe 'c*?[a--][^9-B][9-B][a-[a-c@@*[^-?' '@%@&'  < $ROOT/inputs/temp-test/785.inp.338.1 > ./outputs/t1123

./replace_instrumented.exe 'c*?[a--][^9-B][9-B][a-[a-c@@*[^-?' '@%@&'  < $ROOT/inputs/temp-test/786.inp.338.2 > ./outputs/t1124

./replace_instrumented.exe 'c*[9-B][9-B]-*-[^0-9]' 'a&'  < $ROOT/inputs/temp-test/1880.inp.797.1 > ./outputs/t1125

./replace_instrumented.exe 'c*[9-B][9-B]-*-[^0-9]' 'a&'  < $ROOT/inputs/temp-test/1881.inp.797.3 > ./outputs/t1126

./replace_instrumented.exe 'c*[][^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/514.inp.224.1 > ./outputs/t1127

./replace_instrumented.exe 'c*[^][^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/514.inp.224.1 > ./outputs/t1128

./replace_instrumented.exe 'c*[^a-'   < $ROOT/inputs/temp-test/515.inp.224.3 > ./outputs/t1129

./replace_instrumented.exe 'c*[^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/514.inp.224.1 > ./outputs/t1130

./replace_instrumented.exe 'c*[^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/515.inp.224.3 > ./outputs/t1131

./replace_instrumented.exe 'c*^a-c]' ''  < $ROOT/inputs/temp-test/313.inp.140.1 > ./outputs/t1132

./replace_instrumented.exe 'c*^a-c]' ''  < $ROOT/inputs/temp-test/314.inp.140.2 > ./outputs/t1133

./replace_instrumented.exe 'c*^a-c]' ''  < $ROOT/inputs/temp-test/315.inp.140.3 > ./outputs/t1134

./replace_instrumented.exe 'c*^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2056.inp.872.1 > ./outputs/t1135

./replace_instrumented.exe 'c*^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2057.inp.872.3 > ./outputs/t1136

./replace_instrumented.exe 'c-$' '@%@&'  < $ROOT/inputs/temp-test/1747.inp.742.8 > ./outputs/t1137

./replace_instrumented.exe 'c-' ''  < $ROOT/inputs/temp-test/387.inp.169.1 > ./outputs/t1138

./replace_instrumented.exe 'c-' ''  < $ROOT/inputs/temp-test/388.inp.169.2 > ./outputs/t1139

./replace_instrumented.exe 'c-' ''  < $ROOT/inputs/temp-test/389.inp.169.3 > ./outputs/t1140

./replace_instrumented.exe 'c-' '@%@&'  < $ROOT/inputs/temp-test/1744.inp.742.1 > ./outputs/t1141

./replace_instrumented.exe 'c-' '@%@&'  < $ROOT/inputs/temp-test/1745.inp.742.2 > ./outputs/t1142

./replace_instrumented.exe 'c-' '@%@&'  < $ROOT/inputs/temp-test/1746.inp.742.3 > ./outputs/t1143

./replace_instrumented.exe 'c-[0-9][^a-c@**-' '@t'  < $ROOT/inputs/temp-test/167.inp.75.1 > ./outputs/t1144

./replace_instrumented.exe 'c-[0-9][^a-c@**-' '@t'  < $ROOT/inputs/temp-test/168.inp.75.2 > ./outputs/t1145

./replace_instrumented.exe 'c-^a-]?a-]-][a-c]-' '&a@%'  < $ROOT/inputs/temp-test/112.inp.51.1 > ./outputs/t1146

./replace_instrumented.exe 'c-^a-]?a-]-][a-c]-' '&a@%'  < $ROOT/inputs/temp-test/113.inp.51.2 > ./outputs/t1147

./replace_instrumented.exe 'c-^a-]?a-]-][a-c]-' '&a@%'  < $ROOT/inputs/temp-test/114.inp.51.3 > ./outputs/t1148

./replace_instrumented.exe 'c?$' '@n'  < $ROOT/inputs/temp-test/1738.inp.739.8 > ./outputs/t1149

./replace_instrumented.exe 'c?' '@%@&'  < $ROOT/inputs/temp-test/1168.inp.503.1 > ./outputs/t1150

./replace_instrumented.exe 'c?' '@%@&'  < $ROOT/inputs/temp-test/1169.inp.503.2 > ./outputs/t1151

./replace_instrumented.exe 'c?' '@n'  < $ROOT/inputs/temp-test/1737.inp.739.1 > ./outputs/t1152

./replace_instrumented.exe 'c?*' ''  < $ROOT/inputs/temp-test/387.inp.169.1 > ./outputs/t1153

./replace_instrumented.exe 'c?*' ''  < $ROOT/inputs/temp-test/388.inp.169.2 > ./outputs/t1154

./replace_instrumented.exe 'c?*' ''  < $ROOT/inputs/temp-test/389.inp.169.3 > ./outputs/t1155

./replace_instrumented.exe 'c?-@t?$' 'a@nb@tc'  < $ROOT/inputs/temp-test/1787.inp.760.6 > ./outputs/t1156

./replace_instrumented.exe 'c?-@t?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1785.inp.760.1 > ./outputs/t1157

./replace_instrumented.exe 'c?-@t?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1786.inp.760.4 > ./outputs/t1158

./replace_instrumented.exe 'c[]*[^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/515.inp.224.3 > ./outputs/t1159

./replace_instrumented.exe 'c[^0-9]'   < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t1160

./replace_instrumented.exe 'c[^0-9]' '&@n'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t1161

./replace_instrumented.exe 'c[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t1162

./replace_instrumented.exe 'c[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1307.inp.562.1 > ./outputs/t1163

./replace_instrumented.exe 'c[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1308.inp.562.3 > ./outputs/t1164

./replace_instrumented.exe 'c[^0-9]*$' '&a@%'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t1165

./replace_instrumented.exe 'c[^0-9]*' '&a@%'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t1166

./replace_instrumented.exe 'c[^0-9][9-B]-' '@%@&'  < $ROOT/inputs/temp-test/1884.inp.799.1 > ./outputs/t1167

./replace_instrumented.exe 'c[^0-9][9-B]-' '@%@&'  < $ROOT/inputs/temp-test/1885.inp.799.3 > ./outputs/t1168

./replace_instrumented.exe 'c[^0-9][]' '&a@%'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t1169

./replace_instrumented.exe 'c[^0-9][^]' '&a@%'  < $ROOT/inputs/temp-test/212.inp.95.1 > ./outputs/t1170

./replace_instrumented.exe 'c[^9-B][^9-B]c*?[9-B]c-'   < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t1171

./replace_instrumented.exe 'c[^9-B][^9-B]c*?[9-B]c-'   < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t1172

./replace_instrumented.exe 'c[^9-B][^9-B]c*?[9-B]c-' '&@n'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t1173

./replace_instrumented.exe 'c[^9-B][^9-B]c*?[9-B]c-' '&@n'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t1174

./replace_instrumented.exe 'c[^]*[^a-' 'a@nb@tc'  < $ROOT/inputs/temp-test/515.inp.224.3 > ./outputs/t1175

./replace_instrumented.exe 'c[^a--]-' '&'  < $ROOT/inputs/temp-test/316.inp.141.1 > ./outputs/t1176

./replace_instrumented.exe 'c[^a--]-' '&'  < $ROOT/inputs/temp-test/317.inp.141.2 > ./outputs/t1177

./replace_instrumented.exe 'c[^a--]-' '&'  < $ROOT/inputs/temp-test/318.inp.141.3 > ./outputs/t1178

./replace_instrumented.exe 'd' 'MmG]j}^kC1v9&)@IDYiz'\'';OSYD&k}crmPG^5g?/'  < $ROOT/inputs/input/ruin.955 > ./outputs/t1179

./replace_instrumented.exe 'd' 'W5QeouQGFKI&'\''2),,O1<HEyR)\#6$~\h/z#&u_Uj'  < $ROOT/inputs/input/ruin.414 > ./outputs/t1180

./replace_instrumented.exe 'd' 'o'  < $ROOT/inputs/input/ruin.1837 > ./outputs/t1181

./replace_instrumented.exe 'd' 'z>'  < $ROOT/inputs/input/ruin.1414 > ./outputs/t1182

./replace_instrumented.exe 'e' '@,tDXi*;qGHNFVV$d#hd'  < $ROOT/inputs/input/ruin.736 > ./outputs/t1183

./replace_instrumented.exe 'e' 'h'  < $ROOT/inputs/input/ruin.1833 > ./outputs/t1184

./replace_instrumented.exe 'f' 'f \RbTgbc"N]M>?p2'\''g'\''\v'  < $ROOT/inputs/input/ruin.44 > ./outputs/t1185

./replace_instrumented.exe 'g' 'A'  < $ROOT/inputs/input/ruin.127 > ./outputs/t1186

./replace_instrumented.exe 'g' 'G*7D:6^_h`8n@*deLn'  < $ROOT/inputs/input/ruin.1859 > ./outputs/t1187

./replace_instrumented.exe 'g' 'O>w-xOn _^8DDez8}PX=$`~'  < $ROOT/inputs/input/ruin.624 > ./outputs/t1188

./replace_instrumented.exe 'h' '6'  < $ROOT/inputs/input/ruin.629 > ./outputs/t1189

./replace_instrumented.exe 'h' 'C'  < $ROOT/inputs/input/ruin.1885 > ./outputs/t1190

./replace_instrumented.exe 'i' '+-$GSJR|61O"bXEf~l@G#'  < $ROOT/inputs/input/ruin.1912 > ./outputs/t1191

./replace_instrumented.exe 'i' '6'  < $ROOT/inputs/input/ruin.1031 > ./outputs/t1192

./replace_instrumented.exe 'i' '62k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G'  < $ROOT/inputs/input/ruin.1031 > ./outputs/t1193

./replace_instrumented.exe 'i' ';!{5}'  < $ROOT/inputs/input/ruin.115 > ./outputs/t1194

./replace_instrumented.exe 'i' '<.'\''F=YB?N(u5L;RCvxh5pg/6B3Ma`Yy^~+2/S}'  < $ROOT/inputs/input/ruin.1938 > ./outputs/t1195

./replace_instrumented.exe 'i' 't!8ey$58#h'  < $ROOT/inputs/input/ruin.78 > ./outputs/t1196

./replace_instrumented.exe 'j' 'wa>o$un8[j}CvDtO'  < $ROOT/inputs/input/ruin.108 > ./outputs/t1197

./replace_instrumented.exe 'l' 'f'  < $ROOT/inputs/input/ruin.946 > ./outputs/t1198

./replace_instrumented.exe 'l' 'va~y^kcfJ^dEk~7R&7i`_HBl=+ccP_Sm]30txxupfl'\''{C#'  < $ROOT/inputs/input/ruin.1984 > ./outputs/t1199

./replace_instrumented.exe 'm' '/'  < $ROOT/inputs/input/ruin.1114 > ./outputs/t1200

./replace_instrumented.exe 'm' '0'  < $ROOT/inputs/input/ruin.879 > ./outputs/t1201

./replace_instrumented.exe 'm' 'B9Fb'  < $ROOT/inputs/input/ruin.167 > ./outputs/t1202

./replace_instrumented.exe 'm' 'Ml'  < $ROOT/inputs/input/ruin.1996 > ./outputs/t1203

./replace_instrumented.exe 'm' 'X'  < $ROOT/inputs/input/ruin.459 > ./outputs/t1204

./replace_instrumented.exe 'm*$' '/'  < $ROOT/inputs/input/ruin.1114 > ./outputs/t1205

./replace_instrumented.exe 'm*$' 'Ml'  < $ROOT/inputs/input/ruin.1996 > ./outputs/t1206

./replace_instrumented.exe 'm@n$' '7"py31%VhaB9=x'  < $ROOT/inputs/input/ruin.394 > ./outputs/t1207

./replace_instrumented.exe 'n' '/T'  < $ROOT/inputs/input/ruin.594 > ./outputs/t1208

./replace_instrumented.exe 'o' 'GX,Cu(WNj'  < $ROOT/inputs/input/ruin.1749 > ./outputs/t1209

./replace_instrumented.exe 'o' ']'  < $ROOT/inputs/input/ruin.1577 > ./outputs/t1210

./replace_instrumented.exe 'o'\''-' 'e'  < $ROOT/inputs/input/ruin.1907 > ./outputs/t1211

./replace_instrumented.exe 'o@@' '+'  < $ROOT/inputs/input/ruin.568 > ./outputs/t1212

./replace_instrumented.exe 'p' 'I'  < $ROOT/inputs/input/ruin.413 > ./outputs/t1213

./replace_instrumented.exe 'p*' '"WJ +9!ApjK'  < $ROOT/inputs/input/ruin.1399 > ./outputs/t1214

./replace_instrumented.exe 'p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<A[^a-c][0-9]@[*' '&a@%'  < $ROOT/inputs/temp-test/589.inp.253.1 > ./outputs/t1215

./replace_instrumented.exe 'p@n' 'a&L'  < $ROOT/inputs/input/ruin.274 > ./outputs/t1216

./replace_instrumented.exe 'q' 'E'  < $ROOT/inputs/input/ruin.1057 > ./outputs/t1217

./replace_instrumented.exe 'q' 'E7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp'  < $ROOT/inputs/input/ruin.1057 > ./outputs/t1218

./replace_instrumented.exe 'q' 'IirRPe>0iIjW%K:~^H{21R'  < $ROOT/inputs/input/ruin.1552 > ./outputs/t1219

./replace_instrumented.exe 'q' 'cC4(j6a>IX1EH2r{.d V<%s]2X'  < $ROOT/inputs/input/ruin.1589 > ./outputs/t1220

./replace_instrumented.exe 'q' 'wt5(~7ozr>3'\''R6}}$ro{9ghx'\''5eBz~[SZ4aw98rWZ8pN;p}dh{awT!'  < $ROOT/inputs/input/ruin.521 > ./outputs/t1221

./replace_instrumented.exe 'q'\''Ck;oR7' 'jGU}XIi?]qLF"YtOv~~lB;!5+a):Y'  < $ROOT/inputs/input/ruin.1348 > ./outputs/t1222

./replace_instrumented.exe 'qz' 'm'  < $ROOT/inputs/input/ruin.1357 > ./outputs/t1223

./replace_instrumented.exe 'r' 'P wrT^[v'  < $ROOT/inputs/input/ruin.1889 > ./outputs/t1224

./replace_instrumented.exe 'r' '['  < $ROOT/inputs/input/ruin.478 > ./outputs/t1225

./replace_instrumented.exe 's$' '4'  < $ROOT/inputs/input/ruin.847 > ./outputs/t1226

./replace_instrumented.exe 's' '*idnvvLz)]37D7^a'  < $ROOT/inputs/input/ruin.769 > ./outputs/t1227

./replace_instrumented.exe 's' 'S'  < $ROOT/inputs/input/ruin.1649 > ./outputs/t1228

./replace_instrumented.exe 's' '`o8oL$^vE P()\:5;1af!&IGg~yDx>RB6h0.,WNAuM%[x;Y'\''xp$2DN'  < $ROOT/inputs/input/ruin.860 > ./outputs/t1229

./replace_instrumented.exe 's' 'ke_A{j'\''5'  < $ROOT/inputs/input/ruin.1648 > ./outputs/t1230

./replace_instrumented.exe 't$' 'H'  < $ROOT/inputs/input/ruin.1464 > ./outputs/t1231

./replace_instrumented.exe 't' '-gf@/{AfvdzFO'  < $ROOT/inputs/input/ruin.1870 > ./outputs/t1232

./replace_instrumented.exe 't' '@~jUa){1S?_^6GN)8I|&~"/L_(iq#'  < $ROOT/inputs/input/ruin.671 > ./outputs/t1233

./replace_instrumented.exe 't' 'h'  < $ROOT/inputs/input/ruin.1416 > ./outputs/t1234

./replace_instrumented.exe 'u' 'DCN4"{FW^I%=M8,i]G '\''FcEpuH'\''~c2^L3Bj35$J0LOJvv}q\z]'  < $ROOT/inputs/input/ruin.510 > ./outputs/t1235

./replace_instrumented.exe 'u' 'In1%L5k:Ru\3H# ]-QF'  < $ROOT/inputs/input/ruin.1874 > ./outputs/t1236

./replace_instrumented.exe 'u' 'T'  < $ROOT/inputs/input/ruin.466 > ./outputs/t1237

./replace_instrumented.exe 'u' '[8$F_eY'  < $ROOT/inputs/input/ruin.1145 > ./outputs/t1238

./replace_instrumented.exe 'u' 't'  < $ROOT/inputs/input/ruin.1124 > ./outputs/t1239

./replace_instrumented.exe 'u' '}'  < $ROOT/inputs/input/ruin.1382 > ./outputs/t1240

./replace_instrumented.exe 'u*$' 'NgW3k~nFJWW0d%"'  < $ROOT/inputs/input/ruin.1110 > ./outputs/t1241

./replace_instrumented.exe 'v' 'c'  < $ROOT/inputs/input/ruin.729 > ./outputs/t1242

./replace_instrumented.exe 'v' 'riSuHLH;6ksnxf-y2vuU^'  < $ROOT/inputs/input/ruin.1077 > ./outputs/t1243

./replace_instrumented.exe 'v' 'w[(s3{cZZ~mUbU2(A$UX@ KoJ4[7oA qu?_|WJ GU OQxSx"j_l[Ws#!,Z4'\''9uk\B5>"[/<P%0gb>ExJ-"97v'  < $ROOT/inputs/input/ruin.499 > ./outputs/t1244

./replace_instrumented.exe 'v' '{ndD U;N<EuDv3]risr=A?dbryA^dbz'  < $ROOT/inputs/input/ruin.985 > ./outputs/t1245

./replace_instrumented.exe 'v?[0-9Z-a]^_`a]' ''  < $ROOT/inputs/input/ruin.83 > ./outputs/t1246

./replace_instrumented.exe 'w$' 'es=b1R:cvVwr[0nH'\''uMteaL<TR6oIeq'  < $ROOT/inputs/input/ruin.1701 > ./outputs/t1247

./replace_instrumented.exe 'w' '%.:s|HwIZ`s.lwvoiM&7g$TlM%Pgcz5^x LSK@J>YVY]'  < $ROOT/inputs/input/ruin.1550 > ./outputs/t1248

./replace_instrumented.exe 'w' '5b'  < $ROOT/inputs/input/ruin.918 > ./outputs/t1249

./replace_instrumented.exe 'w' 'U'  < $ROOT/inputs/input/ruin.1551 > ./outputs/t1250

./replace_instrumented.exe 'x' '!TZ_|!54C3*^$['  < $ROOT/inputs/input/ruin.1025 > ./outputs/t1251

./replace_instrumented.exe 'x' 'Q>P#tF'  < $ROOT/inputs/input/ruin.598 > ./outputs/t1252

./replace_instrumented.exe 'x' 'vif#21aJuxd&,I1PPnf{b,On|j&db8)b<`\|'  < $ROOT/inputs/input/ruin.334 > ./outputs/t1253

./replace_instrumented.exe 'y' '$'  < $ROOT/inputs/input/ruin.1699 > ./outputs/t1254

./replace_instrumented.exe 'y/' 'G'  < $ROOT/inputs/input/ruin.1713 > ./outputs/t1255

./replace_instrumented.exe 'z' '7N?!wFKF+nl$JG]\l|P\}]'\'''  < $ROOT/inputs/input/ruin.198 > ./outputs/t1256

./replace_instrumented.exe 'z' 'RquQ5Vxh[sU1'  < $ROOT/inputs/input/ruin.479 > ./outputs/t1257

./replace_instrumented.exe 'z' '|!]P(D3RiY#b#z'\''7|UAr}'  < $ROOT/inputs/input/ruin.1002 > ./outputs/t1258

./replace_instrumented.exe '{' '+*99`cWbDE]&LL%\!=ocKQ'\''O+.[_4C@]'\''8'  < $ROOT/inputs/input/ruin.688 > ./outputs/t1259

./replace_instrumented.exe '{' 'Q'  < $ROOT/inputs/input/ruin.1832 > ./outputs/t1260

./replace_instrumented.exe '{' 'Y'  < $ROOT/inputs/input/ruin.1448 > ./outputs/t1261

./replace_instrumented.exe '{' 'hn3sgyo$9.^y`X";72$qC'\'')fKf!'\''B'  < $ROOT/inputs/input/ruin.719 > ./outputs/t1262

./replace_instrumented.exe '{\uX+2-' 'R'  < $ROOT/inputs/input/ruin.316 > ./outputs/t1263

./replace_instrumented.exe '|$' 'HfDW/Zd09jY~nUga6}A4YUa,Dqr3xYQE>t,EZ'  < $ROOT/inputs/input/ruin.715 > ./outputs/t1264

./replace_instrumented.exe '|' '$YCh^I\Wj>ja*r1dJ<FtZj&?HW}wua}`udW[vu_T}W;'  < $ROOT/inputs/input/ruin.974 > ./outputs/t1265

./replace_instrumented.exe '|' 'GwiK'\'']%o:MKot-V@"WY.'  < $ROOT/inputs/input/ruin.1445 > ./outputs/t1266

./replace_instrumented.exe '|' '[zw'\''0!G]!FE'  < $ROOT/inputs/input/ruin.453 > ./outputs/t1267

./replace_instrumented.exe '|?' 'E%+OB.\-JIJ"MhV]wdPWqi`t?QTW5`'  < $ROOT/inputs/input/ruin.555 > ./outputs/t1268

./replace_instrumented.exe '}' ''  < $ROOT/inputs/input/ruin.824 > ./outputs/t1269

./replace_instrumented.exe '}' 'r3pd3Trb.w]o@'  < $ROOT/inputs/input/ruin.1952 > ./outputs/t1270

./replace_instrumented.exe '})0J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF})0J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF})0J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF[Z-a]^_[Z-a]^_*[Z-a]^_*' 'a'   < $ROOT/inputs/input/ruin.1616 > ./outputs/t1271

./replace_instrumented.exe '~$' 'AD1^,&FOIyq7KTrQu^vZ]v\X&>^(W#CM^K@\|+;bEf2X?RkW'  < $ROOT/inputs/input/ruin.443 > ./outputs/t1272

./replace_instrumented.exe '~' '8hxxn}h2[n]KY)mM?MnZ6t|h##e\}GBn}39c'  < $ROOT/inputs/input/ruin.1847 > ./outputs/t1273

./replace_instrumented.exe '~' ':7WZ2'  < $ROOT/inputs/input/ruin.1295 > ./outputs/t1274

./replace_instrumented.exe '~' 'M'  < $ROOT/inputs/input/ruin.39 > ./outputs/t1275

./replace_instrumented.exe '~@@' 'ah'  < $ROOT/inputs/input/ruin.1313 > ./outputs/t1276

./replace_instrumented.exe *4 5   < $ROOT/inputs/moni/f1.inp > ./outputs/t1277

./replace_instrumented.exe *[a-z]? 4  < $ROOT/inputs/moni/f2.inp > ./outputs/t1278

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1011 > ./outputs/t1279

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1056 > ./outputs/t1280

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1280 > ./outputs/t1281

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1401 > ./outputs/t1282

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1480 > ./outputs/t1283

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1581 > ./outputs/t1284

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1590 > ./outputs/t1285

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1592 > ./outputs/t1286

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1595 > ./outputs/t1287

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1778 > ./outputs/t1288

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1788 > ./outputs/t1289

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.1814 > ./outputs/t1290

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.2 > ./outputs/t1291

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.266 > ./outputs/t1292

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.271 > ./outputs/t1293

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.363 > ./outputs/t1294

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.400 > ./outputs/t1295

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.43 > ./outputs/t1296

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.622 > ./outputs/t1297

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.792 > ./outputs/t1298

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.957 > ./outputs/t1299

./replace_instrumented.exe  < $ROOT/inputs/input/ruin.990 > ./outputs/t1300

./replace_instrumented.exe '%jh[3-9]@f**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1301

./replace_instrumented.exe '%q' 'd'  < $ROOT/inputs/input/ruin.1813 > ./outputs/t1302

./replace_instrumented.exe '%x' 'm~bsLkd.o0:yq^yMu$f*\Yc<'  < $ROOT/inputs/input/ruin.226 > ./outputs/t1303

./replace_instrumented.exe '%yw,0+8@n' 'a&`'  < $ROOT/inputs/input/ruin.1158 > ./outputs/t1304

./replace_instrumented.exe '%z$' '*'  < $ROOT/inputs/input/ruin.1693 > ./outputs/t1305

./replace_instrumented.exe '%|$' 'j'  < $ROOT/inputs/input/ruin.944 > ./outputs/t1306

./replace_instrumented.exe '&$ab**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1307

./replace_instrumented.exe '&' 'II|-#'  < $ROOT/inputs/input/ruin.673 > ./outputs/t1308

./replace_instrumented.exe '&' 'e&R7H2HKc,  kd7Q<uPE<Zx+ ah'  < $ROOT/inputs/input/ruin.1422 > ./outputs/t1309

./replace_instrumented.exe '&' 'e'  < $ROOT/inputs/input/ruin.1537 > ./outputs/t1310

./replace_instrumented.exe '&' 'pg'  < $ROOT/inputs/input/ruin.124 > ./outputs/t1311

./replace_instrumented.exe '&6 **' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t1312

./replace_instrumented.exe '' ' '  < $ROOT/inputs/input/ruin.452 > ./outputs/t1313

./replace_instrumented.exe '' '!'  < $ROOT/inputs/input/ruin.922 > ./outputs/t1314

./replace_instrumented.exe '' '"'  < $ROOT/inputs/input/ruin.1728 > ./outputs/t1315

./replace_instrumented.exe '' '$'  < $ROOT/inputs/input/ruin.1750 > ./outputs/t1316

./replace_instrumented.exe '' ''\''Z y<j$`3-b6{hC,KW4dJZ\tWkm'  < $ROOT/inputs/input/ruin.1104 > ./outputs/t1317

./replace_instrumented.exe '' '(,t{kot~t4%]~"i|?`&\Qrhl6SO&4rT\Y[].'  < $ROOT/inputs/input/ruin.1822 > ./outputs/t1318

./replace_instrumented.exe '' '(h.--"zy)?N*:eh'  < $ROOT/inputs/input/ruin.1899 > ./outputs/t1319

./replace_instrumented.exe '' ').EgV46YLA|t(jN!%1'\''AO,A_{pP_'  < $ROOT/inputs/input/ruin.1835 > ./outputs/t1320

./replace_instrumented.exe '' '-'  < $ROOT/inputs/input/ruin.373 > ./outputs/t1321

./replace_instrumented.exe '' '-'  < $ROOT/inputs/input/ruin.705 > ./outputs/t1322

./replace_instrumented.exe '' '-,i3&R}<-W[ItMRB{.b2mI]T1UZKpg'  < $ROOT/inputs/input/ruin.772 > ./outputs/t1323

./replace_instrumented.exe '' '1'  < $ROOT/inputs/input/ruin.227 > ./outputs/t1324

./replace_instrumented.exe '' '2'  < $ROOT/inputs/input/ruin.236 > ./outputs/t1325

./replace_instrumented.exe '' '4k2I3Sx/L.0lMc,Ct<O91xn!N!6XD)Za'  < $ROOT/inputs/input/ruin.440 > ./outputs/t1326

./replace_instrumented.exe '' '9'  < $ROOT/inputs/input/ruin.1064 > ./outputs/t1327

./replace_instrumented.exe '' ';C5Q#+!5V<oSjIW"k3~oP *vIBN'  < $ROOT/inputs/input/ruin.257 > ./outputs/t1328

./replace_instrumented.exe '' '>'  < $ROOT/inputs/input/ruin.628 > ./outputs/t1329

./replace_instrumented.exe '' '@g5fQ|ruR,ZAD+Q/'  < $ROOT/inputs/input/ruin.19 > ./outputs/t1330

./replace_instrumented.exe '' 'BTKzQX[0{Fdkhsx%lQ<KOmjPx{RO4%y?I<*;>77`@akb|!'\''B~Awc]Rw*Jg;joAvfHhyE_e3'  < $ROOT/inputs/input/ruin.861 > ./outputs/t1331

./replace_instrumented.exe '' 'E4\70!JDTfF[Z}ggd'  < $ROOT/inputs/input/ruin.880 > ./outputs/t1332

./replace_instrumented.exe '' 'G'  < $ROOT/inputs/input/ruin.1466 > ./outputs/t1333

./replace_instrumented.exe '' 'G'  < $ROOT/inputs/input/ruin.1563 > ./outputs/t1334

./replace_instrumented.exe '' 'K'  < $ROOT/inputs/input/ruin.1852 > ./outputs/t1335

./replace_instrumented.exe '' 'K'  < $ROOT/inputs/input/ruin.259 > ./outputs/t1336

./replace_instrumented.exe '' 'K'  < $ROOT/inputs/input/ruin.859 > ./outputs/t1337

./replace_instrumented.exe '' 'L/FLz+< y/Ch49G5.NnZ7s2<*w+Vf,L2'  < $ROOT/inputs/input/ruin.134 > ./outputs/t1338

./replace_instrumented.exe '' 'M8|(B=(H(T{P 1$~klg'  < $ROOT/inputs/input/ruin.114 > ./outputs/t1339

./replace_instrumented.exe '' 'M\?#!~.)L* N'\''8%*?\DH&Kn+Kb$@&?H! '\''b<+~(8QgW'\''k('  < $ROOT/inputs/input/ruin.1652 > ./outputs/t1340

./replace_instrumented.exe '' 'Pd#(tEJLie`_i@Qb,]e66XCMVy8%p9<>%Z[P'  < $ROOT/inputs/input/ruin.221 > ./outputs/t1341

./replace_instrumented.exe '' 'T'  < $ROOT/inputs/input/ruin.1744 > ./outputs/t1342

./replace_instrumented.exe '' 'T'  < $ROOT/inputs/input/ruin.1755 > ./outputs/t1343

./replace_instrumented.exe '' 'U@DbH]&>ZR('  < $ROOT/inputs/input/ruin.1839 > ./outputs/t1344

./replace_instrumented.exe '' 'VcA~!1&(Sea@k2P2'  < $ROOT/inputs/input/ruin.1776 > ./outputs/t1345

./replace_instrumented.exe '' 'Y!ME~#'  < $ROOT/inputs/input/ruin.1170 > ./outputs/t1346

./replace_instrumented.exe '' '^TA6q#%uc@pEv0e!Gk8Z?vyYdyRhx~|6\ BY7fs}+:K7S'  < $ROOT/inputs/input/ruin.1437 > ./outputs/t1347

./replace_instrumented.exe '' '_'  < $ROOT/inputs/input/ruin.1427 > ./outputs/t1348

./replace_instrumented.exe '' 'a'  < $ROOT/inputs/input/ruin.696 > ./outputs/t1349

./replace_instrumented.exe '' 'c'  < $ROOT/inputs/input/ruin.1135 > ./outputs/t1350

./replace_instrumented.exe '' 'd'  < $ROOT/inputs/input/ruin.584 > ./outputs/t1351

./replace_instrumented.exe '' 'dV\?Qb7f]GZ:YV(22%ESH;?$'  < $ROOT/inputs/input/ruin.1160 > ./outputs/t1352

./replace_instrumented.exe '' 'f'  < $ROOT/inputs/input/ruin.557 > ./outputs/t1353

./replace_instrumented.exe '' 'h'  < $ROOT/inputs/input/ruin.1966 > ./outputs/t1354

./replace_instrumented.exe '' 'j'  < $ROOT/inputs/input/ruin.1735 > ./outputs/t1355

./replace_instrumented.exe '' 'j@+'  < $ROOT/inputs/input/ruin.339 > ./outputs/t1356

./replace_instrumented.exe '' 'kGv'\''@V.cj'  < $ROOT/inputs/input/ruin.1518 > ./outputs/t1357

./replace_instrumented.exe '' 'l[*U(0T7mn'  < $ROOT/inputs/input/ruin.1352 > ./outputs/t1358

./replace_instrumented.exe '' 'n'  < $ROOT/inputs/input/ruin.724 > ./outputs/t1359

./replace_instrumented.exe '' 'oB'  < $ROOT/inputs/input/ruin.220 > ./outputs/t1360

./replace_instrumented.exe '' 'ua1CB[Gc%"D/ ~h[ifc{.'\'''  < $ROOT/inputs/input/ruin.375 > ./outputs/t1361

./replace_instrumented.exe '' 'v'  < $ROOT/inputs/input/ruin.1429 > ./outputs/t1362

./replace_instrumented.exe '' 'x'  < $ROOT/inputs/input/ruin.886 > ./outputs/t1363

./replace_instrumented.exe '' 'x|g=Y,'  < $ROOT/inputs/input/ruin.1880 > ./outputs/t1364

./replace_instrumented.exe '' '{#umxUXsQww[=tD`2X'  < $ROOT/inputs/input/ruin.211 > ./outputs/t1365

./replace_instrumented.exe '' '{'  < $ROOT/inputs/input/ruin.1255 > ./outputs/t1366

./replace_instrumented.exe '' '|,'  < $ROOT/inputs/input/ruin.1173 > ./outputs/t1367

./replace_instrumented.exe '' '|g4|;Y<)c'\''5\IC5utpVH'  < $ROOT/inputs/input/ruin.784 > ./outputs/t1368

./replace_instrumented.exe '' '}'  < $ROOT/inputs/input/ruin.1066 > ./outputs/t1369

./replace_instrumented.exe '' '~]/'  < $ROOT/inputs/input/ruin.1237 > ./outputs/t1370

./replace_instrumented.exe '' '~]/*$'  < $ROOT/inputs/input/ruin.1237 > ./outputs/t1371

./replace_instrumented.exe '' op  < $ROOT/inputs/moni/f7.inp > ./outputs/t1372

./replace_instrumented.exe ''\'' nKE'\''?' '(/>AguC9He H1#DQ$_\3z;giEd'  < $ROOT/inputs/input/ruin.869 > ./outputs/t1373

./replace_instrumented.exe ''\''$' '%'  < $ROOT/inputs/input/ruin.783 > ./outputs/t1374

./replace_instrumented.exe ''\''' 'm%NN3G5'  < $ROOT/inputs/input/ruin.92 > ./outputs/t1375

./replace_instrumented.exe ''\''0i[^>]' 'f%JGn8F(1'\''2X1w#F4X@ `bKu'\''z5>%"1xr,|i^;H0+u)A]'  < $ROOT/inputs/input/ruin.698 > ./outputs/t1376

./replace_instrumented.exe ''\''3*' '!5'  < $ROOT/inputs/input/ruin.1359 > ./outputs/t1377

./replace_instrumented.exe ''\''3fR]'\''f!t@@' 'h3'  < $ROOT/inputs/input/ruin.1757 > ./outputs/t1378

./replace_instrumented.exe ''\''5@=' 'Zi8'  < $ROOT/inputs/input/ruin.1978 > ./outputs/t1379

./replace_instrumented.exe ''\''<"7y7*' '$6B1-CefGQQf]dVO#lukP'  < $ROOT/inputs/input/ruin.183 > ./outputs/t1380

./replace_instrumented.exe ''\''=,bX!+@@[y]' 'cC'  < $ROOT/inputs/input/ruin.706 > ./outputs/t1381

./replace_instrumented.exe ''\''?*@n' 'R$W\g?~KtfT Z7}t^C<isN=sCXIezpz-\C8xg)"zcmNP'  < $ROOT/inputs/input/ruin.722 > ./outputs/t1382

./replace_instrumented.exe ''\''A@@D' '0'  < $ROOT/inputs/input/ruin.890 > ./outputs/t1383

./replace_instrumented.exe ''\''Hs$' 'vvG{[/ZzAySoM$[X*ij4,vM1}^Xs2$L"^/ XIb_'  < $ROOT/inputs/input/ruin.718 > ./outputs/t1384

./replace_instrumented.exe ''\''\m' '+6DCv5ol)/q7p'  < $ROOT/inputs/input/ruin.1639 > ./outputs/t1385

./replace_instrumented.exe ''\''`2ZFWK[^0-9A-G]' '^U7*jCT2uSAbKD0d,m2|1|q ]|'  < $ROOT/inputs/input/ruin.1624 > ./outputs/t1386

./replace_instrumented.exe ''\''`2ZFWK[^0-9A-G]?*' '^U7*jCT2uSAbKD0d,m2|1|q ]|'  < $ROOT/inputs/input/ruin.1624 > ./outputs/t1387

./replace_instrumented.exe ''\''ae[d_$T?' 'i'  < $ROOT/inputs/input/ruin.838 > ./outputs/t1388

./replace_instrumented.exe ''\''dwM?' '!'  < $ROOT/inputs/input/ruin.87 > ./outputs/t1389

./replace_instrumented.exe ''\''i,Zl' 'JocZqS0rv$$&knoDor[tO8v }wC!q.H:B~)^t^zXX)@hl%'  < $ROOT/inputs/input/ruin.348 > ./outputs/t1390

./replace_instrumented.exe ''\''vb(#?' 'E[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur'  < $ROOT/inputs/input/ruin.1328 > ./outputs/t1391

./replace_instrumented.exe ''\''vb(#?' 'E[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\'[a-z]*[0-9]*'+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur'  < $ROOT/inputs/input/ruin.1328 > ./outputs/t1392

./replace_instrumented.exe ')' '%QdHuGpf=?qy 3~3QQ_2yf8K<@XUjm78_'  < $ROOT/inputs/input/ruin.42 > ./outputs/t1393

./replace_instrumented.exe ')' 'G(:jQg6w{T Va1#rG@ Oh{y=E`8'  < $ROOT/inputs/input/ruin.1685 > ./outputs/t1394

./replace_instrumented.exe ')' 'bj:]m@p4*VSsQ[P&I)~5Q'  < $ROOT/inputs/input/ruin.410 > ./outputs/t1395

./replace_instrumented.exe ')[^~]' 'HnY<{aYd91.NgWAZ'  < $ROOT/inputs/input/ruin.1831 > ./outputs/t1396

./replace_instrumented.exe '*$' '2'  < $ROOT/inputs/input/ruin.849 > ./outputs/t1397

./replace_instrumented.exe '*$' '4'  < $ROOT/inputs/input/ruin.476 > ./outputs/t1398

./replace_instrumented.exe '*$' '9Yd(bzS<c l?GhI'  < $ROOT/inputs/input/ruin.100 > ./outputs/t1399

./replace_instrumented.exe '*$' 'D'  < $ROOT/inputs/input/ruin.1998 > ./outputs/t1400

./replace_instrumented.exe '*$' 'L'  < $ROOT/inputs/input/ruin.432 > ./outputs/t1401

./replace_instrumented.exe '*$' '`'  < $ROOT/inputs/input/ruin.1249 > ./outputs/t1402

./replace_instrumented.exe '*$' 'ap[D!P=9JT#e4"ii]*DCP)_yR'  < $ROOT/inputs/input/ruin.1956 > ./outputs/t1403

./replace_instrumented.exe '*$' 'f'  < $ROOT/inputs/input/ruin.1108 > ./outputs/t1404

./replace_instrumented.exe '*$' 'l'  < $ROOT/inputs/input/ruin.1251 > ./outputs/t1405

./replace_instrumented.exe '*$' 'nDf38_|G_<?#50:)+jM'  < $ROOT/inputs/input/ruin.1242 > ./outputs/t1406

./replace_instrumented.exe '*$' 'w'  < $ROOT/inputs/input/ruin.1436 > ./outputs/t1407

./replace_instrumented.exe '*$' '{'  < $ROOT/inputs/input/ruin.1255 > ./outputs/t1408

./replace_instrumented.exe '*&\:H@@Y\' '7'  < $ROOT/inputs/input/ruin.1704 > ./outputs/t1409

./replace_instrumented.exe '*'   < $ROOT/inputs/input/ruin.1162 > ./outputs/t1410

./replace_instrumented.exe '*'   < $ROOT/inputs/input/ruin.1269 > ./outputs/t1411

./replace_instrumented.exe '*'   < $ROOT/inputs/temp-test/532.inp.231.1 > ./outputs/t1412

./replace_instrumented.exe '*' ' '  < $ROOT/inputs/input/ruin.1283 > ./outputs/t1413

./replace_instrumented.exe '*' ' '  < $ROOT/inputs/input/ruin.486 > ./outputs/t1414

./replace_instrumented.exe '*' ' iUr?ERqn:&}P0'  < $ROOT/inputs/input/ruin.582 > ./outputs/t1415

./replace_instrumented.exe '*' ' vf6BS n\'\''3;^AX<~{)[+<ucX8fJ%lTq*f>$x;$K(G\Dx(x5daSW'\''ig%-P<``YCp1awN5jBMe!a{ehg6AAG9%P;+G[o_d6:'  < $ROOT/inputs/input/ruin.762 > ./outputs/t1416

./replace_instrumented.exe '*' '!'  < $ROOT/inputs/input/ruin.471 > ./outputs/t1417

./replace_instrumented.exe '*' '!'  < $ROOT/inputs/input/ruin.659 > ./outputs/t1418

./replace_instrumented.exe '*' '#'  < $ROOT/inputs/input/ruin.1622 > ./outputs/t1419

./replace_instrumented.exe '*' '#'  < $ROOT/inputs/input/ruin.866 > ./outputs/t1420

./replace_instrumented.exe '*' '$'  < $ROOT/inputs/input/ruin.1528 > ./outputs/t1421

./replace_instrumented.exe '*' '$QoC!xsIeF,A!nqn4vnEyMHomb8wt~}yL(:1p.(ks|;anN_?6/|L'  < $ROOT/inputs/input/ruin.809 > ./outputs/t1422

./replace_instrumented.exe '*' '$U`XG#S'  < $ROOT/inputs/input/ruin.1319 > ./outputs/t1423

./replace_instrumented.exe '*' '%'  < $ROOT/inputs/input/ruin.1122 > ./outputs/t1424

./replace_instrumented.exe '*' '%2 ]TOV!zB)ez~h;W'\''Rv|F"FjKHB7'  < $ROOT/inputs/input/ruin.1720 > ./outputs/t1425

./replace_instrumented.exe '*' '%Z}!'  < $ROOT/inputs/input/ruin.740 > ./outputs/t1426

./replace_instrumented.exe '*' '&#tvW5KHbWqppCxb#?ETu@O!uhsxBI)E%Bx6E9Db>;g[q'\''1'  < $ROOT/inputs/input/ruin.1533 > ./outputs/t1427

./replace_instrumented.exe '*' '&'  < $ROOT/inputs/input/ruin.1071 > ./outputs/t1428

./replace_instrumented.exe '*' '&'  < $ROOT/inputs/input/ruin.378 > ./outputs/t1429

./replace_instrumented.exe '*' '&-EO<`uTW\}@>'  < $ROOT/inputs/input/ruin.415 > ./outputs/t1430

./replace_instrumented.exe '*' '&@n'  < $ROOT/inputs/temp-test/532.inp.231.1 > ./outputs/t1431

./replace_instrumented.exe '*' '&tm#n4gz=9'  < $ROOT/inputs/input/ruin.1949 > ./outputs/t1432

./replace_instrumented.exe '*' ''  < $ROOT/inputs/input/ruin.993 > ./outputs/t1433

./replace_instrumented.exe '*' ''\''$ia|e*5g"jk"'\''6'  < $ROOT/inputs/input/ruin.516 > ./outputs/t1434

./replace_instrumented.exe '*' ''\'''  < $ROOT/inputs/input/ruin.1968 > ./outputs/t1435

./replace_instrumented.exe '*' ''\'',_{05yQ>]e2Ll},e5b]TTt}JwWxDfD`%\uKmF&L5CRcou0vj/m'  < $ROOT/inputs/input/ruin.1142 > ./outputs/t1436

./replace_instrumented.exe '*' '(!('  < $ROOT/inputs/input/ruin.520 > ./outputs/t1437

./replace_instrumented.exe '*' '*@czJB%'\''p!{sw~#<3`jZj&,nBHTJ/,[iy#['  < $ROOT/inputs/input/ruin.1272 > ./outputs/t1438

./replace_instrumented.exe '*' '*eb47-Z1(o?{cRs3'\''-Z6a+{mK<8:Jtzs2<'  < $ROOT/inputs/input/ruin.171 > ./outputs/t1439

./replace_instrumented.exe '*' '+'  < $ROOT/inputs/input/ruin.1137 > ./outputs/t1440

./replace_instrumented.exe '*' '+m8CH#~??9k3<a6'  < $ROOT/inputs/input/ruin.408 > ./outputs/t1441

./replace_instrumented.exe '*' ','  < $ROOT/inputs/input/ruin.1353 > ./outputs/t1442

./replace_instrumented.exe '*' '-'  < $ROOT/inputs/input/ruin.1210 > ./outputs/t1443

./replace_instrumented.exe '*' '-'  < $ROOT/inputs/input/ruin.241 > ./outputs/t1444

./replace_instrumented.exe '*' '-4>'  < $ROOT/inputs/input/ruin.1834 > ./outputs/t1445

./replace_instrumented.exe '*' '-D0?|{_vP-|TX(X=iq'  < $ROOT/inputs/input/ruin.1134 > ./outputs/t1446

./replace_instrumented.exe '*' '-Sao&~r'\'':~.S]#LZyv}n8e.'  < $ROOT/inputs/input/ruin.458 > ./outputs/t1447

./replace_instrumented.exe '*' '.'  < $ROOT/inputs/input/ruin.1675 > ./outputs/t1448

./replace_instrumented.exe '*' '.H[:am)]H.Eaz0xd\*+'\''@~q>B~N<'\''W'  < $ROOT/inputs/input/ruin.881 > ./outputs/t1449

./replace_instrumented.exe '*' '.L'  < $ROOT/inputs/input/ruin.17 > ./outputs/t1450

./replace_instrumented.exe '*' '.f/!.,_~+OWno#EPEePE'\''`.sN#uxti:ia9h##A?$NO'  < $ROOT/inputs/input/ruin.59 > ./outputs/t1451

./replace_instrumented.exe '*' '/'  < $ROOT/inputs/input/ruin.1605 > ./outputs/t1452

./replace_instrumented.exe '*' '/'  < $ROOT/inputs/input/ruin.336 > ./outputs/t1453

./replace_instrumented.exe '*' '0'  < $ROOT/inputs/input/ruin.1951 > ./outputs/t1454

./replace_instrumented.exe '*' '1'  < $ROOT/inputs/input/ruin.1468 > ./outputs/t1455

./replace_instrumented.exe '*' '2b;'\''An'  < $ROOT/inputs/input/ruin.923 > ./outputs/t1456

./replace_instrumented.exe '*' '3'  < $ROOT/inputs/input/ruin.738 > ./outputs/t1457

./replace_instrumented.exe '*' '3_a9tyP_K'  < $ROOT/inputs/input/ruin.224 > ./outputs/t1458

./replace_instrumented.exe '*' '3iSUKlIcJY@zzKt\o}E]o[Nt}2@,!\FR +S:,^u'  < $ROOT/inputs/input/ruin.1795 > ./outputs/t1459

./replace_instrumented.exe '*' '3ntGq*:GgM74d~I<l'  < $ROOT/inputs/input/ruin.104 > ./outputs/t1460

./replace_instrumented.exe '*' '4j'  < $ROOT/inputs/input/ruin.1715 > ./outputs/t1461

./replace_instrumented.exe '*' '5'  < $ROOT/inputs/input/ruin.651 > ./outputs/t1462

./replace_instrumented.exe '*' '5'  < $ROOT/inputs/input/ruin.931 > ./outputs/t1463

./replace_instrumented.exe '*' '5.'  < $ROOT/inputs/input/ruin.1186 > ./outputs/t1464

./replace_instrumented.exe '*' '5UQx)=#p,UFSk#_5dkspr'  < $ROOT/inputs/input/ruin.449 > ./outputs/t1465

./replace_instrumented.exe '*' '5_edflj&5h8_DCEi.gTlx*L#a)htiLD2@W$74Vc.L'  < $ROOT/inputs/input/ruin.325 > ./outputs/t1466

./replace_instrumented.exe '*' '6'  < $ROOT/inputs/input/ruin.554 > ./outputs/t1467

./replace_instrumented.exe '*' '7%;n!0;'  < $ROOT/inputs/input/ruin.817 > ./outputs/t1468

./replace_instrumented.exe '*' '7'  < $ROOT/inputs/input/ruin.1442 > ./outputs/t1469

./replace_instrumented.exe '*' '7'  < $ROOT/inputs/input/ruin.1983 > ./outputs/t1470

./replace_instrumented.exe '*' '8'  < $ROOT/inputs/input/ruin.1052 > ./outputs/t1471

./replace_instrumented.exe '*' '8'  < $ROOT/inputs/input/ruin.947 > ./outputs/t1472

./replace_instrumented.exe '*' '8pAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7m'  < $ROOT/inputs/input/ruin.1052 > ./outputs/t1473

./replace_instrumented.exe '*' '9y}x\e/hlao4-J,5Brx*UDmoT |WPY biu:":Vt'\''b?)#uE}Fft%rk;(wUa8r'  < $ROOT/inputs/input/ruin.1569 > ./outputs/t1474

./replace_instrumented.exe '*' ': 4`?Kz] u"eMDvLqtSl$_5S"|{_5'  < $ROOT/inputs/input/ruin.788 > ./outputs/t1475

./replace_instrumented.exe '*' ':'  < $ROOT/inputs/input/ruin.1308 > ./outputs/t1476

./replace_instrumented.exe '*' ':'  < $ROOT/inputs/input/ruin.1967 > ./outputs/t1477

./replace_instrumented.exe '*' ':'  < $ROOT/inputs/input/ruin.905 > ./outputs/t1478

./replace_instrumented.exe '*' ':J->WYooGp*:r1[?,ZWzKCBB'  < $ROOT/inputs/input/ruin.640 > ./outputs/t1479

./replace_instrumented.exe '*' ';<'\''v`iDr8;#lj`gFV{L1E`F>Wn'\''ZeP'\''LY7t6)T'  < $ROOT/inputs/input/ruin.1507 > ./outputs/t1480

./replace_instrumented.exe '*' ';vzFr_%VsZj81=`|r?_&t6Pcx5x(hTheq0yE75]Z'  < $ROOT/inputs/input/ruin.815 > ./outputs/t1481

./replace_instrumented.exe '*' '<.!=Ljt]D4[&K:%i/`t%;>'  < $ROOT/inputs/input/ruin.758 > ./outputs/t1482

./replace_instrumented.exe '*' '<26no'\''uHp_tNoqJ*[!mGwAfC<bg#fVUjsVhF_U_k:[qge8m2A%!'  < $ROOT/inputs/input/ruin.1216 > ./outputs/t1483

./replace_instrumented.exe '*' '<[IB@lD7)<VIn-|{+ijt<n}oz'\''p0w0!k]U/~],98q&^,HLc9:nJD!S k-gi]}g/m'  < $ROOT/inputs/input/ruin.1269 > ./outputs/t1484

./replace_instrumented.exe '*' '='  < $ROOT/inputs/input/ruin.1162 > ./outputs/t1485

./replace_instrumented.exe '*' '='  < $ROOT/inputs/input/ruin.1676 > ./outputs/t1486

./replace_instrumented.exe '*' '>'  < $ROOT/inputs/input/ruin.1417 > ./outputs/t1487

./replace_instrumented.exe '*' '>'  < $ROOT/inputs/input/ruin.536 > ./outputs/t1488

./replace_instrumented.exe '*' '?'  < $ROOT/inputs/input/ruin.439 > ./outputs/t1489

./replace_instrumented.exe '*' '?1#YUPSP}y'  < $ROOT/inputs/input/ruin.810 > ./outputs/t1490

./replace_instrumented.exe '*' '?MXR'\''>)$r(Yfiq~ eO66s=VLR;[T'  < $ROOT/inputs/input/ruin.1800 > ./outputs/t1491

./replace_instrumented.exe '*' '?{+v!^lJqvUd,&s,5{=7vA'  < $ROOT/inputs/input/ruin.420 > ./outputs/t1492

./replace_instrumented.exe '*' '@'  < $ROOT/inputs/input/ruin.1262 > ./outputs/t1493

./replace_instrumented.exe '*' '@'  < $ROOT/inputs/input/ruin.878 > ./outputs/t1494

./replace_instrumented.exe '*' 'A8@$#5>kr^SZP|_Cg|q`l3R].uI*'  < $ROOT/inputs/input/ruin.1758 > ./outputs/t1495

./replace_instrumented.exe '*' 'Ayxg=po%]]@lhZe,xFP.{F:@m}I)|?,Wlw>ppLMMd[{R'  < $ROOT/inputs/input/ruin.512 > ./outputs/t1496

./replace_instrumented.exe '*' 'B'  < $ROOT/inputs/input/ruin.1219 > ./outputs/t1497

./replace_instrumented.exe '*' 'B'  < $ROOT/inputs/input/ruin.502 > ./outputs/t1498

./replace_instrumented.exe '*' 'BIH%mo6 M)u#WKgz[L!G}2t%[6!AE1C:jV9'  < $ROOT/inputs/input/ruin.426 > ./outputs/t1499

./replace_instrumented.exe '*' 'C@-U'  < $ROOT/inputs/input/ruin.576 > ./outputs/t1500

./replace_instrumented.exe '*' 'CkXBvnICbdWao|!`=Pm+@9I5TWu'  < $ROOT/inputs/input/ruin.1310 > ./outputs/t1501

./replace_instrumented.exe '*' 'D'  < $ROOT/inputs/input/ruin.1998 > ./outputs/t1502

./replace_instrumented.exe '*' 'D'  < $ROOT/inputs/input/ruin.88 > ./outputs/t1503

./replace_instrumented.exe '*' 'D>gwriB0<V^6qti|/%?0C)#MA8+AZ&'  < $ROOT/inputs/input/ruin.704 > ./outputs/t1504

./replace_instrumented.exe '*' 'DVM*w<2(OU&\_HGSyM6o2TxiF3]v37y.opwBH/&y2'\''-V4^vk?H'\''5HuognF[}F&n@V'  < $ROOT/inputs/input/ruin.1733 > ./outputs/t1505

./replace_instrumented.exe '*' 'EzQo'\''9xwbhkZ:|Y)F,jmC}rWN$1^*3AXp\yo:rrvFH#UO#7$>_0ibL;x)G=@uxqR=0o|dZD|zN):dC'  < $ROOT/inputs/input/ruin.1910 > ./outputs/t1506

./replace_instrumented.exe '*' 'F- 5tmxsbhUa<v*Mh)mZ{*^\$!10qKy6k>5S [5tI04mu&{.bpKg?g%,UdYLMhG&]z'  < $ROOT/inputs/input/ruin.976 > ./outputs/t1507

./replace_instrumented.exe '*' 'GvQA5d6`7{`G3X{D9:+:'\''4^ZW$MP%0GpyOHhdXF+\dDLkTp'  < $ROOT/inputs/input/ruin.899 > ./outputs/t1508

./replace_instrumented.exe '*' 'H'  < $ROOT/inputs/input/ruin.1945 > ./outputs/t1509

./replace_instrumented.exe '*' 'H'  < $ROOT/inputs/input/ruin.485 > ./outputs/t1510

./replace_instrumented.exe '*' 'H4{}`[,(g4eKdkV-$X;D32HgE %[Qrg"nm&,iYO"EGYFqntnujmPVm<T=X'  < $ROOT/inputs/input/ruin.75 > ./outputs/t1511

./replace_instrumented.exe '*' 'H4{}`[,(g4eKdkV-$X;D32HgE %[Qrg"nm&,iYO"EGYFqntnujmPVm<T=X[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n[Z-a]^_`a]*@n'  < $ROOT/inputs/input/ruin.75 > ./outputs/t1512

./replace_instrumented.exe '*' 'H5d'  < $ROOT/inputs/input/ruin.1452 > ./outputs/t1513

./replace_instrumented.exe '*' 'Hg:(OEg%`74JT=z=z'\''MGGx7ocG$N'  < $ROOT/inputs/input/ruin.752 > ./outputs/t1514

./replace_instrumented.exe '*' 'I&i'\'''  < $ROOT/inputs/input/ruin.1404 > ./outputs/t1515

./replace_instrumented.exe '*' 'I'  < $ROOT/inputs/input/ruin.1727 > ./outputs/t1516

./replace_instrumented.exe '*' 'J'  < $ROOT/inputs/input/ruin.357 > ./outputs/t1517

./replace_instrumented.exe '*' 'J'  < $ROOT/inputs/input/ruin.742 > ./outputs/t1518

./replace_instrumented.exe '*' 'J;!rYgPGr|p,NR53Q55E`:ERqiKWg,iCq3t!'  < $ROOT/inputs/input/ruin.398 > ./outputs/t1519

./replace_instrumented.exe '*' 'JG,;t-g_\pm0Y:}<mw$;B@%pVy"`g7Y[C2m(SpRFcb|w'  < $ROOT/inputs/input/ruin.118 > ./outputs/t1520

./replace_instrumented.exe '*' 'L'  < $ROOT/inputs/input/ruin.1987 > ./outputs/t1521

./replace_instrumented.exe '*' 'L'  < $ROOT/inputs/input/ruin.274 > ./outputs/t1522

./replace_instrumented.exe '*' 'LPChM#M/":OzI UXX_Jv'\''7]M!CB'  < $ROOT/inputs/input/ruin.1521 > ./outputs/t1523

./replace_instrumented.exe '*' 'LRg'  < $ROOT/inputs/input/ruin.1960 > ./outputs/t1524

./replace_instrumented.exe '*' 'M'  < $ROOT/inputs/input/ruin.1185 > ./outputs/t1525

./replace_instrumented.exe '*' 'M'  < $ROOT/inputs/input/ruin.636 > ./outputs/t1526

./replace_instrumented.exe '*' 'M'  < $ROOT/inputs/input/ruin.645 > ./outputs/t1527

./replace_instrumented.exe '*' 'M'  < $ROOT/inputs/input/ruin.825 > ./outputs/t1528

./replace_instrumented.exe '*' 'MPKwD.47](#W/L3Yj'  < $ROOT/inputs/input/ruin.286 > ./outputs/t1529

./replace_instrumented.exe '*' 'MXM`j+WFd5g=e}7'  < $ROOT/inputs/input/ruin.411 > ./outputs/t1530

./replace_instrumented.exe '*' 'N'  < $ROOT/inputs/input/ruin.1737 > ./outputs/t1531

./replace_instrumented.exe '*' 'N'  < $ROOT/inputs/input/ruin.1954 > ./outputs/t1532

./replace_instrumented.exe '*' 'N'  < $ROOT/inputs/input/ruin.401 > ./outputs/t1533

./replace_instrumented.exe '*' 'NgjG8_`kVg5[D5RE6nU5#"1'  < $ROOT/inputs/input/ruin.350 > ./outputs/t1534

./replace_instrumented.exe '*' 'O'  < $ROOT/inputs/input/ruin.229 > ./outputs/t1535

./replace_instrumented.exe '*' 'P'  < $ROOT/inputs/input/ruin.841 > ./outputs/t1536

./replace_instrumented.exe '*' 'P54;@=_4xdN:$7^We'  < $ROOT/inputs/input/ruin.1620 > ./outputs/t1537

./replace_instrumented.exe '*' 'P\ea4(T~AiIC=5Aj'\''`~lPq'  < $ROOT/inputs/input/ruin.1446 > ./outputs/t1538

./replace_instrumented.exe '*' 'Pd?g(>Fc8M$8'  < $ROOT/inputs/input/ruin.435 > ./outputs/t1539

./replace_instrumented.exe '*' 'Pq6$0Uv>*<O%B7'  < $ROOT/inputs/input/ruin.588 > ./outputs/t1540

./replace_instrumented.exe '*' 'Q?]'  < $ROOT/inputs/input/ruin.1864 > ./outputs/t1541

./replace_instrumented.exe '*' 'QCW =vT/1H-P(;wWsdk8,N.{|a <'  < $ROOT/inputs/input/ruin.473 > ./outputs/t1542

./replace_instrumented.exe '*' 'QNaHbxy4*gJ7qH&xy:k#(fN84]]raEtv9Q}'  < $ROOT/inputs/input/ruin.418 > ./outputs/t1543

./replace_instrumented.exe '*' 'R'  < $ROOT/inputs/input/ruin.1631 > ./outputs/t1544

./replace_instrumented.exe '*' 'R'  < $ROOT/inputs/input/ruin.299 > ./outputs/t1545

./replace_instrumented.exe '*' 'S'  < $ROOT/inputs/input/ruin.1398 > ./outputs/t1546

./replace_instrumented.exe '*' 'Sm'  < $ROOT/inputs/input/ruin.60 > ./outputs/t1547

./replace_instrumented.exe '*' 'T6PKI@&0O#B1Lh^{h]k6b|.%dFTDX2_5Hk{?}iSqsk"BO)2*{p{K<y$&)'\'''  < $ROOT/inputs/input/ruin.749 > ./outputs/t1548

./replace_instrumented.exe '*' 'UE'\''%ko!Oi)bgbC-$;2(E\Z>n'  < $ROOT/inputs/input/ruin.1365 > ./outputs/t1549

./replace_instrumented.exe '*' 'V'  < $ROOT/inputs/input/ruin.888 > ./outputs/t1550

./replace_instrumented.exe '*' 'VLS~rJO,!qeNNS`W"Lej?|^?u*ao2Cc\oAXv3BifHHbA.'  < $ROOT/inputs/input/ruin.592 > ./outputs/t1551

./replace_instrumented.exe '*' 'W[Ckn0Vg.DBF0Pcjo#(vLE}v?9^%([{x6'  < $ROOT/inputs/input/ruin.1126 > ./outputs/t1552

./replace_instrumented.exe '*' 'X'  < $ROOT/inputs/input/ruin.765 > ./outputs/t1553

./replace_instrumented.exe '*' 'Y'  < $ROOT/inputs/input/ruin.1136 > ./outputs/t1554

./replace_instrumented.exe '*' 'Y'  < $ROOT/inputs/input/ruin.1902 > ./outputs/t1555

./replace_instrumented.exe '*' 'Yv*l,JBe9^%Hb^*^GD pqO~_{'  < $ROOT/inputs/input/ruin.932 > ./outputs/t1556

./replace_instrumented.exe '*' '['  < $ROOT/inputs/input/ruin.1312 > ./outputs/t1557

./replace_instrumented.exe '*' '['  < $ROOT/inputs/input/ruin.611 > ./outputs/t1558

./replace_instrumented.exe '*' '\'  < $ROOT/inputs/input/ruin.623 > ./outputs/t1559

./replace_instrumented.exe '*' '\IA>XW?'\''N,gjA$j)'  < $ROOT/inputs/input/ruin.735 > ./outputs/t1560

./replace_instrumented.exe '*' ']'  < $ROOT/inputs/input/ruin.858 > ./outputs/t1561

./replace_instrumented.exe '*' ']nh3$maLj{=]f`6K5>fdDES`#&1Z*mW?lp{'  < $ROOT/inputs/input/ruin.1914 > ./outputs/t1562

./replace_instrumented.exe '*' '^5i w+3P~!nu. d<Gv%'  < $ROOT/inputs/input/ruin.580 > ./outputs/t1563

./replace_instrumented.exe '*' '_ZWn.!dHH9c^%X"vFT<2: '\''-YSnDcUFe%XPj"H8HfAhTvkxw'\''m'  < $ROOT/inputs/input/ruin.811 > ./outputs/t1564

./replace_instrumented.exe '*' '`'  < $ROOT/inputs/input/ruin.138 > ./outputs/t1565

./replace_instrumented.exe '*' '`bhi>$;X'  < $ROOT/inputs/input/ruin.1632 > ./outputs/t1566

./replace_instrumented.exe '*' '`~lB<%:Nz?4&h442N'  < $ROOT/inputs/input/ruin.1486 > ./outputs/t1567

./replace_instrumented.exe '*' 'a33iv(a|>Z(Ol1~oyl9@+q /1T,&KV%PJ@}]Jo?2BuXAg'  < $ROOT/inputs/input/ruin.1396 > ./outputs/t1568

./replace_instrumented.exe '*' 'aE7jUPO'\''dYm{VX"Mit;I#WmSAh}7LXL4dYC8WM|1SUzIC^=xTXQ*Ewea'  < $ROOT/inputs/input/ruin.607 > ./outputs/t1569

./replace_instrumented.exe '*' 'b$M]}'  < $ROOT/inputs/input/ruin.1334 > ./outputs/t1570

./replace_instrumented.exe '*' 'b$MbJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<]}*[0-9]*[a-z]'  < $ROOT/inputs/input/ruin.1334 > ./outputs/t1571

./replace_instrumented.exe '*' 'b'  < $ROOT/inputs/input/ruin.1926 > ./outputs/t1572

./replace_instrumented.exe '*' 'b'  < $ROOT/inputs/input/ruin.289 > ./outputs/t1573

./replace_instrumented.exe '*' 'b'  < $ROOT/inputs/input/ruin.396 > ./outputs/t1574

./replace_instrumented.exe '*' 'b.j<'  < $ROOT/inputs/input/ruin.340 > ./outputs/t1575

./replace_instrumented.exe '*' 'bLE@:(bDn~LPO3(w6HCZ[@47udWt,'\''-r\CT]_(9~('  < $ROOT/inputs/input/ruin.1231 > ./outputs/t1576

./replace_instrumented.exe '*' 'bfA]{~U1GD+4 nhtf,jNx+DWX{d'  < $ROOT/inputs/input/ruin.447 > ./outputs/t1577

./replace_instrumented.exe '*' 'cg'  < $ROOT/inputs/input/ruin.1013 > ./outputs/t1578

./replace_instrumented.exe '*' 'cw!~'\''*5>*Nk]<ECo#CO,4"\7^74-'  < $ROOT/inputs/input/ruin.306 > ./outputs/t1579

./replace_instrumented.exe '*' 'dfn~zcSQ=]etkUCr'  < $ROOT/inputs/input/ruin.1915 > ./outputs/t1580

./replace_instrumented.exe '*' 'eT)'  < $ROOT/inputs/input/ruin.794 > ./outputs/t1581

./replace_instrumented.exe '*' 'f'  < $ROOT/inputs/input/ruin.1108 > ./outputs/t1582

./replace_instrumented.exe '*' 'f4'  < $ROOT/inputs/input/ruin.1785 > ./outputs/t1583

./replace_instrumented.exe '*' 'fz8_]H+3t\.]f'  < $ROOT/inputs/input/ruin.697 > ./outputs/t1584

./replace_instrumented.exe '*' 'h.4IrxEv=BU'\'')d0,04S7*xFvN//5VOKA('  < $ROOT/inputs/input/ruin.1498 > ./outputs/t1585

./replace_instrumented.exe '*' 'h.TSi}6|%YSU&8M.i|jIUqv!h'  < $ROOT/inputs/input/ruin.1100 > ./outputs/t1586

./replace_instrumented.exe '*' 'i'  < $ROOT/inputs/input/ruin.1587 > ./outputs/t1587

./replace_instrumented.exe '*' 'jVtxSiz~whG5Bsg$Yy*S]e*_ g)vm"MOL..JBLrCfn.gL,_!El'  < $ROOT/inputs/input/ruin.1098 > ./outputs/t1588

./replace_instrumented.exe '*' 'j^b+ EL'\''jFvDb.4t'\''C]yiF`GoLQ=kEowbH"jNZOe o3*L,>2`eNn0'  < $ROOT/inputs/input/ruin.317 > ./outputs/t1589

./replace_instrumented.exe '*' 'k +/-CZfd?F4d8]ILL9J['  < $ROOT/inputs/input/ruin.1472 > ./outputs/t1590

./replace_instrumented.exe '*' 'k'  < $ROOT/inputs/input/ruin.493 > ./outputs/t1591

./replace_instrumented.exe '*' 'kL'  < $ROOT/inputs/input/ruin.563 > ./outputs/t1592

./replace_instrumented.exe '*' 'kw'  < $ROOT/inputs/input/ruin.1696 > ./outputs/t1593

./replace_instrumented.exe '*' 'l'  < $ROOT/inputs/input/ruin.1251 > ./outputs/t1594

./replace_instrumented.exe '*' 'le8z7y>M>6ay71HYppSuKQ5\kn*fc:XX;T+3SL#jB&[q,BTV8o'  < $ROOT/inputs/input/ruin.702 > ./outputs/t1595

./replace_instrumented.exe '*' 'm'  < $ROOT/inputs/input/ruin.1015 > ./outputs/t1596

./replace_instrumented.exe '*' 'mx0sD,3u'\''aUVn)!`w;[(,]ua'  < $ROOT/inputs/input/ruin.481 > ./outputs/t1597

./replace_instrumented.exe '*' 'n"7<:4 FFMm)2fT'\''@KR!ni>(k,g'  < $ROOT/inputs/input/ruin.638 > ./outputs/t1598

./replace_instrumented.exe '*' 'nDf38_|G_<?#50:)+jM'  < $ROOT/inputs/input/ruin.1242 > ./outputs/t1599

./replace_instrumented.exe '*' 'o'  < $ROOT/inputs/input/ruin.1069 > ./outputs/t1600

./replace_instrumented.exe '*' 'o'  < $ROOT/inputs/input/ruin.67 > ./outputs/t1601

./replace_instrumented.exe '*' 'o.[m&W'\''8`'  < $ROOT/inputs/input/ruin.1458 > ./outputs/t1602

./replace_instrumented.exe '*' 'o`'  < $ROOT/inputs/input/ruin.561 > ./outputs/t1603

./replace_instrumented.exe '*' 'ofUr<QH^?2i;bS"E?b7eFTRXE\s<)S"0v>7v\N,z@3+^T4X'  < $ROOT/inputs/input/ruin.1783 > ./outputs/t1604

./replace_instrumented.exe '*' 'p'  < $ROOT/inputs/input/ruin.900 > ./outputs/t1605

./replace_instrumented.exe '*' 'p7vM1c-~m$]<e#{^ 62"j[IyS@N2dV5Hecaiot%1'  < $ROOT/inputs/input/ruin.1072 > ./outputs/t1606

./replace_instrumented.exe '*' 'pGZzvW$G(JB1Y]5.>I/9<"@rfHP'  < $ROOT/inputs/input/ruin.1326 > ./outputs/t1607

./replace_instrumented.exe '*' 'q'  < $ROOT/inputs/input/ruin.1298 > ./outputs/t1608

./replace_instrumented.exe '*' 'q'  < $ROOT/inputs/input/ruin.1932 > ./outputs/t1609

./replace_instrumented.exe '*' 'q;E%){t-m!*a!rdD+2u,A0&_l'  < $ROOT/inputs/input/ruin.1709 > ./outputs/t1610

./replace_instrumented.exe '*' 'r"'  < $ROOT/inputs/input/ruin.1393 > ./outputs/t1611

./replace_instrumented.exe '*' 'r'  < $ROOT/inputs/input/ruin.648 > ./outputs/t1612

./replace_instrumented.exe '*' 'r5fa/J@lY+PAM.8bQT#kQ/%L*##X3vqVARWNU_@.lDfO+1Y1h1G)/cedT7J![!7@g@"?+*5\k{6i={'  < $ROOT/inputs/input/ruin.1791 > ./outputs/t1613

./replace_instrumented.exe '*' 's'  < $ROOT/inputs/input/ruin.1627 > ./outputs/t1614

./replace_instrumented.exe '*' 't[WFHbt0G| J*7:o?A,)&7:~TI#z1{ga'\''Z>FLu'\''pYw>]=kZG^O=8I86z+V6H}d\HLd%]^{P(16(+L<)1J'  < $ROOT/inputs/input/ruin.119 > ./outputs/t1615

./replace_instrumented.exe '*' 't{'  < $ROOT/inputs/input/ruin.1815 > ./outputs/t1616

./replace_instrumented.exe '*' 'u'  < $ROOT/inputs/input/ruin.392 > ./outputs/t1617

./replace_instrumented.exe '*' 'u'  < $ROOT/inputs/input/ruin.406 > ./outputs/t1618

./replace_instrumented.exe '*' 'vB|CqDQNo,Fg|RTv5;bkJFE.twyj39J13'\''TcKY1sb&G<g]|ZaPL`0=8`YdR,'  < $ROOT/inputs/input/ruin.1614 > ./outputs/t1619

./replace_instrumented.exe '*' 'vDu6FZh%!TOgp@!'\''b}>.}c^?R-'  < $ROOT/inputs/input/ruin.934 > ./outputs/t1620

./replace_instrumented.exe '*' 'vV{&u2QCx+'  < $ROOT/inputs/input/ruin.1911 > ./outputs/t1621

./replace_instrumented.exe '*' 'w'  < $ROOT/inputs/input/ruin.1610 > ./outputs/t1622

./replace_instrumented.exe '*' 'w.h:AS*N<PuJ'\''%,%YHyLui~e5i"jjK@cNS; :R,W'  < $ROOT/inputs/input/ruin.462 > ./outputs/t1623

./replace_instrumented.exe '*' 'x'  < $ROOT/inputs/input/ruin.1591 > ./outputs/t1624

./replace_instrumented.exe '*' 'x+Q;z@RN/2%ew9=boU'\''N5^^>GYbLS:u^`|hk.y4+RSYe'  < $ROOT/inputs/input/ruin.1140 > ./outputs/t1625

./replace_instrumented.exe '*' 'xv'\''%;99C.L6GYG|5'\''B4JA{:,!;i0:/n+[q}2g+Q+T[#; `w&%3:]~,5M]m.'  < $ROOT/inputs/input/ruin.1118 > ./outputs/t1626

./replace_instrumented.exe '*' 'y!~#e7LEp?9]*iTkr1HrHG0Zu}RTi[q'  < $ROOT/inputs/input/ruin.531 > ./outputs/t1627

./replace_instrumented.exe '*' 'y'  < $ROOT/inputs/input/ruin.1962 > ./outputs/t1628

./replace_instrumented.exe '*' 'yEyj6*dR|$%NuXL^E`WEDg^@cc^?"+?a^?/x#'  < $ROOT/inputs/input/ruin.393 > ./outputs/t1629

./replace_instrumented.exe '*' 'yJ!rEL|Xd02,<c X[+fSSek&#=SQ%VOTJY}T) H'  < $ROOT/inputs/input/ruin.741 > ./outputs/t1630

./replace_instrumented.exe '*' '{'  < $ROOT/inputs/input/ruin.1403 > ./outputs/t1631

./replace_instrumented.exe '*' '{q+631T.^ oN4+;vL0W[1Rcn%`iyF7Xs71[ l"lp'  < $ROOT/inputs/input/ruin.1780 > ./outputs/t1632

./replace_instrumented.exe '*' '{zSL3h[z%C\T6 L?'  < $ROOT/inputs/input/ruin.372 > ./outputs/t1633

./replace_instrumented.exe '*' '|GZy1Ki'\''I'  < $ROOT/inputs/input/ruin.1360 > ./outputs/t1634

./replace_instrumented.exe '*' '|O'  < $ROOT/inputs/input/ruin.766 > ./outputs/t1635

./replace_instrumented.exe '*' '|m{'  < $ROOT/inputs/input/ruin.335 > ./outputs/t1636

./replace_instrumented.exe '*' '|zYQ /?~i1Ja\,"BRs(Y)-'\''Q3-)FlvxFPXZ/SuIC'\'''  < $ROOT/inputs/input/ruin.987 > ./outputs/t1637

./replace_instrumented.exe '*' '}  = M3kL`Z&XdB~=2f6(qC%NFD1yTO_Zn}'  < $ROOT/inputs/input/ruin.330 > ./outputs/t1638

./replace_instrumented.exe '*' '}'  < $ROOT/inputs/input/ruin.105 > ./outputs/t1639

./replace_instrumented.exe '*' '}k]s&Qlf:sCd-<z'\''8oc,P~Jty8k'\''CS'\''WE'  < $ROOT/inputs/input/ruin.136 > ./outputs/t1640

./replace_instrumented.exe '*'  < $ROOT/inputs/input/ruin.1262 > ./outputs/t1641

./replace_instrumented.exe '*'\''' '&'  < $ROOT/inputs/input/ruin.1172 > ./outputs/t1642

./replace_instrumented.exe '*'\''-(je' 'GZ7c.-_;Miyl1L5/A'  < $ROOT/inputs/input/ruin.1955 > ./outputs/t1643

./replace_instrumented.exe '*'\''[^H]' ':Q|SA%e$'  < $ROOT/inputs/input/ruin.74 > ./outputs/t1644

./replace_instrumented.exe '**' '8/r]'  < $ROOT/inputs/input/ruin.574 > ./outputs/t1645

./replace_instrumented.exe '**' '`'  < $ROOT/inputs/input/ruin.1249 > ./outputs/t1646

./replace_instrumented.exe '**' 'i'  < $ROOT/inputs/input/ruin.753 > ./outputs/t1647

./replace_instrumented.exe '**@@' '&,K6#M4J k\$ta='  < $ROOT/inputs/input/ruin.95 > ./outputs/t1648

./replace_instrumented.exe '**[>-A]' 'O'  < $ROOT/inputs/input/ruin.1623 > ./outputs/t1649

./replace_instrumented.exe '*-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?' ','  < $ROOT/inputs/input/ruin.1353 > ./outputs/t1650

./replace_instrumented.exe '*-?'   < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t1651

./replace_instrumented.exe '*-?'   < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t1652

./replace_instrumented.exe '*-?'   < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t1653

./replace_instrumented.exe '*-?' '&@n'  < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t1654

./replace_instrumented.exe '*-?' '&@n'  < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t1655

./replace_instrumented.exe '*-?' '&@n'  < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t1656

./replace_instrumented.exe '*-?[a-c$'   < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t1657

./replace_instrumented.exe '*-?[a-c$' '&@n'  < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t1658

./replace_instrumented.exe '*.[Z-a]^_`a-A-GABCDEFG]@n$' '-[&b0:'  < $ROOT/inputs/input/ruin.1020 > ./outputs/t1659

./replace_instrumented.exe '*.[Z-a]^_`a-A-GABCDEFG]@n$' '-[lu!8lH<2'\''b0:'  < $ROOT/inputs/input/ruin.1020 > ./outputs/t1660

./replace_instrumented.exe '*7' 'jk$'  < $ROOT/inputs/input/ruin.1097 > ./outputs/t1661

./replace_instrumented.exe '*?' '#g]ogwHzVu~98e-+FO:{#H5(\{z };KGj5$(z.sX>"u|rv\hwX==$UZh9dSAi+s)*Fw'\''X4*c"J79];P`~rB+*#w%'  < $ROOT/inputs/input/ruin.504 > ./outputs/t1662

./replace_instrumented.exe '*?' '3g3t=6w'  < $ROOT/inputs/input/ruin.163 > ./outputs/t1663

./replace_instrumented.exe '*?' 'D'  < $ROOT/inputs/input/ruin.782 > ./outputs/t1664

./replace_instrumented.exe '*?' 'g*#'  < $ROOT/inputs/input/ruin.1869 > ./outputs/t1665

./replace_instrumented.exe '*?' 'xkg>el^/j)zWM:uoVRpav3_7LA'\''&o*+G93N^8Po?-z)C+X]XaA\)cgK/=m`AQ-r!+4Drf51/,]+;?Qed>'  < $ROOT/inputs/input/ruin.451 > ./outputs/t1666

./replace_instrumented.exe '*?*' '/'  < $ROOT/inputs/input/ruin.1605 > ./outputs/t1667

./replace_instrumented.exe '*?*' 'y'  < $ROOT/inputs/input/ruin.425 > ./outputs/t1668

./replace_instrumented.exe '*??' 'ke'  < $ROOT/inputs/input/ruin.280 > ./outputs/t1669

./replace_instrumented.exe '*?[>-A>-Ac-aA-G]' '( $V0B16|L'  < $ROOT/inputs/input/ruin.270 > ./outputs/t1670

./replace_instrumented.exe '*@@'   < $ROOT/inputs/input/ruin.1159 > ./outputs/t1671

./replace_instrumented.exe '*@@' ';'  < $ROOT/inputs/input/ruin.1415 > ./outputs/t1672

./replace_instrumented.exe '*@@' 'H'  < $ROOT/inputs/input/ruin.693 > ./outputs/t1673

./replace_instrumented.exe '*@@' 'KSssNL3yfIE*o'  < $ROOT/inputs/input/ruin.1229 > ./outputs/t1674

./replace_instrumented.exe '*@@' 'Stu%'  < $ROOT/inputs/input/ruin.1159 > ./outputs/t1675

./replace_instrumented.exe '*@@' 'oJ<wB]FP!-F$ jO%'  < $ROOT/inputs/input/ruin.349 > ./outputs/t1676

./replace_instrumented.exe '*@@*' '98Ge3Ed^R|)7!s<q*mmY4<+<8VfhOfDE}6Goi^\c~i'  < $ROOT/inputs/input/ruin.1377 > ./outputs/t1677

./replace_instrumented.exe '*@@@@' '>nsYA'  < $ROOT/inputs/input/ruin.1873 > ./outputs/t1678

./replace_instrumented.exe '*@@G' 'nI'\''+MH'  < $ROOT/inputs/input/ruin.743 > ./outputs/t1679

./replace_instrumented.exe '*@e' '>'  < $ROOT/inputs/input/ruin.1371 > ./outputs/t1680

./replace_instrumented.exe '*@n' '0&yd{(t"'\''bw/ i+JO/F,1bSmIlg'  < $ROOT/inputs/input/ruin.282 > ./outputs/t1681

./replace_instrumented.exe '*@n' '>3tNX^|@zI@;>zg  2%Cd#FNs#U)`U7h#9dYHdo'  < $ROOT/inputs/input/ruin.865 > ./outputs/t1682

./replace_instrumented.exe '*@n' 'KsxI474&Q(C}u4M|o2T`<`;S^`NUPxX'  < $ROOT/inputs/input/ruin.291 > ./outputs/t1683

./replace_instrumented.exe '*@n' 'MP&KwD.47](#W/L3Yj'  < $ROOT/inputs/input/ruin.286 > ./outputs/t1684

./replace_instrumented.exe '*@n' 'X&XXXXXXXXXX'  < $ROOT/inputs/input/ruin.321 > ./outputs/t1685

./replace_instrumented.exe '*@n' 'b&[0-9]p'  < $ROOT/inputs/input/ruin.289 > ./outputs/t1686

./replace_instrumented.exe '*@n' 'n&f$BLCD}tiigf@3'  < $ROOT/inputs/input/ruin.553 > ./outputs/t1687

./replace_instrumented.exe '*@n' 'zCF&lL=IT'  < $ROOT/inputs/input/ruin.287 > ./outputs/t1688

./replace_instrumented.exe '*@n[^n]*0' 'h1u$*tU$1o;]2xb7CvhE:p@~}PQo+M!UMpJn4Z-zgBh(U'  < $ROOT/inputs/input/ruin.983 > ./outputs/t1689

./replace_instrumented.exe '*@t' 'F'  < $ROOT/inputs/input/ruin.320 > ./outputs/t1690

./replace_instrumented.exe '*@t[@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9]' 'F'  < $ROOT/inputs/input/ruin.320 > ./outputs/t1691

./replace_instrumented.exe '*O' '[SnK:ScY3|gj)p9qF'  < $ROOT/inputs/input/ruin.1107 > ./outputs/t1692

./replace_instrumented.exe '*R' 'x<\BNOp-x\IfU1 A$8'  < $ROOT/inputs/input/ruin.785 > ./outputs/t1693

./replace_instrumented.exe '*W@@@@' '~DL\#\S%Frr,MSYXpPBT.^?@ {3sT&TXz"H"$Sf<'  < $ROOT/inputs/input/ruin.1476 > ./outputs/t1694

./replace_instrumented.exe '*[0-90-9]?' '%'  < $ROOT/inputs/input/ruin.830 > ./outputs/t1695

./replace_instrumented.exe '*[A-G]?*[A-G]?' '(:,w5(X6)W%qon=YYaq]Q_&nZ~A'  < $ROOT/inputs/input/ruin.637 > ./outputs/t1696

./replace_instrumented.exe '*[A-G]@t' '=!Gs:fsxv_A58F 5 0YKWB#<UlTQ))[eqI4DwKfd~gZNmB'  < $ROOT/inputs/input/ruin.232 > ./outputs/t1697

./replace_instrumented.exe '*[Z-a]^_`a]'\''H8WstZ' 'B'  < $ROOT/inputs/input/ruin.808 > ./outputs/t1698

./replace_instrumented.exe '*[^0-9]@n' 'd`?K#C~VsV'  < $ROOT/inputs/input/ruin.10 > ./outputs/t1699

./replace_instrumented.exe '*[^M]' 'C;meWLSSV1S!'  < $ROOT/inputs/input/ruin.597 > ./outputs/t1700

./replace_instrumented.exe '*[^Z-a]^_`a]' 'M'  < $ROOT/inputs/input/ruin.804 > ./outputs/t1701

./replace_instrumented.exe '*[^z-})]<' 'v'  < $ROOT/inputs/input/ruin.616 > ./outputs/t1702

./replace_instrumented.exe '*[^z-}]' 'Ud+`L?HbK/{T'  < $ROOT/inputs/input/ruin.787 > ./outputs/t1703

./replace_instrumented.exe '*\' ''  < $ROOT/inputs/input/ruin.1686 > ./outputs/t1704

./replace_instrumented.exe '*\' '|'  < $ROOT/inputs/input/ruin.1449 > ./outputs/t1705

./replace_instrumented.exe '*\tk' 'hkNiPT'  < $ROOT/inputs/input/ruin.1886 > ./outputs/t1706

./replace_instrumented.exe '*]' '['  < $ROOT/inputs/input/ruin.1797 > ./outputs/t1707

./replace_instrumented.exe '*f@@' 'E'  < $ROOT/inputs/input/ruin.978 > ./outputs/t1708

./replace_instrumented.exe '*p&y=3p&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYI[p&y=3[ZYIZYIgTBk' 'b$M]}'  < $ROOT/inputs/input/ruin.1334 > ./outputs/t1709

./replace_instrumented.exe '+' 'u'  < $ROOT/inputs/input/ruin.842 > ./outputs/t1710

./replace_instrumented.exe ',$' 'ZCOQ%-V%r?8G'\''%#V'  < $ROOT/inputs/input/ruin.930 > ./outputs/t1711

./replace_instrumented.exe ',' 'd'  < $ROOT/inputs/input/ruin.1082 > ./outputs/t1712

./replace_instrumented.exe '- $' 'NEW'  < $ROOT/inputs/temp-test/570.inp.245.9 > ./outputs/t1713

./replace_instrumented.exe '- '   < $ROOT/inputs/temp-test/524.inp.227.1 > ./outputs/t1714

./replace_instrumented.exe '- ' '&'  < $ROOT/inputs/temp-test/1856.inp.788.1 > ./outputs/t1715

./replace_instrumented.exe '- ' '&'  < $ROOT/inputs/temp-test/1857.inp.788.2 > ./outputs/t1716

./replace_instrumented.exe '- ' '&'  < $ROOT/inputs/temp-test/1858.inp.788.3 > ./outputs/t1717

./replace_instrumented.exe '- ' '&'  < $ROOT/inputs/temp-test/1859.inp.788.4 > ./outputs/t1718

./replace_instrumented.exe '- ' '&'  < $ROOT/inputs/temp-test/524.inp.227.1 > ./outputs/t1719

./replace_instrumented.exe '- ' '@%@&'  < $ROOT/inputs/temp-test/2171.inp.918.1 > ./outputs/t1720

./replace_instrumented.exe '- ' '@%@&'  < $ROOT/inputs/temp-test/2172.inp.918.2 > ./outputs/t1721

./replace_instrumented.exe '- ' '@t'  < $ROOT/inputs/temp-test/1788.inp.761.1 > ./outputs/t1722

./replace_instrumented.exe '- ' '@t'  < $ROOT/inputs/temp-test/1789.inp.761.2 > ./outputs/t1723

./replace_instrumented.exe '- ' 'NEW'  < $ROOT/inputs/temp-test/569.inp.245.1 > ./outputs/t1724

./replace_instrumented.exe '- *$' ''  < $ROOT/inputs/temp-test/767.inp.328.8 > ./outputs/t1725

./replace_instrumented.exe '- *' ''  < $ROOT/inputs/temp-test/766.inp.328.1 > ./outputs/t1726

./replace_instrumented.exe '- *' 'a@nb@tc'  < $ROOT/inputs/temp-test/1373.inp.589.1 > ./outputs/t1727

./replace_instrumented.exe '- *' 'b@t'  < $ROOT/inputs/temp-test/155.inp.70.1 > ./outputs/t1728

./replace_instrumented.exe '- *' 'b@t'  < $ROOT/inputs/temp-test/156.inp.70.2 > ./outputs/t1729

./replace_instrumented.exe '- *-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1074.inp.462.1 > ./outputs/t1730

./replace_instrumented.exe '- [^@n]?[^0-9]?[0-9]?' '@%&a'  < $ROOT/inputs/temp-test/162.inp.73.1 > ./outputs/t1731

./replace_instrumented.exe '-$' '&@n'  < $ROOT/inputs/temp-test/633.inp.273.9 > ./outputs/t1732

./replace_instrumented.exe '-$' '*U:an"OMpY#Ei1WdZ>`'  < $ROOT/inputs/input/ruin.1277 > ./outputs/t1733

./replace_instrumented.exe '-$' '@%@&'  < $ROOT/inputs/temp-test/633.inp.273.9 > ./outputs/t1734

./replace_instrumented.exe '-%[^a-c' ''  < $ROOT/inputs/temp-test/2354.inp.999.2 > ./outputs/t1735

./replace_instrumented.exe '-%[^a-c' ''  < $ROOT/inputs/temp-test/2355.inp.999.3 > ./outputs/t1736

./replace_instrumented.exe '-' '&@n'  < $ROOT/inputs/temp-test/631.inp.273.1 > ./outputs/t1737

./replace_instrumented.exe '-' '&@n'  < $ROOT/inputs/temp-test/632.inp.273.3 > ./outputs/t1738

./replace_instrumented.exe '-' '&a@%'  < $ROOT/inputs/temp-test/1383.inp.593.1 > ./outputs/t1739

./replace_instrumented.exe '-' '&a@%'  < $ROOT/inputs/temp-test/2265.inp.960.1 > ./outputs/t1740

./replace_instrumented.exe '-' ''  < $ROOT/inputs/temp-test/1648.inp.703.1 > ./outputs/t1741

./replace_instrumented.exe '-' ''  < $ROOT/inputs/temp-test/1649.inp.703.3 > ./outputs/t1742

./replace_instrumented.exe '-' ''  < $ROOT/inputs/temp-test/258.inp.114.1 > ./outputs/t1743

./replace_instrumented.exe '-' ''  < $ROOT/inputs/temp-test/259.inp.114.2 > ./outputs/t1744

./replace_instrumented.exe '-' ''  < $ROOT/inputs/temp-test/706.inp.306.1 > ./outputs/t1745

./replace_instrumented.exe '-' ''  < $ROOT/inputs/temp-test/707.inp.306.3 > ./outputs/t1746

./replace_instrumented.exe '-' '+'  < $ROOT/inputs/input/ruin.1488 > ./outputs/t1747

./replace_instrumented.exe '-' ';g/&.}:{js8R^#VPXDq2$?H7JEik*Lg_}N\ I(T"'  < $ROOT/inputs/input/ruin.1180 > ./outputs/t1748

./replace_instrumented.exe '-' '=6F{LtJ|XyCKJD'  < $ROOT/inputs/input/ruin.294 > ./outputs/t1749

./replace_instrumented.exe '-' '@%&a'  < $ROOT/inputs/temp-test/1252.inp.537.1 > ./outputs/t1750

./replace_instrumented.exe '-' '@%&a'  < $ROOT/inputs/temp-test/1253.inp.537.4 > ./outputs/t1751

./replace_instrumented.exe '-' '@%&a'  < $ROOT/inputs/temp-test/480.inp.210.1 > ./outputs/t1752

./replace_instrumented.exe '-' '@%&a'  < $ROOT/inputs/temp-test/481.inp.210.2 > ./outputs/t1753

./replace_instrumented.exe '-' '@%@&'  < $ROOT/inputs/temp-test/1141.inp.491.1 > ./outputs/t1754

./replace_instrumented.exe '-' '@%@&'  < $ROOT/inputs/temp-test/631.inp.273.1 > ./outputs/t1755

./replace_instrumented.exe '-' '@%@&'  < $ROOT/inputs/temp-test/632.inp.273.3 > ./outputs/t1756

./replace_instrumented.exe '-' '@n'  < $ROOT/inputs/temp-test/2253.inp.955.1 > ./outputs/t1757

./replace_instrumented.exe '-' '@n'  < $ROOT/inputs/temp-test/994.inp.428.1 > ./outputs/t1758

./replace_instrumented.exe '-' '@n'  < $ROOT/inputs/temp-test/995.inp.428.2 > ./outputs/t1759

./replace_instrumented.exe '-' '@n'  < $ROOT/inputs/temp-test/996.inp.428.3 > ./outputs/t1760

./replace_instrumented.exe '-' 'NEW'  < $ROOT/inputs/temp-test/722.inp.312.1 > ./outputs/t1761

./replace_instrumented.exe '-' 'NEW'  < $ROOT/inputs/temp-test/723.inp.312.2 > ./outputs/t1762

./replace_instrumented.exe '-' 'NEW'  < $ROOT/inputs/temp-test/724.inp.312.3 > ./outputs/t1763

./replace_instrumented.exe '-' 'T(LYE-ao)s9O(i6'\''Q)yz&A9og__<mtw`8]7CijJ?N#3Q/iGR|RjL$tV_+z6fA:[d'  < $ROOT/inputs/input/ruin.1823 > ./outputs/t1764

./replace_instrumented.exe '-' 'a&'  < $ROOT/inputs/temp-test/1309.inp.563.1 > ./outputs/t1765

./replace_instrumented.exe '-' 'a&'  < $ROOT/inputs/temp-test/1310.inp.563.2 > ./outputs/t1766

./replace_instrumented.exe '-' 'a&'  < $ROOT/inputs/temp-test/1311.inp.563.4 > ./outputs/t1767

./replace_instrumented.exe '-' 'a@n'  < $ROOT/inputs/temp-test/764.inp.327.1 > ./outputs/t1768

./replace_instrumented.exe '-' 'a@n'  < $ROOT/inputs/temp-test/765.inp.327.3 > ./outputs/t1769

./replace_instrumented.exe '-' 'a@nb@tc'  < $ROOT/inputs/temp-test/666.inp.290.1 > ./outputs/t1770

./replace_instrumented.exe '-' 'a@nb@tc'  < $ROOT/inputs/temp-test/876.inp.376.1 > ./outputs/t1771

./replace_instrumented.exe '-' 'a@nb@tc'  < $ROOT/inputs/temp-test/877.inp.376.3 > ./outputs/t1772

./replace_instrumented.exe '-' 'a@nb@tc'  < $ROOT/inputs/temp-test/878.inp.376.4 > ./outputs/t1773

./replace_instrumented.exe '-' 'c}}1&+CkqDp{"XR613}Oox='\''k&j?itc/lkerG9p]GH'  < $ROOT/inputs/input/ruin.1175 > ./outputs/t1774

./replace_instrumented.exe '-' 'j_hn&VVQ|;n)#xS;9N.vh@gpT'\''?oF-^_,j_\j[n;{VkW#;EB*C)%(xYY"Oget'\''B!=P7|cKKNU<rkU-GYLmy![G'  < $ROOT/inputs/input/ruin.6 > ./outputs/t1775

./replace_instrumented.exe '-' 'v'  < $ROOT/inputs/input/ruin.1663 > ./outputs/t1776

./replace_instrumented.exe '-' '}'  < $ROOT/inputs/input/ruin.1734 > ./outputs/t1777

./replace_instrumented.exe '-*$'   < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t1778

./replace_instrumented.exe '-*$'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t1779

./replace_instrumented.exe '-*-' '@n'  < $ROOT/inputs/temp-test/2006.inp.852.1 > ./outputs/t1780

./replace_instrumented.exe '-*-' '@n'  < $ROOT/inputs/temp-test/2007.inp.852.2 > ./outputs/t1781

./replace_instrumented.exe '-*-' '@n'  < $ROOT/inputs/temp-test/2008.inp.852.3 > ./outputs/t1782

./replace_instrumented.exe '-*--' '@t'  < $ROOT/inputs/temp-test/286.inp.128.1 > ./outputs/t1783

./replace_instrumented.exe '-*?' '&a@%'  < $ROOT/inputs/temp-test/1099.inp.474.1 > ./outputs/t1784

./replace_instrumented.exe '-*?' '&a@%'  < $ROOT/inputs/temp-test/1100.inp.474.2 > ./outputs/t1785

./replace_instrumented.exe '-*?' '&a@%'  < $ROOT/inputs/temp-test/1101.inp.474.3 > ./outputs/t1786

./replace_instrumented.exe '-*?@[?[@@]-' '@%&a'  < $ROOT/inputs/temp-test/264.inp.117.1 > ./outputs/t1787

./replace_instrumented.exe '-*?@[?[@@]-' '@%&a'  < $ROOT/inputs/temp-test/265.inp.117.3 > ./outputs/t1788

./replace_instrumented.exe '-*?@t*[^0-9][0-9]' 'b@t'  < $ROOT/inputs/temp-test/228.inp.102.1 > ./outputs/t1789

./replace_instrumented.exe '-*?@t*[^0-9][0-9]' 'b@t'  < $ROOT/inputs/temp-test/229.inp.102.2 > ./outputs/t1790

./replace_instrumented.exe '-*[9-B][0-9]@*' '&a@%'  < $ROOT/inputs/temp-test/1406.inp.603.1 > ./outputs/t1791

./replace_instrumented.exe '-*[9-B][0-9]@*' '&a@%'  < $ROOT/inputs/temp-test/1407.inp.603.2 > ./outputs/t1792

./replace_instrumented.exe '-*[][^0-9]$' '&'  < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t1793

./replace_instrumented.exe '-*[^0-9]$'  '&@n' < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t1794

./replace_instrumented.exe '-*[^0-9]$'   < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t1795

./replace_instrumented.exe '-*[^0-9]$' '&'  < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t1796

./replace_instrumented.exe '-*[^0-9]'   < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t1797

./replace_instrumented.exe '-*[^0-9]'   < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t1798

./replace_instrumented.exe '-*[^0-9]' '&'  < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t1799

./replace_instrumented.exe '-*[^0-9]' '&'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t1800

./replace_instrumented.exe '-*[^0-9]' '&@n'  < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t1801

./replace_instrumented.exe '-*[^0-9]' '@t'  < $ROOT/inputs/temp-test/176.inp.79.1 > ./outputs/t1802

./replace_instrumented.exe '-*[^0-9]*$' '&'  < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t1803

./replace_instrumented.exe '-*[^0-9]*$' '&'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t1804

./replace_instrumented.exe '-*[^0-9]*$' '&'  < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t1805

./replace_instrumented.exe '-*[^0-9]*' '&'  < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t1806

./replace_instrumented.exe '-*[^0-9]*' '&'  < $ROOT/inputs/temp-test/201.inp.90.3 > ./outputs/t1807

./replace_instrumented.exe '-*[^0-9]*' '&'  < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t1808

./replace_instrumented.exe '-*[^9-B]-[a--]' 'a@n'  < $ROOT/inputs/temp-test/467.inp.204.1 > ./outputs/t1809

./replace_instrumented.exe '-*[^9-B]-[a--]' 'a@n'  < $ROOT/inputs/temp-test/468.inp.204.3 > ./outputs/t1810

./replace_instrumented.exe '-*[^][^0-9]$' '&'  < $ROOT/inputs/temp-test/202.inp.90.6 > ./outputs/t1811

./replace_instrumented.exe '-*[^a--b]' '@%&a'  < $ROOT/inputs/temp-test/393.inp.172.1 > ./outputs/t1812

./replace_instrumented.exe '-*[^a--b]' '@%&a'  < $ROOT/inputs/temp-test/394.inp.172.2 > ./outputs/t1813

./replace_instrumented.exe '-*[^a--b]' '@%&a'  < $ROOT/inputs/temp-test/395.inp.172.3 > ./outputs/t1814

./replace_instrumented.exe '-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]-*[^a--b]' '@%&a'  < $ROOT/inputs/temp-test/393.inp.172.1 > ./outputs/t1815

./replace_instrumented.exe '-*[^a-c]@[[^0-9]-[9-B]' '@n'  < $ROOT/inputs/temp-test/1321.inp.567.1 > ./outputs/t1816

./replace_instrumented.exe '--%[^9-B][0-9]--[0-9]*-' '@%@&'  < $ROOT/inputs/temp-test/17.inp.8.1 > ./outputs/t1817

./replace_instrumented.exe '--' ''  < $ROOT/inputs/temp-test/1896.inp.804.1 > ./outputs/t1818

./replace_instrumented.exe '--' 'a@nb@tc'  < $ROOT/inputs/temp-test/951.inp.410.1 > ./outputs/t1819

./replace_instrumented.exe '--' 'a@nb@tc'  < $ROOT/inputs/temp-test/952.inp.410.2 > ./outputs/t1820

./replace_instrumented.exe '--' 'a@nb@tc'  < $ROOT/inputs/temp-test/953.inp.410.3 > ./outputs/t1821

./replace_instrumented.exe '--*' ''  < $ROOT/inputs/temp-test/1282.inp.551.1 > ./outputs/t1822

./replace_instrumented.exe '--*' ''  < $ROOT/inputs/temp-test/1283.inp.551.2 > ./outputs/t1823

./replace_instrumented.exe '--*' ''  < $ROOT/inputs/temp-test/1284.inp.551.3 > ./outputs/t1824

./replace_instrumented.exe '--*' '@%&a'  < $ROOT/inputs/temp-test/807.inp.347.1 > ./outputs/t1825

./replace_instrumented.exe '--*' '@%&a'  < $ROOT/inputs/temp-test/808.inp.347.3 > ./outputs/t1826

./replace_instrumented.exe '--*-A-[0-9]-[^a-c]' 'a@n'  < $ROOT/inputs/temp-test/186.inp.84.1 > ./outputs/t1827

./replace_instrumented.exe '--*[@t]-' 'b@t'  < $ROOT/inputs/temp-test/174.inp.78.1 > ./outputs/t1828

./replace_instrumented.exe '--*[@t]-' 'b@t'  < $ROOT/inputs/temp-test/175.inp.78.3 > ./outputs/t1829

./replace_instrumented.exe '--*[^a-c[0-9]a-c][^0-9][0-9][^0-9]?-' 'NEW'  < $ROOT/inputs/temp-test/997.inp.429.1 > ./outputs/t1830

./replace_instrumented.exe '--*a-c]?[^0-9]' '@n'  < $ROOT/inputs/temp-test/1152.inp.496.1 > ./outputs/t1831

./replace_instrumented.exe '--*a-c]?[^0-9]' '@n'  < $ROOT/inputs/temp-test/1153.inp.496.2 > ./outputs/t1832

./replace_instrumented.exe '--?^[9-B]?' ''  < $ROOT/inputs/temp-test/1467.inp.629.1 > ./outputs/t1833

./replace_instrumented.exe '--?^[9-B]?' ''  < $ROOT/inputs/temp-test/1468.inp.629.2 > ./outputs/t1834

./replace_instrumented.exe '--@*-[^-z]-?[^--z][^9-B]?$' '&a@%'  < $ROOT/inputs/temp-test/502.inp.219.6 > ./outputs/t1835

./replace_instrumented.exe '--@*-[^-z]-?[^--z][^9-B]?' '&a@%'  < $ROOT/inputs/temp-test/499.inp.219.1 > ./outputs/t1836

./replace_instrumented.exe '--@*-[^-z]-?[^--z][^9-B]?' '&a@%'  < $ROOT/inputs/temp-test/500.inp.219.3 > ./outputs/t1837

./replace_instrumented.exe '--[0-9]?-?' 'NEW'  < $ROOT/inputs/temp-test/2058.inp.873.1 > ./outputs/t1838

./replace_instrumented.exe '--[0-9]?-?' 'NEW'  < $ROOT/inputs/temp-test/2059.inp.873.2 > ./outputs/t1839

./replace_instrumented.exe '--[0-9]?-?' 'NEW'  < $ROOT/inputs/temp-test/2060.inp.873.3 > ./outputs/t1840

./replace_instrumented.exe '--[^9-B][0-9]--[0-9]*-' '@%@&'  < $ROOT/inputs/temp-test/17.inp.8.1 > ./outputs/t1841

./replace_instrumented.exe '--]$' '&'  < $ROOT/inputs/temp-test/2001.inp.850.6 > ./outputs/t1842

./replace_instrumented.exe '--]$' 'NEW'  < $ROOT/inputs/temp-test/1940.inp.824.6 > ./outputs/t1843

./replace_instrumented.exe '--]$' 'NEW'  < $ROOT/inputs/temp-test/1941.inp.824.9 > ./outputs/t1844

./replace_instrumented.exe '--]' '&'  < $ROOT/inputs/temp-test/2000.inp.850.1 > ./outputs/t1845

./replace_instrumented.exe '--]' 'NEW'  < $ROOT/inputs/temp-test/1937.inp.824.1 > ./outputs/t1846

./replace_instrumented.exe '--]' 'NEW'  < $ROOT/inputs/temp-test/1938.inp.824.2 > ./outputs/t1847

./replace_instrumented.exe '--]' 'NEW'  < $ROOT/inputs/temp-test/1939.inp.824.3 > ./outputs/t1848

./replace_instrumented.exe '--][^--z]-' '&a@%'  < $ROOT/inputs/temp-test/1271.inp.546.1 > ./outputs/t1849

./replace_instrumented.exe '--][^--z]-' '&a@%'  < $ROOT/inputs/temp-test/1272.inp.546.2 > ./outputs/t1850

./replace_instrumented.exe '--][^--z]-' '&a@%'  < $ROOT/inputs/temp-test/1273.inp.546.3 > ./outputs/t1851

./replace_instrumented.exe '-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?*[0-9]*' ','  < $ROOT/inputs/input/ruin.1353 > ./outputs/t1852

./replace_instrumented.exe '-?' '&'  < $ROOT/inputs/temp-test/372.inp.162.1 > ./outputs/t1853

./replace_instrumented.exe '-?' '&'  < $ROOT/inputs/temp-test/373.inp.162.3 > ./outputs/t1854

./replace_instrumented.exe '-?' '&'  < $ROOT/inputs/temp-test/374.inp.162.4 > ./outputs/t1855

./replace_instrumented.exe '-?' '&a@%'  < $ROOT/inputs/temp-test/1337.inp.574.1 > ./outputs/t1856

./replace_instrumented.exe '-?' ''  < $ROOT/inputs/temp-test/1211.inp.520.1 > ./outputs/t1857

./replace_instrumented.exe '-?' ''  < $ROOT/inputs/temp-test/1577.inp.673.1 > ./outputs/t1858

./replace_instrumented.exe '-?' ''  < $ROOT/inputs/temp-test/1578.inp.673.2 > ./outputs/t1859

./replace_instrumented.exe '-?' ''  < $ROOT/inputs/temp-test/1579.inp.673.3 > ./outputs/t1860

./replace_instrumented.exe '-?' ''  < $ROOT/inputs/temp-test/1580.inp.673.4 > ./outputs/t1861

./replace_instrumented.exe '-?' '@%&a'  < $ROOT/inputs/temp-test/2052.inp.870.1 > ./outputs/t1862

./replace_instrumented.exe '-?' '@%@&'  < $ROOT/inputs/temp-test/1764.inp.751.1 > ./outputs/t1863

./replace_instrumented.exe '-?' '@%@&'  < $ROOT/inputs/temp-test/1765.inp.751.2 > ./outputs/t1864

./replace_instrumented.exe '-?' '@%@&'  < $ROOT/inputs/temp-test/50.inp.21.1 > ./outputs/t1865

./replace_instrumented.exe '-?' '@%@&'  < $ROOT/inputs/temp-test/51.inp.21.2 > ./outputs/t1866

./replace_instrumented.exe '-?' '@%@&'  < $ROOT/inputs/temp-test/52.inp.21.4 > ./outputs/t1867

./replace_instrumented.exe '-?' '@n'  < $ROOT/inputs/temp-test/2297.inp.974.1 > ./outputs/t1868

./replace_instrumented.exe '-?' '@n'  < $ROOT/inputs/temp-test/232.inp.104.1 > ./outputs/t1869

./replace_instrumented.exe '-?' '@n'  < $ROOT/inputs/temp-test/233.inp.104.2 > ./outputs/t1870

./replace_instrumented.exe '-?' '@n'  < $ROOT/inputs/temp-test/234.inp.104.3 > ./outputs/t1871

./replace_instrumented.exe '-?' '@t'  < $ROOT/inputs/temp-test/1450.inp.622.1 > ./outputs/t1872

./replace_instrumented.exe '-?' '@t'  < $ROOT/inputs/temp-test/1451.inp.622.2 > ./outputs/t1873

./replace_instrumented.exe '-?' '@t'  < $ROOT/inputs/temp-test/306.inp.137.1 > ./outputs/t1874

./replace_instrumented.exe '-?' '@t'  < $ROOT/inputs/temp-test/307.inp.137.3 > ./outputs/t1875

./replace_instrumented.exe '-?' 'NEW'  < $ROOT/inputs/temp-test/2066.inp.876.1 > ./outputs/t1876

./replace_instrumented.exe '-?' 'NEW'  < $ROOT/inputs/temp-test/2067.inp.876.3 > ./outputs/t1877

./replace_instrumented.exe '-?' 'a&'  < $ROOT/inputs/temp-test/1076.inp.464.1 > ./outputs/t1878

./replace_instrumented.exe '-?' 'a&'  < $ROOT/inputs/temp-test/1077.inp.464.2 > ./outputs/t1879

./replace_instrumented.exe '-?' 'a&'  < $ROOT/inputs/temp-test/1078.inp.464.4 > ./outputs/t1880

./replace_instrumented.exe '-?' 'a&'  < $ROOT/inputs/temp-test/2.inp.1.2 > ./outputs/t1881

./replace_instrumented.exe '-?' 'a@n'  < $ROOT/inputs/temp-test/61.inp.26.1 > ./outputs/t1882

./replace_instrumented.exe '-?' 'a@n'  < $ROOT/inputs/temp-test/62.inp.26.3 > ./outputs/t1883

./replace_instrumented.exe '-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1142.inp.492.1 > ./outputs/t1884

./replace_instrumented.exe '-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1143.inp.492.2 > ./outputs/t1885

./replace_instrumented.exe '-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1144.inp.492.3 > ./outputs/t1886

./replace_instrumented.exe '-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1145.inp.492.4 > ./outputs/t1887

./replace_instrumented.exe '-?*$'   < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t1888

./replace_instrumented.exe '-?*$'   < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t1889

./replace_instrumented.exe '-?*$'   < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t1890

./replace_instrumented.exe '-?*' '&'  < $ROOT/inputs/temp-test/524.inp.227.1 > ./outputs/t1891

./replace_instrumented.exe '-?-' '@%@&'  < $ROOT/inputs/temp-test/943.inp.405.1 > ./outputs/t1892

./replace_instrumented.exe '-?-?' 'a@n'  < $ROOT/inputs/temp-test/1700.inp.725.1 > ./outputs/t1893

./replace_instrumented.exe '-?-?@n[9-B]' '&a@%'  < $ROOT/inputs/temp-test/1212.inp.521.1 > ./outputs/t1894

./replace_instrumented.exe '-?-?@n[9-B]' '&a@%'  < $ROOT/inputs/temp-test/1213.inp.521.2 > ./outputs/t1895

./replace_instrumented.exe '-?-?@n[9-B]' '&a@%'  < $ROOT/inputs/temp-test/1214.inp.521.3 > ./outputs/t1896

./replace_instrumented.exe '-?-@**[^0-9]-' '@%@&'  < $ROOT/inputs/temp-test/2076.inp.880.1 > ./outputs/t1897

./replace_instrumented.exe '-?-@**[^0-9]-@@*[^9-B]?@n*$' '@%@&'  < $ROOT/inputs/temp-test/2078.inp.880.6 > ./outputs/t1898

./replace_instrumented.exe '-?-@**[^0-9]-@@*[^9-B]?@n*' '@%@&'  < $ROOT/inputs/temp-test/2076.inp.880.1 > ./outputs/t1899

./replace_instrumented.exe '-?-@**[^0-9]-@@*[^9-B]?@n*' '@%@&'  < $ROOT/inputs/temp-test/2077.inp.880.2 > ./outputs/t1900

./replace_instrumented.exe '-?-@n *?' '@%@&'  < $ROOT/inputs/temp-test/617.inp.266.1 > ./outputs/t1901

./replace_instrumented.exe '-?-@n *?' '@%@&'  < $ROOT/inputs/temp-test/618.inp.266.2 > ./outputs/t1902

./replace_instrumented.exe '-?-[^-z]' 'NEW'  < $ROOT/inputs/temp-test/164.inp.74.1 > ./outputs/t1903

./replace_instrumented.exe '-?-[^-z]' 'NEW'  < $ROOT/inputs/temp-test/165.inp.74.2 > ./outputs/t1904

./replace_instrumented.exe '-?-[^-z]' 'NEW'  < $ROOT/inputs/temp-test/166.inp.74.3 > ./outputs/t1905

./replace_instrumented.exe '-?-c*[0-9]' 'NEW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A'  < $ROOT/inputs/temp-test/1760.inp.748.3 > ./outputs/t1906

./replace_instrumented.exe '-?-c*[0-9][a-c]-?A' 'NEW'  < $ROOT/inputs/temp-test/1759.inp.748.1 > ./outputs/t1907

./replace_instrumented.exe '-?-c*[0-9][a-c]-?A' 'NEW'  < $ROOT/inputs/temp-test/1760.inp.748.3 > ./outputs/t1908

./replace_instrumented.exe '-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A' 'NEW'  < $ROOT/inputs/temp-test/1760.inp.748.3 > ./outputs/t1909

./replace_instrumented.exe '-??[^0-9][9-B][^9-B]' 'a&'  < $ROOT/inputs/temp-test/37.inp.16.1 > ./outputs/t1910

./replace_instrumented.exe '-??[^0-9][9-B][^9-B]' 'a&'  < $ROOT/inputs/temp-test/38.inp.16.2 > ./outputs/t1911

./replace_instrumented.exe '-??[a-c]' '@%&a'  < $ROOT/inputs/temp-test/1161.inp.500.1 > ./outputs/t1912

./replace_instrumented.exe '-??[a-c]' '@%&a'  < $ROOT/inputs/temp-test/1162.inp.500.2 > ./outputs/t1913

./replace_instrumented.exe '-?@*[^9-B]?' ''  < $ROOT/inputs/temp-test/607.inp.261.1 > ./outputs/t1914

./replace_instrumented.exe '-?@*[^9-B]?' ''  < $ROOT/inputs/temp-test/608.inp.261.3 > ./outputs/t1915

./replace_instrumented.exe '-?@@*[_-z][^0-9]' '&'  < $ROOT/inputs/temp-test/821.inp.354.1 > ./outputs/t1916

./replace_instrumented.exe '-?@@*[_-z][^0-9]' '&'  < $ROOT/inputs/temp-test/822.inp.354.4 > ./outputs/t1917

./replace_instrumented.exe '-?@[[^9-B]---?' 'a@n'  < $ROOT/inputs/temp-test/965.inp.416.1 > ./outputs/t1918

./replace_instrumented.exe '-?@[[a-][9-B]- *[a--b]' 'a@n'  < $ROOT/inputs/temp-test/1037.inp.446.1 > ./outputs/t1919

./replace_instrumented.exe '-?[9-B]--' '&a@%'  < $ROOT/inputs/temp-test/1139.inp.490.1 > ./outputs/t1920

./replace_instrumented.exe '-?[9-B]--' '&a@%'  < $ROOT/inputs/temp-test/1140.inp.490.2 > ./outputs/t1921

./replace_instrumented.exe '-?[9-B]@t*$' '@%&a'  < $ROOT/inputs/temp-test/816.inp.351.9 > ./outputs/t1922

./replace_instrumented.exe '-?[9-B]@t*' '@%&a'  < $ROOT/inputs/temp-test/815.inp.351.1 > ./outputs/t1923

./replace_instrumented.exe '-?[@n]?[@@][^9-B][0-9]?$' 'NEW'  < $ROOT/inputs/temp-test/885.inp.380.6 > ./outputs/t1924

./replace_instrumented.exe '-?[@n]?[@@][^9-B][0-9]?' 'NEW'  < $ROOT/inputs/temp-test/883.inp.380.1 > ./outputs/t1925

./replace_instrumented.exe '-?[@n]?[@@][^9-B][0-9]?' 'NEW'  < $ROOT/inputs/temp-test/884.inp.380.2 > ./outputs/t1926

./replace_instrumented.exe '-?[^0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2062.inp.874.1 > ./outputs/t1927

./replace_instrumented.exe '-?[^0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2063.inp.874.3 > ./outputs/t1928

./replace_instrumented.exe '-?[^0-9]?' '&'  < $ROOT/inputs/temp-test/463.inp.203.1 > ./outputs/t1929

./replace_instrumented.exe '-?[^0-9]?' '&'  < $ROOT/inputs/temp-test/464.inp.203.3 > ./outputs/t1930

./replace_instrumented.exe '-?[^0-9]?' '&'  < $ROOT/inputs/temp-test/465.inp.203.4 > ./outputs/t1931

./replace_instrumented.exe '-?[^9-B]?-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2099.inp.890.1 > ./outputs/t1932

./replace_instrumented.exe '-?[^9-B]?-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2100.inp.890.2 > ./outputs/t1933

./replace_instrumented.exe '-?[^9-B]?-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2101.inp.890.3 > ./outputs/t1934

./replace_instrumented.exe '-?[^9-B]?-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2102.inp.890.4 > ./outputs/t1935

./replace_instrumented.exe '-?[^9-B]@**[0-9]' '@n'  < $ROOT/inputs/temp-test/1872.inp.794.1 > ./outputs/t1936

./replace_instrumented.exe '-?[^9-B]@**[0-9]' '@n'  < $ROOT/inputs/temp-test/1873.inp.794.3 > ./outputs/t1937

./replace_instrumented.exe '-?[^9-B]@**[0-9]' '@n-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?-?A-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?'  < $ROOT/inputs/temp-test/1872.inp.794.1 > ./outputs/t1938

./replace_instrumented.exe '-?[^a--]@[*[^9-B]A-[@@]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1724.inp.734.1 > ./outputs/t1939

./replace_instrumented.exe '-?[^a--]@[*[^9-B]A-[@@]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1725.inp.734.2 > ./outputs/t1940

./replace_instrumented.exe '-?[^a--]@[*[^9-B]A-[@@]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1726.inp.734.3 > ./outputs/t1941

./replace_instrumented.exe '-?[^a-c-*' 'a@n'  < $ROOT/inputs/temp-test/1262.inp.542.1 > ./outputs/t1942

./replace_instrumented.exe '-?[^a-c-*' 'a@n'  < $ROOT/inputs/temp-test/1263.inp.542.3 > ./outputs/t1943

./replace_instrumented.exe '-?[^a-c-*' 'a@n'  < $ROOT/inputs/temp-test/1264.inp.542.4 > ./outputs/t1944

./replace_instrumented.exe '-?[^a-c]' 'b@t'  < $ROOT/inputs/temp-test/2238.inp.949.1 > ./outputs/t1945

./replace_instrumented.exe '-?[^a-c]' 'b@t'  < $ROOT/inputs/temp-test/2239.inp.949.2 > ./outputs/t1946

./replace_instrumented.exe '-?[^a-c]??-' '@%&a'  < $ROOT/inputs/temp-test/360.inp.158.1 > ./outputs/t1947

./replace_instrumented.exe '-?[^a-c]??-' '@%&a'  < $ROOT/inputs/temp-test/361.inp.158.3 > ./outputs/t1948

./replace_instrumented.exe '-?[^a-c]??-' '@%&a@'  < $ROOT/inputs/temp-test/361.inp.158.3 > ./outputs/t1949

./replace_instrumented.exe '-?[^a-c]??-@' '@%&a'  < $ROOT/inputs/temp-test/360.inp.158.1 > ./outputs/t1950

./replace_instrumented.exe '-?[a-c$*$'   < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t1951

./replace_instrumented.exe '-?^*?-[^9-B]-[@n]-?[9-B]' '@%&a'  < $ROOT/inputs/temp-test/712.inp.308.1 > ./outputs/t1952

./replace_instrumented.exe '-?^*?-[^9-B]-[@n]-?[9-B]' '@%&a'  < $ROOT/inputs/temp-test/713.inp.308.2 > ./outputs/t1953

./replace_instrumented.exe '-?^*?-[^9-B]-[@n]-?[9-B]' '@%&a'  < $ROOT/inputs/temp-test/714.inp.308.3 > ./outputs/t1954

./replace_instrumented.exe '-?^a-c]?^-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1423.inp.612.1 > ./outputs/t1955

./replace_instrumented.exe '-?^a-c]?^-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1424.inp.612.2 > ./outputs/t1956

./replace_instrumented.exe '-?^a-c]?^-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1425.inp.612.3 > ./outputs/t1957

./replace_instrumented.exe '-@*' '@%&a'  < $ROOT/inputs/temp-test/319.inp.142.1 > ./outputs/t1958

./replace_instrumented.exe '-@*' '@%&a'  < $ROOT/inputs/temp-test/320.inp.142.2 > ./outputs/t1959

./replace_instrumented.exe '-@**' '&a@%'  < $ROOT/inputs/temp-test/830.inp.358.1 > ./outputs/t1960

./replace_instrumented.exe '-@**' '&a@%'  < $ROOT/inputs/temp-test/831.inp.358.2 > ./outputs/t1961

./replace_instrumented.exe '-@**' '&a@%'  < $ROOT/inputs/temp-test/832.inp.358.3 > ./outputs/t1962

./replace_instrumented.exe '-@**' '@%@&'  < $ROOT/inputs/temp-test/2295.inp.973.1 > ./outputs/t1963

./replace_instrumented.exe '-@**' '@%@&'  < $ROOT/inputs/temp-test/2296.inp.973.2 > ./outputs/t1964

./replace_instrumented.exe '-@**' 'NEW'  < $ROOT/inputs/temp-test/1836.inp.781.1 > ./outputs/t1965

./replace_instrumented.exe '-@**' 'NEW'  < $ROOT/inputs/temp-test/1837.inp.781.3 > ./outputs/t1966

./replace_instrumented.exe '-@**' 'a@n'  < $ROOT/inputs/temp-test/896.inp.385.1 > ./outputs/t1967

./replace_instrumented.exe '-@**?[^0-9][9-B]---[^0-9]-?' ''  < $ROOT/inputs/temp-test/2135.inp.904.1 > ./outputs/t1968

./replace_instrumented.exe '-@**?[^0-9][9-B]---[^0-9]-?' ''  < $ROOT/inputs/temp-test/2136.inp.904.3 > ./outputs/t1969

./replace_instrumented.exe '-@**[^a--]-^*[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1391.inp.597.1 > ./outputs/t1970

./replace_instrumented.exe '-@**[^a--]-^*[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1392.inp.597.2 > ./outputs/t1971

./replace_instrumented.exe '-@**[^a--]-^*[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1393.inp.597.3 > ./outputs/t1972

./replace_instrumented.exe '-@**[^a--]-^*[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1394.inp.597.4 > ./outputs/t1973

./replace_instrumented.exe '-@**[^a-c]?@[[^a-c]$' '@%&a'  < $ROOT/inputs/temp-test/1900.inp.805.8 > ./outputs/t1974

./replace_instrumented.exe '-@**[^a-c]?@[[^a-c]' '@%&a'  < $ROOT/inputs/temp-test/1897.inp.805.1 > ./outputs/t1975

./replace_instrumented.exe '-@**[^a-c]?@[[^a-c]' '@%&a'  < $ROOT/inputs/temp-test/1898.inp.805.2 > ./outputs/t1976

./replace_instrumented.exe '-@**[^a-c]?@[[^a-c]' '@%&a'  < $ROOT/inputs/temp-test/1899.inp.805.3 > ./outputs/t1977

./replace_instrumented.exe '-@*?[9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1657.inp.706.1 > ./outputs/t1978

./replace_instrumented.exe '-@*[^a--]--' '&'  < $ROOT/inputs/temp-test/853.inp.367.1 > ./outputs/t1979

./replace_instrumented.exe '-@*[^a--]--' '&'  < $ROOT/inputs/temp-test/854.inp.367.2 > ./outputs/t1980

./replace_instrumented.exe '-@*[^a--]--' '&'  < $ROOT/inputs/temp-test/855.inp.367.3 > ./outputs/t1981

./replace_instrumented.exe '-@*[a-c]? *[a-[^a-c]-' '@%&a'  < $ROOT/inputs/temp-test/685.inp.298.1 > ./outputs/t1982

./replace_instrumented.exe '-@*[a-c]? *[a-[^a-c]-' '@%&a'  < $ROOT/inputs/temp-test/686.inp.298.2 > ./outputs/t1983

./replace_instrumented.exe '-@*[a-c]? *[a-[^a-c]-' '@%&a'  < $ROOT/inputs/temp-test/687.inp.298.3 > ./outputs/t1984

./replace_instrumented.exe '-@*a-c]?a-]^a-][^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2174.inp.920.1 > ./outputs/t1985

./replace_instrumented.exe '-@*a-c]?a-]^a-][^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2175.inp.920.2 > ./outputs/t1986

./replace_instrumented.exe '-@@(@@$' '.'  < $ROOT/inputs/input/ruin.994 > ./outputs/t1987

./replace_instrumented.exe '-@@*[^9-B][_-z]@t*?' '&a@%'  < $ROOT/inputs/temp-test/415.inp.183.1 > ./outputs/t1988

./replace_instrumented.exe '-@@*[^9-B][_-z]@t*?' '&a@%'  < $ROOT/inputs/temp-test/416.inp.183.3 > ./outputs/t1989

./replace_instrumented.exe '-@[' '@%&a'  < $ROOT/inputs/temp-test/864.inp.372.1 > ./outputs/t1990

./replace_instrumented.exe '-@[' '@%&a'  < $ROOT/inputs/temp-test/865.inp.372.2 > ./outputs/t1991

./replace_instrumented.exe '-@[' '@%&a'  < $ROOT/inputs/temp-test/866.inp.372.4 > ./outputs/t1992

./replace_instrumented.exe '-@[' 'NEW'  < $ROOT/inputs/temp-test/1761.inp.749.1 > ./outputs/t1993

./replace_instrumented.exe '-@[*' '@%&a'  < $ROOT/inputs/temp-test/1403.inp.602.1 > ./outputs/t1994

./replace_instrumented.exe '-@[*' '@%&a'  < $ROOT/inputs/temp-test/1404.inp.602.2 > ./outputs/t1995

./replace_instrumented.exe '-@[*' '@%&a'  < $ROOT/inputs/temp-test/1405.inp.602.3 > ./outputs/t1996

./replace_instrumented.exe '-@[*' '@%@&'  < $ROOT/inputs/temp-test/1456.inp.624.1 > ./outputs/t1997

./replace_instrumented.exe '-@[*' '@%@&'  < $ROOT/inputs/temp-test/1457.inp.624.2 > ./outputs/t1998

./replace_instrumented.exe '-@[*' '@%@&'  < $ROOT/inputs/temp-test/1458.inp.624.3 > ./outputs/t1999

./replace_instrumented.exe '-@[*-[0-9]?[^a-c][a-c]' '&'  < $ROOT/inputs/temp-test/1710.inp.729.1 > ./outputs/t2000

./replace_instrumented.exe '-@[*-[0-9]?[^a-c][a-c]' '&'  < $ROOT/inputs/temp-test/1711.inp.729.3 > ./outputs/t2001

./replace_instrumented.exe '-@[*[^9-B]?[^a-c *?--?' 'NEW'  < $ROOT/inputs/temp-test/1254.inp.538.1 > ./outputs/t2002

./replace_instrumented.exe '-@[*[^9-B]?[^a-c *?--?' 'NEW'  < $ROOT/inputs/temp-test/1255.inp.538.2 > ./outputs/t2003

./replace_instrumented.exe '-@[[^@@]-@**[a-c]' ''  < $ROOT/inputs/temp-test/453.inp.198.1 > ./outputs/t2004

./replace_instrumented.exe '-@[[^@@]-@**[a-c]' ''  < $ROOT/inputs/temp-test/454.inp.198.3 > ./outputs/t2005

./replace_instrumented.exe '-@n' '*U&:an"OMpY#Ei1WdZ>`'  < $ROOT/inputs/input/ruin.1277 > ./outputs/t2006

./replace_instrumented.exe '-@n*' 'a&'  < $ROOT/inputs/temp-test/329.inp.146.1 > ./outputs/t2007

./replace_instrumented.exe '-@n*' 'a&'  < $ROOT/inputs/temp-test/330.inp.146.2 > ./outputs/t2008

./replace_instrumented.exe '-@n*' 'a&'  < $ROOT/inputs/temp-test/331.inp.146.3 > ./outputs/t2009

./replace_instrumented.exe '-@n*' 'a&'  < $ROOT/inputs/temp-test/332.inp.146.4 > ./outputs/t2010

./replace_instrumented.exe '-@n-@[[a-c]^a-c]-*?[^-z]-' '&a@%'  < $ROOT/inputs/temp-test/292.inp.132.1 > ./outputs/t2011

./replace_instrumented.exe '-@n-@[[a-c]^a-c]-*?[^-z]-' '&a@%'  < $ROOT/inputs/temp-test/293.inp.132.2 > ./outputs/t2012

./replace_instrumented.exe '-@n-@[[a-c]^a-c]-*?[^-z]-' '&a@%'  < $ROOT/inputs/temp-test/294.inp.132.4 > ./outputs/t2013

./replace_instrumented.exe '-@t' ''  < $ROOT/inputs/temp-test/40.inp.17.1 > ./outputs/t2014

./replace_instrumented.exe '-@t' ''  < $ROOT/inputs/temp-test/41.inp.17.2 > ./outputs/t2015

./replace_instrumented.exe '-@t*-[@@]?-@[*?[^9-B]?[^0-9]-[^a--b] ' '@t'  < $ROOT/inputs/temp-test/1796.inp.764.1 > ./outputs/t2016

./replace_instrumented.exe '-@t*-[@@]?-@[*?[^9-B]?[^0-9]-[^a--b] ' '@t'  < $ROOT/inputs/temp-test/1797.inp.764.2 > ./outputs/t2017

./replace_instrumented.exe '-@t*@t*-@t?[-[a--]?[^a-c[0-9]^-]?-' '&'  < $ROOT/inputs/temp-test/1888.inp.801.1 > ./outputs/t2018

./replace_instrumented.exe '-@t*@t*-@t?[-[a--]?[^a-c[0-9]^-]?-' '&'  < $ROOT/inputs/temp-test/1889.inp.801.2 > ./outputs/t2019

./replace_instrumented.exe '-@t*@t*-@t?[-[a--]?[^a-c[0-9]^-]?-' '&'  < $ROOT/inputs/temp-test/1890.inp.801.3 > ./outputs/t2020

./replace_instrumented.exe '-[-z]$' 'NEW'  < $ROOT/inputs/temp-test/368.inp.160.6 > ./outputs/t2021

./replace_instrumented.exe '-[-z]' 'NEW'  < $ROOT/inputs/temp-test/366.inp.160.1 > ./outputs/t2022

./replace_instrumented.exe '-[-z]' 'NEW'  < $ROOT/inputs/temp-test/367.inp.160.3 > ./outputs/t2023

./replace_instrumented.exe '-[0-9]' 'NEW'  < $ROOT/inputs/temp-test/1410.inp.605.1 > ./outputs/t2024

./replace_instrumented.exe '-[0-9]' 'a&'  < $ROOT/inputs/temp-test/646.inp.280.1 > ./outputs/t2025

./replace_instrumented.exe '-[0-9]' 'a&'  < $ROOT/inputs/temp-test/647.inp.280.2 > ./outputs/t2026

./replace_instrumented.exe '-[0-9]-?@[ -' ''  < $ROOT/inputs/temp-test/252.inp.112.1 > ./outputs/t2027

./replace_instrumented.exe '-[0-9]-?@[ -' ''  < $ROOT/inputs/temp-test/253.inp.112.3 > ./outputs/t2028

./replace_instrumented.exe '-[0-9]-[9-B][^0-9]-[0-9]?c-?[a-c@*-' ''  < $ROOT/inputs/temp-test/1322.inp.568.1 > ./outputs/t2029

./replace_instrumented.exe '-[0-9]-[9-B][^0-9]-[0-9]?c-?[a-c@*-' ''  < $ROOT/inputs/temp-test/1323.inp.568.2 > ./outputs/t2030

./replace_instrumented.exe '-[0-9]-[9-B][^0-9]-[0-9]?c-?[a-c@*-' ''  < $ROOT/inputs/temp-test/1324.inp.568.3 > ./outputs/t2031

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]$' '@%@&'  < $ROOT/inputs/temp-test/365.inp.159.6 > ./outputs/t2032

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]' '@%@&'  < $ROOT/inputs/temp-test/362.inp.159.1 > ./outputs/t2033

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]' '@%@&'  < $ROOT/inputs/temp-test/363.inp.159.2 > ./outputs/t2034

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]' '@%@&'  < $ROOT/inputs/temp-test/364.inp.159.3 > ./outputs/t2035

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]' '@%@&@'  < $ROOT/inputs/temp-test/363.inp.159.2 > ./outputs/t2036

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]' '@%@&@'  < $ROOT/inputs/temp-test/364.inp.159.3 > ./outputs/t2037

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2038

./replace_instrumented.exe '-[0-9][^-z]@**[^9-B]?[^a--]@[ *[9-B]@' '@%@&'  < $ROOT/inputs/temp-test/362.inp.159.1 > ./outputs/t2039

./replace_instrumented.exe '-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t2040

./replace_instrumented.exe '-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t2041

./replace_instrumented.exe '-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1398.inp.600.2 > ./outputs/t2042

./replace_instrumented.exe '-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1399.inp.600.3 > ./outputs/t2043

./replace_instrumented.exe '-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1400.inp.600.4 > ./outputs/t2044

./replace_instrumented.exe '-[0-9][^9-B][0-9]?[^0-9]' '@t'  < $ROOT/inputs/temp-test/1215.inp.522.1 > ./outputs/t2045

./replace_instrumented.exe '-[0-9][^a-c]-?-[^9-B][0-9]' '&a@%'  < $ROOT/inputs/temp-test/2139.inp.906.1 > ./outputs/t2046

./replace_instrumented.exe '-[9-B] [^0-9][0-9][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/619.inp.267.1 > ./outputs/t2047

./replace_instrumented.exe '-[9-B] [^0-9][0-9][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/620.inp.267.2 > ./outputs/t2048

./replace_instrumented.exe '-[9-B]' '&'  < $ROOT/inputs/temp-test/1335.inp.573.1 > ./outputs/t2049

./replace_instrumented.exe '-[9-B]' '&'  < $ROOT/inputs/temp-test/1754.inp.745.1 > ./outputs/t2050

./replace_instrumented.exe '-[9-B]' '&'  < $ROOT/inputs/temp-test/1755.inp.745.3 > ./outputs/t2051

./replace_instrumented.exe '-[9-B]' ''  < $ROOT/inputs/temp-test/238.inp.106.1 > ./outputs/t2052

./replace_instrumented.exe '-[9-B]' ''  < $ROOT/inputs/temp-test/239.inp.106.3 > ./outputs/t2053

./replace_instrumented.exe '-[9-B]-[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/1664.inp.710.1 > ./outputs/t2054

./replace_instrumented.exe '-[9-B]-[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/1665.inp.710.3 > ./outputs/t2055

./replace_instrumented.exe '-[9-B][9-B] *-^*^a-]' '@n'  < $ROOT/inputs/temp-test/1044.inp.450.2 > ./outputs/t2056

./replace_instrumented.exe '-[9-B][9-B] *-^*^a-][@n]' '@n'  < $ROOT/inputs/temp-test/1043.inp.450.1 > ./outputs/t2057

./replace_instrumented.exe '-[9-B][9-B] *-^*^a-][@n]' '@n'  < $ROOT/inputs/temp-test/1044.inp.450.2 > ./outputs/t2058

./replace_instrumented.exe '-[9-B][9-B] *-^*^a-][@n]' '@n'  < $ROOT/inputs/temp-test/1045.inp.450.3 > ./outputs/t2059

./replace_instrumented.exe '-[9-B]a-] *[^0-9]' '&'  < $ROOT/inputs/temp-test/1042.inp.449.1 > ./outputs/t2060

./replace_instrumented.exe '-[@n]'   < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t2061

./replace_instrumented.exe '-[@n]*$' 'NEW'  < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t2062

./replace_instrumented.exe '-[@n]*' 'NEW'  < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t2063

./replace_instrumented.exe '-[@n][][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t2064

./replace_instrumented.exe '-[@n][][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t2065

./replace_instrumented.exe '-[@n][^][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t2066

./replace_instrumented.exe '-[@n][^][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t2067

./replace_instrumented.exe '-[@n][^a--b]$'   < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t2068

./replace_instrumented.exe '-[@n][^a--b]$' 'NEW'  < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t2069

./replace_instrumented.exe '-[@n][^a--b]'   < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t2070

./replace_instrumented.exe '-[@n][^a--b]'   < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t2071

./replace_instrumented.exe '-[@n][^a--b]' '&@n'   < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t2072

./replace_instrumented.exe '-[@n][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/213.inp.96.1 > ./outputs/t2073

./replace_instrumented.exe '-[@n][^a--b]' 'NEW'  < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t2074

./replace_instrumented.exe '-[@n][^a--b]*$' 'NEW'  < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t2075

./replace_instrumented.exe '-[@n][^a--b]*$' 'NEW'  < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t2076

./replace_instrumented.exe '-[@n][^a--b]*' 'NEW'  < $ROOT/inputs/temp-test/214.inp.96.3 > ./outputs/t2077

./replace_instrumented.exe '-[@n][^a--b]*' 'NEW'  < $ROOT/inputs/temp-test/215.inp.96.8 > ./outputs/t2078

./replace_instrumented.exe '-[@t]$' 'NEW'  < $ROOT/inputs/temp-test/1800.inp.765.9 > ./outputs/t2079

./replace_instrumented.exe '-[@t]' 'NEW'  < $ROOT/inputs/temp-test/1798.inp.765.1 > ./outputs/t2080

./replace_instrumented.exe '-[@t]' 'NEW'  < $ROOT/inputs/temp-test/1799.inp.765.4 > ./outputs/t2081

./replace_instrumented.exe '-[^-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1678.inp.715.1 > ./outputs/t2082

./replace_instrumented.exe '-[^-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1679.inp.715.2 > ./outputs/t2083

./replace_instrumented.exe '-[^-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1680.inp.715.3 > ./outputs/t2084

./replace_instrumented.exe '-[^--z]' '@n'  < $ROOT/inputs/temp-test/1917.inp.815.1 > ./outputs/t2085

./replace_instrumented.exe '-[^--z]' '@n'  < $ROOT/inputs/temp-test/1918.inp.815.2 > ./outputs/t2086

./replace_instrumented.exe '-[^--z]' '@n'  < $ROOT/inputs/temp-test/1919.inp.815.3 > ./outputs/t2087

./replace_instrumented.exe '-[^--z]-[^a--b][^0-9]@* *?-c' '@n'  < $ROOT/inputs/temp-test/902.inp.388.1 > ./outputs/t2088

./replace_instrumented.exe '-[^--z]-[^a--b][^0-9]@* *?-c' '@n'  < $ROOT/inputs/temp-test/903.inp.388.3 > ./outputs/t2089

./replace_instrumented.exe '-[^-z]' '&a@%'  < $ROOT/inputs/temp-test/768.inp.329.1 > ./outputs/t2090

./replace_instrumented.exe '-[^-z]' ''  < $ROOT/inputs/temp-test/1163.inp.501.1 > ./outputs/t2091

./replace_instrumented.exe '-[^-z]' ''  < $ROOT/inputs/temp-test/1164.inp.501.2 > ./outputs/t2092

./replace_instrumented.exe '-[^-z]' ''  < $ROOT/inputs/temp-test/1165.inp.501.4 > ./outputs/t2093

./replace_instrumented.exe '-[^-z][^a-c]-[a-c][^a-c]-*-?^?^a-c]?-?' 'a&'  < $ROOT/inputs/temp-test/2312.inp.981.1 > ./outputs/t2094

./replace_instrumented.exe '-[^-z][^a-c]-[a-c][^a-c]-*-?^?^a-c]?-?' 'a&'  < $ROOT/inputs/temp-test/2313.inp.981.3 > ./outputs/t2095

./replace_instrumented.exe '-[^-z][^a-c]-[a-c][^a-c]-*-?^?^a-c]?-?' 'a&'  < $ROOT/inputs/temp-test/2314.inp.981.4 > ./outputs/t2096

./replace_instrumented.exe '-[^0-9] a-c]-@[[^0-9][a--b]A*' '&'  < $ROOT/inputs/temp-test/2209.inp.936.1 > ./outputs/t2097

./replace_instrumented.exe '-[^0-9] a-c]-@[[^0-9][a--b]A*' '&'  < $ROOT/inputs/temp-test/2210.inp.936.2 > ./outputs/t2098

./replace_instrumented.exe '-[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/2213.inp.938.1 > ./outputs/t2099

./replace_instrumented.exe '-[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/2214.inp.938.2 > ./outputs/t2100

./replace_instrumented.exe '-[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/2215.inp.938.3 > ./outputs/t2101

./replace_instrumented.exe '-[^0-9]' '@t'  < $ROOT/inputs/temp-test/1229.inp.527.1 > ./outputs/t2102

./replace_instrumented.exe '-[^0-9]' '@t'  < $ROOT/inputs/temp-test/1230.inp.527.2 > ./outputs/t2103

./replace_instrumented.exe '-[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/2011.inp.854.1 > ./outputs/t2104

./replace_instrumented.exe '-[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/2012.inp.854.3 > ./outputs/t2105

./replace_instrumented.exe '-[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/476.inp.208.1 > ./outputs/t2106

./replace_instrumented.exe '-[^0-9]-?-[^9-B]?[^a--]a-c]-$' '@%&a'  < $ROOT/inputs/temp-test/1929.inp.819.9 > ./outputs/t2107

./replace_instrumented.exe '-[^0-9]-?-[^9-B]?[^a--]a-c]-' '@%&a'  < $ROOT/inputs/temp-test/1926.inp.819.1 > ./outputs/t2108

./replace_instrumented.exe '-[^0-9]-?-[^9-B]?[^a--]a-c]-' '@%&a'  < $ROOT/inputs/temp-test/1927.inp.819.2 > ./outputs/t2109

./replace_instrumented.exe '-[^0-9]-?-[^9-B]?[^a--]a-c]-' '@%&a'  < $ROOT/inputs/temp-test/1928.inp.819.3 > ./outputs/t2110

./replace_instrumented.exe '-[^0-9]?[a-c' '@t'  < $ROOT/inputs/temp-test/384.inp.167.1 > ./outputs/t2111

./replace_instrumented.exe '-[^0-9][0-9]A@@*[^0-9][9-B]@@[^a-c]--[0-9][9-B][^a-]' 'NEW'  < $ROOT/inputs/temp-test/1584.inp.675.1 > ./outputs/t2112

./replace_instrumented.exe '-[^0-9][0-9][^a--' 'a&'  < $ROOT/inputs/temp-test/1733.inp.737.1 > ./outputs/t2113

./replace_instrumented.exe '-[^9-B]$' '&a@%'  < $ROOT/inputs/temp-test/178.inp.80.6 > ./outputs/t2114

./replace_instrumented.exe '-[^9-B]$' '&a@%'  < $ROOT/inputs/temp-test/179.inp.80.9 > ./outputs/t2115

./replace_instrumented.exe '-[^9-B]$' '@t'  < $ROOT/inputs/temp-test/973.inp.419.9 > ./outputs/t2116

./replace_instrumented.exe '-[^9-B]$' 'NEW'  < $ROOT/inputs/temp-test/1219.inp.523.6 > ./outputs/t2117

./replace_instrumented.exe '-[^9-B]' '&a@%'  < $ROOT/inputs/temp-test/177.inp.80.1 > ./outputs/t2118

./replace_instrumented.exe '-[^9-B]' '@%&a'  < $ROOT/inputs/temp-test/2079.inp.881.1 > ./outputs/t2119

./replace_instrumented.exe '-[^9-B]' '@%&a'  < $ROOT/inputs/temp-test/2080.inp.881.2 > ./outputs/t2120

./replace_instrumented.exe '-[^9-B]' '@%&a'  < $ROOT/inputs/temp-test/2081.inp.881.3 > ./outputs/t2121

./replace_instrumented.exe '-[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/561.inp.242.1 > ./outputs/t2122

./replace_instrumented.exe '-[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/562.inp.242.2 > ./outputs/t2123

./replace_instrumented.exe '-[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/563.inp.242.4 > ./outputs/t2124

./replace_instrumented.exe '-[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/897.inp.386.1 > ./outputs/t2125

./replace_instrumented.exe '-[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/898.inp.386.3 > ./outputs/t2126

./replace_instrumented.exe '-[^9-B]' '@n'  < $ROOT/inputs/temp-test/748.inp.321.1 > ./outputs/t2127

./replace_instrumented.exe '-[^9-B]' '@n'  < $ROOT/inputs/temp-test/749.inp.321.2 > ./outputs/t2128

./replace_instrumented.exe '-[^9-B]' '@t'  < $ROOT/inputs/temp-test/972.inp.419.1 > ./outputs/t2129

./replace_instrumented.exe '-[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/1216.inp.523.1 > ./outputs/t2130

./replace_instrumented.exe '-[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/1217.inp.523.3 > ./outputs/t2131

./replace_instrumented.exe '-[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/1218.inp.523.4 > ./outputs/t2132

./replace_instrumented.exe '-[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/890.inp.383.1 > ./outputs/t2133

./replace_instrumented.exe '-[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/891.inp.383.2 > ./outputs/t2134

./replace_instrumented.exe '-[^9-B]' 'a&'  < $ROOT/inputs/temp-test/989.inp.426.1 > ./outputs/t2135

./replace_instrumented.exe '-[^9-B]' 'a&'  < $ROOT/inputs/temp-test/990.inp.426.3 > ./outputs/t2136

./replace_instrumented.exe '-[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1716.inp.731.1 > ./outputs/t2137

./replace_instrumented.exe '-[^9-B]' 'b@t'  < $ROOT/inputs/temp-test/1818.inp.773.1 > ./outputs/t2138

./replace_instrumented.exe '-[^9-B]' 'b@t'  < $ROOT/inputs/temp-test/1819.inp.773.2 > ./outputs/t2139

./replace_instrumented.exe '-[^9-B]' 'b@t'  < $ROOT/inputs/temp-test/1820.inp.773.4 > ./outputs/t2140

./replace_instrumented.exe '-[^9-B]-' ''  < $ROOT/inputs/temp-test/2097.inp.889.1 > ./outputs/t2141

./replace_instrumented.exe '-[^9-B]-' ''  < $ROOT/inputs/temp-test/2098.inp.889.3 > ./outputs/t2142

./replace_instrumented.exe '-[^9-B]?[a-cc*[a-c][^a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1852.inp.787.1 > ./outputs/t2143

./replace_instrumented.exe '-[^9-B]?[a-cc*[a-c][^a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1853.inp.787.2 > ./outputs/t2144

./replace_instrumented.exe '-[^9-B]?[a-cc*[a-c][^a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1854.inp.787.3 > ./outputs/t2145

./replace_instrumented.exe '-[^9-B]?[a-cc*[a-c][^a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1855.inp.787.4 > ./outputs/t2146

./replace_instrumented.exe '-[^9-B][^0-9] ' 'a@n'  < $ROOT/inputs/temp-test/2024.inp.859.1 > ./outputs/t2147

./replace_instrumented.exe '-[^9-B][^0-9] ' 'a@n'  < $ROOT/inputs/temp-test/2025.inp.859.2 > ./outputs/t2148

./replace_instrumented.exe '-[^9-B][^0-9]-' 'a&'  < $ROOT/inputs/temp-test/95.inp.43.1 > ./outputs/t2149

./replace_instrumented.exe '-[^9-B][^0-9]-' 'a&'  < $ROOT/inputs/temp-test/96.inp.43.2 > ./outputs/t2150

./replace_instrumented.exe '-[^9-B][^0-9]-[-' '&a@%'  < $ROOT/inputs/temp-test/774.inp.333.1 > ./outputs/t2151

./replace_instrumented.exe '-[^9-B][^0-9]-[-' '&a@%'  < $ROOT/inputs/temp-test/775.inp.333.2 > ./outputs/t2152

./replace_instrumented.exe '-[^9-B][^0-9]-[-' '&a@%'  < $ROOT/inputs/temp-test/776.inp.333.3 > ./outputs/t2153

./replace_instrumented.exe '-[^9-B][^0-9]?*' '&a@%'  < $ROOT/inputs/temp-test/391.inp.171.1 > ./outputs/t2154

./replace_instrumented.exe '-[^9-B][^0-9]?*' '&a@%'  < $ROOT/inputs/temp-test/392.inp.171.2 > ./outputs/t2155

./replace_instrumented.exe '-[^9-B][^0-9][^-z]' '&a@%'  < $ROOT/inputs/temp-test/391.inp.171.1 > ./outputs/t2156

./replace_instrumented.exe '-[^9-B][^0-9][^-z]' '&a@%'  < $ROOT/inputs/temp-test/392.inp.171.2 > ./outputs/t2157

./replace_instrumented.exe '-[^9-B][^0-9][_-z]?-^*?' '@n'  < $ROOT/inputs/temp-test/1049.inp.452.1 > ./outputs/t2158

./replace_instrumented.exe '-[^9-B][^0-9][_-z]?-^*?' '@n'  < $ROOT/inputs/temp-test/1050.inp.452.3 > ./outputs/t2159

./replace_instrumented.exe '-[^9-B][a--b][^9-B]--[^a--]' '&a@%'  < $ROOT/inputs/temp-test/1756.inp.746.1 > ./outputs/t2160

./replace_instrumented.exe '-[^@n]?-?$' '&'  < $ROOT/inputs/temp-test/1613.inp.685.9 > ./outputs/t2161

./replace_instrumented.exe '-[^@n]?-?' '&'  < $ROOT/inputs/temp-test/1610.inp.685.1 > ./outputs/t2162

./replace_instrumented.exe '-[^@n]?-?' '&'  < $ROOT/inputs/temp-test/1611.inp.685.2 > ./outputs/t2163

./replace_instrumented.exe '-[^@n]?-?' '&'  < $ROOT/inputs/temp-test/1612.inp.685.3 > ./outputs/t2164

./replace_instrumented.exe '-[^a-' 'a&'  < $ROOT/inputs/temp-test/379.inp.165.1 > ./outputs/t2165

./replace_instrumented.exe '-[^a-' 'a&'  < $ROOT/inputs/temp-test/380.inp.165.2 > ./outputs/t2166

./replace_instrumented.exe '-[^a-c%' ''  < $ROOT/inputs/temp-test/2353.inp.999.1 > ./outputs/t2167

./replace_instrumented.exe '-[^a-c' '&a@%'  < $ROOT/inputs/temp-test/422.inp.186.1 > ./outputs/t2168

./replace_instrumented.exe '-[^a-c' '&a@%'  < $ROOT/inputs/temp-test/423.inp.186.3 > ./outputs/t2169

./replace_instrumented.exe '-[^a-c' ''  < $ROOT/inputs/temp-test/2353.inp.999.1 > ./outputs/t2170

./replace_instrumented.exe '-[^a-c' ''  < $ROOT/inputs/temp-test/2354.inp.999.2 > ./outputs/t2171

./replace_instrumented.exe '-[^a-c' ''  < $ROOT/inputs/temp-test/2355.inp.999.3 > ./outputs/t2172

./replace_instrumented.exe '-[^a-c' 'b@t'  < $ROOT/inputs/temp-test/1824.inp.776.1 > ./outputs/t2173

./replace_instrumented.exe '-[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/862.inp.371.1 > ./outputs/t2174

./replace_instrumented.exe '-[^a-c]' 'b@t'  < $ROOT/inputs/temp-test/1651.inp.704.1 > ./outputs/t2175

./replace_instrumented.exe '-[^a-c]' 'b@t'  < $ROOT/inputs/temp-test/1652.inp.704.3 > ./outputs/t2176

./replace_instrumented.exe '-[^a-c]' 'b@t'  < $ROOT/inputs/temp-test/1653.inp.704.4 > ./outputs/t2177

./replace_instrumented.exe '-[^a-c]--a-]' 'NEW'  < $ROOT/inputs/temp-test/1566.inp.669.1 > ./outputs/t2178

./replace_instrumented.exe '-[^a-c]--a-]' 'NEW'  < $ROOT/inputs/temp-test/1567.inp.669.3 > ./outputs/t2179

./replace_instrumented.exe '-[_-z]' '&'  < $ROOT/inputs/temp-test/1816.inp.772.1 > ./outputs/t2180

./replace_instrumented.exe '-[_-z]' '&'  < $ROOT/inputs/temp-test/1817.inp.772.3 > ./outputs/t2181

./replace_instrumented.exe '-[_-z]' '@%&a'  < $ROOT/inputs/temp-test/1960.inp.832.1 > ./outputs/t2182

./replace_instrumented.exe '-[_-z]' '@%&a'  < $ROOT/inputs/temp-test/1961.inp.832.2 > ./outputs/t2183

./replace_instrumented.exe '-[_-z]' 'a&'  < $ROOT/inputs/temp-test/498.inp.218.1 > ./outputs/t2184

./replace_instrumented.exe '-[a--b]' 'a&'  < $ROOT/inputs/temp-test/1617.inp.687.1 > ./outputs/t2185

./replace_instrumented.exe '-[a--b]' 'a&'  < $ROOT/inputs/temp-test/1618.inp.687.3 > ./outputs/t2186

./replace_instrumented.exe '-[a--b]-' '@%&a'  < $ROOT/inputs/temp-test/2219.inp.940.1 > ./outputs/t2187

./replace_instrumented.exe '-[a--b][0-9][^a-c[^9-B]-' 'a&'  < $ROOT/inputs/temp-test/1475.inp.633.1 > ./outputs/t2188

./replace_instrumented.exe '-[a--b][0-9][^a-c[^9-B]-' 'a&'  < $ROOT/inputs/temp-test/1476.inp.633.2 > ./outputs/t2189

./replace_instrumented.exe '-[a--b][0-9][^a-c[^9-B]-' 'a&'  < $ROOT/inputs/temp-test/1477.inp.633.3 > ./outputs/t2190

./replace_instrumented.exe '-[a--b][^a--b]-@[a-c][^-z][a--b][^9-B]' ''  < $ROOT/inputs/temp-test/650.inp.282.1 > ./outputs/t2191

./replace_instrumented.exe '-[a--b][^a--b]-@[a-c][^-z][a--b][^9-B]' ''  < $ROOT/inputs/temp-test/651.inp.282.3 > ./outputs/t2192

./replace_instrumented.exe '-[a-c' ''  < $ROOT/inputs/temp-test/1681.inp.716.1 > ./outputs/t2193

./replace_instrumented.exe '-[a-c' ''  < $ROOT/inputs/temp-test/1682.inp.716.2 > ./outputs/t2194

./replace_instrumented.exe '-[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1225.inp.526.1 > ./outputs/t2195

./replace_instrumented.exe '-[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1226.inp.526.2 > ./outputs/t2196

./replace_instrumented.exe '-[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1227.inp.526.3 > ./outputs/t2197

./replace_instrumented.exe '-[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/1228.inp.526.4 > ./outputs/t2198

./replace_instrumented.exe '-[a-c]' '&'  < $ROOT/inputs/temp-test/1023.inp.440.1 > ./outputs/t2199

./replace_instrumented.exe '-[a-c]' '&'  < $ROOT/inputs/temp-test/1024.inp.440.2 > ./outputs/t2200

./replace_instrumented.exe '-[a-c]' '@%@&'  < $ROOT/inputs/temp-test/358.inp.157.1 > ./outputs/t2201

./replace_instrumented.exe '-[a-c]' '@%@&'  < $ROOT/inputs/temp-test/359.inp.157.3 > ./outputs/t2202

./replace_instrumented.exe '-[a-c]' '@%@&@'  < $ROOT/inputs/temp-test/359.inp.157.3 > ./outputs/t2203

./replace_instrumented.exe '-[a-c]' '@n'  < $ROOT/inputs/temp-test/1155.inp.497.1 > ./outputs/t2204

./replace_instrumented.exe '-[a-c]' '@n'  < $ROOT/inputs/temp-test/1156.inp.497.3 > ./outputs/t2205

./replace_instrumented.exe '-[a-c]' 'a@n'  < $ROOT/inputs/temp-test/1387.inp.595.1 > ./outputs/t2206

./replace_instrumented.exe '-[a-c]' 'a@n'  < $ROOT/inputs/temp-test/1388.inp.595.3 > ./outputs/t2207

./replace_instrumented.exe '-[a-c]' 'b@t'  < $ROOT/inputs/temp-test/2291.inp.971.1 > ./outputs/t2208

./replace_instrumented.exe '-[a-c]-[^-z]' '@%&a'  < $ROOT/inputs/temp-test/1831.inp.779.1 > ./outputs/t2209

./replace_instrumented.exe '-[a-c]-[^-z]' '@%&a'  < $ROOT/inputs/temp-test/1832.inp.779.2 > ./outputs/t2210

./replace_instrumented.exe '-[a-c]@' '@%@&'  < $ROOT/inputs/temp-test/358.inp.157.1 > ./outputs/t2211

./replace_instrumented.exe '-\|h4+5~' 'A+2wF)'  < $ROOT/inputs/input/ruin.948 > ./outputs/t2212

./replace_instrumented.exe '-] ' 'NEW'  < $ROOT/inputs/temp-test/611.inp.263.1 > ./outputs/t2213

./replace_instrumented.exe '-]' 'NEW'  < $ROOT/inputs/temp-test/2191.inp.928.1 > ./outputs/t2214

./replace_instrumented.exe '-]-' '@n'  < $ROOT/inputs/temp-test/1122.inp.483.1 > ./outputs/t2215

./replace_instrumented.exe '-]?' 'a&'  < $ROOT/inputs/temp-test/1121.inp.482.1 > ./outputs/t2216

./replace_instrumented.exe '-]@**' '&'  < $ROOT/inputs/temp-test/406.inp.178.1 > ./outputs/t2217

./replace_instrumented.exe '-]@**' '&'  < $ROOT/inputs/temp-test/407.inp.178.2 > ./outputs/t2218

./replace_instrumented.exe '-]@**' '&'  < $ROOT/inputs/temp-test/408.inp.178.3 > ./outputs/t2219

./replace_instrumented.exe '-]A*' '@%&a'  < $ROOT/inputs/temp-test/1209.inp.519.2 > ./outputs/t2220

./replace_instrumented.exe '-]A*' '@%&a'  < $ROOT/inputs/temp-test/1210.inp.519.3 > ./outputs/t2221

./replace_instrumented.exe '-][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/629.inp.272.1 > ./outputs/t2222

./replace_instrumented.exe '-][^0-9]' '@%@&'  < $ROOT/inputs/temp-test/630.inp.272.3 > ./outputs/t2223

./replace_instrumented.exe '-][^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/578.inp.249.1 > ./outputs/t2224

./replace_instrumented.exe '-][^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/579.inp.249.2 > ./outputs/t2225

./replace_instrumented.exe '-][^0-9][a-' '&'  < $ROOT/inputs/temp-test/2262.inp.959.1 > ./outputs/t2226

./replace_instrumented.exe '-][^0-9][a-' '&'  < $ROOT/inputs/temp-test/2263.inp.959.2 > ./outputs/t2227

./replace_instrumented.exe '-][^0-9][a-' '&'  < $ROOT/inputs/temp-test/2264.inp.959.3 > ./outputs/t2228

./replace_instrumented.exe '-]c*??- [^9-B]' 'b@t'  < $ROOT/inputs/temp-test/1981.inp.841.1 > ./outputs/t2229

./replace_instrumented.exe '-]c*??- [^9-B]' 'b@t'  < $ROOT/inputs/temp-test/1982.inp.841.2 > ./outputs/t2230

./replace_instrumented.exe '-^$' 'NEW'  < $ROOT/inputs/temp-test/1289.inp.553.6 > ./outputs/t2231

./replace_instrumented.exe '-^$' 'a@nb@tc'  < $ROOT/inputs/temp-test/763.inp.326.6 > ./outputs/t2232

./replace_instrumented.exe '-^' ''  < $ROOT/inputs/temp-test/573.inp.247.1 > ./outputs/t2233

./replace_instrumented.exe '-^' ''  < $ROOT/inputs/temp-test/574.inp.247.2 > ./outputs/t2234

./replace_instrumented.exe '-^' '@%&a'  < $ROOT/inputs/temp-test/1247.inp.535.1 > ./outputs/t2235

./replace_instrumented.exe '-^' '@%&a'  < $ROOT/inputs/temp-test/1248.inp.535.2 > ./outputs/t2236

./replace_instrumented.exe '-^' 'NEW'  < $ROOT/inputs/temp-test/1287.inp.553.1 > ./outputs/t2237

./replace_instrumented.exe '-^' 'NEW'  < $ROOT/inputs/temp-test/1288.inp.553.3 > ./outputs/t2238

./replace_instrumented.exe '-^' 'a&'  < $ROOT/inputs/temp-test/1426.inp.613.1 > ./outputs/t2239

./replace_instrumented.exe '-^' 'a&'  < $ROOT/inputs/temp-test/1427.inp.613.2 > ./outputs/t2240

./replace_instrumented.exe '-^' 'a&'  < $ROOT/inputs/temp-test/1428.inp.613.3 > ./outputs/t2241

./replace_instrumented.exe '-^' 'a@nb@tc'  < $ROOT/inputs/temp-test/760.inp.326.1 > ./outputs/t2242

./replace_instrumented.exe '-^' 'a@nb@tc'  < $ROOT/inputs/temp-test/761.inp.326.2 > ./outputs/t2243

./replace_instrumented.exe '-^' 'a@nb@tc'  < $ROOT/inputs/temp-test/762.inp.326.3 > ./outputs/t2244

./replace_instrumented.exe '-^*' '@t'  < $ROOT/inputs/temp-test/1060.inp.456.1 > ./outputs/t2245

./replace_instrumented.exe '-^*' '@t'  < $ROOT/inputs/temp-test/1061.inp.456.3 > ./outputs/t2246

./replace_instrumented.exe '-^*' 'NEW'  < $ROOT/inputs/temp-test/648.inp.281.1 > ./outputs/t2247

./replace_instrumented.exe '-^*' 'NEW'  < $ROOT/inputs/temp-test/649.inp.281.3 > ./outputs/t2248

./replace_instrumented.exe '-^*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1721.inp.733.1 > ./outputs/t2249

./replace_instrumented.exe '-^*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1722.inp.733.2 > ./outputs/t2250

./replace_instrumented.exe '-^*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1723.inp.733.3 > ./outputs/t2251

./replace_instrumented.exe '-^-]' '@%&a'  < $ROOT/inputs/temp-test/2309.inp.980.1 > ./outputs/t2252

./replace_instrumented.exe '-^-]' '@%&a'  < $ROOT/inputs/temp-test/2310.inp.980.3 > ./outputs/t2253

./replace_instrumented.exe '-^-]' '@%@&'  < $ROOT/inputs/temp-test/376.inp.163.1 > ./outputs/t2254

./replace_instrumented.exe '-^-]' '@t'  < $ROOT/inputs/temp-test/1071.inp.461.1 > ./outputs/t2255

./replace_instrumented.exe '-^-]' '@t'  < $ROOT/inputs/temp-test/1072.inp.461.2 > ./outputs/t2256

./replace_instrumented.exe '-^-]' '@t'  < $ROOT/inputs/temp-test/1073.inp.461.3 > ./outputs/t2257

./replace_instrumented.exe '-^?*' ''  < $ROOT/inputs/temp-test/574.inp.247.2 > ./outputs/t2258

./replace_instrumented.exe '-^[^--z]--[a-c?[^-@[[^a-c]^-]@**?-' '@t'  < $ROOT/inputs/temp-test/2115.inp.897.1 > ./outputs/t2259

./replace_instrumented.exe '-^[^--z]--[a-c?[^-@[[^a-c]^-]@**?-' '@t'  < $ROOT/inputs/temp-test/2116.inp.897.3 > ./outputs/t2260

./replace_instrumented.exe '-^a-]-]?' '&a@%'  < $ROOT/inputs/temp-test/1459.inp.625.1 > ./outputs/t2261

./replace_instrumented.exe '-^a-]-]?' '&a@%'  < $ROOT/inputs/temp-test/1460.inp.625.2 > ./outputs/t2262

./replace_instrumented.exe '-^a-c][^a-c][a--]a-c]? ?@n*^a-c]a-]?' ''  < $ROOT/inputs/temp-test/1493.inp.640.1 > ./outputs/t2263

./replace_instrumented.exe '-a-]?[^a-c]--[_-z]-' '@n'  < $ROOT/inputs/temp-test/1891.inp.802.1 > ./outputs/t2264

./replace_instrumented.exe '-a-]?[^a-c]--[_-z]-' '@n'  < $ROOT/inputs/temp-test/1892.inp.802.2 > ./outputs/t2265

./replace_instrumented.exe '-a-c]-A[^@@]' '@%&a'  < $ROOT/inputs/temp-test/417.inp.184.1 > ./outputs/t2266

./replace_instrumented.exe '-a-c]-A[^@@]' '@%&a'  < $ROOT/inputs/temp-test/418.inp.184.3 > ./outputs/t2267

./replace_instrumented.exe '-a-c]A*-?' ''  < $ROOT/inputs/temp-test/260.inp.115.1 > ./outputs/t2268

./replace_instrumented.exe '-a-c][^0-9][0-9]?@n*[^0-9]@*c[0-9]' 'b@t'  < $ROOT/inputs/temp-test/1655.inp.705.1 > ./outputs/t2269

./replace_instrumented.exe '-a-c][^0-9][0-9]?@n*[^0-9]@*c[0-9]' 'b@t'  < $ROOT/inputs/temp-test/1656.inp.705.2 > ./outputs/t2270

./replace_instrumented.exe '-a]#[0-9]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2271

./replace_instrumented.exe '-c*' 'a&'  < $ROOT/inputs/temp-test/2027.inp.860.1 > ./outputs/t2272

./replace_instrumented.exe '-c*' 'a&'  < $ROOT/inputs/temp-test/2028.inp.860.3 > ./outputs/t2273

./replace_instrumented.exe '-c*?-?' 'NEW'  < $ROOT/inputs/temp-test/547.inp.237.1 > ./outputs/t2274

./replace_instrumented.exe '-c*?-?' 'NEW'  < $ROOT/inputs/temp-test/548.inp.237.2 > ./outputs/t2275

./replace_instrumented.exe '-c*?-?' 'NEW'  < $ROOT/inputs/temp-test/549.inp.237.3 > ./outputs/t2276

./replace_instrumented.exe '-c---[^0-9][0-9][9-B]-' '@n'  < $ROOT/inputs/temp-test/1032.inp.444.1 > ./outputs/t2277

./replace_instrumented.exe '-c---[^0-9][0-9][9-B]-' '@n'  < $ROOT/inputs/temp-test/1033.inp.444.2 > ./outputs/t2278

./replace_instrumented.exe '-c?$' '@%@&'  < $ROOT/inputs/temp-test/606.inp.260.9 > ./outputs/t2279

./replace_instrumented.exe '-c?' '@%@&'  < $ROOT/inputs/temp-test/603.inp.260.1 > ./outputs/t2280

./replace_instrumented.exe '-c?' '@%@&'  < $ROOT/inputs/temp-test/604.inp.260.3 > ./outputs/t2281

./replace_instrumented.exe '-c[^9-B][9-B]-[^-z]?-' '&a@%'  < $ROOT/inputs/temp-test/2010.inp.853.1 > ./outputs/t2282

./replace_instrumented.exe '-c[^9-B][9-B]-[^-z]?-c[^9-B][9-B]-[^-z]?---c[^9-B][9-B]-[^-z]?--c[^9-B][9-B]-[^-z]?--c[^9-B][9-B]-[^-z]?--c[^9-B][9-B]-[^-z]?--c[^9-B][9-B]-[^-z]?-' '&a@%'  < $ROOT/inputs/temp-test/2010.inp.853.1 > ./outputs/t2283

./replace_instrumented.exe '.' '+h8aqrDP='  < $ROOT/inputs/input/ruin.513 > ./outputs/t2284

./replace_instrumented.exe '.' '8]AE9Lk)owK TbxK<5-7bhAVK2'  < $ROOT/inputs/input/ruin.1409 > ./outputs/t2285

./replace_instrumented.exe '.' '<~Q;^ZUey}p(>R: eER_h|%#heV=M~P8uEQV_#T72=Gg-O'\''}iI8H]=^c[MV]GR7_t'  < $ROOT/inputs/input/ruin.670 > ./outputs/t2286

./replace_instrumented.exe '.' 'R'  < $ROOT/inputs/input/ruin.1930 > ./outputs/t2287

./replace_instrumented.exe '/$' ','  < $ROOT/inputs/input/ruin.1840 > ./outputs/t2288

./replace_instrumented.exe '/' 'P'  < $ROOT/inputs/input/ruin.755 > ./outputs/t2289

./replace_instrumented.exe '/' 'd=f'  < $ROOT/inputs/input/ruin.1856 > ./outputs/t2290

./replace_instrumented.exe '/' 't'  < $ROOT/inputs/input/ruin.1826 > ./outputs/t2291

./replace_instrumented.exe '/' '}wTFVi.Wr"L7RYg!cd\XO7'  < $ROOT/inputs/input/ruin.1651 > ./outputs/t2292

./replace_instrumented.exe '0' 'EXO^}tG*4[M'\'''\''UEUY^*K}AhDu'  < $ROOT/inputs/input/ruin.1617 > ./outputs/t2293

./replace_instrumented.exe '0' 'LB'  < $ROOT/inputs/input/ruin.1028 > ./outputs/t2294

./replace_instrumented.exe '0' 'Z?7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpn'  < $ROOT/inputs/input/ruin.1060 > ./outputs/t2295

./replace_instrumented.exe '0' 'Z?n'  < $ROOT/inputs/input/ruin.1060 > ./outputs/t2296

./replace_instrumented.exe '0' '{q2n8KrM4f"NA#l+YD-M].S{C4vS@{!w!\]@)zzgx'  < $ROOT/inputs/input/ruin.1562 > ./outputs/t2297

./replace_instrumented.exe '0-9][a-c]-?A-?-c[0-9][a-c]-?AWzWz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`]-*[*0-9][^0-9]*[@t][@t@]' ''  < $ROOT/inputs/moni/f8.inp > ./outputs/t2298

./replace_instrumented.exe '0?' 'XBu4dy6FR#+F"V|Z-B.[{PW'  < $ROOT/inputs/input/ruin.936 > ./outputs/t2299

./replace_instrumented.exe '0?*' 'EXO^}tG*4[M'\'''\''UEUY^*K}AhDu'  < $ROOT/inputs/input/ruin.1617 > ./outputs/t2300

./replace_instrumented.exe '1' '0%!X/d_[P@,!+=*a!b4ci!'  < $ROOT/inputs/input/ruin.763 > ./outputs/t2301

./replace_instrumented.exe '1' 'M_Toh|[aPbaYoj5Uau@&qg]4@sRFU+FAt-LwrFS'  < $ROOT/inputs/input/ruin.1091 > ./outputs/t2302

./replace_instrumented.exe '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890' '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2303

./replace_instrumented.exe '12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2304

./replace_instrumented.exe '2' 'gU'  < $ROOT/inputs/input/ruin.1497 > ./outputs/t2305

./replace_instrumented.exe '2' 'n'  < $ROOT/inputs/input/ruin.153 > ./outputs/t2306

./replace_instrumented.exe '2?' '6'\''C'  < $ROOT/inputs/input/ruin.1558 > ./outputs/t2307

./replace_instrumented.exe '3 3 ?' '@t67@t67@n'  < $ROOT/inputs/moni/f8.inp > ./outputs/t2308

./replace_instrumented.exe '3' '%j^S0TxA[;rv*vwcH0v}f1]?o+\Kjds,MC;@Qu@Vr2}HP#{c&FBfG"&JR\(=>ZU;D]@O$xv;xaoScl;%3'  < $ROOT/inputs/input/ruin.828 > ./outputs/t2309

./replace_instrumented.exe '3' '4R NQlkJ:NBlz'  < $ROOT/inputs/input/ruin.754 > ./outputs/t2310

./replace_instrumented.exe '3' '5'  < $ROOT/inputs/input/ruin.675 > ./outputs/t2311

./replace_instrumented.exe '3' '9|'  < $ROOT/inputs/input/ruin.122 > ./outputs/t2312

./replace_instrumented.exe '3' '=-9R'\''azqd96m</'  < $ROOT/inputs/input/ruin.169 > ./outputs/t2313

./replace_instrumented.exe '3' '_r*?'\''z?z8x$#._@8RQ3b:[UxRVn>M[D7xnp,+G|zM.mV.dDGw`@<ZRoT]_W'  < $ROOT/inputs/input/ruin.1867 > ./outputs/t2314

./replace_instrumented.exe '3@@' ' '  < $ROOT/inputs/input/ruin.971 > ./outputs/t2315

./replace_instrumented.exe '3BLytQ3BLytQ69ILh[Q=v@3BLytQ69ILh[Q=v@69ILh[Q=v@3B3BLytQ69ILh[Q=v@3BLytQ69ILh[Q=v@3BLytQ69ILh[Q=v@3BLytQ69ILh[Q=v@LytQ69ILh[Q=v@[0-9]*' ''  < $ROOT/inputs/moni/f8.inp > ./outputs/t2316

./replace_instrumented.exe '4' 'GC~b-h:p- 1}(N|2'  < $ROOT/inputs/input/ruin.1096 > ./outputs/t2317

./replace_instrumented.exe '4?' '0#z#_$#r'  < $ROOT/inputs/input/ruin.48 > ./outputs/t2318

./replace_instrumented.exe '4@t@@\M)BP@@d@@' '(J%$7-Km+F*y,%RQ::$`Oxsb-*k*$<nGwt43]!f.+D{'  < $ROOT/inputs/input/ruin.1706 > ./outputs/t2319

./replace_instrumented.exe '5' '3xcvLGp",ED"xmUT]z-FB'  < $ROOT/inputs/input/ruin.834 > ./outputs/t2320

./replace_instrumented.exe '5' 'Pcgl|PFbg#{4>i$ZgBymQ}A2<i>(]8Au:C}VK4Akc#oM'  < $ROOT/inputs/input/ruin.1171 > ./outputs/t2321

./replace_instrumented.exe '5' 'R}^(/YRR'  < $ROOT/inputs/input/ruin.347 > ./outputs/t2322

./replace_instrumented.exe '5' 'd'  < $ROOT/inputs/input/ruin.1428 > ./outputs/t2323

./replace_instrumented.exe '5' 'h7xEY D >9[8^X.N2xO}Ne'\''Ar'\''cKa7}*S'  < $ROOT/inputs/input/ruin.723 > ./outputs/t2324

./replace_instrumented.exe '5' 'p$jpcdc+?y'  < $ROOT/inputs/input/ruin.1527 > ./outputs/t2325

./replace_instrumented.exe '5[>-A]' 'rv0,](\@J5=CG3F%m;"*|]gT)V'  < $ROOT/inputs/input/ruin.342 > ./outputs/t2326

./replace_instrumented.exe '6' '_%>N,Bf#:|\xD>emL$bK^QbIRG?jle]Jf=it6/.`'  < $ROOT/inputs/input/ruin.131 > ./outputs/t2327

./replace_instrumented.exe '6*' ')W"v#jga.ue\v[5syHzI,K,QJ+\k#52`Q%<B(@I^t'  < $ROOT/inputs/input/ruin.1736 > ./outputs/t2328

./replace_instrumented.exe '7' ''  < $ROOT/inputs/input/ruin.545 > ./outputs/t2329

./replace_instrumented.exe '8' '"'  < $ROOT/inputs/input/ruin.484 > ./outputs/t2330

./replace_instrumented.exe '8' ''  < $ROOT/inputs/input/ruin.448 > ./outputs/t2331

./replace_instrumented.exe '8' '[|'  < $ROOT/inputs/input/ruin.1573 > ./outputs/t2332

./replace_instrumented.exe '8' 'b'  < $ROOT/inputs/input/ruin.1768 > ./outputs/t2333

./replace_instrumented.exe '8' 'e'  < $ROOT/inputs/input/ruin.1076 > ./outputs/t2334

./replace_instrumented.exe '9' ':'  < $ROOT/inputs/input/ruin.206 > ./outputs/t2335

./replace_instrumented.exe '9' '>=rt)q>M}/'  < $ROOT/inputs/input/ruin.748 > ./outputs/t2336

./replace_instrumented.exe '9' '@Z-Co8/r+-k_V3^|>xU#m:Zn4 '  < $ROOT/inputs/input/ruin.836 > ./outputs/t2337

./replace_instrumented.exe '9@@*[^Z-a]^_`a]' '"'  < $ROOT/inputs/input/ruin.28 > ./outputs/t2338

./replace_instrumented.exe ':' '-'  < $ROOT/inputs/input/ruin.1037 > ./outputs/t2339

./replace_instrumented.exe ':' 'KNy,h0_sbVxG=nOfKNy,h0_sbVxG=nOfj@j@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@-'  < $ROOT/inputs/input/ruin.1037 > ./outputs/t2340

./replace_instrumented.exe ':@@*' '&'  < $ROOT/inputs/input/ruin.1279 > ./outputs/t2341

./replace_instrumented.exe ';' 'PuDC_y|{43P)%'\'';2IMC'  < $ROOT/inputs/input/ruin.1459 > ./outputs/t2342

./replace_instrumented.exe ';?' 'l'  < $ROOT/inputs/input/ruin.835 > ./outputs/t2343

./replace_instrumented.exe ';v;vc2#{V7TVUA[lGcZR)h\M7+(Fn;vc2#{V7TVUA[lGcZR)h\M7+(Fn;vc2#{V7TVUA[lGcZR)h\M7+(Fn;vc2#{V7TVUA[lGcZR)h\M7+(Fnc2#{V7TVUA[lGcZR)h\M7+(Fn[Z-a]^_*[Z-a]^_*' 'foo&'  < $ROOT/inputs/input/ruin.506 > ./outputs/t2344

./replace_instrumented.exe '<' 'S'  < $ROOT/inputs/input/ruin.775 > ./outputs/t2345

./replace_instrumented.exe '<' 'v'  < $ROOT/inputs/input/ruin.428 > ./outputs/t2346

./replace_instrumented.exe '<n[D6' ''  < $ROOT/inputs/input/ruin.49 > ./outputs/t2347

./replace_instrumented.exe '=' '&g=Vs@DVtKv;1f. _Ep8=Z <(H&'\''qa&&0rVBXTKdv<G31kbGiPE1^kzBV;j=@'  < $ROOT/inputs/input/ruin.552 > ./outputs/t2348

./replace_instrumented.exe '=' 'B'  < $ROOT/inputs/input/ruin.412 > ./outputs/t2349

./replace_instrumented.exe '=' 'FHShmfVlkj.v$ 8Jrza"8Lbzb\h.[l$/_FJ9Ws?'  < $ROOT/inputs/input/ruin.13 > ./outputs/t2350

./replace_instrumented.exe '=' 'M8s?F;+~?xx;<>"i![@}paufqF[PvP.5C/xIc;i-vj0:Fbo'  < $ROOT/inputs/input/ruin.1553 > ./outputs/t2351

./replace_instrumented.exe '>' 'l'  < $ROOT/inputs/input/ruin.1462 > ./outputs/t2352

./replace_instrumented.exe '>[0-9]' 'YUt'\''=R]f\U&)'  < $ROOT/inputs/input/ruin.1548 > ./outputs/t2353

./replace_instrumented.exe '? '   < $ROOT/inputs/temp-test/217.inp.97.1 > ./outputs/t2354

./replace_instrumented.exe '? ' 'a&'  < $ROOT/inputs/temp-test/609.inp.262.1 > ./outputs/t2355

./replace_instrumented.exe '? ' 'a&'  < $ROOT/inputs/temp-test/610.inp.262.2 > ./outputs/t2356

./replace_instrumented.exe '? ' 'a@nb@tc'  < $ROOT/inputs/temp-test/217.inp.97.1 > ./outputs/t2357

./replace_instrumented.exe '? *' '@t'  < $ROOT/inputs/temp-test/858.inp.369.1 > ./outputs/t2358

./replace_instrumented.exe '? *--[a--b]?-]?[a-c]' 'a&'  < $ROOT/inputs/temp-test/346.inp.152.1 > ./outputs/t2359

./replace_instrumented.exe '? *--[a--b]?-]?[a-c]' 'a&'  < $ROOT/inputs/temp-test/347.inp.152.2 > ./outputs/t2360

./replace_instrumented.exe '? *--[a--b]?-]?[a-c]' 'a&'  < $ROOT/inputs/temp-test/348.inp.152.3 > ./outputs/t2361

./replace_instrumented.exe '? *--[a--b]?-]?[a-c]' 'a&@'  < $ROOT/inputs/temp-test/346.inp.152.1 > ./outputs/t2362

./replace_instrumented.exe '? *--[a--b]?-]?[a-c]' 'a&@'  < $ROOT/inputs/temp-test/348.inp.152.3 > ./outputs/t2363

./replace_instrumented.exe '? *--[a--b]?-]?[a-c]@' 'a&'  < $ROOT/inputs/temp-test/347.inp.152.2 > ./outputs/t2364

./replace_instrumented.exe '? *@[[^9-B][^0-9]A[^a-c]' 'a&'  < $ROOT/inputs/temp-test/1908.inp.810.1 > ./outputs/t2365

./replace_instrumented.exe '? *@[[^9-B][^0-9]A[^a-c]' 'a&'  < $ROOT/inputs/temp-test/1909.inp.810.2 > ./outputs/t2366

./replace_instrumented.exe '? *[^--^a-c]$' 'a&'  < $ROOT/inputs/temp-test/1369.inp.587.6 > ./outputs/t2367

./replace_instrumented.exe '? *[^--^a-c]' 'a&'  < $ROOT/inputs/temp-test/1367.inp.587.1 > ./outputs/t2368

./replace_instrumented.exe '? *[^--^a-c]' 'a&'  < $ROOT/inputs/temp-test/1368.inp.587.3 > ./outputs/t2369

./replace_instrumented.exe '? *[^a-][9-B]--' '@%&a'  < $ROOT/inputs/temp-test/1705.inp.727.1 > ./outputs/t2370

./replace_instrumented.exe '? *[^a-][9-B]--' '@%&a'  < $ROOT/inputs/temp-test/1706.inp.727.2 > ./outputs/t2371

./replace_instrumented.exe '? *[^a-][9-B]--' '@%&a'  < $ROOT/inputs/temp-test/1707.inp.727.3 > ./outputs/t2372

./replace_instrumented.exe '?!' 'E2}-sQuI['  < $ROOT/inputs/input/ruin.639 > ./outputs/t2373

./replace_instrumented.exe '?$' '$Ci@3^s4Mt/r6s/"jopElFXsAmp8CE#!&p!d:J&e7*F0`/RFf*M[8l3*.CM@/|pucY'  < $ROOT/inputs/input/ruin.1937 > ./outputs/t2374

./replace_instrumented.exe '?$' '$Z'  < $ROOT/inputs/input/ruin.387 > ./outputs/t2375

./replace_instrumented.exe '?$' '*U*'\''I8uu@VloES@|VT4+e|'  < $ROOT/inputs/input/ruin.1285 > ./outputs/t2376

./replace_instrumented.exe '?$' '2'  < $ROOT/inputs/input/ruin.505 > ./outputs/t2377

./replace_instrumented.exe '?$' '=MoPU`!tL"6E$'  < $ROOT/inputs/input/ruin.1084 > ./outputs/t2378

./replace_instrumented.exe '?$' 'E'  < $ROOT/inputs/input/ruin.1113 > ./outputs/t2379

./replace_instrumented.exe '?$' 'Mbtz>x/9wXMF<9)g/A-g#!ci/5cX}I+x\'\''AU$*rX0&~5q'  < $ROOT/inputs/input/ruin.759 > ./outputs/t2380

./replace_instrumented.exe '?$' 'a&'  < $ROOT/inputs/temp-test/826.inp.355.6 > ./outputs/t2381

./replace_instrumented.exe '?$' 'k#j>k?tL'\''lxD6JM$0j,))D@-]OI]DpDxwc?,xlmDr5F}}h"qU.Lp;'  < $ROOT/inputs/input/ruin.1406 > ./outputs/t2382

./replace_instrumented.exe '?$' 'q'  < $ROOT/inputs/input/ruin.644 > ./outputs/t2383

./replace_instrumented.exe '?%-' '&'  < $ROOT/inputs/temp-test/2347.inp.997.1 > ./outputs/t2384

./replace_instrumented.exe '?%-' '&'  < $ROOT/inputs/temp-test/2348.inp.997.2 > ./outputs/t2385

./replace_instrumented.exe '?%-**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2386

./replace_instrumented.exe '?%[^9-B]' ''  < $ROOT/inputs/temp-test/11.inp.5.2 > ./outputs/t2387

./replace_instrumented.exe '?'   < $ROOT/inputs/input/ruin.1153 > ./outputs/t2388

./replace_instrumented.exe '?' ' '  < $ROOT/inputs/input/ruin.1434 > ./outputs/t2389

./replace_instrumented.exe '?' ' '  < $ROOT/inputs/input/ruin.457 > ./outputs/t2390

./replace_instrumented.exe '?' '!wR{-znFqOsen$'  < $ROOT/inputs/input/ruin.643 > ./outputs/t2391

./replace_instrumented.exe '?' '"\]({uYH3x5zs{.$s)G2Pzxji.o]- _Pzt'\''~6m#[}UH+'  < $ROOT/inputs/input/ruin.318 > ./outputs/t2392

./replace_instrumented.exe '?' '"w4yF;^%V{=[g" GQ!^)U'\''6G+5J[ejzJ=>IXG>MUU*;c:LUh'\''sz` ;i)-cxBKFwk%b`+L'  < $ROOT/inputs/input/ruin.1189 > ./outputs/t2393

./replace_instrumented.exe '?' '#((G)KKH'  < $ROOT/inputs/input/ruin.1245 > ./outputs/t2394

./replace_instrumented.exe '?' '#:07uLCQLG\b`P(5t'  < $ROOT/inputs/input/ruin.939 > ./outputs/t2395

./replace_instrumented.exe '?' '$'  < $ROOT/inputs/input/ruin.1336 > ./outputs/t2396

./replace_instrumented.exe '?' '$bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<bJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<'  < $ROOT/inputs/input/ruin.1336 > ./outputs/t2397

./replace_instrumented.exe '?' '%'  < $ROOT/inputs/input/ruin.72 > ./outputs/t2398

./replace_instrumented.exe '?' '%5\")?O5'\''y2k>Z=\MH%y:6*~h'  < $ROOT/inputs/input/ruin.969 > ./outputs/t2399

./replace_instrumented.exe '?' '%HMhn>OvlKt*Ca5KQC"Zjjtm<0$4C\@!u_Lp`%J)qy("dr>Im'\''IRO'  < $ROOT/inputs/input/ruin.296 > ./outputs/t2400

./replace_instrumented.exe '?' '&'  < $ROOT/inputs/input/ruin.1767 > ./outputs/t2401

./replace_instrumented.exe '?' '&'  < $ROOT/inputs/input/ruin.185 > ./outputs/t2402

./replace_instrumented.exe '?' '&/CK/ck ZYhUC('  < $ROOT/inputs/input/ruin.1355 > ./outputs/t2403

./replace_instrumented.exe '?' '&4fw/&r2!st;I9'  < $ROOT/inputs/input/ruin.1689 > ./outputs/t2404

./replace_instrumented.exe '?' '&RO-^P6-QT4o%.LR>%%g@7t3Yn7!#QeIrm}[.1.'  < $ROOT/inputs/input/ruin.1501 > ./outputs/t2405

./replace_instrumented.exe '?' '&a@%'  < $ROOT/inputs/temp-test/88.inp.40.1 > ./outputs/t2406

./replace_instrumented.exe '?' '&a@%'  < $ROOT/inputs/temp-test/89.inp.40.2 > ./outputs/t2407

./replace_instrumented.exe '?' '&a@%'  < $ROOT/inputs/temp-test/90.inp.40.3 > ./outputs/t2408

./replace_instrumented.exe '?' '&mY@.8om'  < $ROOT/inputs/input/ruin.1923 > ./outputs/t2409

./replace_instrumented.exe '?' ''  < $ROOT/inputs/input/ruin.1235 > ./outputs/t2410

./replace_instrumented.exe '?' ''  < $ROOT/inputs/input/ruin.1723 > ./outputs/t2411

./replace_instrumented.exe '?' ''  < $ROOT/inputs/input/ruin.1830 > ./outputs/t2412

./replace_instrumented.exe '?' ''  < $ROOT/inputs/input/ruin.571 > ./outputs/t2413

./replace_instrumented.exe '?' ''  < $ROOT/inputs/input/ruin.590 > ./outputs/t2414

./replace_instrumented.exe '?' ''  < $ROOT/inputs/input/ruin.821 > ./outputs/t2415

./replace_instrumented.exe '?' ''\'''  < $ROOT/inputs/input/ruin.1176 > ./outputs/t2416

./replace_instrumented.exe '?' ''\''7P5n5'\''lRpz=:pn#5?'  < $ROOT/inputs/input/ruin.1370 > ./outputs/t2417

./replace_instrumented.exe '?' ''\''["<]>V(0?ks?"32CO!wk-P)_U,v\,?v$/eL7Gk$'  < $ROOT/inputs/input/ruin.507 > ./outputs/t2418

./replace_instrumented.exe '?' ''\''m'  < $ROOT/inputs/input/ruin.646 > ./outputs/t2419

./replace_instrumented.exe '?' ''\''~'  < $ROOT/inputs/input/ruin.1252 > ./outputs/t2420

./replace_instrumented.exe '?' '('  < $ROOT/inputs/input/ruin.1296 > ./outputs/t2421

./replace_instrumented.exe '?' '('  < $ROOT/inputs/input/ruin.179 > ./outputs/t2422

./replace_instrumented.exe '?' ')'  < $ROOT/inputs/input/ruin.1751 > ./outputs/t2423

./replace_instrumented.exe '?' ')'  < $ROOT/inputs/input/ruin.600 > ./outputs/t2424

./replace_instrumented.exe '?' ')P\g38V7('\''R<=PA[vEnl}V;-'  < $ROOT/inputs/input/ruin.1375 > ./outputs/t2425

./replace_instrumented.exe '?' '*Y)d1^+BPVi6}-,@Fhp%c9[8=7PJ$[+'  < $ROOT/inputs/input/ruin.725 > ./outputs/t2426

./replace_instrumented.exe '?' '*dvM[t?`D}k'\'';y+;`)<Z%e TPV`D5\Vcq9bq/1:3Q@+RnI'  < $ROOT/inputs/input/ruin.1407 > ./outputs/t2427

./replace_instrumented.exe '?' '+q^RHGG^&;>#u@F]^1iRwc1mpuk_2 FZS)?aAVpejj96'  < $ROOT/inputs/input/ruin.1299 > ./outputs/t2428

./replace_instrumented.exe '?' ','  < $ROOT/inputs/input/ruin.1508 > ./outputs/t2429

./replace_instrumented.exe '?' ','  < $ROOT/inputs/input/ruin.1909 > ./outputs/t2430

./replace_instrumented.exe '?' ','  < $ROOT/inputs/input/ruin.658 > ./outputs/t2431

./replace_instrumented.exe '?' ',^BP#j2(t'  < $ROOT/inputs/input/ruin.1804 > ./outputs/t2432

./replace_instrumented.exe '?' ',gAEa`/^PQWZZa^F'  < $ROOT/inputs/input/ruin.1612 > ./outputs/t2433

./replace_instrumented.exe '?' '.'  < $ROOT/inputs/input/ruin.264 > ./outputs/t2434

./replace_instrumented.exe '?' '.'  < $ROOT/inputs/input/ruin.496 > ./outputs/t2435

./replace_instrumented.exe '?' '.koDO;b.|5'  < $ROOT/inputs/input/ruin.402 > ./outputs/t2436

./replace_instrumented.exe '?' '.mCbJwgx z1X{xc0.PG"hg]OjMQ$ol]SYG!<.<VS(.DdErr'  < $ROOT/inputs/input/ruin.403 > ./outputs/t2437

./replace_instrumented.exe '?' '/DcINi{MtBKO9S<U>&]qaS&QFn#Ow0U<1.yn>bIQ<,ak#&_vVh6:2{^#'  < $ROOT/inputs/input/ruin.1841 > ./outputs/t2438

./replace_instrumented.exe '?' '/~OE"QNi/dprl$J~oOt0kPNb:6#I&zya SA~OXg/l+^bcES"n5ig.M:E<Ygto))h'\''<j~E:I@sFaiXXf'\'''  < $ROOT/inputs/input/ruin.155 > ./outputs/t2439

./replace_instrumented.exe '?' '0yd{(t"'\''bw/ i+JO/F,1bSmIlg'  < $ROOT/inputs/input/ruin.282 > ./outputs/t2440

./replace_instrumented.exe '?' '1'  < $ROOT/inputs/input/ruin.1877 > ./outputs/t2441

./replace_instrumented.exe '?' '1'  < $ROOT/inputs/input/ruin.868 > ./outputs/t2442

./replace_instrumented.exe '?' '1u;:JqX:hb3bS'  < $ROOT/inputs/input/ruin.1153 > ./outputs/t2443

./replace_instrumented.exe '?' '2'  < $ROOT/inputs/input/ruin.1865 > ./outputs/t2444

./replace_instrumented.exe '?' '2Ax#Mv_@DjcWz"~F]km'  < $ROOT/inputs/input/ruin.1241 > ./outputs/t2445

./replace_instrumented.exe '?' '2U+URc}6Uk:Eso9T'  < $ROOT/inputs/input/ruin.1726 > ./outputs/t2446

./replace_instrumented.exe '?' '4J R'  < $ROOT/inputs/input/ruin.845 > ./outputs/t2447

./replace_instrumented.exe '?' '5'  < $ROOT/inputs/input/ruin.1878 > ./outputs/t2448

./replace_instrumented.exe '?' '5<WMaE'\''r{G`Diz:pyjW'  < $ROOT/inputs/input/ruin.1979 > ./outputs/t2449

./replace_instrumented.exe '?' '6'  < $ROOT/inputs/input/ruin.1494 > ./outputs/t2450

./replace_instrumented.exe '?' '7/@`=G"5tu`>7#`st[D~6!6"/PndJ'  < $ROOT/inputs/input/ruin.586 > ./outputs/t2451

./replace_instrumented.exe '?' '8"'  < $ROOT/inputs/input/ruin.511 > ./outputs/t2452

./replace_instrumented.exe '?' '80LT@fdFy'  < $ROOT/inputs/input/ruin.601 > ./outputs/t2453

./replace_instrumented.exe '?' '8l;V'  < $ROOT/inputs/input/ruin.1337 > ./outputs/t2454

./replace_instrumented.exe '?' '8l;V3&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J43&YEy?NDqT |ye3E+7WmBD#X-J4'  < $ROOT/inputs/input/ruin.1337 > ./outputs/t2455

./replace_instrumented.exe '?' '9'  < $ROOT/inputs/input/ruin.1743 > ./outputs/t2456

./replace_instrumented.exe '?' '9'  < $ROOT/inputs/input/ruin.419 > ./outputs/t2457

./replace_instrumented.exe '?' '9'  < $ROOT/inputs/input/ruin.533 > ./outputs/t2458

./replace_instrumented.exe '?' '980/#_O^H>7fd&'  < $ROOT/inputs/input/ruin.532 > ./outputs/t2459

./replace_instrumented.exe '?' '9ytHHUHo0O{;N1(n*Se{S < 3k'  < $ROOT/inputs/input/ruin.405 > ./outputs/t2460

./replace_instrumented.exe '?' ':'  < $ROOT/inputs/input/ruin.1641 > ./outputs/t2461

./replace_instrumented.exe '?' ':'  < $ROOT/inputs/input/ruin.366 > ./outputs/t2462

./replace_instrumented.exe '?' ';'  < $ROOT/inputs/input/ruin.1018 > ./outputs/t2463

./replace_instrumented.exe '?' ';'  < $ROOT/inputs/input/ruin.1520 > ./outputs/t2464

./replace_instrumented.exe '?' ';exh\3*?mQqR,l:89C5.q2u\,`qPW:[zYi<c+xL`A^d[&PA:xddT0Et0-ux H8'  < $ROOT/inputs/input/ruin.962 > ./outputs/t2465

./replace_instrumented.exe '?' ';kh2\M8\&a4Pm=OF^-(G|-p8:i9ovm>xcJ,5e]>y%~kSEJ$[z@RzG}'  < $ROOT/inputs/input/ruin.966 > ./outputs/t2466

./replace_instrumented.exe '?' '<'  < $ROOT/inputs/input/ruin.143 > ./outputs/t2467

./replace_instrumented.exe '?' '<-DXZCR-P^y]}]T`l!/ue4S|LI|TZ\E~Bm>ZK!ml'  < $ROOT/inputs/input/ruin.46 > ./outputs/t2468

./replace_instrumented.exe '?' '</Dco9Q(Uc0D'\''t:qBs3QUn;'\'''  < $ROOT/inputs/input/ruin.474 > ./outputs/t2469

./replace_instrumented.exe '?' '<O'  < $ROOT/inputs/input/ruin.1579 > ./outputs/t2470

./replace_instrumented.exe '?' '<Vod'\''|tm%p>|GpQ{JP^'  < $ROOT/inputs/input/ruin.1868 > ./outputs/t2471

./replace_instrumented.exe '?' '<{'  < $ROOT/inputs/input/ruin.101 > ./outputs/t2472

./replace_instrumented.exe '?' '='  < $ROOT/inputs/input/ruin.1217 > ./outputs/t2473

./replace_instrumented.exe '?' '='  < $ROOT/inputs/input/ruin.1556 > ./outputs/t2474

./replace_instrumented.exe '?' '=S&l@*,k=#&'  < $ROOT/inputs/input/ruin.470 > ./outputs/t2475

./replace_instrumented.exe '?' '=|0$@9jg(x)\|.;{:xQ'  < $ROOT/inputs/input/ruin.970 > ./outputs/t2476

./replace_instrumented.exe '?' '>'  < $ROOT/inputs/input/ruin.345 > ./outputs/t2477

./replace_instrumented.exe '?' '>0\MtN5k&5!Q./'  < $ROOT/inputs/input/ruin.358 > ./outputs/t2478

./replace_instrumented.exe '?' '>\cj;-`N(Qi&s5nTV-3sEXm*'  < $ROOT/inputs/input/ruin.882 > ./outputs/t2479

./replace_instrumented.exe '?' '>b})}d%:+~EdJc2\! ug7;'  < $ROOT/inputs/input/ruin.1335 > ./outputs/t2480

./replace_instrumented.exe '?' '>nHA0p'\''Ou1foR!WVdb0*KDL3]#o35lH%'  < $ROOT/inputs/input/ruin.1364 > ./outputs/t2481

./replace_instrumented.exe '?' '?&'  < $ROOT/inputs/input/ruin.744 > ./outputs/t2482

./replace_instrumented.exe '?' '?Tp4fnmE6"Pe_j`:'  < $ROOT/inputs/input/ruin.247 > ./outputs/t2483

./replace_instrumented.exe '?' '?b&+AjmcI]eV'\''|:7(2&q@pmv;p3/#;RBU8z}&?C4hjPC3x1{3?wfI6hN-'  < $ROOT/inputs/input/ruin.168 > ./outputs/t2484

./replace_instrumented.exe '?' '?wWkfB0{Olvu!$q9j0|Q&niewx~wpw+G.dVNB$$x0&VHId'  < $ROOT/inputs/input/ruin.1389 > ./outputs/t2485

./replace_instrumented.exe '?' '@%&a'  < $ROOT/inputs/temp-test/71.inp.31.1 > ./outputs/t2486

./replace_instrumented.exe '?' '@%&a'  < $ROOT/inputs/temp-test/72.inp.31.2 > ./outputs/t2487

./replace_instrumented.exe '?' '@%&a'  < $ROOT/inputs/temp-test/73.inp.31.3 > ./outputs/t2488

./replace_instrumented.exe '?' '@'  < $ROOT/inputs/input/ruin.951 > ./outputs/t2489

./replace_instrumented.exe '?' '@V@=ehA6m.N^nI2LfcXe_'  < $ROOT/inputs/input/ruin.1919 > ./outputs/t2490

./replace_instrumented.exe '?' '@b +$xs[.Nh$2O|'  < $ROOT/inputs/input/ruin.952 > ./outputs/t2491

./replace_instrumented.exe '?' '@fcA'\''DvQsI^6t.kwEqv'  < $ROOT/inputs/input/ruin.116 > ./outputs/t2492

./replace_instrumented.exe '?' '@n'  < $ROOT/inputs/temp-test/53.inp.22.1 > ./outputs/t2493

./replace_instrumented.exe '?' '@o@KFH{>4`U9P+*vh?|$QnmR!k"^X=gQm3_JMfyxy}.ZI<K!U( GS"A4I7AHNHp?x!nL%T{Og%LeK8>PdhyfE$yz5a</&:6{&`/3:zG'  < $ROOT/inputs/input/ruin.384 > ./outputs/t2494

./replace_instrumented.exe '?' 'A'  < $ROOT/inputs/input/ruin.1010 > ./outputs/t2495

./replace_instrumented.exe '?' 'AF'  < $ROOT/inputs/input/ruin.1836 > ./outputs/t2496

./replace_instrumented.exe '?' 'B'  < $ROOT/inputs/input/ruin.1412 > ./outputs/t2497

./replace_instrumented.exe '?' 'BUoa41Xis8O!z)THM+k-UQ'  < $ROOT/inputs/input/ruin.433 > ./outputs/t2498

./replace_instrumented.exe '?' 'Bf/nz5#;N'  < $ROOT/inputs/input/ruin.242 > ./outputs/t2499

./replace_instrumented.exe '?' 'C'  < $ROOT/inputs/input/ruin.1343 > ./outputs/t2500

./replace_instrumented.exe '?' 'C@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-@*[a--b]^*-[^-'  < $ROOT/inputs/input/ruin.1343 > ./outputs/t2501

./replace_instrumented.exe '?' 'CC'\''vJXblh:Zwt&:'  < $ROOT/inputs/input/ruin.338 > ./outputs/t2502

./replace_instrumented.exe '?' 'CE(8]nlKTDmLw~YL"~TMBV%#@B1b'\''9$'  < $ROOT/inputs/input/ruin.374 > ./outputs/t2503

./replace_instrumented.exe '?' 'D'  < $ROOT/inputs/input/ruin.1196 > ./outputs/t2504

./replace_instrumented.exe '?' 'D+7t>fY~<_'  < $ROOT/inputs/input/ruin.1904 > ./outputs/t2505

./replace_instrumented.exe '?' 'DF\2'  < $ROOT/inputs/input/ruin.1482 > ./outputs/t2506

./replace_instrumented.exe '?' 'F'  < $ROOT/inputs/input/ruin.926 > ./outputs/t2507

./replace_instrumented.exe '?' 'F@DPQ8u2.0:==Dsj251Al-d\Z'  < $ROOT/inputs/input/ruin.111 > ./outputs/t2508

./replace_instrumented.exe '?' 'FSaq)g'  < $ROOT/inputs/input/ruin.844 > ./outputs/t2509

./replace_instrumented.exe '?' 'Gj154]Jjcc\^H?[iW;|>#5"?lm_#?K8no~(Z?!lV%m=?Gx*4,)-orqHg?`B|P-nsUv#a@k%zXg('\''\=G`4,0'  < $ROOT/inputs/input/ruin.1166 > ./outputs/t2510

./replace_instrumented.exe '?' 'H#I|."*BcMtK)["_)'  < $ROOT/inputs/input/ruin.995 > ./outputs/t2511

./replace_instrumented.exe '?' 'H'  < $ROOT/inputs/input/ruin.642 > ./outputs/t2512

./replace_instrumented.exe '?' 'HqJ[APZc=u{VE'  < $ROOT/inputs/input/ruin.103 > ./outputs/t2513

./replace_instrumented.exe '?' 'Iv*a+"a+_d)K~"^<AvGzg.*0pQl1[Yrs;,`%"AB7k'  < $ROOT/inputs/input/ruin.1582 > ./outputs/t2514

./replace_instrumented.exe '?' 'J'  < $ROOT/inputs/input/ruin.1977 > ./outputs/t2515

./replace_instrumented.exe '?' 'K'  < $ROOT/inputs/input/ruin.1121 > ./outputs/t2516

./replace_instrumented.exe '?' 'K<?B4$`6O1>J#&OM4K$2QDiT<ji'  < $ROOT/inputs/input/ruin.524 > ./outputs/t2517

./replace_instrumented.exe '?' 'KsxI474&Q(C}u4M|o2T`<`;S^`NUPxX'  < $ROOT/inputs/input/ruin.291 > ./outputs/t2518

./replace_instrumented.exe '?' 'L/kw\'  < $ROOT/inputs/input/ruin.404 > ./outputs/t2519

./replace_instrumented.exe '?' 'L;vc2#{V7TVUA[lGcZR)h\M7+(FnC`>q'  < $ROOT/inputs/input/ruin.1593 > ./outputs/t2520

./replace_instrumented.exe '?' 'Lvu77k}K'  < $ROOT/inputs/input/ruin.1239 > ./outputs/t2521

./replace_instrumented.exe '?' 'M%&;~-{;<(48m;Dv)aQS0bkh'\''eK'  < $ROOT/inputs/input/ruin.1613 > ./outputs/t2522

./replace_instrumented.exe '?' 'M'  < $ROOT/inputs/input/ruin.135 > ./outputs/t2523

./replace_instrumented.exe '?' 'M\M/(+Q(30LI2#Tq'  < $ROOT/inputs/input/ruin.1777 > ./outputs/t2524

./replace_instrumented.exe '?' 'N#D{(1Gn[8UCLC}OnP^},P|FWYtd99MB_Kco_$[Z-<i-RL'  < $ROOT/inputs/input/ruin.953 > ./outputs/t2525

./replace_instrumented.exe '?' 'N&5vC\L {wtz|wCl|^@'  < $ROOT/inputs/input/ruin.165 > ./outputs/t2526

./replace_instrumented.exe '?' 'N)[e.{p6mu6~p;u0r*3|}'  < $ROOT/inputs/input/ruin.1168 > ./outputs/t2527

./replace_instrumented.exe '?' 'NEW'  < $ROOT/inputs/temp-test/1384.inp.594.1 > ./outputs/t2528

./replace_instrumented.exe '?' 'NEW'  < $ROOT/inputs/temp-test/1385.inp.594.3 > ./outputs/t2529

./replace_instrumented.exe '?' 'NEW'  < $ROOT/inputs/temp-test/1386.inp.594.4 > ./outputs/t2530

./replace_instrumented.exe '?' 'NT*x]<L/3",r6SrEiVl>/'  < $ROOT/inputs/input/ruin.40 > ./outputs/t2531

./replace_instrumented.exe '?' 'O'  < $ROOT/inputs/input/ruin.1950 > ./outputs/t2532

./replace_instrumented.exe '?' 'P'  < $ROOT/inputs/input/ruin.1300 > ./outputs/t2533

./replace_instrumented.exe '?' 'P'  < $ROOT/inputs/input/ruin.63 > ./outputs/t2534

./replace_instrumented.exe '?' 'P'  < $ROOT/inputs/input/ruin.977 > ./outputs/t2535

./replace_instrumented.exe '?' 'Q'  < $ROOT/inputs/input/ruin.385 > ./outputs/t2536

./replace_instrumented.exe '?' 'QAbcG]<+#'  < $ROOT/inputs/input/ruin.1431 > ./outputs/t2537

./replace_instrumented.exe '?' 'QCGA\X(?Z#pI;PhS&YE|'  < $ROOT/inputs/input/ruin.1232 > ./outputs/t2538

./replace_instrumented.exe '?' 'R(J/X%MoiFZWrD3`LiS^'  < $ROOT/inputs/input/ruin.354 > ./outputs/t2539

./replace_instrumented.exe '?' 'S'  < $ROOT/inputs/input/ruin.887 > ./outputs/t2540

./replace_instrumented.exe '?' 'T'  < $ROOT/inputs/input/ruin.1866 > ./outputs/t2541

./replace_instrumented.exe '?' 'T'  < $ROOT/inputs/input/ruin.543 > ./outputs/t2542

./replace_instrumented.exe '?' 'TVr2G'  < $ROOT/inputs/input/ruin.381 > ./outputs/t2543

./replace_instrumented.exe '?' 'V'  < $ROOT/inputs/input/ruin.519 > ./outputs/t2544

./replace_instrumented.exe '?' 'W'  < $ROOT/inputs/input/ruin.5 > ./outputs/t2545

./replace_instrumented.exe '?' 'X'  < $ROOT/inputs/input/ruin.541 > ./outputs/t2546

./replace_instrumented.exe '?' 'XM:AR~,."oRZ=YEND@<A}O16:Prv[2k&'  < $ROOT/inputs/input/ruin.1144 > ./outputs/t2547

./replace_instrumented.exe '?' 'Z#:;1Z}X$]Lyh~'  < $ROOT/inputs/input/ruin.534 > ./outputs/t2548

./replace_instrumented.exe '?' 'Z'  < $ROOT/inputs/input/ruin.1278 > ./outputs/t2549

./replace_instrumented.exe '?' 'Z'  < $ROOT/inputs/input/ruin.1658 > ./outputs/t2550

./replace_instrumented.exe '?' '[!%Kk\zSLS\.sd"~7vJ0E0<FN7Qt@<1!@{TtBay}DndZ 7]An5h{EZ0Tk;h;T> $qR7oi3a.D8}y]'  < $ROOT/inputs/input/ruin.1647 > ./outputs/t2551

./replace_instrumented.exe '?' '['  < $ROOT/inputs/input/ruin.463 > ./outputs/t2552

./replace_instrumented.exe '?' '[fu'  < $ROOT/inputs/input/ruin.1366 > ./outputs/t2553

./replace_instrumented.exe '?' '\'  < $ROOT/inputs/input/ruin.1490 > ./outputs/t2554

./replace_instrumented.exe '?' '\'  < $ROOT/inputs/input/ruin.907 > ./outputs/t2555

./replace_instrumented.exe '?' '].&7+CP1"L0aV#jId`1nde#Cn==C6@v<"]'  < $ROOT/inputs/input/ruin.1284 > ./outputs/t2556

./replace_instrumented.exe '?' ']P@11+*4RS!'\''mW<:nB9.Oi%rf%ZIQkWmu'  < $ROOT/inputs/input/ruin.761 > ./outputs/t2557

./replace_instrumented.exe '?' ']rZLj'  < $ROOT/inputs/input/ruin.1566 > ./outputs/t2558

./replace_instrumented.exe '?' '^0aw^ijt96Qs<g\Ykb8w0,vv]v-#L'  < $ROOT/inputs/input/ruin.500 > ./outputs/t2559

./replace_instrumented.exe '?' '^ce]WKN5- s+C)y11|8o7z'  < $ROOT/inputs/input/ruin.204 > ./outputs/t2560

./replace_instrumented.exe '?' '_'  < $ROOT/inputs/input/ruin.1024 > ./outputs/t2561

./replace_instrumented.exe '?' '_'  < $ROOT/inputs/input/ruin.248 > ./outputs/t2562

./replace_instrumented.exe '?' '_Zm,B$H3+dOxCXpLjJB<}WOIix\+*'  < $ROOT/inputs/input/ruin.913 > ./outputs/t2563

./replace_instrumented.exe '?' '_^ [H<2pLeGVat'  < $ROOT/inputs/input/ruin.1289 > ./outputs/t2564

./replace_instrumented.exe '?' '_r-c9Hs(>!-fB8qY'  < $ROOT/inputs/input/ruin.1293 > ./outputs/t2565

./replace_instrumented.exe '?' '`'  < $ROOT/inputs/input/ruin.1288 > ./outputs/t2566

./replace_instrumented.exe '?' '`'  < $ROOT/inputs/input/ruin.1812 > ./outputs/t2567

./replace_instrumented.exe '?' '`OM,I.7$B>8KwR3#e1>SqfWB3_5]@4o'  < $ROOT/inputs/input/ruin.776 > ./outputs/t2568

./replace_instrumented.exe '?' 'a&'  < $ROOT/inputs/temp-test/823.inp.355.1 > ./outputs/t2569

./replace_instrumented.exe '?' 'a&'  < $ROOT/inputs/temp-test/824.inp.355.2 > ./outputs/t2570

./replace_instrumented.exe '?' 'a&'  < $ROOT/inputs/temp-test/825.inp.355.3 > ./outputs/t2571

./replace_instrumented.exe '?' 'a'  < $ROOT/inputs/input/ruin.1884 > ./outputs/t2572

./replace_instrumented.exe '?' 'a'  < $ROOT/inputs/input/ruin.1994 > ./outputs/t2573

./replace_instrumented.exe '?' 'a9e6'  < $ROOT/inputs/input/ruin.1861 > ./outputs/t2574

./replace_instrumented.exe '?' 'a@nb@tc'  < $ROOT/inputs/temp-test/385.inp.168.1 > ./outputs/t2575

./replace_instrumented.exe '?' 'a@nb@tc'  < $ROOT/inputs/temp-test/386.inp.168.3 > ./outputs/t2576

./replace_instrumented.exe '?' 'b'  < $ROOT/inputs/input/ruin.91 > ./outputs/t2577

./replace_instrumented.exe '?' 'b@t'  < $ROOT/inputs/temp-test/274.inp.123.1 > ./outputs/t2578

./replace_instrumented.exe '?' 'b@t'  < $ROOT/inputs/temp-test/275.inp.123.3 > ./outputs/t2579

./replace_instrumented.exe '?' 'cLZbxdY4&gv/6)zVmA7Uw_^3:l'  < $ROOT/inputs/input/ruin.1383 > ./outputs/t2580

./replace_instrumented.exe '?' 'cS*DPP`6W8y'  < $ROOT/inputs/input/ruin.1799 > ./outputs/t2581

./replace_instrumented.exe '?' 'ct1wu;.15`H=u?$2O^&hCvZ\'  < $ROOT/inputs/input/ruin.260 > ./outputs/t2582

./replace_instrumented.exe '?' 'd%/a-$ATcA3nUs!95iZeLi;y+G}h)hT=\9'  < $ROOT/inputs/input/ruin.1322 > ./outputs/t2583

./replace_instrumented.exe '?' 'd'  < $ROOT/inputs/input/ruin.833 > ./outputs/t2584

./replace_instrumented.exe '?' 'd6URU'  < $ROOT/inputs/input/ruin.480 > ./outputs/t2585

./replace_instrumented.exe '?' 'e'  < $ROOT/inputs/input/ruin.1817 > ./outputs/t2586

./replace_instrumented.exe '?' 'e'  < $ROOT/inputs/input/ruin.583 > ./outputs/t2587

./replace_instrumented.exe '?' 'ee@u{Iy+h&o"Z'  < $ROOT/inputs/input/ruin.1942 > ./outputs/t2588

./replace_instrumented.exe '?' 'f'  < $ROOT/inputs/input/ruin.1740 > ./outputs/t2589

./replace_instrumented.exe '?' 'fB'  < $ROOT/inputs/input/ruin.250 > ./outputs/t2590

./replace_instrumented.exe '?' 'g//MMd|LTvsuwT0p=!+1pK6/L{i^ja[u`.s--2#{3i)"1UtS|p~Nab;nu~M;r+C'\''$'  < $ROOT/inputs/input/ruin.1327 > ./outputs/t2591

./replace_instrumented.exe '?' 'g//MMd|LTvsuwT0p=!+1pK6/L{i^ja[u`.s--2#{3i)"1UtS|p~Nab;nu~M;r+C'\''$pK6/L{i^ja[0-9]*[a-p]K6/L{i^japK6/L{i^japK6/L{i^japK6/L{i^japK6/L{i^japK6/L{i^japK6/L[0-9]*[a-b]{i^ja'  < $ROOT/inputs/input/ruin.1327 > ./outputs/t2592

./replace_instrumented.exe '?' 'gZ<vfWgGbk.(3R1<u^p|)<Y!kD90 l'  < $ROOT/inputs/input/ruin.984 > ./outputs/t2593

./replace_instrumented.exe '?' 'gqPd|-L'  < $ROOT/inputs/input/ruin.581 > ./outputs/t2594

./replace_instrumented.exe '?' 'h'  < $ROOT/inputs/input/ruin.1629 > ./outputs/t2595

./replace_instrumented.exe '?' 'h,r7xS45pAkON:?;ON=1V3'  < $ROOT/inputs/input/ruin.654 > ./outputs/t2596

./replace_instrumented.exe '?' 'hFJAsc%Fy%fQcz'  < $ROOT/inputs/input/ruin.680 > ./outputs/t2597

./replace_instrumented.exe '?' 'i'  < $ROOT/inputs/input/ruin.1849 > ./outputs/t2598

./replace_instrumented.exe '?' 'i'  < $ROOT/inputs/input/ruin.1971 > ./outputs/t2599

./replace_instrumented.exe '?' 'i'  < $ROOT/inputs/input/ruin.961 > ./outputs/t2600

./replace_instrumented.exe '?' 'i1BOet56'  < $ROOT/inputs/input/ruin.1133 > ./outputs/t2601

./replace_instrumented.exe '?' 'iZVC>'  < $ROOT/inputs/input/ruin.1509 > ./outputs/t2602

./replace_instrumented.exe '?' 'j'  < $ROOT/inputs/input/ruin.711 > ./outputs/t2603

./replace_instrumented.exe '?' 'j[&q,X^+;N{V?Cs(!KE2XmLQ2n;x6'  < $ROOT/inputs/input/ruin.65 > ./outputs/t2604

./replace_instrumented.exe '?' 'jfG;doo?~`NQIn:H#b9M)wdL3[2EMTs37JH.s$"ct_o8 D.8_1_w'  < $ROOT/inputs/input/ruin.89 > ./outputs/t2605

./replace_instrumented.exe '?' 'kaSvYO>o!'\'':$'\''u~K4o/z,rY6#)BhoGsz=M.8,/'  < $ROOT/inputs/input/ruin.1128 > ./outputs/t2606

./replace_instrumented.exe '?' 'l!&'  < $ROOT/inputs/input/ruin.1897 > ./outputs/t2607

./replace_instrumented.exe '?' 'm$$CvL9Dqle@V'  < $ROOT/inputs/input/ruin.911 > ./outputs/t2608

./replace_instrumented.exe '?' 'm'  < $ROOT/inputs/input/ruin.625 > ./outputs/t2609

./replace_instrumented.exe '?' 'n@3l'  < $ROOT/inputs/input/ruin.386 > ./outputs/t2610

./replace_instrumented.exe '?' 'nFP*8oz+T]]SY'\''xlii [u^qu}PRh:+t4H@8pA;j}2CBL+ I%i>v9LV&SOia"Y'  < $ROOT/inputs/input/ruin.1980 > ./outputs/t2611

./replace_instrumented.exe '?' 'o/MQMfmP2]QS'  < $ROOT/inputs/input/ruin.1934 > ./outputs/t2612

./replace_instrumented.exe '?' 'p'  < $ROOT/inputs/input/ruin.140 > ./outputs/t2613

./replace_instrumented.exe '?' 'p'  < $ROOT/inputs/input/ruin.1805 > ./outputs/t2614

./replace_instrumented.exe '?' 'pvDPT~*,@txdKMQwIQtir+O|sN{.P'\''\=TrH15QQ8^]u"F,OcZ~GOn|XDA5jxdO!Y83'  < $ROOT/inputs/input/ruin.301 > ./outputs/t2615

./replace_instrumented.exe '?' 'r'  < $ROOT/inputs/input/ruin.319 > ./outputs/t2616

./replace_instrumented.exe '?' 'rZDfy0eU~Ie6=aT!R0Q[sra^>2/hN:'  < $ROOT/inputs/input/ruin.739 > ./outputs/t2617

./replace_instrumented.exe '?' 'sI0(^vBOJ,`h%VIM+k;cgE*KoPv-ioemER5bmc@K,~bKUI7"b8QG'  < $ROOT/inputs/input/ruin.1807 > ./outputs/t2618

./replace_instrumented.exe '?' 'sWf&v]I=(jlZm2xA__O~'  < $ROOT/inputs/input/ruin.355 > ./outputs/t2619

./replace_instrumented.exe '?' 'tv*#&:J!wgjLzvS${r p~[7[6\=,S[0m$kk'  < $ROOT/inputs/input/ruin.14 > ./outputs/t2620

./replace_instrumented.exe '?' 'u'  < $ROOT/inputs/input/ruin.1672 > ./outputs/t2621

./replace_instrumented.exe '?' 'uGaumQ2'\''P{3:r"B"#2]?Kx k&'  < $ROOT/inputs/input/ruin.819 > ./outputs/t2622

./replace_instrumented.exe '?' 'v'  < $ROOT/inputs/input/ruin.1362 > ./outputs/t2623

./replace_instrumented.exe '?' 'v}sNX;c8YQyksA'  < $ROOT/inputs/input/ruin.311 > ./outputs/t2624

./replace_instrumented.exe '?' 'wkbyQaEQ'  < $ROOT/inputs/input/ruin.1770 > ./outputs/t2625

./replace_instrumented.exe '?' 'xv/w'  < $ROOT/inputs/input/ruin.234 > ./outputs/t2626

./replace_instrumented.exe '?' 'y"?0u];'\''_xwJ.X|p#(5;):1DsdamaV'  < $ROOT/inputs/input/ruin.199 > ./outputs/t2627

./replace_instrumented.exe '?' 'y,l/Nu^x9o4<WBXS,6]j{R^EdlGsRtTVRa\OY+'  < $ROOT/inputs/input/ruin.1463 > ./outputs/t2628

./replace_instrumented.exe '?' 'yH{$>>[3/4E<+|`x:M>wzhBPey#L1'  < $ROOT/inputs/input/ruin.1958 > ./outputs/t2629

./replace_instrumented.exe '?' 'y[}5M!Ju"H&-Vu+rks'  < $ROOT/inputs/input/ruin.240 > ./outputs/t2630

./replace_instrumented.exe '?' 'zs'  < $ROOT/inputs/input/ruin.591 > ./outputs/t2631

./replace_instrumented.exe '?' '{Y|k{o'\''V/{R&sucpF{M|ZuJKnay&:E6]H=xd,zj'  < $ROOT/inputs/input/ruin.839 > ./outputs/t2632

./replace_instrumented.exe '?' '{yuSgfAgJ?'  < $ROOT/inputs/input/ruin.16 > ./outputs/t2633

./replace_instrumented.exe '?' '}'  < $ROOT/inputs/input/ruin.1692 > ./outputs/t2634

./replace_instrumented.exe '?' '}'  < $ROOT/inputs/input/ruin.26 > ./outputs/t2635

./replace_instrumented.exe '?' '})0'\''J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF'  < $ROOT/inputs/input/ruin.1616 > ./outputs/t2636

./replace_instrumented.exe '?' '}v]6Mz6_|{XHut)!tVgIrm<|P,ANu(q]B](~0W@z'  < $ROOT/inputs/input/ruin.1989 > ./outputs/t2637

./replace_instrumented.exe '?' '~%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$%A*[^0-9]*$'  < $ROOT/inputs/input/ruin.1339 > ./outputs/t2638

./replace_instrumented.exe '?' '~'  < $ROOT/inputs/input/ruin.1236 > ./outputs/t2639

./replace_instrumented.exe '?' '~'  < $ROOT/inputs/input/ruin.1339 > ./outputs/t2640

./replace_instrumented.exe '?' '~AG[TM12_x}fd`$WQ_vmxUl!4p,f,g[UF^.N7qG'  < $ROOT/inputs/input/ruin.897 > ./outputs/t2641

./replace_instrumented.exe '?'\''!!rY' '`LWwk[pKuya#yj Y%;9I4#0o]4wG$X^FP9;"Hr1Gzlciu+[#'  < $ROOT/inputs/input/ruin.1565 > ./outputs/t2642

./replace_instrumented.exe '?'\''"V)9' 'Gw:<Ace)+JC}83'\''|qfH4!.gc@OrMnEi9:ZRYM;9}aFF'  < $ROOT/inputs/input/ruin.1683 > ./outputs/t2643

./replace_instrumented.exe '?'\''' 'V<}${'  < $ROOT/inputs/input/ruin.780 > ./outputs/t2644

./replace_instrumented.exe '?'\''@@' 'v\`{+AlBygo>42G2jE|6;A=U7|>_+"H6*0nmx7nS/%c6>(E6>b&TP'  < $ROOT/inputs/input/ruin.1027 > ./outputs/t2645

./replace_instrumented.exe '?*$' '#((G)KKH'  < $ROOT/inputs/input/ruin.1245 > ./outputs/t2646

./replace_instrumented.exe '?*$' ''\''~'  < $ROOT/inputs/input/ruin.1252 > ./outputs/t2647

./replace_instrumented.exe '?*$' '2Ax#Mv_@DjcWz"~F]km'  < $ROOT/inputs/input/ruin.1241 > ./outputs/t2648

./replace_instrumented.exe '?*$' 'E'  < $ROOT/inputs/input/ruin.1113 > ./outputs/t2649

./replace_instrumented.exe '?*$' 'Lvu77k}K'  < $ROOT/inputs/input/ruin.1239 > ./outputs/t2650

./replace_instrumented.exe '?*$' 'i'  < $ROOT/inputs/input/ruin.1625 > ./outputs/t2651

./replace_instrumented.exe '?*$' '~'  < $ROOT/inputs/input/ruin.1236 > ./outputs/t2652

./replace_instrumented.exe '?*' '#'  < $ROOT/inputs/input/ruin.1622 > ./outputs/t2653

./replace_instrumented.exe '?*' '&'  < $ROOT/inputs/temp-test/577.inp.248.2 > ./outputs/t2654

./replace_instrumented.exe '?*' '&a@%'  < $ROOT/inputs/temp-test/196.inp.88.2 > ./outputs/t2655

./replace_instrumented.exe '?*' ',gAEa`/^PQWZZa^F'  < $ROOT/inputs/input/ruin.1612 > ./outputs/t2656

./replace_instrumented.exe '?*' '.'  < $ROOT/inputs/input/ruin.391 > ./outputs/t2657

./replace_instrumented.exe '?*' '9'  < $ROOT/inputs/input/ruin.109 > ./outputs/t2658

./replace_instrumented.exe '?*' 'M%&;~-{;<(48m;Dv)aQS0bkh'\''eK'  < $ROOT/inputs/input/ruin.1613 > ./outputs/t2659

./replace_instrumented.exe '?*' 'P54;@=_4xdN:$7^We'  < $ROOT/inputs/input/ruin.1620 > ./outputs/t2660

./replace_instrumented.exe '?*' 'vB|CqDQNo,Fg|RTv5;bkJFE.twyj39J13'\''TcKY1sb&G<g]|ZaPL`0=8`YdR,'  < $ROOT/inputs/input/ruin.1614 > ./outputs/t2661

./replace_instrumented.exe '?*' 'w'  < $ROOT/inputs/input/ruin.1610 > ./outputs/t2662

./replace_instrumented.exe '?*' 'zCF&lL=IT'  < $ROOT/inputs/input/ruin.287 > ./outputs/t2663

./replace_instrumented.exe '?*' '})0'\''J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF'  < $ROOT/inputs/input/ruin.1616 > ./outputs/t2664

./replace_instrumented.exe '?*@*' 'NEW'  < $ROOT/inputs/temp-test/521.inp.226.1 > ./outputs/t2665

./replace_instrumented.exe '?*@*' 'NEW'  < $ROOT/inputs/temp-test/522.inp.226.3 > ./outputs/t2666

./replace_instrumented.exe '?*[9-B]?%[9-B]*?-[9-B]' '&a@%'  < $ROOT/inputs/temp-test/9.inp.4.1 > ./outputs/t2667

./replace_instrumented.exe '?*[9-B]?[9-B]*?-[9-B]' '&a@%'  < $ROOT/inputs/temp-test/9.inp.4.1 > ./outputs/t2668

./replace_instrumented.exe '?*[>-A]' 'O'  < $ROOT/inputs/input/ruin.1623 > ./outputs/t2669

./replace_instrumented.exe '?*[A-G]' '`'  < $ROOT/inputs/input/ruin.998 > ./outputs/t2670

./replace_instrumented.exe '?*z-}0-9Z-a]^_`a]' 'U'  < $ROOT/inputs/input/ruin.1611 > ./outputs/t2671

./replace_instrumented.exe '?- ?[9-B]-*$' 'a&'  < $ROOT/inputs/temp-test/2320.inp.984.6 > ./outputs/t2672

./replace_instrumented.exe '?- ?[9-B]-*' 'a&'  < $ROOT/inputs/temp-test/2318.inp.984.1 > ./outputs/t2673

./replace_instrumented.exe '?- ?[9-B]-*' 'a&'  < $ROOT/inputs/temp-test/2319.inp.984.2 > ./outputs/t2674

./replace_instrumented.exe '?-$' '@%&a'  < $ROOT/inputs/temp-test/572.inp.246.6 > ./outputs/t2675

./replace_instrumented.exe '?-%' '&'  < $ROOT/inputs/temp-test/2349.inp.997.3 > ./outputs/t2676

./replace_instrumented.exe '?-' '&'  < $ROOT/inputs/temp-test/180.inp.81.1 > ./outputs/t2677

./replace_instrumented.exe '?-' '&'  < $ROOT/inputs/temp-test/181.inp.81.2 > ./outputs/t2678

./replace_instrumented.exe '?-' '&'  < $ROOT/inputs/temp-test/182.inp.81.3 > ./outputs/t2679

./replace_instrumented.exe '?-' '&'  < $ROOT/inputs/temp-test/2347.inp.997.1 > ./outputs/t2680

./replace_instrumented.exe '?-' '&'  < $ROOT/inputs/temp-test/2348.inp.997.2 > ./outputs/t2681

./replace_instrumented.exe '?-' '&'  < $ROOT/inputs/temp-test/2349.inp.997.3 > ./outputs/t2682

./replace_instrumented.exe '?-' '&a@%'  < $ROOT/inputs/temp-test/1104.inp.475.1 > ./outputs/t2683

./replace_instrumented.exe '?-' '&a@%'  < $ROOT/inputs/temp-test/1105.inp.475.3 > ./outputs/t2684

./replace_instrumented.exe '?-' ''  < $ROOT/inputs/temp-test/1117.inp.480.1 > ./outputs/t2685

./replace_instrumented.exe '?-' ''  < $ROOT/inputs/temp-test/1118.inp.480.2 > ./outputs/t2686

./replace_instrumented.exe '?-' ''  < $ROOT/inputs/temp-test/1791.inp.762.1 > ./outputs/t2687

./replace_instrumented.exe '?-' ''  < $ROOT/inputs/temp-test/1792.inp.762.2 > ./outputs/t2688

./replace_instrumented.exe '?-' ''  < $ROOT/inputs/temp-test/1793.inp.762.3 > ./outputs/t2689

./replace_instrumented.exe '?-' ''  < $ROOT/inputs/temp-test/1794.inp.762.4 > ./outputs/t2690

./replace_instrumented.exe '?-' '@%&a'  < $ROOT/inputs/temp-test/571.inp.246.1 > ./outputs/t2691

./replace_instrumented.exe '?-' '@%@&'  < $ROOT/inputs/temp-test/1200.inp.515.1 > ./outputs/t2692

./replace_instrumented.exe '?-' '@%@&'  < $ROOT/inputs/temp-test/1201.inp.515.2 > ./outputs/t2693

./replace_instrumented.exe '?-' '@n'  < $ROOT/inputs/temp-test/911.inp.393.1 > ./outputs/t2694

./replace_instrumented.exe '?-' '@n'  < $ROOT/inputs/temp-test/912.inp.393.2 > ./outputs/t2695

./replace_instrumented.exe '?-' '@n'  < $ROOT/inputs/temp-test/94.inp.42.1 > ./outputs/t2696

./replace_instrumented.exe '?-' '@t'  < $ROOT/inputs/temp-test/1016.inp.437.1 > ./outputs/t2697

./replace_instrumented.exe '?-' '@t'  < $ROOT/inputs/temp-test/1868.inp.793.1 > ./outputs/t2698

./replace_instrumented.exe '?-' '@t'  < $ROOT/inputs/temp-test/1869.inp.793.2 > ./outputs/t2699

./replace_instrumented.exe '?-' '@t'  < $ROOT/inputs/temp-test/1870.inp.793.3 > ./outputs/t2700

./replace_instrumented.exe '?-' 'NEW'  < $ROOT/inputs/temp-test/893.inp.384.1 > ./outputs/t2701

./replace_instrumented.exe '?-' 'NEW'  < $ROOT/inputs/temp-test/894.inp.384.3 > ./outputs/t2702

./replace_instrumented.exe '?-' 'NEW'  < $ROOT/inputs/temp-test/895.inp.384.4 > ./outputs/t2703

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/321.inp.143.1 > ./outputs/t2704

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/322.inp.143.3 > ./outputs/t2705

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/323.inp.143.4 > ./outputs/t2706

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/504.inp.220.1 > ./outputs/t2707

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/505.inp.220.2 > ./outputs/t2708

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/506.inp.220.3 > ./outputs/t2709

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/845.inp.363.1 > ./outputs/t2710

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/846.inp.363.2 > ./outputs/t2711

./replace_instrumented.exe '?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/847.inp.363.3 > ./outputs/t2712

./replace_instrumented.exe '?-*' '@%@&'  < $ROOT/inputs/temp-test/1691.inp.721.1 > ./outputs/t2713

./replace_instrumented.exe '?-*' '@%@&'  < $ROOT/inputs/temp-test/1692.inp.721.2 > ./outputs/t2714

./replace_instrumented.exe '?-**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2715

./replace_instrumented.exe '?-*?' 'NEW'  < $ROOT/inputs/temp-test/1701.inp.726.1 > ./outputs/t2716

./replace_instrumented.exe '?-*?' 'NEW'  < $ROOT/inputs/temp-test/1702.inp.726.2 > ./outputs/t2717

./replace_instrumented.exe '?-*?' 'NEW'  < $ROOT/inputs/temp-test/1703.inp.726.3 > ./outputs/t2718

./replace_instrumented.exe '?-*?' 'NEW'  < $ROOT/inputs/temp-test/1704.inp.726.4 > ./outputs/t2719

./replace_instrumented.exe '?--?-[^a-c]?@*?-[_-z]?-[^9-B]' ''  < $ROOT/inputs/temp-test/2292.inp.972.1 > ./outputs/t2720

./replace_instrumented.exe '?--?-[^a-c]?@*?-[_-z]?-[^9-B]' ''  < $ROOT/inputs/temp-test/2293.inp.972.2 > ./outputs/t2721

./replace_instrumented.exe '?--?-[^a-c]?@*?-[_-z]?-[^9-B]' ''  < $ROOT/inputs/temp-test/2294.inp.972.3 > ./outputs/t2722

./replace_instrumented.exe '?--@**[^0-9]-*[-z]@n*$' '&'  < $ROOT/inputs/temp-test/1026.inp.441.6 > ./outputs/t2723

./replace_instrumented.exe '?--@**[^0-9]-*[-z]@n*' '&'  < $ROOT/inputs/temp-test/1025.inp.441.1 > ./outputs/t2724

./replace_instrumented.exe '?--[-- ' '@%&a'  < $ROOT/inputs/temp-test/2192.inp.929.1 > ./outputs/t2725

./replace_instrumented.exe '?--[_-z][^a-c@n *' '&@n'  < $ROOT/inputs/temp-test/637.inp.275.1 > ./outputs/t2726

./replace_instrumented.exe '?--[_-z][^a-c@n *' '&@n'  < $ROOT/inputs/temp-test/638.inp.275.2 > ./outputs/t2727

./replace_instrumented.exe '?--[_-z][^a-c@n *' '@%&a'  < $ROOT/inputs/temp-test/637.inp.275.1 > ./outputs/t2728

./replace_instrumented.exe '?--[_-z][^a-c@n *' '@%&a'  < $ROOT/inputs/temp-test/638.inp.275.2 > ./outputs/t2729

./replace_instrumented.exe '?-?[9-B]-[@@][^a-c]- *--?^a-]@t-[_-z]' '@%&a'  < $ROOT/inputs/temp-test/2148.inp.910.1 > ./outputs/t2730

./replace_instrumented.exe '?-?[9-B]-[@@][^a-c]- *--?^a-]@t-[_-z]' '@%&a'  < $ROOT/inputs/temp-test/2149.inp.910.2 > ./outputs/t2731

./replace_instrumented.exe '?-?[9-B]-[@@][^a-c]- *--?^a-]@t-[_-z]' '@%&a'  < $ROOT/inputs/temp-test/2150.inp.910.3 > ./outputs/t2732

./replace_instrumented.exe '?-@*[a-c]@[*[^a-c[^a--b][a-c' '@n'  < $ROOT/inputs/temp-test/276.inp.124.1 > ./outputs/t2733

./replace_instrumented.exe '?-@*[a-c]@[*[^a-c[^a--b][a-c' '@n'  < $ROOT/inputs/temp-test/277.inp.124.2 > ./outputs/t2734

./replace_instrumented.exe '?-[-z]-?-' '&'  < $ROOT/inputs/temp-test/485.inp.212.1 > ./outputs/t2735

./replace_instrumented.exe '?-[-z]-?-' '&'  < $ROOT/inputs/temp-test/486.inp.212.3 > ./outputs/t2736

./replace_instrumented.exe '?-[-z]-?-' '&'  < $ROOT/inputs/temp-test/487.inp.212.4 > ./outputs/t2737

./replace_instrumented.exe '?-[0-9][^0-9]?' 'a@n'  < $ROOT/inputs/temp-test/1235.inp.530.1 > ./outputs/t2738

./replace_instrumented.exe '?-[0-9][^0-9]?' 'a@n'  < $ROOT/inputs/temp-test/1236.inp.530.2 > ./outputs/t2739

./replace_instrumented.exe '?-[9-B]@[' 'a&'  < $ROOT/inputs/temp-test/1299.inp.558.1 > ./outputs/t2740

./replace_instrumented.exe '?-[9-B]@[' 'a&'  < $ROOT/inputs/temp-test/1300.inp.558.3 > ./outputs/t2741

./replace_instrumented.exe '?-[^-z][0-9]' '&a@%'  < $ROOT/inputs/temp-test/224.inp.100.1 > ./outputs/t2742

./replace_instrumented.exe '?-[^-z][0-9]*$' '&a@%'  < $ROOT/inputs/temp-test/224.inp.100.1 > ./outputs/t2743

./replace_instrumented.exe '?-[^-z][0-9]*' '&a@%'  < $ROOT/inputs/temp-test/224.inp.100.1 > ./outputs/t2744

./replace_instrumented.exe '?-[^-z][][0-9]' '&a@%'  < $ROOT/inputs/temp-test/224.inp.100.1 > ./outputs/t2745

./replace_instrumented.exe '?-[^-z][^][0-9]' '&a@%'  < $ROOT/inputs/temp-test/224.inp.100.1 > ./outputs/t2746

./replace_instrumented.exe '?-[^0-9]??--?[9-B]' '@%@&'  < $ROOT/inputs/temp-test/1769.inp.753.1 > ./outputs/t2747

./replace_instrumented.exe '?-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^a-?' '@%&a'  < $ROOT/inputs/temp-test/142.inp.66.1 > ./outputs/t2748

./replace_instrumented.exe '?-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^a-?' '@%&a'  < $ROOT/inputs/temp-test/143.inp.66.2 > ./outputs/t2749

./replace_instrumented.exe '?-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^a-?' '@%&a'  < $ROOT/inputs/temp-test/144.inp.66.3 > ./outputs/t2750

./replace_instrumented.exe '?-[a-][^9-B]?@**[^0-9][9-B][^9-B]' '@%&a'  < $ROOT/inputs/temp-test/998.inp.430.1 > ./outputs/t2751

./replace_instrumented.exe '?-[a-][^9-B]?@**[^0-9][9-B][^9-B]' '@%&a'  < $ROOT/inputs/temp-test/999.inp.430.2 > ./outputs/t2752

./replace_instrumented.exe '?-]-?[^0-9]A' 'NEW'  < $ROOT/inputs/temp-test/458.inp.201.1 > ./outputs/t2753

./replace_instrumented.exe '?-]-?[^0-9]A' 'NEW'  < $ROOT/inputs/temp-test/459.inp.201.3 > ./outputs/t2754

./replace_instrumented.exe '?-^a-c][^-z]a-c]?[a-' '&'  < $ROOT/inputs/temp-test/628.inp.271.1 > ./outputs/t2755

./replace_instrumented.exe '?5' 'Q;G'  < $ROOT/inputs/input/ruin.1385 > ./outputs/t2756

./replace_instrumented.exe '?9][^0-9][@t][^@][9-B]-[0-9][^0-9][@t0-9]@@]@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t[9-B]-[0-@][9-B]-[0-9][^0-9][@t9][^0-9@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t]*[@t@][9-B]-*[0-9][^0-9][@' '"\]({uYH3x5zs{.$s)G2Pzxji.o]- _Pzt'\''~6m#[}UH+'  < $ROOT/inputs/input/ruin.318 > ./outputs/t2757

./replace_instrumented.exe '?? *' 'NEW'  < $ROOT/inputs/temp-test/1528.inp.655.1 > ./outputs/t2758

./replace_instrumented.exe '?? *' 'NEW'  < $ROOT/inputs/temp-test/1529.inp.655.2 > ./outputs/t2759

./replace_instrumented.exe '?? *' 'NEW'  < $ROOT/inputs/temp-test/1530.inp.655.3 > ./outputs/t2760

./replace_instrumented.exe '??&' '9xoE\p_Un[?@!<f<10'\''NLF]{HC<5S)0ft3+1A]yP=~y-v/R.'\''64h`~~R4d(.nK`}fRB82&'  < $ROOT/inputs/input/ruin.1411 > ./outputs/t2761

./replace_instrumented.exe '??' '&'  < $ROOT/inputs/temp-test/1461.inp.626.1 > ./outputs/t2762

./replace_instrumented.exe '??' '&'  < $ROOT/inputs/temp-test/1462.inp.626.2 > ./outputs/t2763

./replace_instrumented.exe '??' '0LcGrfGr r,X@m,;,+r/AlJ>Uv)\ |Cr_fk[JEoA=}sUma`8rt]'  < $ROOT/inputs/input/ruin.1130 > ./outputs/t2764

./replace_instrumented.exe '??' 'kU.apBPAkew_"lFw!K;?J|IVb@XM3doSquoTX1J=[a&cJ'  < $ROOT/inputs/input/ruin.1607 > ./outputs/t2765

./replace_instrumented.exe '??'\''@@*' '5'  < $ROOT/inputs/input/ruin.935 > ./outputs/t2766

./replace_instrumented.exe '??*' 'kU.apBPAkew_"lFw!K;?J|IVb@XM3doSquoTX1J=[a&cJ'  < $ROOT/inputs/input/ruin.1607 > ./outputs/t2767

./replace_instrumented.exe '??-?[^@n][a-]-@*[^a--b][0-9]-' '@%&a'  < $ROOT/inputs/temp-test/2248.inp.953.1 > ./outputs/t2768

./replace_instrumented.exe '??[@n]-?[9-B]-^-]??[9-B]-*[^0-9]-' '@n'  < $ROOT/inputs/temp-test/1345.inp.578.1 > ./outputs/t2769

./replace_instrumented.exe '??[@n]-?[9-B]-^-]??[9-B]-*[^0-9]-' '@n'  < $ROOT/inputs/temp-test/1346.inp.578.2 > ./outputs/t2770

./replace_instrumented.exe '??^[^9-B]@*?@**' '@n'  < $ROOT/inputs/temp-test/249.inp.111.1 > ./outputs/t2771

./replace_instrumented.exe '??^[^9-B]@*?@**' '@n'  < $ROOT/inputs/temp-test/250.inp.111.2 > ./outputs/t2772

./replace_instrumented.exe '?@*'   < $ROOT/inputs/temp-test/521.inp.226.1 > ./outputs/t2773

./replace_instrumented.exe '?@*'   < $ROOT/inputs/temp-test/532.inp.231.1 > ./outputs/t2774

./replace_instrumented.exe '?@*' '@%&a'  < $ROOT/inputs/temp-test/532.inp.231.1 > ./outputs/t2775

./replace_instrumented.exe '?@*' '@%&a'  < $ROOT/inputs/temp-test/533.inp.231.2 > ./outputs/t2776

./replace_instrumented.exe '?@*' 'NEW'  < $ROOT/inputs/temp-test/521.inp.226.1 > ./outputs/t2777

./replace_instrumented.exe '?@*' 'NEW'  < $ROOT/inputs/temp-test/522.inp.226.3 > ./outputs/t2778

./replace_instrumented.exe '?@*' 'b@t'  < $ROOT/inputs/temp-test/932.inp.402.1 > ./outputs/t2779

./replace_instrumented.exe '?@*' 'b@t'  < $ROOT/inputs/temp-test/933.inp.402.2 > ./outputs/t2780

./replace_instrumented.exe '?@*' 'b@t'  < $ROOT/inputs/temp-test/934.inp.402.3 > ./outputs/t2781

./replace_instrumented.exe '?@**' ''  < $ROOT/inputs/temp-test/1465.inp.628.1 > ./outputs/t2782

./replace_instrumented.exe '?@**' ''  < $ROOT/inputs/temp-test/1466.inp.628.4 > ./outputs/t2783

./replace_instrumented.exe '?@**' 'a@nb@tc'  < $ROOT/inputs/temp-test/2301.inp.977.1 > ./outputs/t2784

./replace_instrumented.exe '?@**@[*-[9-B]-' '&'  < $ROOT/inputs/temp-test/1984.inp.843.1 > ./outputs/t2785

./replace_instrumented.exe '?@**@[*-[9-B]-' '&'  < $ROOT/inputs/temp-test/1985.inp.843.2 > ./outputs/t2786

./replace_instrumented.exe '?@*?[-?-[^9-B]A*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1609.inp.684.1 > ./outputs/t2787

./replace_instrumented.exe '?@*[^0-9]^*' '&'  < $ROOT/inputs/temp-test/773.inp.332.1 > ./outputs/t2788

./replace_instrumented.exe '?@*[a--b]^*-[^--$' 'NEW'  < $ROOT/inputs/temp-test/189.inp.85.8 > ./outputs/t2789

./replace_instrumented.exe '?@*[a--b]^*-[^--' 'NEW'  < $ROOT/inputs/temp-test/187.inp.85.1 > ./outputs/t2790

./replace_instrumented.exe '?@*[a--b]^*-[^--' 'NEW'  < $ROOT/inputs/temp-test/188.inp.85.2 > ./outputs/t2791

./replace_instrumented.exe '?@=' 'f'  < $ROOT/inputs/input/ruin.31 > ./outputs/t2792

./replace_instrumented.exe '?@@$' '&a@%'  < $ROOT/inputs/temp-test/2231.inp.945.8 > ./outputs/t2793

./replace_instrumented.exe '?@@' '&a@%'  < $ROOT/inputs/temp-test/2228.inp.945.1 > ./outputs/t2794

./replace_instrumented.exe '?@@' '&a@%'  < $ROOT/inputs/temp-test/2229.inp.945.3 > ./outputs/t2795

./replace_instrumented.exe '?@@' '8&!J.D o'  < $ROOT/inputs/input/ruin.1290 > ./outputs/t2796

./replace_instrumented.exe '?@@' 'G'  < $ROOT/inputs/input/ruin.1659 > ./outputs/t2797

./replace_instrumented.exe '?@@' '[0fwc0yF</B^'  < $ROOT/inputs/input/ruin.1982 > ./outputs/t2798

./replace_instrumented.exe '?@@' 'f>wlV.*t_>BC?n6sqXRSE}a/ttH,'  < $ROOT/inputs/input/ruin.1602 > ./outputs/t2799

./replace_instrumented.exe '?@@' 'ot'\''N[U7FH f#8W$ekHhjvkc2}L>mY3u\f&B4*o.,t=ohIK`!{b9%+q*C\H~r!I:!RgLH 88'  < $ROOT/inputs/input/ruin.1106 > ./outputs/t2800

./replace_instrumented.exe '?@@' 'zRixjQ`>-1lWM|#=R'  < $ROOT/inputs/input/ruin.58 > ./outputs/t2801

./replace_instrumented.exe '?@@' '|Mi+'\''s OXxRu~W2bMVQrfx+GT$4>}5J5XNph:`xe! zY'  < $ROOT/inputs/input/ruin.275 > ./outputs/t2802

./replace_instrumented.exe '?@@*' '&a@%'  < $ROOT/inputs/temp-test/1662.inp.709.1 > ./outputs/t2803

./replace_instrumented.exe '?@@*' '&a@%'  < $ROOT/inputs/temp-test/1663.inp.709.3 > ./outputs/t2804

./replace_instrumented.exe '?@@?' 'E'  < $ROOT/inputs/input/ruin.827 > ./outputs/t2805

./replace_instrumented.exe '?@@?*' 'f>wlV.*t_>BC?n6sqXRSE}a/ttH,'  < $ROOT/inputs/input/ruin.1602 > ./outputs/t2806

./replace_instrumented.exe '?@@Tb[^A-G]' '`'  < $ROOT/inputs/input/ruin.528 > ./outputs/t2807

./replace_instrumented.exe '?@@Zg' 'oq0+3}K@*# t,Gf(;%tz>|LA!y:,~Of0'  < $ROOT/inputs/input/ruin.857 > ./outputs/t2808

./replace_instrumented.exe '?@@[^9-B]@**-@*[^a-@t[^0-9]-^?' 'NEW'  < $ROOT/inputs/temp-test/1635.inp.696.1 > ./outputs/t2809

./replace_instrumented.exe '?@[' '@%&a'  < $ROOT/inputs/temp-test/240.inp.107.1 > ./outputs/t2810

./replace_instrumented.exe '?@[' '@%&a'  < $ROOT/inputs/temp-test/241.inp.107.3 > ./outputs/t2811

./replace_instrumented.exe '?@[' 'a@n'  < $ROOT/inputs/temp-test/424.inp.187.1 > ./outputs/t2812

./replace_instrumented.exe '?@[' 'a@n'  < $ROOT/inputs/temp-test/425.inp.187.2 > ./outputs/t2813

./replace_instrumented.exe '?@[' 'a@n'  < $ROOT/inputs/temp-test/426.inp.187.3 > ./outputs/t2814

./replace_instrumented.exe '?@[*' '&'  < $ROOT/inputs/temp-test/104.inp.47.1 > ./outputs/t2815

./replace_instrumented.exe '?@[*' '&'  < $ROOT/inputs/temp-test/105.inp.47.3 > ./outputs/t2816

./replace_instrumented.exe '?@[*' ''  < $ROOT/inputs/temp-test/1966.inp.835.1 > ./outputs/t2817

./replace_instrumented.exe '?@[*' 'a&'  < $ROOT/inputs/temp-test/538.inp.233.1 > ./outputs/t2818

./replace_instrumented.exe '?@[*' 'a&'  < $ROOT/inputs/temp-test/539.inp.233.3 > ./outputs/t2819

./replace_instrumented.exe '?@[*?-]$' '@%&a'  < $ROOT/inputs/temp-test/353.inp.154.9 > ./outputs/t2820

./replace_instrumented.exe '?@[*?-]$' '@%&a@'  < $ROOT/inputs/temp-test/353.inp.154.9 > ./outputs/t2821

./replace_instrumented.exe '?@[*?-]' '@%&a'  < $ROOT/inputs/temp-test/351.inp.154.1 > ./outputs/t2822

./replace_instrumented.exe '?@[*?-]' '@%&a'  < $ROOT/inputs/temp-test/352.inp.154.2 > ./outputs/t2823

./replace_instrumented.exe '?@[*?-]' '@%&a@'  < $ROOT/inputs/temp-test/351.inp.154.1 > ./outputs/t2824

./replace_instrumented.exe '?@[*?-]@' '@%&a'  < $ROOT/inputs/temp-test/352.inp.154.2 > ./outputs/t2825

./replace_instrumented.exe '?@[*?@[*@*[^-' '@%&a'  < $ROOT/inputs/temp-test/1351.inp.580.1 > ./outputs/t2826

./replace_instrumented.exe '?@[*?@[*@*[^-' '@%&a'  < $ROOT/inputs/temp-test/1352.inp.580.2 > ./outputs/t2827

./replace_instrumented.exe '?@n' '|M&i+'\''s OXxRu~W2bMVQrfx+GT$4>}5J5XNph:`xe! zY'  < $ROOT/inputs/input/ruin.275 > ./outputs/t2828

./replace_instrumented.exe '?@n-?--$' ''  < $ROOT/inputs/temp-test/33.inp.14.8 > ./outputs/t2829

./replace_instrumented.exe '?@n-?--$' ''  < $ROOT/inputs/temp-test/34.inp.14.9 > ./outputs/t2830

./replace_instrumented.exe '?@n-?--' ''  < $ROOT/inputs/temp-test/32.inp.14.1 > ./outputs/t2831

./replace_instrumented.exe '?@t*$' 'b@t'  < $ROOT/inputs/temp-test/1006.inp.432.6 > ./outputs/t2832

./replace_instrumented.exe '?@t*' 'b@t'  < $ROOT/inputs/temp-test/1003.inp.432.1 > ./outputs/t2833

./replace_instrumented.exe '?@t*' 'b@t'  < $ROOT/inputs/temp-test/1004.inp.432.2 > ./outputs/t2834

./replace_instrumented.exe '?@t*' 'b@t'  < $ROOT/inputs/temp-test/1005.inp.432.3 > ./outputs/t2835

./replace_instrumented.exe '?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*?@t*' 'b@t'  < $ROOT/inputs/temp-test/1003.inp.432.1 > ./outputs/t2836

./replace_instrumented.exe '?@t[^0-9]?[a-c]?$' '@n'  < $ROOT/inputs/temp-test/1056.inp.454.9 > ./outputs/t2837

./replace_instrumented.exe '?@t[^0-9]?[a-c]?' '@n'  < $ROOT/inputs/temp-test/1054.inp.454.1 > ./outputs/t2838

./replace_instrumented.exe '?@t[^0-9]?[a-c]?' '@n'  < $ROOT/inputs/temp-test/1055.inp.454.2 > ./outputs/t2839

./replace_instrumented.exe '?A' 'NEW'  < $ROOT/inputs/temp-test/1546.inp.662.1 > ./outputs/t2840

./replace_instrumented.exe '?A' 'NEW'  < $ROOT/inputs/temp-test/1547.inp.662.2 > ./outputs/t2841

./replace_instrumented.exe '?A' 'NEW'  < $ROOT/inputs/temp-test/1548.inp.662.3 > ./outputs/t2842

./replace_instrumented.exe '?A*' '&'  < $ROOT/inputs/temp-test/1687.inp.719.1 > ./outputs/t2843

./replace_instrumented.exe '?A*' '&'  < $ROOT/inputs/temp-test/1688.inp.719.2 > ./outputs/t2844

./replace_instrumented.exe '?A*?[^a-c?$' '&'  < $ROOT/inputs/temp-test/335.inp.147.9 > ./outputs/t2845

./replace_instrumented.exe '?A*?[^a-c?' '&'  < $ROOT/inputs/temp-test/333.inp.147.1 > ./outputs/t2846

./replace_instrumented.exe '?A*?[^a-c?' '&'  < $ROOT/inputs/temp-test/334.inp.147.3 > ./outputs/t2847

./replace_instrumented.exe '?Ao?' '/'  < $ROOT/inputs/input/ruin.1208 > ./outputs/t2848

./replace_instrumented.exe '?S' 'N[E*MfGK'  < $ROOT/inputs/input/ruin.1349 > ./outputs/t2849

./replace_instrumented.exe '?SjGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~ljGU}XIi?]qLF"YtOv~~l[0-9]* *[a--b][^a-c][^a-' 'N[E*MfGK'  < $ROOT/inputs/input/ruin.1349 > ./outputs/t2850

./replace_instrumented.exe '?U' 'k6'  < $ROOT/inputs/input/ruin.618 > ./outputs/t2851

./replace_instrumented.exe '?Y' 't'  < $ROOT/inputs/input/ruin.1033 > ./outputs/t2852

./replace_instrumented.exe '?Y' 't2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G'  < $ROOT/inputs/input/ruin.1033 > ./outputs/t2853

./replace_instrumented.exe '?[-' 'a&'  < $ROOT/inputs/temp-test/783.inp.337.1 > ./outputs/t2854

./replace_instrumented.exe '?[--?' '@%&a'  < $ROOT/inputs/temp-test/715.inp.309.1 > ./outputs/t2855

./replace_instrumented.exe '?[--?' '@%&a'  < $ROOT/inputs/temp-test/716.inp.309.2 > ./outputs/t2856

./replace_instrumented.exe '?[--?' '@%&a'  < $ROOT/inputs/temp-test/717.inp.309.3 > ./outputs/t2857

./replace_instrumented.exe '?[-z]?' ''  < $ROOT/inputs/temp-test/813.inp.350.1 > ./outputs/t2858

./replace_instrumented.exe '?[-z]?' ''  < $ROOT/inputs/temp-test/814.inp.350.2 > ./outputs/t2859

./replace_instrumented.exe '?[-z]?-@*-[0-9]--' '@%@&'  < $ROOT/inputs/temp-test/2173.inp.919.1 > ./outputs/t2860

./replace_instrumented.exe '?[0-9] *[^9-B]@*[^a-c]--[^0-9]' 'b@t'  < $ROOT/inputs/temp-test/828.inp.357.1 > ./outputs/t2861

./replace_instrumented.exe '?[0-9] *[^9-B]@*[^a-c]--[^0-9]' 'b@t'  < $ROOT/inputs/temp-test/829.inp.357.2 > ./outputs/t2862

./replace_instrumented.exe '?[0-9]' '&a@%'  < $ROOT/inputs/temp-test/2021.inp.858.1 > ./outputs/t2863

./replace_instrumented.exe '?[0-9]' '&a@%'  < $ROOT/inputs/temp-test/2022.inp.858.2 > ./outputs/t2864

./replace_instrumented.exe '?[0-9]' '&a@%'  < $ROOT/inputs/temp-test/2023.inp.858.3 > ./outputs/t2865

./replace_instrumented.exe '?[0-9]' '@%&a'  < $ROOT/inputs/temp-test/287.inp.129.1 > ./outputs/t2866

./replace_instrumented.exe '?[0-9]' 'NEW'  < $ROOT/inputs/temp-test/342.inp.150.1 > ./outputs/t2867

./replace_instrumented.exe '?[0-9]' 'NEW'  < $ROOT/inputs/temp-test/343.inp.150.3 > ./outputs/t2868

./replace_instrumented.exe '?[0-9]' 'NEW@'  < $ROOT/inputs/temp-test/343.inp.150.3 > ./outputs/t2869

./replace_instrumented.exe '?[0-9]--*[9-B][a-c[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/1812.inp.770.1 > ./outputs/t2870

./replace_instrumented.exe '?[0-9]--*[9-B][a-c[^9-B]' '@%@&'  < $ROOT/inputs/temp-test/1813.inp.770.2 > ./outputs/t2871

./replace_instrumented.exe '?[0-9]-[^a-?[a-]' '@n'  < $ROOT/inputs/temp-test/1302.inp.560.1 > ./outputs/t2872

./replace_instrumented.exe '?[0-9]-[^a-?[a-]' '@n'  < $ROOT/inputs/temp-test/1303.inp.560.2 > ./outputs/t2873

./replace_instrumented.exe '?[0-9]@' 'NEW'  < $ROOT/inputs/temp-test/342.inp.150.1 > ./outputs/t2874

./replace_instrumented.exe '?[0-9]@t**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2875

./replace_instrumented.exe '?[0-9][9-B]-' 'a&'  < $ROOT/inputs/temp-test/1972.inp.838.1 > ./outputs/t2876

./replace_instrumented.exe '?[0-9][9-B]-' 'a&'  < $ROOT/inputs/temp-test/1973.inp.838.2 > ./outputs/t2877

./replace_instrumented.exe '?[0-9][^a-c]' '@t'  < $ROOT/inputs/temp-test/1983.inp.842.1 > ./outputs/t2878

./replace_instrumented.exe '?[0-9][a--][^9-B][0-9] *??$' '@t'  < $ROOT/inputs/temp-test/1292.inp.554.6 > ./outputs/t2879

./replace_instrumented.exe '?[0-9][a--][^9-B][0-9] *??' '@t'  < $ROOT/inputs/temp-test/1290.inp.554.1 > ./outputs/t2880

./replace_instrumented.exe '?[0-9][a--][^9-B][0-9] *??' '@t'  < $ROOT/inputs/temp-test/1291.inp.554.3 > ./outputs/t2881

./replace_instrumented.exe '?[0-9]e' op  < $ROOT/inputs/moni/f7.inp > ./outputs/t2882

./replace_instrumented.exe '?[0-9]e' op  < $ROOT/inputs/moni/f8.inp > ./outputs/t2883

./replace_instrumented.exe '?[9-B] ' 'a&'  < $ROOT/inputs/temp-test/1959.inp.831.1 > ./outputs/t2884

./replace_instrumented.exe '?[9-B]' '@%&a'  < $ROOT/inputs/temp-test/1256.inp.539.1 > ./outputs/t2885

./replace_instrumented.exe '?[9-B]' '@%@&'  < $ROOT/inputs/temp-test/1693.inp.722.1 > ./outputs/t2886

./replace_instrumented.exe '?[9-B]' '@n'  < $ROOT/inputs/temp-test/1999.inp.849.1 > ./outputs/t2887

./replace_instrumented.exe '?[9-B]' 'a&'  < $ROOT/inputs/temp-test/271.inp.121.1 > ./outputs/t2888

./replace_instrumented.exe '?[9-B]' 'b@t'  < $ROOT/inputs/temp-test/2290.inp.970.1 > ./outputs/t2889

./replace_instrumented.exe '?[9-B][^a-c]$' '@t'  < $ROOT/inputs/temp-test/940.inp.403.6 > ./outputs/t2890

./replace_instrumented.exe '?[9-B][^a-c]' '@t'  < $ROOT/inputs/temp-test/936.inp.403.1 > ./outputs/t2891

./replace_instrumented.exe '?[9-B][^a-c]' '@t'  < $ROOT/inputs/temp-test/937.inp.403.2 > ./outputs/t2892

./replace_instrumented.exe '?[9-B][^a-c]' '@t'  < $ROOT/inputs/temp-test/938.inp.403.3 > ./outputs/t2893

./replace_instrumented.exe '?[9-B][a-c]?[9-B][^9-B]-^*?-' '@n'  < $ROOT/inputs/temp-test/1507.inp.646.1 > ./outputs/t2894

./replace_instrumented.exe '?[9-B][a-c]?[9-B][^9-B]-^*?-' '@n'  < $ROOT/inputs/temp-test/1508.inp.646.3 > ./outputs/t2895

./replace_instrumented.exe '?[9-B]^a-c]-[a-c]-[^0-9]- *?-^a-]$' 'NEW'  < $ROOT/inputs/temp-test/1020.inp.438.6 > ./outputs/t2896

./replace_instrumented.exe '?[9-B]^a-c]-[a-c]-[^0-9]- *?-^a-]' 'NEW'  < $ROOT/inputs/temp-test/1017.inp.438.1 > ./outputs/t2897

./replace_instrumented.exe '?[9-B]^a-c]-[a-c]-[^0-9]- *?-^a-]' 'NEW'  < $ROOT/inputs/temp-test/1018.inp.438.2 > ./outputs/t2898

./replace_instrumented.exe '?[@@][^0-9][a-c]?-[^0-9]- [^9-B]' 'NEW'  < $ROOT/inputs/temp-test/1128.inp.485.1 > ./outputs/t2899

./replace_instrumented.exe '?[@n]' 'b@t'  < $ROOT/inputs/temp-test/1661.inp.708.1 > ./outputs/t2900

./replace_instrumented.exe '?[@t]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2901

./replace_instrumented.exe '?[] ' 'a@nb@tc'  < $ROOT/inputs/temp-test/217.inp.97.1 > ./outputs/t2902

./replace_instrumented.exe '?[]@*' '@%&a'  < $ROOT/inputs/temp-test/532.inp.231.1 > ./outputs/t2903

./replace_instrumented.exe '?[][^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t2904

./replace_instrumented.exe '?[][^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t2905

./replace_instrumented.exe '?[^-$' '@t'  < $ROOT/inputs/temp-test/1771.inp.754.9 > ./outputs/t2906

./replace_instrumented.exe '?[^-' '@t'  < $ROOT/inputs/temp-test/1770.inp.754.1 > ./outputs/t2907

./replace_instrumented.exe '?[^--z]' ''  < $ROOT/inputs/temp-test/2157.inp.913.1 > ./outputs/t2908

./replace_instrumented.exe '?[^--z]*$' '@t'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t2909

./replace_instrumented.exe '?[^--z]*' '@t'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t2910

./replace_instrumented.exe '?[^--z]c[^9-B]*$' '@t'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t2911

./replace_instrumented.exe '?[^--z]c[^9-B]*' '@t'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t2912

./replace_instrumented.exe '?[^--z]c[^9-B][^9-B]c*?[9-B]c-'   < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t2913

./replace_instrumented.exe '?[^--z]c[^9-B][^9-B]c*?[9-B]c-'   < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t2914

./replace_instrumented.exe '?[^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t2915

./replace_instrumented.exe '?[^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t2916

./replace_instrumented.exe '?[^--z]c[^9-B][^9-B]c?*' '@t'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t2917

./replace_instrumented.exe '?[^--z]c[^9-B][^9-B]c?*' '@t'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t2918

./replace_instrumented.exe '?[^--z]c[^9-B][^9-B]c?**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t2919

./replace_instrumented.exe '?[^-z][^--z]?-@[*' '&'  < $ROOT/inputs/temp-test/133.inp.62.1 > ./outputs/t2920

./replace_instrumented.exe '?[^0-9>-A]' ')Ifp.i9B%j1,0T.zHwp'  < $ROOT/inputs/input/ruin.1007 > ./outputs/t2921

./replace_instrumented.exe '?[^0-9]' ''  < $ROOT/inputs/temp-test/2208.inp.935.1 > ./outputs/t2922

./replace_instrumented.exe '?[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/1622.inp.690.1 > ./outputs/t2923

./replace_instrumented.exe '?[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/1623.inp.690.3 > ./outputs/t2924

./replace_instrumented.exe '?[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/1624.inp.690.4 > ./outputs/t2925

./replace_instrumented.exe '?[^0-9]' 'J'  < $ROOT/inputs/input/ruin.1332 > ./outputs/t2926

./replace_instrumented.exe '?[^0-9]' 'J?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe?Stj%,|9I{FxV*qi!{_(dn*K9`$wo[0-9]NwuJe'  < $ROOT/inputs/input/ruin.1332 > ./outputs/t2927

./replace_instrumented.exe '?[^0-9]' 'b@t'  < $ROOT/inputs/temp-test/2276.inp.965.1 > ./outputs/t2928

./replace_instrumented.exe '?[^0-9]' 'b@t'  < $ROOT/inputs/temp-test/2277.inp.965.2 > ./outputs/t2929

./replace_instrumented.exe '?[^0-9]' 'b@t'  < $ROOT/inputs/temp-test/2278.inp.965.3 > ./outputs/t2930

./replace_instrumented.exe '?[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/597.inp.257.1 > ./outputs/t2931

./replace_instrumented.exe '?[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/598.inp.257.2 > ./outputs/t2932

./replace_instrumented.exe '?[^0-9]-*' 'a@nb@tc'  < $ROOT/inputs/temp-test/806.inp.346.1 > ./outputs/t2933

./replace_instrumented.exe '?[^0-9]?^-]-[^a-c]$' 'NEW'  < $ROOT/inputs/temp-test/586.inp.251.9 > ./outputs/t2934

./replace_instrumented.exe '?[^0-9]?^-]-[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/583.inp.251.1 > ./outputs/t2935

./replace_instrumented.exe '?[^0-9]?^-]-[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/584.inp.251.3 > ./outputs/t2936

./replace_instrumented.exe '?[^0-9]?^-]-[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/585.inp.251.4 > ./outputs/t2937

./replace_instrumented.exe '?[^9-B]$' 'b@t'  < $ROOT/inputs/temp-test/173.inp.77.6 > ./outputs/t2938

./replace_instrumented.exe '?[^9-B]%' ''  < $ROOT/inputs/temp-test/10.inp.5.1 > ./outputs/t2939

./replace_instrumented.exe '?[^9-B]' '&a@%'  < $ROOT/inputs/temp-test/377.inp.164.1 > ./outputs/t2940

./replace_instrumented.exe '?[^9-B]' '&a@%'  < $ROOT/inputs/temp-test/378.inp.164.2 > ./outputs/t2941

./replace_instrumented.exe '?[^9-B]' ''  < $ROOT/inputs/temp-test/10.inp.5.1 > ./outputs/t2942

./replace_instrumented.exe '?[^9-B]' ''  < $ROOT/inputs/temp-test/11.inp.5.2 > ./outputs/t2943

./replace_instrumented.exe '?[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/281.inp.126.1 > ./outputs/t2944

./replace_instrumented.exe '?[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/282.inp.126.2 > ./outputs/t2945

./replace_instrumented.exe '?[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/469.inp.205.1 > ./outputs/t2946

./replace_instrumented.exe '?[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/470.inp.205.2 > ./outputs/t2947

./replace_instrumented.exe '?[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1862.inp.790.1 > ./outputs/t2948

./replace_instrumented.exe '?[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1863.inp.790.3 > ./outputs/t2949

./replace_instrumented.exe '?[^9-B]' 'b@t'  < $ROOT/inputs/temp-test/171.inp.77.1 > ./outputs/t2950

./replace_instrumented.exe '?[^9-B]' 'b@t'  < $ROOT/inputs/temp-test/172.inp.77.3 > ./outputs/t2951

./replace_instrumented.exe '?[^9-B]-[^0-9]-[9-B]' 'b@t'  < $ROOT/inputs/temp-test/267.inp.119.1 > ./outputs/t2952

./replace_instrumented.exe '?[^9-B]-[^0-9]-[9-B]' 'b@t'  < $ROOT/inputs/temp-test/268.inp.119.2 > ./outputs/t2953

./replace_instrumented.exe '?[^9-B]?@**[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/86.inp.39.1 > ./outputs/t2954

./replace_instrumented.exe '?[^9-B]?@**[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/87.inp.39.2 > ./outputs/t2955

./replace_instrumented.exe '?[^9-B][9-B][^9-B]' 'a&'  < $ROOT/inputs/temp-test/796.inp.343.1 > ./outputs/t2956

./replace_instrumented.exe '?[^9-B][9-B][^9-B]' 'a&'  < $ROOT/inputs/temp-test/797.inp.343.2 > ./outputs/t2957

./replace_instrumented.exe '?[^9-B][9-B][^9-B]' 'a&'  < $ROOT/inputs/temp-test/798.inp.343.3 > ./outputs/t2958

./replace_instrumented.exe '?[^9-B][^9-B]A$' 'a@n'  < $ROOT/inputs/temp-test/1809.inp.768.6 > ./outputs/t2959

./replace_instrumented.exe '?[^9-B][^9-B]A' 'a@n'  < $ROOT/inputs/temp-test/1805.inp.768.1 > ./outputs/t2960

./replace_instrumented.exe '?[^9-B][^9-B]A' 'a@n'  < $ROOT/inputs/temp-test/1806.inp.768.2 > ./outputs/t2961

./replace_instrumented.exe '?[^9-B][^9-B]A' 'a@n'  < $ROOT/inputs/temp-test/1807.inp.768.4 > ./outputs/t2962

./replace_instrumented.exe '?[^9-B]a-c]--? ??-- *@[*?' 'a&'  < $ROOT/inputs/temp-test/1573.inp.672.1 > ./outputs/t2963

./replace_instrumented.exe '?[^9-B]a-c]--? ??-- *@[*?' 'a&'  < $ROOT/inputs/temp-test/1574.inp.672.2 > ./outputs/t2964

./replace_instrumented.exe '?[^9-B]a-c]--? ??-- *@[*?' 'a&'  < $ROOT/inputs/temp-test/1575.inp.672.3 > ./outputs/t2965

./replace_instrumented.exe '?[^9-B]a-c]--? ??-- *@[*?' 'a&'  < $ROOT/inputs/temp-test/1576.inp.672.4 > ./outputs/t2966

./replace_instrumented.exe '?[^@@]' ''  < $ROOT/inputs/temp-test/2155.inp.912.1 > ./outputs/t2967

./replace_instrumented.exe '?[^@@]' ''  < $ROOT/inputs/temp-test/2156.inp.912.3 > ./outputs/t2968

./replace_instrumented.exe '?[^@@][0-9]-$' '&'  < $ROOT/inputs/temp-test/1195.inp.513.6 > ./outputs/t2969

./replace_instrumented.exe '?[^@@][0-9]-' '&'  < $ROOT/inputs/temp-test/1192.inp.513.1 > ./outputs/t2970

./replace_instrumented.exe '?[^@@][0-9]-' '&'  < $ROOT/inputs/temp-test/1193.inp.513.2 > ./outputs/t2971

./replace_instrumented.exe '?[^@@][0-9]-' '&'  < $ROOT/inputs/temp-test/1194.inp.513.3 > ./outputs/t2972

./replace_instrumented.exe '?[^@@][^--z]c-[^0-9][9-B]??' 'a@n'  < $ROOT/inputs/temp-test/302.inp.136.1 > ./outputs/t2973

./replace_instrumented.exe '?[^@@][^--z]c-[^0-9][9-B]??' 'a@n'  < $ROOT/inputs/temp-test/303.inp.136.2 > ./outputs/t2974

./replace_instrumented.exe '?[^@@][^--z]c-[^0-9][9-B]??' 'a@n'  < $ROOT/inputs/temp-test/304.inp.136.3 > ./outputs/t2975

./replace_instrumented.exe '?[^@n]' '@t'  < $ROOT/inputs/temp-test/290.inp.131.1 > ./outputs/t2976

./replace_instrumented.exe '?[^@n]' '@t'  < $ROOT/inputs/temp-test/291.inp.131.2 > ./outputs/t2977

./replace_instrumented.exe '?[^@n][^0-9]-@*@*?' 'a&'  < $ROOT/inputs/temp-test/269.inp.120.1 > ./outputs/t2978

./replace_instrumented.exe '?[^@n][^0-9]-@*@*?' 'a&'  < $ROOT/inputs/temp-test/270.inp.120.4 > ./outputs/t2979

./replace_instrumented.exe '?[^@n]^[@@][0-9]??-]' 'NEW'  < $ROOT/inputs/temp-test/1124.inp.484.1 > ./outputs/t2980

./replace_instrumented.exe '?[^@n]^[@@][0-9]??-]' 'NEW'  < $ROOT/inputs/temp-test/1125.inp.484.2 > ./outputs/t2981

./replace_instrumented.exe '?[^@n]^[@@][0-9]??-]' 'NEW'  < $ROOT/inputs/temp-test/1126.inp.484.3 > ./outputs/t2982

./replace_instrumented.exe '?[^@t]' 'NEW'  < $ROOT/inputs/temp-test/1484.inp.637.1 > ./outputs/t2983

./replace_instrumented.exe '?[^Z-a]^_`a]$' '=Wk.f/55+vDk9q)=M@c$J7g4#(A-`^-G!J'  < $ROOT/inputs/input/ruin.1940 > ./outputs/t2984

./replace_instrumented.exe '?[^Z-a]^_`a]' 'll&TYr{O(v_3"lQIib-9o98U{Cs_a8 cM4lI^%0or5Eu!8QY[J~+#nh<A'  < $ROOT/inputs/input/ruin.213 > ./outputs/t2985

./replace_instrumented.exe '?[^] ' 'a@nb@tc'  < $ROOT/inputs/temp-test/217.inp.97.1 > ./outputs/t2986

./replace_instrumented.exe '?[^]@*' '@%&a'  < $ROOT/inputs/temp-test/532.inp.231.1 > ./outputs/t2987

./replace_instrumented.exe '?[^][^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/530.inp.230.1 > ./outputs/t2988

./replace_instrumented.exe '?[^][^--z]c[^9-B][^9-B]c*?[9-B]c-' '@t'  < $ROOT/inputs/temp-test/531.inp.230.4 > ./outputs/t2989

./replace_instrumented.exe '?[^a--]' '@n'  < $ROOT/inputs/temp-test/128.inp.60.1 > ./outputs/t2990

./replace_instrumented.exe '?[^a--]' '@n'  < $ROOT/inputs/temp-test/129.inp.60.2 > ./outputs/t2991

./replace_instrumented.exe '?[^a--]' '@n'  < $ROOT/inputs/temp-test/130.inp.60.3 > ./outputs/t2992

./replace_instrumented.exe '?[^a--]' 'b@t'  < $ROOT/inputs/temp-test/1991.inp.846.1 > ./outputs/t2993

./replace_instrumented.exe '?[^a--]' 'b@t'  < $ROOT/inputs/temp-test/1992.inp.846.2 > ./outputs/t2994

./replace_instrumented.exe '?[^a--]' 'b@t'  < $ROOT/inputs/temp-test/1993.inp.846.3 > ./outputs/t2995

./replace_instrumented.exe '?[^a--b]' '@n'  < $ROOT/inputs/temp-test/1052.inp.453.1 > ./outputs/t2996

./replace_instrumented.exe '?[^a--b]' '@n'  < $ROOT/inputs/temp-test/1053.inp.453.2 > ./outputs/t2997

./replace_instrumented.exe '?[^a--b][0-9]A*[9-B]??[^9-B]?-' 'b@t'  < $ROOT/inputs/temp-test/1411.inp.606.1 > ./outputs/t2998

./replace_instrumented.exe '?[^a--b][0-9]A*[9-B]??[^9-B]?-' 'b@t'  < $ROOT/inputs/temp-test/1412.inp.606.2 > ./outputs/t2999

./replace_instrumented.exe '?[^a--b][0-9]A*[9-B]??[^9-B]?-' 'b@t'  < $ROOT/inputs/temp-test/1413.inp.606.3 > ./outputs/t3000

./replace_instrumented.exe '?[^a-?--*[9-B]?[0-9]a-c]-*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1070.inp.460.1 > ./outputs/t3001

./replace_instrumented.exe '?[^a-c' '@%@&'  < $ROOT/inputs/temp-test/978.inp.421.1 > ./outputs/t3002

./replace_instrumented.exe '?[^a-c' '@%@&'  < $ROOT/inputs/temp-test/979.inp.421.3 > ./outputs/t3003

./replace_instrumented.exe '?[^a-c' '@%@&'  < $ROOT/inputs/temp-test/980.inp.421.4 > ./outputs/t3004

./replace_instrumented.exe '?[^a-c]$' '@n'  < $ROOT/inputs/temp-test/1895.inp.803.6 > ./outputs/t3005

./replace_instrumented.exe '?[^a-c]%??[^a-]?[9-B][^9-B][9-B]' ''  < $ROOT/inputs/temp-test/2343.inp.995.3 > ./outputs/t3006

./replace_instrumented.exe '?[^a-c]' '&'  < $ROOT/inputs/temp-test/419.inp.185.1 > ./outputs/t3007

./replace_instrumented.exe '?[^a-c]' '&'  < $ROOT/inputs/temp-test/420.inp.185.2 > ./outputs/t3008

./replace_instrumented.exe '?[^a-c]' '&'  < $ROOT/inputs/temp-test/421.inp.185.3 > ./outputs/t3009

./replace_instrumented.exe '?[^a-c]' '@n'  < $ROOT/inputs/temp-test/1893.inp.803.1 > ./outputs/t3010

./replace_instrumented.exe '?[^a-c]' '@n'  < $ROOT/inputs/temp-test/1894.inp.803.2 > ./outputs/t3011

./replace_instrumented.exe '?[^a-c]- *[9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1849.inp.785.1 > ./outputs/t3012

./replace_instrumented.exe '?[^a-c]- *[9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1850.inp.785.2 > ./outputs/t3013

./replace_instrumented.exe '?[^a-c]-^?-[a-c]-?c*?[^9-B]-?' 'NEW'  < $ROOT/inputs/temp-test/1585.inp.676.1 > ./outputs/t3014

./replace_instrumented.exe '?[^a-c]-^?-[a-c]-?c*?[^9-B]-?' 'NEW'  < $ROOT/inputs/temp-test/1586.inp.676.2 > ./outputs/t3015

./replace_instrumented.exe '?[^a-c]-^?-[a-c]-?c*?[^9-B]-?' 'NEW'  < $ROOT/inputs/temp-test/1587.inp.676.3 > ./outputs/t3016

./replace_instrumented.exe '?[^a-c]?%?[^a-]?[9-B][^9-B][9-B]' ''  < $ROOT/inputs/temp-test/2341.inp.995.1 > ./outputs/t3017

./replace_instrumented.exe '?[^a-c]?%?[^a-]?[9-B][^9-B][9-B]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t3018

./replace_instrumented.exe '?[^a-c]??%[^a-]?[9-B][^9-B][9-B]' ''  < $ROOT/inputs/temp-test/2342.inp.995.2 > ./outputs/t3019

./replace_instrumented.exe '?[^a-c]??%[^a-]?[9-B][^9-B][9-B]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t3020

./replace_instrumented.exe '?[^a-c]??[^a-]?[9-B][^9-B][9-B]' ''  < $ROOT/inputs/temp-test/2341.inp.995.1 > ./outputs/t3021

./replace_instrumented.exe '?[^a-c]??[^a-]?[9-B][^9-B][9-B]' ''  < $ROOT/inputs/temp-test/2342.inp.995.2 > ./outputs/t3022

./replace_instrumented.exe '?[^a-c]??[^a-]?[9-B][^9-B][9-B]' ''  < $ROOT/inputs/temp-test/2343.inp.995.3 > ./outputs/t3023

./replace_instrumented.exe '?[^a-c]@[*[^a-c]- *^a-c]^' 'a&'  < $ROOT/inputs/temp-test/899.inp.387.1 > ./outputs/t3024

./replace_instrumented.exe '?[^a-c]@[*[^a-c]- *^a-c]^' 'a&'  < $ROOT/inputs/temp-test/900.inp.387.2 > ./outputs/t3025

./replace_instrumented.exe '?[^a-c]@[*[^a-c]- *^a-c]^' 'a&'  < $ROOT/inputs/temp-test/901.inp.387.3 > ./outputs/t3026

./replace_instrumented.exe '?[^a]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t3027

./replace_instrumented.exe '?[^p&y=3[p&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIZYIgTBk0-9]' 'J'  < $ROOT/inputs/input/ruin.1332 > ./outputs/t3028

./replace_instrumented.exe '?[a-' '&'  < $ROOT/inputs/temp-test/1751.inp.744.1 > ./outputs/t3029

./replace_instrumented.exe '?[a-' '&'  < $ROOT/inputs/temp-test/1752.inp.744.2 > ./outputs/t3030

./replace_instrumented.exe '?[a-' '&'  < $ROOT/inputs/temp-test/1753.inp.744.4 > ./outputs/t3031

./replace_instrumented.exe '?[a--]' '@%@&'  < $ROOT/inputs/temp-test/1522.inp.652.1 > ./outputs/t3032

./replace_instrumented.exe '?[a--]' '@%@&'  < $ROOT/inputs/temp-test/1523.inp.652.3 > ./outputs/t3033

./replace_instrumented.exe '?[a--]?[9-B]?[0-9][^a-c]' ''  < $ROOT/inputs/temp-test/2018.inp.857.1 > ./outputs/t3034

./replace_instrumented.exe '?[a--]?[9-B]?[0-9][^a-c]' ''  < $ROOT/inputs/temp-test/2019.inp.857.2 > ./outputs/t3035

./replace_instrumented.exe '?[a--]?[9-B]?[0-9][^a-c]' ''  < $ROOT/inputs/temp-test/2020.inp.857.3 > ./outputs/t3036

./replace_instrumented.exe '?[a--][0-9]--[9-B][-z]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2034.inp.863.1 > ./outputs/t3037

./replace_instrumented.exe '?[a--][0-9]--[9-B][-z]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2035.inp.863.2 > ./outputs/t3038

./replace_instrumented.exe '?[a--][0-9]--[9-B][-z]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2036.inp.863.3 > ./outputs/t3039

./replace_instrumented.exe '?[a--b]@[*[0-9][^a-c]?@*[0-9][- *[^@@][-z][9-B]- *-[a-c]' 'NEW'  < $ROOT/inputs/temp-test/1741.inp.741.1 > ./outputs/t3040

./replace_instrumented.exe '?[a--b]@[*[0-9][^a-c]?@*[0-9][- *[^@@][-z][9-B]- *-[a-c]' 'NEW'  < $ROOT/inputs/temp-test/1742.inp.741.3 > ./outputs/t3041

./replace_instrumented.exe '?[a-]' '@t'  < $ROOT/inputs/temp-test/2162.inp.915.1 > ./outputs/t3042

./replace_instrumented.exe '?[a-]' '@t'  < $ROOT/inputs/temp-test/2163.inp.915.2 > ./outputs/t3043

./replace_instrumented.exe '?[a-]' '@t'  < $ROOT/inputs/temp-test/2164.inp.915.3 > ./outputs/t3044

./replace_instrumented.exe '?[a-]@[*?--?^*-@t*-@@*' ''  < $ROOT/inputs/temp-test/871.inp.374.1 > ./outputs/t3045

./replace_instrumented.exe '?[a-]@[*?--?^*-@t*-@@*' ''  < $ROOT/inputs/temp-test/872.inp.374.3 > ./outputs/t3046

./replace_instrumented.exe '?[a-b]$**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t3047

./replace_instrumented.exe '?[a-c' 'a@n'  < $ROOT/inputs/temp-test/769.inp.330.1 > ./outputs/t3048

./replace_instrumented.exe '?[a-c-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2198.inp.932.1 > ./outputs/t3049

./replace_instrumented.exe '?[a-c-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2199.inp.932.2 > ./outputs/t3050

./replace_instrumented.exe '?[a-c-?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2200.inp.932.3 > ./outputs/t3051

./replace_instrumented.exe '?[a-c]$' '@%@&'  < $ROOT/inputs/temp-test/1776.inp.756.6 > ./outputs/t3052

./replace_instrumented.exe '?[a-c]' '&a@%'  < $ROOT/inputs/temp-test/2166.inp.916.1 > ./outputs/t3053

./replace_instrumented.exe '?[a-c]' '&a@%'  < $ROOT/inputs/temp-test/2167.inp.916.3 > ./outputs/t3054

./replace_instrumented.exe '?[a-c]' '@%@&'  < $ROOT/inputs/temp-test/1774.inp.756.1 > ./outputs/t3055

./replace_instrumented.exe '?[a-c]' '@%@&'  < $ROOT/inputs/temp-test/1775.inp.756.3 > ./outputs/t3056

./replace_instrumented.exe '?[a-c]' 'a@n'  < $ROOT/inputs/temp-test/1401.inp.601.1 > ./outputs/t3057

./replace_instrumented.exe '?[a-c]' 'a@n'  < $ROOT/inputs/temp-test/1402.inp.601.3 > ./outputs/t3058

./replace_instrumented.exe '?[a-c]' 'b@t'  < $ROOT/inputs/temp-test/1374.inp.590.1 > ./outputs/t3059

./replace_instrumented.exe '?[a-c]' 'b@t'  < $ROOT/inputs/temp-test/1375.inp.590.2 > ./outputs/t3060

./replace_instrumented.exe '?[a-c]' 'b@t'  < $ROOT/inputs/temp-test/1376.inp.590.4 > ./outputs/t3061

./replace_instrumented.exe '?[a-c]@**[a-c]^-]-[-' '@n'  < $ROOT/inputs/temp-test/2049.inp.869.1 > ./outputs/t3062

./replace_instrumented.exe '?[a-c]@**[a-c]^-]-[-' '@n'  < $ROOT/inputs/temp-test/2050.inp.869.2 > ./outputs/t3063

./replace_instrumented.exe '?[a-c]@**[a-c]^-]-[-' '@n'  < $ROOT/inputs/temp-test/2051.inp.869.3 > ./outputs/t3064

./replace_instrumented.exe '?[a-c][^9-B][@n]?[^0-9]@[*' '@%@&'  < $ROOT/inputs/temp-test/879.inp.377.1 > ./outputs/t3065

./replace_instrumented.exe '?[a-c][^9-B][@n]?[^0-9]@[*' '@%@&'  < $ROOT/inputs/temp-test/880.inp.377.2 > ./outputs/t3066

./replace_instrumented.exe '?[z-}]' '|90(kN$NAi!EBr,N`fb z$>^0N9vz*r~*nQ'  < $ROOT/inputs/input/ruin.1948 > ./outputs/t3067

./replace_instrumented.exe '?\ Ynh[' 'q'  < $ROOT/inputs/input/ruin.380 > ./outputs/t3068

./replace_instrumented.exe '?\' ')NC*%tKb|GGjQi3YBgB"]ME3u<5gkf_ge*1>^@V,l4LjQ#t.Idoo@p<2,j9<*'\''&k}rabG\jnS |:Zd*Nx>3#/"zuTn$+QR\d'\'''  < $ROOT/inputs/input/ruin.714 > ./outputs/t3069

./replace_instrumented.exe '?\;kn_j.:`F#' 'q'  < $ROOT/inputs/input/ruin.973 > ./outputs/t3070

./replace_instrumented.exe '?\A0b' 'Z'  < $ROOT/inputs/input/ruin.1555 > ./outputs/t3071

./replace_instrumented.exe '?\T<:#@@' '2'  < $ROOT/inputs/input/ruin.302 > ./outputs/t3072

./replace_instrumented.exe '?\U\c-' '+Ts~{n:nQv'\''-zYVa/KpCq27"=/_jA{fR<aHFO%"c-1"'  < $ROOT/inputs/input/ruin.867 > ./outputs/t3073

./replace_instrumented.exe '?\XK' 'vvy4-prHL@5G04oa\C[&1t2|kzQ2XdVNlgG{X.WlqnnQa(i^da!4HS<qTr5\I&feu*B '  < $ROOT/inputs/input/ruin.1016 > ./outputs/t3074

./replace_instrumented.exe '?\Y+So' 'w'  < $ROOT/inputs/input/ruin.518 > ./outputs/t3075

./replace_instrumented.exe '?\z"tEL.. ;9now' 'z'  < $ROOT/inputs/input/ruin.429 > ./outputs/t3076

./replace_instrumented.exe '?][^0-9][@t[9-B]-[0-@][9-B]-[0-9][^0-9][@t9][^0-9@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t]*[@t@][9-B]-*[0-9][^0-9][@][^0-9][@t[9-B]-[0-@][9-B]-[0-9][^0-9][@t9][^0-9@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t]*[@t@][9-B]-*[0-9][^0-9][@' 'r'  < $ROOT/inputs/input/ruin.319 > ./outputs/t3077

./replace_instrumented.exe '?]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,*5rY[0-9]*' 'C'  < $ROOT/inputs/input/ruin.1343 > ./outputs/t3078

./replace_instrumented.exe '?^' '&'  < $ROOT/inputs/temp-test/576.inp.248.1 > ./outputs/t3079

./replace_instrumented.exe '?^' '&'  < $ROOT/inputs/temp-test/577.inp.248.2 > ./outputs/t3080

./replace_instrumented.exe '?^' ''  < $ROOT/inputs/temp-test/1886.inp.800.1 > ./outputs/t3081

./replace_instrumented.exe '?^' ''  < $ROOT/inputs/temp-test/1887.inp.800.2 > ./outputs/t3082

./replace_instrumented.exe '?^' '@%&a'  < $ROOT/inputs/temp-test/511.inp.223.1 > ./outputs/t3083

./replace_instrumented.exe '?^' '@%&a'  < $ROOT/inputs/temp-test/512.inp.223.3 > ./outputs/t3084

./replace_instrumented.exe '?^' 'NEW'  < $ROOT/inputs/temp-test/413.inp.182.1 > ./outputs/t3085

./replace_instrumented.exe '?^' 'NEW'  < $ROOT/inputs/temp-test/414.inp.182.4 > ./outputs/t3086

./replace_instrumented.exe '?^'  < $ROOT/inputs/temp-test/511.inp.223.1 > ./outputs/t3087

./replace_instrumented.exe '?^*' '&a@%'  < $ROOT/inputs/temp-test/974.inp.420.1 > ./outputs/t3088

./replace_instrumented.exe '?^*' '&a@%'  < $ROOT/inputs/temp-test/975.inp.420.2 > ./outputs/t3089

./replace_instrumented.exe '?^*' '&a@%'  < $ROOT/inputs/temp-test/976.inp.420.4 > ./outputs/t3090

./replace_instrumented.exe '?^*' 'NEW'  < $ROOT/inputs/temp-test/159.inp.72.1 > ./outputs/t3091

./replace_instrumented.exe '?^*' 'NEW'  < $ROOT/inputs/temp-test/160.inp.72.2 > ./outputs/t3092

./replace_instrumented.exe '?^*' 'NEW'  < $ROOT/inputs/temp-test/161.inp.72.3 > ./outputs/t3093

./replace_instrumented.exe '?^*' 'a@n'  < $ROOT/inputs/temp-test/1240.inp.533.1 > ./outputs/t3094

./replace_instrumented.exe '?^*' 'a@n'  < $ROOT/inputs/temp-test/1241.inp.533.2 > ./outputs/t3095

./replace_instrumented.exe '?^*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1718.inp.732.1 > ./outputs/t3096

./replace_instrumented.exe '?^*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1719.inp.732.2 > ./outputs/t3097

./replace_instrumented.exe '?^*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1720.inp.732.3 > ./outputs/t3098

./replace_instrumented.exe '?^*-?-[a-c]' '&a@%'  < $ROOT/inputs/temp-test/909.inp.392.1 > ./outputs/t3099

./replace_instrumented.exe '?^*-?-[a-c]' '&a@%'  < $ROOT/inputs/temp-test/910.inp.392.3 > ./outputs/t3100

./replace_instrumented.exe '?^-] @**^*' '@%&a'  < $ROOT/inputs/temp-test/1319.inp.566.1 > ./outputs/t3101

./replace_instrumented.exe '?^-] @**^*' '@%&a'  < $ROOT/inputs/temp-test/1320.inp.566.3 > ./outputs/t3102

./replace_instrumented.exe '?^-]' 'a@nb@tc'  < $ROOT/inputs/temp-test/916.inp.395.1 > ./outputs/t3103

./replace_instrumented.exe '?^-][0-9][^9-B][a--]-[9-B][^-^*' 'a&'  < $ROOT/inputs/temp-test/1257.inp.540.1 > ./outputs/t3104

./replace_instrumented.exe '?^-][0-9][^9-B][a--]-[9-B][^-^*' 'a&'  < $ROOT/inputs/temp-test/1258.inp.540.3 > ./outputs/t3105

./replace_instrumented.exe '?^?' 'a@n'  < $ROOT/inputs/temp-test/106.inp.48.1 > ./outputs/t3106

./replace_instrumented.exe '?^?' 'a@n'  < $ROOT/inputs/temp-test/107.inp.48.3 > ./outputs/t3107

./replace_instrumented.exe '?^?*' '&'  < $ROOT/inputs/temp-test/576.inp.248.1 > ./outputs/t3108

./replace_instrumented.exe '?^[]' '@%&a'  < $ROOT/inputs/temp-test/511.inp.223.1 > ./outputs/t3109

./replace_instrumented.exe '?^[]' '@%&a'  < $ROOT/inputs/temp-test/512.inp.223.3 > ./outputs/t3110

./replace_instrumented.exe '?^[^]' '@%&a'  < $ROOT/inputs/temp-test/511.inp.223.1 > ./outputs/t3111

./replace_instrumented.exe '?^[^]' '@%&a'  < $ROOT/inputs/temp-test/512.inp.223.3 > ./outputs/t3112

./replace_instrumented.exe '?^[^]**' 'a'   < $ROOT/inputs/moni/f7.inp > ./outputs/t3113

./replace_instrumented.exe '?^a-]' '@n'  < $ROOT/inputs/temp-test/244.inp.109.1 > ./outputs/t3114

./replace_instrumented.exe '?^a-]' '@n'  < $ROOT/inputs/temp-test/245.inp.109.2 > ./outputs/t3115

./replace_instrumented.exe '?^a-]@[*-[9-B]?$' 'a@n'  < $ROOT/inputs/temp-test/740.inp.317.8 > ./outputs/t3116

./replace_instrumented.exe '?^a-]@[*-[9-B]?' 'a@n'  < $ROOT/inputs/temp-test/738.inp.317.1 > ./outputs/t3117

./replace_instrumented.exe '?^a-]@[*-[9-B]?' 'a@n'  < $ROOT/inputs/temp-test/739.inp.317.2 > ./outputs/t3118

./replace_instrumented.exe '?^a-c][0-9][^a-c][^9-B]-' '&a@%'  < $ROOT/inputs/temp-test/488.inp.213.1 > ./outputs/t3119

./replace_instrumented.exe '?^a-c][0-9][^a-c][^9-B]-@' '&a@%'  < $ROOT/inputs/temp-test/488.inp.213.1 > ./outputs/t3120

./replace_instrumented.exe '?^a-c][0-9][^a-c][^9-B]-@***' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t3121

./replace_instrumented.exe '?a-]' 'a&'  < $ROOT/inputs/temp-test/1343.inp.577.1 > ./outputs/t3122

./replace_instrumented.exe '?a-]' 'a&'  < $ROOT/inputs/temp-test/1344.inp.577.2 > ./outputs/t3123

./replace_instrumented.exe '?a-c]' '@%&a'  < $ROOT/inputs/temp-test/115.inp.52.1 > ./outputs/t3124

./replace_instrumented.exe '?c' 'hQ'  < $ROOT/inputs/input/ruin.1939 > ./outputs/t3125

./replace_instrumented.exe '?c*' '@n'  < $ROOT/inputs/temp-test/349.inp.153.1 > ./outputs/t3126

./replace_instrumented.exe '?c*@' '@n'  < $ROOT/inputs/temp-test/349.inp.153.1 > ./outputs/t3127

./replace_instrumented.exe '?c?%-' '&'  < $ROOT/inputs/temp-test/2337.inp.992.1 > ./outputs/t3128

./replace_instrumented.exe '?c?-' '&'  < $ROOT/inputs/temp-test/2337.inp.992.1 > ./outputs/t3129

./replace_instrumented.exe '?c?[-z]??[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1330.inp.571.1 > ./outputs/t3130

./replace_instrumented.exe '?c?[-z]??[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1331.inp.571.2 > ./outputs/t3131

./replace_instrumented.exe '?c?[-z]??[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1332.inp.571.3 > ./outputs/t3132

./replace_instrumented.exe '?d' 'y1[qD'  < $ROOT/inputs/input/ruin.1594 > ./outputs/t3133

./replace_instrumented.exe '?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]t]*[@t@][9-B]-*[0-9]][?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]ddB]@t]*[@t@][9-B]' '5_edflj&5h8_DCEi.gTlx*L#a)htiLD2@W$74Vc.L'  < $ROOT/inputs/input/ruin.325 > ./outputs/t3134

./replace_instrumented.exe '?n' 'C'  < $ROOT/inputs/input/ruin.1670 > ./outputs/t3135

./replace_instrumented.exe '?p&y=3[ZYIgNLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1[0-9]A]TBk?[^0-9]*-*?* *[a' '8l;V'  < $ROOT/inputs/input/ruin.1337 > ./outputs/t3136

./replace_instrumented.exe '?p&y=3[ZYp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIIgTBk[^9-B]-*?* *[a--' '$'  < $ROOT/inputs/input/ruin.1336 > ./outputs/t3137

./replace_instrumented.exe '?p&y=3[Z][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c ][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9*]-[^9-B][a-c]?[^0-9]-*[^9-B][a-cYIgTBk' '~'  < $ROOT/inputs/input/ruin.1339 > ./outputs/t3138

./replace_instrumented.exe '?p&y=3[Zp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIYIgTBk' '>b})}d%:+~EdJc2\! ug7;'  < $ROOT/inputs/input/ruin.1335 > ./outputs/t3139

./replace_instrumented.exe '?s@t?' '9}(kMj8,~K9.I'  < $ROOT/inputs/input/ruin.855 > ./outputs/t3140

./replace_instrumented.exe '?{?' '=El&\Ww]-4826L?@ )'\''W!>$'\'';W3DDU& vB%QGt;TIdL-& %kzJ($j5'  < $ROOT/inputs/input/ruin.1567 > ./outputs/t3141

./replace_instrumented.exe '@ ' 'LYzt2J[^!8*s3wkF(7kj={f1KdN'  < $ROOT/inputs/input/ruin.1626 > ./outputs/t3142

./replace_instrumented.exe '@ ' 'Y'  < $ROOT/inputs/input/ruin.1318 > ./outputs/t3143

./replace_instrumented.exe '@ ' 'Z'  < $ROOT/inputs/input/ruin.1152 > ./outputs/t3144

./replace_instrumented.exe '@!' 'A'  < $ROOT/inputs/input/ruin.1546 > ./outputs/t3145

./replace_instrumented.exe '@"' '~Ar:2C'  < $ROOT/inputs/input/ruin.908 > ./outputs/t3146

./replace_instrumented.exe '@"?#' 'J*wVzsbPX&iw, tX4$'  < $ROOT/inputs/input/ruin.1957 > ./outputs/t3147

./replace_instrumented.exe '@#' '@n67@n67@n'  < $ROOT/inputs/moni/f8.inp > ./outputs/t3148

./replace_instrumented.exe '@#' 'u-Yif5t-<fI/[&xp!_(>P}(pE'\''6KlTvB#W&0U.D#C0!\hR=[t,_-|{AnRT5kzG]#g}5-|1%u@)^v6\^125_]0%a~J*jd,'  < $ROOT/inputs/input/ruin.1544 > ./outputs/t3149

./replace_instrumented.exe '@#' 'uQx4*M<}~q7\)}|N)OE]v'  < $ROOT/inputs/input/ruin.1095 > ./outputs/t3150

./replace_instrumented.exe '@#^' '>*ed'  < $ROOT/inputs/input/ruin.1380 > ./outputs/t3151

./replace_instrumented.exe '@%[0-9]' 'c'  < $ROOT/inputs/moni/f7.inp > ./outputs/t3152

./replace_instrumented.exe '@' 'yy'  < $ROOT/inputs/moni/f7.inp > ./outputs/t3153

./replace_instrumented.exe '@(@n' 'FJ%]J<C\vi'\''nOf*@"$tH7Z ^H{tf7'\''VpPME8 V'  < $ROOT/inputs/input/ruin.1376 > ./outputs/t3154

./replace_instrumented.exe '@)' '81OA|~%qx8_p(~,NR#K(T@)'  < $ROOT/inputs/input/ruin.564 > ./outputs/t3155

./replace_instrumented.exe '@)' 'VbA/Ln,%rHuw=~e/MCfA_C=`B/=]2"'\''&]{Gz/-'  < $ROOT/inputs/input/ruin.222 > ./outputs/t3156

./replace_instrumented.exe '@*$'   < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t3157

./replace_instrumented.exe '@*$' '@%@&'  < $ROOT/inputs/temp-test/1883.inp.798.8 > ./outputs/t3158

./replace_instrumented.exe '@*' '&'  < $ROOT/inputs/temp-test/1333.inp.572.1 > ./outputs/t3159

./replace_instrumented.exe '@*' '&'  < $ROOT/inputs/temp-test/1334.inp.572.3 > ./outputs/t3160

./replace_instrumented.exe '@*' '@%@&'  < $ROOT/inputs/temp-test/1882.inp.798.1 > ./outputs/t3161

./replace_instrumented.exe '@*' 'a@nb@tc'  < $ROOT/inputs/temp-test/427.inp.188.1 > ./outputs/t3162

./replace_instrumented.exe '@*' 'a@nb@tc'  < $ROOT/inputs/temp-test/428.inp.188.3 > ./outputs/t3163

./replace_instrumented.exe '@**$' 'a@n'  < $ROOT/inputs/temp-test/818.inp.352.6 > ./outputs/t3164

./replace_instrumented.exe '@**' '&'  < $ROOT/inputs/temp-test/2146.inp.909.1 > ./outputs/t3165

./replace_instrumented.exe '@**' '&'  < $ROOT/inputs/temp-test/2147.inp.909.2 > ./outputs/t3166

./replace_instrumented.exe '@**' '@%&a'  < $ROOT/inputs/temp-test/1109.inp.477.1 > ./outputs/t3167

./replace_instrumented.exe '@**' '@%&a'  < $ROOT/inputs/temp-test/1110.inp.477.2 > ./outputs/t3168

./replace_instrumented.exe '@**' 'a&'  < $ROOT/inputs/temp-test/1338.inp.575.1 > ./outputs/t3169

./replace_instrumented.exe '@**' 'a&'  < $ROOT/inputs/temp-test/1339.inp.575.3 > ./outputs/t3170

./replace_instrumented.exe '@**' 'a@n'  < $ROOT/inputs/temp-test/817.inp.352.1 > ./outputs/t3171

./replace_instrumented.exe '@**-' '&a@%'  < $ROOT/inputs/temp-test/134.inp.63.1 > ./outputs/t3172

./replace_instrumented.exe '@**-' '&a@%'  < $ROOT/inputs/temp-test/135.inp.63.3 > ./outputs/t3173

./replace_instrumented.exe '@**-' '@t'  < $ROOT/inputs/temp-test/1490.inp.639.1 > ./outputs/t3174

./replace_instrumented.exe '@**-' '@t'  < $ROOT/inputs/temp-test/1491.inp.639.2 > ./outputs/t3175

./replace_instrumented.exe '@**-' '@t'  < $ROOT/inputs/temp-test/1860.inp.789.1 > ./outputs/t3176

./replace_instrumented.exe '@**-' '@t'  < $ROOT/inputs/temp-test/1861.inp.789.3 > ./outputs/t3177

./replace_instrumented.exe '@**--[0-9]?a-c][^-' '&'  < $ROOT/inputs/temp-test/278.inp.125.1 > ./outputs/t3178

./replace_instrumented.exe '@**--[0-9]?a-c][^-' '&'  < $ROOT/inputs/temp-test/279.inp.125.2 > ./outputs/t3179

./replace_instrumented.exe '@**?' '&a@%'  < $ROOT/inputs/temp-test/2046.inp.868.1 > ./outputs/t3180

./replace_instrumented.exe '@**?' '&a@%'  < $ROOT/inputs/temp-test/2047.inp.868.2 > ./outputs/t3181

./replace_instrumented.exe '@**?' '&a@%'  < $ROOT/inputs/temp-test/2048.inp.868.3 > ./outputs/t3182

./replace_instrumented.exe '@**?' ''  < $ROOT/inputs/temp-test/929.inp.401.1 > ./outputs/t3183

./replace_instrumented.exe '@**?' ''  < $ROOT/inputs/temp-test/930.inp.401.2 > ./outputs/t3184

./replace_instrumented.exe '@**?' ''  < $ROOT/inputs/temp-test/931.inp.401.3 > ./outputs/t3185

./replace_instrumented.exe '@**?' 'a&'  < $ROOT/inputs/temp-test/2037.inp.864.1 > ./outputs/t3186

./replace_instrumented.exe '@**?' 'a&'  < $ROOT/inputs/temp-test/2038.inp.864.2 > ./outputs/t3187

./replace_instrumented.exe '@**?' 'a&'  < $ROOT/inputs/temp-test/2039.inp.864.3 > ./outputs/t3188

./replace_instrumented.exe '@**?' 'a@n'  < $ROOT/inputs/temp-test/867.inp.373.1 > ./outputs/t3189

./replace_instrumented.exe '@**?' 'a@n'  < $ROOT/inputs/temp-test/868.inp.373.2 > ./outputs/t3190

./replace_instrumented.exe '@**?' 'a@n'  < $ROOT/inputs/temp-test/869.inp.373.3 > ./outputs/t3191

./replace_instrumented.exe '@**?' 'a@n'  < $ROOT/inputs/temp-test/870.inp.373.4 > ./outputs/t3192

./replace_instrumented.exe '@**?' 'b@t'  < $ROOT/inputs/temp-test/2179.inp.922.1 > ./outputs/t3193

./replace_instrumented.exe '@**?' 'b@t'  < $ROOT/inputs/temp-test/2180.inp.922.2 > ./outputs/t3194

./replace_instrumented.exe '@**?' 'b@t'  < $ROOT/inputs/temp-test/2181.inp.922.3 > ./outputs/t3195

./replace_instrumented.exe '@**[^0-9][9-B]?' '&a@%'  < $ROOT/inputs/temp-test/1270.inp.545.1 > ./outputs/t3196

./replace_instrumented.exe '@**[^9-B]$' '@t'  < $ROOT/inputs/temp-test/1946.inp.826.6 > ./outputs/t3197

./replace_instrumented.exe '@**[^9-B]' '@t'  < $ROOT/inputs/temp-test/1944.inp.826.1 > ./outputs/t3198

./replace_instrumented.exe '@**[^9-B]' '@t'  < $ROOT/inputs/temp-test/1945.inp.826.2 > ./outputs/t3199

./replace_instrumented.exe '@**[^a-]-*-[-?@** *- ?$' 'a@nb@tc'  < $ROOT/inputs/temp-test/2071.inp.877.6 > ./outputs/t3200

./replace_instrumented.exe '@**[^a-]-*-[-?@** *- ?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2068.inp.877.1 > ./outputs/t3201

./replace_instrumented.exe '@**[^a-]-*-[-?@** *- ?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2069.inp.877.2 > ./outputs/t3202

./replace_instrumented.exe '@**[^a-]-*-[-?@** *- ?' 'a@nb@tc'  < $ROOT/inputs/temp-test/2070.inp.877.3 > ./outputs/t3203

./replace_instrumented.exe '@**a-c][^@t]-??a-c]?-$' '@%&a'  < $ROOT/inputs/temp-test/1565.inp.668.6 > ./outputs/t3204

./replace_instrumented.exe '@**a-c][^@t]-??a-c]?-' '@%&a'  < $ROOT/inputs/temp-test/1562.inp.668.1 > ./outputs/t3205

./replace_instrumented.exe '@**a-c][^@t]-??a-c]?-' '@%&a'  < $ROOT/inputs/temp-test/1563.inp.668.2 > ./outputs/t3206

./replace_instrumented.exe '@**a-c][^@t]-??a-c]?-' '@%&a'  < $ROOT/inputs/temp-test/1564.inp.668.3 > ./outputs/t3207

./replace_instrumented.exe '@*-' '&'  < $ROOT/inputs/temp-test/225.inp.101.1 > ./outputs/t3208

./replace_instrumented.exe '@*-' '&'  < $ROOT/inputs/temp-test/226.inp.101.2 > ./outputs/t3209

./replace_instrumented.exe '@*-' '&'  < $ROOT/inputs/temp-test/227.inp.101.3 > ./outputs/t3210

./replace_instrumented.exe '@*-' '@n'  < $ROOT/inputs/temp-test/1596.inp.679.1 > ./outputs/t3211

./replace_instrumented.exe '@*-' '@n'  < $ROOT/inputs/temp-test/1597.inp.679.3 > ./outputs/t3212

./replace_instrumented.exe '@*-?[^a-c-[0-9][0-9]@[?[a-?[-' '@%&a'  < $ROOT/inputs/temp-test/432.inp.190.1 > ./outputs/t3213

./replace_instrumented.exe '@*-?[^a-c-[0-9][0-9]@[?[a-?[-' '@%&a'  < $ROOT/inputs/temp-test/433.inp.190.2 > ./outputs/t3214

./replace_instrumented.exe '@*-[^0-9]-@[[^a-c] ' 'NEW'  < $ROOT/inputs/temp-test/1486.inp.638.1 > ./outputs/t3215

./replace_instrumented.exe '@*-[^0-9]-@[[^a-c] ' 'NEW'  < $ROOT/inputs/temp-test/1487.inp.638.2 > ./outputs/t3216

./replace_instrumented.exe '@*-[^0-9]-@[[^a-c] ' 'NEW'  < $ROOT/inputs/temp-test/1488.inp.638.3 > ./outputs/t3217

./replace_instrumented.exe '@*?'   < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t3218

./replace_instrumented.exe '@*?' '&@n'  < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t3219

./replace_instrumented.exe '@*?' '@%&a'  < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t3220

./replace_instrumented.exe '@*?'  < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t3221

./replace_instrumented.exe '@*?[]' '@%&a'  < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t3222

./replace_instrumented.exe '@*?[^]' '@%&a'  < $ROOT/inputs/temp-test/198.inp.89.1 > ./outputs/t3223

./replace_instrumented.exe '@*[0-9]??-^*^??@[*' ''  < $ROOT/inputs/temp-test/63.inp.27.1 > ./outputs/t3224

./replace_instrumented.exe '@*[^0-9]' '&'  < $ROOT/inputs/temp-test/1935.inp.823.1 > ./outputs/t3225

./replace_instrumented.exe '@*[^0-9]' '&'  < $ROOT/inputs/temp-test/1936.inp.823.3 > ./outputs/t3226

./replace_instrumented.exe '@*[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/888.inp.382.1 > ./outputs/t3227

./replace_instrumented.exe '@*[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/889.inp.382.2 > ./outputs/t3228

./replace_instrumented.exe '@*[^a-c]?- ^a-c]' '&a@%'  < $ROOT/inputs/temp-test/2122.inp.900.1 > ./outputs/t3229

./replace_instrumented.exe '@*[^a-c]?- ^a-c]' '&a@%'  < $ROOT/inputs/temp-test/2123.inp.900.2 > ./outputs/t3230

./replace_instrumented.exe '@*[^a-c]?- ^a-c]' '&a@%'  < $ROOT/inputs/temp-test/2124.inp.900.3 > ./outputs/t3231

./replace_instrumented.exe '@*^a-]' '@n'  < $ROOT/inputs/temp-test/2243.inp.951.1 > ./outputs/t3232

./replace_instrumented.exe '@+' 'd;'  < $ROOT/inputs/input/ruin.1976 > ./outputs/t3233

./replace_instrumented.exe '@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}[^0-9]'\''*' 'j'  < $ROOT/inputs/input/ruin.1346 > ./outputs/t3234

./replace_instrumented.exe '@-' '-'  < $ROOT/inputs/input/ruin.1578 > ./outputs/t3235

./replace_instrumented.exe '@-' 'R'  < $ROOT/inputs/input/ruin.1456 > ./outputs/t3236

./replace_instrumented.exe '@-' 'h'  < $ROOT/inputs/input/ruin.161 > ./outputs/t3237

./replace_instrumented.exe '@/' 'T@cm!x`moJfN/%|*mK7oWn#ZE%z'  < $ROOT/inputs/input/ruin.1491 > ./outputs/t3238

./replace_instrumented.exe '@3[^Z-a]^_`a]' '_y'  < $ROOT/inputs/input/ruin.1748 > ./outputs/t3239

./replace_instrumented.exe '@5' '4Q'  < $ROOT/inputs/input/ruin.80 > ./outputs/t3240

./replace_instrumented.exe '@5' 'V'  < $ROOT/inputs/input/ruin.125 > ./outputs/t3241

./replace_instrumented.exe '@6' 'K'  < $ROOT/inputs/input/ruin.1323 > ./outputs/t3242

./replace_instrumented.exe '@6' 'Y~83>~^O_'  < $ROOT/inputs/input/ruin.1747 > ./outputs/t3243

./replace_instrumented.exe '@8'\''Z' '2xl#kq'  < $ROOT/inputs/input/ruin.1419 > ./outputs/t3244

./replace_instrumented.exe '@;$' '+W}](~9#6;Go0J- XybH&<\0E$9'  < $ROOT/inputs/input/ruin.8 > ./outputs/t3245

./replace_instrumented.exe '@;' 'p8-lf,m\V=UixymxlH&eP|nwsDhhN(Hcv4 CV$Gmbi'  < $ROOT/inputs/input/ruin.1087 > ./outputs/t3246

./replace_instrumented.exe '@=' '`'  < $ROOT/inputs/input/ruin.45 > ./outputs/t3247

./replace_instrumented.exe '@=*' ':\>jX/&//[~9HI.'\''XsWI!6Hav8e`?^Ut6D;zZpJ*\KB2X5*AcRB}pcAc2>EMpaM,=Ad>a$t>2J{6`5VDe{DRw:Lg>\U]wKK/6Y<q%A8mn]@'  < $ROOT/inputs/input/ruin.1174 > ./outputs/t3248

./replace_instrumented.exe '@>' 's'  < $ROOT/inputs/input/ruin.489 > ./outputs/t3249

./replace_instrumented.exe '@@$' '$GBp}{JWTz=SgS`X@>='  < $ROOT/inputs/input/ruin.1905 > ./outputs/t3250

./replace_instrumented.exe '@@$' '>v}~0g-swC7?z'  < $ROOT/inputs/input/ruin.716 > ./outputs/t3251

./replace_instrumented.exe '@@$' 'D'  < $ROOT/inputs/input/ruin.1943 > ./outputs/t3252

./replace_instrumented.exe '@@$' 'O) !V9ey{hoM\gUNi|0JP@&Jj?5|^C9Se2{-V5'  < $ROOT/inputs/input/ruin.562 > ./outputs/t3253

./replace_instrumented.exe '@@$' 'PBR#i29%`I}+1Y|@Wa.H@G)Vm<-Y\smAI'  < $ROOT/inputs/input/ruin.514 > ./outputs/t3254

./replace_instrumented.exe '@@$' 'Wm'  < $ROOT/inputs/input/ruin.1684 > ./outputs/t3255

./replace_instrumented.exe '@@$' '['  < $ROOT/inputs/input/ruin.1282 > ./outputs/t3256

./replace_instrumented.exe '@@$' ']Jd2(Pk"IOH.'  < $ROOT/inputs/input/ruin.1214 > ./outputs/t3257

./replace_instrumented.exe '@@$' '`'  < $ROOT/inputs/input/ruin.20 > ./outputs/t3258

./replace_instrumented.exe '@@$' 'f'  < $ROOT/inputs/input/ruin.436 > ./outputs/t3259

./replace_instrumented.exe '@@$' 'pe&:zop_%'  < $ROOT/inputs/input/ruin.176 > ./outputs/t3260

./replace_instrumented.exe '@@$' 'q'  < $ROOT/inputs/input/ruin.573 > ./outputs/t3261

./replace_instrumented.exe '@@'   < $ROOT/inputs/input/ruin.1155 > ./outputs/t3262

./replace_instrumented.exe '@@'   < $ROOT/inputs/input/ruin.1267 > ./outputs/t3263

./replace_instrumented.exe '@@' ' '  < $ROOT/inputs/input/ruin.1636 > ./outputs/t3264

./replace_instrumented.exe '@@' ' '  < $ROOT/inputs/input/ruin.686 > ./outputs/t3265

./replace_instrumented.exe '@@' ' /'  < $ROOT/inputs/input/ruin.1716 > ./outputs/t3266

./replace_instrumented.exe '@@' ' F]~M\ Wz]`M0)y8H?fc7Phqi}@,5rYP"hqRx 1etW9vEs|~'\'' d~'  < $ROOT/inputs/input/ruin.150 > ./outputs/t3267

./replace_instrumented.exe '@@' ' Hq8<5u8KNy,8KNy,h0_sbVxG=nOfh0_sbVxG=nO8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOffj@{,j17KHl}%a1`PZ!Ur5'\'''  < $ROOT/inputs/input/ruin.1038 > ./outputs/t3268

./replace_instrumented.exe '@@' ' Hq8<5u8KNy,h0_sbVxG=nOfj@{,j17KHl}%a1`PZ!Ur5'\'''  < $ROOT/inputs/input/ruin.1038 > ./outputs/t3269

./replace_instrumented.exe '@@' ' eA[pOJ,7}LP=PljrA&m['  < $ROOT/inputs/input/ruin.1694 > ./outputs/t3270

./replace_instrumented.exe '@@' ' ql3hT_RR%Lv0q{gNA7dFL!iUJk>g$ ~-0ON!BAyv'  < $ROOT/inputs/input/ruin.1806 > ./outputs/t3271

./replace_instrumented.exe '@@' ' vCcJyA'\''Kn0%'  < $ROOT/inputs/input/ruin.409 > ./outputs/t3272

./replace_instrumented.exe '@@' '!'  < $ROOT/inputs/input/ruin.793 > ./outputs/t3273

./replace_instrumented.exe '@@' '!dX:TvVOl,/?nB/ .p(8CF07J&%csQb,NtUE)AX"4&&=Kk"Fc4'  < $ROOT/inputs/input/ruin.196 > ./outputs/t3274

./replace_instrumented.exe '@@' '!t1D*'\''"z%6'  < $ROOT/inputs/input/ruin.1711 > ./outputs/t3275

./replace_instrumented.exe '@@' '"%Xq:5!?SA^^.)RRV1-^^t;_'  < $ROOT/inputs/input/ruin.606 > ./outputs/t3276

./replace_instrumented.exe '@@' '")sV\0['  < $ROOT/inputs/input/ruin.482 > ./outputs/t3277

./replace_instrumented.exe '@@' '"3<U{'  < $ROOT/inputs/input/ruin.41 > ./outputs/t3278

./replace_instrumented.exe '@@' '"sk}D$r4U?mR|,'  < $ROOT/inputs/input/ruin.542 > ./outputs/t3279

./replace_instrumented.exe '@@' '#'  < $ROOT/inputs/input/ruin.1116 > ./outputs/t3280

./replace_instrumented.exe '@@' '#'  < $ROOT/inputs/input/ruin.1615 > ./outputs/t3281

./replace_instrumented.exe '@@' '#'  < $ROOT/inputs/input/ruin.577 > ./outputs/t3282

./replace_instrumented.exe '@@' '$'  < $ROOT/inputs/input/ruin.120 > ./outputs/t3283

./replace_instrumented.exe '@@' '$'  < $ROOT/inputs/input/ruin.188 > ./outputs/t3284

./replace_instrumented.exe '@@' '$'\'''  < $ROOT/inputs/input/ruin.390 > ./outputs/t3285

./replace_instrumented.exe '@@' '%'  < $ROOT/inputs/input/ruin.1413 > ./outputs/t3286

./replace_instrumented.exe '@@' '%'  < $ROOT/inputs/input/ruin.149 > ./outputs/t3287

./replace_instrumented.exe '@@' '& +b2m'  < $ROOT/inputs/input/ruin.687 > ./outputs/t3288

./replace_instrumented.exe '@@' '&'  < $ROOT/inputs/input/ruin.1513 > ./outputs/t3289

./replace_instrumented.exe '@@' '&'  < $ROOT/inputs/input/ruin.370 > ./outputs/t3290

./replace_instrumented.exe '@@' '&'  < $ROOT/inputs/input/ruin.846 > ./outputs/t3291

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.139 > ./outputs/t3292

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.162 > ./outputs/t3293

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.164 > ./outputs/t3294

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.1854 > ./outputs/t3295

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.1900 > ./outputs/t3296

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.1916 > ./outputs/t3297

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.438 > ./outputs/t3298

./replace_instrumented.exe '@@' ''  < $ROOT/inputs/input/ruin.464 > ./outputs/t3299

./replace_instrumented.exe '@@' ''\''5.dxDo+'  < $ROOT/inputs/input/ruin.1515 > ./outputs/t3300

./replace_instrumented.exe '@@' ''\''8>j9I}4)QUOhBL" 5dZjR4'  < $ROOT/inputs/input/ruin.1585 > ./outputs/t3301

./replace_instrumented.exe '@@' ''\''rtrI}1h*1@x316=8F1Wi(\8ug'  < $ROOT/inputs/input/ruin.875 > ./outputs/t3302

./replace_instrumented.exe '@@' '('  < $ROOT/inputs/input/ruin.1048 > ./outputs/t3303

./replace_instrumented.exe '@@' '('  < $ROOT/inputs/input/ruin.1560 > ./outputs/t3304

./replace_instrumented.exe '@@' '('  < $ROOT/inputs/input/ruin.676 > ./outputs/t3305

./replace_instrumented.exe '@@' '(o?j~tj7Bh6Rwj`\Vz+SK5cd"fP'  < $ROOT/inputs/input/ruin.1892 > ./outputs/t3306

./replace_instrumented.exe '@@' ')'  < $ROOT/inputs/input/ruin.1547 > ./outputs/t3307

./replace_instrumented.exe '@@' ')R6,%8x[%~*u|X\vt&wTaRd|20Ev'\''P'  < $ROOT/inputs/input/ruin.33 > ./outputs/t3308

./replace_instrumented.exe '@@' '*'  < $ROOT/inputs/input/ruin.1525 > ./outputs/t3309

./replace_instrumented.exe '@@' '*osp7hY,{a9W&a^b_80b]=AP]j+Sj />k""Ur|HMFY{=7/cW7!37`X'  < $ROOT/inputs/input/ruin.599 > ./outputs/t3310

./replace_instrumented.exe '@@' '*pv%'  < $ROOT/inputs/input/ruin.634 > ./outputs/t3311

./replace_instrumented.exe '@@' '*q61|R0fcYH+ZzxA_ '  < $ROOT/inputs/input/ruin.797 > ./outputs/t3312

./replace_instrumented.exe '@@' '*w`tU@YLlA}c4u,btKqp(!'\''u)e%pb~'  < $ROOT/inputs/input/ruin.312 > ./outputs/t3313

./replace_instrumented.exe '@@' '+'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t3314

./replace_instrumented.exe '@@' '+'  < $ROOT/inputs/input/ruin.1665 > ./outputs/t3315

./replace_instrumented.exe '@@' '+'  < $ROOT/inputs/input/ruin.180 > ./outputs/t3316

./replace_instrumented.exe '@@' '+'  < $ROOT/inputs/input/ruin.2000 > ./outputs/t3317

./replace_instrumented.exe '@@' '+'  < $ROOT/inputs/input/ruin.708 > ./outputs/t3318

./replace_instrumented.exe '@@' '+'  < $ROOT/inputs/input/ruin.933 > ./outputs/t3319

./replace_instrumented.exe '@@' '+'\''gpw--(=s T&WJK!a)Ca94'  < $ROOT/inputs/input/ruin.832 > ./outputs/t3320

./replace_instrumented.exe '@@' '+B1j@-aUKh^'  < $ROOT/inputs/input/ruin.1102 > ./outputs/t3321

./replace_instrumented.exe '@@' '+C=@tD|x.1Gwcu'  < $ROOT/inputs/input/ruin.360 > ./outputs/t3322

./replace_instrumented.exe '@@' '+L$0nAwTE,?8>=\.)j_?W<"`s<9N LC(tnc|!$gDsG9!<da2D_e#5ehh]mDd_vE9pSi7V!ie^EqeMzAQ[F;'  < $ROOT/inputs/input/ruin.1067 > ./outputs/t3323

./replace_instrumented.exe '@@' '+[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@[a-c@t*[a-c]^*[^0-9]-[a-c]^*[^0-9]@'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t3324

./replace_instrumented.exe '@@' '+_he-e]Z\99 4c7!{)aQf:\!'  < $ROOT/inputs/input/ruin.1008 > ./outputs/t3325

./replace_instrumented.exe '@@' '+tY&c/wyzfFpv'  < $ROOT/inputs/input/ruin.343 > ./outputs/t3326

./replace_instrumented.exe '@@' ','  < $ROOT/inputs/input/ruin.1574 > ./outputs/t3327

./replace_instrumented.exe '@@' ',o-'\'' G$8%4u=+op(<['  < $ROOT/inputs/input/ruin.238 > ./outputs/t3328

./replace_instrumented.exe '@@' '-'  < $ROOT/inputs/input/ruin.1101 > ./outputs/t3329

./replace_instrumented.exe '@@' '-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-[]aA-GZ-a]*^_('  < $ROOT/inputs/input/ruin.1048 > ./outputs/t3330

./replace_instrumented.exe '@@' '-}$NG|)ta623`tp&UwIx;Nak[]yQ!LHIP4;%Br1]=J\|%RpVqN*U=98`5'  < $ROOT/inputs/input/ruin.1924 > ./outputs/t3331

./replace_instrumented.exe '@@' '.'  < $ROOT/inputs/input/ruin.631 > ./outputs/t3332

./replace_instrumented.exe '@@' '/&!616<!d/}yp"oTD6&j9\Pw8nT\Jsnh[\i>s9/vn.+'\''t'  < $ROOT/inputs/input/ruin.11 > ./outputs/t3333

./replace_instrumented.exe '@@' '/'  < $ROOT/inputs/input/ruin.1022 > ./outputs/t3334

./replace_instrumented.exe '@@' '/'  < $ROOT/inputs/input/ruin.129 > ./outputs/t3335

./replace_instrumented.exe '@@' '/'  < $ROOT/inputs/input/ruin.1848 > ./outputs/t3336

./replace_instrumented.exe '@@' '/'  < $ROOT/inputs/input/ruin.495 > ./outputs/t3337

./replace_instrumented.exe '@@' '/6sEWY)qxH!HD%1KqvrFR2$HF_f>{4ZN]'  < $ROOT/inputs/input/ruin.121 > ./outputs/t3338

./replace_instrumented.exe '@@' '0'  < $ROOT/inputs/input/ruin.896 > ./outputs/t3339

./replace_instrumented.exe '@@' '07mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpe'  < $ROOT/inputs/input/ruin.1061 > ./outputs/t3340

./replace_instrumented.exe '@@' '0e'  < $ROOT/inputs/input/ruin.1061 > ./outputs/t3341

./replace_instrumented.exe '@@' '1"%JX$^ku2<sUsCU+vj&[ q?Nv.wFgwq9!'  < $ROOT/inputs/input/ruin.1496 > ./outputs/t3342

./replace_instrumented.exe '@@' '1('  < $ROOT/inputs/input/ruin.1009 > ./outputs/t3343

./replace_instrumented.exe '@@' '1;b*?wOue:=LeChp|Xl[5oGNummHY5C>'  < $ROOT/inputs/input/ruin.678 > ./outputs/t3344

./replace_instrumented.exe '@@' '1WL1U;05H?Td|ovtm:_+>u63FAZ^pz3d=9iQnoS[&T_T=T5:Ii'  < $ROOT/inputs/input/ruin.1921 > ./outputs/t3345

./replace_instrumented.exe '@@' '2'  < $ROOT/inputs/input/ruin.1209 > ./outputs/t3346

./replace_instrumented.exe '@@' '2'  < $ROOT/inputs/input/ruin.148 > ./outputs/t3347

./replace_instrumented.exe '@@' '2'  < $ROOT/inputs/input/ruin.1650 > ./outputs/t3348

./replace_instrumented.exe '@@' '2'  < $ROOT/inputs/input/ruin.764 > ./outputs/t3349

./replace_instrumented.exe '@@' '2'  < $ROOT/inputs/input/ruin.773 > ./outputs/t3350

./replace_instrumented.exe '@@' '3'  < $ROOT/inputs/input/ruin.587 > ./outputs/t3351

./replace_instrumented.exe '@@' '3BLytQ69ILh[Q=v@'  < $ROOT/inputs/input/ruin.608 > ./outputs/t3352

./replace_instrumented.exe '@@' '4'  < $ROOT/inputs/input/ruin.1992 > ./outputs/t3353

./replace_instrumented.exe '@@' '4'  < $ROOT/inputs/input/ruin.64 > ./outputs/t3354

./replace_instrumented.exe '@@' '4V_O%];L'  < $ROOT/inputs/input/ruin.523 > ./outputs/t3355

./replace_instrumented.exe '@@' '5'  < $ROOT/inputs/input/ruin.1068 > ./outputs/t3356

./replace_instrumented.exe '@@' '5'  < $ROOT/inputs/input/ruin.1712 > ./outputs/t3357

./replace_instrumented.exe '@@' '5=}m(n~eqHssWTa{"Y?>ZsqxtOGQnjdh_gEY}xsZzV0jtKXn_&qG2I:~w2OXxrgMB>l8d^$ E-|'  < $ROOT/inputs/input/ruin.1981 > ./outputs/t3358

./replace_instrumented.exe '@@' '6'  < $ROOT/inputs/input/ruin.1523 > ./outputs/t3359

./replace_instrumented.exe '@@' '6'  < $ROOT/inputs/input/ruin.1891 > ./outputs/t3360

./replace_instrumented.exe '@@' '6'  < $ROOT/inputs/input/ruin.1922 > ./outputs/t3361

./replace_instrumented.exe '@@' '7'  < $ROOT/inputs/input/ruin.1303 > ./outputs/t3362

./replace_instrumented.exe '@@' '7'  < $ROOT/inputs/input/ruin.1846 > ./outputs/t3363

./replace_instrumented.exe '@@' '78ewmsa'\''3F~3]X`TmS?XC2'\'''  < $ROOT/inputs/input/ruin.85 > ./outputs/t3364

./replace_instrumented.exe '@@' '7Pv(oq)0t^dvrHkh,e|)8!AK(<=AjeG3l^_'  < $ROOT/inputs/input/ruin.893 > ./outputs/t3365

./replace_instrumented.exe '@@' '7p'  < $ROOT/inputs/input/ruin.53 > ./outputs/t3366

./replace_instrumented.exe '@@' '7{%&v{Y:ay!~;a)T8SiF6*,5Z=Kud\M{E+8CT9GxONmm'  < $ROOT/inputs/input/ruin.1667 > ./outputs/t3367

./replace_instrumented.exe '@@' '7{ek8P_#i5~XKh[kyMY[AhDzY/R2'  < $ROOT/inputs/input/ruin.1394 > ./outputs/t3368

./replace_instrumented.exe '@@' '8'  < $ROOT/inputs/input/ruin.1695 > ./outputs/t3369

./replace_instrumented.exe '@@' '8'  < $ROOT/inputs/input/ruin.1901 > ./outputs/t3370

./replace_instrumented.exe '@@' '8Kn0{lOL:63C(`zF>U{e=G$53y'  < $ROOT/inputs/input/ruin.851 > ./outputs/t3371

./replace_instrumented.exe '@@' '9'  < $ROOT/inputs/input/ruin.1542 > ./outputs/t3372

./replace_instrumented.exe '@@' '9'  < $ROOT/inputs/input/ruin.186 > ./outputs/t3373

./replace_instrumented.exe '@@' '9E{rn2?m(T@]A=ZX+qguf}Om/HMp3,'  < $ROOT/inputs/input/ruin.1959 > ./outputs/t3374

./replace_instrumented.exe '@@' '9fzx91%af \'\''jgI$V|BL(X sN@?F8AXgoas/%p'  < $ROOT/inputs/input/ruin.1543 > ./outputs/t3375

./replace_instrumented.exe '@@' ':'  < $ROOT/inputs/input/ruin.1049 > ./outputs/t3376

./replace_instrumented.exe '@@' ':'  < $ROOT/inputs/input/ruin.1917 > ./outputs/t3377

./replace_instrumented.exe '@@' ':'  < $ROOT/inputs/input/ruin.430 > ./outputs/t3378

./replace_instrumented.exe '@@' ':-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ*-a]^_-aA-GZ-a]^_-aA-GZ-a]^_'  < $ROOT/inputs/input/ruin.1049 > ./outputs/t3379

./replace_instrumented.exe '@@' ':AXq~ z+rj0BX0dT}k58H6_%'  < $ROOT/inputs/input/ruin.1438 > ./outputs/t3380

./replace_instrumented.exe '@@' ';'  < $ROOT/inputs/input/ruin.1155 > ./outputs/t3381

./replace_instrumented.exe '@@' ';'  < $ROOT/inputs/input/ruin.177 > ./outputs/t3382

./replace_instrumented.exe '@@' ';'  < $ROOT/inputs/input/ruin.427 > ./outputs/t3383

./replace_instrumented.exe '@@' ';.St7,*,FY'\''e2 #PQt_JAdEVyBorNLKtG4,nKOUCw{Tr/J2d]Omr-PWjk+'  < $ROOT/inputs/input/ruin.98 > ./outputs/t3384

./replace_instrumented.exe '@@' ';cnGb$sku_0Cwd6'  < $ROOT/inputs/input/ruin.341 > ./outputs/t3385

./replace_instrumented.exe '@@' ';pJ<?F=Dxa?\754QF'  < $ROOT/inputs/input/ruin.1756 > ./outputs/t3386

./replace_instrumented.exe '@@' '<'  < $ROOT/inputs/input/ruin.1005 > ./outputs/t3387

./replace_instrumented.exe '@@' '<'  < $ROOT/inputs/input/ruin.1316 > ./outputs/t3388

./replace_instrumented.exe '@@' '<'  < $ROOT/inputs/input/ruin.1461 > ./outputs/t3389

./replace_instrumented.exe '@@' '<'  < $ROOT/inputs/input/ruin.1545 > ./outputs/t3390

./replace_instrumented.exe '@@' '<'  < $ROOT/inputs/input/ruin.239 > ./outputs/t3391

./replace_instrumented.exe '@@' '<<s'\''ykL-eK+T'  < $ROOT/inputs/input/ruin.1771 > ./outputs/t3392

./replace_instrumented.exe '@@' '<T'  < $ROOT/inputs/input/ruin.1455 > ./outputs/t3393

./replace_instrumented.exe '@@' '<aeDJVcc:%wK*e9vLi71Y'  < $ROOT/inputs/input/ruin.1781 > ./outputs/t3394

./replace_instrumented.exe '@@' '<c!'  < $ROOT/inputs/input/ruin.1179 > ./outputs/t3395

./replace_instrumented.exe '@@' '<kl(cA m(Y`(5*I,G:CY+*n+)%En[Gl<:18Y9j$*V`$NJ}$;'  < $ROOT/inputs/input/ruin.1149 > ./outputs/t3396

./replace_instrumented.exe '@@' '<u2<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs]r/0cjs'\''`'  < $ROOT/inputs/input/ruin.1047 > ./outputs/t3397

./replace_instrumented.exe '@@' '<u2]r/0cjs'\''`'  < $ROOT/inputs/input/ruin.1047 > ./outputs/t3398

./replace_instrumented.exe '@@' '='  < $ROOT/inputs/input/ruin.1882 > ./outputs/t3399

./replace_instrumented.exe '@@' '='  < $ROOT/inputs/input/ruin.252 > ./outputs/t3400

./replace_instrumented.exe '@@' '='  < $ROOT/inputs/input/ruin.664 > ./outputs/t3401

./replace_instrumented.exe '@@' '=0b?deU>R%+|'  < $ROOT/inputs/input/ruin.192 > ./outputs/t3402

./replace_instrumented.exe '@@' '>'  < $ROOT/inputs/input/ruin.1304 > ./outputs/t3403

./replace_instrumented.exe '@@' '>TdQN{'  < $ROOT/inputs/input/ruin.362 > ./outputs/t3404

./replace_instrumented.exe '@@' '>f'  < $ROOT/inputs/input/ruin.892 > ./outputs/t3405

./replace_instrumented.exe '@@' '?'  < $ROOT/inputs/input/ruin.1127 > ./outputs/t3406

./replace_instrumented.exe '@@' '?'  < $ROOT/inputs/input/ruin.649 > ./outputs/t3407

./replace_instrumented.exe '@@' '?+'  < $ROOT/inputs/input/ruin.1397 > ./outputs/t3408

./replace_instrumented.exe '@@' '@%5i%WdPe=U{3rY>R'\''EL$Mdy:Qrxi_{?'  < $ROOT/inputs/input/ruin.1739 > ./outputs/t3409

./replace_instrumented.exe '@@' '@'  < $ROOT/inputs/input/ruin.175 > ./outputs/t3410

./replace_instrumented.exe '@@' '@?JRm_9'  < $ROOT/inputs/input/ruin.550 > ./outputs/t3411

./replace_instrumented.exe '@@' '@`CUC~C,?o:8E|f?3unMs?t#2b'  < $ROOT/inputs/input/ruin.870 > ./outputs/t3412

./replace_instrumented.exe '@@' 'A$coJ-5Zw<>TQ[kxxEuNHcPly\'  < $ROOT/inputs/input/ruin.1858 > ./outputs/t3413

./replace_instrumented.exe '@@' 'Azy);2Sc&A?(cD~7xuuFC`L7'  < $ROOT/inputs/input/ruin.1139 > ./outputs/t3414

./replace_instrumented.exe '@@' 'B'  < $ROOT/inputs/input/ruin.1368 > ./outputs/t3415

./replace_instrumented.exe '@@' 'B'  < $ROOT/inputs/input/ruin.1439 > ./outputs/t3416

./replace_instrumented.exe '@@' 'B<'  < $ROOT/inputs/input/ruin.1363 > ./outputs/t3417

./replace_instrumented.exe '@@' 'BBWIUEb}'  < $ROOT/inputs/input/ruin.1655 > ./outputs/t3418

./replace_instrumented.exe '@@' 'Bn[E#7FzkrT]aFS#Q+f 10GtF?_'  < $ROOT/inputs/input/ruin.97 > ./outputs/t3419

./replace_instrumented.exe '@@' 'B|n]$]<1fqRl]Hg!'  < $ROOT/inputs/input/ruin.915 > ./outputs/t3420

./replace_instrumented.exe '@@' 'C7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mps2S11T]8KHwx~kv1uQJ*#%bdM,!Lt5'  < $ROOT/inputs/input/ruin.1062 > ./outputs/t3421

./replace_instrumented.exe '@@' 'C^S+RY)_\a|PHKS5n~SFU?b'  < $ROOT/inputs/input/ruin.1714 > ./outputs/t3422

./replace_instrumented.exe '@@' 'Cq_c#\FHg\Kr?>3*!m/A*_3}{7j1U3TsP)_smq|%~P-OCQ9`6-MO<k4"SN'\''n80N4Y> q^ZY{W5_7'  < $ROOT/inputs/input/ruin.1435 > ./outputs/t3423

./replace_instrumented.exe '@@' 'Cs2S11T]8KHwx~kv1uQJ*#%bdM,!Lt5'  < $ROOT/inputs/input/ruin.1062 > ./outputs/t3424

./replace_instrumented.exe '@@' 'D'  < $ROOT/inputs/input/ruin.1690 > ./outputs/t3425

./replace_instrumented.exe '@@' 'D'  < $ROOT/inputs/input/ruin.246 > ./outputs/t3426

./replace_instrumented.exe '@@' 'DXrcj(\#39@'  < $ROOT/inputs/input/ruin.215 > ./outputs/t3427

./replace_instrumented.exe '@@' 'E!*gXlM6RC\lG'  < $ROOT/inputs/input/ruin.34 > ./outputs/t3428

./replace_instrumented.exe '@@' 'E9p\6X[t<jnR3{*3PQSno!);('  < $ROOT/inputs/input/ruin.1256 > ./outputs/t3429

./replace_instrumented.exe '@@' 'ELw~`C@PQ)'  < $ROOT/inputs/input/ruin.1722 > ./outputs/t3430

./replace_instrumented.exe '@@' 'EjK?X#{Ur>oN|wXPT$BQRg:T$~BH;PLmx ?08~{Ig0Ze7`.|(kzu3o_s/"5"5\k1ylh)q;!<1>w$C1qd'  < $ROOT/inputs/input/ruin.265 > ./outputs/t3431

./replace_instrumented.exe '@@' 'Etz|'  < $ROOT/inputs/input/ruin.667 > ./outputs/t3432

./replace_instrumented.exe '@@' 'F'  < $ROOT/inputs/input/ruin.802 > ./outputs/t3433

./replace_instrumented.exe '@@' 'G'  < $ROOT/inputs/input/ruin.397 > ./outputs/t3434

./replace_instrumented.exe '@@' 'G_'  < $ROOT/inputs/input/ruin.1779 > ./outputs/t3435

./replace_instrumented.exe '@@' 'G`$$:VB%$M[$ErHos~U]`5+'  < $ROOT/inputs/input/ruin.379 > ./outputs/t3436

./replace_instrumented.exe '@@' 'H&'  < $ROOT/inputs/input/ruin.1074 > ./outputs/t3437

./replace_instrumented.exe '@@' 'H4uOP@dgu<-LyyKn+[L@'  < $ROOT/inputs/input/ruin.682 > ./outputs/t3438

./replace_instrumented.exe '@@' 'HI;TdGuR1D8'  < $ROOT/inputs/input/ruin.1935 > ./outputs/t3439

./replace_instrumented.exe '@@' 'HP;~lm[ DxA!90Db}UH/ZEruRC'  < $ROOT/inputs/input/ruin.1487 > ./outputs/t3440

./replace_instrumented.exe '@@' 'Hb'  < $ROOT/inputs/input/ruin.273 > ./outputs/t3441

./replace_instrumented.exe '@@' 'I'  < $ROOT/inputs/input/ruin.1306 > ./outputs/t3442

./replace_instrumented.exe '@@' 'I\/As)Z}7*%*i>17(z_L'  < $ROOT/inputs/input/ruin.559 > ./outputs/t3443

./replace_instrumented.exe '@@' 'In9JjnCwGVggl=k&wnK}7ke)zG>.>[Bvgi;4W'  < $ROOT/inputs/input/ruin.249 > ./outputs/t3444

./replace_instrumented.exe '@@' 'J'  < $ROOT/inputs/input/ruin.117 > ./outputs/t3445

./replace_instrumented.exe '@@' 'K7+%7`\*l.EL,'  < $ROOT/inputs/input/ruin.1657 > ./outputs/t3446

./replace_instrumented.exe '@@' 'KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@e'  < $ROOT/inputs/input/ruin.1036 > ./outputs/t3447

./replace_instrumented.exe '@@' 'L$0Ky;c.R1F>Tw"W:^'  < $ROOT/inputs/input/ruin.225 > ./outputs/t3448

./replace_instrumented.exe '@@' 'L'  < $ROOT/inputs/input/ruin.1203 > ./outputs/t3449

./replace_instrumented.exe '@@' 'L'  < $ROOT/inputs/input/ruin.689 > ./outputs/t3450

./replace_instrumented.exe '@@' 'L'  < $ROOT/inputs/input/ruin.720 > ./outputs/t3451

./replace_instrumented.exe '@@' 'LFmqS#J=6aq\=6iN(T_?#?RzO y5ZA2'\''zX%~4b!nf$}Nmg'\'''  < $ROOT/inputs/input/ruin.207 > ./outputs/t3452

./replace_instrumented.exe '@@' 'LTkhRoY X0O>]PcG'  < $ROOT/inputs/input/ruin.950 > ./outputs/t3453

./replace_instrumented.exe '@@' 'Lt2GEbuGo,qE01mO6yS"\V'  < $ROOT/inputs/input/ruin.1700 > ./outputs/t3454

./replace_instrumented.exe '@@' 'N!'  < $ROOT/inputs/input/ruin.546 > ./outputs/t3455

./replace_instrumented.exe '@@' 'N'  < $ROOT/inputs/input/ruin.137 > ./outputs/t3456

./replace_instrumented.exe '@@' 'N'  < $ROOT/inputs/input/ruin.737 > ./outputs/t3457

./replace_instrumented.exe '@@' 'NGN4ij?opj(>9`>.1rUs0vJ{7?'  < $ROOT/inputs/input/ruin.1575 > ./outputs/t3458

./replace_instrumented.exe '@@' 'NGyC?;*O3Y+25aQIdV'  < $ROOT/inputs/input/ruin.909 > ./outputs/t3459

./replace_instrumented.exe '@@' 'NaZ'  < $ROOT/inputs/input/ruin.1588 > ./outputs/t3460

./replace_instrumented.exe '@@' 'O8(CoPrxFq+.ZM|WW+0YtwT[\iP85^ ('  < $ROOT/inputs/input/ruin.975 > ./outputs/t3461

./replace_instrumented.exe '@@' 'OE<W=ZndLYQd%p}lN|>'  < $ROOT/inputs/input/ruin.1796 > ./outputs/t3462

./replace_instrumented.exe '@@' 'Of?,N@rdX*]]Px\#0)K[1C'  < $ROOT/inputs/input/ruin.1793 > ./outputs/t3463

./replace_instrumented.exe '@@' 'P"zPgA08HQ_'\''1"'\''3_WC+.cmt3Rh^:'  < $ROOT/inputs/input/ruin.1408 > ./outputs/t3464

./replace_instrumented.exe '@@' 'P'  < $ROOT/inputs/input/ruin.1745 > ./outputs/t3465

./replace_instrumented.exe '@@' 'P:g"14" j0^]'\'':DK70 \o4AP}[z~>lxPCCM9m*\BwO%d!'  < $ROOT/inputs/input/ruin.1559 > ./outputs/t3466

./replace_instrumented.exe '@@' 'P`G\'  < $ROOT/inputs/input/ruin.917 > ./outputs/t3467

./replace_instrumented.exe '@@' 'Po[uSP.I_y!>nh:I7T"u$=>:mwq+5Q-(%'  < $ROOT/inputs/input/ruin.958 > ./outputs/t3468

./replace_instrumented.exe '@@' 'Q0GMm0#K!hHA~y! iDG`*sh0I@'  < $ROOT/inputs/input/ruin.547 > ./outputs/t3469

./replace_instrumented.exe '@@' 'QZ}nu?<N_m}]**y62k2AXk9'  < $ROOT/inputs/input/ruin.1286 > ./outputs/t3470

./replace_instrumented.exe '@@' 'R-Q;*rnq'  < $ROOT/inputs/input/ruin.805 > ./outputs/t3471

./replace_instrumented.exe '@@' 'Rz!7iD,x8DBW^[[bVr+@ZMKp+m"4.Rh?;:t>.={ZY~m'  < $ROOT/inputs/input/ruin.331 > ./outputs/t3472

./replace_instrumented.exe '@@' 'S1G=SPJxh*Gd}R$vSwz{HEo.N'  < $ROOT/inputs/input/ruin.1190 > ./outputs/t3473

./replace_instrumented.exe '@@' 'Sqn}f'  < $ROOT/inputs/input/ruin.1947 > ./outputs/t3474

./replace_instrumented.exe '@@' 'T'  < $ROOT/inputs/input/ruin.1330 > ./outputs/t3475

./replace_instrumented.exe '@@' 'T?^S|}'\''!\>bF'\''5T'  < $ROOT/inputs/input/ruin.1250 > ./outputs/t3476

./replace_instrumented.exe '@@' 'TLE8-~GaWCbc;@/F@l`'  < $ROOT/inputs/input/ruin.1896 > ./outputs/t3477

./replace_instrumented.exe '@@' 'TQ$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?Q$$7 E(2%8Q"fiw^tLQ$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?Wk2\)>Wg( 6h8z$?Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?Q$$7 E(2%8Q"fiw^tLWk2\)>Wg( 6h8z$?[*[0-9]*@0-9](*'  < $ROOT/inputs/input/ruin.1330 > ./outputs/t3478

./replace_instrumented.exe '@@' 'TbjIYx|Qb}}TKt5QS<'  < $ROOT/inputs/input/ruin.1187 > ./outputs/t3479

./replace_instrumented.exe '@@' 'U'  < $ROOT/inputs/input/ruin.1742 > ./outputs/t3480

./replace_instrumented.exe '@@' 'U'  < $ROOT/inputs/input/ruin.652 > ./outputs/t3481

./replace_instrumented.exe '@@' 'UYO1pYxIn73gID*+`{/f6 /NAhY;g+G#-QVuqKSuP2}FO!q'  < $ROOT/inputs/input/ruin.669 > ./outputs/t3482

./replace_instrumented.exe '@@' 'V'  < $ROOT/inputs/input/ruin.778 > ./outputs/t3483

./replace_instrumented.exe '@@' 'V8X['  < $ROOT/inputs/input/ruin.721 > ./outputs/t3484

./replace_instrumented.exe '@@' 'V\-oNf0a>?5'  < $ROOT/inputs/input/ruin.1291 > ./outputs/t3485

./replace_instrumented.exe '@@' 'W'  < $ROOT/inputs/input/ruin.1384 > ./outputs/t3486

./replace_instrumented.exe '@@' 'W'  < $ROOT/inputs/input/ruin.925 > ./outputs/t3487

./replace_instrumented.exe '@@' 'W*B'\''=WR-U}+3n UE1`uj#w3nOzt,'  < $ROOT/inputs/input/ruin.941 > ./outputs/t3488

./replace_instrumented.exe '@@' 'WJfW@~bR70@TPOC>W^rlP4YMsOx}sZH)<N"whTH\!JP'  < $ROOT/inputs/input/ruin.1681 > ./outputs/t3489

./replace_instrumented.exe '@@' 'X5,D~^}Uezv[(n?i4@udSpRjK)2)hOy!D9DM{ROIR>6:p.9k`w@|'  < $ROOT/inputs/input/ruin.1549 > ./outputs/t3490

./replace_instrumented.exe '@@' 'Xz'  < $ROOT/inputs/input/ruin.1863 > ./outputs/t3491

./replace_instrumented.exe '@@' 'Y'  < $ROOT/inputs/input/ruin.1211 > ./outputs/t3492

./replace_instrumented.exe '@@' 'YCoe'  < $ROOT/inputs/input/ruin.1246 > ./outputs/t3493

./replace_instrumented.exe '@@' 'YRBzjkTk&^o]x&mr;k'  < $ROOT/inputs/input/ruin.126 > ./outputs/t3494

./replace_instrumented.exe '@@' 'Y~3WQ^TDf.W]8c@LJ`*H2xp]e8-106jkG3TMg+;,1I;3-'  < $ROOT/inputs/input/ruin.1583 > ./outputs/t3495

./replace_instrumented.exe '@@' 'Z'  < $ROOT/inputs/input/ruin.732 > ./outputs/t3496

./replace_instrumented.exe '@@' '['\''o[}k")5^ZB0Q`x/^Di>;o%m2R@$B'  < $ROOT/inputs/input/ruin.37 > ./outputs/t3497

./replace_instrumented.exe '@@' '[5K_$J[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!Ur[8o>B'\''+shEe>eT4x )#X}](v'\''=1Gx2W&!UrsD[0-9]*[a-b]'  < $ROOT/inputs/input/ruin.1329 > ./outputs/t3498

./replace_instrumented.exe '@@' '[5K_$JsD'  < $ROOT/inputs/input/ruin.1329 > ./outputs/t3499

./replace_instrumented.exe '@@' '[jJ3"kdXY?.O _q-kqD7^;wzC{m@'  < $ROOT/inputs/input/ruin.352 > ./outputs/t3500

./replace_instrumented.exe '@@' '\"8rH'  < $ROOT/inputs/input/ruin.483 > ./outputs/t3501

./replace_instrumented.exe '@@' '\Qch=P"+VUY>@V35oj['  < $ROOT/inputs/input/ruin.1447 > ./outputs/t3502

./replace_instrumented.exe '@@' '\xc'  < $ROOT/inputs/input/ruin.86 > ./outputs/t3503

./replace_instrumented.exe '@@' ']'  < $ROOT/inputs/input/ruin.1597 > ./outputs/t3504

./replace_instrumented.exe '@@' ']A;Z'  < $ROOT/inputs/input/ruin.916 > ./outputs/t3505

./replace_instrumented.exe '@@' '^'  < $ROOT/inputs/input/ruin.1150 > ./outputs/t3506

./replace_instrumented.exe '@@' '^'  < $ROOT/inputs/input/ruin.1710 > ./outputs/t3507

./replace_instrumented.exe '@@' '_'  < $ROOT/inputs/input/ruin.442 > ./outputs/t3508

./replace_instrumented.exe '@@' '_'  < $ROOT/inputs/input/ruin.964 > ./outputs/t3509

./replace_instrumented.exe '@@' '_)yu\4xy*BO>-TK${EHB'  < $ROOT/inputs/input/ruin.728 > ./outputs/t3510

./replace_instrumented.exe '@@' '_AtlH$9q>kcWc*%x:UL}T5bDIP~oV&p,uD-r'\''RKFZ~<nkYi}'  < $ROOT/inputs/input/ruin.621 > ./outputs/t3511

./replace_instrumented.exe '@@' '_Y}LC6.Z_G:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JGbw.3gyV:Q0er!>'  < $ROOT/inputs/input/ruin.1041 > ./outputs/t3512

./replace_instrumented.exe '@@' '_Y}LC6.Z_Gbw.3gyV:Q0er!>'  < $ROOT/inputs/input/ruin.1041 > ./outputs/t3513

./replace_instrumented.exe '@@' '__v[0r+_odTj'\''e>-[`,Qc9/rT'  < $ROOT/inputs/input/ruin.989 > ./outputs/t3514

./replace_instrumented.exe '@@' '`'  < $ROOT/inputs/input/ruin.1213 > ./outputs/t3515

./replace_instrumented.exe '@@' '`'  < $ROOT/inputs/input/ruin.1963 > ./outputs/t3516

./replace_instrumented.exe '@@' '`'  < $ROOT/inputs/input/ruin.850 > ./outputs/t3517

./replace_instrumented.exe '@@' '`'  < $ROOT/inputs/input/ruin.992 > ./outputs/t3518

./replace_instrumented.exe '@@' 'a'  < $ROOT/inputs/input/ruin.1215 > ./outputs/t3519

./replace_instrumented.exe '@@' 'a'  < $ROOT/inputs/input/ruin.1259 > ./outputs/t3520

./replace_instrumented.exe '@@' 'a'  < $ROOT/inputs/input/ruin.84 > ./outputs/t3521

./replace_instrumented.exe '@@' 'a0v,-tcE^\x'  < $ROOT/inputs/input/ruin.1761 > ./outputs/t3522

./replace_instrumented.exe '@@' 'b'  < $ROOT/inputs/input/ruin.1078 > ./outputs/t3523

./replace_instrumented.exe '@@' 'c'  < $ROOT/inputs/input/ruin.235 > ./outputs/t3524

./replace_instrumented.exe '@@' 'c^C0V'  < $ROOT/inputs/input/ruin.771 > ./outputs/t3525

./replace_instrumented.exe '@@' 'dR1!L@k(&/ZgsZs,*d\'  < $ROOT/inputs/input/ruin.367 > ./outputs/t3526

./replace_instrumented.exe '@@' 'e!gTC@po-K"lq@{;#4Pt:in1 p.!+` ]dLa5'  < $ROOT/inputs/input/ruin.297 > ./outputs/t3527

./replace_instrumented.exe '@@' 'e'  < $ROOT/inputs/input/ruin.1036 > ./outputs/t3528

./replace_instrumented.exe '@@' 'e'  < $ROOT/inputs/input/ruin.323 > ./outputs/t3529

./replace_instrumented.exe '@@' 'e;o1qYfx@'  < $ROOT/inputs/input/ruin.661 > ./outputs/t3530

./replace_instrumented.exe '@@' 'eT@aR6@4AoERO"scF)a"dqsE)GaEU$d~$U<<zIU>P>V,&'  < $ROOT/inputs/input/ruin.1183 > ./outputs/t3531

./replace_instrumented.exe '@@' 'e^O;EJ5?6DU!Sw"B%ah'\''m*lY_`a'  < $ROOT/inputs/input/ruin.1598 > ./outputs/t3532

./replace_instrumented.exe '@@' 'ej5i-U/6Q5@m>TzI{D/Y`Z#2'  < $ROOT/inputs/input/ruin.52 > ./outputs/t3533

./replace_instrumented.exe '@@' 'f'  < $ROOT/inputs/input/ruin.1000 > ./outputs/t3534

./replace_instrumented.exe '@@' 'f'  < $ROOT/inputs/input/ruin.789 > ./outputs/t3535

./replace_instrumented.exe '@@' 'f+PSsiDSRQ/*(D(Bq:LX?JXpsZ A1JT]-^Y!wA%ms'  < $ROOT/inputs/input/ruin.848 > ./outputs/t3536

./replace_instrumented.exe '@@' 'f?P&IzJ":,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8CcZ'  < $ROOT/inputs/input/ruin.82 > ./outputs/t3537

./replace_instrumented.exe '@@' 'f?P&IzJ":,V00zS8|LFd{fgr(z@L5ZE{\?7<iFeAt8CcZ'  < $ROOT/inputs/input/ruin.82 > ./outputs/t3538

./replace_instrumented.exe '@@' 'fO$hc9Vunm^fRBx+3N{{!urM]pAS@xFpr'\'''\''Bs7{E6dX`JP-d'  < $ROOT/inputs/input/ruin.1147 > ./outputs/t3539

./replace_instrumented.exe '@@' 'fQ`{IB:H3a=WSdme}w6|h!vb$*%!K;Y* R-b3=Mi1glBYW>x]t<h'  < $ROOT/inputs/input/ruin.1792 > ./outputs/t3540

./replace_instrumented.exe '@@' 'g'  < $ROOT/inputs/input/ruin.1773 > ./outputs/t3541

./replace_instrumented.exe '@@' 'g9`YM,ozyUxQqpQAHH/sK++]'  < $ROOT/inputs/input/ruin.205 > ./outputs/t3542

./replace_instrumented.exe '@@' 'gM4Iz9`JS5`'\''ZhDPT'  < $ROOT/inputs/input/ruin.1151 > ./outputs/t3543

./replace_instrumented.exe '@@' 'gV8;%IAhxp(4]=AqH&'\''feFXY&8>^:%j,(\'  < $ROOT/inputs/input/ruin.1311 > ./outputs/t3544

./replace_instrumented.exe '@@' 'h'  < $ROOT/inputs/input/ruin.1129 > ./outputs/t3545

./replace_instrumented.exe '@@' 'h'  < $ROOT/inputs/input/ruin.1223 > ./outputs/t3546

./replace_instrumented.exe '@@' 'hAh7G[Wy'  < $ROOT/inputs/input/ruin.807 > ./outputs/t3547

./replace_instrumented.exe '@@' 'i'  < $ROOT/inputs/input/ruin.509 > ./outputs/t3548

./replace_instrumented.exe '@@' 'i3&YEy?NDqT |ye3E+7WmBD#X-J4KI'  < $ROOT/inputs/input/ruin.422 > ./outputs/t3549

./replace_instrumented.exe '@@' 'j'  < $ROOT/inputs/input/ruin.1276 > ./outputs/t3550

./replace_instrumented.exe '@@' 'j'  < $ROOT/inputs/input/ruin.1719 > ./outputs/t3551

./replace_instrumented.exe '@@' 'j'  < $ROOT/inputs/input/ruin.424 > ./outputs/t3552

./replace_instrumented.exe '@@' 'j'  < $ROOT/inputs/input/ruin.904 > ./outputs/t3553

./replace_instrumented.exe '@@' 'j'  < $ROOT/inputs/input/ruin.996 > ./outputs/t3554

./replace_instrumented.exe '@@' 'j'\''lp`]]b|XBOU+;%Z&7~pp;7VFA83x(zkK{%9."'  < $ROOT/inputs/input/ruin.1218 > ./outputs/t3555

./replace_instrumented.exe '@@' 'j6A?tQQCI+w[(+e0(\M2l'  < $ROOT/inputs/input/ruin.1530 > ./outputs/t3556

./replace_instrumented.exe '@@' 'j?'  < $ROOT/inputs/input/ruin.1855 > ./outputs/t3557

./replace_instrumented.exe '@@' 'jjlqOhlK})+YNyJREVn`'  < $ROOT/inputs/input/ruin.1483 > ./outputs/t3558

./replace_instrumented.exe '@@' 'k'  < $ROOT/inputs/input/ruin.1772 > ./outputs/t3559

./replace_instrumented.exe '@@' 'k'  < $ROOT/inputs/input/ruin.68 > ./outputs/t3560

./replace_instrumented.exe '@@' 'k8lIP/^lq^1Y+fyL*]:A/&$>QU&rMLju9)gZJn7t0L'  < $ROOT/inputs/input/ruin.852 > ./outputs/t3561

./replace_instrumented.exe '@@' 'k90v&+GhOb?3^)t8w^5eB 8n+w|c,}dnl|/9zv:amXVHU<2LtF/'  < $ROOT/inputs/input/ruin.1673 > ./outputs/t3562

./replace_instrumented.exe '@@' 'k`px>G$3CtAt8QtV'\''95t'  < $ROOT/inputs/input/ruin.1568 > ./outputs/t3563

./replace_instrumented.exe '@@' 'kj{>|jBXaQi+U6Z,?.Z2zf!z,54K};>F^h1W &6!-jfKY=;7dzK5&Jd;`@%"a_5E'  < $ROOT/inputs/input/ruin.492 > ./outputs/t3564

./replace_instrumented.exe '@@' 'l'  < $ROOT/inputs/input/ruin.1148 > ./outputs/t3565

./replace_instrumented.exe '@@' 'l'  < $ROOT/inputs/input/ruin.1421 > ./outputs/t3566

./replace_instrumented.exe '@@' 'lZ'  < $ROOT/inputs/input/ruin.383 > ./outputs/t3567

./replace_instrumented.exe '@@' 'm'  < $ROOT/inputs/input/ruin.1181 > ./outputs/t3568

./replace_instrumented.exe '@@' 'm'  < $ROOT/inputs/input/ruin.1738 > ./outputs/t3569

./replace_instrumented.exe '@@' 'mmca'\''y]fF 5 '  < $ROOT/inputs/input/ruin.200 > ./outputs/t3570

./replace_instrumented.exe '@@' 'n'  < $ROOT/inputs/input/ruin.795 > ./outputs/t3571

./replace_instrumented.exe '@@' 'nZQNac5[{EJpLJrR>H7DDaGqvR'  < $ROOT/inputs/input/ruin.912 > ./outputs/t3572

./replace_instrumented.exe '@@' 'nj*'  < $ROOT/inputs/input/ruin.565 > ./outputs/t3573

./replace_instrumented.exe '@@' 'o'  < $ROOT/inputs/input/ruin.1479 > ./outputs/t3574

./replace_instrumented.exe '@@' 'p<'  < $ROOT/inputs/input/ruin.1510 > ./outputs/t3575

./replace_instrumented.exe '@@' 'pJAr(P$X'  < $ROOT/inputs/input/ruin.1426 > ./outputs/t3576

./replace_instrumented.exe '@@' 'pTk>mo0}9UV`\akAM'  < $ROOT/inputs/input/ruin.488 > ./outputs/t3577

./replace_instrumented.exe '@@' 'pUDenGaV4uuTBp'  < $ROOT/inputs/input/ruin.707 > ./outputs/t3578

./replace_instrumented.exe '@@' 'q'  < $ROOT/inputs/input/ruin.322 > ./outputs/t3579

./replace_instrumented.exe '@@' 'q'  < $ROOT/inputs/input/ruin.610 > ./outputs/t3580

./replace_instrumented.exe '@@' 'q'  < $ROOT/inputs/input/ruin.650 > ./outputs/t3581

./replace_instrumented.exe '@@' 'r'  < $ROOT/inputs/input/ruin.1985 > ./outputs/t3582

./replace_instrumented.exe '@@' 'r'  < $ROOT/inputs/input/ruin.602 > ./outputs/t3583

./replace_instrumented.exe '@@' 'r'  < $ROOT/inputs/input/ruin.938 > ./outputs/t3584

./replace_instrumented.exe '@@' 'r(e <\Q$X[8Qn-^g9\yaGf=`ipV'  < $ROOT/inputs/input/ruin.1514 > ./outputs/t3585

./replace_instrumented.exe '@@' 'rf[8:ZbgT%q{\_J^E@u3)IuxENZ~"v'  < $ROOT/inputs/input/ruin.1584 > ./outputs/t3586

./replace_instrumented.exe '@@' 'rnQ0W'  < $ROOT/inputs/input/ruin.1766 > ./outputs/t3587

./replace_instrumented.exe '@@' 's'  < $ROOT/inputs/input/ruin.157 > ./outputs/t3588

./replace_instrumented.exe '@@' 's'  < $ROOT/inputs/input/ruin.1875 > ./outputs/t3589

./replace_instrumented.exe '@@' 's+jsq+sqp33oy|>sXt&.w<(EJ[$_J'  < $ROOT/inputs/input/ruin.579 > ./outputs/t3590

./replace_instrumented.exe '@@' 'sF1w_ggvWylg>yMc]h,D)_+_$r4m\$Vh '  < $ROOT/inputs/input/ruin.55 > ./outputs/t3591

./replace_instrumented.exe '@@' 't+b%Ev`=tGgLKIdrp'  < $ROOT/inputs/input/ruin.1596 > ./outputs/t3592

./replace_instrumented.exe '@@' 'tW'  < $ROOT/inputs/input/ruin.1247 > ./outputs/t3593

./replace_instrumented.exe '@@' 'u]KpAv6)cN.l7mY\p?:,SP|'  < $ROOT/inputs/input/ruin.1053 > ./outputs/t3594

./replace_instrumented.exe '@@' 'v'  < $ROOT/inputs/input/ruin.1046 > ./outputs/t3595

./replace_instrumented.exe '@@' 'v'  < $ROOT/inputs/input/ruin.1674 > ./outputs/t3596

./replace_instrumented.exe '@@' 'v'  < $ROOT/inputs/input/ruin.254 > ./outputs/t3597

./replace_instrumented.exe '@@' 'v;b=dV4;]ygerT'  < $ROOT/inputs/input/ruin.818 > ./outputs/t3598

./replace_instrumented.exe '@@' 'v<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs'  < $ROOT/inputs/input/ruin.1046 > ./outputs/t3599

./replace_instrumented.exe '@@' 'vDAI-/lT.qya'  < $ROOT/inputs/input/ruin.359 > ./outputs/t3600

./replace_instrumented.exe '@@' 'vZ`=_1/f&:WSB'\''.)vc&tN%d}Vf2%=]b>s/rYKaS]"F0l(W~#Ps#9FZYYdaNVl.wdL.'  < $ROOT/inputs/input/ruin.1267 > ./outputs/t3601

./replace_instrumented.exe '@@' 'wr'  < $ROOT/inputs/input/ruin.1340 > ./outputs/t3602

./replace_instrumented.exe '@@' 'x'  < $ROOT/inputs/input/ruin.1315 > ./outputs/t3603

./replace_instrumented.exe '@@' 'x-4pr$|OeG~}/59%x9n9muL1?V>i)'  < $ROOT/inputs/input/ruin.1656 > ./outputs/t3604

./replace_instrumented.exe '@@' 'xN(q} B`^qJME0vUM3iTnc\w\'  < $ROOT/inputs/input/ruin.593 > ./outputs/t3605

./replace_instrumented.exe '@@' 'y'  < $ROOT/inputs/input/ruin.1059 > ./outputs/t3606

./replace_instrumented.exe '@@' 'y'\''O;wCB`/IC#tko'\''ztR%D)S}WK}htv'\''CdX[k69[r'  < $ROOT/inputs/input/ruin.1754 > ./outputs/t3607

./replace_instrumented.exe '@@' 'y7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp'  < $ROOT/inputs/input/ruin.1059 > ./outputs/t3608

./replace_instrumented.exe '@@' 'z'  < $ROOT/inputs/input/ruin.62 > ./outputs/t3609

./replace_instrumented.exe '@@' '{/ cC;3\[1Xjlmdn*[4(hG8'  < $ROOT/inputs/input/ruin.1881 > ./outputs/t3610

./replace_instrumented.exe '@@' '{h[2n=I&4%W9N^8K.k1(0n)Pus1!i|hF&S&%_X61v<D8!JQGc)U1>Q05\&=r v8'  < $ROOT/inputs/input/ruin.1378 > ./outputs/t3611

./replace_instrumented.exe '@@' '|'  < $ROOT/inputs/input/ruin.315 > ./outputs/t3612

./replace_instrumented.exe '@@' '|9d|RN?*4< I:m63#['  < $ROOT/inputs/input/ruin.883 > ./outputs/t3613

./replace_instrumented.exe '@@' '|=}'  < $ROOT/inputs/input/ruin.353 > ./outputs/t3614

./replace_instrumented.exe '@@' '|lf=?(vz<r0o_RA10&UVxvVk`*VTC%}VlIEoG7] '  < $ROOT/inputs/input/ruin.1953 > ./outputs/t3615

./replace_instrumented.exe '@@' '}&5EvYBv%T2.bCUUMp7hd>P/EBX&~26D?2z|YJ)Ql ERswc'  < $ROOT/inputs/input/ruin.1741 > ./outputs/t3616

./replace_instrumented.exe '@@' '}t'  < $ROOT/inputs/input/ruin.578 > ./outputs/t3617

./replace_instrumented.exe '@@'\''93QTn'   < $ROOT/inputs/input/ruin.1264 > ./outputs/t3618

./replace_instrumented.exe '@@'\''93QTn' 'O*9 p]M4:=D71<S{~2V6mPa'  < $ROOT/inputs/input/ruin.1264 > ./outputs/t3619

./replace_instrumented.exe '@@'\''@n' 'mF%'  < $ROOT/inputs/input/ruin.1541 > ./outputs/t3620

./replace_instrumented.exe '@@'\''B9z^p-f]Eq/' 'SH{S$QV0"e<bz-[(*Z9Q'  < $ROOT/inputs/input/ruin.635 > ./outputs/t3621

./replace_instrumented.exe '@@'\''B9z^p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9Q' 'SH{S$QV0"e<b[0-9]--*[^a-c][0-9]--*[^a-c][0-9]--*[^a-c][0-9]--*[^a-c]z-[(*Z9Q'  < $ROOT/inputs/input/ruin.635 > ./outputs/t3622

./replace_instrumented.exe '@@'\''F$S9yt4Q=q' 'Nkto_//y?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe"'  < $ROOT/inputs/input/ruin.1997 > ./outputs/t3623

./replace_instrumented.exe '@@'\''F$S9yt4Q=q*$' 'Nkto_//y?Stj%,|9I{FxV*qi!{_(dn*K9`$woNwuJe"'  < $ROOT/inputs/input/ruin.1997 > ./outputs/t3624

./replace_instrumented.exe '@@'\''Z(T[TC' '<'  < $ROOT/inputs/input/ruin.1079 > ./outputs/t3625

./replace_instrumented.exe '@@'\''_h' 'C'  < $ROOT/inputs/input/ruin.1379 > ./outputs/t3626

./replace_instrumented.exe '@@'\''j?' 'l'  < $ROOT/inputs/input/ruin.307 > ./outputs/t3627

./replace_instrumented.exe '@@)' '6wTwyN~#+^?38P>|WqutbRgK3V[{^{qDMM*E*6PJw?A<oo?&udbM.8/9{3H@;uQ-okq.3o#U+wFAV'  < $ROOT/inputs/input/ruin.158 > ./outputs/t3628

./replace_instrumented.exe '@@*$' '#'  < $ROOT/inputs/input/ruin.1116 > ./outputs/t3629

./replace_instrumented.exe '@@*$' '+'  < $ROOT/inputs/input/ruin.2000 > ./outputs/t3630

./replace_instrumented.exe '@@*$' '4'  < $ROOT/inputs/input/ruin.1992 > ./outputs/t3631

./replace_instrumented.exe '@@*$' 'E9p\6X[t<jnR3{*3PQSno!);('  < $ROOT/inputs/input/ruin.1256 > ./outputs/t3632

./replace_instrumented.exe '@@*$' 'T/'  < $ROOT/inputs/input/ruin.1109 > ./outputs/t3633

./replace_instrumented.exe '@@*$' 'T?^S|}'\''!\>bF'\''5T'  < $ROOT/inputs/input/ruin.1250 > ./outputs/t3634

./replace_instrumented.exe '@@*$' 'YCoe'  < $ROOT/inputs/input/ruin.1246 > ./outputs/t3635

./replace_instrumented.exe '@@*$' 'tW'  < $ROOT/inputs/input/ruin.1247 > ./outputs/t3636

./replace_instrumented.exe '@@*' ''  < $ROOT/inputs/input/ruin.1132 > ./outputs/t3637

./replace_instrumented.exe '@@*' ';Jq'  < $ROOT/inputs/input/ruin.1645 > ./outputs/t3638

./replace_instrumented.exe '@@*' '>(jLZz>>Lg~n<xr62=%!LO#hy}{eo>9D_'  < $ROOT/inputs/input/ruin.800 > ./outputs/t3639

./replace_instrumented.exe '@@*' '}7Qy)}SI'\''nw#bVsE+<-OwA.8oYuwKHLNr4bFf'  < $ROOT/inputs/input/ruin.1621 > ./outputs/t3640

./replace_instrumented.exe '@@*'\'',^P&Sh6@@' '(&S8w;8MY'  < $ROOT/inputs/input/ruin.1119 > ./outputs/t3641

./replace_instrumented.exe '@@*'\'*$',^P&Sh6@@' '(&S8w;8MY'  < $ROOT/inputs/input/ruin.1119 > ./outputs/t3642

./replace_instrumented.exe '@@**' '9Jwr6Whlet5:nulL=82){._jluPvUdHD}&'  < $ROOT/inputs/input/ruin.333 > ./outputs/t3643

./replace_instrumented.exe '@@**' 'DR'\''R'\''$x@7uS2EbR[H/q4ml^<1S(?&U_L~_m#^MaWM;'  < $ROOT/inputs/input/ruin.981 > ./outputs/t3644

./replace_instrumented.exe '@@*?' 'a&'  < $ROOT/inputs/temp-test/437.inp.192.1 > ./outputs/t3645

./replace_instrumented.exe '@@*?' 'a&'  < $ROOT/inputs/temp-test/438.inp.192.3 > ./outputs/t3646

./replace_instrumented.exe '@@*?' 'cAcJGn".:*uPb165}4{qxaW\2**HeQ^HrbNvka bpOeC/DmG)u\8bwF'  < $ROOT/inputs/input/ruin.560 > ./outputs/t3647

./replace_instrumented.exe '@@*@n' 'H&b'  < $ROOT/inputs/input/ruin.273 > ./outputs/t3648

./replace_instrumented.exe '@@*[0-9]' '&'  < $ROOT/inputs/temp-test/623.inp.269.1 > ./outputs/t3649

./replace_instrumented.exe '@@*[0-9]' '&'  < $ROOT/inputs/temp-test/624.inp.269.2 > ./outputs/t3650

./replace_instrumented.exe '@@*[0-9]' '&'  < $ROOT/inputs/temp-test/625.inp.269.3 > ./outputs/t3651

./replace_instrumented.exe '@@*[0-9]?--??' 'a&'  < $ROOT/inputs/temp-test/1505.inp.645.1 > ./outputs/t3652

./replace_instrumented.exe '@@*[0-9]?--??' 'a&'  < $ROOT/inputs/temp-test/1506.inp.645.4 > ./outputs/t3653

./replace_instrumented.exe '@@*[9-B]?[^0-9][a-?$' 'a@n'  < $ROOT/inputs/temp-test/2207.inp.934.6 > ./outputs/t3654

./replace_instrumented.exe '@@*[9-B]?[^0-9][a-?' 'a@n'  < $ROOT/inputs/temp-test/2205.inp.934.1 > ./outputs/t3655

./replace_instrumented.exe '@@*[9-B]?[^0-9][a-?' 'a@n'  < $ROOT/inputs/temp-test/2206.inp.934.2 > ./outputs/t3656

./replace_instrumented.exe '@@*[^9-B] *-c*[-$' '&a@%'  < $ROOT/inputs/temp-test/1496.inp.641.6 > ./outputs/t3657

./replace_instrumented.exe '@@*[^9-B] *-c*[-' '&a@%'  < $ROOT/inputs/temp-test/1494.inp.641.1 > ./outputs/t3658

./replace_instrumented.exe '@@*[^9-B] *-c*[-' '&a@%'  < $ROOT/inputs/temp-test/1495.inp.641.2 > ./outputs/t3659

./replace_instrumented.exe '@@*[^a-]?-^*' '&'  < $ROOT/inputs/temp-test/2283.inp.967.1 > ./outputs/t3660

./replace_instrumented.exe '@@*[^a-]?-^*' '&'  < $ROOT/inputs/temp-test/2284.inp.967.3 > ./outputs/t3661

./replace_instrumented.exe '@@*[^a-]?-^*' '&'  < $ROOT/inputs/temp-test/2285.inp.967.4 > ./outputs/t3662

./replace_instrumented.exe '@@*[^j]' '2'  < $ROOT/inputs/input/ruin.544 > ./outputs/t3663

./replace_instrumented.exe '@@-$' 'a@nb@tc'  < $ROOT/inputs/temp-test/1160.inp.499.9 > ./outputs/t3664

./replace_instrumented.exe '@@-' '&a@%'  < $ROOT/inputs/temp-test/412.inp.181.1 > ./outputs/t3665

./replace_instrumented.exe '@@-' '@%&a'  < $ROOT/inputs/temp-test/455.inp.199.1 > ./outputs/t3666

./replace_instrumented.exe '@@-' '@%&a'  < $ROOT/inputs/temp-test/456.inp.199.3 > ./outputs/t3667

./replace_instrumented.exe '@@-' '@{Pu@]R]'  < $ROOT/inputs/input/ruin.790 > ./outputs/t3668

./replace_instrumented.exe '@@-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1158.inp.499.1 > ./outputs/t3669

./replace_instrumented.exe '@@-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1159.inp.499.2 > ./outputs/t3670

./replace_instrumented.exe '@@-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*-[^9-B][^0-9]?*' 'wr'  < $ROOT/inputs/input/ruin.1340 > ./outputs/t3671

./replace_instrumented.exe '@@4['\'']\~s' 'T'  < $ROOT/inputs/input/ruin.537 > ./outputs/t3672

./replace_instrumented.exe '@@:@@' '{a)^[TRRKd]?/7S% SUK1Pu^#_}^E#IZW`i1e>[YZ:Mr~G'  < $ROOT/inputs/input/ruin.446 > ./outputs/t3673

./replace_instrumented.exe '@@?$' 'T/'  < $ROOT/inputs/input/ruin.1109 > ./outputs/t3674

./replace_instrumented.exe '@@?' ')V@/g0LQ"#siS2K8F0=m'  < $ROOT/inputs/input/ruin.113 > ./outputs/t3675

./replace_instrumented.exe '@@?' '0&,p^#I}6fi.kmr6K)xdK(M'\''7Iz}z:3QIG0mEil6xX{(5CsNr(r'  < $ROOT/inputs/input/ruin.527 > ./outputs/t3676

./replace_instrumented.exe '@@?' '6`*o-'  < $ROOT/inputs/input/ruin.1387 > ./outputs/t3677

./replace_instrumented.exe '@@?' '7'  < $ROOT/inputs/input/ruin.498 > ./outputs/t3678

./replace_instrumented.exe '@@?' '<0,s xFuv2Dp'  < $ROOT/inputs/input/ruin.1810 > ./outputs/t3679

./replace_instrumented.exe '@@?' 'WL+gd/H[UWU$h}N[i;#5Qc)X+oU8&I)M-b/F9J! '\''"'\''C'  < $ROOT/inputs/input/ruin.914 > ./outputs/t3680

./replace_instrumented.exe '@@?' 'gUGalF#O'  < $ROOT/inputs/input/ruin.963 > ./outputs/t3681

./replace_instrumented.exe '@@?' 'xZ@G7` /`/o))1@@NO? k5&m<#YcQg)OGD<ORel>4MD'  < $ROOT/inputs/input/ruin.569 > ./outputs/t3682

./replace_instrumented.exe '@@?*' '#'  < $ROOT/inputs/input/ruin.1615 > ./outputs/t3683

./replace_instrumented.exe '@@?*' 'I'  < $ROOT/inputs/input/ruin.1485 > ./outputs/t3684

./replace_instrumented.exe '@@?*' ']'  < $ROOT/inputs/input/ruin.1597 > ./outputs/t3685

./replace_instrumented.exe '@@?*' 'e^O;EJ5?6DU!Sw"B%ah'\''m*lY_`a'  < $ROOT/inputs/input/ruin.1598 > ./outputs/t3686

./replace_instrumented.exe '@@?*' 't+b%Ev`=tGgLKIdrp'  < $ROOT/inputs/input/ruin.1596 > ./outputs/t3687

./replace_instrumented.exe '@@?*' '}7Qy)}SI'\''nw#bVsE+<-OwA.8oYuwKHLNr4bFf'  < $ROOT/inputs/input/ruin.1621 > ./outputs/t3688

./replace_instrumented.exe '@@?A$' 'K'  < $ROOT/inputs/input/ruin.1609 > ./outputs/t3689

./replace_instrumented.exe '@@?A$?*' 'K'  < $ROOT/inputs/input/ruin.1609 > ./outputs/t3690

./replace_instrumented.exe '@@?[^c-a$]' 't'  < $ROOT/inputs/input/ruin.416 > ./outputs/t3691

./replace_instrumented.exe '@@?w$' '7'  < $ROOT/inputs/input/ruin.314 > ./outputs/t3692

./replace_instrumented.exe '@@@!' '5]y50ks{!u}xF93w}f[;WP4&Q4[=4'  < $ROOT/inputs/input/ruin.73 > ./outputs/t3693

./replace_instrumented.exe '@@@/@@[0-9]' 'o'  < $ROOT/inputs/input/ruin.284 > ./outputs/t3694

./replace_instrumented.exe '@@@2*' 'NU'  < $ROOT/inputs/input/ruin.567 > ./outputs/t3695

./replace_instrumented.exe '@@@@$' '+'  < $ROOT/inputs/input/ruin.786 > ./outputs/t3696

./replace_instrumented.exe '@@@@$' 'IvJL"!Kh[JX'\''_wS|r+Z(:B7<xtHS@p38c|cC#}/j#FpjA>;BuZf09%h1jMyFu'  < $ROOT/inputs/input/ruin.1928 > ./outputs/t3697

./replace_instrumented.exe '@@@@' '!+f(~L|L^Uc6wf5)pmPAJjC6yX}^=`D&MGl@W'  < $ROOT/inputs/input/ruin.1920 > ./outputs/t3698

./replace_instrumented.exe '@@@@' '='  < $ROOT/inputs/input/ruin.910 > ./outputs/t3699

./replace_instrumented.exe '@@@@' 'F*)H: O}u'  < $ROOT/inputs/input/ruin.1092 > ./outputs/t3700

./replace_instrumented.exe '@@@@' 'L'  < $ROOT/inputs/input/ruin.389 > ./outputs/t3701

./replace_instrumented.exe '@@@@' 'L'  < $ROOT/inputs/input/ruin.407 > ./outputs/t3702

./replace_instrumented.exe '@@@@' 'T'  < $ROOT/inputs/input/ruin.181 > ./outputs/t3703

./replace_instrumented.exe '@@@@' 'T'  < $ROOT/inputs/input/ruin.885 > ./outputs/t3704

./replace_instrumented.exe '@@@@' '[V]s~wXx-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^-[^a-c][0-9]@[[0-9]*[^0-9]*-[^a-c]@n*^[^M3af'  < $ROOT/inputs/input/ruin.1342 > ./outputs/t3705

./replace_instrumented.exe '@@@@' '[V]s~wXxM3af'  < $ROOT/inputs/input/ruin.1342 > ./outputs/t3706

./replace_instrumented.exe '@@@@' ']~;WpJ>rM%DNS/`+N@R\=W'\''7q((@!7pb&v"'  < $ROOT/inputs/input/ruin.184 > ./outputs/t3707

./replace_instrumented.exe '@@@@' 'iQh&l$RTw@>}2m/i}Jua'\''w_1'\''z1`b&Q9cU'  < $ROOT/inputs/input/ruin.351 > ./outputs/t3708

./replace_instrumented.exe '@@@@' '|J/3~Opz]2uqtMS\~E'  < $ROOT/inputs/input/ruin.803 > ./outputs/t3709

./replace_instrumented.exe '@@@@?' 'w2OuzZ7S6'  < $ROOT/inputs/input/ruin.929 > ./outputs/t3710

./replace_instrumented.exe '@@@@S' 'BZvBw]7~=NB4MK@b'  < $ROOT/inputs/input/ruin.1143 > ./outputs/t3711

./replace_instrumented.exe '@@@@\G$H.|M' 'y&'  < $ROOT/inputs/input/ruin.672 > ./outputs/t3712

./replace_instrumented.exe '@@@`' '3"'  < $ROOT/inputs/input/ruin.1824 > ./outputs/t3713

./replace_instrumented.exe '@@@n' '60&<9:5*f8GULK>.:&6r]A'  < $ROOT/inputs/input/ruin.1321 > ./outputs/t3714

./replace_instrumented.exe '@@@n' ';&.St7,*,FY'\''e2 #PQt_JAdEVyBorNLKtG4,nKOUCw{Tr/J2d]Omr-PWjk+'  < $ROOT/inputs/input/ruin.98 > ./outputs/t3715

./replace_instrumented.exe '@@F' 'f[6_8'  < $ROOT/inputs/input/ruin.1138 > ./outputs/t3716

./replace_instrumented.exe '@@J*' '('  < $ROOT/inputs/input/ruin.1467 > ./outputs/t3717

./replace_instrumented.exe '@@[0-9]*o[0-9]' '$'  < $ROOT/inputs/input/ruin.566 > ./outputs/t3718

./replace_instrumented.exe '@@[>-A]' '%o9j&*k~kjfdI'  < $ROOT/inputs/input/ruin.1080 > ./outputs/t3719

./replace_instrumented.exe '@@[A-G]$' 'O'  < $ROOT/inputs/input/ruin.614 > ./outputs/t3720

./replace_instrumented.exe '@@[A-Gz-}<]' 'I'  < $ROOT/inputs/input/ruin.609 > ./outputs/t3721

./replace_instrumented.exe '@@[^--z]' 'NEW'  < $ROOT/inputs/temp-test/2125.inp.901.1 > ./outputs/t3722

./replace_instrumented.exe '@@[^--z]' 'NEW'  < $ROOT/inputs/temp-test/2126.inp.901.3 > ./outputs/t3723

./replace_instrumented.exe '@@[^--z]' 'NEW'  < $ROOT/inputs/temp-test/2127.inp.901.4 > ./outputs/t3724

./replace_instrumented.exe '@@[^0-9]' '@n'  < $ROOT/inputs/temp-test/1087.inp.468.1 > ./outputs/t3725

./replace_instrumented.exe '@@[^0-9]' '@n'  < $ROOT/inputs/temp-test/1088.inp.468.3 > ./outputs/t3726

./replace_instrumented.exe '@@[^A-Gn0-9]' 'A)T537M`;~`g'  < $ROOT/inputs/input/ruin.1519 > ./outputs/t3727

./replace_instrumented.exe '@@[^l]' 'c'  < $ROOT/inputs/input/ruin.1453 > ./outputs/t3728

./replace_instrumented.exe '@@[a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9]' 'e'  < $ROOT/inputs/input/ruin.323 > ./outputs/t3729

./replace_instrumented.exe '@@[a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c*[0-9][a-c]-?-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*[0-9]' 'q'  < $ROOT/inputs/input/ruin.322 > ./outputs/t3730

./replace_instrumented.exe '@@[z-}]'   < $ROOT/inputs/input/ruin.1263 > ./outputs/t3731

./replace_instrumented.exe '@@[z-}]' '/s_ziY.ZkrBEgFC4_(F^|T`jH`t@hJl,j=#7sJ}'  < $ROOT/inputs/input/ruin.1263 > ./outputs/t3732

./replace_instrumented.exe '@@\)' '4I'  < $ROOT/inputs/input/ruin.1063 > ./outputs/t3733

./replace_instrumented.exe '@@\)' '7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mpAv6)cN.l7mp4I'  < $ROOT/inputs/input/ruin.1063 > ./outputs/t3734

./replace_instrumented.exe '@@\EO' 'KH-J?'\''`M!B=/fD`}s=H@.K]'  < $ROOT/inputs/input/ruin.346 > ./outputs/t3735

./replace_instrumented.exe '@@]' 'ueNxiCI$-'  < $ROOT/inputs/input/ruin.1687 > ./outputs/t3736

./replace_instrumented.exe '@@^a-c]' '@%@&'  < $ROOT/inputs/temp-test/185.inp.83.1 > ./outputs/t3737

./replace_instrumented.exe '@@`' 'm'  < $ROOT/inputs/input/ruin.734 > ./outputs/t3738

./replace_instrumented.exe '@@o'\''D@z@@?' 'D*Cx2,Ha$<h|]}{:Vf C/To4Vds0QNM+LTtC%Q1{""W'  < $ROOT/inputs/input/ruin.437 > ./outputs/t3739

./replace_instrumented.exe '@@p&y=3[ZNLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{HC<5S)0ft3+1A]NLF]{H*[0-9]*C<5S)0ft3+1A]YIgTBk-*?* *[a' '+'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t3740

./replace_instrumented.exe '@@p&y=3[ZYIgp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYIp&y=3[ZYITBk' 'T'  < $ROOT/inputs/input/ruin.1330 > ./outputs/t3741

./replace_instrumented.exe '@@s' '3'  < $ROOT/inputs/input/ruin.605 > ./outputs/t3742

./replace_instrumented.exe '@A$' 'Vm3P(j&"*S[r19i9]}TqvX%/B[p^JXe_'  < $ROOT/inputs/input/ruin.66 > ./outputs/t3743

./replace_instrumented.exe '@C' 'z'  < $ROOT/inputs/input/ruin.1125 > ./outputs/t3744

./replace_instrumented.exe '@D' '.'  < $ROOT/inputs/input/ruin.1169 > ./outputs/t3745

./replace_instrumented.exe '@E' 'PLvh0lN%L2%?&GW#2VGQ>D,<~.4l,[<Z;xbv|!y'  < $ROOT/inputs/input/ruin.245 > ./outputs/t3746

./replace_instrumented.exe '@J' 'K'  < $ROOT/inputs/input/ruin.465 > ./outputs/t3747

./replace_instrumented.exe '@J' 'rTRJy`3lY]0ky'  < $ROOT/inputs/input/ruin.1895 > ./outputs/t3748

./replace_instrumented.exe '@P' 'XUd+.8r\'  < $ROOT/inputs/input/ruin.1606 > ./outputs/t3749

./replace_instrumented.exe '@P?*' 'XUd+.8r\'  < $ROOT/inputs/input/ruin.1606 > ./outputs/t3750

./replace_instrumented.exe '@R' '^'  < $ROOT/inputs/input/ruin.208 > ./outputs/t3751

./replace_instrumented.exe '@T' '}'  < $ROOT/inputs/input/ruin.1233 > ./outputs/t3752

./replace_instrumented.exe '@X' 'j'  < $ROOT/inputs/input/ruin.972 > ./outputs/t3753

./replace_instrumented.exe '@Y' 'n"F;S+\) buv"j('  < $ROOT/inputs/input/ruin.1908 > ./outputs/t3754

./replace_instrumented.exe '@Y' 'uY.rul7yx-pu2#3MGnr'\'''  < $ROOT/inputs/input/ruin.889 > ./outputs/t3755

./replace_instrumented.exe '@Z' 'q'  < $ROOT/inputs/input/ruin.1194 > ./outputs/t3756

./replace_instrumented.exe '@[' '@%@&'  < $ROOT/inputs/temp-test/2286.inp.968.1 > ./outputs/t3757

./replace_instrumented.exe '@[' '@%@&'  < $ROOT/inputs/temp-test/2287.inp.968.3 > ./outputs/t3758

./replace_instrumented.exe '@[' '@t'  < $ROOT/inputs/temp-test/1463.inp.627.1 > ./outputs/t3759

./replace_instrumented.exe '@[' '@t'  < $ROOT/inputs/temp-test/1464.inp.627.2 > ./outputs/t3760

./replace_instrumented.exe '@[' 'a@nb@tc'  < $ROOT/inputs/temp-test/1095.inp.472.1 > ./outputs/t3761

./replace_instrumented.exe '@[' 'a@nb@tc'  < $ROOT/inputs/temp-test/1096.inp.472.2 > ./outputs/t3762

./replace_instrumented.exe '@[' 'a@nb@tc'  < $ROOT/inputs/temp-test/1097.inp.472.3 > ./outputs/t3763

./replace_instrumented.exe '@[*' ''  < $ROOT/inputs/temp-test/2203.inp.933.1 > ./outputs/t3764

./replace_instrumented.exe '@[*' ''  < $ROOT/inputs/temp-test/2204.inp.933.3 > ./outputs/t3765

./replace_instrumented.exe '@[*' 'NEW'  < $ROOT/inputs/temp-test/673.inp.293.1 > ./outputs/t3766

./replace_instrumented.exe '@[*' 'NEW'  < $ROOT/inputs/temp-test/674.inp.293.2 > ./outputs/t3767

./replace_instrumented.exe '@[*' 'NEW'  < $ROOT/inputs/temp-test/675.inp.293.3 > ./outputs/t3768

./replace_instrumented.exe '@[*-$%' ''  < $ROOT/inputs/temp-test/2331.inp.988.6 > ./outputs/t3769

./replace_instrumented.exe '@[*-$' ''  < $ROOT/inputs/temp-test/2331.inp.988.6 > ./outputs/t3770

./replace_instrumented.exe '@[*-%' ''  < $ROOT/inputs/temp-test/2330.inp.988.4 > ./outputs/t3771

./replace_instrumented.exe '@[*-' ''  < $ROOT/inputs/temp-test/2327.inp.988.1 > ./outputs/t3772

./replace_instrumented.exe '@[*-' ''  < $ROOT/inputs/temp-test/2328.inp.988.2 > ./outputs/t3773

./replace_instrumented.exe '@[*-' ''  < $ROOT/inputs/temp-test/2329.inp.988.3 > ./outputs/t3774

./replace_instrumented.exe '@[*-' ''  < $ROOT/inputs/temp-test/2330.inp.988.4 > ./outputs/t3775

./replace_instrumented.exe '@[*-?[a-c$'   < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t3776

./replace_instrumented.exe '@[*-?[a-c$' 'a@nb@tc'  < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t3777

./replace_instrumented.exe '@[*-?[a-c'   < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t3778

./replace_instrumented.exe '@[*-?[a-c'   < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t3779

./replace_instrumented.exe '@[*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t3780

./replace_instrumented.exe '@[*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t3781

./replace_instrumented.exe '@[*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t3782

./replace_instrumented.exe '@[*?' 'a@n'  < $ROOT/inputs/temp-test/2189.inp.927.1 > ./outputs/t3783

./replace_instrumented.exe '@[*?' 'a@n'  < $ROOT/inputs/temp-test/2190.inp.927.2 > ./outputs/t3784

./replace_instrumented.exe '@[*[0-9]' ''  < $ROOT/inputs/temp-test/2132.inp.903.1 > ./outputs/t3785

./replace_instrumented.exe '@[*[0-9]' ''  < $ROOT/inputs/temp-test/2133.inp.903.2 > ./outputs/t3786

./replace_instrumented.exe '@[*[0-9]' ''  < $ROOT/inputs/temp-test/2134.inp.903.3 > ./outputs/t3787

./replace_instrumented.exe '@[*[9-B]' '&'  < $ROOT/inputs/temp-test/491.inp.215.1 > ./outputs/t3788

./replace_instrumented.exe '@[*[9-B]?-[a-c]?@**[9-B][-z][^9-B]@@' '@%@&'  < $ROOT/inputs/temp-test/471.inp.206.1 > ./outputs/t3789

./replace_instrumented.exe '@[*[9-B]?-[a-c]?@**[9-B][-z][^9-B]@@' '@%@&'  < $ROOT/inputs/temp-test/472.inp.206.2 > ./outputs/t3790

./replace_instrumented.exe '@[*[9-B]?-[a-c]?@**[9-B][-z][^9-B]@@' '@%@&'  < $ROOT/inputs/temp-test/473.inp.206.3 > ./outputs/t3791

./replace_instrumented.exe '@[*[9-B]@' '&@'  < $ROOT/inputs/temp-test/491.inp.215.1 > ./outputs/t3792

./replace_instrumented.exe '@[*[9-B][0-9]?' '&'  < $ROOT/inputs/temp-test/1358.inp.583.1 > ./outputs/t3793

./replace_instrumented.exe '@[*[9-B][0-9]?' '&'  < $ROOT/inputs/temp-test/1359.inp.583.2 > ./outputs/t3794

./replace_instrumented.exe '@[*[9-B][0-9]?' '&'  < $ROOT/inputs/temp-test/1360.inp.583.4 > ./outputs/t3795

./replace_instrumented.exe '@[*[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2113.inp.896.1 > ./outputs/t3796

./replace_instrumented.exe '@[*[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2114.inp.896.2 > ./outputs/t3797

./replace_instrumented.exe '@[*[^9-B][^a-c?' 'NEW'  < $ROOT/inputs/temp-test/474.inp.207.1 > ./outputs/t3798

./replace_instrumented.exe '@[*[^9-B][^a-c?' 'NEW'  < $ROOT/inputs/temp-test/475.inp.207.2 > ./outputs/t3799

./replace_instrumented.exe '@[*[a-]' '@%@&'  < $ROOT/inputs/temp-test/1600.inp.681.1 > ./outputs/t3800

./replace_instrumented.exe '@[*[a-]' '@%@&'  < $ROOT/inputs/temp-test/1601.inp.681.2 > ./outputs/t3801

./replace_instrumented.exe '@[*[a-]' '@%@&'  < $ROOT/inputs/temp-test/1602.inp.681.3 > ./outputs/t3802

./replace_instrumented.exe '@[*[a-c]' 'NEW'  < $ROOT/inputs/temp-test/1370.inp.588.1 > ./outputs/t3803

./replace_instrumented.exe '@[*[a-c]' 'NEW'  < $ROOT/inputs/temp-test/1371.inp.588.2 > ./outputs/t3804

./replace_instrumented.exe '@[?[^9-B]-[a-[^0-9][9-B]?' '@t'  < $ROOT/inputs/temp-test/1762.inp.750.1 > ./outputs/t3805

./replace_instrumented.exe '@[?[^9-B]-[a-[^0-9][9-B]?' '@t'  < $ROOT/inputs/temp-test/1763.inp.750.2 > ./outputs/t3806

./replace_instrumented.exe '@[?[^a-c]?[^0-9]-[^9-B][a-c]' '@%@&'  < $ROOT/inputs/temp-test/1356.inp.582.1 > ./outputs/t3807

./replace_instrumented.exe '@[?[^a-c]?[^0-9]-[^9-B][a-c]' '@%@&'  < $ROOT/inputs/temp-test/1357.inp.582.3 > ./outputs/t3808

./replace_instrumented.exe '@[A*[9-B]^[0-9]$' '@%&a'  < $ROOT/inputs/temp-test/1513.inp.647.6 > ./outputs/t3809

./replace_instrumented.exe '@[A*[9-B]^[0-9]' '@%&a'  < $ROOT/inputs/temp-test/1509.inp.647.1 > ./outputs/t3810

./replace_instrumented.exe '@[A*[9-B]^[0-9]' '@%&a'  < $ROOT/inputs/temp-test/1510.inp.647.2 > ./outputs/t3811

./replace_instrumented.exe '@[A*[9-B]^[0-9]' '@%&a'  < $ROOT/inputs/temp-test/1511.inp.647.3 > ./outputs/t3812

./replace_instrumented.exe '@[A*[9-B]^[0-9]' '@%&a'  < $ROOT/inputs/temp-test/1512.inp.647.4 > ./outputs/t3813

./replace_instrumented.exe '@[[0-9]' '&'  < $ROOT/inputs/temp-test/1180.inp.509.1 > ./outputs/t3814

./replace_instrumented.exe '@[[0-9]' '&'  < $ROOT/inputs/temp-test/1181.inp.509.2 > ./outputs/t3815

./replace_instrumented.exe '@[[0-9]' '&'  < $ROOT/inputs/temp-test/1182.inp.509.3 > ./outputs/t3816

./replace_instrumented.exe '@[[0-9]' ''  < $ROOT/inputs/temp-test/2225.inp.944.1 > ./outputs/t3817

./replace_instrumented.exe '@[[0-9]' ''  < $ROOT/inputs/temp-test/2226.inp.944.2 > ./outputs/t3818

./replace_instrumented.exe '@[[0-9]' ''  < $ROOT/inputs/temp-test/2227.inp.944.3 > ./outputs/t3819

./replace_instrumented.exe '@[[0-9]' 'NEW'  < $ROOT/inputs/temp-test/720.inp.311.1 > ./outputs/t3820

./replace_instrumented.exe '@[[0-9]' 'NEW'  < $ROOT/inputs/temp-test/721.inp.311.2 > ./outputs/t3821

./replace_instrumented.exe '@[[9-B]-' '@%&a'  < $ROOT/inputs/temp-test/1021.inp.439.1 > ./outputs/t3822

./replace_instrumented.exe '@[[9-B]-' '@%&a'  < $ROOT/inputs/temp-test/1022.inp.439.2 > ./outputs/t3823

./replace_instrumented.exe '@[[9-B]^[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/812.inp.349.1 > ./outputs/t3824

./replace_instrumented.exe '@[[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/947.inp.408.1 > ./outputs/t3825

./replace_instrumented.exe '@[[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/948.inp.408.3 > ./outputs/t3826

./replace_instrumented.exe '@[[^0-9]*' 'a@nb@tc'  < $ROOT/inputs/temp-test/131.inp.61.1 > ./outputs/t3827

./replace_instrumented.exe '@[[^0-9]*' 'a@nb@tc'  < $ROOT/inputs/temp-test/132.inp.61.4 > ./outputs/t3828

./replace_instrumented.exe '@[[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B]' '[[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B][[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B][[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B][[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B]a&'  < $ROOT/inputs/temp-test/2266.inp.961.1 > ./outputs/t3829

./replace_instrumented.exe '@[[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B]' 'a&'  < $ROOT/inputs/temp-test/2266.inp.961.1 > ./outputs/t3830

./replace_instrumented.exe '@[[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B]' 'a&'  < $ROOT/inputs/temp-test/2267.inp.961.2 > ./outputs/t3831

./replace_instrumented.exe '@[[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B]' 'a&'  < $ROOT/inputs/temp-test/2268.inp.961.4 > ./outputs/t3832

./replace_instrumented.exe '@[[^a-c]' 'a@n'  < $ROOT/inputs/temp-test/771.inp.331.1 > ./outputs/t3833

./replace_instrumented.exe '@[[^a-c]' 'a@n'  < $ROOT/inputs/temp-test/772.inp.331.2 > ./outputs/t3834

./replace_instrumented.exe '@[[a-c]-*-' '&a@%'  < $ROOT/inputs/temp-test/2323.inp.986.1 > ./outputs/t3835

./replace_instrumented.exe '@[[a-c]-*-' '&a@%'  < $ROOT/inputs/temp-test/2324.inp.986.2 > ./outputs/t3836

./replace_instrumented.exe '@[][*-?[a-c$' 'a@nb@tc'  < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t3837

./replace_instrumented.exe '@[][*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t3838

./replace_instrumented.exe '@[][*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t3839

./replace_instrumented.exe '@[][*-?[a-c[]' 'a@nb@tc'  < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t3840

./replace_instrumented.exe '@[^][*-?[a-c$' 'a@nb@tc'  < $ROOT/inputs/temp-test/210.inp.93.8 > ./outputs/t3841

./replace_instrumented.exe '@[^][*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/208.inp.93.2 > ./outputs/t3842

./replace_instrumented.exe '@[^][*-?[a-c' 'a@nb@tc'  < $ROOT/inputs/temp-test/209.inp.93.3 > ./outputs/t3843

./replace_instrumented.exe '@[^][*-?[a-c[^]' 'a@nb@tc'  < $ROOT/inputs/temp-test/207.inp.93.1 > ./outputs/t3844

./replace_instrumented.exe '@\' 'g-]cUd4^Cl)"wkYz'  < $ROOT/inputs/input/ruin.1638 > ./outputs/t3845

./replace_instrumented.exe '@]' '($;X"X$F-uMG+`"5<X"'  < $ROOT/inputs/input/ruin.1430 > ./outputs/t3846

./replace_instrumented.exe '@^?(@}' 'f'  < $ROOT/inputs/input/ruin.1680 > ./outputs/t3847

./replace_instrumented.exe '@`' 'pQH;uJ,{RTf,E`X>gP;MGaei$HG}'  < $ROOT/inputs/input/ruin.945 > ./outputs/t3848

./replace_instrumented.exe '@a' 'mZ1ng>k-x4voh3._i>_;0G|/C$'  < $ROOT/inputs/input/ruin.365 > ./outputs/t3849

./replace_instrumented.exe '@a\|?' '?YH_'\''.XVn$Je"$z5vh%5F`nJNn|ft'  < $ROOT/inputs/input/ruin.575 > ./outputs/t3850

./replace_instrumented.exe '@ddN@n' 'fg~4&[LmRA3o6:cW<[RU@3H*M;Z:.;y'\'',gC?= VPAFmAF'\'':1)z3<<'  < $ROOT/inputs/input/ruin.377 > ./outputs/t3851

./replace_instrumented.exe '@e' 'O'  < $ROOT/inputs/input/ruin.12 > ./outputs/t3852

./replace_instrumented.exe '@g' 'w|'  < $ROOT/inputs/input/ruin.1201 > ./outputs/t3853

./replace_instrumented.exe '@h' 'w0Yj|`l`AYgv{KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@KNy,h0_sbVxG=nOfj@M<#KAouk'  < $ROOT/inputs/input/ruin.1035 > ./outputs/t3854

./replace_instrumented.exe '@h' 'w0Yj|`l`AYgv{M<#KAouk'  < $ROOT/inputs/input/ruin.1035 > ./outputs/t3855

./replace_instrumented.exe '@i' 'j'  < $ROOT/inputs/input/ruin.1668 > ./outputs/t3856

./replace_instrumented.exe '@l' 'A)y'  < $ROOT/inputs/input/ruin.1820 > ./outputs/t3857

./replace_instrumented.exe '@l' 'PSP`1vR+aC$I8'\''9UeO_Y'\''_nJ<FtcIi}. ,av4,XPyZ7BT#(B9{S=c--i.'  < $ROOT/inputs/input/ruin.1105 > ./outputs/t3858

./replace_instrumented.exe '@l' 'RhZj~cW}'  < $ROOT/inputs/input/ruin.1478 > ./outputs/t3859

./replace_instrumented.exe '@l*$' 'PSP`1vR+aC$I8'\''9UeO_Y'\''_nJ<FtcIi}. ,av4,XPyZ7BT#(B9{S=c--i.'  < $ROOT/inputs/input/ruin.1105 > ./outputs/t3860

./replace_instrumented.exe '@m[^z-}]' 'Iz'  < $ROOT/inputs/input/ruin.1474 > ./outputs/t3861

./replace_instrumented.exe '@n$' '$'  < $ROOT/inputs/input/ruin.1678 > ./outputs/t3862

./replace_instrumented.exe '@n$' '&b0:'  < $ROOT/inputs/input/ruin.1020 > ./outputs/t3863

./replace_instrumented.exe '@n$' '-[&b0:'  < $ROOT/inputs/input/ruin.1020 > ./outputs/t3864

./replace_instrumented.exe '@n$' 'G4`w-b'  < $ROOT/inputs/input/ruin.1929 > ./outputs/t3865

./replace_instrumented.exe '@n'   < $ROOT/inputs/input/ruin.1157 > ./outputs/t3866

./replace_instrumented.exe '@n'   < $ROOT/inputs/input/ruin.1268 > ./outputs/t3867

./replace_instrumented.exe '@n' '!'  < $ROOT/inputs/input/ruin.145 > ./outputs/t3868

./replace_instrumented.exe '@n' '"'  < $ROOT/inputs/input/ruin.954 > ./outputs/t3869

./replace_instrumented.exe '@n' '$!9jSkl)bEK'\''coE)Yz)\'\''9Qk(>mPE'  < $ROOT/inputs/input/ruin.1441 > ./outputs/t3870

./replace_instrumented.exe '@n' '%:gPY.>,2#'  < $ROOT/inputs/input/ruin.1275 > ./outputs/t3871

./replace_instrumented.exe '@n' '& '  < $ROOT/inputs/input/ruin.1192 > ./outputs/t3872

./replace_instrumented.exe '@n' '&"w4yF;^%V{=[g" GQ!^)U'\''6G+5J[ejzJ=>IXG>MUU*;c:LUh'\''sz` ;i)-cxBKFwk%b`+L'  < $ROOT/inputs/input/ruin.1189 > ./outputs/t3873

./replace_instrumented.exe '@n' '&#8|G=x$)8Bi3&]|}0Ei%$sGmY={x{8WXO(B='  < $ROOT/inputs/input/ruin.1197 > ./outputs/t3874

./replace_instrumented.exe '@n' '&'  < $ROOT/inputs/temp-test/1025.inp.441.1 > ./outputs/t3875

./replace_instrumented.exe '@n' '&'  < $ROOT/inputs/temp-test/329.inp.146.1 > ./outputs/t3876

./replace_instrumented.exe '@n' '&'  < $ROOT/inputs/temp-test/332.inp.146.4 > ./outputs/t3877

./replace_instrumented.exe '@n' '&(Qk '  < $ROOT/inputs/input/ruin.1205 > ./outputs/t3878

./replace_instrumented.exe '@n' '&*'  < $ROOT/inputs/input/ruin.1360 > ./outputs/t3879

./replace_instrumented.exe '@n' '&.St7,*,FY'\''e2 #PQt_JAdEVyBorNLKtG4,nKOUCw{Tr/J2d]Omr-PWjk+'  < $ROOT/inputs/input/ruin.98 > ./outputs/t3880

./replace_instrumented.exe '@n' '&/=VXw>%)rWz0.ROqC>THDqQ^Hr+jB~x]S(cp}#'  < $ROOT/inputs/input/ruin.1204 > ./outputs/t3881

./replace_instrumented.exe '@n' '&16|L'  < $ROOT/inputs/input/ruin.270 > ./outputs/t3882

./replace_instrumented.exe '@n' '&4'  < $ROOT/inputs/input/ruin.281 > ./outputs/t3883

./replace_instrumented.exe '@n' '&5.'  < $ROOT/inputs/input/ruin.1186 > ./outputs/t3884

./replace_instrumented.exe '@n' '&5D$6:)'\''!!WaohoC<DMt/ns5zA:0vzT p?PADhjzrF.e*NbJLCd;0Sr/.Ja+?2sn-MP+uf6)IZet;aI!3=TH7?$d_6t)!l=Wfh37`[%\<5'  < $ROOT/inputs/input/ruin.1200 > ./outputs/t3885

./replace_instrumented.exe '@n' '&6'  < $ROOT/inputs/input/ruin.284 > ./outputs/t3886

./replace_instrumented.exe '@n' '&7KOgdHVS~e*RbgQ>M{]|d'  < $ROOT/inputs/input/ruin.1195 > ./outputs/t3887

./replace_instrumented.exe '@n' '&8sdW9T'  < $ROOT/inputs/input/ruin.1065 > ./outputs/t3888

./replace_instrumented.exe '@n' '&:an"OMpY#Ei1WdZ>`'  < $ROOT/inputs/input/ruin.1277 > ./outputs/t3889

./replace_instrumented.exe '@n' '&<9:5*f8GULK>.:&6r]A'  < $ROOT/inputs/input/ruin.1321 > ./outputs/t3890

./replace_instrumented.exe '@n' '&<N#2/*K)n'  < $ROOT/inputs/input/ruin.1182 > ./outputs/t3891

./replace_instrumented.exe '@n' '&<N#N4zMu+/?$@,"oa`nt=1CL!g3y*(k((w!.4aPc>wSP2w2'  < $ROOT/inputs/input/ruin.487 > ./outputs/t3892

./replace_instrumented.exe '@n' '&<c!'  < $ROOT/inputs/input/ruin.1179 > ./outputs/t3893

./replace_instrumented.exe '@n' '&=:zD+0/]VKClfA;8d-(~bTN"m'  < $ROOT/inputs/input/ruin.1086 > ./outputs/t3894

./replace_instrumented.exe '@n' '&?[0-9]'  < $ROOT/inputs/input/ruin.1377 > ./outputs/t3895

./replace_instrumented.exe '@n' '&@@'  < $ROOT/inputs/input/ruin.1352 > ./outputs/t3896

./replace_instrumented.exe '@n' '&@n'  < $ROOT/inputs/input/ruin.1340 > ./outputs/t3897

./replace_instrumented.exe '@n' '&@n@n'  < $ROOT/inputs/input/ruin.1364 > ./outputs/t3898

./replace_instrumented.exe '@n' '&@t'  < $ROOT/inputs/input/ruin.13 > ./outputs/t3899

./replace_instrumented.exe '@n' '&@t@t'  < $ROOT/inputs/input/ruin.1376 > ./outputs/t3900

./replace_instrumented.exe '@n' '&@t@t'  < $ROOT/inputs/input/ruin.617 > ./outputs/t3901

./replace_instrumented.exe '@n' '&@t@t@t'  < $ROOT/inputs/input/ruin.460 > ./outputs/t3902

./replace_instrumented.exe '@n' '&A'  < $ROOT/inputs/input/ruin.293 > ./outputs/t3903

./replace_instrumented.exe '@n' '&D'  < $ROOT/inputs/input/ruin.1199 > ./outputs/t3904

./replace_instrumented.exe '@n' '&E'  < $ROOT/inputs/input/ruin.1184 > ./outputs/t3905

./replace_instrumented.exe '@n' '&L'  < $ROOT/inputs/input/ruin.1203 > ./outputs/t3906

./replace_instrumented.exe '@n' '&L'  < $ROOT/inputs/input/ruin.274 > ./outputs/t3907

./replace_instrumented.exe '@n' '&M'  < $ROOT/inputs/input/ruin.1185 > ./outputs/t3908

./replace_instrumented.exe '@n' '&U'  < $ROOT/inputs/input/ruin.1193 > ./outputs/t3909

./replace_instrumented.exe '@n' '&XW&%JwE}YEQ"vBljIYg}l'  < $ROOT/inputs/input/ruin.494 > ./outputs/t3910

./replace_instrumented.exe '@n' '&[0-9]'  < $ROOT/inputs/input/ruin.1221 > ./outputs/t3911

./replace_instrumented.exe '@n' '&[0-9]'  < $ROOT/inputs/input/ruin.138 > ./outputs/t3912

./replace_instrumented.exe '@n' '&[LmRA3o6:cW<[RU@3H*M;Z:.;y'\'',gC?= VPAFmAF'\'':1)z3<<'  < $ROOT/inputs/input/ruin.377 > ./outputs/t3913

./replace_instrumented.exe '@n' '&\/Jo n3Hj!!XA\!!Z;'\''k#\pku:-g*G ;iMw3]'  < $ROOT/inputs/input/ruin.1191 > ./outputs/t3914

./replace_instrumented.exe '@n' '&_W$'  < $ROOT/inputs/input/ruin.1198 > ./outputs/t3915

./replace_instrumented.exe '@n' '&`'  < $ROOT/inputs/input/ruin.1158 > ./outputs/t3916

./replace_instrumented.exe '@n' '&`'  < $ROOT/inputs/input/ruin.278 > ./outputs/t3917

./replace_instrumented.exe '@n' '&a@%'  < $ROOT/inputs/temp-test/1498.inp.642.1 > ./outputs/t3918

./replace_instrumented.exe '@n' '&a@%'  < $ROOT/inputs/temp-test/1499.inp.642.2 > ./outputs/t3919

./replace_instrumented.exe '@n' '&b'  < $ROOT/inputs/input/ruin.273 > ./outputs/t3920

./replace_instrumented.exe '@n' '&b0:'  < $ROOT/inputs/input/ruin.1020 > ./outputs/t3921

./replace_instrumented.exe '@n' '&e'  < $ROOT/inputs/input/ruin.280 > ./outputs/t3922

./replace_instrumented.exe '@n' '&f$BLCD}tiigf@3'  < $ROOT/inputs/input/ruin.553 > ./outputs/t3923

./replace_instrumented.exe '@n' '&h'  < $ROOT/inputs/input/ruin.288 > ./outputs/t3924

./replace_instrumented.exe '@n' '&i+'\''s OXxRu~W2bMVQrfx+GT$4>}5J5XNph:`xe! zY'  < $ROOT/inputs/input/ruin.275 > ./outputs/t3925

./replace_instrumented.exe '@n' '&lk'  < $ROOT/inputs/input/ruin.277 > ./outputs/t3926

./replace_instrumented.exe '@n' '&o n3Hj!!XA\!!Z;'\''k#\pku:-g*G ;iMw3]'  < $ROOT/inputs/input/ruin.1191 > ./outputs/t3927

./replace_instrumented.exe '@n' '&p'  < $ROOT/inputs/input/ruin.276 > ./outputs/t3928

./replace_instrumented.exe '@n' '&q'  < $ROOT/inputs/input/ruin.1194 > ./outputs/t3929

./replace_instrumented.exe '@n' '&q'  < $ROOT/inputs/input/ruin.539 > ./outputs/t3930

./replace_instrumented.exe '@n' '&u>`Y~4'\''!d;?[6eMR*)X+D>xU%AUWv8y$.jdQ@jBn='\''(J8f,KIL4L'  < $ROOT/inputs/input/ruin.285 > ./outputs/t3931

./replace_instrumented.exe '@n' '&u@@LZ'  < $ROOT/inputs/input/ruin.1188 > ./outputs/t3932

./replace_instrumented.exe '@n' '&w|'  < $ROOT/inputs/input/ruin.1201 > ./outputs/t3933

./replace_instrumented.exe '@n' '&xUW$3UOKEX2a@El#=-t[^R%"'  < $ROOT/inputs/input/ruin.290 > ./outputs/t3934

./replace_instrumented.exe '@n' '&y#k-llLWk'  < $ROOT/inputs/input/ruin.279 > ./outputs/t3935

./replace_instrumented.exe '@n' ''  < $ROOT/inputs/input/ruin.269 > ./outputs/t3936

./replace_instrumented.exe '@n' ''  < $ROOT/inputs/input/ruin.831 > ./outputs/t3937

./replace_instrumented.exe '@n' ''\''Y8_V~GP,no<Nwn1&d2*Mi^j4.Fx*Fb&sC#;9okUMY`</KdUj2(MQo'  < $ROOT/inputs/input/ruin.376 > ./outputs/t3938

./replace_instrumented.exe '@n' '( $V0B&16|L'  < $ROOT/inputs/input/ruin.270 > ./outputs/t3939

./replace_instrumented.exe '@n' '('  < $ROOT/inputs/input/ruin.1970 > ./outputs/t3940

./replace_instrumented.exe '@n' ')clYn/q$'  < $ROOT/inputs/input/ruin.1688 > ./outputs/t3941

./replace_instrumented.exe '@n' '*U&:an"OMpY#Ei1WdZ>`'  < $ROOT/inputs/input/ruin.1277 > ./outputs/t3942

./replace_instrumented.exe '@n' '-[&b0:'  < $ROOT/inputs/input/ruin.1020 > ./outputs/t3943

./replace_instrumented.exe '@n' '.'  < $ROOT/inputs/input/ruin.1999 > ./outputs/t3944

./replace_instrumented.exe '@n' '.^&u>`Y~4'\''!d;?[6eMR*)X+D>xU%AUWv8y$.jdQ@jBn='\''(J8f,KIL4L'  < $ROOT/inputs/input/ruin.285 > ./outputs/t3945

./replace_instrumented.exe '@n' '/&q'  < $ROOT/inputs/input/ruin.539 > ./outputs/t3946

./replace_instrumented.exe '@n' '0'  < $ROOT/inputs/input/ruin.779 > ./outputs/t3947

./replace_instrumented.exe '@n' '1gF=&n$u]g/C}w8N6'  < $ROOT/inputs/input/ruin.1207 > ./outputs/t3948

./replace_instrumented.exe '@n' '1no9B60hA0-+uTMrfp/uzB4.|#*H+7q3Qy@/YT"b2b5['  < $ROOT/inputs/input/ruin.1268 > ./outputs/t3949

./replace_instrumented.exe '@n' '2BEj`7d>hbD&m?T;b)0;'  < $ROOT/inputs/input/ruin.1803 > ./outputs/t3950

./replace_instrumented.exe '@n' '2k|h=&-kA{I^m)l>oO{G'  < $ROOT/inputs/input/ruin.1029 > ./outputs/t3951

./replace_instrumented.exe '@n' '2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G'  < $ROOT/inputs/input/ruin.1029 > ./outputs/t3952

./replace_instrumented.exe '@n' '3&4'  < $ROOT/inputs/input/ruin.281 > ./outputs/t3953

./replace_instrumented.exe '@n' '373Vm*EWixkNRI/J1'  < $ROOT/inputs/input/ruin.1270 > ./outputs/t3954

./replace_instrumented.exe '@n' '4 '  < $ROOT/inputs/input/ruin.251 > ./outputs/t3955

./replace_instrumented.exe '@n' '60&<9:5*f8GULK>.:&6r]A'  < $ROOT/inputs/input/ruin.1321 > ./outputs/t3956

./replace_instrumented.exe '@n' '7KOgdHVS~e*RbgQ>M{]|d'  < $ROOT/inputs/input/ruin.1195 > ./outputs/t3957

./replace_instrumented.exe '@n' '8,%wu%Hm=zS'  < $ROOT/inputs/input/ruin.1070 > ./outputs/t3958

./replace_instrumented.exe '@n' '9&@t@t'  < $ROOT/inputs/input/ruin.617 > ./outputs/t3959

./replace_instrumented.exe '@n' '98l&xUW$3UOKEX2a@El#=-t[^R%"'  < $ROOT/inputs/input/ruin.290 > ./outputs/t3960

./replace_instrumented.exe '@n' ':'  < $ROOT/inputs/input/ruin.1828 > ./outputs/t3961

./replace_instrumented.exe '@n' ':(4lCfr['  < $ROOT/inputs/input/ruin.1012 > ./outputs/t3962

./replace_instrumented.exe '@n' ';&.St7,*,FY'\''e2 #PQt_JAdEVyBorNLKtG4,nKOUCw{Tr/J2d]Omr-PWjk+'  < $ROOT/inputs/input/ruin.98 > ./outputs/t3963

./replace_instrumented.exe '@n' ';S&=:zD+0/]VKClfA;8d-(~bTN"m'  < $ROOT/inputs/input/ruin.1086 > ./outputs/t3964

./replace_instrumented.exe '@n' ';S=:zD+0/]VKClfA;8d-(~bTN"m'  < $ROOT/inputs/input/ruin.1086 > ./outputs/t3965

./replace_instrumented.exe '@n' ';g&.}:{js8R^#VPXDq2$?H7JEik*Lg_}N\ I(T"'  < $ROOT/inputs/input/ruin.1180 > ./outputs/t3966

./replace_instrumented.exe '@n' '<'  < $ROOT/inputs/input/ruin.902 > ./outputs/t3967

./replace_instrumented.exe '@n' '<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjs<u2]r/0cjsO'  < $ROOT/inputs/input/ruin.1045 > ./outputs/t3968

./replace_instrumented.exe '@n' '=&lk'  < $ROOT/inputs/input/ruin.277 > ./outputs/t3969

./replace_instrumented.exe '@n' '?&<N#N4zMu+/?$@,"oa`nt=1CL!g3y*(k((w!.4aPc>wSP2w2'  < $ROOT/inputs/input/ruin.487 > ./outputs/t3970

./replace_instrumented.exe '@n' '?<N#N4zMu+/?$@,"oa`nt=1CL!g3y*(k((w!.4aPc>wSP2w2'  < $ROOT/inputs/input/ruin.487 > ./outputs/t3971

./replace_instrumented.exe '@n' '@$Gd4I<bvLOk~I[u6ZJBh.'  < $ROOT/inputs/input/ruin.1637 > ./outputs/t3972

./replace_instrumented.exe '@n' '@nS&1GvSwz{HEo.N'  < $ROOT/inputs/input/ruin.1190 > ./outputs/t3973

./replace_instrumented.exe '@n' '@t@t&k*Lg_}N\ I(T"'  < $ROOT/inputs/input/ruin.1180 > ./outputs/t3974

./replace_instrumented.exe '@n' '@{3y4ujD#rXanr\k6Ue_wmnt@Z#,%+({h'  < $ROOT/inputs/input/ruin.1014 > ./outputs/t3975

./replace_instrumented.exe '@n' 'BVm'  < $ROOT/inputs/input/ruin.1894 > ./outputs/t3976

./replace_instrumented.exe '@n' 'D&'  < $ROOT/inputs/input/ruin.1196 > ./outputs/t3977

./replace_instrumented.exe '@n' 'E&'  < $ROOT/inputs/input/ruin.1184 > ./outputs/t3978

./replace_instrumented.exe '@n' 'F'  < $ROOT/inputs/input/ruin.1157 > ./outputs/t3979

./replace_instrumented.exe '@n' 'F]"8`#tLmW1FGw`iK4QO;MuiQ4{%R:h2`^Ndy W4p?5Yd9N%7tp~'  < $ROOT/inputs/input/ruin.154 > ./outputs/t3980

./replace_instrumented.exe '@n' 'H&'  < $ROOT/inputs/input/ruin.1206 > ./outputs/t3981

./replace_instrumented.exe '@n' 'H&@t@t@t'  < $ROOT/inputs/input/ruin.460 > ./outputs/t3982

./replace_instrumented.exe '@n' 'H&b'  < $ROOT/inputs/input/ruin.273 > ./outputs/t3983

./replace_instrumented.exe '@n' 'KO#|1)uX@Dy>+3j`g)D_SM "=l!3{n2g<y'  < $ROOT/inputs/input/ruin.612 > ./outputs/t3984

./replace_instrumented.exe '@n' 'L=&XW&%JwE}YEQ"vBljIYg}l'  < $ROOT/inputs/input/ruin.494 > ./outputs/t3985

./replace_instrumented.exe '@n' 'LK@d-'\'':KkM_v8WWuE!S'  < $ROOT/inputs/input/ruin.51 > ./outputs/t3986

./replace_instrumented.exe '@n' 'M&'  < $ROOT/inputs/input/ruin.1185 > ./outputs/t3987

./replace_instrumented.exe '@n' 'M'  < $ROOT/inputs/input/ruin.613 > ./outputs/t3988

./replace_instrumented.exe '@n' 'N&A'  < $ROOT/inputs/input/ruin.293 > ./outputs/t3989

./replace_instrumented.exe '@n' 'O'  < $ROOT/inputs/input/ruin.1045 > ./outputs/t3990

./replace_instrumented.exe '@n' 'P&p'  < $ROOT/inputs/input/ruin.276 > ./outputs/t3991

./replace_instrumented.exe '@n' 'P'  < $ROOT/inputs/input/ruin.276 > ./outputs/t3992

./replace_instrumented.exe '@n' 'R9@ g]NIAErVbSSr=~G~@`ju?Q~]HAWjufdNY6.k}s'  < $ROOT/inputs/input/ruin.823 > ./outputs/t3993

./replace_instrumented.exe '@n' 'S&1G=SPJxh*Gd}R$vSwz{HEo.N'  < $ROOT/inputs/input/ruin.1190 > ./outputs/t3994

./replace_instrumented.exe '@n' 'S1G=&SPJxh*Gd}R$vSwz{HEo.N'  < $ROOT/inputs/input/ruin.1190 > ./outputs/t3995

./replace_instrumented.exe '@n' 'TbjIYx|Q&}}TKt5QS<'  < $ROOT/inputs/input/ruin.1187 > ./outputs/t3996

./replace_instrumented.exe '@n' 'TbjIYx|Qb}}&TKt5QS<'  < $ROOT/inputs/input/ruin.1187 > ./outputs/t3997

./replace_instrumented.exe '@n' 'U&'  < $ROOT/inputs/input/ruin.1193 > ./outputs/t3998

./replace_instrumented.exe '@n' 'VmO1MS/z/7-!)sG#\ Pl|1`0$B*e'  < $ROOT/inputs/input/ruin.337 > ./outputs/t3999

./replace_instrumented.exe '@n' 'X'  < $ROOT/inputs/input/ruin.321 > ./outputs/t4000

./replace_instrumented.exe '@n' 'Yb`=<aVf_kx\zxE!_^(2{XTG#'  < $ROOT/inputs/input/ruin.256 > ./outputs/t4001

./replace_instrumented.exe '@n' '[0-9]&&[a-z]'  < $ROOT/inputs/input/ruin.144 > ./outputs/t4002

./replace_instrumented.exe '@n' '[0-9]&[a-z]'  < $ROOT/inputs/input/ruin.144 > ./outputs/t4003

./replace_instrumented.exe '@n' '[0-9]@t@n@@TbjIYx|Q&}}TKt5QS<'  < $ROOT/inputs/input/ruin.1187 > ./outputs/t4004

./replace_instrumented.exe '@n' '[^2-9]!&{HEo.N'  < $ROOT/inputs/input/ruin.1190 > ./outputs/t4005

./replace_instrumented.exe '@n' '\/J&o n3Hj!!XA\!!Z;'\''k#\pku:-g*G ;iMw3]'  < $ROOT/inputs/input/ruin.1191 > ./outputs/t4006

./replace_instrumented.exe '@n' '\/Jo n3Hj!!XA\!!Z;'\''k#\pku:-g*G ;iMw3]&'  < $ROOT/inputs/input/ruin.1191 > ./outputs/t4007

./replace_instrumented.exe '@n' '^K'  < $ROOT/inputs/input/ruin.1774 > ./outputs/t4008

./replace_instrumented.exe '@n' '`&`'  < $ROOT/inputs/input/ruin.278 > ./outputs/t4009

./replace_instrumented.exe '@n' 'a&'  < $ROOT/inputs/temp-test/329.inp.146.1 > ./outputs/t4010

./replace_instrumented.exe '@n' 'a&'  < $ROOT/inputs/temp-test/332.inp.146.4 > ./outputs/t4011

./replace_instrumented.exe '@n' 'a&L'  < $ROOT/inputs/input/ruin.274 > ./outputs/t4012

./replace_instrumented.exe '@n' 'a&`'  < $ROOT/inputs/input/ruin.1158 > ./outputs/t4013

./replace_instrumented.exe '@n' 'a&y#k-llLWk'  < $ROOT/inputs/input/ruin.279 > ./outputs/t4014

./replace_instrumented.exe '@n' 'a'  < $ROOT/inputs/input/ruin.210 > ./outputs/t4015

./replace_instrumented.exe '@n' 'cfP M%;7}!g8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf8KNy,h0_sbVxG=nOf^yda^u5]__z&`%FlMJ7'  < $ROOT/inputs/input/ruin.1039 > ./outputs/t4016

./replace_instrumented.exe '@n' 'cfP M%;7}!g^yda^u5]__z&`%FlMJ7'  < $ROOT/inputs/input/ruin.1039 > ./outputs/t4017

./replace_instrumented.exe '@n' 'd & '\''Ts/gEB(0=$(}A.AVje3x'  < $ROOT/inputs/input/ruin.1202 > ./outputs/t4018

./replace_instrumented.exe '@n' 'd'  < $ROOT/inputs/input/ruin.326 > ./outputs/t4019

./replace_instrumented.exe '@n' 'eT@aR6@4AoERO"scF)a"dqsE)GaEU$d~$U<<zIU>P>V,&'  < $ROOT/inputs/input/ruin.1183 > ./outputs/t4020

./replace_instrumented.exe '@n' 'fg~4&[LmRA3o6:cW<[RU@3H*M;Z:.;y'\'',gC?= VPAFmAF'\'':1)z3<<'  < $ROOT/inputs/input/ruin.377 > ./outputs/t4021

./replace_instrumented.exe '@n' 'g&h'  < $ROOT/inputs/input/ruin.288 > ./outputs/t4022

./replace_instrumented.exe '@n' 'gt3%!lio[y2P9x'  < $ROOT/inputs/input/ruin.806 > ./outputs/t4023

./replace_instrumented.exe '@n' 'h&[0-9]'  < $ROOT/inputs/input/ruin.1221 > ./outputs/t4024

./replace_instrumented.exe '@n' 'h'  < $ROOT/inputs/input/ruin.826 > ./outputs/t4025

./replace_instrumented.exe '@n' 'i&'  < $ROOT/inputs/input/ruin.1178 > ./outputs/t4026

./replace_instrumented.exe '@n' 'i&@@[^6-9]'  < $ROOT/inputs/input/ruin.1178 > ./outputs/t4027

./replace_instrumented.exe '@n' 'k#\pku:-g*G [0-9]@t@@;iMw3]&'  < $ROOT/inputs/input/ruin.1191 > ./outputs/t4028

./replace_instrumented.exe '@n' 'k&e'  < $ROOT/inputs/input/ruin.280 > ./outputs/t4029

./replace_instrumented.exe '@n' 'lQ]IzWyseh>aL@l}lF'  < $ROOT/inputs/input/ruin.230 > ./outputs/t4030

./replace_instrumented.exe '@n' 'm&'  < $ROOT/inputs/input/ruin.1181 > ./outputs/t4031

./replace_instrumented.exe '@n' 'm'  < $ROOT/inputs/input/ruin.1026 > ./outputs/t4032

./replace_instrumented.exe '@n' 'meEqXG~#(1!P1'  < $ROOT/inputs/input/ruin.726 > ./outputs/t4033

./replace_instrumented.exe '@n' 'n&f$BLCD}tiigf@3'  < $ROOT/inputs/input/ruin.553 > ./outputs/t4034

./replace_instrumented.exe '@n' 'o&6'  < $ROOT/inputs/input/ruin.284 > ./outputs/t4035

./replace_instrumented.exe '@n' 'q&'  < $ROOT/inputs/input/ruin.1194 > ./outputs/t4036

./replace_instrumented.exe '@n' 'q*@n&+ovX g    [0-98]'  < $ROOT/inputs/input/ruin.144 > ./outputs/t4037

./replace_instrumented.exe '@n' 'q*PRdtw$&+ovX guAeILM7M'  < $ROOT/inputs/input/ruin.144 > ./outputs/t4038

./replace_instrumented.exe '@n' 'r5'  < $ROOT/inputs/input/ruin.1177 > ./outputs/t4039

./replace_instrumented.exe '@n' 'tqyi460w^}~C$R<'  < $ROOT/inputs/input/ruin.943 > ./outputs/t4040

./replace_instrumented.exe '@n' 'u>{%9; ?S3&u@@LZ'  < $ROOT/inputs/input/ruin.1188 > ./outputs/t4041

./replace_instrumented.exe '@n' 'vwGsq%:a<(5`c[h6 W;I[sk;'\''2{+~!jW/n'  < $ROOT/inputs/input/ruin.1372 > ./outputs/t4042

./replace_instrumented.exe '@n' 'w'  < $ROOT/inputs/input/ruin.7 > ./outputs/t4043

./replace_instrumented.exe '@n' 'y$Z1<[1_6wHLcYZnEoC/JY$%O0tKDCdx>(9"'  < $ROOT/inputs/input/ruin.710 > ./outputs/t4044

./replace_instrumented.exe '@n' 'y&8sdW9T'  < $ROOT/inputs/input/ruin.1065 > ./outputs/t4045

./replace_instrumented.exe '@n' '{G8'  < $ROOT/inputs/input/ruin.32 > ./outputs/t4046

./replace_instrumented.exe '@n' '|M&i+'\''s OXxRu~W2bMVQrfx+GT$4>}5J5XNph:`xe! zY'  < $ROOT/inputs/input/ruin.275 > ./outputs/t4047

./replace_instrumented.exe '@n'\''[^z-}]' '='  < $ROOT/inputs/input/ruin.277 > ./outputs/t4048

./replace_instrumented.exe '@n*$' '.'  < $ROOT/inputs/input/ruin.1999 > ./outputs/t4049

./replace_instrumented.exe '@n*$' 'R,35{f9=L?~on%ox#y{V'  < $ROOT/inputs/input/ruin.1511 > ./outputs/t4050

./replace_instrumented.exe '@n*' 'B(=9uHKrS'  < $ROOT/inputs/input/ruin.106 > ./outputs/t4051

./replace_instrumented.exe '@n*' 'a@nb@tc'  < $ROOT/inputs/temp-test/747.inp.320.1 > ./outputs/t4052

./replace_instrumented.exe '@n**' 'GbrNP(q!N'  < $ROOT/inputs/input/ruin.27 > ./outputs/t4053

./replace_instrumented.exe '@n*-@*@@*[a-c[0-9][^a-][^9-B]--[^--z]' 'a@n'  < $ROOT/inputs/temp-test/2220.inp.941.1 > ./outputs/t4054

./replace_instrumented.exe '@n*-@*@@*[a-c[0-9][^a-][^9-B]--[^--z]' 'a@n'  < $ROOT/inputs/temp-test/2221.inp.941.2 > ./outputs/t4055

./replace_instrumented.exe '@n*-@*@@*[a-c[0-9][^a-][^9-B]--[^--z]' 'a@n'  < $ROOT/inputs/temp-test/2222.inp.941.3 > ./outputs/t4056

./replace_instrumented.exe '@n*[0-9]' '&a@%'  < $ROOT/inputs/temp-test/2211.inp.937.1 > ./outputs/t4057

./replace_instrumented.exe '@n*[0-9]' '&a@%'  < $ROOT/inputs/temp-test/2212.inp.937.2 > ./outputs/t4058

./replace_instrumented.exe '@n*[^0-9]?--[^a--@*' '@t'  < $ROOT/inputs/temp-test/1062.inp.457.1 > ./outputs/t4059

./replace_instrumented.exe '@n*[^0-9]?--[^a--@*' '@t'  < $ROOT/inputs/temp-test/1063.inp.457.2 > ./outputs/t4060

./replace_instrumented.exe '@n*[^0-9]?--[^a--@*' '@t'  < $ROOT/inputs/temp-test/1064.inp.457.3 > ./outputs/t4061

./replace_instrumented.exe '@n*[^a-c]$' 'b@t'  < $ROOT/inputs/temp-test/1921.inp.816.9 > ./outputs/t4062

./replace_instrumented.exe '@n*[^a-c]' 'b@t'  < $ROOT/inputs/temp-test/1920.inp.816.1 > ./outputs/t4063

./replace_instrumented.exe '@n?' 'NEW'  < $ROOT/inputs/temp-test/614.inp.265.1 > ./outputs/t4064

./replace_instrumented.exe '@n?' 'NEW'  < $ROOT/inputs/temp-test/615.inp.265.3 > ./outputs/t4065

./replace_instrumented.exe '@n?' 'NEW'  < $ROOT/inputs/temp-test/616.inp.265.4 > ./outputs/t4066

./replace_instrumented.exe '@n?' '_'  < $ROOT/inputs/input/ruin.991 > ./outputs/t4067

./replace_instrumented.exe '@n?' 'a@n'  < $ROOT/inputs/temp-test/2259.inp.958.1 > ./outputs/t4068

./replace_instrumented.exe '@n?' 'a@n'  < $ROOT/inputs/temp-test/2260.inp.958.2 > ./outputs/t4069

./replace_instrumented.exe '@n?' 'a@n'  < $ROOT/inputs/temp-test/2261.inp.958.3 > ./outputs/t4070

./replace_instrumented.exe '@n?' 'yy'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4071

./replace_instrumented.exe '@n@@$' ''\'''  < $ROOT/inputs/input/ruin.1374 > ./outputs/t4072

./replace_instrumented.exe '@n@@' '_/vHv[\~S6P)'  < $ROOT/inputs/input/ruin.1354 > ./outputs/t4073

./replace_instrumented.exe '@n@@;@@' '60<9:5*f8GULK>.:&6r]A'  < $ROOT/inputs/input/ruin.1321 > ./outputs/t4074

./replace_instrumented.exe '@n@@?' '09xj8*p{[Tk=E|P~H.Ge{Py<Z'  < $ROOT/inputs/input/ruin.35 > ./outputs/t4075

./replace_instrumented.exe '@nPhqi}@,5rY]~M\ Wz]`M0)y8H?@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]t]*[@t@][9-B]-*[0-9]][?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0' 'd'  < $ROOT/inputs/input/ruin.326 > ./outputs/t4076

./replace_instrumented.exe '@n[>-AH]' 'x'  < $ROOT/inputs/input/ruin.1019 > ./outputs/t4077

./replace_instrumented.exe '@n[^c-a]' ')V|'  < $ROOT/inputs/input/ruin.445 > ./outputs/t4078

./replace_instrumented.exe '@n[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/954.inp.411.1 > ./outputs/t4079

./replace_instrumented.exe '@n[a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/955.inp.411.3 > ./outputs/t4080

./replace_instrumented.exe '@n[a-z][0-9]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4081

./replace_instrumented.exe '@n[c-a]' 'H)R{PA:4}IkCZ\9NA$V@if]b]lcL*](B]-#S'  < $ROOT/inputs/input/ruin.94 > ./outputs/t4082

./replace_instrumented.exe '@n][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9]' 'X'  < $ROOT/inputs/input/ruin.321 > ./outputs/t4083

./replace_instrumented.exe '@o' ''  < $ROOT/inputs/input/ruin.928 > ./outputs/t4084

./replace_instrumented.exe '@p' 'l)I#$SnVq^6"2XS{#Gu`w'  < $ROOT/inputs/input/ruin.1512 > ./outputs/t4085

./replace_instrumented.exe '@r@@' 'n<Hq8Z%6sxa'  < $ROOT/inputs/input/ruin.959 > ./outputs/t4086

./replace_instrumented.exe '@t$' ')Y Tr\&_%MYI-Hvz!p];s'  < $ROOT/inputs/input/ruin.1764 > ./outputs/t4087

./replace_instrumented.exe '@t$' '@%@&'  < $ROOT/inputs/temp-test/682.inp.296.9 > ./outputs/t4088

./replace_instrumented.exe '@t$' 'VQ7UIU&=z]J 3BvzQd+'\''%P\]iuS{Q)nzE'  < $ROOT/inputs/input/ruin.1 > ./outputs/t4089

./replace_instrumented.exe '@t' ' {'  < $ROOT/inputs/input/ruin.1418 > ./outputs/t4090

./replace_instrumented.exe '@t' '"Q'  < $ROOT/inputs/input/ruin.110 > ./outputs/t4091

./replace_instrumented.exe '@t' '$ybvgd HC9i)raWA*pH8#5auxQ\y'\''+Gxa3qV|vWk'  < $ROOT/inputs/input/ruin.822 > ./outputs/t4092

./replace_instrumented.exe '@t' ''  < $ROOT/inputs/input/ruin.968 > ./outputs/t4093

./replace_instrumented.exe '@t' ''  < $ROOT/inputs/temp-test/266.inp.118.1 > ./outputs/t4094

./replace_instrumented.exe '@t' ''\'''  < $ROOT/inputs/input/ruin.874 > ./outputs/t4095

./replace_instrumented.exe '@t' '.'  < $ROOT/inputs/input/ruin.1244 > ./outputs/t4096

./replace_instrumented.exe '@t' '/q'  < $ROOT/inputs/input/ruin.539 > ./outputs/t4097

./replace_instrumented.exe '@t' '0'  < $ROOT/inputs/input/ruin.1465 > ./outputs/t4098

./replace_instrumented.exe '@t' '0S-'  < $ROOT/inputs/input/ruin.1103 > ./outputs/t4099

./replace_instrumented.exe '@t' '4_'  < $ROOT/inputs/input/ruin.70 > ./outputs/t4100

./replace_instrumented.exe '@t' '@%@&'  < $ROOT/inputs/temp-test/681.inp.296.1 > ./outputs/t4101

./replace_instrumented.exe '@t' 'J'  < $ROOT/inputs/input/ruin.93 > ./outputs/t4102

./replace_instrumented.exe '@t' 'W&1c:QJf($UO~?u(`y H..L/?~3(*qLpVqz0I$\;u='  < $ROOT/inputs/input/ruin.895 > ./outputs/t4103

./replace_instrumented.exe '@t' 'YJ$cMOTGZkYU_qL"&a `#c;9Hlainkh$H|%pPBg)No ~wdIY>*09OY-Xw=sD]6FI'  < $ROOT/inputs/input/ruin.919 > ./outputs/t4104

./replace_instrumented.exe '@t' '['  < $ROOT/inputs/input/ruin.570 > ./outputs/t4105

./replace_instrumented.exe '@t' '\dsn|a; |+['  < $ROOT/inputs/input/ruin.1564 > ./outputs/t4106

./replace_instrumented.exe '@t' 'a'  < $ROOT/inputs/input/ruin.1230 > ./outputs/t4107

./replace_instrumented.exe '@t' 'awRjE|M*3XDH%k!OG%su\7'\''h:r@xuKZ%'  < $ROOT/inputs/input/ruin.1400 > ./outputs/t4108

./replace_instrumented.exe '@t' 't'  < $ROOT/inputs/input/ruin.942 > ./outputs/t4109

./replace_instrumented.exe '@t' 'xDC'  < $ROOT/inputs/input/ruin.156 > ./outputs/t4110

./replace_instrumented.exe '@t' '}'  < $ROOT/inputs/input/ruin.937 > ./outputs/t4111

./replace_instrumented.exe '@t'\''lm@GD@@' 'Y>qrcPjB9#V'  < $ROOT/inputs/input/ruin.1682 > ./outputs/t4112

./replace_instrumented.exe '@t*$' '.'  < $ROOT/inputs/input/ruin.1244 > ./outputs/t4113

./replace_instrumented.exe '@t*- *?[^a--]-c*?$' '&'  < $ROOT/inputs/temp-test/1730.inp.735.8 > ./outputs/t4114

./replace_instrumented.exe '@t*- *?[^a--]-c*?' '&'  < $ROOT/inputs/temp-test/1727.inp.735.1 > ./outputs/t4115

./replace_instrumented.exe '@t*- *?[^a--]-c*?' '&'  < $ROOT/inputs/temp-test/1728.inp.735.2 > ./outputs/t4116

./replace_instrumented.exe '@t*- *?[^a--]-c*?' '&'  < $ROOT/inputs/temp-test/1729.inp.735.3 > ./outputs/t4117

./replace_instrumented.exe '@t*-@[*-*-' '&a@%'  < $ROOT/inputs/temp-test/1633.inp.695.1 > ./outputs/t4118

./replace_instrumented.exe '@t*-@[*-*-' '&a@%'  < $ROOT/inputs/temp-test/1634.inp.695.3 > ./outputs/t4119

./replace_instrumented.exe '@t*?' '@%&a'  < $ROOT/inputs/temp-test/1170.inp.504.1 > ./outputs/t4120

./replace_instrumented.exe '@t*?' '@%&a'  < $ROOT/inputs/temp-test/1171.inp.504.2 > ./outputs/t4121

./replace_instrumented.exe '@t*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/121.inp.57.1 > ./outputs/t4122

./replace_instrumented.exe '@t*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/122.inp.57.2 > ./outputs/t4123

./replace_instrumented.exe '@t*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/123.inp.57.3 > ./outputs/t4124

./replace_instrumented.exe '@t*[^--z][^0-9]?[^a-c]-' '&'  < $ROOT/inputs/temp-test/2223.inp.942.1 > ./outputs/t4125

./replace_instrumented.exe '@t?' 'yy'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4126

./replace_instrumented.exe '@t@n' '/&q'  < $ROOT/inputs/input/ruin.539 > ./outputs/t4127

./replace_instrumented.exe '@t@n**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4128

./replace_instrumented.exe '@t@t**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4129

./replace_instrumented.exe '@t[^0-9]' '8:,4]/)V7{X`&WCS"*eV#CiLR?Ey@wNa&*]Cm=?qNu/|~.wD'  < $ROOT/inputs/input/ruin.668 > ./outputs/t4130

./replace_instrumented.exe '@t[_-z][^9-B]--@**?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/702.inp.304.1 > ./outputs/t4131

./replace_instrumented.exe '@t[_-z][^9-B]--@**?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/703.inp.304.2 > ./outputs/t4132

./replace_instrumented.exe '@t[a-z]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4133

./replace_instrumented.exe '@ta[0-9]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4134

./replace_instrumented.exe '@v' '['  < $ROOT/inputs/input/ruin.660 > ./outputs/t4135

./replace_instrumented.exe '@v' 'uQhw$/lp,W6|T.kU[ali/|!:*<'\'''\''fd*qm0L}CmT^_<F@A5_P]'\''%P$nTZ'  < $ROOT/inputs/input/ruin.1131 > ./outputs/t4136

./replace_instrumented.exe '@wT\W[tlZ@@' 'F'  < $ROOT/inputs/input/ruin.1811 > ./outputs/t4137

./replace_instrumented.exe '@x' 'E2[HVM]HQd4'\''S'  < $ROOT/inputs/input/ruin.940 > ./outputs/t4138

./replace_instrumented.exe '@z' '&DA%CzwMgf6f9r4:>q"borRtcvj@,P$7J Iatw|%n<DK-a,n'  < $ROOT/inputs/input/ruin.876 > ./outputs/t4139

./replace_instrumented.exe '@z' '/'  < $ROOT/inputs/input/ruin.491 > ./outputs/t4140

./replace_instrumented.exe '@|' ''\'''  < $ROOT/inputs/input/ruin.1305 > ./outputs/t4141

./replace_instrumented.exe '@|' 'E)m'  < $ROOT/inputs/input/ruin.1373 > ./outputs/t4142

./replace_instrumented.exe '@|' 'n'  < $ROOT/inputs/input/ruin.1691 > ./outputs/t4143

./replace_instrumented.exe 'A' '9'  < $ROOT/inputs/input/ruin.214 > ./outputs/t4144

./replace_instrumented.exe 'A' 'KT=b'  < $ROOT/inputs/input/ruin.655 > ./outputs/t4145

./replace_instrumented.exe 'A' 'U~4'  < $ROOT/inputs/input/ruin.1451 > ./outputs/t4146

./replace_instrumented.exe 'A*[9-B]' 'a&'  < $ROOT/inputs/temp-test/1415.inp.607.1 > ./outputs/t4147

./replace_instrumented.exe 'A*[9-B]' 'a&'  < $ROOT/inputs/temp-test/1416.inp.607.3 > ./outputs/t4148

./replace_instrumented.exe 'A*[^0-9]*' '@%@&'  < $ROOT/inputs/temp-test/35.inp.15.1 > ./outputs/t4149

./replace_instrumented.exe 'A-' 'a@n'  < $ROOT/inputs/temp-test/1435.inp.616.1 > ./outputs/t4150

./replace_instrumented.exe 'A-' 'a@n'  < $ROOT/inputs/temp-test/1436.inp.616.2 > ./outputs/t4151

./replace_instrumented.exe 'A-' 'a@nb@tc'  < $ROOT/inputs/temp-test/981.inp.422.1 > ./outputs/t4152

./replace_instrumented.exe 'A-' 'a@nb@tc'  < $ROOT/inputs/temp-test/982.inp.422.2 > ./outputs/t4153

./replace_instrumented.exe 'A?' 'NEW'  < $ROOT/inputs/temp-test/1092.inp.471.1 > ./outputs/t4154

./replace_instrumented.exe 'A?' 'NEW'  < $ROOT/inputs/temp-test/1093.inp.471.2 > ./outputs/t4155

./replace_instrumented.exe 'A?' 'NEW'  < $ROOT/inputs/temp-test/1094.inp.471.4 > ./outputs/t4156

./replace_instrumented.exe 'A?' 'n|G:]y;Zm{7<\G:]y;Zm{7<\33O~h_J33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_Jp'  < $ROOT/inputs/input/ruin.1043 > ./outputs/t4157

./replace_instrumented.exe 'A?' 'n|p'  < $ROOT/inputs/input/ruin.1043 > ./outputs/t4158

./replace_instrumented.exe 'A[0-9]?@**[a-c][^0-9]' '@%&a'  < $ROOT/inputs/temp-test/669.inp.292.1 > ./outputs/t4159

./replace_instrumented.exe 'A[0-9]?@**[a-c][^0-9]' '@%&a'  < $ROOT/inputs/temp-test/670.inp.292.2 > ./outputs/t4160

./replace_instrumented.exe 'A[0-9]?@**[a-c][^0-9]' '@%&a'  < $ROOT/inputs/temp-test/671.inp.292.3 > ./outputs/t4161

./replace_instrumented.exe 'A[9-B]@*[9-B]---*-[_-z]-[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/985.inp.425.1 > ./outputs/t4162

./replace_instrumented.exe 'A[9-B]@*[9-B]---*-[_-z]-[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/986.inp.425.2 > ./outputs/t4163

./replace_instrumented.exe 'A[9-B]@*[9-B]---*-[_-z]-[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/987.inp.425.3 > ./outputs/t4164

./replace_instrumented.exe 'A[9-B]@*[9-B]---*-[_-z]-[^0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/988.inp.425.4 > ./outputs/t4165

./replace_instrumented.exe 'A[^0-9]' '&'  < $ROOT/inputs/temp-test/443.inp.194.1 > ./outputs/t4166

./replace_instrumented.exe 'A[^0-9]' '&'  < $ROOT/inputs/temp-test/444.inp.194.2 > ./outputs/t4167

./replace_instrumented.exe 'A[^a-c[0-9]@[*' '&a@%'  < $ROOT/inputs/temp-test/589.inp.253.1 > ./outputs/t4168

./replace_instrumented.exe 'A[^a-c[0-9]@[*' '&a@%'  < $ROOT/inputs/temp-test/590.inp.253.2 > ./outputs/t4169

./replace_instrumented.exe 'A[^a-c[0-9]@[*' '&a@%'  < $ROOT/inputs/temp-test/591.inp.253.3 > ./outputs/t4170

./replace_instrumented.exe 'A[a-c]' '&'  < $ROOT/inputs/temp-test/787.inp.339.1 > ./outputs/t4171

./replace_instrumented.exe 'A[a-c]' '&'  < $ROOT/inputs/temp-test/788.inp.339.2 > ./outputs/t4172

./replace_instrumented.exe 'AyxAyxg=po%]]@lhZe,xFP.{F:@m}I)|?,WAyxg=po%]]@lhZe,xFP.{F:@m}I)|?,WAyxg=po%]]@lhZe,xFP.{F:@m}I)|?,Wg=po%]]@lhZe,xFP.{F:@m}I)|?,W-[^0-9]*' 'a'  < $ROOT/inputs/moni/f8.inp > ./outputs/t4173

./replace_instrumented.exe 'B' 'Jp=p0sA?1'  < $ROOT/inputs/input/ruin.189 > ./outputs/t4174

./replace_instrumented.exe 'B*' 'LOBA3nKpK'  < $ROOT/inputs/input/ruin.1540 > ./outputs/t4175

./replace_instrumented.exe 'B@n' 'L/'  < $ROOT/inputs/input/ruin.1402 > ./outputs/t4176

./replace_instrumented.exe 'C' '*KzXwIk7N2H\tMB0cSIU)2'  < $ROOT/inputs/input/ruin.261 > ./outputs/t4177

./replace_instrumented.exe 'C' '/;ou%4-Wm7YQOcwuoq~qeI4u{J-'  < $ROOT/inputs/input/ruin.1794 > ./outputs/t4178

./replace_instrumented.exe 'C' 'A@,)aS'  < $ROOT/inputs/input/ruin.255 > ./outputs/t4179

./replace_instrumented.exe 'C' 'yel.mN.aMcN'  < $ROOT/inputs/input/ruin.141 > ./outputs/t4180

./replace_instrumented.exe 'C' '|'  < $ROOT/inputs/input/ruin.263 > ./outputs/t4181

./replace_instrumented.exe 'C*' '\'  < $ROOT/inputs/input/ruin.1504 > ./outputs/t4182

./replace_instrumented.exe 'D' '%0,*G^75(j/ZwU5liE,jWQ((cq::$.B SGUhf% uN'  < $ROOT/inputs/input/ruin.1654 > ./outputs/t4183

./replace_instrumented.exe 'D' '4'  < $ROOT/inputs/input/ruin.1266 > ./outputs/t4184

./replace_instrumented.exe 'D' 'EI3"JSr"Wv1YW:m,fR@cfETz#.'\'''\'')fO#'  < $ROOT/inputs/input/ruin.717 > ./outputs/t4185

./replace_instrumented.exe 'D' 'W"Kax!`^75zx?2@p4;(PY(a+_a)5rq*!x\i]-?+2Z"^b7b*0*ucQ}Pb )zRL24-Rc iB'  < $ROOT/inputs/input/ruin.920 > ./outputs/t4186

./replace_instrumented.exe 'D'  < $ROOT/inputs/input/ruin.1266 > ./outputs/t4187

./replace_instrumented.exe 'D*@@*' '~'  < $ROOT/inputs/input/ruin.1524 > ./outputs/t4188

./replace_instrumented.exe 'D?' 'EI3"JSr"Wv1YW:m,fR@cfETz#.'\'''\'')fO#'  < $ROOT/inputs/input/ruin.717 > ./outputs/t4189

./replace_instrumented.exe 'E@n' '0'  < $ROOT/inputs/input/ruin.313 > ./outputs/t4190

./replace_instrumented.exe 'EW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*EW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*EW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*EW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*EW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*EW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*EW-?-c*[0-9][a-c]-?A-?-c*[0-9][a-c]-?A-?-c*' 'l[*U(0T7mn'  < $ROOT/inputs/input/ruin.1352 > ./outputs/t4191

./replace_instrumented.exe 'EW-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?A-?-cEW-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?A-?-cEW-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?A-?-cEW-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?A-?-cEW-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?A-?-cEW-?-c[0-9][a-c]-?A-?-c[0-9][a-c]-?A-?-cEW-?-c0-9][a-c]-?A-?-c[0-9][a-c]-?A-?-c[0-9]*' 'l[*U(0T7mn'  < $ROOT/inputs/input/ruin.1352 > ./outputs/t4192

./replace_instrumented.exe 'EW-[0-9][^0-9][@t][^@][9-B]-[0-9][^0-9][@t0-9]@@]@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t[9-B]-[0-@][9-B]-[0-9][^0-9][@t9][^0-9@][9-B]-[0-9][^0-9][@t@][9-B]-[0-9][^0-9][@t]*[@t@][9-B]-*[0-9][^0-9][@t' ''  < $ROOT/inputs/moni/f8.inp > ./outputs/t4193

./replace_instrumented.exe 'F' 'O'  < $ROOT/inputs/input/ruin.1425 > ./outputs/t4194

./replace_instrumented.exe 'F' 'WX<&l^t0+KUz-hc#38V(a+S5F w|V~[]SX-XF-1fiksa['  < $ROOT/inputs/input/ruin.620 > ./outputs/t4195

./replace_instrumented.exe 'F' 'b'  < $ROOT/inputs/input/ruin.1271 > ./outputs/t4196

./replace_instrumented.exe 'F*$' '[SnK:ScY3|gj)p9qF'  < $ROOT/inputs/input/ruin.1107 > ./outputs/t4197

./replace_instrumented.exe 'G' '4N9'  < $ROOT/inputs/input/ruin.656 > ./outputs/t4198

./replace_instrumented.exe 'G' '@TG<!e"F'  < $ROOT/inputs/input/ruin.814 > ./outputs/t4199

./replace_instrumented.exe 'H' 'j-8m$"la'  < $ROOT/inputs/input/ruin.272 > ./outputs/t4200

./replace_instrumented.exe 'H8WstZ' 'B'  < $ROOT/inputs/input/ruin.808 > ./outputs/t4201

./replace_instrumented.exe 'K' 'C'  < $ROOT/inputs/input/ruin.1006 > ./outputs/t4202

./replace_instrumented.exe 'K' '~yV0-:222<W/.gu!m4(Uzh;q{+F?H13VV=3'  < $ROOT/inputs/input/ruin.262 > ./outputs/t4203

./replace_instrumented.exe 'L' '3'  < $ROOT/inputs/input/ruin.1662 > ./outputs/t4204

./replace_instrumented.exe 'L' '\'  < $ROOT/inputs/input/ruin.54 > ./outputs/t4205

./replace_instrumented.exe 'L' '|}HL'  < $ROOT/inputs/input/ruin.1345 > ./outputs/t4206

./replace_instrumented.exe 'L]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY[0-9]*' '|}HL'  < $ROOT/inputs/input/ruin.1345 > ./outputs/t4207

./replace_instrumented.exe 'M' 'Cj"P[Am~9?yD6$!CL]i35p`"R"/.6A*Y6b8#y)#}^"'  < $ROOT/inputs/input/ruin.467 > ./outputs/t4208

./replace_instrumented.exe 'M' 'D'  < $ROOT/inputs/input/ruin.1199 > ./outputs/t4209

./replace_instrumented.exe 'M' 'kE]3,iYi}HxHv$4g_4Un8pHk&TFT([dkb^2'  < $ROOT/inputs/input/ruin.840 > ./outputs/t4210

./replace_instrumented.exe 'M' 'sizo5Mt^V>)QHSUlI}Zgpr(C.59OiQ;R>StQx95)ab]'  < $ROOT/inputs/input/ruin.193 > ./outputs/t4211

./replace_instrumented.exe 'M' 'tx'\''%~x55x9M '  < $ROOT/inputs/input/ruin.1763 > ./outputs/t4212

./replace_instrumented.exe 'N' '6Ws|xIfoO~JSwkEPBr8s/VE '  < $ROOT/inputs/input/ruin.1112 > ./outputs/t4213

./replace_instrumented.exe 'N' '=$(4a6[U'  < $ROOT/inputs/input/ruin.423 > ./outputs/t4214

./replace_instrumented.exe 'N' '`d+gs"uyr#OV+nf@.:.%V.?GP'  < $ROOT/inputs/input/ruin.1991 > ./outputs/t4215

./replace_instrumented.exe 'N*$' '6Ws|xIfoO~JSwkEPBr8s/VE '  < $ROOT/inputs/input/ruin.1112 > ./outputs/t4216

./replace_instrumented.exe 'N*$' '`d+gs"uyr#OV+nf@.:.%V.?GP'  < $ROOT/inputs/input/ruin.1991 > ./outputs/t4217

./replace_instrumented.exe 'NEWNEW-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0[^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t4218

./replace_instrumented.exe 'NEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEW-[^0-9][0-9]A@@*' 'NEW'  < $ROOT/inputs/temp-test/1584.inp.675.1 > ./outputs/t4219

./replace_instrumented.exe 'NEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEW-[^0-9][0-9]A@@*[^0-9][9-B]@@[^a-c]--[0-9][9-B][^a-]' 'NEW'  < $ROOT/inputs/temp-test/1584.inp.675.1 > ./outputs/t4220

./replace_instrumented.exe 'NEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEWNEW-[a-b]@A*' 'NEW'  < $ROOT/inputs/temp-test/1584.inp.675.1 > ./outputs/t4221

./replace_instrumented.exe 'O' 'y'  < $ROOT/inputs/input/ruin.1367 > ./outputs/t4222

./replace_instrumented.exe 'O' 'yxk&IcrOvB79'  < $ROOT/inputs/input/ruin.1324 > ./outputs/t4223

./replace_instrumented.exe 'P' '#uy6z!;7!5}BP}j(]y|jFd!P8'  < $ROOT/inputs/input/ruin.530 > ./outputs/t4224

./replace_instrumented.exe 'P' ')9'\''8k3|Ny$1(){7:uAh@|7_0P==NHS+k*aGI.Ii)Jo'  < $ROOT/inputs/input/ruin.1260 > ./outputs/t4225

./replace_instrumented.exe 'P' '8dnIaK~FIW<<Q;Z7/e'  < $ROOT/inputs/input/ruin.709 > ./outputs/t4226

./replace_instrumented.exe 'P' 'C%^&1c)TylhX%4~p?xve1crIe>QYS'  < $ROOT/inputs/input/ruin.1819 > ./outputs/t4227

./replace_instrumented.exe 'P' 'H'  < $ROOT/inputs/input/ruin.1444 > ./outputs/t4228

./replace_instrumented.exe 'Q' '['  < $ROOT/inputs/input/ruin.1505 > ./outputs/t4229

./replace_instrumented.exe 'Q' 'a3ZF0Vxb'\''Lv@Ok8KPvf'  < $ROOT/inputs/input/ruin.699 > ./outputs/t4230

./replace_instrumented.exe 'Q' 'wNqDw*g-Fd<<T<2_s<p7'  < $ROOT/inputs/input/ruin.535 > ./outputs/t4231

./replace_instrumented.exe 'Q'\''A%ON,r[^Q]' ''  < $ROOT/inputs/input/ruin.1604 > ./outputs/t4232

./replace_instrumented.exe 'Q?*'\''A%ON,r[^Q]' ''  < $ROOT/inputs/input/ruin.1604 > ./outputs/t4233

./replace_instrumented.exe 'R' ' wMNQ]FT4jT:<n~RM@!U'  < $ROOT/inputs/input/ruin.540 > ./outputs/t4234

./replace_instrumented.exe 'R' '.UxpVIk4j5.x#~A_?tJgxk(iJog'  < $ROOT/inputs/input/ruin.1469 > ./outputs/t4235

./replace_instrumented.exe 'R' ';'  < $ROOT/inputs/input/ruin.1925 > ./outputs/t4236

./replace_instrumented.exe 'R' '=IM'  < $ROOT/inputs/input/ruin.30 > ./outputs/t4237

./replace_instrumented.exe 'S$' ',;38fvdrW+/RE#MD&O/^AZjdQz2X4GAE'  < $ROOT/inputs/input/ruin.102 > ./outputs/t4238

./replace_instrumented.exe 'S' ')B.>,{|a%= :,/e]SAZV~B;$SmeJsO^(vS.D?5N%tI4~'  < $ROOT/inputs/input/ruin.1646 > ./outputs/t4239

./replace_instrumented.exe 'S' '*q2"V]-tl5iK"z^gn'  < $ROOT/inputs/input/ruin.1004 > ./outputs/t4240

./replace_instrumented.exe 'S' 'Mu4y5Jmglv#)'  < $ROOT/inputs/input/ruin.768 > ./outputs/t4241

./replace_instrumented.exe 'S' 'b8SsJNUimj[N?#ok`'  < $ROOT/inputs/input/ruin.1021 > ./outputs/t4242

./replace_instrumented.exe 'T' '*O'  < $ROOT/inputs/input/ruin.1603 > ./outputs/t4243

./replace_instrumented.exe 'T?*' '*O'  < $ROOT/inputs/input/ruin.1603 > ./outputs/t4244

./replace_instrumented.exe 'T@@' '.b'  < $ROOT/inputs/input/ruin.361 > ./outputs/t4245

./replace_instrumented.exe 'T@@' 'n'  < $ROOT/inputs/input/ruin.854 > ./outputs/t4246

./replace_instrumented.exe 'U' ''  < $ROOT/inputs/input/ruin.1571 > ./outputs/t4247

./replace_instrumented.exe 'U' 'J'  < $ROOT/inputs/input/ruin.99 > ./outputs/t4248

./replace_instrumented.exe 'U' 'f'  < $ROOT/inputs/input/ruin.798 > ./outputs/t4249

./replace_instrumented.exe 'V' '#'  < $ROOT/inputs/input/ruin.1851 > ./outputs/t4250

./replace_instrumented.exe 'V' '>'\''q'  < $ROOT/inputs/input/ruin.1273 > ./outputs/t4251

./replace_instrumented.exe 'V' 'o'  < $ROOT/inputs/input/ruin.107 > ./outputs/t4252

./replace_instrumented.exe 'V' 'x'  < $ROOT/inputs/input/ruin.863 > ./outputs/t4253

./replace_instrumented.exe 'W$' '7'  < $ROOT/inputs/input/ruin.1302 > ./outputs/t4254

./replace_instrumented.exe 'W' '4'  < $ROOT/inputs/input/ruin.1931 > ./outputs/t4255

./replace_instrumented.exe 'W' 'W='  < $ROOT/inputs/input/ruin.999 > ./outputs/t4256

./replace_instrumented.exe 'W' 'cCeuNv}}<pw83QZL=[v%D!jP]z[`?=f9b?1A'  < $ROOT/inputs/input/ruin.24 > ./outputs/t4257

./replace_instrumented.exe 'W' 'es'  < $ROOT/inputs/input/ruin.712 > ./outputs/t4258

./replace_instrumented.exe 'WF@@' 'r'  < $ROOT/inputs/input/ruin.1450 > ./outputs/t4259

./replace_instrumented.exe 'X' '"'  < $ROOT/inputs/input/ruin.1765 > ./outputs/t4260

./replace_instrumented.exe 'X' '6?@UBgSAstKhS|SHH*nQ#bN4t}}E6X%KVg9Q.21Hl7[ot[r`rE %IheDivd`\b7dfg^'\''^Ysr=zRchgkQLx{aoU@`'  < $ROOT/inputs/input/ruin.431 > ./outputs/t4261

./replace_instrumented.exe 'X' '}'  < $ROOT/inputs/input/ruin.1753 > ./outputs/t4262

./replace_instrumented.exe 'X[>-A]\Mb%-N@@*' '4'  < $ROOT/inputs/input/ruin.1808 > ./outputs/t4263

./replace_instrumented.exe 'X[A-G]' '_'  < $ROOT/inputs/input/ruin.604 > ./outputs/t4264

./replace_instrumented.exe 'Y$' '$]'  < $ROOT/inputs/input/ruin.691 > ./outputs/t4265

./replace_instrumented.exe 'Y' ''  < $ROOT/inputs/input/ruin.1988 > ./outputs/t4266

./replace_instrumented.exe 'Y' ')}&>hBN)HZF_obPasG*I4tso.>?+2Vcp'  < $ROOT/inputs/input/ruin.1405 > ./outputs/t4267

./replace_instrumented.exe 'Y' 'pW0qy>=,KL"X@t<=mT(@/+]>BxhOE&FMUU'  < $ROOT/inputs/input/ruin.1481 > ./outputs/t4268

./replace_instrumented.exe 'YN[^)0-9]' '<KVDSFwGr=)<pMBhEhiwPgVy@F'  < $ROOT/inputs/input/ruin.1495 > ./outputs/t4269

./replace_instrumented.exe 'Z' '!'  < $ROOT/inputs/input/ruin.1085 > ./outputs/t4270

./replace_instrumented.exe 'Z' 'QHJV7!Ty3gBtmt_(NOk;73R>j*\Hq.B?RLmD$3y]%ay(M! '  < $ROOT/inputs/input/ruin.1154 > ./outputs/t4271

./replace_instrumented.exe 'Z' 'k$HcHD(tVs}`VS'  < $ROOT/inputs/input/ruin.1141 > ./outputs/t4272

./replace_instrumented.exe 'Z' 'k'  < $ROOT/inputs/input/ruin.1936 > ./outputs/t4273

./replace_instrumented.exe 'Z'  < $ROOT/inputs/input/ruin.1154 > ./outputs/t4274

./replace_instrumented.exe '[ ]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4275

./replace_instrumented.exe '[!]*\@@' 'X'\'',id`ucU?Bhj!aeGJ~qW=F*9LTRouw#I-quWg}}wkR8Cwfff{{JGSTC2v7(*^3wSqSn{{\Jx9r8a'  < $ROOT/inputs/input/ruin.130 > ./outputs/t4276

./replace_instrumented.exe '[%a-c[9-B]c*^-[0-9]-^*?@[-[^a-c]?' 'b@t'  < $ROOT/inputs/temp-test/2345.inp.996.2 > ./outputs/t4277

./replace_instrumented.exe '[)]' 'o'  < $ROOT/inputs/input/ruin.1965 > ./outputs/t4278

./replace_instrumented.exe '[*]' 'k0x@zTL"t{3F#Ha7~@k+:!hc]OtZ~i}h?rr}'  < $ROOT/inputs/input/ruin.596 > ./outputs/t4279

./replace_instrumented.exe '[-?' '@n'  < $ROOT/inputs/temp-test/81.inp.36.1 > ./outputs/t4280

./replace_instrumented.exe '[-?' '@n'  < $ROOT/inputs/temp-test/82.inp.36.3 > ./outputs/t4281

./replace_instrumented.exe '[-?-]?-?^-][0-9][_-z]?' 'NEW'  < $ROOT/inputs/temp-test/959.inp.413.1 > ./outputs/t4282

./replace_instrumented.exe '[-?-]?-?^-][0-9][_-z]?' 'NEW'  < $ROOT/inputs/temp-test/960.inp.413.3 > ./outputs/t4283

./replace_instrumented.exe '[-^?[9-B][^a-][9-B]-[-??--@t' 'a&'  < $ROOT/inputs/temp-test/403.inp.176.1 > ./outputs/t4284

./replace_instrumented.exe '[-z]?' 'a&'  < $ROOT/inputs/temp-test/652.inp.283.1 > ./outputs/t4285

./replace_instrumented.exe '[-z][^--z]' 'a&'  < $ROOT/inputs/temp-test/1089.inp.469.1 > ./outputs/t4286

./replace_instrumented.exe '[-z][^--z]' 'a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&a&'  < $ROOT/inputs/temp-test/1089.inp.469.1 > ./outputs/t4287

./replace_instrumented.exe '[-z][^0-9]' '@%&a'  < $ROOT/inputs/temp-test/1901.inp.806.1 > ./outputs/t4288

./replace_instrumented.exe '[-z][^0-9]' '@%&a'  < $ROOT/inputs/temp-test/1902.inp.806.2 > ./outputs/t4289

./replace_instrumented.exe '[-z][^9-B]?--[^9-B]-[^9-B][^9-B]-?@[' '@n'  < $ROOT/inputs/temp-test/2095.inp.888.1 > ./outputs/t4290

./replace_instrumented.exe '[0-9@[@%^2]*?' 'c'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4291

./replace_instrumented.exe '[0-9@[^2]*' 'c'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4292

./replace_instrumented.exe '[0-9A-G]' '$g!HB8cbI<,U1Q7<r%tEEDC['\''N?'  < $ROOT/inputs/input/ruin.1516 > ./outputs/t4293

./replace_instrumented.exe '[0-9Z-a]^_`a]' 'a'  < $ROOT/inputs/input/ruin.713 > ./outputs/t4294

./replace_instrumented.exe '[0-9] *?@[*[0-9]?' '&'  < $ROOT/inputs/temp-test/1647.inp.702.1 > ./outputs/t4295

./replace_instrumented.exe '[0-9] [^@@]?A??[^@n]@@' '@%&a'  < $ROOT/inputs/temp-test/1621.inp.689.1 > ./outputs/t4296

./replace_instrumented.exe '[0-9]%?' '@t'  < $ROOT/inputs/temp-test/2339.inp.994.1 > ./outputs/t4297

./replace_instrumented.exe '[0-9]%?' '@t'  < $ROOT/inputs/temp-test/2340.inp.994.3 > ./outputs/t4298

./replace_instrumented.exe '[0-9]' '&@n'  < $ROOT/inputs/temp-test/698.inp.302.1 > ./outputs/t4299

./replace_instrumented.exe '[0-9]' '&@n'  < $ROOT/inputs/temp-test/699.inp.302.3 > ./outputs/t4300

./replace_instrumented.exe '[0-9]' '&a@%'  < $ROOT/inputs/temp-test/592.inp.254.1 > ./outputs/t4301

./replace_instrumented.exe '[0-9]' '&a@%'  < $ROOT/inputs/temp-test/593.inp.254.2 > ./outputs/t4302

./replace_instrumented.exe '[0-9]' '9'  < $ROOT/inputs/input/ruin.617 > ./outputs/t4303

./replace_instrumented.exe '[0-9]' '@%&a'  < $ROOT/inputs/temp-test/1478.inp.634.1 > ./outputs/t4304

./replace_instrumented.exe '[0-9]' '@%&a'  < $ROOT/inputs/temp-test/1479.inp.634.2 > ./outputs/t4305

./replace_instrumented.exe '[0-9]' '@%@&'  < $ROOT/inputs/temp-test/1065.inp.458.1 > ./outputs/t4306

./replace_instrumented.exe '[0-9]' '@%@&'  < $ROOT/inputs/temp-test/1066.inp.458.2 > ./outputs/t4307

./replace_instrumented.exe '[0-9]' '@%@&'  < $ROOT/inputs/temp-test/1067.inp.458.3 > ./outputs/t4308

./replace_instrumented.exe '[0-9]' '@'  < $ROOT/inputs/input/ruin.1254 > ./outputs/t4309

./replace_instrumented.exe '[0-9]' '@9ad|W{5Opa?mnxf=Jhe>u5Dh\*W:.1Q*tSCyX79o5v;D91S\@,R:mmfL'  < $ROOT/inputs/input/ruin.267 > ./outputs/t4310

./replace_instrumented.exe '[0-9]' '@t'  < $ROOT/inputs/temp-test/2302.inp.978.1 > ./outputs/t4311

./replace_instrumented.exe '[0-9]' '@t'  < $ROOT/inputs/temp-test/2303.inp.978.2 > ./outputs/t4312

./replace_instrumented.exe '[0-9]' 'D'  < $ROOT/inputs/input/ruin.1443 > ./outputs/t4313

./replace_instrumented.exe '[0-9]' 'G'  < $ROOT/inputs/input/ruin.57 > ./outputs/t4314

./replace_instrumented.exe '[0-9]' 'L3n1<EN|F8u?><i{'  < $ROOT/inputs/input/ruin.891 > ./outputs/t4315

./replace_instrumented.exe '[0-9]' 'NEW'  < $ROOT/inputs/temp-test/849.inp.365.1 > ./outputs/t4316

./replace_instrumented.exe '[0-9]' 'NEW'  < $ROOT/inputs/temp-test/850.inp.365.2 > ./outputs/t4317

./replace_instrumented.exe '[0-9]' 'SryF'  < $ROOT/inputs/input/ruin.1576 > ./outputs/t4318

./replace_instrumented.exe '[0-9]' 'TeqP2iu]R?wiH?0?xlG9pCy?y9'  < $ROOT/inputs/input/ruin.1392 > ./outputs/t4319

./replace_instrumented.exe '[0-9]' 'V9U,`[95h_,<BuOOS)?:@yaM3"l5/vWQv242)yJ],?_[&49@y>|;ahg7Hd:wja'  < $ROOT/inputs/input/ruin.1499 > ./outputs/t4320

./replace_instrumented.exe '[0-9]' 'X'  < $ROOT/inputs/input/ruin.1759 > ./outputs/t4321

./replace_instrumented.exe '[0-9]' '[[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B][[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B][[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B][[^9-B][_-z]c^a-]^*-?[^0-9]-[^9-B]a&'  < $ROOT/inputs/temp-test/2266.inp.961.1 > ./outputs/t4322

./replace_instrumented.exe '[0-9]' '`+/Xl'  < $ROOT/inputs/input/ruin.303 > ./outputs/t4323

./replace_instrumented.exe '[0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1348.inp.579.1 > ./outputs/t4324

./replace_instrumented.exe '[0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1349.inp.579.2 > ./outputs/t4325

./replace_instrumented.exe '[0-9]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1350.inp.579.3 > ./outputs/t4326

./replace_instrumented.exe '[0-9]' 'aM9n8"47mFoC> PGpU!,U'  < $ROOT/inputs/input/ruin.1294 > ./outputs/t4327

./replace_instrumented.exe '[0-9]*$' '@'  < $ROOT/inputs/input/ruin.1254 > ./outputs/t4328

./replace_instrumented.exe '[0-9]*' '&@n'  < $ROOT/inputs/moni/f8.inp > ./outputs/t4329

./replace_instrumented.exe '[0-9]*' ''  < $ROOT/inputs/temp-test/157.inp.71.1 > ./outputs/t4330

./replace_instrumented.exe '[0-9]*' ''  < $ROOT/inputs/temp-test/158.inp.71.2 > ./outputs/t4331

./replace_instrumented.exe '[0-9]-' '&'  < $ROOT/inputs/temp-test/145.inp.67.1 > ./outputs/t4332

./replace_instrumented.exe '[0-9]-' '&'  < $ROOT/inputs/temp-test/146.inp.67.2 > ./outputs/t4333

./replace_instrumented.exe '[0-9]-' ''  < $ROOT/inputs/temp-test/118.inp.55.1 > ./outputs/t4334

./replace_instrumented.exe '[0-9]-' '@%@&'  < $ROOT/inputs/temp-test/1166.inp.502.1 > ./outputs/t4335

./replace_instrumented.exe '[0-9]-' '@%@&'  < $ROOT/inputs/temp-test/1167.inp.502.3 > ./outputs/t4336

./replace_instrumented.exe '[0-9]-' 'a@n'  < $ROOT/inputs/temp-test/1619.inp.688.1 > ./outputs/t4337

./replace_instrumented.exe '[0-9]-' 'a@n'  < $ROOT/inputs/temp-test/1620.inp.688.3 > ./outputs/t4338

./replace_instrumented.exe '[0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1029.inp.443.1 > ./outputs/t4339

./replace_instrumented.exe '[0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1030.inp.443.2 > ./outputs/t4340

./replace_instrumented.exe '[0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1031.inp.443.3 > ./outputs/t4341

./replace_instrumented.exe '[0-9]-' 'a@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tca@nb@tc'  < $ROOT/inputs/temp-test/1029.inp.443.1 > ./outputs/t4342

./replace_instrumented.exe '[0-9]--*[^a-c]' '&a@%'  < $ROOT/inputs/temp-test/152.inp.69.1 > ./outputs/t4343

./replace_instrumented.exe '[0-9]--*[^a-c]' '&a@%'  < $ROOT/inputs/temp-test/153.inp.69.2 > ./outputs/t4344

./replace_instrumented.exe '[0-9]--*[^a-c]' '&a@%'  < $ROOT/inputs/temp-test/154.inp.69.3 > ./outputs/t4345

./replace_instrumented.exe '[0-9]-?-?[a-c][^9-B]@[*-' '&'  < $ROOT/inputs/temp-test/409.inp.179.1 > ./outputs/t4346

./replace_instrumented.exe '[0-9]-[9-B]?-[9-B]^-]?' 'NEW'  < $ROOT/inputs/temp-test/1669.inp.712.1 > ./outputs/t4347

./replace_instrumented.exe '[0-9]-[9-B]?-[9-B]^-]?' 'NEW'  < $ROOT/inputs/temp-test/1670.inp.712.2 > ./outputs/t4348

./replace_instrumented.exe '[0-9]-[9-B]?-[9-B]^-]?' 'NEW'  < $ROOT/inputs/temp-test/1671.inp.712.4 > ./outputs/t4349

./replace_instrumented.exe '[0-9]?' '&'  < $ROOT/inputs/temp-test/1865.inp.792.1 > ./outputs/t4350

./replace_instrumented.exe '[0-9]?' '&'  < $ROOT/inputs/temp-test/1866.inp.792.2 > ./outputs/t4351

./replace_instrumented.exe '[0-9]?' '&'  < $ROOT/inputs/temp-test/1867.inp.792.3 > ./outputs/t4352

./replace_instrumented.exe '[0-9]?' '&a@%'  < $ROOT/inputs/temp-test/752.inp.323.1 > ./outputs/t4353

./replace_instrumented.exe '[0-9]?' '&a@%'  < $ROOT/inputs/temp-test/753.inp.323.2 > ./outputs/t4354

./replace_instrumented.exe '[0-9]?' '&a@%'  < $ROOT/inputs/temp-test/754.inp.323.3 > ./outputs/t4355

./replace_instrumented.exe '[0-9]?' '@%@&'  < $ROOT/inputs/temp-test/698.inp.302.1 > ./outputs/t4356

./replace_instrumented.exe '[0-9]?' '@%@&'  < $ROOT/inputs/temp-test/699.inp.302.3 > ./outputs/t4357

./replace_instrumented.exe '[0-9]?' '@t'  < $ROOT/inputs/temp-test/1046.inp.451.1 > ./outputs/t4358

./replace_instrumented.exe '[0-9]?' '@t'  < $ROOT/inputs/temp-test/1047.inp.451.2 > ./outputs/t4359

./replace_instrumented.exe '[0-9]?' '@t'  < $ROOT/inputs/temp-test/2339.inp.994.1 > ./outputs/t4360

./replace_instrumented.exe '[0-9]?' '@t'  < $ROOT/inputs/temp-test/2340.inp.994.3 > ./outputs/t4361

./replace_instrumented.exe '[0-9]?' 'NEW'  < $ROOT/inputs/temp-test/919.inp.397.1 > ./outputs/t4362

./replace_instrumented.exe '[0-9]?' 'NEW'  < $ROOT/inputs/temp-test/920.inp.397.3 > ./outputs/t4363

./replace_instrumented.exe '[0-9]?' 'NEW'  < $ROOT/inputs/temp-test/921.inp.397.4 > ./outputs/t4364

./replace_instrumented.exe '[0-9]?' 'a&'  < $ROOT/inputs/temp-test/2040.inp.865.1 > ./outputs/t4365

./replace_instrumented.exe '[0-9]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1365.inp.586.1 > ./outputs/t4366

./replace_instrumented.exe '[0-9]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1366.inp.586.2 > ./outputs/t4367

./replace_instrumented.exe '[0-9]?-[a-]@[*' '@%&a'  < $ROOT/inputs/temp-test/1231.inp.528.1 > ./outputs/t4368

./replace_instrumented.exe '[0-9]?-[a-]@[*' '@%&a'  < $ROOT/inputs/temp-test/1232.inp.528.2 > ./outputs/t4369

./replace_instrumented.exe '[0-9]??@@-[a--]-' '@%&a'  < $ROOT/inputs/temp-test/1532.inp.656.1 > ./outputs/t4370

./replace_instrumented.exe '[0-9]??@@-[a--]-' '@%&a'  < $ROOT/inputs/temp-test/1533.inp.656.2 > ./outputs/t4371

./replace_instrumented.exe '[0-9]??@@-[a--]-' '@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a@%&a'  < $ROOT/inputs/temp-test/1532.inp.656.1 > ./outputs/t4372

./replace_instrumented.exe '[0-9]?[^0-9]@[-[9-B]-[^0-9]-[^9-B]' ''  < $ROOT/inputs/temp-test/983.inp.423.1 > ./outputs/t4373

./replace_instrumented.exe '[0-9]?^[^0-9]?-[^0-9]c[^a--]-[0-9][^9-B]@n[^0-9][9-B]?' '@n'  < $ROOT/inputs/temp-test/1629.inp.693.1 > ./outputs/t4374

./replace_instrumented.exe '[0-9]@$' 'c'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4375

./replace_instrumented.exe '[0-9]@*' '&'  < $ROOT/inputs/temp-test/1114.inp.479.1 > ./outputs/t4376

./replace_instrumented.exe '[0-9]@*' '&'  < $ROOT/inputs/temp-test/1115.inp.479.3 > ./outputs/t4377

./replace_instrumented.exe '[0-9]@*' '&'  < $ROOT/inputs/temp-test/1116.inp.479.4 > ./outputs/t4378

./replace_instrumented.exe '[0-9]@*' '&'  < $ROOT/inputs/temp-test/1296.inp.556.1 > ./outputs/t4379

./replace_instrumented.exe '[0-9]@*' 'a@n'  < $ROOT/inputs/temp-test/298.inp.134.1 > ./outputs/t4380

./replace_instrumented.exe '[0-9]@*' 'a@n'  < $ROOT/inputs/temp-test/299.inp.134.2 > ./outputs/t4381

./replace_instrumented.exe '[0-9]@*' 'a@n'  < $ROOT/inputs/temp-test/300.inp.134.3 > ./outputs/t4382

./replace_instrumented.exe '[0-9]@*^-]$' '@n'  < $ROOT/inputs/temp-test/1474.inp.632.8 > ./outputs/t4383

./replace_instrumented.exe '[0-9]@*^-]' '@n'  < $ROOT/inputs/temp-test/1473.inp.632.1 > ./outputs/t4384

./replace_instrumented.exe '[0-9]@@' '@%&a'  < $ROOT/inputs/temp-test/1694.inp.723.1 > ./outputs/t4385

./replace_instrumented.exe '[0-9]@@' '@%&a'  < $ROOT/inputs/temp-test/1695.inp.723.2 > ./outputs/t4386

./replace_instrumented.exe '[0-9]@[*' '@n'  < $ROOT/inputs/temp-test/843.inp.362.1 > ./outputs/t4387

./replace_instrumented.exe '[0-9]@n' '9&@t@t'  < $ROOT/inputs/input/ruin.617 > ./outputs/t4388

./replace_instrumented.exe '[0-9]@n' 'k&e'  < $ROOT/inputs/input/ruin.280 > ./outputs/t4389

./replace_instrumented.exe '[0-9]@n' 'o&6'  < $ROOT/inputs/input/ruin.284 > ./outputs/t4390

./replace_instrumented.exe '[0-9]A*@n?-?^*-' ''  < $ROOT/inputs/temp-test/1947.inp.827.1 > ./outputs/t4391

./replace_instrumented.exe '[0-9]A*@n?-?^*-' ''  < $ROOT/inputs/temp-test/1948.inp.827.2 > ./outputs/t4392

./replace_instrumented.exe '[0-9]A*@n?-?^*-' ''  < $ROOT/inputs/temp-test/1949.inp.827.3 > ./outputs/t4393

./replace_instrumented.exe '[0-9]A*@n?-?^*-' ''  < $ROOT/inputs/temp-test/1950.inp.827.4 > ./outputs/t4394

./replace_instrumented.exe '[0-9][^-' '@%@&'  < $ROOT/inputs/temp-test/324.inp.144.1 > ./outputs/t4395

./replace_instrumented.exe '[0-9][^-' '@%@&'  < $ROOT/inputs/temp-test/325.inp.144.2 > ./outputs/t4396

./replace_instrumented.exe '[0-9][^0-9]' '&'  < $ROOT/inputs/temp-test/564.inp.243.1 > ./outputs/t4397

./replace_instrumented.exe '[0-9][^0-9]' '&'  < $ROOT/inputs/temp-test/565.inp.243.3 > ./outputs/t4398

./replace_instrumented.exe '[0-9][^0-9]-[^-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1636.inp.697.1 > ./outputs/t4399

./replace_instrumented.exe '[0-9][^0-9]-[^-' 'a@nb@tc'  < $ROOT/inputs/temp-test/1637.inp.697.3 > ./outputs/t4400

./replace_instrumented.exe '[0-9][^9-B]' 'NEW'  < $ROOT/inputs/temp-test/1552.inp.664.1 > ./outputs/t4401

./replace_instrumented.exe '[0-9][^9-B]?A*?[a-c]?[0-9][^9-B]-' ''  < $ROOT/inputs/temp-test/928.inp.400.1 > ./outputs/t4402

./replace_instrumented.exe '[0-9][^9-B][@t][^a-c]' '@%&a'  < $ROOT/inputs/temp-test/1038.inp.447.1 > ./outputs/t4403

./replace_instrumented.exe '[0-9][^9-B][@t][^a-c]' '@%&a'  < $ROOT/inputs/temp-test/1039.inp.447.3 > ./outputs/t4404

./replace_instrumented.exe '[0-9]^-?-^*' '&a@%'  < $ROOT/inputs/temp-test/1313.inp.564.1 > ./outputs/t4405

./replace_instrumented.exe '[0-9]^-?-^*' '&a@%'  < $ROOT/inputs/temp-test/1314.inp.564.2 > ./outputs/t4406

./replace_instrumented.exe '[0-9]^-?-^*' '&a@%'  < $ROOT/inputs/temp-test/1315.inp.564.3 > ./outputs/t4407

./replace_instrumented.exe '[0-9]^-?-^*' '&a@%'  < $ROOT/inputs/temp-test/1316.inp.564.4 > ./outputs/t4408

./replace_instrumented.exe '[0-9]c*@*[a-c]-[0-9][^0-9]@*' 'b@t'  < $ROOT/inputs/temp-test/791.inp.341.1 > ./outputs/t4409

./replace_instrumented.exe '[0-9]c*@*[a-c]-[0-9][^0-9]@*' 'b@t'  < $ROOT/inputs/temp-test/792.inp.341.2 > ./outputs/t4410

./replace_instrumented.exe '[0-9]c*@*[a-c]-[0-9][^0-9]@*' 'b@t'  < $ROOT/inputs/temp-test/793.inp.341.3 > ./outputs/t4411

./replace_instrumented.exe '[0-9^4]*' 5  < $ROOT/inputs/moni/f7.inp > ./outputs/t4412

./replace_instrumented.exe '[0-9c-a]' 'vm&LgryRJI2?C95<5\^'  < $ROOT/inputs/input/ruin.490 > ./outputs/t4413

./replace_instrumented.exe '[0-9z-}>-A]\@@?' '4'  < $ROOT/inputs/input/ruin.813 > ./outputs/t4414

./replace_instrumented.exe '[0-9z-}]' 'WOMZMg'  < $ROOT/inputs/input/ruin.1746 > ./outputs/t4415

./replace_instrumented.exe '[1-' 'yy'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4416

./replace_instrumented.exe '[1-9]%' '@t67@t67@n'  < $ROOT/inputs/moni/f8.inp > ./outputs/t4417

./replace_instrumented.exe '[1-9]@t**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4418

./replace_instrumented.exe '[1-9][1-9]' 6666666  < $ROOT/inputs/moni/f5.inp > ./outputs/t4419

./replace_instrumented.exe '[1-@n]' '@-1'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4420

./replace_instrumented.exe '[1]' '5D$6:)'\''!!WaohoC<DMt/ns5zA:0vzT p?PADhjzrF.e*NbJLCd;0Sr/.Ja+?2sn-MP+uf6)IZet;aI!3=TH7?$d_6t)!l=Wfh37`[%\<5'  < $ROOT/inputs/input/ruin.1200 > ./outputs/t4421

./replace_instrumented.exe '[5]' 'D9c@\|.|ljJv/2]Sw+F<JU5{,Y`;B'  < $ROOT/inputs/input/ruin.295 > ./outputs/t4422

./replace_instrumented.exe '[7-9]ab**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4423

./replace_instrumented.exe '[7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]7KOgdHVS~e*RbgQ>M{]^0-9]?[a-c] [^0-9]?[a-c]-[a--b]?^a-c]' '&'   < $ROOT/inputs/temp-test/1268.inp.544.1 > ./outputs/t4424

./replace_instrumented.exe '[9-B] *-[^9-B]---*' 'NEW'  < $ROOT/inputs/temp-test/457.inp.200.1 > ./outputs/t4425

./replace_instrumented.exe '[9-B]$' '&'  < $ROOT/inputs/temp-test/2306.inp.979.6 > ./outputs/t4426

./replace_instrumented.exe '[9-B]$' '&'  < $ROOT/inputs/temp-test/2308.inp.979.8 > ./outputs/t4427

./replace_instrumented.exe '[9-B]$' 'NEW'  < $ROOT/inputs/temp-test/1804.inp.767.8 > ./outputs/t4428

./replace_instrumented.exe '[9-B]%-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2334.inp.990.1 > ./outputs/t4429

./replace_instrumented.exe '[9-B]%-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2335.inp.990.3 > ./outputs/t4430

./replace_instrumented.exe '[9-B]%?' '@t'  < $ROOT/inputs/temp-test/2338.inp.993.1 > ./outputs/t4431

./replace_instrumented.exe '[9-B]%A-?[^a--]?' '&'  < $ROOT/inputs/temp-test/2356.inp.1000.1 > ./outputs/t4432

./replace_instrumented.exe '[9-B]%[^a--b][^9-B]@**[9-B]-' '&a@%'  < $ROOT/inputs/temp-test/27.inp.12.1 > ./outputs/t4433

./replace_instrumented.exe '[9-B]' '&'  < $ROOT/inputs/temp-test/2304.inp.979.1 > ./outputs/t4434

./replace_instrumented.exe '[9-B]' '&'  < $ROOT/inputs/temp-test/2305.inp.979.2 > ./outputs/t4435

./replace_instrumented.exe '[9-B]' 'NEW'  < $ROOT/inputs/temp-test/1803.inp.767.1 > ./outputs/t4436

./replace_instrumented.exe '[9-B]' 'NEW'  < $ROOT/inputs/temp-test/2216.inp.939.1 > ./outputs/t4437

./replace_instrumented.exe '[9-B]' 'NEW'  < $ROOT/inputs/temp-test/2217.inp.939.3 > ./outputs/t4438

./replace_instrumented.exe '[9-B]' 'NEW'  < $ROOT/inputs/temp-test/2218.inp.939.4 > ./outputs/t4439

./replace_instrumented.exe '[9-B]' 'a&'  < $ROOT/inputs/temp-test/2104.inp.892.1 > ./outputs/t4440

./replace_instrumented.exe '[9-B]' 'a&'  < $ROOT/inputs/temp-test/2105.inp.892.3 > ./outputs/t4441

./replace_instrumented.exe '[9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1220.inp.524.1 > ./outputs/t4442

./replace_instrumented.exe '[9-B]' 'b@t'  < $ROOT/inputs/temp-test/949.inp.409.1 > ./outputs/t4443

./replace_instrumented.exe '[9-B]' 'b@t'  < $ROOT/inputs/temp-test/950.inp.409.2 > ./outputs/t4444

./replace_instrumented.exe '[9-B]* ' '&a@%'  < $ROOT/inputs/temp-test/30.inp.13.1 > ./outputs/t4445

./replace_instrumented.exe '[9-B]* ' '&a@%'  < $ROOT/inputs/temp-test/31.inp.13.3 > ./outputs/t4446

./replace_instrumented.exe '[9-B]- *-^a-] *' 'NEW'  < $ROOT/inputs/temp-test/848.inp.364.1 > ./outputs/t4447

./replace_instrumented.exe '[9-B]-' '&'  < $ROOT/inputs/temp-test/1903.inp.807.1 > ./outputs/t4448

./replace_instrumented.exe '[9-B]-' '&'  < $ROOT/inputs/temp-test/1904.inp.807.3 > ./outputs/t4449

./replace_instrumented.exe '[9-B]-' ''  < $ROOT/inputs/temp-test/1924.inp.818.1 > ./outputs/t4450

./replace_instrumented.exe '[9-B]-' ''  < $ROOT/inputs/temp-test/1925.inp.818.2 > ./outputs/t4451

./replace_instrumented.exe '[9-B]-' ''  < $ROOT/inputs/temp-test/732.inp.315.1 > ./outputs/t4452

./replace_instrumented.exe '[9-B]-' ''  < $ROOT/inputs/temp-test/733.inp.315.3 > ./outputs/t4453

./replace_instrumented.exe '[9-B]-' '@%&a'  < $ROOT/inputs/temp-test/1150.inp.495.1 > ./outputs/t4454

./replace_instrumented.exe '[9-B]-' '@%&a'  < $ROOT/inputs/temp-test/1151.inp.495.3 > ./outputs/t4455

./replace_instrumented.exe '[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/1233.inp.529.1 > ./outputs/t4456

./replace_instrumented.exe '[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/1234.inp.529.3 > ./outputs/t4457

./replace_instrumented.exe '[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/1418.inp.609.1 > ./outputs/t4458

./replace_instrumented.exe '[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/1419.inp.609.2 > ./outputs/t4459

./replace_instrumented.exe '[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/1452.inp.623.1 > ./outputs/t4460

./replace_instrumented.exe '[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/1453.inp.623.2 > ./outputs/t4461

./replace_instrumented.exe '[9-B]-' 'NEW'  < $ROOT/inputs/temp-test/1454.inp.623.3 > ./outputs/t4462

./replace_instrumented.exe '[9-B]-' 'a&'  < $ROOT/inputs/temp-test/283.inp.127.1 > ./outputs/t4463

./replace_instrumented.exe '[9-B]-' 'a&'  < $ROOT/inputs/temp-test/284.inp.127.2 > ./outputs/t4464

./replace_instrumented.exe '[9-B]-' 'a&'  < $ROOT/inputs/temp-test/285.inp.127.3 > ./outputs/t4465

./replace_instrumented.exe '[9-B]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2334.inp.990.1 > ./outputs/t4466

./replace_instrumented.exe '[9-B]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2335.inp.990.3 > ./outputs/t4467

./replace_instrumented.exe '[9-B]-' 'b@t'  < $ROOT/inputs/temp-test/1734.inp.738.1 > ./outputs/t4468

./replace_instrumented.exe '[9-B]-' 'b@t'  < $ROOT/inputs/temp-test/1735.inp.738.2 > ./outputs/t4469

./replace_instrumented.exe '[9-B]-' 'b@t'  < $ROOT/inputs/temp-test/1736.inp.738.3 > ./outputs/t4470

./replace_instrumented.exe '[9-B]-*@[*? *$' '&a@%'  < $ROOT/inputs/temp-test/1199.inp.514.8 > ./outputs/t4471

./replace_instrumented.exe '[9-B]-*@[*? *' '&a@%'  < $ROOT/inputs/temp-test/1196.inp.514.1 > ./outputs/t4472

./replace_instrumented.exe '[9-B]-*@[*? *' '&a@%'  < $ROOT/inputs/temp-test/1197.inp.514.2 > ./outputs/t4473

./replace_instrumented.exe '[9-B]-*@[*? *' '&a@%'  < $ROOT/inputs/temp-test/1198.inp.514.3 > ./outputs/t4474

./replace_instrumented.exe '[9-B]-*[^0-9]?' '&'  < $ROOT/inputs/temp-test/1997.inp.848.1 > ./outputs/t4475

./replace_instrumented.exe '[9-B]-*[^0-9]?' '&'  < $ROOT/inputs/temp-test/1998.inp.848.4 > ./outputs/t4476

./replace_instrumented.exe '[9-B]--?[^-z]-[0-9][^a-c]$' 'b@t'  < $ROOT/inputs/temp-test/2085.inp.883.6 > ./outputs/t4477

./replace_instrumented.exe '[9-B]--?[^-z]-[0-9][^a-c]$' 'b@t'  < $ROOT/inputs/temp-test/2086.inp.883.8 > ./outputs/t4478

./replace_instrumented.exe '[9-B]--?[^-z]-[0-9][^a-c]' 'b@t'  < $ROOT/inputs/temp-test/2083.inp.883.1 > ./outputs/t4479

./replace_instrumented.exe '[9-B]--?[^-z]-[0-9][^a-c]' 'b@t'  < $ROOT/inputs/temp-test/2084.inp.883.2 > ./outputs/t4480

./replace_instrumented.exe '[9-B]-?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/445.inp.195.1 > ./outputs/t4481

./replace_instrumented.exe '[9-B]-?-' 'a@nb@tc'  < $ROOT/inputs/temp-test/446.inp.195.2 > ./outputs/t4482

./replace_instrumented.exe '[9-B]-??[0-9]@t?[^a-c]?' 'a&'  < $ROOT/inputs/temp-test/2325.inp.987.1 > ./outputs/t4483

./replace_instrumented.exe '[9-B]-??[0-9]@t?[^a-c]?' 'a&'  < $ROOT/inputs/temp-test/2326.inp.987.2 > ./outputs/t4484

./replace_instrumented.exe '[9-B]-A[^0-9]-@*' '@%@&'  < $ROOT/inputs/temp-test/1673.inp.713.1 > ./outputs/t4485

./replace_instrumented.exe '[9-B]-[-z]?[@t]?[^a-c]' 'a&'  < $ROOT/inputs/temp-test/2017.inp.856.1 > ./outputs/t4486

./replace_instrumented.exe '[9-B]?' '&a@%'  < $ROOT/inputs/temp-test/2044.inp.867.1 > ./outputs/t4487

./replace_instrumented.exe '[9-B]?' '@%&a'  < $ROOT/inputs/temp-test/1801.inp.766.1 > ./outputs/t4488

./replace_instrumented.exe '[9-B]?' '@%&a'  < $ROOT/inputs/temp-test/1802.inp.766.3 > ./outputs/t4489

./replace_instrumented.exe '[9-B]?' '@%&a'  < $ROOT/inputs/temp-test/799.inp.344.1 > ./outputs/t4490

./replace_instrumented.exe '[9-B]?' '@%&a'  < $ROOT/inputs/temp-test/800.inp.344.3 > ./outputs/t4491

./replace_instrumented.exe '[9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1625.inp.691.1 > ./outputs/t4492

./replace_instrumented.exe '[9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1626.inp.691.2 > ./outputs/t4493

./replace_instrumented.exe '[9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1627.inp.691.3 > ./outputs/t4494

./replace_instrumented.exe '[9-B]?' '@t'  < $ROOT/inputs/temp-test/2338.inp.993.1 > ./outputs/t4495

./replace_instrumented.exe '[9-B]?' 'NEW'  < $ROOT/inputs/temp-test/1689.inp.720.1 > ./outputs/t4496

./replace_instrumented.exe '[9-B]?' 'NEW'  < $ROOT/inputs/temp-test/1690.inp.720.2 > ./outputs/t4497

./replace_instrumented.exe '[9-B]?-@[*[^9-B]-@tc*a-]' '@n'  < $ROOT/inputs/temp-test/1534.inp.657.1 > ./outputs/t4498

./replace_instrumented.exe '[9-B]?-@[*[^9-B]-@tc*a-]' '@n'  < $ROOT/inputs/temp-test/1535.inp.657.2 > ./outputs/t4499

./replace_instrumented.exe '[9-B]??^?^-]' '@t'  < $ROOT/inputs/temp-test/84.inp.38.1 > ./outputs/t4500

./replace_instrumented.exe '[9-B]??^?^-]' '@t'  < $ROOT/inputs/temp-test/85.inp.38.3 > ./outputs/t4501

./replace_instrumented.exe '[9-B]@*' '&'  < $ROOT/inputs/temp-test/540.inp.234.1 > ./outputs/t4502

./replace_instrumented.exe '[9-B]@*' '&'  < $ROOT/inputs/temp-test/541.inp.234.2 > ./outputs/t4503

./replace_instrumented.exe '[9-B]@**?^@@-' '@%&a'  < $ROOT/inputs/temp-test/904.inp.389.1 > ./outputs/t4504

./replace_instrumented.exe '[9-B]@**?^@@-' '@%&a'  < $ROOT/inputs/temp-test/905.inp.389.3 > ./outputs/t4505

./replace_instrumented.exe '[9-B]@@' 'a&'  < $ROOT/inputs/temp-test/119.inp.56.1 > ./outputs/t4506

./replace_instrumented.exe '[9-B]@@' 'a&'  < $ROOT/inputs/temp-test/120.inp.56.3 > ./outputs/t4507

./replace_instrumented.exe '[9-B]@[?[9-B]-[@n][^a-c[0-9]?@@*[0-9]' '&'  < $ROOT/inputs/temp-test/1524.inp.653.1 > ./outputs/t4508

./replace_instrumented.exe '[9-B]@[?[9-B]-[@n][^a-c[0-9]?@@*[0-9]' '&'  < $ROOT/inputs/temp-test/1525.inp.653.2 > ./outputs/t4509

./replace_instrumented.exe '[9-B]@[c*-??-' '@%&a'  < $ROOT/inputs/temp-test/1007.inp.433.1 > ./outputs/t4510

./replace_instrumented.exe '[9-B]@[c*-??-' '@%&a'  < $ROOT/inputs/temp-test/1008.inp.433.3 > ./outputs/t4511

./replace_instrumented.exe '[9-B]A-%?[^a--]?' '&'  < $ROOT/inputs/temp-test/2357.inp.1000.2 > ./outputs/t4512

./replace_instrumented.exe '[9-B]A-?%[^a--]?' '&'  < $ROOT/inputs/temp-test/2358.inp.1000.3 > ./outputs/t4513

./replace_instrumented.exe '[9-B]A-?[^a--]?' '&'  < $ROOT/inputs/temp-test/2356.inp.1000.1 > ./outputs/t4514

./replace_instrumented.exe '[9-B]A-?[^a--]?' '&'  < $ROOT/inputs/temp-test/2357.inp.1000.2 > ./outputs/t4515

./replace_instrumented.exe '[9-B]A-?[^a--]?' '&'  < $ROOT/inputs/temp-test/2358.inp.1000.3 > ./outputs/t4516

./replace_instrumented.exe '[9-B][9-B]?[^a-c]a-c]' '&'  < $ROOT/inputs/temp-test/2232.inp.946.1 > ./outputs/t4517

./replace_instrumented.exe '[9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B][9-B]' 'b@t'  < $ROOT/inputs/temp-test/949.inp.409.1 > ./outputs/t4518

./replace_instrumented.exe '[9-B][^-' 'a&'  < $ROOT/inputs/temp-test/2224.inp.943.1 > ./outputs/t4519

./replace_instrumented.exe '[9-B][^0-9]' '@%&a'  < $ROOT/inputs/temp-test/794.inp.342.1 > ./outputs/t4520

./replace_instrumented.exe '[9-B][^0-9]' '@%&a'  < $ROOT/inputs/temp-test/795.inp.342.3 > ./outputs/t4521

./replace_instrumented.exe '[9-B][^0-9]??[9-B]^*-[^a-c]' ''  < $ROOT/inputs/temp-test/594.inp.255.1 > ./outputs/t4522

./replace_instrumented.exe '[9-B][^0-9]@[?[a-c[^0-9][_-z]-?@[' 'b@t'  < $ROOT/inputs/temp-test/700.inp.303.1 > ./outputs/t4523

./replace_instrumented.exe '[9-B][^0-9]@[?[a-c[^0-9][_-z]-?@[' 'b@t'  < $ROOT/inputs/temp-test/701.inp.303.2 > ./outputs/t4524

./replace_instrumented.exe '[9-B][^9-B]@t*?' '@t'  < $ROOT/inputs/temp-test/1301.inp.559.1 > ./outputs/t4525

./replace_instrumented.exe '[9-B][^9-B][0-9]' '&@n'  < $ROOT/inputs/temp-test/643.inp.278.1 > ./outputs/t4526

./replace_instrumented.exe '[9-B][^9-B][0-9]' '&@n[a-z]'  < $ROOT/inputs/temp-test/643.inp.278.1 > ./outputs/t4527

./replace_instrumented.exe '[9-B][^9-B][0-9]' '@n'  < $ROOT/inputs/temp-test/643.inp.278.1 > ./outputs/t4528

./replace_instrumented.exe '[9-B][^a--]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1353.inp.581.1 > ./outputs/t4529

./replace_instrumented.exe '[9-B][^a--]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1354.inp.581.3 > ./outputs/t4530

./replace_instrumented.exe '[9-B][^a--][^@n]-' '@%@&'  < $ROOT/inputs/temp-test/2144.inp.908.1 > ./outputs/t4531

./replace_instrumented.exe '[9-B][^a--][^@n]-' '@%@&'  < $ROOT/inputs/temp-test/2145.inp.908.2 > ./outputs/t4532

./replace_instrumented.exe '[9-B][^a--b]%[^9-B]@**[9-B]-' '&a@%'  < $ROOT/inputs/temp-test/28.inp.12.3 > ./outputs/t4533

./replace_instrumented.exe '[9-B][^a--b]%[^9-B]@**[9-B]-' '&a@%'  < $ROOT/inputs/temp-test/29.inp.12.4 > ./outputs/t4534

./replace_instrumented.exe '[9-B][^a--b][^9-B]@**[9-B]-' '&a@%'  < $ROOT/inputs/temp-test/27.inp.12.1 > ./outputs/t4535

./replace_instrumented.exe '[9-B][^a--b][^9-B]@**[9-B]-' '&a@%'  < $ROOT/inputs/temp-test/28.inp.12.3 > ./outputs/t4536

./replace_instrumented.exe '[9-B][^a--b][^9-B]@**[9-B]-' '&a@%'  < $ROOT/inputs/temp-test/29.inp.12.4 > ./outputs/t4537

./replace_instrumented.exe '[9-B][^a-c]' '@%&a'  < $ROOT/inputs/temp-test/917.inp.396.1 > ./outputs/t4538

./replace_instrumented.exe '[9-B][^a-c]' '@%&a'  < $ROOT/inputs/temp-test/918.inp.396.3 > ./outputs/t4539

./replace_instrumented.exe '[9-B][^a-c]' '@%@&'  < $ROOT/inputs/temp-test/2089.inp.885.1 > ./outputs/t4540

./replace_instrumented.exe '[9-B][^a-c]' '@%@&'  < $ROOT/inputs/temp-test/2090.inp.885.2 > ./outputs/t4541

./replace_instrumented.exe '[9-B][^a-c]' '@t'  < $ROOT/inputs/temp-test/390.inp.170.1 > ./outputs/t4542

./replace_instrumented.exe '[9-B][^a-c]?*' '@t'  < $ROOT/inputs/temp-test/390.inp.170.1 > ./outputs/t4543

./replace_instrumented.exe '[9-B]^$' 'NEW'  < $ROOT/inputs/temp-test/757.inp.324.6 > ./outputs/t4544

./replace_instrumented.exe '[9-B]^' 'NEW'  < $ROOT/inputs/temp-test/755.inp.324.1 > ./outputs/t4545

./replace_instrumented.exe '[9-B]^' 'NEW'  < $ROOT/inputs/temp-test/756.inp.324.2 > ./outputs/t4546

./replace_instrumented.exe '[9-B]c$' 'a@n'  < $ROOT/inputs/temp-test/495.inp.216.6 > ./outputs/t4547

./replace_instrumented.exe '[9-B]c' 'a@n'  < $ROOT/inputs/temp-test/493.inp.216.1 > ./outputs/t4548

./replace_instrumented.exe '[9-B]c' 'a@n'  < $ROOT/inputs/temp-test/494.inp.216.3 > ./outputs/t4549

./replace_instrumented.exe '[9-B]c*$' '@%@&'  < $ROOT/inputs/temp-test/1715.inp.730.6 > ./outputs/t4550

./replace_instrumented.exe '[9-B]c*' '@%@&'  < $ROOT/inputs/temp-test/1712.inp.730.1 > ./outputs/t4551

./replace_instrumented.exe '[9-B]c*' '@%@&'  < $ROOT/inputs/temp-test/1713.inp.730.2 > ./outputs/t4552

./replace_instrumented.exe '[9-B]c*' '@%@&'  < $ROOT/inputs/temp-test/1714.inp.730.3 > ./outputs/t4553

./replace_instrumented.exe '[9-B]c*' 'NEW'  < $ROOT/inputs/temp-test/2112.inp.895.1 > ./outputs/t4554

./replace_instrumented.exe '[9-B]c*?@[*-? ' '&'  < $ROOT/inputs/temp-test/434.inp.191.1 > ./outputs/t4555

./replace_instrumented.exe '[9-B]c*?@[*-? ' '&'  < $ROOT/inputs/temp-test/435.inp.191.2 > ./outputs/t4556

./replace_instrumented.exe '[9-B]c@' 'a@n'  < $ROOT/inputs/temp-test/493.inp.216.1 > ./outputs/t4557

./replace_instrumented.exe '[9-B]c@***' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4558

./replace_instrumented.exe '[<]' 'v'  < $ROOT/inputs/input/ruin.799 > ./outputs/t4559

./replace_instrumented.exe '[=]@n' 'u>{%9; ?S3&u@@LZ'  < $ROOT/inputs/input/ruin.1188 > ./outputs/t4560

./replace_instrumented.exe '[>-A$>-A>-A]' 'BWOG;nsT|&v:1JbQ*sS{n)s'  < $ROOT/inputs/input/ruin.1782 > ./outputs/t4561

./replace_instrumented.exe '[>-A0-9]$' 'O'  < $ROOT/inputs/input/ruin.750 > ./outputs/t4562

./replace_instrumented.exe '[>-A>-A>-A<z-}c-a]@@' '(1FO34>$"?Wo1x\X'  < $ROOT/inputs/input/ruin.1642 > ./outputs/t4563

./replace_instrumented.exe '[>-AA-G0-90-9z-}]' 'CH3_XX}'  < $ROOT/inputs/input/ruin.956 > ./outputs/t4564

./replace_instrumented.exe '[>-AA-G]' 'S'  < $ROOT/inputs/input/ruin.309 > ./outputs/t4565

./replace_instrumented.exe '[>-AA-G]' 'h+7%G2u6AJQk>L1WQsotq_n,vo'  < $ROOT/inputs/input/ruin.695 > ./outputs/t4566

./replace_instrumented.exe '[>-A]$' '!'  < $ROOT/inputs/input/ruin.151 > ./outputs/t4567

./replace_instrumented.exe '[>-A]' '&y#k-llLWk'  < $ROOT/inputs/input/ruin.279 > ./outputs/t4568

./replace_instrumented.exe '[>-A]' 'V'  < $ROOT/inputs/input/ruin.1531 > ./outputs/t4569

./replace_instrumented.exe '[>-A]' 'V'  < $ROOT/inputs/input/ruin.1829 > ./outputs/t4570

./replace_instrumented.exe '[>-A]' 'Z}rl'  < $ROOT/inputs/input/ruin.1762 > ./outputs/t4571

./replace_instrumented.exe '[>-A]' '^'  < $ROOT/inputs/input/ruin.685 > ./outputs/t4572

./replace_instrumented.exe '[>-A]' 'l'  < $ROOT/inputs/input/ruin.1117 > ./outputs/t4573

./replace_instrumented.exe '[>-A]' 'r'  < $ROOT/inputs/input/ruin.194 > ./outputs/t4574

./replace_instrumented.exe '[>-A]' '|u,~, P+@h3f-q{-m^'  < $ROOT/inputs/input/ruin.455 > ./outputs/t4575

./replace_instrumented.exe '[>-A]'\''gdh' '0(,(PKL.GW[Vb;PK[Ko(/'  < $ROOT/inputs/input/ruin.1628 > ./outputs/t4576

./replace_instrumented.exe '[>-A]'\''o-]' '98lxUW$3UOKEX2a@El#=-t[^R%"'  < $ROOT/inputs/input/ruin.290 > ./outputs/t4577

./replace_instrumented.exe '[>-A]'\''o-]@n' '98l&xUW$3UOKEX2a@El#=-t[^R%"'  < $ROOT/inputs/input/ruin.290 > ./outputs/t4578

./replace_instrumented.exe '[>-A]*$' 'l'  < $ROOT/inputs/input/ruin.1117 > ./outputs/t4579

./replace_instrumented.exe '[>-A]@n' 'a&y#k-llLWk'  < $ROOT/inputs/input/ruin.279 > ./outputs/t4580

./replace_instrumented.exe '[>-A][>-A]' '1!{5i'\''s.:7mc9esJG16_BM+B-K'  < $ROOT/inputs/input/ruin.820 > ./outputs/t4581

./replace_instrumented.exe '[>-Az-}]' '%}8@>aTrygnRh-u lvO3z#S['  < $ROOT/inputs/input/ruin.921 > ./outputs/t4582

./replace_instrumented.exe '[>-Az-}]' '<~{gj:'  < $ROOT/inputs/input/ruin.603 > ./outputs/t4583

./replace_instrumented.exe '[>-Az-}]' '=C8YI{._KxMa0~n=|EB1|'  < $ROOT/inputs/input/ruin.1042 > ./outputs/t4584

./replace_instrumented.exe '[>-Az-}]' '=G:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JG:]y;Zm{7<\33O~h_JC8YI{._KxMa0~n=|EB1|'  < $ROOT/inputs/input/ruin.1042 > ./outputs/t4585

./replace_instrumented.exe '[>-Az-}]*' '%}8@>aTrygnRh-u lvO3z#S['  < $ROOT/inputs/input/ruin.921 > ./outputs/t4586

./replace_instrumented.exe '[@@]?@*[^@n]?' 'a@nb@tc'  < $ROOT/inputs/temp-test/1075.inp.463.1 > ./outputs/t4587

./replace_instrumented.exe '[@t ]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4588

./replace_instrumented.exe '[@t]' 'a@n'  < $ROOT/inputs/temp-test/235.inp.105.1 > ./outputs/t4589

./replace_instrumented.exe '[@t]' 'a@n'  < $ROOT/inputs/temp-test/236.inp.105.2 > ./outputs/t4590

./replace_instrumented.exe '[@t]' 'a@n'  < $ROOT/inputs/temp-test/237.inp.105.3 > ./outputs/t4591

./replace_instrumented.exe '[@t]- [^0-9][^a-^?@n?' 'a&'  < $ROOT/inputs/temp-test/2250.inp.954.1 > ./outputs/t4592

./replace_instrumented.exe '[@t]- [^0-9][^a-^?@n?' 'a&'  < $ROOT/inputs/temp-test/2251.inp.954.2 > ./outputs/t4593

./replace_instrumented.exe '[@t]-[^9-B]--^*-?' 'a@n'  < $ROOT/inputs/temp-test/2082.inp.882.1 > ./outputs/t4594

./replace_instrumented.exe '[@t]-^-' 'NEW'  < $ROOT/inputs/temp-test/683.inp.297.1 > ./outputs/t4595

./replace_instrumented.exe '[@t]-^-' 'NEW'  < $ROOT/inputs/temp-test/684.inp.297.2 > ./outputs/t4596

./replace_instrumented.exe '[@t]?' '&a@%'  < $ROOT/inputs/temp-test/882.inp.379.1 > ./outputs/t4597

./replace_instrumented.exe '[@t]@*?[^-[9-B]-' 'b@t'  < $ROOT/inputs/temp-test/1731.inp.736.1 > ./outputs/t4598

./replace_instrumented.exe '[@t][^0-9]' 'NEW'  < $ROOT/inputs/temp-test/1942.inp.825.1 > ./outputs/t4599

./replace_instrumented.exe '[@t][^0-9]' 'NEW'  < $ROOT/inputs/temp-test/1943.inp.825.3 > ./outputs/t4600

./replace_instrumented.exe '[A-G0-9c-a]' '0$'  < $ROOT/inputs/input/ruin.965 > ./outputs/t4601

./replace_instrumented.exe '[A-G>-A0-9Z-a]^_`a-z-}z-}]$' 'evC g}bq'\''@;cuD;hR8`'  < $ROOT/inputs/input/ruin.1630 > ./outputs/t4602

./replace_instrumented.exe '[A-G>-AZ-a]^_`a-z-}z-}-Z-aZ[]^_`a][A-G>-AZ-a]^_`a-z-}z-}-Z-aZ[]^_`a]:' 'A'  < $ROOT/inputs/input/ruin.298 > ./outputs/t4603

./replace_instrumented.exe '[A-GZ-a]^_`a-Z-aZ[]^_`a]' '{M'  < $ROOT/inputs/input/ruin.864 > ./outputs/t4604

./replace_instrumented.exe '[A-GZ-a]^_`a-z-}z-}->-A>-A-A-GABCDEFGy]' '9'  < $ROOT/inputs/input/ruin.327 > ./outputs/t4605

./replace_instrumented.exe '[A-GZ-a]^_`a-z-}z-}->-A>-A-A-GABCDEFGy]B]ddB]@t]*[@t@][9-B]' '9'  < $ROOT/inputs/input/ruin.327 > ./outputs/t4606

./replace_instrumented.exe '[A-GZ-a]^_`a]' 'ZuL'  < $ROOT/inputs/input/ruin.1986 > ./outputs/t4607

./replace_instrumented.exe '[A-G]' '0YCrgUE!LL6G_5f<m,Jkg0xpW'  < $ROOT/inputs/input/ruin.777 > ./outputs/t4608

./replace_instrumented.exe '[A-G]' '4'  < $ROOT/inputs/input/ruin.450 > ./outputs/t4609

./replace_instrumented.exe '[A-G]' '6]^!oZ.:nm/o7[-L95B&K9V&3'  < $ROOT/inputs/input/ruin.694 > ./outputs/t4610

./replace_instrumented.exe '[A-G]' ':MJ8*qY`8'\''vLKqNaKaK&HJQKlK)>A'  < $ROOT/inputs/input/ruin.657 > ./outputs/t4611

./replace_instrumented.exe '[A-G]' 'E:H\y;lNQZu08<\]<'  < $ROOT/inputs/input/ruin.388 > ./outputs/t4612

./replace_instrumented.exe '[A-G]' 'N'  < $ROOT/inputs/input/ruin.647 > ./outputs/t4613

./replace_instrumented.exe '[A-G]' 'OmS[X@@s5c_'  < $ROOT/inputs/input/ruin.674 > ./outputs/t4614

./replace_instrumented.exe '[A-G]' '_'  < $ROOT/inputs/input/ruin.632 > ./outputs/t4615

./replace_instrumented.exe '[A-G]' 'ho]3#Ftwk3<O@P'  < $ROOT/inputs/input/ruin.1570 > ./outputs/t4616

./replace_instrumented.exe '[A-G]' 'o'  < $ROOT/inputs/input/ruin.292 > ./outputs/t4617

./replace_instrumented.exe '[A-G]*' 'CD?Kn2vz[1x#3A{vny,"]_gwInrWC<[9\(}S$J/>[V]^gj;jI2'  < $ROOT/inputs/input/ruin.1669 > ./outputs/t4618

./replace_instrumented.exe '[A-G]?' 'x'  < $ROOT/inputs/input/ruin.1538 > ./outputs/t4619

./replace_instrumented.exe '[A-G]@8' '`FtUy"ZE>GnU;'\''YIDS'\''X9"iFzSRIUUE%er[]kgNc}vQ@yAP>Uv$LK'\''l{hQxb'\''z|'  < $ROOT/inputs/input/ruin.1506 > ./outputs/t4620

./replace_instrumented.exe '[A-G]@@' 'ZSfeyi|K>"6x;;rR<78XU=W{QrkUiM^S5tp<*{,9`9'  < $ROOT/inputs/input/ruin.329 > ./outputs/t4621

./replace_instrumented.exe '[A-G]@@9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9]][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]-*[0-9][@t]*[@t@][9-B]' 'ZSfeyi|K>"6x;;rR<78XU=W{QrkUiM^S5tp<*{,9`9'  < $ROOT/inputs/input/ruin.329 > ./outputs/t4622

./replace_instrumented.exe '[A-G]@n' 'o&;kasdlfkj'  < $ROOT/inputs/input/ruin.292 > ./outputs/t4623

./replace_instrumented.exe '[A-Gk0-90-9z-}z-}]' '2'  < $ROOT/inputs/input/ruin.147 > ./outputs/t4624

./replace_instrumented.exe '[A-Gz-}]' '[8='  < $ROOT/inputs/input/ruin.1073 > ./outputs/t4625

./replace_instrumented.exe '[A-z]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4626

./replace_instrumented.exe '[EZ-a]^_`a]?' 'B6'  < $ROOT/inputs/input/ruin.1344 > ./outputs/t4627

./replace_instrumented.exe '[EZ-a]^_`a]?' 'Btemp-test/229.inp.1temp-test/229.inp.1temp-test/229.inp.1temp-test/229.inp.1temp-test/229.inp.1*?@t*[^0-9][0-9]*?@t*[^0-9][0-9]*?@t*[^0-9][0-9]*?@t*[^0-9][0-9]6*?@t*[^0-9][0-9]'  < $ROOT/inputs/input/ruin.1344 > ./outputs/t4628

./replace_instrumented.exe '[EZ-a]^_`a]?[^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c][^a-c]*?--*?* *[a--b][^a-c]' 'B6'  < $ROOT/inputs/input/ruin.1344 > ./outputs/t4629

./replace_instrumented.exe '[H]@@' 'Cvj;!/7QaWXcBn_:K4~nT[ &j/4fJh'  < $ROOT/inputs/input/ruin.1517 > ./outputs/t4630

./replace_instrumented.exe '[J-P]@n' '`&`'  < $ROOT/inputs/input/ruin.278 > ./outputs/t4631

./replace_instrumented.exe '[M]' ''  < $ROOT/inputs/input/ruin.456 > ./outputs/t4632

./replace_instrumented.exe '[O>-A]' 'v'  < $ROOT/inputs/input/ruin.508 > ./outputs/t4633

./replace_instrumented.exe '[T]' 'SaWpU='  < $ROOT/inputs/input/ruin.1721 > ./outputs/t4634

./replace_instrumented.exe '[W]' ':'  < $ROOT/inputs/input/ruin.1717 > ./outputs/t4635

./replace_instrumented.exe '[W]<' '1'  < $ROOT/inputs/input/ruin.300 > ./outputs/t4636

./replace_instrumented.exe '[Y-a]^_' '&aaaaaaaaaaaaaaaaaaa&'  < $ROOT/inputs/input/ruin.506 > ./outputs/t4637

./replace_instrumented.exe '[Z-a]' '&aNfc%bv4h]P(;lr%%=i&'  < $ROOT/inputs/input/ruin.506 > ./outputs/t4638

./replace_instrumented.exe '[Z-a]^_' '&aNfc%bv4h]P(;lr%%=i&'  < $ROOT/inputs/input/ruin.506 > ./outputs/t4639

./replace_instrumented.exe '[Z-a]^_' '&doesthecharactermat&'  < $ROOT/inputs/input/ruin.506 > ./outputs/t4640

./replace_instrumented.exe '[Z-a]^_`a->-A>-A-0-90123456789-z-}z-}?-Z-aZ[]^_`aO->-A>-A-0-90123456789]' 'Vgq"#'\''/=PA@'  < $ROOT/inputs/input/ruin.369 > ./outputs/t4641

./replace_instrumented.exe '[Z-a]^_`a-A-GABCDEFG-c-ac-a]' 'Eu!'  < $ROOT/inputs/input/ruin.218 > ./outputs/t4642

./replace_instrumented.exe '[Z-a]^_`a-A-GABCDEFG]' '!'  < $ROOT/inputs/input/ruin.1844 > ./outputs/t4643

./replace_instrumented.exe '[Z-a]^_`a-Z-aZ[]^_`a-A-GABCDEFG-z-}z-}-0-90123456789]' '`3d11q~?6`O91g=3eoBIC5qim`g8BS\|!}xE?01/),55cn*"[Oq_(Pr{liHN~G)'  < $ROOT/inputs/input/ruin.1146 > ./outputs/t4644

./replace_instrumented.exe '[Z-a]^_`a-Z-aZ[]^_`a-z-}z-}-c-ac-a-c-ac-a]' '7:'  < $ROOT/inputs/input/ruin.1123 > ./outputs/t4645

./replace_instrumented.exe '[Z-a]^_`a-c-ac-a]' '&aNfc%bv4h]P(;lr%%=i&'  < $ROOT/inputs/input/ruin.506 > ./outputs/t4646

./replace_instrumented.exe '[Z-a]^_`a-c-ac-a]' '&aNfc%bv4h]P(;lr%%=i&+M7yZz'\''-}}{nQhj^V}:KKyM_j)'  < $ROOT/inputs/input/ruin.506 > ./outputs/t4647

./replace_instrumented.exe '[Z-a]^_`a0-Z-aZ[]^_`a-A-GABCDEFG-0-90123456789-c-ac-a-z-}z-}-Z-aZ[]^_`a-Z-aZ[]^_`a-Z-aZ[]^_`a]' 'ix)<}kUWz8gj>OS7mesntcvv<ov '\''N{PJ+]l??jco'  < $ROOT/inputs/input/ruin.1350 > ./outputs/t4648

./replace_instrumented.exe '[Z-a]^_`a0-Z-aZ[]^_`a-A-]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rY]~M\ Wz]`M0)y8H?fc7Phqi}@,5rYGABCDEFG-0-90123456789-c-ac-a-z-}z-}-Z-aZ[]^_`a-Z-aZ[]^_`a-Z-aZ[]^_`a] *[a--b][^a-c][^a--*?* *[a' 'ix)<}kUWz8gj>OS7mesntcvv<ov '\''N{PJ+]l??jco'  < $ROOT/inputs/input/ruin.1350 > ./outputs/t4649

./replace_instrumented.exe '[Z-a]^_`aLT6]' 'S%Rm9'  < $ROOT/inputs/input/ruin.1423 > ./outputs/t4650

./replace_instrumented.exe '[Z-a]^_`a]$' '<N#25jF0##%:+[kG}Yl0M'\''U\(&UQKc$V &/*K)n'  < $ROOT/inputs/input/ruin.1182 > ./outputs/t4651

./replace_instrumented.exe '[Z-a]^_`a]' '#0F67ERJA=Hu9-H,>NK'  < $ROOT/inputs/input/ruin.1913 > ./outputs/t4652

./replace_instrumented.exe '[Z-a]^_`a]' '(=?$W( CnR{$4.C~2N2!G>A8s&)n|{uPg;\eT'  < $ROOT/inputs/input/ruin.627 > ./outputs/t4653

./replace_instrumented.exe '[Z-a]^_`a]' '+|>xCvy_Drp.ISXFXg'\''n`'  < $ROOT/inputs/input/ruin.1724 > ./outputs/t4654

./replace_instrumented.exe '[Z-a]^_`a]' '9'  < $ROOT/inputs/input/ruin.1243 > ./outputs/t4655

./replace_instrumented.exe '[Z-a]^_`a]' ':-dY=*uE-5KsKFXferbm `[CS;i4I$<41p45>~2nqF}*+Y.QBq'  < $ROOT/inputs/input/ruin.701 > ./outputs/t4656

./replace_instrumented.exe '[Z-a]^_`a]' 'F'  < $ROOT/inputs/input/ruin.1906 > ./outputs/t4657

./replace_instrumented.exe '[Z-a]^_`a]' 'JY2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{G2k|h=&-kA{I^m)l>oO{GXAlF<%'  < $ROOT/inputs/input/ruin.1032 > ./outputs/t4658

./replace_instrumented.exe '[Z-a]^_`a]' 'JYXAlF<%'  < $ROOT/inputs/input/ruin.1032 > ./outputs/t4659

./replace_instrumented.exe '[Z-a]^_`a]' 'L#\yx[]iZObU!WRS'  < $ROOT/inputs/input/ruin.1941 > ./outputs/t4660

./replace_instrumented.exe '[Z-a]^_`a]' 'NgW3k~nFJWW0d%"'  < $ROOT/inputs/input/ruin.1110 > ./outputs/t4661

./replace_instrumented.exe '[Z-a]^_`a]' 'UvR'  < $ROOT/inputs/input/ruin.979 > ./outputs/t4662

./replace_instrumented.exe '[Z-a]^_`a]' '\/Jo n3Hj!!XA\!!Z;'\''k#\pku:-g*G ;iMw3]'  < $ROOT/inputs/input/ruin.1191 > ./outputs/t4663

./replace_instrumented.exe '[Z-a]^_`a]' 'l'  < $ROOT/inputs/input/ruin.61 > ./outputs/t4664

./replace_instrumented.exe '[Z-a]^_`a]*$' '9'  < $ROOT/inputs/input/ruin.1243 > ./outputs/t4665

./replace_instrumented.exe '[Z-a]^_`a]*' '3'  < $ROOT/inputs/input/ruin.281 > ./outputs/t4666

./replace_instrumented.exe '[Z-a]^_`a]*' 'B"StB'  < $ROOT/inputs/input/ruin.231 > ./outputs/t4667

./replace_instrumented.exe '[Z-a]^_`a]*@n' '3&4'  < $ROOT/inputs/input/ruin.281 > ./outputs/t4668

./replace_instrumented.exe '[Z-a]^_`a]@n' '\/J&o n3Hj!!XA\!!Z;'\''k#\pku:-g*G ;iMw3]'  < $ROOT/inputs/input/ruin.1191 > ./outputs/t4669

./replace_instrumented.exe '[Z-a]^_`a][Z-a]^_`a]$' 'm'  < $ROOT/inputs/input/ruin.1879 > ./outputs/t4670

./replace_instrumented.exe '[Z-a]^_`a][Z-a]^_`a]@n#' 'R'  < $ROOT/inputs/input/ruin.417 > ./outputs/t4671

./replace_instrumented.exe '[[]c' 'Sn{zDvs@tuu'  < $ROOT/inputs/input/ruin.1433 > ./outputs/t4672

./replace_instrumented.exe '[]%?@*' 'NEW'  < $ROOT/inputs/temp-test/523.inp.226.5 > ./outputs/t4673

./replace_instrumented.exe '[]%@*?' '@%&a'  < $ROOT/inputs/temp-test/199.inp.89.5 > ./outputs/t4674

./replace_instrumented.exe '[]*' 'c'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4675

./replace_instrumented.exe '[]- ' '&'  < $ROOT/inputs/temp-test/524.inp.227.1 > ./outputs/t4676

./replace_instrumented.exe '[]-*[^0-9]' '&'  < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t4677

./replace_instrumented.exe '[]?@*' 'NEW'  < $ROOT/inputs/temp-test/521.inp.226.1 > ./outputs/t4678

./replace_instrumented.exe '[]?@*' 'NEW'  < $ROOT/inputs/temp-test/522.inp.226.3 > ./outputs/t4679

./replace_instrumented.exe '[][^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t4680

./replace_instrumented.exe '[][^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/220.inp.98.2 > ./outputs/t4681

./replace_instrumented.exe '[][^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t4682

./replace_instrumented.exe '[][^a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/223.inp.99.3 > ./outputs/t4683

./replace_instrumented.exe '[][a-c?$' 'a&'  < $ROOT/inputs/temp-test/520.inp.225.8 > ./outputs/t4684

./replace_instrumented.exe '[][a-c?' 'a&'  < $ROOT/inputs/temp-test/516.inp.225.1 > ./outputs/t4685

./replace_instrumented.exe '[][a-c?' 'a&'  < $ROOT/inputs/temp-test/517.inp.225.2 > ./outputs/t4686

./replace_instrumented.exe '[][a-c?' 'a&'  < $ROOT/inputs/temp-test/518.inp.225.3 > ./outputs/t4687

./replace_instrumented.exe '[][a-c?' 'a&'  < $ROOT/inputs/temp-test/519.inp.225.4 > ./outputs/t4688

./replace_instrumented.exe '[^!>-A]*' 'QdoJH\dI\~"(oA~yU11n~l'  < $ROOT/inputs/input/ruin.1697 > ./outputs/t4689

./replace_instrumented.exe '[^&Z-a]^_`a-A-GABCDEFG]' '('\''5Z}NQGMdc/,=*#hydyO{Ga&=U<s+*G9cE}St6@wRb%L&s^*N0%U<cmItT-A|y.VJka@+1D]*&H#Avoj:kg6eHS(Ax|_N$.^U|h>^-9c0J'  < $ROOT/inputs/input/ruin.1969 > ./outputs/t4690

./replace_instrumented.exe '[^- *$' '&a@%'  < $ROOT/inputs/temp-test/1616.inp.686.8 > ./outputs/t4691

./replace_instrumented.exe '[^- *' '&a@%'  < $ROOT/inputs/temp-test/1614.inp.686.1 > ./outputs/t4692

./replace_instrumented.exe '[^- *' '&a@%'  < $ROOT/inputs/temp-test/1615.inp.686.3 > ./outputs/t4693

./replace_instrumented.exe '[^--$' '@n'  < $ROOT/inputs/temp-test/1594.inp.678.8 > ./outputs/t4694

./replace_instrumented.exe '[^--$' '@n'  < $ROOT/inputs/temp-test/1595.inp.678.9 > ./outputs/t4695

./replace_instrumented.exe '[^--' '&a@%'  < $ROOT/inputs/temp-test/66.inp.29.1 > ./outputs/t4696

./replace_instrumented.exe '[^--' '&a@%'  < $ROOT/inputs/temp-test/67.inp.29.2 > ./outputs/t4697

./replace_instrumented.exe '[^--' '&a@%'  < $ROOT/inputs/temp-test/68.inp.29.3 > ./outputs/t4698

./replace_instrumented.exe '[^--' '@%&a'  < $ROOT/inputs/temp-test/1443.inp.619.1 > ./outputs/t4699

./replace_instrumented.exe '[^--' '@%&a'  < $ROOT/inputs/temp-test/1444.inp.619.2 > ./outputs/t4700

./replace_instrumented.exe '[^--' '@%&a'  < $ROOT/inputs/temp-test/1445.inp.619.3 > ./outputs/t4701

./replace_instrumented.exe '[^--' '@n'  < $ROOT/inputs/temp-test/1591.inp.678.1 > ./outputs/t4702

./replace_instrumented.exe '[^--' '@n'  < $ROOT/inputs/temp-test/1592.inp.678.3 > ./outputs/t4703

./replace_instrumented.exe '[^--' '@n'  < $ROOT/inputs/temp-test/1593.inp.678.4 > ./outputs/t4704

./replace_instrumented.exe '[^--z]%[9-B]' '@n'  < $ROOT/inputs/temp-test/19.inp.9.1 > ./outputs/t4705

./replace_instrumented.exe '[^--z]%[9-B]' '@n'  < $ROOT/inputs/temp-test/20.inp.9.2 > ./outputs/t4706

./replace_instrumented.exe '[^--z]%[9-B]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4707

./replace_instrumented.exe '[^--z]A*??[_-z]' 'a&'  < $ROOT/inputs/temp-test/963.inp.415.1 > ./outputs/t4708

./replace_instrumented.exe '[^--z]A*??[_-z]' 'a&'  < $ROOT/inputs/temp-test/964.inp.415.2 > ./outputs/t4709

./replace_instrumented.exe '[^--z][9-B]$%' '@n'  < $ROOT/inputs/temp-test/22.inp.9.6 > ./outputs/t4710

./replace_instrumented.exe '[^--z][9-B]$' '@n'  < $ROOT/inputs/temp-test/22.inp.9.6 > ./outputs/t4711

./replace_instrumented.exe '[^--z][9-B]%' '@n'  < $ROOT/inputs/temp-test/21.inp.9.3 > ./outputs/t4712

./replace_instrumented.exe '[^--z][9-B]' '@n'  < $ROOT/inputs/temp-test/19.inp.9.1 > ./outputs/t4713

./replace_instrumented.exe '[^--z][9-B]' '@n'  < $ROOT/inputs/temp-test/20.inp.9.2 > ./outputs/t4714

./replace_instrumented.exe '[^--z][9-B]' '@n'  < $ROOT/inputs/temp-test/21.inp.9.3 > ./outputs/t4715

./replace_instrumented.exe '[^-?' 'NEW'  < $ROOT/inputs/temp-test/1328.inp.570.1 > ./outputs/t4716

./replace_instrumented.exe '[^-?' 'NEW'  < $ROOT/inputs/temp-test/1329.inp.570.2 > ./outputs/t4717

./replace_instrumented.exe '[^-c*$' '@%&a'  < $ROOT/inputs/temp-test/1440.inp.617.6 > ./outputs/t4718

./replace_instrumented.exe '[^-c*' '@%&a'  < $ROOT/inputs/temp-test/1437.inp.617.1 > ./outputs/t4719

./replace_instrumented.exe '[^-c*' '@%&a'  < $ROOT/inputs/temp-test/1438.inp.617.2 > ./outputs/t4720

./replace_instrumented.exe '[^-c*' '@%&a'  < $ROOT/inputs/temp-test/1439.inp.617.3 > ./outputs/t4721

./replace_instrumented.exe '[^-z] ' 'NEW'  < $ROOT/inputs/temp-test/246.inp.110.1 > ./outputs/t4722

./replace_instrumented.exe '[^-z] ' 'NEW'  < $ROOT/inputs/temp-test/247.inp.110.3 > ./outputs/t4723

./replace_instrumented.exe '[^-z]-$' '&a@%'  < $ROOT/inputs/temp-test/197.inp.88.6 > ./outputs/t4724

./replace_instrumented.exe '[^-z]-' '&a@%'  < $ROOT/inputs/temp-test/195.inp.88.1 > ./outputs/t4725

./replace_instrumented.exe '[^-z]-' '&a@%'  < $ROOT/inputs/temp-test/196.inp.88.2 > ./outputs/t4726

./replace_instrumented.exe '[^-z]-*? ' 'NEW'  < $ROOT/inputs/temp-test/906.inp.390.1 > ./outputs/t4727

./replace_instrumented.exe '[^-z]?' 'a@n'  < $ROOT/inputs/temp-test/1243.inp.534.1 > ./outputs/t4728

./replace_instrumented.exe '[^-z]?' 'a@n'  < $ROOT/inputs/temp-test/1244.inp.534.2 > ./outputs/t4729

./replace_instrumented.exe '[^-z]?' 'a@n'  < $ROOT/inputs/temp-test/1245.inp.534.3 > ./outputs/t4730

./replace_instrumented.exe '[^-z]?' 'a@n'  < $ROOT/inputs/temp-test/1246.inp.534.4 > ./outputs/t4731

./replace_instrumented.exe '[^-z]?*' '&a@%'  < $ROOT/inputs/temp-test/195.inp.88.1 > ./outputs/t4732

./replace_instrumented.exe '[^-z][0-9][^0-9]-[^9-B]A[a-c]-' 'NEW'  < $ROOT/inputs/temp-test/1814.inp.771.1 > ./outputs/t4733

./replace_instrumented.exe '[^-z][0-9][^0-9]-[^9-B]A[a-c]-' 'NEW'  < $ROOT/inputs/temp-test/1815.inp.771.3 > ./outputs/t4734

./replace_instrumented.exe '[^-z][@t]' ''  < $ROOT/inputs/temp-test/288.inp.130.1 > ./outputs/t4735

./replace_instrumented.exe '[^-z][@t]' ''  < $ROOT/inputs/temp-test/289.inp.130.2 > ./outputs/t4736

./replace_instrumented.exe '[^-z][a-c]' '&a@%'  < $ROOT/inputs/temp-test/1205.inp.517.1 > ./outputs/t4737

./replace_instrumented.exe '[^-z][a-c]' '&a@%'  < $ROOT/inputs/temp-test/1206.inp.517.2 > ./outputs/t4738

./replace_instrumented.exe '[^0-8]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4739

./replace_instrumented.exe '[^0-90-9u]' 'f'  < $ROOT/inputs/input/ruin.548 > ./outputs/t4740

./replace_instrumented.exe '[^0-9;]$' '>'  < $ROOT/inputs/input/ruin.332 > ./outputs/t4741

./replace_instrumented.exe '[^0-9Z-a]^_`a]' '4bd);DUiRc/4$MeR6|.'\''`S+S5?Svq*-:$3a%be-Mfw:wUM~'  < $ROOT/inputs/input/ruin.212 > ./outputs/t4742

./replace_instrumented.exe '[^0-9Z-a]^_`a]' 'U'  < $ROOT/inputs/input/ruin.1193 > ./outputs/t4743

./replace_instrumented.exe '[^0-9] ' '&'  < $ROOT/inputs/temp-test/542.inp.235.1 > ./outputs/t4744

./replace_instrumented.exe '[^0-9] ' '&'  < $ROOT/inputs/temp-test/543.inp.235.2 > ./outputs/t4745

./replace_instrumented.exe '[^0-9] [^9-B]--[0-9]??[a-c]?-' ''  < $ROOT/inputs/temp-test/566.inp.244.1 > ./outputs/t4746

./replace_instrumented.exe '[^0-9] [^9-B]--[0-9]??[a-c]?-' ''  < $ROOT/inputs/temp-test/567.inp.244.2 > ./outputs/t4747

./replace_instrumented.exe '[^0-9]$' '!ds4gkawP:i7J_3'\''>/n_R,P&3 M-8.V_Q:_"}~S<>|@o`/W(*k+9(jm043S9!G6]'\''z$~\Z]z[Q'  < $ROOT/inputs/input/ruin.1388 > ./outputs/t4748

./replace_instrumented.exe '[^0-9]$' '5{>@K4{U'\'')}ombe;=z'  < $ROOT/inputs/input/ruin.382 > ./outputs/t4749

./replace_instrumented.exe '[^0-9]$' '@%&a'  < $ROOT/inputs/temp-test/93.inp.41.6 > ./outputs/t4750

./replace_instrumented.exe '[^0-9]$' 'Lj*D?G)%2iN-C+ARIR6:>9'\''YDdLk^UF%}+pBG'  < $ROOT/inputs/input/ruin.986 > ./outputs/t4751

./replace_instrumented.exe '[^0-9]%' '&a@%'  < $ROOT/inputs/temp-test/2336.inp.991.1 > ./outputs/t4752

./replace_instrumented.exe '[^0-9]%' '@t'  < $ROOT/inputs/temp-test/23.inp.10.1 > ./outputs/t4753

./replace_instrumented.exe '[^0-9]' '%:ZqYa+)t&(X[6Q3?\Xa0eh-a'  < $ROOT/inputs/input/ruin.960 > ./outputs/t4754

./replace_instrumented.exe '[^0-9]' '%GA1aneafjT*EQumxjb-hg\}lz$~TPz$Ac'  < $ROOT/inputs/input/ruin.77 > ./outputs/t4755

./replace_instrumented.exe '[^0-9]' '&'  < $ROOT/inputs/temp-test/664.inp.289.1 > ./outputs/t4756

./replace_instrumented.exe '[^0-9]' '&@n'  < $ROOT/inputs/temp-test/629.inp.272.1 > ./outputs/t4757

./replace_instrumented.exe '[^0-9]' '&@n'  < $ROOT/inputs/temp-test/630.inp.272.3 > ./outputs/t4758

./replace_instrumented.exe '[^0-9]' '&@n'  < $ROOT/inputs/temp-test/688.inp.299.1 > ./outputs/t4759

./replace_instrumented.exe '[^0-9]' '&@n'  < $ROOT/inputs/temp-test/689.inp.299.3 > ./outputs/t4760

./replace_instrumented.exe '[^0-9]' '&@n@ttt'  < $ROOT/inputs/temp-test/688.inp.299.1 > ./outputs/t4761

./replace_instrumented.exe '[^0-9]' '&a@%'  < $ROOT/inputs/temp-test/2336.inp.991.1 > ./outputs/t4762

./replace_instrumented.exe '[^0-9]' '*DyU/0]4LcsUAUsl4RUKt@z?h4?u1M'  < $ROOT/inputs/input/ruin.679 > ./outputs/t4763

./replace_instrumented.exe '[^0-9]' '4'  < $ROOT/inputs/input/ruin.877 > ./outputs/t4764

./replace_instrumented.exe '[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/91.inp.41.1 > ./outputs/t4765

./replace_instrumented.exe '[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/92.inp.41.2 > ./outputs/t4766

./replace_instrumented.exe '[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/1239.inp.532.1 > ./outputs/t4767

./replace_instrumented.exe '[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/2002.inp.851.1 > ./outputs/t4768

./replace_instrumented.exe '[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/2003.inp.851.2 > ./outputs/t4769

./replace_instrumented.exe '[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/2004.inp.851.3 > ./outputs/t4770

./replace_instrumented.exe '[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/2273.inp.963.1 > ./outputs/t4771

./replace_instrumented.exe '[^0-9]' '@%@&'  < $ROOT/inputs/temp-test/2274.inp.963.3 > ./outputs/t4772

./replace_instrumented.exe '[^0-9]' '@t'  < $ROOT/inputs/temp-test/23.inp.10.1 > ./outputs/t4773

./replace_instrumented.exe '[^0-9]' 'KE>/]y#k0F!l)'  < $ROOT/inputs/input/ruin.444 > ./outputs/t4774

./replace_instrumented.exe '[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/2176.inp.921.1 > ./outputs/t4775

./replace_instrumented.exe '[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/2177.inp.921.2 > ./outputs/t4776

./replace_instrumented.exe '[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/2178.inp.921.3 > ./outputs/t4777

./replace_instrumented.exe '[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/660.inp.287.1 > ./outputs/t4778

./replace_instrumented.exe '[^0-9]' 'NEW'  < $ROOT/inputs/temp-test/661.inp.287.3 > ./outputs/t4779

./replace_instrumented.exe '[^0-9]' 'Y'  < $ROOT/inputs/input/ruin.160 > ./outputs/t4780

./replace_instrumented.exe '[^0-9]' ']yO+C;|.#Ft_-n=^zs$NJA['  < $ROOT/inputs/input/ruin.1228 > ./outputs/t4781

./replace_instrumented.exe '[^0-9]' 'b@t'  < $ROOT/inputs/temp-test/1186.inp.511.1 > ./outputs/t4782

./replace_instrumented.exe '[^0-9]' 'd4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?P'  < $ROOT/inputs/input/ruin.195 > ./outputs/t4783

./replace_instrumented.exe '[^0-9]' 'd4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?d4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?d4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?d4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?d4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?d4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?d4<!_ait4(;qppZ;+yY=io19UK]0,*~YBq?P'  < $ROOT/inputs/input/ruin.195 > ./outputs/t4784

./replace_instrumented.exe '[^0-9]' 'h'  < $ROOT/inputs/input/ruin.1903 > ./outputs/t4785

./replace_instrumented.exe '[^0-9]' 'q"'  < $ROOT/inputs/input/ruin.633 > ./outputs/t4786

./replace_instrumented.exe '[^0-9]' '{'  < $ROOT/inputs/input/ruin.829 > ./outputs/t4787

./replace_instrumented.exe '[^0-9]'\''' 'j'  < $ROOT/inputs/input/ruin.1346 > ./outputs/t4788

./replace_instrumented.exe '[^0-9]'\''C|d<FQ' 'g99=H#ja[PxJokg/F\'  < $ROOT/inputs/input/ruin.1492 > ./outputs/t4789

./replace_instrumented.exe '[^0-9]'\''V:W1pP' ':'  < $ROOT/inputs/input/ruin.662 > ./outputs/t4790

./replace_instrumented.exe '[^0-9]'\''\2/L2y'\''@@*@@@=' ' +i`RYFz`5V/  W2?Y{N.1JW{5U"'\'''\''PH/yvFzwT=OI'  < $ROOT/inputs/input/ruin.1238 > ./outputs/t4791

./replace_instrumented.exe '[^0-9]'\''\2/L2y'\''@@*@@@=*$' ' +i`RYFz`5V/  W2?Y{N.1JW{5U"'\'''\''PH/yvFzwT=OI'  < $ROOT/inputs/input/ruin.1238 > ./outputs/t4792

./replace_instrumented.exe '[^0-9]-$' '@%@&'  < $ROOT/inputs/temp-test/968.inp.417.8 > ./outputs/t4793

./replace_instrumented.exe '[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1568.inp.670.1 > ./outputs/t4794

./replace_instrumented.exe '[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1569.inp.670.2 > ./outputs/t4795

./replace_instrumented.exe '[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1697.inp.724.1 > ./outputs/t4796

./replace_instrumented.exe '[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1698.inp.724.3 > ./outputs/t4797

./replace_instrumented.exe '[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1699.inp.724.4 > ./outputs/t4798

./replace_instrumented.exe '[^0-9]-' '@%@&'  < $ROOT/inputs/temp-test/967.inp.417.1 > ./outputs/t4799

./replace_instrumented.exe '[^0-9]-' 'NEW'  < $ROOT/inputs/temp-test/1589.inp.677.1 > ./outputs/t4800

./replace_instrumented.exe '[^0-9]-' 'NEW'  < $ROOT/inputs/temp-test/1590.inp.677.2 > ./outputs/t4801

./replace_instrumented.exe '[^0-9]-' 'a&'  < $ROOT/inputs/temp-test/1136.inp.489.1 > ./outputs/t4802

./replace_instrumented.exe '[^0-9]-' 'a&'  < $ROOT/inputs/temp-test/1137.inp.489.2 > ./outputs/t4803

./replace_instrumented.exe '[^0-9]-' 'a&'  < $ROOT/inputs/temp-test/1138.inp.489.3 > ./outputs/t4804

./replace_instrumented.exe '[^0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2091.inp.886.1 > ./outputs/t4805

./replace_instrumented.exe '[^0-9]-' 'a@nb@tc'  < $ROOT/inputs/temp-test/2092.inp.886.2 > ./outputs/t4806

./replace_instrumented.exe '[^0-9]-*' '&'  < $ROOT/inputs/temp-test/1014.inp.436.1 > ./outputs/t4807

./replace_instrumented.exe '[^0-9]-*' '&'  < $ROOT/inputs/temp-test/1015.inp.436.2 > ./outputs/t4808

./replace_instrumented.exe '[^0-9]--?@*-[9-B]@[' '@n'  < $ROOT/inputs/temp-test/1906.inp.809.1 > ./outputs/t4809

./replace_instrumented.exe '[^0-9]--?@*-[9-B]@[' '@n'  < $ROOT/inputs/temp-test/1907.inp.809.2 > ./outputs/t4810

./replace_instrumented.exe '[^0-9]-?' '&a@%'  < $ROOT/inputs/temp-test/2257.inp.957.1 > ./outputs/t4811

./replace_instrumented.exe '[^0-9]-?' '&a@%'  < $ROOT/inputs/temp-test/2258.inp.957.3 > ./outputs/t4812

./replace_instrumented.exe '[^0-9]-?[9-B]*$' '@t'  < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t4813

./replace_instrumented.exe '[^0-9]-?[9-B]*' '@t'  < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t4814

./replace_instrumented.exe '[^0-9]-?[9-B]?-[9-B]*$' '@t'  < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t4815

./replace_instrumented.exe '[^0-9]-?[9-B]?-[9-B]*' '@t'  < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t4816

./replace_instrumented.exe '[^0-9]-?[9-B]?-[9-B]?'   < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t4817

./replace_instrumented.exe '[^0-9]-?[9-B]?-[9-B]?'   < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t4818

./replace_instrumented.exe '[^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t4819

./replace_instrumented.exe '[^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t4820

./replace_instrumented.exe '[^0-9]-?[][9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t4821

./replace_instrumented.exe '[^0-9]-?[^][9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t4822

./replace_instrumented.exe '[^0-9]-^-]??[9-B]?' '@t'  < $ROOT/inputs/temp-test/2321.inp.985.1 > ./outputs/t4823

./replace_instrumented.exe '[^0-9]-^-]??[9-B]?' '@t'  < $ROOT/inputs/temp-test/2322.inp.985.3 > ./outputs/t4824

./replace_instrumented.exe '[^0-9]?' '@%@&'  < $ROOT/inputs/temp-test/941.inp.404.1 > ./outputs/t4825

./replace_instrumented.exe '[^0-9]?*' '@t'  < $ROOT/inputs/temp-test/525.inp.228.1 > ./outputs/t4826

./replace_instrumented.exe '[^0-9]?*' '@t'  < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t4827

./replace_instrumented.exe '[^0-9]?-?[^a--b]'   < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4828

./replace_instrumented.exe '[^0-9]?-?[^a--b]' '&@n'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4829

./replace_instrumented.exe '[^0-9]?-?[^a--b]' '&a@%'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4830

./replace_instrumented.exe '[^0-9]?-?[^a--b]'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4831

./replace_instrumented.exe '[^0-9]?-?[^a--b]*$' '&a@%'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4832

./replace_instrumented.exe '[^0-9]?-?[^a--b]*$'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4833

./replace_instrumented.exe '[^0-9]?-?[^a--b]*' '&a@%'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4834

./replace_instrumented.exe '[^0-9]?-?[^a--b]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4835

./replace_instrumented.exe '[^0-9]?[^@@]a-]?A' ''  < $ROOT/inputs/temp-test/1432.inp.615.1 > ./outputs/t4836

./replace_instrumented.exe '[^0-9]?[^@@]a-]?A' ''  < $ROOT/inputs/temp-test/1433.inp.615.2 > ./outputs/t4837

./replace_instrumented.exe '[^0-9]?[^@@]a-]?A' ''  < $ROOT/inputs/temp-test/1434.inp.615.4 > ./outputs/t4838

./replace_instrumented.exe '[^0-9]?[a-c] [^0-9]?[a-c]-[a--b]?^a-c]$' '&'  < $ROOT/inputs/temp-test/1269.inp.544.6 > ./outputs/t4839

./replace_instrumented.exe '[^0-9]?[a-c] [^0-9]?[a-c]-[a--b]?^a-c]' '&'  < $ROOT/inputs/temp-test/1268.inp.544.1 > ./outputs/t4840

./replace_instrumented.exe '[^0-9]?^[a-c]?[^a--?A*[^9-B]$' '@t'  < $ROOT/inputs/temp-test/1551.inp.663.9 > ./outputs/t4841

./replace_instrumented.exe '[^0-9]?^[a-c]?[^a--?A*[^9-B]' '@t'  < $ROOT/inputs/temp-test/1549.inp.663.1 > ./outputs/t4842

./replace_instrumented.exe '[^0-9]?^[a-c]?[^a--?A*[^9-B]' '@t'  < $ROOT/inputs/temp-test/1550.inp.663.2 > ./outputs/t4843

./replace_instrumented.exe '[^0-9]@@' ''  < $ROOT/inputs/input/ruin.36 > ./outputs/t4844

./replace_instrumented.exe '[^0-9]@@' 'b@t'  < $ROOT/inputs/temp-test/679.inp.295.1 > ./outputs/t4845

./replace_instrumented.exe '[^0-9]@@' 'b@t'  < $ROOT/inputs/temp-test/680.inp.295.3 > ./outputs/t4846

./replace_instrumented.exe '[^0-9]@[' '@%&a'  < $ROOT/inputs/temp-test/688.inp.299.1 > ./outputs/t4847

./replace_instrumented.exe '[^0-9]@[' '@%&a'  < $ROOT/inputs/temp-test/689.inp.299.3 > ./outputs/t4848

./replace_instrumented.exe '[^0-9]@[*' ''  < $ROOT/inputs/temp-test/1178.inp.508.1 > ./outputs/t4849

./replace_instrumented.exe '[^0-9]@[*' ''  < $ROOT/inputs/temp-test/1179.inp.508.2 > ./outputs/t4850

./replace_instrumented.exe '[^0-9]@[*' 'a&'  < $ROOT/inputs/temp-test/1821.inp.774.1 > ./outputs/t4851

./replace_instrumented.exe '[^0-9]@[*- ?[^a-][9-B]- ' 'NEW'  < $ROOT/inputs/temp-test/58.inp.25.1 > ./outputs/t4852

./replace_instrumented.exe '[^0-9]@[*- ?[^a-][9-B]- ' 'NEW'  < $ROOT/inputs/temp-test/59.inp.25.2 > ./outputs/t4853

./replace_instrumented.exe '[^0-9]@[*- ?[^a-][9-B]- ' 'NEW'  < $ROOT/inputs/temp-test/60.inp.25.3 > ./outputs/t4854

./replace_instrumented.exe '[^0-9]@n' '&a@%'  < $ROOT/inputs/temp-test/1498.inp.642.1 > ./outputs/t4855

./replace_instrumented.exe '[^0-9]@n' '&a@%'  < $ROOT/inputs/temp-test/1499.inp.642.2 > ./outputs/t4856

./replace_instrumented.exe '[^0-9]@t*$' '&a@%'  < $ROOT/inputs/temp-test/462.inp.202.9 > ./outputs/t4857

./replace_instrumented.exe '[^0-9]@t*' '&a@%'  < $ROOT/inputs/temp-test/460.inp.202.1 > ./outputs/t4858

./replace_instrumented.exe '[^0-9]A?' '@n'  < $ROOT/inputs/temp-test/1833.inp.780.1 > ./outputs/t4859

./replace_instrumented.exe '[^0-9]A?' '@n'  < $ROOT/inputs/temp-test/1834.inp.780.2 > ./outputs/t4860

./replace_instrumented.exe '[^0-9][0-9]$' 'a&'  < $ROOT/inputs/temp-test/1379.inp.591.9 > ./outputs/t4861

./replace_instrumented.exe '[^0-9][0-9]' '&a@%'  < $ROOT/inputs/temp-test/621.inp.268.1 > ./outputs/t4862

./replace_instrumented.exe '[^0-9][0-9]' '&a@%'  < $ROOT/inputs/temp-test/622.inp.268.3 > ./outputs/t4863

./replace_instrumented.exe '[^0-9][0-9]' 'a&'  < $ROOT/inputs/temp-test/1377.inp.591.1 > ./outputs/t4864

./replace_instrumented.exe '[^0-9][0-9]' 'a&'  < $ROOT/inputs/temp-test/1378.inp.591.4 > ./outputs/t4865

./replace_instrumented.exe '[^0-9][0-9]' 'a@n'  < $ROOT/inputs/temp-test/2233.inp.947.1 > ./outputs/t4866

./replace_instrumented.exe '[^0-9][0-9]' 'a@n'  < $ROOT/inputs/temp-test/2234.inp.947.2 > ./outputs/t4867

./replace_instrumented.exe '[^0-9][0-9]' 'a@n'  < $ROOT/inputs/temp-test/2235.inp.947.4 > ./outputs/t4868

./replace_instrumented.exe '[^0-9][9-B]' '&'  < $ROOT/inputs/temp-test/1106.inp.476.1 > ./outputs/t4869

./replace_instrumented.exe '[^0-9][9-B]' '&'  < $ROOT/inputs/temp-test/1107.inp.476.2 > ./outputs/t4870

./replace_instrumented.exe '[^0-9][9-B]' '&'  < $ROOT/inputs/temp-test/1108.inp.476.3 > ./outputs/t4871

./replace_instrumented.exe '[^0-9][9-B]' '&a@%'  < $ROOT/inputs/temp-test/1172.inp.505.1 > ./outputs/t4872

./replace_instrumented.exe '[^0-9][9-B]' '&a@%'  < $ROOT/inputs/temp-test/1173.inp.505.2 > ./outputs/t4873

./replace_instrumented.exe '[^0-9][9-B]' '&a@%'  < $ROOT/inputs/temp-test/1174.inp.505.3 > ./outputs/t4874

./replace_instrumented.exe '[^0-9][9-B]' ''  < $ROOT/inputs/temp-test/1175.inp.506.1 > ./outputs/t4875

./replace_instrumented.exe '[^0-9][9-B]' ''  < $ROOT/inputs/temp-test/1176.inp.506.3 > ./outputs/t4876

./replace_instrumented.exe '[^0-9][9-B]*' '@%&a'  < $ROOT/inputs/temp-test/139.inp.65.1 > ./outputs/t4877

./replace_instrumented.exe '[^0-9][9-B]*' '@%&a'  < $ROOT/inputs/temp-test/140.inp.65.2 > ./outputs/t4878

./replace_instrumented.exe '[^0-9][9-B]*' '@%&a'  < $ROOT/inputs/temp-test/141.inp.65.3 > ./outputs/t4879

./replace_instrumented.exe '[^0-9][9-B]?' '&a@%'  < $ROOT/inputs/temp-test/1146.inp.493.1 > ./outputs/t4880

./replace_instrumented.exe '[^0-9][9-B]?' '&a@%'  < $ROOT/inputs/temp-test/1147.inp.493.2 > ./outputs/t4881

./replace_instrumented.exe '[^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B][^0-9][9-B]' '&a@%'  < $ROOT/inputs/temp-test/1172.inp.505.1 > ./outputs/t4882

./replace_instrumented.exe '[^0-9][]?-?[^a--b]' '&a@%'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4883

./replace_instrumented.exe '[^0-9][^0-9]@n@@@@' '9oW5!fFgN1 7tZf>k'  < $ROOT/inputs/input/ruin.927 > ./outputs/t4884

./replace_instrumented.exe '[^0-9][^0-9][^9-B]' '@n'  < $ROOT/inputs/temp-test/1952.inp.829.1 > ./outputs/t4885

./replace_instrumented.exe '[^0-9][^0-9][^9-B]' '@n'  < $ROOT/inputs/temp-test/1953.inp.829.2 > ./outputs/t4886

./replace_instrumented.exe '[^0-9][^0-9][^9-B]' '@n'  < $ROOT/inputs/temp-test/1954.inp.829.3 > ./outputs/t4887

./replace_instrumented.exe '[^0-9][^]?-?[^a--b]' '&a@%'  < $ROOT/inputs/temp-test/206.inp.92.1 > ./outputs/t4888

./replace_instrumented.exe '[^0-9][a--]' '&@n'  < $ROOT/inputs/temp-test/696.inp.301.2 > ./outputs/t4889

./replace_instrumented.exe '[^0-9][a--]' '&@n'  < $ROOT/inputs/temp-test/697.inp.301.4 > ./outputs/t4890

./replace_instrumented.exe '[^0-9][a--]' '&@n@tandsome'  < $ROOT/inputs/temp-test/697.inp.301.4 > ./outputs/t4891

./replace_instrumented.exe '[^0-9][a--]' '&@nmoretext'  < $ROOT/inputs/temp-test/696.inp.301.2 > ./outputs/t4892

./replace_instrumented.exe '[^0-9][a--]- ' '&@n'  < $ROOT/inputs/temp-test/695.inp.301.1 > ./outputs/t4893

./replace_instrumented.exe '[^0-9][a--]- *[^@t]-?' '@t'  < $ROOT/inputs/temp-test/695.inp.301.1 > ./outputs/t4894

./replace_instrumented.exe '[^0-9][a--]- *[^@t]-?' '@t'  < $ROOT/inputs/temp-test/696.inp.301.2 > ./outputs/t4895

./replace_instrumented.exe '[^0-9][a--]- *[^@t]-?' '@t'  < $ROOT/inputs/temp-test/697.inp.301.4 > ./outputs/t4896

./replace_instrumented.exe '[^0-9][a--][^9-B][^-z]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2254.inp.956.1 > ./outputs/t4897

./replace_instrumented.exe '[^0-9][a--][^9-B][^-z]' 'a@nb@tc'  < $ROOT/inputs/temp-test/2255.inp.956.2 > ./outputs/t4898

./replace_instrumented.exe '[^0-9][a-]' ''  < $ROOT/inputs/temp-test/147.inp.68.1 > ./outputs/t4899

./replace_instrumented.exe '[^0-9][a-]' ''  < $ROOT/inputs/temp-test/148.inp.68.2 > ./outputs/t4900

./replace_instrumented.exe '[^0-9][a-]' ''  < $ROOT/inputs/temp-test/149.inp.68.3 > ./outputs/t4901

./replace_instrumented.exe '[^0-9][a-]' ''  < $ROOT/inputs/temp-test/150.inp.68.4 > ./outputs/t4902

./replace_instrumented.exe '[^0-9][a-c?--[^0-9][^9-B]?' '@n'  < $ROOT/inputs/temp-test/1396.inp.599.1 > ./outputs/t4903

./replace_instrumented.exe '[^0-9][a-c]' ''  < $ROOT/inputs/temp-test/726.inp.313.1 > ./outputs/t4904

./replace_instrumented.exe '[^0-9][a-c]' ''  < $ROOT/inputs/temp-test/727.inp.313.2 > ./outputs/t4905

./replace_instrumented.exe '[^0-9]\q2#' 'N_j  maExCfe(RK#?/SXIIyOqB[%kuLjKCnrk'  < $ROOT/inputs/input/ruin.853 > ./outputs/t4906

./replace_instrumented.exe '[^0-9]^$' '@%&a'  < $ROOT/inputs/temp-test/1011.inp.434.8 > ./outputs/t4907

./replace_instrumented.exe '[^0-9]^' '@%&a'  < $ROOT/inputs/temp-test/1009.inp.434.1 > ./outputs/t4908

./replace_instrumented.exe '[^0-9]^' '@%&a'  < $ROOT/inputs/temp-test/1010.inp.434.2 > ./outputs/t4909

./replace_instrumented.exe '[^0-9]^*[0-9]?[0-9]-c-@@*[9-B][^-z]?' '@n'  < $ROOT/inputs/temp-test/1068.inp.459.1 > ./outputs/t4910

./replace_instrumented.exe '[^0-9]^*[0-9]?[0-9]-c-@@*[9-B][^-z]?' '@n'  < $ROOT/inputs/temp-test/1069.inp.459.3 > ./outputs/t4911

./replace_instrumented.exe '[^0-9]a-c]-@*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/851.inp.366.1 > ./outputs/t4912

./replace_instrumented.exe '[^0-9]a-c]-@*?' 'a@nb@tc'  < $ROOT/inputs/temp-test/852.inp.366.3 > ./outputs/t4913

./replace_instrumented.exe '[^0-9o]' 'A'  < $ROOT/inputs/input/ruin.1222 > ./outputs/t4914

./replace_instrumented.exe '[^0-9z-}c-a]' 'X'  < $ROOT/inputs/input/ruin.1842 > ./outputs/t4915

./replace_instrumented.exe '[^0[^0-9]-?[9-B]?-[9-B]?[^0-9]-?[9-B]?-[9-B]?[^0-9]-?[9-B]?-[9-B]?[^0-9]-?[9-B]?-[9-B]?[^0-9]-?[9-B]?-[9-B]?[^0-9]-?[9-B]?-[9-B]?[^0-9]-?[9-B]?-[9-B]?[^0-9]-?[9-B]?-[9-B]?-9]-?[9-B]?-[9-B]*?[[^0-9]-?[9-B]?-[9-B]?^0-9]*-?[9-B]?-[9-B]?' 'a'  < $ROOT/inputs/input/ruin.1517 > ./outputs/t4916

./replace_instrumented.exe '[^1]' 'Iaz-cZ"a'\''A:(eeGG\^<6w1DDcCJ,9$Yr26[8Ap4Xuo=ZZ%dkomXc8sOhWnlrc0S'  < $ROOT/inputs/input/ruin.1248 > ./outputs/t4917

./replace_instrumented.exe '[^1]*$' 'Iaz-cZ"a'\''A:(eeGG\^<6w1DDcCJ,9$Yr26[8Ap4Xuo=ZZ%dkomXc8sOhWnlrc0S'  < $ROOT/inputs/input/ruin.1248 > ./outputs/t4918

./replace_instrumented.exe '[^2]' '!'  < $ROOT/inputs/input/ruin.558 > ./outputs/t4919

./replace_instrumented.exe '[^4]' 'H'  < $ROOT/inputs/input/ruin.50 > ./outputs/t4920

./replace_instrumented.exe '[^6]' 'p7/\=6eLD*=^?('  < $ROOT/inputs/input/ruin.1297 > ./outputs/t4921

./replace_instrumented.exe '[^6]*?' '%'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4922

./replace_instrumented.exe '[^9-B] *' '&a@%'  < $ROOT/inputs/temp-test/2074.inp.879.1 > ./outputs/t4923

./replace_instrumented.exe '[^9-B] *' '&a@%'  < $ROOT/inputs/temp-test/2075.inp.879.3 > ./outputs/t4924

./replace_instrumented.exe '[^9-B] *' 'a&'  < $ROOT/inputs/temp-test/295.inp.133.1 > ./outputs/t4925

./replace_instrumented.exe '[^9-B] *' 'a&'  < $ROOT/inputs/temp-test/296.inp.133.2 > ./outputs/t4926

./replace_instrumented.exe '[^9-B] *' 'a&'  < $ROOT/inputs/temp-test/297.inp.133.3 > ./outputs/t4927

./replace_instrumented.exe '[^9-B] *' 'a@n'  < $ROOT/inputs/temp-test/1748.inp.743.1 > ./outputs/t4928

./replace_instrumented.exe '[^9-B] *' 'a@n'  < $ROOT/inputs/temp-test/1749.inp.743.2 > ./outputs/t4929

./replace_instrumented.exe '[^9-B] *' 'a@n'  < $ROOT/inputs/temp-test/1750.inp.743.3 > ./outputs/t4930

./replace_instrumented.exe '[^9-B]' '&@n$'  < $ROOT/inputs/temp-test/640.inp.276.2 > ./outputs/t4931

./replace_instrumented.exe '[^9-B]' '&@n'  < $ROOT/inputs/temp-test/639.inp.276.1 > ./outputs/t4932

./replace_instrumented.exe '[^9-B]' '&@n'  < $ROOT/inputs/temp-test/640.inp.276.2 > ./outputs/t4933

./replace_instrumented.exe '[^9-B]' '&@n^'  < $ROOT/inputs/temp-test/639.inp.276.1 > ./outputs/t4934

./replace_instrumented.exe '[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/398.inp.174.1 > ./outputs/t4935

./replace_instrumented.exe '[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/399.inp.174.2 > ./outputs/t4936

./replace_instrumented.exe '[^9-B]' 'NEW'  < $ROOT/inputs/temp-test/400.inp.174.3 > ./outputs/t4937

./replace_instrumented.exe '[^9-B]' 'a&'  < $ROOT/inputs/temp-test/1537.inp.658.1 > ./outputs/t4938

./replace_instrumented.exe '[^9-B]' 'a&'  < $ROOT/inputs/temp-test/1538.inp.658.3 > ./outputs/t4939

./replace_instrumented.exe '[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/76.inp.33.1 > ./outputs/t4940

./replace_instrumented.exe '[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/77.inp.33.3 > ./outputs/t4941

./replace_instrumented.exe '[^9-B]' 'a@n'  < $ROOT/inputs/temp-test/78.inp.33.4 > ./outputs/t4942

./replace_instrumented.exe '[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1119.inp.481.1 > ./outputs/t4943

./replace_instrumented.exe '[^9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1120.inp.481.3 > ./outputs/t4944

./replace_instrumented.exe '[^9-B]*$' 'a@n'  < $ROOT/inputs/temp-test/220.inp.98.2 > ./outputs/t4945

./replace_instrumented.exe '[^9-B]*$' 'a@n'  < $ROOT/inputs/temp-test/221.inp.98.3 > ./outputs/t4946

./replace_instrumented.exe '[^9-B]*' 'a@n'  < $ROOT/inputs/temp-test/220.inp.98.2 > ./outputs/t4947

./replace_instrumented.exe '[^9-B]*' 'a@n'  < $ROOT/inputs/temp-test/221.inp.98.3 > ./outputs/t4948

./replace_instrumented.exe '[^9-B]*'  < $ROOT/inputs/temp-test/219.inp.98.1 > ./outputs/t4949

./replace_instrumented.exe '[^9-B]**'  'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t4950

./replace_instrumented.exe '[^9-B]-' '&a@%'  < $ROOT/inputs/temp-test/639.inp.276.1 > ./outputs/t4951

./replace_instrumented.exe '[^9-B]-' '&a@%'  < $ROOT/inputs/temp-test/640.inp.276.2 > ./outputs/t4952

./replace_instrumented.exe '[^9-B]-' '@%&a'  < $ROOT/inputs/temp-test/2128.inp.902.1 > ./outputs/t4953

./replace_instrumented.exe '[^9-B]-' '@%&a'  < $ROOT/inputs/temp-test/2129.inp.902.2 > ./outputs/t4954

./replace_instrumented.exe '[^9-B]-' '@%&a'  < $ROOT/inputs/temp-test/2130.inp.902.3 > ./outputs/t4955

./replace_instrumented.exe '[^9-B]-' '@%@&'  < $ROOT/inputs/temp-test/1500.inp.643.1 > ./outputs/t4956

./replace_instrumented.exe '[^9-B]-' '@%@&'  < $ROOT/inputs/temp-test/1501.inp.643.2 > ./outputs/t4957

./replace_instrumented.exe '[^9-B]-' '@n'  < $ROOT/inputs/temp-test/2183.inp.924.1 > ./outputs/t4958

./replace_instrumented.exe '[^9-B]-' '@n'  < $ROOT/inputs/temp-test/2184.inp.924.2 > ./outputs/t4959

./replace_instrumented.exe '[^9-B]-' '@n'  < $ROOT/inputs/temp-test/2185.inp.924.3 > ./outputs/t4960

./replace_instrumented.exe '[^9-B]-' 'b@t'  < $ROOT/inputs/temp-test/886.inp.381.1 > ./outputs/t4961

./replace_instrumented.exe '[^9-B]-' 'b@t'  < $ROOT/inputs/temp-test/887.inp.381.2 > ./outputs/t4962

./replace_instrumented.exe '[^9-B]-*' 'b@t'  < $ROOT/inputs/temp-test/1606.inp.683.1 > ./outputs/t4963

./replace_instrumented.exe '[^9-B]-*' 'b@t'  < $ROOT/inputs/temp-test/1607.inp.683.2 > ./outputs/t4964

./replace_instrumented.exe '[^9-B]-*' 'b@t'  < $ROOT/inputs/temp-test/1608.inp.683.4 > ./outputs/t4965

./replace_instrumented.exe '[^9-B]--?[9-B]-[a--b]-?^?[^9-B]' '@%&a'  < $ROOT/inputs/temp-test/1035.inp.445.1 > ./outputs/t4966

./replace_instrumented.exe '[^9-B]--?[9-B]-[a--b]-?^?[^9-B]' '@%&a'  < $ROOT/inputs/temp-test/1036.inp.445.3 > ./outputs/t4967

./replace_instrumented.exe '[^9-B]--[a--b][^9-B]?[a--b]-' '@%&a'  < $ROOT/inputs/temp-test/1581.inp.674.1 > ./outputs/t4968

./replace_instrumented.exe '[^9-B]--[a--b][^9-B]?[a--b]-' '@%&a'  < $ROOT/inputs/temp-test/1582.inp.674.2 > ./outputs/t4969

./replace_instrumented.exe '[^9-B]--[a--b][^9-B]?[a--b]-' '@%&a'  < $ROOT/inputs/temp-test/1583.inp.674.3 > ./outputs/t4970

./replace_instrumented.exe '[^9-B]-@**[^9-B]?-*' 'b@t'  < $ROOT/inputs/temp-test/1628.inp.692.1 > ./outputs/t4971

./replace_instrumented.exe '[^9-B]-[^0-9]?[^9-B]--??^-[^a--b]-?' '@t'  < $ROOT/inputs/temp-test/780.inp.336.1 > ./outputs/t4972

./replace_instrumented.exe '[^9-B]-[^0-9]?[^9-B]--??^-[^a--b]-?' '@t'  < $ROOT/inputs/temp-test/781.inp.336.2 > ./outputs/t4973

./replace_instrumented.exe '[^9-B]-[^0-9]?[^9-B]--??^-[^a--b]-?' '@t'  < $ROOT/inputs/temp-test/782.inp.336.3 > ./outputs/t4974

./replace_instrumented.exe '[^9-B]-[^9-B][9-B]-[0-9]' '@t'  < $ROOT/inputs/temp-test/356.inp.156.1 > ./outputs/t4975

./replace_instrumented.exe '[^9-B]-[^9-B][9-B]-[0-9]' '@t'  < $ROOT/inputs/temp-test/357.inp.156.3 > ./outputs/t4976

./replace_instrumented.exe '[^9-B]-[^9-B][9-B]-[0-9]' '@t@'  < $ROOT/inputs/temp-test/357.inp.156.3 > ./outputs/t4977

./replace_instrumented.exe '[^9-B]-[^9-B][9-B]-[0-9]@' '@t'  < $ROOT/inputs/temp-test/356.inp.156.1 > ./outputs/t4978

./replace_instrumented.exe '[^9-B]? -?-[9-B]-[^9-B][^9-B]-' '&a@%'  < $ROOT/inputs/temp-test/1317.inp.565.1 > ./outputs/t4979

./replace_instrumented.exe '[^9-B]? -?-[9-B]-[^9-B][^9-B]-' '&a@%'  < $ROOT/inputs/temp-test/1318.inp.565.3 > ./outputs/t4980

./replace_instrumented.exe '[^9-B]?' '&'  < $ROOT/inputs/temp-test/1603.inp.682.1 > ./outputs/t4981

./replace_instrumented.exe '[^9-B]?' '&'  < $ROOT/inputs/temp-test/1604.inp.682.2 > ./outputs/t4982

./replace_instrumented.exe '[^9-B]?' '&'  < $ROOT/inputs/temp-test/1605.inp.682.3 > ./outputs/t4983

./replace_instrumented.exe '[^9-B]?' '&'  < $ROOT/inputs/temp-test/2158.inp.914.1 > ./outputs/t4984

./replace_instrumented.exe '[^9-B]?' '&'  < $ROOT/inputs/temp-test/2159.inp.914.2 > ./outputs/t4985

./replace_instrumented.exe '[^9-B]?' '&'  < $ROOT/inputs/temp-test/2160.inp.914.3 > ./outputs/t4986

./replace_instrumented.exe '[^9-B]?' '@%&a'  < $ROOT/inputs/temp-test/1874.inp.795.1 > ./outputs/t4987

./replace_instrumented.exe '[^9-B]?' '@%&a'  < $ROOT/inputs/temp-test/1875.inp.795.3 > ./outputs/t4988

./replace_instrumented.exe '[^9-B]?' '@%&a'  < $ROOT/inputs/temp-test/1876.inp.795.4 > ./outputs/t4989

./replace_instrumented.exe '[^9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1157.inp.498.1 > ./outputs/t4990

./replace_instrumented.exe '[^9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1553.inp.665.1 > ./outputs/t4991

./replace_instrumented.exe '[^9-B]?' '@%@&'  < $ROOT/inputs/temp-test/1554.inp.665.2 > ./outputs/t4992

./replace_instrumented.exe '[^9-B]?' 'NEW'  < $ROOT/inputs/temp-test/1080.inp.465.1 > ./outputs/t4993

./replace_instrumented.exe '[^9-B]?' 'NEW'  < $ROOT/inputs/temp-test/507.inp.221.1 > ./outputs/t4994

./replace_instrumented.exe '[^9-B]?' 'NEW'  < $ROOT/inputs/temp-test/508.inp.221.3 > ./outputs/t4995

./replace_instrumented.exe '[^9-B]?-' '&'  < $ROOT/inputs/temp-test/439.inp.193.1 > ./outputs/t4996

./replace_instrumented.exe '[^9-B]?-' '&'  < $ROOT/inputs/temp-test/440.inp.193.2 > ./outputs/t4997

./replace_instrumented.exe '[^9-B]?-' '&'  < $ROOT/inputs/temp-test/441.inp.193.3 > ./outputs/t4998

./replace_instrumented.exe '[^9-B]?-' '&'  < $ROOT/inputs/temp-test/442.inp.193.4 > ./outputs/t4999

./replace_instrumented.exe '[^9-B]?-?[^a--b]-' ''  < $ROOT/inputs/temp-test/969.inp.418.1 > ./outputs/t5000

./replace_instrumented.exe '[^9-B]?-?[^a--b]-' ''  < $ROOT/inputs/temp-test/970.inp.418.2 > ./outputs/t5001

./replace_instrumented.exe '[^9-B]?-?[^a--b]-' ''  < $ROOT/inputs/temp-test/971.inp.418.3 > ./outputs/t5002

./replace_instrumented.exe '[^9-B]?-[^0-9]' '&'  < $ROOT/inputs/temp-test/1912.inp.812.1 > ./outputs/t5003

./replace_instrumented.exe '[^9-B]?-[^0-9]' '&'  < $ROOT/inputs/temp-test/1913.inp.812.3 > ./outputs/t5004

./replace_instrumented.exe '[^9-B]?-[^9-B]-*-[^9-B][^0-9]-*-[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/1081.inp.466.1 > ./outputs/t5005

./replace_instrumented.exe '[^9-B]?-[^9-B]-*-[^9-B][^0-9]-*-[^0-9]' '@%&a'  < $ROOT/inputs/temp-test/1082.inp.466.3 > ./outputs/t5006

./replace_instrumented.exe '[^9-B]??[a-c]?[^9-B]-' '&'  < $ROOT/inputs/temp-test/656.inp.285.1 > ./outputs/t5007

./replace_instrumented.exe '[^9-B]?[9-B]a-c]' '&'  < $ROOT/inputs/temp-test/242.inp.108.1 > ./outputs/t5008

./replace_instrumented.exe '[^9-B]?[9-B]a-c]' '&'  < $ROOT/inputs/temp-test/243.inp.108.3 > ./outputs/t5009

./replace_instrumented.exe '[^9-B]?[^a-]-' '@%&a'  < $ROOT/inputs/temp-test/2188.inp.926.1 > ./outputs/t5010

./replace_instrumented.exe '[^9-B]?[a-c-?a-][^a-]-?-[9-B][0-9][^a-c*[0-9][^0-9]@[[9-B][^a-c]$' ''  < $ROOT/inputs/temp-test/1223.inp.525.6 > ./outputs/t5011

./replace_instrumented.exe '[^9-B]?[a-c-?a-][^a-]-?-[9-B][0-9][^a-c*[0-9][^0-9]@[[9-B][^a-c]' ''  < $ROOT/inputs/temp-test/1221.inp.525.1 > ./outputs/t5012

./replace_instrumented.exe '[^9-B]?[a-c-?a-][^a-]-?-[9-B][0-9][^a-c*[0-9][^0-9]@[[9-B][^a-c]' ''  < $ROOT/inputs/temp-test/1222.inp.525.4 > ./outputs/t5013

./replace_instrumented.exe '[^9-B]@*' '@%&a'  < $ROOT/inputs/temp-test/2270.inp.962.1 > ./outputs/t5014

./replace_instrumented.exe '[^9-B]@*' '@%&a'  < $ROOT/inputs/temp-test/2271.inp.962.2 > ./outputs/t5015

./replace_instrumented.exe '[^9-B]@*' '@%&a'  < $ROOT/inputs/temp-test/2272.inp.962.3 > ./outputs/t5016

./replace_instrumented.exe '[^9-B]@**' ''  < $ROOT/inputs/temp-test/1285.inp.552.1 > ./outputs/t5017

./replace_instrumented.exe '[^9-B]@**' ''  < $ROOT/inputs/temp-test/1286.inp.552.2 > ./outputs/t5018

./replace_instrumented.exe '[^9-B]@**' '@%@&'  < $ROOT/inputs/temp-test/1916.inp.814.1 > ./outputs/t5019

./replace_instrumented.exe '[^9-B]@**-[^a-^*-^-]^*' 'a@nb@tc'  < $ROOT/inputs/temp-test/1281.inp.550.1 > ./outputs/t5020

./replace_instrumented.exe '[^9-B]@*^[^-z]-?[9-B]?-[0-9][^a-c[9-B]$' 'a@n'  < $ROOT/inputs/temp-test/452.inp.197.6 > ./outputs/t5021

./replace_instrumented.exe '[^9-B]@*^[^-z]-?[9-B]?-[0-9][^a-c[9-B]' 'a@n'  < $ROOT/inputs/temp-test/450.inp.197.1 > ./outputs/t5022

./replace_instrumented.exe '[^9-B]@*^[^-z]-?[9-B]?-[0-9][^a-c[9-B]' 'a@n'  < $ROOT/inputs/temp-test/451.inp.197.3 > ./outputs/t5023

./replace_instrumented.exe '[^9-B]@['   < $ROOT/inputs/temp-test/220.inp.98.2 > ./outputs/t5024

./replace_instrumented.exe '[^9-B]@['   < $ROOT/inputs/temp-test/221.inp.98.3 > ./outputs/t5025

./replace_instrumented.exe '[^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/219.inp.98.1 > ./outputs/t5026

./replace_instrumented.exe '[^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/220.inp.98.2 > ./outputs/t5027

./replace_instrumented.exe '[^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/221.inp.98.3 > ./outputs/t5028

./replace_instrumented.exe '[^9-B]@[*$' '&'  < $ROOT/inputs/temp-test/2030.inp.861.8 > ./outputs/t5029

./replace_instrumented.exe '[^9-B]@[*' '&'  < $ROOT/inputs/temp-test/2029.inp.861.1 > ./outputs/t5030

./replace_instrumented.exe '[^9-B]@[*?[^0-9]-??a-][^a-@t@@?' 'a@n'  < $ROOT/inputs/temp-test/1520.inp.651.1 > ./outputs/t5031

./replace_instrumented.exe '[^9-B]@[*?[^0-9]-??a-][^a-@t@@?' 'a@n'  < $ROOT/inputs/temp-test/1521.inp.651.2 > ./outputs/t5032

./replace_instrumented.exe '[^9-B]@t*[^9-B]-[a--b][-z]-$' ''  < $ROOT/inputs/temp-test/835.inp.359.6 > ./outputs/t5033

./replace_instrumented.exe '[^9-B]@t*[^9-B]-[a--b][-z]-' ''  < $ROOT/inputs/temp-test/833.inp.359.1 > ./outputs/t5034

./replace_instrumented.exe '[^9-B]@t*[^9-B]-[a--b][-z]-' ''  < $ROOT/inputs/temp-test/834.inp.359.3 > ./outputs/t5035

./replace_instrumented.exe '[^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z][^9-B]@t*[^9-B]-[a--b][-z]-' ''  < $ROOT/inputs/temp-test/833.inp.359.1 > ./outputs/t5036

./replace_instrumented.exe '[^9-B]A*' 'a&'  < $ROOT/inputs/temp-test/1130.inp.486.1 > ./outputs/t5037

./replace_instrumented.exe '[^9-B]A*' 'a&'  < $ROOT/inputs/temp-test/1131.inp.486.2 > ./outputs/t5038

./replace_instrumented.exe '[^9-B]A*' 'a&'  < $ROOT/inputs/temp-test/1132.inp.486.3 > ./outputs/t5039

./replace_instrumented.exe '[^9-B][-z]?[0-9][@t]?[0-9]?' 'a@n'  < $ROOT/inputs/temp-test/55.inp.24.1 > ./outputs/t5040

./replace_instrumented.exe '[^9-B][-z]?[0-9][@t]?[0-9]?' 'a@n'  < $ROOT/inputs/temp-test/56.inp.24.2 > ./outputs/t5041

./replace_instrumented.exe '[^9-B][-z]?[0-9][@t]?[0-9]?' 'a@n'  < $ROOT/inputs/temp-test/57.inp.24.4 > ./outputs/t5042

./replace_instrumented.exe '[^9-B][9-B]'  '&@n' < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5043

./replace_instrumented.exe '[^9-B][9-B]'   < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t5044

./replace_instrumented.exe '[^9-B][9-B]'   < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5045

./replace_instrumented.exe '[^9-B][9-B]'   < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t5046

./replace_instrumented.exe '[^9-B][9-B]' '&@n'  < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t5047

./replace_instrumented.exe '[^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t5048

./replace_instrumented.exe '[^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5049

./replace_instrumented.exe '[^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t5050

./replace_instrumented.exe '[^9-B][9-B]' 'a&'  < $ROOT/inputs/temp-test/2103.inp.891.1 > ./outputs/t5051

./replace_instrumented.exe '[^9-B][9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/856.inp.368.1 > ./outputs/t5052

./replace_instrumented.exe '[^9-B][9-B]' 'a@nb@tc'  < $ROOT/inputs/temp-test/857.inp.368.3 > ./outputs/t5053

./replace_instrumented.exe '[^9-B][9-B]*$'   < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t5054

./replace_instrumented.exe '[^9-B][9-B]*$'   < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5055

./replace_instrumented.exe '[^9-B][9-B]*$' '@%&a'  < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t5056

./replace_instrumented.exe '[^9-B][9-B]*$' '@%&a'  < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5057

./replace_instrumented.exe '[^9-B][9-B]*$' '@%&a'  < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t5058

./replace_instrumented.exe '[^9-B][9-B]*' '@%&a'  < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t5059

./replace_instrumented.exe '[^9-B][9-B]*' '@%&a'  < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5060

./replace_instrumented.exe '[^9-B][9-B]*' '@%&a'  < $ROOT/inputs/temp-test/205.inp.91.3 > ./outputs/t5061

./replace_instrumented.exe '[^9-B][9-B]-' 'b@t'  < $ROOT/inputs/temp-test/1041.inp.448.1 > ./outputs/t5062

./replace_instrumented.exe '[^9-B][9-B]-*?[^@@]-a-]-' '@%&a'  < $ROOT/inputs/temp-test/2140.inp.907.1 > ./outputs/t5063

./replace_instrumented.exe '[^9-B][9-B]-*?[^@@]-a-]-' '@%&a'  < $ROOT/inputs/temp-test/2141.inp.907.2 > ./outputs/t5064

./replace_instrumented.exe '[^9-B][9-B]-*?[^@@]-a-]-' '@%&a'  < $ROOT/inputs/temp-test/2142.inp.907.3 > ./outputs/t5065

./replace_instrumented.exe '[^9-B][9-B]-^-]^-][^a-]-' ''  < $ROOT/inputs/temp-test/1708.inp.728.1 > ./outputs/t5066

./replace_instrumented.exe '[^9-B][9-B]-^-]^-][^a-]-' ''  < $ROOT/inputs/temp-test/1709.inp.728.3 > ./outputs/t5067

./replace_instrumented.exe '[^9-B][]@[' 'a@n'  < $ROOT/inputs/temp-test/219.inp.98.1 > ./outputs/t5068

./replace_instrumented.exe '[^9-B][]@[' 'a@n'  < $ROOT/inputs/temp-test/221.inp.98.3 > ./outputs/t5069

./replace_instrumented.exe '[^9-B][][9-B]' '@%&a'  < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5070

./replace_instrumented.exe '[^9-B][^0-9]-?[^0-9]?--' 'a&'  < $ROOT/inputs/temp-test/1526.inp.654.1 > ./outputs/t5071

./replace_instrumented.exe '[^9-B][^0-9]-?[^0-9]?--' 'a&'  < $ROOT/inputs/temp-test/1527.inp.654.2 > ./outputs/t5072

./replace_instrumented.exe '[^9-B][^]@[' 'a@n'  < $ROOT/inputs/temp-test/219.inp.98.1 > ./outputs/t5073

./replace_instrumented.exe '[^9-B][^]@[' 'a@n'  < $ROOT/inputs/temp-test/221.inp.98.3 > ./outputs/t5074

./replace_instrumented.exe '[^9-B][^]@[**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t5075

./replace_instrumented.exe '[^9-B][^][9-B]' '@%&a'  < $ROOT/inputs/temp-test/204.inp.91.2 > ./outputs/t5076

./replace_instrumented.exe '[^9-B][a-c]' '&a@%'  < $ROOT/inputs/temp-test/1441.inp.618.1 > ./outputs/t5077

./replace_instrumented.exe '[^9-B][a-c]' '&a@%'  < $ROOT/inputs/temp-test/1442.inp.618.3 > ./outputs/t5078

./replace_instrumented.exe '[^9-B][a-c]' ''  < $ROOT/inputs/temp-test/1674.inp.714.1 > ./outputs/t5079

./replace_instrumented.exe '[^9-B][a-c]' ''  < $ROOT/inputs/temp-test/1675.inp.714.2 > ./outputs/t5080

./replace_instrumented.exe '[^9-B][a-c]' ''  < $ROOT/inputs/temp-test/1676.inp.714.3 > ./outputs/t5081

./replace_instrumented.exe '[^9-B][a-c]' ''  < $ROOT/inputs/temp-test/1677.inp.714.4 > ./outputs/t5082

./replace_instrumented.exe '[^9-B][a-c]' '@%&a'  < $ROOT/inputs/temp-test/1304.inp.561.1 > ./outputs/t5083

./replace_instrumented.exe '[^9-B][a-c]' '@%&a'  < $ROOT/inputs/temp-test/1305.inp.561.3 > ./outputs/t5084

./replace_instrumented.exe '[^9-B][a-c]' '@n'  < $ROOT/inputs/temp-test/1825.inp.777.1 > ./outputs/t5085

./replace_instrumented.exe '[^9-B][a-c]' '@n'  < $ROOT/inputs/temp-test/1826.inp.777.2 > ./outputs/t5086

./replace_instrumented.exe '[^9-B][a-c]' '@n'  < $ROOT/inputs/temp-test/1827.inp.777.3 > ./outputs/t5087

./replace_instrumented.exe '[^9-B][a-c]?[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1276.inp.548.1 > ./outputs/t5088

./replace_instrumented.exe '[^9-B][a-c]?[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1277.inp.548.3 > ./outputs/t5089

./replace_instrumented.exe '[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-' '@%&a'  < $ROOT/inputs/temp-test/1276.inp.548.1 > ./outputs/t5090

./replace_instrumented.exe '[^9-B][a-c][9-B]' '&@n'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t5091

./replace_instrumented.exe '[^9-B][a-c][9-B]'  < $ROOT/inputs/temp-test/529.inp.229.2 > ./outputs/t5092

./replace_instrumented.exe '[^9-B]^-?[a-c][^9-B]^a-c][-z]?a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1658.inp.707.1 > ./outputs/t5093

./replace_instrumented.exe '[^9-B]^-?[a-c][^9-B]^a-c][-z]?a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1659.inp.707.3 > ./outputs/t5094

./replace_instrumented.exe '[^9-B]^-?[a-c][^9-B]^a-c][-z]?a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/1660.inp.707.4 > ./outputs/t5095

./replace_instrumented.exe '[^9-B]a-c]' '@%&a'  < $ROOT/inputs/temp-test/1177.inp.507.1 > ./outputs/t5096

./replace_instrumented.exe '[^9-B]c' '@%&a'  < $ROOT/inputs/temp-test/2236.inp.948.1 > ./outputs/t5097

./replace_instrumented.exe '[^9-B]c' '@%&a'  < $ROOT/inputs/temp-test/2237.inp.948.2 > ./outputs/t5098

./replace_instrumented.exe '[^<]' 'v?,P"%A`LsBP\u4d; CqOH,&_r=)BCe9t#gvb<Wt>raU4E4x'  < $ROOT/inputs/input/ruin.1484 > ./outputs/t5099

./replace_instrumented.exe '[^>-A0-9]' '5%-v^<c1y2IcI}I/_G%E/:epn= `B:MO'  < $ROOT/inputs/input/ruin.304 > ./outputs/t5100

./replace_instrumented.exe '[^>-A>-AA-G0-90-9A-G]O\.K' '`'  < $ROOT/inputs/input/ruin.278 > ./outputs/t5101

./replace_instrumented.exe '[^>-AA-G]' '.'  < $ROOT/inputs/input/ruin.1307 > ./outputs/t5102

./replace_instrumented.exe '[^>-AA-Gc-a]' ';=bn:S4Ymbn'  < $ROOT/inputs/input/ruin.1234 > ./outputs/t5103

./replace_instrumented.exe '[^>-A]$' '~IL;#{y,f"Kv+2t6x'  < $ROOT/inputs/input/ruin.112 > ./outputs/t5104

./replace_instrumented.exe '[^>-A]' ''  < $ROOT/inputs/input/ruin.1644 > ./outputs/t5105

./replace_instrumented.exe '[^>-A]' '04++/5T7m;q&X>WdTwHm!3/9e)&'  < $ROOT/inputs/input/ruin.1608 > ./outputs/t5106

./replace_instrumented.exe '[^>-A]' '96Nl[*)'  < $ROOT/inputs/input/ruin.1489 > ./outputs/t5107

./replace_instrumented.exe '[^>-A]' '@'  < $ROOT/inputs/input/ruin.873 > ./outputs/t5108

./replace_instrumented.exe '[^>-A]' 'H'  < $ROOT/inputs/input/ruin.1206 > ./outputs/t5109

./replace_instrumented.exe '[^>-A]' 'J'  < $ROOT/inputs/input/ruin.1539 > ./outputs/t5110

./replace_instrumented.exe '[^>-A]' 'SyR'  < $ROOT/inputs/input/ruin.980 > ./outputs/t5111

./replace_instrumented.exe '[^>-A]' '}5$dExu:2n)dfDa6,}^W.u#[w1}E_A'  < $ROOT/inputs/input/ruin.1850 > ./outputs/t5112

./replace_instrumented.exe '[^>-A]?*' '04++/5T7m;q&X>WdTwHm!3/9e)&'  < $ROOT/inputs/input/ruin.1608 > ./outputs/t5113

./replace_instrumented.exe '[^>-AzZ-a]^_`a-z-}z-}]' 'Z}~ZyBzkd3:;$=h'  < $ROOT/inputs/input/ruin.216 > ./outputs/t5114

./replace_instrumented.exe '[^>]' 'C<t,7!I$c'  < $ROOT/inputs/input/ruin.69 > ./outputs/t5115

./replace_instrumented.exe '[^@@]%-' 'a&'  < $ROOT/inputs/temp-test/2350.inp.998.1 > ./outputs/t5116

./replace_instrumented.exe '[^@@]%-' 'a&'  < $ROOT/inputs/temp-test/2351.inp.998.2 > ./outputs/t5117

./replace_instrumented.exe '[^@@]-%' 'a&'  < $ROOT/inputs/temp-test/2352.inp.998.3 > ./outputs/t5118

./replace_instrumented.exe '[^@@]-' 'a&'  < $ROOT/inputs/temp-test/2350.inp.998.1 > ./outputs/t5119

./replace_instrumented.exe '[^@@]-' 'a&'  < $ROOT/inputs/temp-test/2351.inp.998.2 > ./outputs/t5120

./replace_instrumented.exe '[^@@]-' 'a&'  < $ROOT/inputs/temp-test/2352.inp.998.3 > ./outputs/t5121

./replace_instrumented.exe '[^@@][@@]@n[a-c' ''  < $ROOT/inputs/temp-test/587.inp.252.1 > ./outputs/t5122

./replace_instrumented.exe '[^@@][@@]@n[a-c' ''  < $ROOT/inputs/temp-test/588.inp.252.3 > ./outputs/t5123

./replace_instrumented.exe '[^@@][a-cc*-[-z]-?[^0-9][^@n][a-c@[-' '@%&a'  < $ROOT/inputs/temp-test/1739.inp.740.1 > ./outputs/t5124

./replace_instrumented.exe '[^@@][a-cc*-[-z]-?[^0-9][^@n][a-c@[-' '@%&a'  < $ROOT/inputs/temp-test/1740.inp.740.2 > ./outputs/t5125

./replace_instrumented.exe '[^@]' 'K'  < $ROOT/inputs/input/ruin.1974 > ./outputs/t5126

./replace_instrumented.exe '[^@]' 'Y'  < $ROOT/inputs/input/ruin.1729 > ./outputs/t5127

./replace_instrumented.exe '[^@n]' '&'  < $ROOT/inputs/temp-test/1098.inp.473.1 > ./outputs/t5128

./replace_instrumented.exe '[^@n]?' ''  < $ROOT/inputs/temp-test/1905.inp.808.1 > ./outputs/t5129

./replace_instrumented.exe '[^@n]?? *?^a-c][9-B]??-?-[^0-9]$' 'a@n'  < $ROOT/inputs/temp-test/2170.inp.917.6 > ./outputs/t5130

./replace_instrumented.exe '[^@n]?? *?^a-c][9-B]??-?-[^0-9]' 'a@n'  < $ROOT/inputs/temp-test/2168.inp.917.1 > ./outputs/t5131

./replace_instrumented.exe '[^@n]?? *?^a-c][9-B]??-?-[^0-9]' 'a@n'  < $ROOT/inputs/temp-test/2169.inp.917.4 > ./outputs/t5132

./replace_instrumented.exe '[^@n]@n?@[[^-z]a-]?a-][^a-c-[^a--]' '&'  < $ROOT/inputs/temp-test/79.inp.34.1 > ./outputs/t5133

./replace_instrumented.exe '[^@t] $' 'a&'  < $ROOT/inputs/temp-test/1185.inp.510.6 > ./outputs/t5134

./replace_instrumented.exe '[^@t] ' 'a&'  < $ROOT/inputs/temp-test/1183.inp.510.1 > ./outputs/t5135

./replace_instrumented.exe '[^@t] ' 'a&'  < $ROOT/inputs/temp-test/1184.inp.510.4 > ./outputs/t5136

./replace_instrumented.exe '[^A-G0-9Z-a]^_`a-A-GABCDEFG]' '7'  < $ROOT/inputs/input/ruin.1287 > ./outputs/t5137

./replace_instrumented.exe '[^A-G0-9]' ' t;btzU%_Q3*,&<&9'  < $ROOT/inputs/input/ruin.1825 > ./outputs/t5138

./replace_instrumented.exe '[^A-G0-9z-}]' '6qn`J_lW>TE~j|(+QIxZ[~_-#xQ'\''T'  < $ROOT/inputs/input/ruin.1702 > ./outputs/t5139

./replace_instrumented.exe '[^A-GA-GA-Gc-aZ-a]^_`a][^A-GA-GA-Gc-aZ-a]^_`a]' 'p'  < $ROOT/inputs/input/ruin.663 > ./outputs/t5140

./replace_instrumented.exe '[^A-GZ-a]^_`a]' ':'  < $ROOT/inputs/input/ruin.1089 > ./outputs/t5141

./replace_instrumented.exe '[^A-GZ-a]^_`a]' 'nb>?q$.;cKX_xZHjjQ<3,7j|'  < $ROOT/inputs/input/ruin.1853 > ./outputs/t5142

./replace_instrumented.exe '[^A-G]' '$'  < $ROOT/inputs/input/ruin.997 > ./outputs/t5143

./replace_instrumented.exe '[^A-G]' '3'  < $ROOT/inputs/input/ruin.1993 > ./outputs/t5144

./replace_instrumented.exe '[^A-G]' '8(taNmoh5G<.1@&eZ{_/NNPSZT<l`wW%-PGz=0TF'  < $ROOT/inputs/input/ruin.1212 > ./outputs/t5145

./replace_instrumented.exe '[^A-G]' '='  < $ROOT/inputs/input/ruin.615 > ./outputs/t5146

./replace_instrumented.exe '[^A-G]' '?NKkky:[kyHQAcp-0g*J6%]|{c'  < $ROOT/inputs/input/ruin.665 > ./outputs/t5147

./replace_instrumented.exe '[^A-G]' 'CzPGix*Bb(l^H^r63iE<=zqCo'  < $ROOT/inputs/input/ruin.1801 > ./outputs/t5148

./replace_instrumented.exe '[^A-G]' 'S q2fRrNoKYz'  < $ROOT/inputs/input/ruin.1292 > ./outputs/t5149

./replace_instrumented.exe '[^A-G]' '[`nuc|R-<Hwk'\''VjNT0GK}y42aaJD*q;p=y.B ,V^\'\''yUvqN0:tC+`GE| RPYRK#CQ-F.]@QEs@MP$+](mI7<'  < $ROOT/inputs/input/ruin.170 > ./outputs/t5150

./replace_instrumented.exe '[^A-G]' '`'  < $ROOT/inputs/input/ruin.18 > ./outputs/t5151

./replace_instrumented.exe '[^A-G]' '`T0QCI\YA:p1`8M(v)J.;m+=d_V]a@uddt@#`;*d7EupFJ%SV1"Wczcv&\ma2 .{N[G:X8[+*yj\!*B#%#6.&JU(l6^U1mTncrlWq'  < $ROOT/inputs/input/ruin.1893 > ./outputs/t5152

./replace_instrumented.exe '[^A-G]' 'dY?s%djpY}ZoPrp@$E8wLalV3!OK|6dCMk.xt}K"T&3#OEnKHvf}\<rwJ5@`G(.Afmx'  < $ROOT/inputs/input/ruin.791 > ./outputs/t5153

./replace_instrumented.exe '[^A-G]' 'e1 n@lk)dOmuvvM8V'  < $ROOT/inputs/input/ruin.551 > ./outputs/t5154

./replace_instrumented.exe '[^A-G]' 'jhIKJsma3Dy7'  < $ROOT/inputs/input/ruin.1534 > ./outputs/t5155

./replace_instrumented.exe '[^A-G]' 'k/bmA,d@Ho|K*j/g.0;>s!'  < $ROOT/inputs/input/ruin.1309 > ./outputs/t5156

./replace_instrumented.exe '[^A-G]??' 'i'  < $ROOT/inputs/input/ruin.1178 > ./outputs/t5157

./replace_instrumented.exe '[^A-Gc-aLA-G]' 'Z'  < $ROOT/inputs/input/ruin.538 > ./outputs/t5158

./replace_instrumented.exe '[^A-G~]' '{f'  < $ROOT/inputs/input/ruin.228 > ./outputs/t5159

./replace_instrumented.exe '[^BA-Gc-a]' '\'  < $ROOT/inputs/input/ruin.619 > ./outputs/t5160

./replace_instrumented.exe '[^C]' 'O'  < $ROOT/inputs/input/ruin.1023 > ./outputs/t5161

./replace_instrumented.exe '[^D]' '!Sc2Bq xEh9%Q/E?O'  < $ROOT/inputs/input/ruin.1964 > ./outputs/t5162

./replace_instrumented.exe '[^J]' 'L'  < $ROOT/inputs/input/ruin.1240 > ./outputs/t5163

./replace_instrumented.exe '[^J]' 'QM'  < $ROOT/inputs/input/ruin.81 > ./outputs/t5164

./replace_instrumented.exe '[^J]*$' 'L'  < $ROOT/inputs/input/ruin.1240 > ./outputs/t5165

./replace_instrumented.exe '[^L]' '&=3PUz)'  < $ROOT/inputs/input/ruin.21 > ./outputs/t5166

./replace_instrumented.exe '[^N.Z-a]^_`a]X' 'S@'  < $ROOT/inputs/input/ruin.1502 > ./outputs/t5167

./replace_instrumented.exe '[^U]' '"c9`I|c[Y#fc?)'  < $ROOT/inputs/input/ruin.182 > ./outputs/t5168

./replace_instrumented.exe '[^W]' '$3)'  < $ROOT/inputs/input/ruin.174 > ./outputs/t5169

./replace_instrumented.exe '[^X]' ')S!M:mm9v3&y.W'  < $ROOT/inputs/input/ruin.1001 > ./outputs/t5170

./replace_instrumented.exe '[^Z-a]' 'Xi]{E>{[.5?-L6'\''TGdSR-lMJd/,znD|npnWvV]}:P0~<Vr;0Re'  < $ROOT/inputs/input/ruin.760 > ./outputs/t5171

./replace_instrumented.exe '[^Z-a]^_`a-0-90123456789C-0-90123456789r-z-}z-}-Z-aZ[]^_`a]' '%'  < $ROOT/inputs/input/ruin.856 > ./outputs/t5172

./replace_instrumented.exe '[^Z-a]^_`a-Z-aZ[]^_`a]' '!5-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_-aA-GZ-a]^_s#S?%gG"i*'  < $ROOT/inputs/input/ruin.1051 > ./outputs/t5173

./replace_instrumented.exe '[^Z-a]^_`a-Z-aZ[]^_`a]' '!5s#S?%gG"i*'  < $ROOT/inputs/input/ruin.1051 > ./outputs/t5174

./replace_instrumented.exe '[^Z-a]^_`a-c-ac-a-A-GABCDEFG]' '/&dr!{2h/LY=2Sb#WM=uI'  < $ROOT/inputs/input/ruin.1522 > ./outputs/t5175

./replace_instrumented.exe '[^Z-a]^_`a-c-ac-a]' 'h'  < $ROOT/inputs/input/ruin.641 > ./outputs/t5176

./replace_instrumented.exe '[^Z-a]^_`a-z-}z-}-A-GABCDEFG-0-90123456789-z-}z-}-0-90123456789]' 'pF)HeS a`g9$#F>7z9x$'  < $ROOT/inputs/input/ruin.572 > ./outputs/t5177

./replace_instrumented.exe '[^Z-a]^_`aP-Z-aZ[]^_`a-0-90123456789]' '='  < $ROOT/inputs/input/ruin.461 > ./outputs/t5178

./replace_instrumented.exe '[^Z-a]^_`aV-0-90123456789]' '_'  < $ROOT/inputs/input/ruin.871 > ./outputs/t5179

./replace_instrumented.exe '[^Z-a]^_`a]' '#CQ3@U,)/aDf|9p jfjO3Y[H:AI[f|8Wz)'  < $ROOT/inputs/input/ruin.1475 > ./outputs/t5180

./replace_instrumented.exe '[^Z-a]^_`a]' ')'  < $ROOT/inputs/input/ruin.258 > ./outputs/t5181

./replace_instrumented.exe '[^Z-a]^_`a]' '.'  < $ROOT/inputs/input/ruin.421 > ./outputs/t5182

./replace_instrumented.exe '[^Z-a]^_`a]' '/'  < $ROOT/inputs/input/ruin.128 > ./outputs/t5183

./replace_instrumented.exe '[^Z-a]^_`a]' '<w2G+@s,+~@V#/k%Z6lmTA 6(wV6-6!+Mk$H=Q'  < $ROOT/inputs/input/ruin.1677 > ./outputs/t5184

./replace_instrumented.exe '[^Z-a]^_`a]' '>,gDlLZK3'  < $ROOT/inputs/input/ruin.1274 > ./outputs/t5185

./replace_instrumented.exe '[^Z-a]^_`a]' '?K&QWk{]S_'  < $ROOT/inputs/input/ruin.1618 > ./outputs/t5186

./replace_instrumented.exe '[^Z-a]^_`a]' 'FAl8eCyn8mwJA=!.|Xn"s*I\H1JJhky#,D4RAuz*[}'  < $ROOT/inputs/input/ruin.595 > ./outputs/t5187

./replace_instrumented.exe '[^Z-a]^_`a]' 'H'  < $ROOT/inputs/input/ruin.460 > ./outputs/t5188

./replace_instrumented.exe '[^Z-a]^_`a]' 'OV9D!H{O-Vw_tNc8I'  < $ROOT/inputs/input/ruin.1802 > ./outputs/t5189

./replace_instrumented.exe '[^Z-a]^_`a]' 'Q0}@_^cnC7s.L'  < $ROOT/inputs/input/ruin.522 > ./outputs/t5190

./replace_instrumented.exe '[^Z-a]^_`a]' 'QP2S'  < $ROOT/inputs/input/ruin.1410 > ./outputs/t5191

./replace_instrumented.exe '[^Z-a]^_`a]' 'Xi]{E>{[1d2qd.5?-L6'\''TGdSR-lMJd/,znD|npnWvV]}:P0~<Vr;0Re'  < $ROOT/inputs/input/ruin.760 > ./outputs/t5192

./replace_instrumented.exe '[^Z-a]^_`a]' 'n'  < $ROOT/inputs/input/ruin.454 > ./outputs/t5193

./replace_instrumented.exe '[^Z-a]^_`a]?*' '?K&QWk{]S_'  < $ROOT/inputs/input/ruin.1618 > ./outputs/t5194

./replace_instrumented.exe '[^Z-a]^_`a]@n' 'H&@t@t@t'  < $ROOT/inputs/input/ruin.460 > ./outputs/t5195

./replace_instrumented.exe '[^Z-a]^_`a]\p@fz[@@' 'K'  < $ROOT/inputs/input/ruin.146 > ./outputs/t5196

./replace_instrumented.exe '[^Z]@@' 'Q5"'  < $ROOT/inputs/input/ruin.1666 > ./outputs/t5197

./replace_instrumented.exe '[^]%?@*' 'NEW'  < $ROOT/inputs/temp-test/523.inp.226.5 > ./outputs/t5198

./replace_instrumented.exe '[^]%@*?' '@%&a'  < $ROOT/inputs/temp-test/199.inp.89.5 > ./outputs/t5199

./replace_instrumented.exe '[^]' '@n67@n67@n'  < $ROOT/inputs/moni/f8.inp > ./outputs/t5200

./replace_instrumented.exe '[^]- ' '&'  < $ROOT/inputs/temp-test/524.inp.227.1 > ./outputs/t5201

./replace_instrumented.exe '[^]-*[^0-9]' '&'  < $ROOT/inputs/temp-test/200.inp.90.1 > ./outputs/t5202

./replace_instrumented.exe '[^]?@*' 'NEW'  < $ROOT/inputs/temp-test/521.inp.226.1 > ./outputs/t5203

./replace_instrumented.exe '[^]?@*' 'NEW'  < $ROOT/inputs/temp-test/522.inp.226.3 > ./outputs/t5204

./replace_instrumented.exe '[^][^0-9]-?[9-B]?-[9-B]?' '@t'  < $ROOT/inputs/temp-test/526.inp.228.3 > ./outputs/t5205

./replace_instrumented.exe '[^][^9-B]@[' 'a@n'  < $ROOT/inputs/temp-test/220.inp.98.2 > ./outputs/t5206

./replace_instrumented.exe '[^][^9-B][9-B]' '@%&a'  < $ROOT/inputs/temp-test/203.inp.91.1 > ./outputs/t5207

./replace_instrumented.exe '[^][^a-c][9-B]' '@%&a'  < $ROOT/inputs/temp-test/223.inp.99.3 > ./outputs/t5208

./replace_instrumented.exe '[^][a-c?$' 'a&'  < $ROOT/inputs/temp-test/520.inp.225.8 > ./outputs/t5209

./replace_instrumented.exe '[^][a-c?' 'a&'  < $ROOT/inputs/temp-test/516.inp.225.1 > ./outputs/t5210

./replace_instrumented.exe '[^][a-c?' 'a&'  < $ROOT/inputs/temp-test/517.inp.225.2 > ./outputs/t5211

./replace_instrumented.exe '[^][a-c?' 'a&'  < $ROOT/inputs/temp-test/518.inp.225.3 > ./outputs/t5212

./replace_instrumented.exe '[^][a-c?' 'a&'  < $ROOT/inputs/temp-test/519.inp.225.4 > ./outputs/t5213

./replace_instrumented.exe '[^a-' '&'  < $ROOT/inputs/temp-test/2315.inp.982.1 > ./outputs/t5214

./replace_instrumented.exe '[^a-' '&a@%'  < $ROOT/inputs/temp-test/1363.inp.585.2 > ./outputs/t5215

./replace_instrumented.exe '[^a-' '&a@%'  < $ROOT/inputs/temp-test/1364.inp.585.3 > ./outputs/t5216

./replace_instrumented.exe '[^a--' '@%&a'  < $ROOT/inputs/temp-test/704.inp.305.1 > ./outputs/t5217

./replace_instrumented.exe '[^a--' '@%&a'  < $ROOT/inputs/temp-test/705.inp.305.2 > ./outputs/t5218

./replace_instrumented.exe '[^a--?[9-B]?[0-9]' 'a@n'  < $ROOT/inputs/temp-test/1361.inp.584.1 > ./outputs/t5219

./replace_instrumented.exe '[^a--?[9-B]?[0-9]' 'a@n'  < $ROOT/inputs/temp-test/1362.inp.584.2 > ./outputs/t5220

./replace_instrumented.exe '[^a--]' 'b@t'  < $ROOT/inputs/temp-test/1502.inp.644.1 > ./outputs/t5221

./replace_instrumented.exe '[^a--]' 'b@t'  < $ROOT/inputs/temp-test/1503.inp.644.3 > ./outputs/t5222

./replace_instrumented.exe '[^a--]' 'b@t'  < $ROOT/inputs/temp-test/1504.inp.644.4 > ./outputs/t5223

./replace_instrumented.exe '[^a--]??[0-9]' '@%@&'  < $ROOT/inputs/temp-test/1930.inp.820.1 > ./outputs/t5224

./replace_instrumented.exe '[^a--]??[0-9]' '@%@&'  < $ROOT/inputs/temp-test/1931.inp.820.4 > ./outputs/t5225

./replace_instrumented.exe '[^a--]@*$' 'a@nb@tc'  < $ROOT/inputs/temp-test/383.inp.166.8 > ./outputs/t5226

./replace_instrumented.exe '[^a--]@*' 'a@nb@tc'  < $ROOT/inputs/temp-test/381.inp.166.1 > ./outputs/t5227

./replace_instrumented.exe '[^a--]@*' 'a@nb@tc'  < $ROOT/inputs/temp-test/382.inp.166.3 > ./outputs/t5228

./replace_instrumented.exe '[^a--]a-c]--]?[^9-B][a--b]@[*-' '@%&a'  < $ROOT/inputs/temp-test/1795.inp.763.1 > ./outputs/t5229

./replace_instrumented.exe '[^a--b]' '&a@%'  < $ROOT/inputs/temp-test/1417.inp.608.1 > ./outputs/t5230

./replace_instrumented.exe '[^a--b]' 'a@nb@tc'  < $ROOT/inputs/temp-test/946.inp.407.1 > ./outputs/t5231

./replace_instrumented.exe '[^a--b]-[9-B]$' 'a&'  < $ROOT/inputs/temp-test/838.inp.360.9 > ./outputs/t5232

./replace_instrumented.exe '[^a--b]-[9-B]' 'a&'  < $ROOT/inputs/temp-test/836.inp.360.1 > ./outputs/t5233

./replace_instrumented.exe '[^a--b]-[9-B]' 'a&'  < $ROOT/inputs/temp-test/837.inp.360.2 > ./outputs/t5234

./replace_instrumented.exe '[^a--b]?[^9-B]? *[^0-9]-' 'NEW'  < $ROOT/inputs/temp-test/2117.inp.898.1 > ./outputs/t5235

./replace_instrumented.exe '[^a--b]?[^9-B]? *[^0-9]-' 'NEW'  < $ROOT/inputs/temp-test/2118.inp.898.2 > ./outputs/t5236

./replace_instrumented.exe '[^a--b]?[^9-B]? *[^0-9]-' 'NEW'  < $ROOT/inputs/temp-test/2119.inp.898.3 > ./outputs/t5237

./replace_instrumented.exe '[^a-?[a-]?-?-]' '&'  < $ROOT/inputs/temp-test/46.inp.20.1 > ./outputs/t5238

./replace_instrumented.exe '[^a-?[a-]?-?-]' '&'  < $ROOT/inputs/temp-test/47.inp.20.2 > ./outputs/t5239

./replace_instrumented.exe '[^a-?[a-]?-?-]' '&'  < $ROOT/inputs/temp-test/48.inp.20.3 > ./outputs/t5240

./replace_instrumented.exe '[^a-@[' 'a&'  < $ROOT/inputs/temp-test/190.inp.86.1 > ./outputs/t5241

./replace_instrumented.exe '[^a-[9-B]?' '&'  < $ROOT/inputs/temp-test/1469.inp.630.1 > ./outputs/t5242

./replace_instrumented.exe '[^a-[9-B]?' '&'  < $ROOT/inputs/temp-test/1470.inp.630.2 > ./outputs/t5243

./replace_instrumented.exe '[^a-]' 'a&'  < $ROOT/inputs/temp-test/595.inp.256.1 > ./outputs/t5244

./replace_instrumented.exe '[^a-]' 'a&'  < $ROOT/inputs/temp-test/596.inp.256.2 > ./outputs/t5245

./replace_instrumented.exe '[^a-]?' '&a@%'  < $ROOT/inputs/temp-test/1518.inp.650.1 > ./outputs/t5246

./replace_instrumented.exe '[^a-]?' '&a@%'  < $ROOT/inputs/temp-test/1519.inp.650.3 > ./outputs/t5247

./replace_instrumented.exe '[^a-]?' '@%&a'  < $ROOT/inputs/temp-test/2041.inp.866.1 > ./outputs/t5248

./replace_instrumented.exe '[^a-]?' '@%&a'  < $ROOT/inputs/temp-test/2042.inp.866.2 > ./outputs/t5249

./replace_instrumented.exe '[^a-]?' '@%&a'  < $ROOT/inputs/temp-test/2043.inp.866.3 > ./outputs/t5250

./replace_instrumented.exe '[^a-]?[0-9]-a-c]--*-@[' '&a@%'  < $ROOT/inputs/temp-test/544.inp.236.1 > ./outputs/t5251

./replace_instrumented.exe '[^a-]?[0-9]-a-c]--*-@[' '&a@%'  < $ROOT/inputs/temp-test/545.inp.236.2 > ./outputs/t5252

./replace_instrumented.exe '[^a-]?[0-9]-a-c]--*-@[' '&a@%'  < $ROOT/inputs/temp-test/546.inp.236.3 > ./outputs/t5253

./replace_instrumented.exe '[^a-][0-9]' 'a@n'  < $ROOT/inputs/temp-test/553.inp.239.1 > ./outputs/t5254

./replace_instrumented.exe '[^a-][0-9]' 'a@n'  < $ROOT/inputs/temp-test/554.inp.239.3 > ./outputs/t5255

./replace_instrumented.exe '[^a-][9-B]' '@t'  < $ROOT/inputs/temp-test/326.inp.145.1 > ./outputs/t5256

./replace_instrumented.exe '[^a-][9-B]' '@t'  < $ROOT/inputs/temp-test/327.inp.145.2 > ./outputs/t5257

./replace_instrumented.exe '[^a-][9-B]' '@t'  < $ROOT/inputs/temp-test/328.inp.145.3 > ./outputs/t5258

./replace_instrumented.exe '[^a-][a-c]' 'NEW'  < $ROOT/inputs/temp-test/1084.inp.467.1 > ./outputs/t5259

./replace_instrumented.exe '[^a-][a-c]' 'NEW'  < $ROOT/inputs/temp-test/1085.inp.467.3 > ./outputs/t5260

./replace_instrumented.exe '[^a-][a-c]' 'NEW'  < $ROOT/inputs/temp-test/1086.inp.467.4 > ./outputs/t5261

./replace_instrumented.exe '[^a-c' 'NEW'  < $ROOT/inputs/temp-test/1864.inp.791.1 > ./outputs/t5262

./replace_instrumented.exe '[^a-c--[^9-B][0-9]@[[^@@]-' '@%&a'  < $ROOT/inputs/temp-test/2120.inp.899.1 > ./outputs/t5263

./replace_instrumented.exe '[^a-c--[^9-B][0-9]@[[^@@]-' '@%&a'  < $ROOT/inputs/temp-test/2121.inp.899.3 > ./outputs/t5264

./replace_instrumented.exe '[^a-c?-$' '&a@%'  < $ROOT/inputs/temp-test/1002.inp.431.8 > ./outputs/t5265

./replace_instrumented.exe '[^a-c?-' '&a@%'  < $ROOT/inputs/temp-test/1000.inp.431.1 > ./outputs/t5266

./replace_instrumented.exe '[^a-c?-' '&a@%'  < $ROOT/inputs/temp-test/1001.inp.431.3 > ./outputs/t5267

./replace_instrumented.exe '[^a-c] ' '&'  < $ROOT/inputs/temp-test/404.inp.177.1 > ./outputs/t5268

./replace_instrumented.exe '[^a-c] ' '&'  < $ROOT/inputs/temp-test/405.inp.177.2 > ./outputs/t5269

./replace_instrumented.exe '[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/1778.inp.758.1 > ./outputs/t5270

./replace_instrumented.exe '[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/1779.inp.758.2 > ./outputs/t5271

./replace_instrumented.exe '[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/1780.inp.758.3 > ./outputs/t5272

./replace_instrumented.exe '[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/2279.inp.966.1 > ./outputs/t5273

./replace_instrumented.exe '[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/2280.inp.966.2 > ./outputs/t5274

./replace_instrumented.exe '[^a-c]' '@%@&'  < $ROOT/inputs/temp-test/2281.inp.966.4 > ./outputs/t5275

./replace_instrumented.exe '[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/1541.inp.660.1 > ./outputs/t5276

./replace_instrumented.exe '[^a-c]' 'NEW'  < $ROOT/inputs/temp-test/1542.inp.660.3 > ./outputs/t5277

./replace_instrumented.exe '[^a-c]**' 'a'  < $ROOT/inputs/moni/f7.inp > ./outputs/t5278

./replace_instrumented.exe '[^a-c]*-[0-9]?[@@]?[^9-B]A ?' ''  < $ROOT/inputs/temp-test/116.inp.53.1 > ./outputs/t5279

./replace_instrumented.exe '[^a-c]*?' 'a&'  < $ROOT/inputs/temp-test/126.inp.59.1 > ./outputs/t5280

./replace_instrumented.exe '[^a-c]*?' 'a&'  < $ROOT/inputs/temp-test/127.inp.59.2 > ./outputs/t5281

./replace_instrumented.exe '[^a-c]*?--*?* *[a--b][^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/6.inp.3.1 > ./outputs/t5282

./replace_instrumented.exe '[^a-c]*?--*?* *[a--b][^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/7.inp.3.3 > ./outputs/t5283

./replace_instrumented.exe '[^a-c]*?--*?* *[a--b][^a-c]' 'a@nb@tc'  < $ROOT/inputs/temp-test/8.inp.3.4 > ./outputs/t5284

./replace_instrumented.exe '[^a-c]-' '&'  < $ROOT/inputs/temp-test/1571.inp.671.1 > ./outputs/t5285

./replace_instrumented.exe '[^a-c]-' '&'  < $ROOT/inputs/temp-test/1572.inp.671.4 > ./outputs/t5286

./replace_instrumented.exe '[^a-c]-' '&a@%'  < $ROOT/inputs/temp-test/2014.inp.855.1 > ./outputs/t5287

./replace_instrumented.exe '[^a-c]-' '&a@%'  < $ROOT/inputs/temp-test/2015.inp.855.3 > ./outputs/t5288

./replace_instrumented.exe '[^a-c]-' '&a@%'  < $ROOT/inputs/temp-test/2016.inp.855.4 > ./outputs/t5289

./replace_instrumented.exe '[^a-c]-' '@%@&'  < $ROOT/inputs/temp-test/601.inp.259.1 > ./outputs/t5290

./replace_instrumented.exe '[^a-c]-' '@%@&'  < $ROOT/inputs/temp-test/602.inp.259.3 > ./outputs/t5291

./replace_instrumented.exe '[^a-c]-' 'a&'  < $ROOT/inputs/temp-test/1810.inp.769.1 > ./outputs/t5292

./replace_instrumented.exe '[^a-c]-' 'a&'  < $ROOT/inputs/temp-test/1811.inp.769.3 > ./outputs/t5293

./replace_instrumented.exe '[^a-c]-?[_-z][^--' '@%&a'  < $ROOT/inputs/temp-test/261.inp.116.1 > ./outputs/t5294

./replace_instrumented.exe '[^a-c]-?[_-z][^--' '@%&a'  < $ROOT/inputs/temp-test/262.inp.116.2 > ./outputs/t5295

./replace_instrumented.exe '[^a-c]-?[_-z][^--' '@%&a'  < $ROOT/inputs/temp-test/263.inp.116.3 > ./outputs/t5296

./replace_instrumented.exe '[^a-c]-]' '&a@%'  < $ROOT/inputs/temp-test/2053.inp.871.1 > ./outputs/t5297

./replace_instrumented.exe '[^a-c]-]' '&a@%'  < $ROOT/inputs/temp-test/2054.inp.871.2 > ./outputs/t5298

./replace_instrumented.exe '[^a-c]-]' '&a@%'  < $ROOT/inputs/temp-test/2055.inp.871.4 > ./outputs/t5299

./replace_instrumented.exe 'abc'   < $ROOT/inputs/moni/t4.inp > ./outputs/t5300

./replace_instrumented.exe 'abc'   < $ROOT/inputs/moni/t5.inp > ./outputs/t5301

./replace_instrumented.exe '@abc'   < $ROOT/inputs/moni/t5.inp > ./outputs/t5302

./replace_instrumented.exe 'tt'   < $ROOT/inputs/moni/t1.inp > ./outputs/t5303

./replace_instrumented.exe 'abc'   < $ROOT/inputs/moni/t2.inp > ./outputs/t5304

./replace_instrumented.exe '77'   < $ROOT/inputs/moni/t3.inp > ./outputs/t5305

./replace_instrumented.exe '@77'   < $ROOT/inputs/moni/t3.inp > ./outputs/t5306

./replace_instrumented.exe 'IlG'  < $ROOT/inputs/moni/t6.inp > ./outputs/t5307

./replace_instrumented.exe '@IlG'  < $ROOT/inputs/moni/t6.inp > ./outputs/t5308

./replace_instrumented.exe '%abc'   < $ROOT/inputs/moni/t5.inp > ./outputs/t5309

./replace_instrumented.exe '%IlG'  < $ROOT/inputs/moni/t6.inp > ./outputs/t5310

./replace_instrumented.exe '%77'   < $ROOT/inputs/moni/t3.inp > ./outputs/t5311

./replace_instrumented.exe 'IlG\a88888888888888888$'  < $ROOT/inputs/moni/t6.inp > ./outputs/t5312

./replace_instrumented.exe 'Da*'  < $ROOT/inputs/moni/t7.inp > ./outputs/t5313

./replace_instrumented.exe '%77*'   < $ROOT/inputs/moni/t3.inp > ./outputs/t5314

./replace_instrumented.exe '[0-7][0-7]'  < $ROOT/inputs/moni/t3.inp > ./outputs/t5315

./replace_instrumented.exe '[0-7]*'  < $ROOT/inputs/moni/t3.inp > ./outputs/t5316

./replace_instrumented.exe 'abc*'  < $ROOT/inputs/moni/t2.inp > ./outputs/t5317

./replace_instrumented.exe '77?'  < $ROOT/inputs/moni/t3.inp > ./outputs/t5318

./replace_instrumented.exe '7?7'  < $ROOT/inputs/moni/t3.inp > ./outputs/t5319

./replace_instrumented.exe '[a-z]*'  < $ROOT/inputs/moni/t2.inp > ./outputs/t5320

./replace_instrumented.exe '77[6-9]'   < $ROOT/inputs/moni/t3.inp > ./outputs/t5321

./replace_instrumented.exe '[am]*$' 'foo'  < $ROOT/inputs/moni/nn1.t > ./outputs/t5322

./replace_instrumented.exe '[a-Z(1-9]*$' 'foo'  < $ROOT/inputs/moni/nn1.t > ./outputs/t5323

./replace_instrumented.exe '[a-Z(1-9]*$' 'foo'  < $ROOT/inputs/input/ruin.624 > ./outputs/t5324

./replace_instrumented.exe '[Cm]*$' 'a@f'  < $ROOT/inputs/input/ruin.304 > ./outputs/t5325

./replace_instrumented.exe '[Cm]*$' 'a&'  < $ROOT/inputs/input/ruin.304 > ./outputs/t5326

./replace_instrumented.exe '[Cm]*$'   < $ROOT/inputs/input/ruin.304 > ./outputs/t5327

./replace_instrumented.exe '[Da]*$' 'a&'  < $ROOT/inputs/input/ruin.717 > ./outputs/t5328

./replace_instrumented.exe '$' '@t'  < $ROOT/inputs/input/ruin.1121 > ./outputs/t5329

./replace_instrumented.exe '$' '%&'  < $ROOT/inputs/input/ruin.1122 > ./outputs/t5330

./replace_instrumented.exe '[>dE]*$' '@n'  < $ROOT/inputs/input/ruin.1782 > ./outputs/t5331

./replace_instrumented.exe '[1-8;a-Z]*$' '@@n'  < $ROOT/inputs/input/ruin.714 > ./outputs/t5332

./replace_instrumented.exe '@@*$' '&E9p\6X[t<jnR3{*3PQSno!);(&'  < $ROOT/inputs/input/ruin.1256 > ./outputs/t5333

./replace_instrumented.exe '@@*$' '@tW'  < $ROOT/inputs/input/ruin.1247 > ./outputs/t5334

./replace_instrumented.exe '@t*$' '&a&'  < $ROOT/inputs/input/ruin.1244 > ./outputs/t5335

./replace_instrumented.exe 'd*$' '@t'  < $ROOT/inputs/moni/nn2.t > ./outputs/t5336

./replace_instrumented.exe 'W' 'cCeuNv}}<pw83QZL=`?=f9b?1A'  < $ROOT/inputs/input/ruin.24 > ./outputs/t5337

./replace_instrumented.exe '-[9-B][9-B] *-^*^a-][@n]' '@t&@n'  < $ROOT/inputs/temp-test/1044.inp.450.2 > ./outputs/t5338

./replace_instrumented.exe 'W' 'cCeuNv}}<pw83QZLabcefghijz[`?=f9b?1A'  < $ROOT/inputs/input/ruin.24 > ./outputs/t5339

./replace_instrumented.exe '@@' 'abcdefghigjklmnhijklmopqrstuvwxyz012345678901234567890123456'  < $ROOT/inputs/input/ruin.98 > ./outputs/t5340

./replace_instrumented.exe '-?-@**[^0-9]-@@*[^9-B]?@n*$' 'abcdefg@&'  < $ROOT/inputs/temp-test/2078.inp.880.6 > ./outputs/t5341

./replace_instrumented.exe '@@' 'anystringthatisquitelongwillworkithinkforgettingthisduexercisedforthiserr'  < $ROOT/inputs/input/ruin.150 > ./outputs/t5342

./replace_instrumented.exe '@@*'\'*$',^P&Sh6@@' '@titsthe & in this string that matters'  < $ROOT/inputs/input/ruin.1119 > ./outputs/t5343

./replace_instrumented.exe '9@@*[^Z-a]^_a]' 'thisoneIdontunderstandunlessthestringisalreadylong'  < $ROOT/inputs/input/ruin.28 > ./outputs/t5344

./replace_instrumented.exe '7979797979@n' 'a&&a'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5345

./replace_instrumented.exe '[79]*@n' 'a&&a'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5346

./replace_instrumented.exe '[79]*@n' 'a@4&@t&a'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5347

./replace_instrumented.exe '[1-9]*@n' 'a@4&@t&a'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5348

./replace_instrumented.exe '?[1-9]*@n' 'a@4&@t&a'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5349

./replace_instrumented.exe '?[!]*@n' 'a&[0-9]'  < $ROOT/inputs/moni/rr3.t > ./outputs/t5350

./replace_instrumented.exe '!!!!!!777!!@n' 'a&[0-9]'  < $ROOT/inputs/moni/rr3.t > ./outputs/t5351

./replace_instrumented.exe '!!!*777!!@n' 'a&[0-9]'  < $ROOT/inputs/moni/rr3.t > ./outputs/t5352

./replace_instrumented.exe '[7]*!!@n' 'a&[0-9]'  < $ROOT/inputs/moni/rr3.t > ./outputs/t5353

./replace_instrumented.exe '[1]*@n' '11&@t@t@@'  < $ROOT/inputs/moni/rr4.t > ./outputs/t5354

./replace_instrumented.exe '%11111@nl[^6]inbetweend@t@n%%88*erwhatjustgettingvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5355

./replace_instrumented.exe '%11111@nl[^6]inbetweend@t@n%%88*erwhatjust@t@t@tgvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5356

./replace_instrumented.exe '&11111@nl[^1-6]betweend@t@n%%88*erwhatjust@t@t@tgvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5357

./replace_instrumented.exe '@1@n11@nl[^1-6]betweend@t@n%%88*erwhatjust@t@t@tgvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5358

./replace_instrumented.exe '@1@t11%%l[1-60]betweend@t@n%%88*erwhatjust999999gvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5359

./replace_instrumented.exe  '#@@[^0-9]@**^[^@@]-[0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5360

./replace_instrumented.exe  '%@@@^0-9]@**^[^@@]-[0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5361

./replace_instrumented.exe  '%@@@^0-9]@**^[^@@]-[0-9][@t][^0-9]@**^*8*8*[9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5362

./replace_instrumented.exe  '%@**^0-9]@**^[^@@]-[0-9][@t][^0-9]@**^*8*8*[9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5363

./replace_instrumented.exe  '@n33[^9-0]omea%harlongstringdoesntmatt@twhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' 'substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5364

./replace_instrumented.exe  '%n33123456&&&a%harlongstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' 'substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5365

./replace_instrumented.exe  '%n331*3456&&&a%@**rlongstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' 'substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5366

./replace_instrumented.exe  '%n331*3456&&&a%@**rlongstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcha[]acterswilldojusttypingins[0-9]ars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' '[0-9]substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5367

./replace_instrumented.exe  '%n331*3456&&&a%@**rlongstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredonesntmatteraslonga[![estringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcha[]acterswilldojusttypingins[0-9]ars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' '[0-9]substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5368

./replace_instrumented.exe  '%n331*3456&&&a%@**rlongstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredonesntmatteraslonga[![estringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcha[]acter]]illdojusttypingins[0-9]ars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' '[0-9]substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5369

./replace_instrumented.exe  '@n331*34[&*]&a%@**rlongstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredon@@@ntteraslonga[![estringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcha[]acter]]illdojusttypingins[0-9]ars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' '[0-9]substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5370

./replace_instrumented.exe  '@n3@t@t@t&*]&a%@**rlongstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredon@@@ntteraslonga[![estringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcha[]acter]]illdojusttypingins[0-9]ars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' '[0-9]substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5371

./replace_instrumented.exe '%)0J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF})0J&Y6XsPqpxC53aKh3HTW9ITsk@m9[]Oys4{Ym@&Eg*[G|ntmx;o|2xwF})0J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF[Z-a]^_[Z-a]^_*[Z-a]^_*' 'a'   < $ROOT/inputs/input/ruin.1616 > ./outputs/t5372

./replace_instrumented.exe '@n@nEq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QS[8-9]V0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$Q*0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<A[^a-c][0-9]@[*' '&a@%'  < $ROOT/inputs/temp-test/589.inp.253.1 > ./outputs/t5373

./replace_instrumented.exe '123??!*' '&&&&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5374

./replace_instrumented.exe '[d]*' '&@@&@@&@@@@'  < $ROOT/inputs/moni/rr7.t > ./outputs/t5375

./replace_instrumented.exe '8?8?8?88??88??8888888888' '&@t&@t&'   < $ROOT/inputs/moni/rr6.t > ./outputs/t5376

./replace_instrumented.exe 'th?si?aca?etha[t]isalongline' '&aa&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5377

./replace_instrumented.exe 'th?si?aca?etha[t]isalong[li]*ne' '&aa&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5378

./replace_instrumented.exe '[0-9]*ddd' '&[0-9]&[^0-9]&'  < $ROOT/inputs/moni/rr7.t > ./outputs/t5379

./replace_instrumented.exe '12?!*' '&&&&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5380

./replace_instrumented.exe '%thisisacase' '&a@@[0-9]a&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5381

./replace_instrumented.exe '%[a-b]*$' '&@t&@t&'   < $ROOT/inputs/moni/rr5.t > ./outputs/t5382

./replace_instrumented.exe '[0-3]!*$' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5383

./replace_instrumented.exe '%@@ [^0-*]@**^[^@@]-[0-9][@t][^0-9]@*f^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5384

./replace_instrumented.exe 'for $his du the key $hing is to hav* a ccl at exactly the right length more [@@]' 'sub doesnt matter'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5385

./replace_instrumented.exe '[^0[^0-9]abc^[^@@]-[0-9][^0-9]1234[^0-9]@**^[^@@][9-B -[0-9]!!0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5386

./replace_instrumented.exe '[0-^9]@nl[^ ]inbeweendoesntmatterwhatjustgettingvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5387

./replace_instrumented.exe 'NEW*EW-[0-9][^0-9][@t][^0-9]@**^[^@@][erg-[0-9][^0-9][@t][3459]@**^[^@@][9-B]-[0-9][^0-9][@t][^0abc-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5388

./replace_instrumented.exe '@11111@nl[^6]i@retweend@t@t%%88*erwha[0-st@t@t@tgvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5389

./replace_instrumented.exe 'theccl *ust contain an @ and {}[]nt know wa*at else [a-z]* stuff is OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5390

./replace_instrumented.exe '[0-&]aal[^!]inbetweendoesntmatterwhatjustgettingvariety%finthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5391

./replace_instrumented.exe '[50123495123412345512345123]123!56@a35123451234551234512345612341234564444[^@@]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5392

./replace_instrumented.exe '%)0J&Y6XsP[0-9]3aKh3HTW9ITsk@m9* * s4{Ym@&Eg1[G|ntmx;o|2xwF})0J&Y6XsPqpxC53aKh3HTW9ITsk@m9[]Oys4{Ym@&Eg*[G|ntmx;o|2xwF})0J&Y6XsPqpxC53aKh3HTW9ITsk@m9aFOys4{Ym@&Eg1[G|ntmx;o|2xwF[Z-a]^_[Z-a]^_*[Z-a]^_*' 'a'   < $ROOT/inputs/input/ruin.1616 > ./outputs/t5393

./replace_instrumented.exe '@n%%Eq/SH{S$QV0"e<bz-[(*Z9QSH{@tQV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QS[8-9]V0"$<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$Q*0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<p-f]Eq/SH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<bz-[(*Z9QSH{S$QV0"e<A[^a-c][0-9]@[*' '&a@%'  < $ROOT/inputs/temp-test/589.inp.253.1 > ./outputs/t5394

./replace_instrumented.exe '%%331*34[&*]&a%@**^longstringdoesntmatt@t*t*t*tisbutmustbeverylongwhateverthecharactersaredon@@@ntteraslonga[![^stringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcha[]acter]]illdojusttypingins[0-9]ars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' '[0-9]substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5395

./replace_instrumented.exe '45' '&abdfegh123456789123412345678912345678956789123456789123456789123312345678945678912345678912345678912345679123456789'  < $ROOT/inputs/moni/f1.inp > ./outputs/t5396

./replace_instrumented.exe '4' '&abdfegh1234567891234123451234567890872348793847239847234234234324367891234312345678945678912345678912345678912345679123456789'  < $ROOT/inputs/moni/f1.inp > ./outputs/t5397

./replace_instrumented.exe '66' '&abdfegh1234567891234&1234512345678908723487938&4723984723423423432436&312345678945678912345678912345678912345679123456789'  < $ROOT/inputs/moni/f5.inp > ./outputs/t5398

./replace_instrumented.exe 'thisisacasethatisalongline' '&aa&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5399

./replace_instrumented.exe 'thisisacasethatisa' '&aa&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5400

./replace_instrumented.exe 'this[a-z]*' '&a&a&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5401

./replace_instrumented.exe 'this[a-z]*$' '&a&a&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5402

./replace_instrumented.exe '%thi[a-z]*' '&@t&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5403

./replace_instrumented.exe '123[7-9]*' '&@t&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5404

./replace_instrumented.exe '%123[7-9]*' '&@t&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5405

./replace_instrumented.exe '%123[7-9]*$' '&@t&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5406

./replace_instrumented.exe '%123[7-9]*$' '&@t@t&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5407

./replace_instrumented.exe '123[7-9]*' '&@&&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5408

./replace_instrumented.exe '123?[7-9]*' '&@&&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5409

./replace_instrumented.exe '123[^1-6]*' '&@&&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5410

./replace_instrumented.exe '%123[^1-6]*' '&@&&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5411

./replace_instrumented.exe '123[^1-6]*$' '&@&&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5412

./replace_instrumented.exe '123[^1-6]*$' '&[0-9]&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5413

./replace_instrumented.exe '123[1-9]*$' '&&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5414

./replace_instrumented.exe '123[1-9]*$' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5415

./replace_instrumented.exe '123[1-9abcdefgh]*$' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5416

./replace_instrumented.exe '%123[1-9abcdefgh]*' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5417

./replace_instrumented.exe '%123[1-9@t]*' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5418

./replace_instrumented.exe '%123[1-9@f]*' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5419

./replace_instrumented.exe '123[@1-9]*' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr2.t > ./outputs/t5420

./replace_instrumented.exe '[0-3]!*' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5421

./replace_instrumented.exe '123!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5422

./replace_instrumented.exe '123!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5423

./replace_instrumented.exe '[0-9!]*' '&[lkjasdlkjdf]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5424

./replace_instrumented.exe '%[0-9!]*' '&@t@t#45678[0-9]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5425

./replace_instrumented.exe '123[!]*' '&@t@t#45678[0-9]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5426

./replace_instrumented.exe '123[!!!!!!!!!!!!!]*7' '&@t@t#45678[0-9]&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5427

./replace_instrumented.exe 'more[0-9a-z]*' '&@t@t#45678[0-9]&'   < $ROOT/inputs/moni/rr4.t > ./outputs/t5428

./replace_instrumented.exe 'morestuffinalongline111111111111111111111111111' '&aaaaa&'   < $ROOT/inputs/moni/rr4.t > ./outputs/t5429

./replace_instrumented.exe 'this**' 'sub'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5430

./replace_instrumented.exe '123[7-9]**' '&a&'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5431

./replace_instrumented.exe '[!]**' '&@t[6-0]&'  < $ROOT/inputs/moni/rr3.t > ./outputs/t5432

./replace_instrumented.exe '[1]**' '&alachamazoo@t@t@&&'  < $ROOT/inputs/moni/rr4.t > ./outputs/t5433

./replace_instrumented.exe '?[1]**' '&alachamazoo@t@t@&&'  < $ROOT/inputs/moni/rr4.t > ./outputs/t5434

./replace_instrumented.exe '%[a-z]*[1]**' '&alachamazoo@t@t@&&'  < $ROOT/inputs/moni/rr4.t > ./outputs/t5435

./replace_instrumented.exe '[a-z]*'   < $ROOT/inputs/moni/t5.inp > ./outputs/t5436

./replace_instrumented.exe 'this'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5437

./replace_instrumented.exe 'nomatch@n' 'a&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5438

./replace_instrumented.exe 'thisisacasethatisalongline@n' '&a&'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5439

./replace_instrumented.exe ']@n' '=@t&lk'  < $ROOT/inputs/input/ruin.277 > ./outputs/t5440

./replace_instrumented.exe '@t@n' '/&q@t@t'  < $ROOT/inputs/input/ruin.539 > ./outputs/t5441

./replace_instrumented.exe '@**^[^@@][9-B]-[0-9][^0-9][@t][^0[^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5442

./replace_instrumented.exe '[^0[^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5443

./replace_instrumented.exe '[^0[^0-9]@**^[^@@]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5444

./replace_instrumented.exe '[^0[^0-9]@**^[^@@]-[0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]' '@%@&'  < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5445

./replace_instrumented.exe '[^0[^0-9]@**^[^@@]-[0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@][9-B]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5446

./replace_instrumented.exe '[^0[^0-9]@**^[^@@]-[0-9][@t][^0-9]@**^[^@@][9-B]-[0-9][^0-9][@t][^0-9]@**^[^@@]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5447

./replace_instrumented.exe '[^0123495@**^[^@@]-12345[@t]123456@**^[^@@]12345-12345123456[@t][^0-9]@**^[^@@]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5448

./replace_instrumented.exe '[^0123495123412345-123451234123456@**51234512345-123451234561234123456@**^[^@@]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5449

./replace_instrumented.exe '[5012349512341234551234512341234561235123451234551234512345612341234564444[^@@]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5450

./replace_instrumented.exe '[501234951234123455123451234123456123512345123455123451234561234123456444412[@@]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5451

./replace_instrumented.exe '4501234951234123455123451234123456123512345123455123451234561234123456444412[@@]'   < $ROOT/inputs/temp-test/1397.inp.600.1 > ./outputs/t5452

./replace_instrumented.exe 'for this du the key thing is to have a ccl at exactly the right length more [@@]' 'sub doesnt matter'  < $ROOT/inputs/moni/rr1.t > ./outputs/t5453

./replace_instrumented.exe 'theccl must contain an @ and I dont know wahat else [a-z]* stuff is OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5454

./replace_instrumented.exe '@t@nlongtextinbetweendoesntmatterwhatjustgettingvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5455

./replace_instrumented.exe '[0-9]@nl[^6]inbetweendoesntmatterwhatjustgettingvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5456

./replace_instrumented.exe '[0-9]@nl[^6]inbetweend@t@n%%$$*erwhatjustgettingvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5457

./replace_instrumented.exe '[0-9]@nl[^6]inbetweend@t@n%%88*erwhatjustgettingvariety%$inthestr&& OK here[@@]'  < $ROOT/inputs/moni/rr2.t > ./outputs/t5458

./replace_instrumented.exe '?p&y=3[Z][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c ][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?[^0-9]-' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5459

./replace_instrumented.exe '?p&y=3[Z][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c ][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5460

./replace_instrumented.exe '?p&y=3[Z]12345?123456-[^9-B]12345?[^0-9]-1234561234512345?123456-12345612345?123456-1234561234512345?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c ][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5461

./replace_instrumented.exe '?p&y=3[Z]12345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?[^0-9]-[^9-B][a][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c ][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5462

./replace_instrumented.exe '?p&y=3[Z]12345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-12345612312345?123456-123456[a-c]?[^0-9]-[^9-B][a-c ][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5463

./replace_instrumented.exe '?p&y=3[Z]12345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-12345612312345?123456-12345612345?123456-12345612345612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-123456[a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5464

./replace_instrumented.exe '?p&y=3[Z]12345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-12345612312345?123456-12345612345?123456-12345612345612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c][a-c]?' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5465

./replace_instrumented.exe '?p&y=3[Z]12345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-12345612312345?123456-12345612345?123456-12345612345612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c]' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5466

./replace_instrumented.exe 'someacharlongstringdoesntmatterwhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-12345612312345?123456-12345612345?123456-12345612345612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-[^9-B][a-c][a-c]?[^0-9]-[^9-B][a-c]?[^0-9]-[^9-B][a-c-c]' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5467

./replace_instrumented.exe 'someacharlongstringdoesntmatterwhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?123456-1234561234512345?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-12345612312345?123456-12345612345?123456-12345612345612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?[^0-9]-[^9-B][a-c-c]' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5468

./replace_instrumented.exe 'someacharlongstringdoesntmatterwhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?123456hereanycharcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-12345612312345?123456-12345612345?123456-12345612345612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-c]' '~'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5469

./replace_instrumented.exe 'someacharlongstringdoesntmatterwhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?123456hereanycharcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-12345612312345?123456-12345612345?123456-12345612345612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' 'substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5470

./replace_instrumented.exe '%omeacharlongstringdoesntmatt@twhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?123456hereanych$rcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-inputfiledoesntmattereitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' 'substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5471

./replace_instrumented.exe '@t@@[^9-0]omeacharlongstringdoesntmatt@twhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-inputfiledoesntmattereitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' 'substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5472

./replace_instrumented.exe '@t@@[^9-0]omeacharlongstringdoesntmatt@twhatitisbutmustbeverylongwhateverthecharactersaredonesntmatteraslongasthestringistherightlengthandendswiththerightcharacterlkj45?1234ch$rcharcacterswilldojusttypinginsomechars@nandsomeflags@n@t-12345612345?123456-@3@##filedoesntmatt&&eitherasitsneverprocessed&&@@45612345?123456-123456123455?123456-1234561234512345?123456-12345612345?123456-1234561234567890?123456-12345612345?123456-1234561234512345?123456-12345612345?123456-123456[a-c-9]' 'substringdoesntmatter'  < $ROOT/inputs/input/ruin.1338 > ./outputs/t5473

./replace_instrumented.exe '123!*' '&&&&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5474

./replace_instrumented.exe '?!*' '&&&&'   < $ROOT/inputs/moni/rr3.t > ./outputs/t5475

./replace_instrumented.exe 'a*$' '&&&&'   < $ROOT/inputs/moni/rr5.t > ./outputs/t5476

./replace_instrumented.exe '%[a-b]*' '&&&&'   < $ROOT/inputs/moni/rr5.t > ./outputs/t5477

./replace_instrumented.exe '[a-b]*' '&@t&@t&'   < $ROOT/inputs/moni/rr5.t > ./outputs/t5478

./replace_instrumented.exe '[^b-z]*' '&@t&@t&'   < $ROOT/inputs/moni/rr5.t > ./outputs/t5479

./replace_instrumented.exe 'aa' '&@t&@t&'   < $ROOT/inputs/moni/rr5.t > ./outputs/t5480

./replace_instrumented.exe '88888888888888888888888888' '&@t&@t&'   < $ROOT/inputs/moni/rr6.t > ./outputs/t5481

./replace_instrumented.exe '8888888888888?8888888888888' '&@t&@t&'   < $ROOT/inputs/moni/rr6.t > ./outputs/t5482

./replace_instrumented.exe '8888888888888?8888888888888$' '&@t&@t&'   < $ROOT/inputs/moni/rr6.t > ./outputs/t5483

./replace_instrumented.exe '[0-9]*' '&@t&@t&'   < $ROOT/inputs/moni/rr6.t > ./outputs/t5484

./replace_instrumented.exe '[6-8@3]*' '&&@t&'   < $ROOT/inputs/moni/rr6.t > ./outputs/t5485

./replace_instrumented.exe '[8-8]*' '&foo&foo&'   < $ROOT/inputs/moni/rr6.t > ./outputs/t5486

./replace_instrumented.exe '[+#()1-9]*' '&77&@t&'  < $ROOT/inputs/moni/rr6.t > ./outputs/t5487

./replace_instrumented.exe 'ddd' '&@t&@t&'  < $ROOT/inputs/moni/rr7.t > ./outputs/t5488

./replace_instrumented.exe '[d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr7.t > ./outputs/t5489

./replace_instrumented.exe '[d]*' '&&@t&'  < $ROOT/inputs/moni/rr7.t > ./outputs/t5490

./replace_instrumented.exe '[d]*' '&ababababababababababababababababa&@t&'  < $ROOT/inputs/moni/rr7.t > ./outputs/t5491

./replace_instrumented.exe '}EB0$FtY|' 'd`?K#C~VsV'  < $ROOT/inputs/input/ruin.10 > ./outputs/t5492

./replace_instrumented.exe 'foobarf foobarfoobarfoobarfoobarfoobarfoobarfoobar'  < $ROOT/inputs/input/ruin.2 > ./outputs/t5493

./replace_instrumented.exe '[d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr8.t > ./outputs/t5494

./replace_instrumented.exe '[d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr9.t > ./outputs/t5495

./replace_instrumented.exe '[d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr10.t > ./outputs/t5496

./replace_instrumented.exe '[d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr11.t > ./outputs/t5497

./replace_instrumented.exe '[d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr12.t > ./outputs/t5498

./replace_instrumented.exe '[d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr13.t > ./outputs/t5499

./replace_instrumented.exe 'a*' '&@t&@t&'  < $ROOT/inputs/moni/rr14.t > ./outputs/t5500

./replace_instrumented.exe 'l*' '&@t&@t&'  < $ROOT/inputs/moni/rr14.t > ./outputs/t5501

./replace_instrumented.exe '@l*' '&@t&@t&'  < $ROOT/inputs/moni/rr15.t > ./outputs/t5502

./replace_instrumented.exe '[1-9]*' '&@t&@t&'  < $ROOT/inputs/moni/rr16.t > ./outputs/t5503

./replace_instrumented.exe '[^0a-z]*' '&@t&@t&'  < $ROOT/inputs/moni/rr16.t > ./outputs/t5504

./replace_instrumented.exe '[1-8@t]*' '&@t&@t&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5505

./replace_instrumented.exe '[1-8@t!()]*' '&@t&@t&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5506

./replace_instrumented.exe '[1]*' '&@t&@t&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5507

./replace_instrumented.exe '[1]*' '&@t&                      &'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5508

./replace_instrumented.exe '1*' '&      &          &'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5509

./replace_instrumented.exe '[1@&@@@n]*' '&@t&          &'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5510

./replace_instrumented.exe '1*' '&@t@t&&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5511

./replace_instrumented.exe '1*' '&&@p@q[0-9]&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5512

./replace_instrumented.exe '1*' '&@5%&[0-9 &'  < $ROOT/inputs/moni/rr18.t > ./outputs/t5513

./replace_instrumented.exe '[1-8@t!()]*' '&plain&textl&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5514

./replace_instrumented.exe '[1-8@t[]]*' '&plain&textl&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5515

./replace_instrumented.exe '[^0a-z@t%]*' '&@t&@t&'  < $ROOT/inputs/moni/rr16.t > ./outputs/t5516

./replace_instrumented.exe '[^0a-z%]*' '&@t&@t&'  < $ROOT/inputs/moni/rr16.t > ./outputs/t5517

./replace_instrumented.exe '[1-9]*' '&@5%&[0-9 &'  < $ROOT/inputs/moni/rr18.t > ./outputs/t5518

./replace_instrumented.exe '[@n1-9]*' '&@5%&[0-9 &'  < $ROOT/inputs/moni/rr18.t > ./outputs/t5519

./replace_instrumented.exe '1*' '&[[[]]]@t&&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5520

./replace_instrumented.exe '1*' '&%[-]]]@t&&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5521

./replace_instrumented.exe '[-1-9]*' '&@5%&[0-9 &'  < $ROOT/inputs/moni/rr18.t > ./outputs/t5522

./replace_instrumented.exe '[%1-9]*' '&@5%&[0-9 &'  < $ROOT/inputs/moni/rr18.t > ./outputs/t5523

./replace_instrumented.exe '[%1-9]*' '&@t&[0]9 &'  < $ROOT/inputs/moni/rr18.t > ./outputs/t5524

./replace_instrumented.exe '[1@&@@@@#@%%^*@@n]*' '&@t&          &'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5525

./replace_instrumented.exe '[1@&@*@@#@%%^@@n]*' '&@t&          &'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5526

./replace_instrumented.exe '[d]*' '&@t& lkj[0-9]&'  < $ROOT/inputs/moni/rr19.t > ./outputs/t5527

./replace_instrumented.exe '[d*]*' '&@t&@t&'  < $ROOT/inputs/moni/rr8.t > ./outputs/t5528

./replace_instrumented.exe '[*d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr9.t > ./outputs/t5529

./replace_instrumented.exe '[d]*' '&$$$$$&@t&'  < $ROOT/inputs/moni/rr10.t > ./outputs/t5530

./replace_instrumented.exe '[$d%]*' '&@t&@t&'  < $ROOT/inputs/moni/rr11.t > ./outputs/t5531

./replace_instrumented.exe '[@^d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr12.t > ./outputs/t5532

./replace_instrumented.exe '[@!d]*' '&@t&@t&'  < $ROOT/inputs/moni/rr13.t > ./outputs/t5533

./replace_instrumented.exe '[@]*1*' '&&@p@q[0-9]&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5534

./replace_instrumented.exe '1*' '&[[[]]]&@t@@&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5535

./replace_instrumented.exe '[@t1-8@t]*' '&&@t@t&'  < $ROOT/inputs/moni/rr17.t > ./outputs/t5536

./replace_instrumented.exe '[dab]*' '&@t&@t&'  < $ROOT/inputs/moni/rr8.t > ./outputs/t5537

./replace_instrumented.exe '[d1]*' '&@t&@t&'  < $ROOT/inputs/moni/rr9.t > ./outputs/t5538

./replace_instrumented.exe '[^ad]*' '&@t&@t&'  < $ROOT/inputs/moni/rr10.t > ./outputs/t5539

./replace_instrumented.exe '[d]*' '&&@t@t&'  < $ROOT/inputs/moni/rr11.t > ./outputs/t5540

./replace_instrumented.exe '[d]*' '&&@y@Y@Y@Y@Y@Y@Y@Y&'  < $ROOT/inputs/moni/rr12.t > ./outputs/t5541

./replace_instrumented.exe '[d]*' '&&()*()*()*)(*))(*&'  < $ROOT/inputs/moni/rr13.t > ./outputs/t5542


gcov replace_instrumented.c
gcovr -r . --html-details -o coverage_and_instrument_report.html

rm replace_instrumented.c