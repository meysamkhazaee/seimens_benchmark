ROOT=$1
# Change to the current directory
cd $PWD

# Remove the "result_instrumented" folder if it exists
if [ -d result_instrumented ]; then
    rm -rf result_instrumented
fi

# Create a new "result_instrumented" folder
mkdir result_instrumented
cp print_tokens_instrumented.c stream.h tokens.h result_instrumented/
cd result_instrumented
# Build the code without coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o print_tokens_instrumented.exe print_tokens_instrumented.c -w
mkdir outputs

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst148.tst > ./outputs/t1

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst1.tst > ./outputs/t2

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst1.tst.tst > ./outputs/t3

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst10.tst > ./outputs/t4

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst100.tst > ./outputs/t5

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst101.tst > ./outputs/t6

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst102.tst > ./outputs/t7

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst103.tst > ./outputs/t8

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst104.tst > ./outputs/t9

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst105.tst > ./outputs/t10

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst106.tst > ./outputs/t11

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst107.tst > ./outputs/t12

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst108.tst > ./outputs/t13

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst109.tst > ./outputs/t14

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst11.tst > ./outputs/t15

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst110.tst > ./outputs/t16

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst111.tst > ./outputs/t17

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst112.tst > ./outputs/t18

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst113.tst > ./outputs/t19

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst114.tst > ./outputs/t20

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst115.tst > ./outputs/t21

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst116.tst > ./outputs/t22

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst117.tst > ./outputs/t23

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst118.tst > ./outputs/t24

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst119.tst > ./outputs/t25

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst12.tst > ./outputs/t26

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst120.tst > ./outputs/t27

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst121.tst > ./outputs/t28

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst122.tst > ./outputs/t29

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst123.tst > ./outputs/t30

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst124.tst > ./outputs/t31

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst125.tst > ./outputs/t32

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst126.tst > ./outputs/t33

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst127.tst > ./outputs/t34

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst128.tst > ./outputs/t35

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst129.tst > ./outputs/t36

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst13.tst > ./outputs/t37

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst130.tst > ./outputs/t38

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst131.tst > ./outputs/t39

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst132.tst > ./outputs/t40

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst133.tst > ./outputs/t41

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst134.tst > ./outputs/t42

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst135.tst > ./outputs/t43

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst136.tst > ./outputs/t44

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst137.tst > ./outputs/t45

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst138.tst > ./outputs/t46

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst139.tst > ./outputs/t47

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst14.tst > ./outputs/t48

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst140.tst > ./outputs/t49

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst141.tst > ./outputs/t50

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst142.tst > ./outputs/t51

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst143.tst > ./outputs/t52

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst144.tst > ./outputs/t53

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst145.tst > ./outputs/t54

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst146.tst > ./outputs/t55

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst147.tst > ./outputs/t56

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst149.tst > ./outputs/t57

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst15.tst > ./outputs/t58

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst150.tst > ./outputs/t59

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst151.tst > ./outputs/t60

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst152.tst > ./outputs/t61

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst153.tst > ./outputs/t62

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst154.tst > ./outputs/t63

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst155.tst > ./outputs/t64

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst156.tst > ./outputs/t65

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst157.tst > ./outputs/t66

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst158.tst > ./outputs/t67

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst159.tst > ./outputs/t68

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst16.tst > ./outputs/t69

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst160.tst > ./outputs/t70

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst161.tst > ./outputs/t71

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst162.tst > ./outputs/t72

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst163.tst > ./outputs/t73

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst164.tst > ./outputs/t74

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst165.tst > ./outputs/t75

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst166.tst > ./outputs/t76

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst167.tst > ./outputs/t77

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst168.tst > ./outputs/t78

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst169.tst > ./outputs/t79

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst17.tst > ./outputs/t80

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst170.tst > ./outputs/t81

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst171.tst > ./outputs/t82

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst172.tst > ./outputs/t83

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst173.tst > ./outputs/t84

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst174.tst > ./outputs/t85

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst175.tst > ./outputs/t86

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst176.tst > ./outputs/t87

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst177.tst > ./outputs/t88

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst178.tst > ./outputs/t89

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst179.tst > ./outputs/t90

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst18.tst > ./outputs/t91

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst180.tst > ./outputs/t92

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst181.tst > ./outputs/t93

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst182.tst > ./outputs/t94

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst183.tst > ./outputs/t95

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst184.tst > ./outputs/t96

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst185.tst > ./outputs/t97

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst186.tst > ./outputs/t98

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst187.tst > ./outputs/t99

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst188.tst > ./outputs/t100

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst189.tst > ./outputs/t101

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst19.tst > ./outputs/t102

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst190.tst > ./outputs/t103

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst191.tst > ./outputs/t104

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst192.tst > ./outputs/t105

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst193.tst > ./outputs/t106

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst194.tst > ./outputs/t107

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst195.tst > ./outputs/t108

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst196.tst > ./outputs/t109

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst197.tst > ./outputs/t110

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst198.tst > ./outputs/t111

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst199.tst > ./outputs/t112

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst2.tst > ./outputs/t113

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst2.tst.tst > ./outputs/t114

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst20.tst > ./outputs/t115

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst200.tst > ./outputs/t116

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst201.tst > ./outputs/t117

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst202.tst > ./outputs/t118

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst203.tst > ./outputs/t119

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst204.tst > ./outputs/t120

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst205.tst > ./outputs/t121

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst206.tst > ./outputs/t122

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst207.tst > ./outputs/t123

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst208.tst > ./outputs/t124

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst209.tst > ./outputs/t125

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst21.tst > ./outputs/t126

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst21.tst.tst > ./outputs/t127

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst210.tst > ./outputs/t128

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst211.tst > ./outputs/t129

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst212.tst > ./outputs/t130

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst213.tst > ./outputs/t131

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst214.tst > ./outputs/t132

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst215.tst > ./outputs/t133

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst216.tst > ./outputs/t134

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst217.tst > ./outputs/t135

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst218.tst > ./outputs/t136

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst219.tst > ./outputs/t137

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst22.tst > ./outputs/t138

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst220.tst > ./outputs/t139

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst221.tst > ./outputs/t140

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst222.tst > ./outputs/t141

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst223.tst > ./outputs/t142

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst224.tst > ./outputs/t143

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst225.tst > ./outputs/t144

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst226.tst > ./outputs/t145

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst227.tst > ./outputs/t146

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst228.tst > ./outputs/t147

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst229.tst > ./outputs/t148

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst23.tst > ./outputs/t149

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst230.tst > ./outputs/t150

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst231.tst > ./outputs/t151

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst232.tst > ./outputs/t152

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst233.tst > ./outputs/t153

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst234.tst > ./outputs/t154

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst234.tst.tst > ./outputs/t155

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst235.tst > ./outputs/t156

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst236.tst > ./outputs/t157

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst237.tst > ./outputs/t158

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst238.tst > ./outputs/t159

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst239.tst > ./outputs/t160

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst24.tst > ./outputs/t161

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst240.tst > ./outputs/t162

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst240.tst.tst > ./outputs/t163

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst241.tst > ./outputs/t164

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst241.tst.tst > ./outputs/t165

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst242.tst > ./outputs/t166

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst242.tst.tst > ./outputs/t167

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst243.tst > ./outputs/t168

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst243.tst.tst > ./outputs/t169

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst244.tst > ./outputs/t170

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst244.tst.tst > ./outputs/t171

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst245.tst > ./outputs/t172

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst245.tst.tst > ./outputs/t173

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst246.tst > ./outputs/t174

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst246.tst.tst > ./outputs/t175

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst247.tst > ./outputs/t176

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst247.tst.tst > ./outputs/t177

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst248.tst > ./outputs/t178

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst248.tst.tst > ./outputs/t179

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst249.tst > ./outputs/t180

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst249.tst.tst > ./outputs/t181

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst25.tst > ./outputs/t182

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst250.tst > ./outputs/t183

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst251.tst > ./outputs/t184

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst252.tst > ./outputs/t185

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst253.tst > ./outputs/t186

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst254.tst > ./outputs/t187

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst254.tst.tst > ./outputs/t188

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst255.tst > ./outputs/t189

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst256.tst > ./outputs/t190

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst257.tst > ./outputs/t191

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst258.tst > ./outputs/t192

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst259.tst > ./outputs/t193

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst26.tst > ./outputs/t194

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst260.tst > ./outputs/t195

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst261.tst > ./outputs/t196

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst262.tst > ./outputs/t197

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst263.tst > ./outputs/t198

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst264.tst > ./outputs/t199

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst265.tst > ./outputs/t200

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst266.tst > ./outputs/t201

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst267.tst > ./outputs/t202

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst268.tst > ./outputs/t203

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst269.tst > ./outputs/t204

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst27.tst > ./outputs/t205

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst270.tst > ./outputs/t206

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst271.tst > ./outputs/t207

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst272.tst > ./outputs/t208

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst273.tst > ./outputs/t209

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst274.tst > ./outputs/t210

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst275.tst > ./outputs/t211

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst276.tst > ./outputs/t212

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst277.tst > ./outputs/t213

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst278.tst > ./outputs/t214

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst279.tst > ./outputs/t215

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst28.tst > ./outputs/t216

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst280.tst > ./outputs/t217

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst281.tst > ./outputs/t218

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst282.tst > ./outputs/t219

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst283.tst > ./outputs/t220

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst284.tst > ./outputs/t221

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst285.tst > ./outputs/t222

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst286.tst > ./outputs/t223

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst287.tst > ./outputs/t224

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst288.tst > ./outputs/t225

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst289.tst > ./outputs/t226

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst29.tst > ./outputs/t227

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst290.tst > ./outputs/t228

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst291.tst > ./outputs/t229

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst292.tst > ./outputs/t230

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst293.tst > ./outputs/t231

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst294.tst > ./outputs/t232

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst295.tst > ./outputs/t233

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst296.tst > ./outputs/t234

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst297.tst > ./outputs/t235

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst298.tst > ./outputs/t236

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst299.tst > ./outputs/t237

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst3.tst > ./outputs/t238

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst3.tst.tst > ./outputs/t239

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst30.tst > ./outputs/t240

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst300.tst > ./outputs/t241

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst301.tst > ./outputs/t242

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst302.tst > ./outputs/t243

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst303.tst > ./outputs/t244

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst304.tst > ./outputs/t245

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst305.tst > ./outputs/t246

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst306.tst > ./outputs/t247

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst307.tst > ./outputs/t248

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst308.tst > ./outputs/t249

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst309.tst > ./outputs/t250

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst31.tst > ./outputs/t251

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst31.tst.tst > ./outputs/t252

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst310.tst > ./outputs/t253

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst311.tst > ./outputs/t254

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst312.tst > ./outputs/t255

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst313.tst > ./outputs/t256

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst314.tst > ./outputs/t257

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst315.tst > ./outputs/t258

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst316.tst > ./outputs/t259

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst317.tst > ./outputs/t260

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst318.tst > ./outputs/t261

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst319.tst > ./outputs/t262

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst32.tst > ./outputs/t263

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst320.tst > ./outputs/t264

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst321.tst > ./outputs/t265

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst322.tst > ./outputs/t266

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst323.tst > ./outputs/t267

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst324.tst > ./outputs/t268

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst325.tst > ./outputs/t269

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst326.tst > ./outputs/t270

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst327.tst > ./outputs/t271

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst328.tst > ./outputs/t272

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst329.tst > ./outputs/t273

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst33.tst > ./outputs/t274

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst330.tst > ./outputs/t275

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst331.tst > ./outputs/t276

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst332.tst > ./outputs/t277

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst333.tst > ./outputs/t278

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst334.tst > ./outputs/t279

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst335.tst > ./outputs/t280

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst336.tst > ./outputs/t281

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst337.tst > ./outputs/t282

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst338.tst > ./outputs/t283

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst339.tst > ./outputs/t284

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst34.tst > ./outputs/t285

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst340.tst > ./outputs/t286

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst341.tst > ./outputs/t287

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst342.tst > ./outputs/t288

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst343.tst > ./outputs/t289

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst344.tst > ./outputs/t290

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst345.tst > ./outputs/t291

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst346.tst > ./outputs/t292

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst347.tst > ./outputs/t293

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst348.tst > ./outputs/t294

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst349.tst > ./outputs/t295

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst35.tst > ./outputs/t296

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst350.tst > ./outputs/t297

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst352.tst > ./outputs/t298

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst353.tst > ./outputs/t299

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst354.tst > ./outputs/t300

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst355.tst > ./outputs/t301

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst356.tst > ./outputs/t302

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst357.tst > ./outputs/t303

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst358.tst > ./outputs/t304

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst359.tst > ./outputs/t305

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst36.tst > ./outputs/t306

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst360.tst > ./outputs/t307

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst361.tst > ./outputs/t308

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst362.tst > ./outputs/t309

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst363.tst > ./outputs/t310

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst364.tst > ./outputs/t311

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst365.tst > ./outputs/t312

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst366.tst > ./outputs/t313

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst367.tst > ./outputs/t314

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst368.tst > ./outputs/t315

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst369.tst > ./outputs/t316

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst37.tst > ./outputs/t317

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst370.tst > ./outputs/t318

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst371.tst > ./outputs/t319

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst372.tst > ./outputs/t320

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst373.tst > ./outputs/t321

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst374.tst > ./outputs/t322

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst375.tst > ./outputs/t323

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst376.tst > ./outputs/t324

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst377.tst > ./outputs/t325

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst378.tst > ./outputs/t326

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst379.tst > ./outputs/t327

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst38.tst > ./outputs/t328

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst380.tst > ./outputs/t329

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst381.tst > ./outputs/t330

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst382.tst > ./outputs/t331

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst383.tst > ./outputs/t332

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst384.tst > ./outputs/t333

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst385.tst > ./outputs/t334

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst386.tst > ./outputs/t335

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst387.tst > ./outputs/t336

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst388.tst > ./outputs/t337

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst389.tst > ./outputs/t338

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst39.tst > ./outputs/t339

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst390.tst > ./outputs/t340

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst391.tst > ./outputs/t341

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst392.tst > ./outputs/t342

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst393.tst > ./outputs/t343

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst394.tst > ./outputs/t344

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst395.tst > ./outputs/t345

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst396.tst > ./outputs/t346

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst397.tst > ./outputs/t347

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst398.tst > ./outputs/t348

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst399.tst > ./outputs/t349

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst4.tst > ./outputs/t350

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst4.tst.tst > ./outputs/t351

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst40.tst > ./outputs/t352

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst400.tst > ./outputs/t353

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst401.tst > ./outputs/t354

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst402.tst > ./outputs/t355

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst403.tst > ./outputs/t356

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst404.tst > ./outputs/t357

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst405.tst > ./outputs/t358

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst406.tst > ./outputs/t359

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst407.tst > ./outputs/t360

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst408.tst > ./outputs/t361

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst409.tst > ./outputs/t362

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst41.tst > ./outputs/t363

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst410.tst > ./outputs/t364

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst411.tst > ./outputs/t365

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst412.tst > ./outputs/t366

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst413.tst > ./outputs/t367

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst414.tst > ./outputs/t368

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst415.tst > ./outputs/t369

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst416.tst > ./outputs/t370

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst417.tst > ./outputs/t371

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst418.tst > ./outputs/t372

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst419.tst > ./outputs/t373

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst42.tst > ./outputs/t374

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst420.tst > ./outputs/t375

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst421.tst > ./outputs/t376

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst422.tst > ./outputs/t377

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst423.tst > ./outputs/t378

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst424.tst > ./outputs/t379

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst425.tst > ./outputs/t380

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst426.tst > ./outputs/t381

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst427.tst > ./outputs/t382

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst428.tst > ./outputs/t383

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst429.tst > ./outputs/t384

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst43.tst > ./outputs/t385

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst430.tst > ./outputs/t386

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst431.tst > ./outputs/t387

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst432.tst > ./outputs/t388

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst433.tst > ./outputs/t389

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst434.tst > ./outputs/t390

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst435.tst > ./outputs/t391

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst436.tst > ./outputs/t392

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst437.tst > ./outputs/t393

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst438.tst > ./outputs/t394

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst439.tst > ./outputs/t395

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst44.tst > ./outputs/t396

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst440.tst > ./outputs/t397

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst441.tst > ./outputs/t398

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst442.tst > ./outputs/t399

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst443.tst > ./outputs/t400

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst444.tst > ./outputs/t401

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst445.tst > ./outputs/t402

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst446.tst > ./outputs/t403

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst447.tst > ./outputs/t404

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst448.tst > ./outputs/t405

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst449.tst > ./outputs/t406

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst45.tst > ./outputs/t407

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst450.tst > ./outputs/t408

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst451.tst > ./outputs/t409

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst452.tst > ./outputs/t410

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst453.tst > ./outputs/t411

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst454.tst > ./outputs/t412

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst455.tst > ./outputs/t413

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst456.tst > ./outputs/t414

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst457.tst > ./outputs/t415

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst458.tst > ./outputs/t416

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst459.tst > ./outputs/t417

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst46.tst > ./outputs/t418

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst460.tst > ./outputs/t419

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst461.tst > ./outputs/t420

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst462.tst > ./outputs/t421

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst463.tst > ./outputs/t422

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst464.tst > ./outputs/t423

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst465.tst > ./outputs/t424

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst466.tst > ./outputs/t425

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst467.tst > ./outputs/t426

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst468.tst > ./outputs/t427

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst469.tst > ./outputs/t428

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst47.tst > ./outputs/t429

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst470.tst > ./outputs/t430

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst471.tst > ./outputs/t431

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst472.tst > ./outputs/t432

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst473.tst > ./outputs/t433

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst474.tst > ./outputs/t434

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst475.tst > ./outputs/t435

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst476.tst > ./outputs/t436

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst477.tst > ./outputs/t437

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst478.tst > ./outputs/t438

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst479.tst > ./outputs/t439

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst48.tst > ./outputs/t440

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst480.tst > ./outputs/t441

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst481.tst > ./outputs/t442

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst482.tst > ./outputs/t443

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst483.tst > ./outputs/t444

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst484.tst > ./outputs/t445

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst485.tst > ./outputs/t446

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst486.tst > ./outputs/t447

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst487.tst > ./outputs/t448

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst488.tst > ./outputs/t449

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst489.tst > ./outputs/t450

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst49.tst > ./outputs/t451

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst490.tst > ./outputs/t452

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst491.tst > ./outputs/t453

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst492.tst > ./outputs/t454

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst493.tst > ./outputs/t455

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst494.tst > ./outputs/t456

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst495.tst > ./outputs/t457

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst496.tst > ./outputs/t458

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst497.tst > ./outputs/t459

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst498.tst > ./outputs/t460

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst499.tst > ./outputs/t461

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst5.tst > ./outputs/t462

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst5.tst.tst > ./outputs/t463

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst50.tst > ./outputs/t464

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst500.tst > ./outputs/t465

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst501.tst > ./outputs/t466

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst502.tst > ./outputs/t467

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst503.tst > ./outputs/t468

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst504.tst > ./outputs/t469

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst505.tst > ./outputs/t470

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst506.tst > ./outputs/t471

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst507.tst > ./outputs/t472

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst508.tst > ./outputs/t473

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst509.tst > ./outputs/t474

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst51.tst > ./outputs/t475

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst510.tst > ./outputs/t476

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst511.tst > ./outputs/t477

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst512.tst > ./outputs/t478

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst513.tst > ./outputs/t479

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst514.tst > ./outputs/t480

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst515.tst > ./outputs/t481

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst516.tst > ./outputs/t482

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst517.tst > ./outputs/t483

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst518.tst > ./outputs/t484

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst519.tst > ./outputs/t485

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst52.tst > ./outputs/t486

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst520.tst > ./outputs/t487

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst521.tst > ./outputs/t488

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst522.tst > ./outputs/t489

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst523.tst > ./outputs/t490

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst524.tst > ./outputs/t491

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst525.tst > ./outputs/t492

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst526.tst > ./outputs/t493

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst527.tst > ./outputs/t494

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst528.tst > ./outputs/t495

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst529.tst > ./outputs/t496

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst53.tst > ./outputs/t497

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst530.tst > ./outputs/t498

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst531.tst > ./outputs/t499

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst532.tst > ./outputs/t500

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst533.tst > ./outputs/t501

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst534.tst > ./outputs/t502

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst535.tst > ./outputs/t503

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst536.tst > ./outputs/t504

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst537.tst > ./outputs/t505

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst538.tst > ./outputs/t506

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst539.tst > ./outputs/t507

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst54.tst > ./outputs/t508

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst540.tst > ./outputs/t509

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst541.tst > ./outputs/t510

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst542.tst > ./outputs/t511

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst543.tst > ./outputs/t512

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst544.tst > ./outputs/t513

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst545.tst > ./outputs/t514

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst546.tst > ./outputs/t515

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst547.tst > ./outputs/t516

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst548.tst > ./outputs/t517

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst549.tst > ./outputs/t518

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst55.tst > ./outputs/t519

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst550.tst > ./outputs/t520

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst551.tst > ./outputs/t521

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst552.tst > ./outputs/t522

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst553.tst > ./outputs/t523

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst554.tst > ./outputs/t524

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst555.tst > ./outputs/t525

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst556.tst > ./outputs/t526

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst557.tst > ./outputs/t527

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst558.tst > ./outputs/t528

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst559.tst > ./outputs/t529

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst56.tst > ./outputs/t530

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst560.tst > ./outputs/t531

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst561.tst > ./outputs/t532

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst562.tst > ./outputs/t533

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst563.tst > ./outputs/t534

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst564.tst > ./outputs/t535

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst565.tst > ./outputs/t536

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst566.tst > ./outputs/t537

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst567.tst > ./outputs/t538

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst568.tst > ./outputs/t539

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst569.tst > ./outputs/t540

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst57.tst > ./outputs/t541

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst570.tst > ./outputs/t542

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst571.tst > ./outputs/t543

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst572.tst > ./outputs/t544

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst573.tst > ./outputs/t545

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst574.tst > ./outputs/t546

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst575.tst > ./outputs/t547

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst576.tst > ./outputs/t548

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst577.tst > ./outputs/t549

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst578.tst > ./outputs/t550

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst579.tst > ./outputs/t551

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst58.tst > ./outputs/t552

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst580.tst > ./outputs/t553

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst581.tst > ./outputs/t554

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst582.tst > ./outputs/t555

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst583.tst > ./outputs/t556

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst584.tst > ./outputs/t557

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst585.tst > ./outputs/t558

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst586.tst > ./outputs/t559

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst587.tst > ./outputs/t560

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst588.tst > ./outputs/t561

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst589.tst > ./outputs/t562

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst59.tst > ./outputs/t563

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst590.tst > ./outputs/t564

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst591.tst > ./outputs/t565

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst592.tst > ./outputs/t566

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst593.tst > ./outputs/t567

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst594.tst > ./outputs/t568

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst595.tst > ./outputs/t569

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst596.tst > ./outputs/t570

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst597.tst > ./outputs/t571

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst598.tst > ./outputs/t572

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst599.tst > ./outputs/t573

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst6.tst > ./outputs/t574

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst6.tst.tst > ./outputs/t575

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst60.tst > ./outputs/t576

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst600.tst > ./outputs/t577

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst61.tst > ./outputs/t578

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst62.tst > ./outputs/t579

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst63.tst > ./outputs/t580

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst64.tst > ./outputs/t581

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst65.tst > ./outputs/t582

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst66.tst > ./outputs/t583

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst67.tst > ./outputs/t584

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst68.tst > ./outputs/t585

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst69.tst > ./outputs/t586

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst7.tst > ./outputs/t587

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst7.tst.tst > ./outputs/t588

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst70.tst > ./outputs/t589

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst71.tst > ./outputs/t590

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst72.tst > ./outputs/t591

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst73.tst > ./outputs/t592

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst74.tst > ./outputs/t593

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst75.tst > ./outputs/t594

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst76.tst > ./outputs/t595

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst77.tst > ./outputs/t596

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst78.tst > ./outputs/t597

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst79.tst > ./outputs/t598

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst8.tst > ./outputs/t599

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst8.tst.tst > ./outputs/t600

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst80.tst > ./outputs/t601

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst81.tst > ./outputs/t602

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst82.tst > ./outputs/t603

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst83.tst > ./outputs/t604

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst84.tst > ./outputs/t605

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst85.tst > ./outputs/t606

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst86.tst > ./outputs/t607

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst87.tst > ./outputs/t608

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst88.tst > ./outputs/t609

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst89.tst > ./outputs/t610

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst9.tst > ./outputs/t611

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst9.tst.tst > ./outputs/t612

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst90.tst > ./outputs/t613

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst91.tst > ./outputs/t614

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst92.tst > ./outputs/t615

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst93.tst > ./outputs/t616

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst94.tst > ./outputs/t617

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst95.tst > ./outputs/t618

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst96.tst > ./outputs/t619

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst97.tst > ./outputs/t620

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst98.tst > ./outputs/t621

./print_tokens_instrumented.exe  < $ROOT/inputs/newtst99.tst > ./outputs/t622

./print_tokens_instrumented.exe  < $ROOT/inputs/tc1 > ./outputs/t623

./print_tokens_instrumented.exe  < $ROOT/inputs/tc10 > ./outputs/t624

./print_tokens_instrumented.exe  < $ROOT/inputs/tc100 > ./outputs/t625

./print_tokens_instrumented.exe  < $ROOT/inputs/tc101 > ./outputs/t626

./print_tokens_instrumented.exe  < $ROOT/inputs/tc102 > ./outputs/t627

./print_tokens_instrumented.exe  < $ROOT/inputs/tc103 > ./outputs/t628

./print_tokens_instrumented.exe  < $ROOT/inputs/tc104 > ./outputs/t629

./print_tokens_instrumented.exe  < $ROOT/inputs/tc105 > ./outputs/t630

./print_tokens_instrumented.exe  < $ROOT/inputs/tc106 > ./outputs/t631

./print_tokens_instrumented.exe  < $ROOT/inputs/tc107 > ./outputs/t632

./print_tokens_instrumented.exe  < $ROOT/inputs/tc108 > ./outputs/t633

./print_tokens_instrumented.exe  < $ROOT/inputs/tc109 > ./outputs/t634

./print_tokens_instrumented.exe  < $ROOT/inputs/tc11 > ./outputs/t635

./print_tokens_instrumented.exe  < $ROOT/inputs/tc110 > ./outputs/t636

./print_tokens_instrumented.exe  < $ROOT/inputs/tc111 > ./outputs/t637

./print_tokens_instrumented.exe  < $ROOT/inputs/tc112 > ./outputs/t638

./print_tokens_instrumented.exe  < $ROOT/inputs/tc113 > ./outputs/t639

./print_tokens_instrumented.exe  < $ROOT/inputs/tc114 > ./outputs/t640

./print_tokens_instrumented.exe  < $ROOT/inputs/tc115 > ./outputs/t641

./print_tokens_instrumented.exe  < $ROOT/inputs/tc116 > ./outputs/t642

./print_tokens_instrumented.exe  < $ROOT/inputs/tc117 > ./outputs/t643

./print_tokens_instrumented.exe  < $ROOT/inputs/tc118 > ./outputs/t644

./print_tokens_instrumented.exe  < $ROOT/inputs/tc119 > ./outputs/t645

./print_tokens_instrumented.exe  < $ROOT/inputs/tc12 > ./outputs/t646

./print_tokens_instrumented.exe  < $ROOT/inputs/tc120 > ./outputs/t647

./print_tokens_instrumented.exe  < $ROOT/inputs/tc121 > ./outputs/t648

./print_tokens_instrumented.exe  < $ROOT/inputs/tc122 > ./outputs/t649

./print_tokens_instrumented.exe  < $ROOT/inputs/tc123 > ./outputs/t650

./print_tokens_instrumented.exe  < $ROOT/inputs/tc124 > ./outputs/t651

./print_tokens_instrumented.exe  < $ROOT/inputs/tc125 > ./outputs/t652

./print_tokens_instrumented.exe  < $ROOT/inputs/tc126 > ./outputs/t653

./print_tokens_instrumented.exe  < $ROOT/inputs/tc127 > ./outputs/t654

./print_tokens_instrumented.exe  < $ROOT/inputs/tc128 > ./outputs/t655

./print_tokens_instrumented.exe  < $ROOT/inputs/tc129 > ./outputs/t656

./print_tokens_instrumented.exe  < $ROOT/inputs/tc13 > ./outputs/t657

./print_tokens_instrumented.exe  < $ROOT/inputs/tc130 > ./outputs/t658

./print_tokens_instrumented.exe  < $ROOT/inputs/tc131 > ./outputs/t659

./print_tokens_instrumented.exe  < $ROOT/inputs/tc132 > ./outputs/t660

./print_tokens_instrumented.exe  < $ROOT/inputs/tc133 > ./outputs/t661

./print_tokens_instrumented.exe  < $ROOT/inputs/tc134 > ./outputs/t662

./print_tokens_instrumented.exe  < $ROOT/inputs/tc135 > ./outputs/t663

./print_tokens_instrumented.exe  < $ROOT/inputs/tc136 > ./outputs/t664

./print_tokens_instrumented.exe  < $ROOT/inputs/tc137 > ./outputs/t665

./print_tokens_instrumented.exe  < $ROOT/inputs/tc138 > ./outputs/t666

./print_tokens_instrumented.exe  < $ROOT/inputs/tc139 > ./outputs/t667

./print_tokens_instrumented.exe  < $ROOT/inputs/tc14 > ./outputs/t668

./print_tokens_instrumented.exe  < $ROOT/inputs/tc140 > ./outputs/t669

./print_tokens_instrumented.exe  < $ROOT/inputs/tc141 > ./outputs/t670

./print_tokens_instrumented.exe  < $ROOT/inputs/tc142 > ./outputs/t671

./print_tokens_instrumented.exe  < $ROOT/inputs/tc143 > ./outputs/t672

./print_tokens_instrumented.exe  < $ROOT/inputs/tc144 > ./outputs/t673

./print_tokens_instrumented.exe  < $ROOT/inputs/tc145 > ./outputs/t674

./print_tokens_instrumented.exe  < $ROOT/inputs/tc146 > ./outputs/t675

./print_tokens_instrumented.exe  < $ROOT/inputs/tc147 > ./outputs/t676

./print_tokens_instrumented.exe  < $ROOT/inputs/tc148 > ./outputs/t677

./print_tokens_instrumented.exe  < $ROOT/inputs/tc149 > ./outputs/t678

./print_tokens_instrumented.exe  < $ROOT/inputs/tc15 > ./outputs/t679

./print_tokens_instrumented.exe  < $ROOT/inputs/tc150 > ./outputs/t680

./print_tokens_instrumented.exe  < $ROOT/inputs/tc151 > ./outputs/t681

./print_tokens_instrumented.exe  < $ROOT/inputs/tc152 > ./outputs/t682

./print_tokens_instrumented.exe  < $ROOT/inputs/tc153 > ./outputs/t683

./print_tokens_instrumented.exe  < $ROOT/inputs/tc154 > ./outputs/t684

./print_tokens_instrumented.exe  < $ROOT/inputs/tc155 > ./outputs/t685

./print_tokens_instrumented.exe  < $ROOT/inputs/tc156 > ./outputs/t686

./print_tokens_instrumented.exe  < $ROOT/inputs/tc157 > ./outputs/t687

./print_tokens_instrumented.exe  < $ROOT/inputs/tc158 > ./outputs/t688

./print_tokens_instrumented.exe  < $ROOT/inputs/tc159 > ./outputs/t689

./print_tokens_instrumented.exe  < $ROOT/inputs/tc16 > ./outputs/t690

./print_tokens_instrumented.exe  < $ROOT/inputs/tc160 > ./outputs/t691

./print_tokens_instrumented.exe  < $ROOT/inputs/tc161 > ./outputs/t692

./print_tokens_instrumented.exe  < $ROOT/inputs/tc162 > ./outputs/t693

./print_tokens_instrumented.exe  < $ROOT/inputs/tc163 > ./outputs/t694

./print_tokens_instrumented.exe  < $ROOT/inputs/tc164 > ./outputs/t695

./print_tokens_instrumented.exe  < $ROOT/inputs/tc165 > ./outputs/t696

./print_tokens_instrumented.exe  < $ROOT/inputs/tc166 > ./outputs/t697

./print_tokens_instrumented.exe  < $ROOT/inputs/tc167 > ./outputs/t698

./print_tokens_instrumented.exe  < $ROOT/inputs/tc168 > ./outputs/t699

./print_tokens_instrumented.exe  < $ROOT/inputs/tc169 > ./outputs/t700

./print_tokens_instrumented.exe  < $ROOT/inputs/tc17 > ./outputs/t701

./print_tokens_instrumented.exe  < $ROOT/inputs/tc170 > ./outputs/t702

./print_tokens_instrumented.exe  < $ROOT/inputs/tc171 > ./outputs/t703

./print_tokens_instrumented.exe  < $ROOT/inputs/tc172 > ./outputs/t704

./print_tokens_instrumented.exe  < $ROOT/inputs/tc173 > ./outputs/t705

./print_tokens_instrumented.exe  < $ROOT/inputs/tc174 > ./outputs/t706

./print_tokens_instrumented.exe  < $ROOT/inputs/tc175 > ./outputs/t707

./print_tokens_instrumented.exe  < $ROOT/inputs/tc176 > ./outputs/t708

./print_tokens_instrumented.exe  < $ROOT/inputs/tc177 > ./outputs/t709

./print_tokens_instrumented.exe  < $ROOT/inputs/tc178 > ./outputs/t710

./print_tokens_instrumented.exe  < $ROOT/inputs/tc179 > ./outputs/t711

./print_tokens_instrumented.exe  < $ROOT/inputs/tc18 > ./outputs/t712

./print_tokens_instrumented.exe  < $ROOT/inputs/tc180 > ./outputs/t713

./print_tokens_instrumented.exe  < $ROOT/inputs/tc181 > ./outputs/t714

./print_tokens_instrumented.exe  < $ROOT/inputs/tc182 > ./outputs/t715

./print_tokens_instrumented.exe  < $ROOT/inputs/tc183 > ./outputs/t716

./print_tokens_instrumented.exe  < $ROOT/inputs/tc184 > ./outputs/t717

./print_tokens_instrumented.exe  < $ROOT/inputs/tc185 > ./outputs/t718

./print_tokens_instrumented.exe  < $ROOT/inputs/tc186 > ./outputs/t719

./print_tokens_instrumented.exe  < $ROOT/inputs/tc187 > ./outputs/t720

./print_tokens_instrumented.exe  < $ROOT/inputs/tc188 > ./outputs/t721

./print_tokens_instrumented.exe  < $ROOT/inputs/tc189 > ./outputs/t722

./print_tokens_instrumented.exe  < $ROOT/inputs/tc19 > ./outputs/t723

./print_tokens_instrumented.exe  < $ROOT/inputs/tc190 > ./outputs/t724

./print_tokens_instrumented.exe  < $ROOT/inputs/tc191 > ./outputs/t725

./print_tokens_instrumented.exe  < $ROOT/inputs/tc192 > ./outputs/t726

./print_tokens_instrumented.exe  < $ROOT/inputs/tc193 > ./outputs/t727

./print_tokens_instrumented.exe  < $ROOT/inputs/tc194 > ./outputs/t728

./print_tokens_instrumented.exe  < $ROOT/inputs/tc195 > ./outputs/t729

./print_tokens_instrumented.exe  < $ROOT/inputs/tc196 > ./outputs/t730

./print_tokens_instrumented.exe  < $ROOT/inputs/tc197 > ./outputs/t731

./print_tokens_instrumented.exe  < $ROOT/inputs/tc198 > ./outputs/t732

./print_tokens_instrumented.exe  < $ROOT/inputs/tc199 > ./outputs/t733

./print_tokens_instrumented.exe  < $ROOT/inputs/tc2 > ./outputs/t734

./print_tokens_instrumented.exe  < $ROOT/inputs/tc20 > ./outputs/t735

./print_tokens_instrumented.exe  < $ROOT/inputs/tc200 > ./outputs/t736

./print_tokens_instrumented.exe  < $ROOT/inputs/tc201 > ./outputs/t737

./print_tokens_instrumented.exe  < $ROOT/inputs/tc202 > ./outputs/t738

./print_tokens_instrumented.exe  < $ROOT/inputs/tc203 > ./outputs/t739

./print_tokens_instrumented.exe  < $ROOT/inputs/tc204 > ./outputs/t740

./print_tokens_instrumented.exe  < $ROOT/inputs/tc205 > ./outputs/t741

./print_tokens_instrumented.exe  < $ROOT/inputs/tc206 > ./outputs/t742

./print_tokens_instrumented.exe  < $ROOT/inputs/tc207 > ./outputs/t743

./print_tokens_instrumented.exe  < $ROOT/inputs/tc208 > ./outputs/t744

./print_tokens_instrumented.exe  < $ROOT/inputs/tc209 > ./outputs/t745

./print_tokens_instrumented.exe  < $ROOT/inputs/tc21 > ./outputs/t746

./print_tokens_instrumented.exe  < $ROOT/inputs/tc210 > ./outputs/t747

./print_tokens_instrumented.exe  < $ROOT/inputs/tc211 > ./outputs/t748

./print_tokens_instrumented.exe  < $ROOT/inputs/tc212 > ./outputs/t749

./print_tokens_instrumented.exe  < $ROOT/inputs/tc213 > ./outputs/t750

./print_tokens_instrumented.exe  < $ROOT/inputs/tc214 > ./outputs/t751

./print_tokens_instrumented.exe  < $ROOT/inputs/tc215 > ./outputs/t752

./print_tokens_instrumented.exe  < $ROOT/inputs/tc216 > ./outputs/t753

./print_tokens_instrumented.exe  < $ROOT/inputs/tc217 > ./outputs/t754

./print_tokens_instrumented.exe  < $ROOT/inputs/tc218 > ./outputs/t755

./print_tokens_instrumented.exe  < $ROOT/inputs/tc219 > ./outputs/t756

./print_tokens_instrumented.exe  < $ROOT/inputs/tc22 > ./outputs/t757

./print_tokens_instrumented.exe  < $ROOT/inputs/tc220 > ./outputs/t758

./print_tokens_instrumented.exe  < $ROOT/inputs/tc221 > ./outputs/t759

./print_tokens_instrumented.exe  < $ROOT/inputs/tc222 > ./outputs/t760

./print_tokens_instrumented.exe  < $ROOT/inputs/tc223 > ./outputs/t761

./print_tokens_instrumented.exe  < $ROOT/inputs/tc224 > ./outputs/t762

./print_tokens_instrumented.exe  < $ROOT/inputs/tc225 > ./outputs/t763

./print_tokens_instrumented.exe  < $ROOT/inputs/tc226 > ./outputs/t764

./print_tokens_instrumented.exe  < $ROOT/inputs/tc227 > ./outputs/t765

./print_tokens_instrumented.exe  < $ROOT/inputs/tc228 > ./outputs/t766

./print_tokens_instrumented.exe  < $ROOT/inputs/tc229 > ./outputs/t767

./print_tokens_instrumented.exe  < $ROOT/inputs/tc23 > ./outputs/t768

./print_tokens_instrumented.exe  < $ROOT/inputs/tc230 > ./outputs/t769

./print_tokens_instrumented.exe  < $ROOT/inputs/tc231 > ./outputs/t770

./print_tokens_instrumented.exe  < $ROOT/inputs/tc232 > ./outputs/t771

./print_tokens_instrumented.exe  < $ROOT/inputs/tc233 > ./outputs/t772

./print_tokens_instrumented.exe  < $ROOT/inputs/tc234 > ./outputs/t773

./print_tokens_instrumented.exe  < $ROOT/inputs/tc235 > ./outputs/t774

./print_tokens_instrumented.exe  < $ROOT/inputs/tc236 > ./outputs/t775

./print_tokens_instrumented.exe  < $ROOT/inputs/tc237 > ./outputs/t776

./print_tokens_instrumented.exe  < $ROOT/inputs/tc238 > ./outputs/t777

./print_tokens_instrumented.exe  < $ROOT/inputs/tc239 > ./outputs/t778

./print_tokens_instrumented.exe  < $ROOT/inputs/tc24 > ./outputs/t779

./print_tokens_instrumented.exe  < $ROOT/inputs/tc240 > ./outputs/t780

./print_tokens_instrumented.exe  < $ROOT/inputs/tc241 > ./outputs/t781

./print_tokens_instrumented.exe  < $ROOT/inputs/tc242 > ./outputs/t782

./print_tokens_instrumented.exe  < $ROOT/inputs/tc243 > ./outputs/t783

./print_tokens_instrumented.exe  < $ROOT/inputs/tc244 > ./outputs/t784

./print_tokens_instrumented.exe  < $ROOT/inputs/tc245 > ./outputs/t785

./print_tokens_instrumented.exe  < $ROOT/inputs/tc246 > ./outputs/t786

./print_tokens_instrumented.exe  < $ROOT/inputs/tc247 > ./outputs/t787

./print_tokens_instrumented.exe  < $ROOT/inputs/tc248 > ./outputs/t788

./print_tokens_instrumented.exe  < $ROOT/inputs/tc249 > ./outputs/t789

./print_tokens_instrumented.exe  < $ROOT/inputs/tc25 > ./outputs/t790

./print_tokens_instrumented.exe  < $ROOT/inputs/tc250 > ./outputs/t791

./print_tokens_instrumented.exe  < $ROOT/inputs/tc251 > ./outputs/t792

./print_tokens_instrumented.exe  < $ROOT/inputs/tc252 > ./outputs/t793

./print_tokens_instrumented.exe  < $ROOT/inputs/tc253 > ./outputs/t794

./print_tokens_instrumented.exe  < $ROOT/inputs/tc254 > ./outputs/t795

./print_tokens_instrumented.exe  < $ROOT/inputs/tc255 > ./outputs/t796

./print_tokens_instrumented.exe  < $ROOT/inputs/tc256 > ./outputs/t797

./print_tokens_instrumented.exe  < $ROOT/inputs/tc257 > ./outputs/t798

./print_tokens_instrumented.exe  < $ROOT/inputs/tc258 > ./outputs/t799

./print_tokens_instrumented.exe  < $ROOT/inputs/tc259 > ./outputs/t800

./print_tokens_instrumented.exe  < $ROOT/inputs/tc26 > ./outputs/t801

./print_tokens_instrumented.exe  < $ROOT/inputs/tc260 > ./outputs/t802

./print_tokens_instrumented.exe  < $ROOT/inputs/tc261 > ./outputs/t803

./print_tokens_instrumented.exe  < $ROOT/inputs/tc262 > ./outputs/t804

./print_tokens_instrumented.exe  < $ROOT/inputs/tc263 > ./outputs/t805

./print_tokens_instrumented.exe  < $ROOT/inputs/tc264 > ./outputs/t806

./print_tokens_instrumented.exe  < $ROOT/inputs/tc265 > ./outputs/t807

./print_tokens_instrumented.exe  < $ROOT/inputs/tc266 > ./outputs/t808

./print_tokens_instrumented.exe  < $ROOT/inputs/tc267 > ./outputs/t809

./print_tokens_instrumented.exe  < $ROOT/inputs/tc268 > ./outputs/t810

./print_tokens_instrumented.exe  < $ROOT/inputs/tc269 > ./outputs/t811

./print_tokens_instrumented.exe  < $ROOT/inputs/tc27 > ./outputs/t812

./print_tokens_instrumented.exe  < $ROOT/inputs/tc270 > ./outputs/t813

./print_tokens_instrumented.exe  < $ROOT/inputs/tc271 > ./outputs/t814

./print_tokens_instrumented.exe  < $ROOT/inputs/tc272 > ./outputs/t815

./print_tokens_instrumented.exe  < $ROOT/inputs/tc273 > ./outputs/t816

./print_tokens_instrumented.exe  < $ROOT/inputs/tc274 > ./outputs/t817

./print_tokens_instrumented.exe  < $ROOT/inputs/tc275 > ./outputs/t818

./print_tokens_instrumented.exe  < $ROOT/inputs/tc276 > ./outputs/t819

./print_tokens_instrumented.exe  < $ROOT/inputs/tc277 > ./outputs/t820

./print_tokens_instrumented.exe  < $ROOT/inputs/tc278 > ./outputs/t821

./print_tokens_instrumented.exe  < $ROOT/inputs/tc279 > ./outputs/t822

./print_tokens_instrumented.exe  < $ROOT/inputs/tc28 > ./outputs/t823

./print_tokens_instrumented.exe  < $ROOT/inputs/tc280 > ./outputs/t824

./print_tokens_instrumented.exe  < $ROOT/inputs/tc281 > ./outputs/t825

./print_tokens_instrumented.exe  < $ROOT/inputs/tc282 > ./outputs/t826

./print_tokens_instrumented.exe  < $ROOT/inputs/tc283 > ./outputs/t827

./print_tokens_instrumented.exe  < $ROOT/inputs/tc284 > ./outputs/t828

./print_tokens_instrumented.exe  < $ROOT/inputs/tc285 > ./outputs/t829

./print_tokens_instrumented.exe  < $ROOT/inputs/tc286 > ./outputs/t830

./print_tokens_instrumented.exe  < $ROOT/inputs/tc287 > ./outputs/t831

./print_tokens_instrumented.exe  < $ROOT/inputs/tc288 > ./outputs/t832

./print_tokens_instrumented.exe  < $ROOT/inputs/tc289 > ./outputs/t833

./print_tokens_instrumented.exe  < $ROOT/inputs/tc29 > ./outputs/t834

./print_tokens_instrumented.exe  < $ROOT/inputs/tc290 > ./outputs/t835

./print_tokens_instrumented.exe  < $ROOT/inputs/tc291 > ./outputs/t836

./print_tokens_instrumented.exe  < $ROOT/inputs/tc292 > ./outputs/t837

./print_tokens_instrumented.exe  < $ROOT/inputs/tc293 > ./outputs/t838

./print_tokens_instrumented.exe  < $ROOT/inputs/tc294 > ./outputs/t839

./print_tokens_instrumented.exe  < $ROOT/inputs/tc295 > ./outputs/t840

./print_tokens_instrumented.exe  < $ROOT/inputs/tc296 > ./outputs/t841

./print_tokens_instrumented.exe  < $ROOT/inputs/tc297 > ./outputs/t842

./print_tokens_instrumented.exe  < $ROOT/inputs/tc298 > ./outputs/t843

./print_tokens_instrumented.exe  < $ROOT/inputs/tc299 > ./outputs/t844

./print_tokens_instrumented.exe  < $ROOT/inputs/tc3 > ./outputs/t845

./print_tokens_instrumented.exe  < $ROOT/inputs/tc30 > ./outputs/t846

./print_tokens_instrumented.exe  < $ROOT/inputs/tc300 > ./outputs/t847

./print_tokens_instrumented.exe  < $ROOT/inputs/tc301 > ./outputs/t848

./print_tokens_instrumented.exe  < $ROOT/inputs/tc302 > ./outputs/t849

./print_tokens_instrumented.exe  < $ROOT/inputs/tc303 > ./outputs/t850

./print_tokens_instrumented.exe  < $ROOT/inputs/tc304 > ./outputs/t851

./print_tokens_instrumented.exe  < $ROOT/inputs/tc305 > ./outputs/t852

./print_tokens_instrumented.exe  < $ROOT/inputs/tc306 > ./outputs/t853

./print_tokens_instrumented.exe  < $ROOT/inputs/tc307 > ./outputs/t854

./print_tokens_instrumented.exe  < $ROOT/inputs/tc308 > ./outputs/t855

./print_tokens_instrumented.exe  < $ROOT/inputs/tc309 > ./outputs/t856

./print_tokens_instrumented.exe  < $ROOT/inputs/tc31 > ./outputs/t857

./print_tokens_instrumented.exe  < $ROOT/inputs/tc310 > ./outputs/t858

./print_tokens_instrumented.exe  < $ROOT/inputs/tc311 > ./outputs/t859

./print_tokens_instrumented.exe  < $ROOT/inputs/tc312 > ./outputs/t860

./print_tokens_instrumented.exe  < $ROOT/inputs/tc313 > ./outputs/t861

./print_tokens_instrumented.exe  < $ROOT/inputs/tc314 > ./outputs/t862

./print_tokens_instrumented.exe  < $ROOT/inputs/tc315 > ./outputs/t863

./print_tokens_instrumented.exe  < $ROOT/inputs/tc316 > ./outputs/t864

./print_tokens_instrumented.exe  < $ROOT/inputs/tc317 > ./outputs/t865

./print_tokens_instrumented.exe  < $ROOT/inputs/tc318 > ./outputs/t866

./print_tokens_instrumented.exe  < $ROOT/inputs/tc319 > ./outputs/t867

./print_tokens_instrumented.exe  < $ROOT/inputs/tc32 > ./outputs/t868

./print_tokens_instrumented.exe  < $ROOT/inputs/tc320 > ./outputs/t869

./print_tokens_instrumented.exe  < $ROOT/inputs/tc321 > ./outputs/t870

./print_tokens_instrumented.exe  < $ROOT/inputs/tc322 > ./outputs/t871

./print_tokens_instrumented.exe  < $ROOT/inputs/tc323 > ./outputs/t872

./print_tokens_instrumented.exe  < $ROOT/inputs/tc324 > ./outputs/t873

./print_tokens_instrumented.exe  < $ROOT/inputs/tc325 > ./outputs/t874

./print_tokens_instrumented.exe  < $ROOT/inputs/tc326 > ./outputs/t875

./print_tokens_instrumented.exe  < $ROOT/inputs/tc327 > ./outputs/t876

./print_tokens_instrumented.exe  < $ROOT/inputs/tc328 > ./outputs/t877

./print_tokens_instrumented.exe  < $ROOT/inputs/tc329 > ./outputs/t878

./print_tokens_instrumented.exe  < $ROOT/inputs/tc33 > ./outputs/t879

./print_tokens_instrumented.exe  < $ROOT/inputs/tc330 > ./outputs/t880

./print_tokens_instrumented.exe  < $ROOT/inputs/tc331 > ./outputs/t881

./print_tokens_instrumented.exe  < $ROOT/inputs/tc332 > ./outputs/t882

./print_tokens_instrumented.exe  < $ROOT/inputs/tc333 > ./outputs/t883

./print_tokens_instrumented.exe  < $ROOT/inputs/tc334 > ./outputs/t884

./print_tokens_instrumented.exe  < $ROOT/inputs/tc335 > ./outputs/t885

./print_tokens_instrumented.exe  < $ROOT/inputs/tc336 > ./outputs/t886

./print_tokens_instrumented.exe  < $ROOT/inputs/tc337 > ./outputs/t887

./print_tokens_instrumented.exe  < $ROOT/inputs/tc338 > ./outputs/t888

./print_tokens_instrumented.exe  < $ROOT/inputs/tc339 > ./outputs/t889

./print_tokens_instrumented.exe  < $ROOT/inputs/tc34 > ./outputs/t890

./print_tokens_instrumented.exe  < $ROOT/inputs/tc340 > ./outputs/t891

./print_tokens_instrumented.exe  < $ROOT/inputs/tc341 > ./outputs/t892

./print_tokens_instrumented.exe  < $ROOT/inputs/tc342 > ./outputs/t893

./print_tokens_instrumented.exe  < $ROOT/inputs/tc343 > ./outputs/t894

./print_tokens_instrumented.exe  < $ROOT/inputs/tc344 > ./outputs/t895

./print_tokens_instrumented.exe  < $ROOT/inputs/tc345 > ./outputs/t896

./print_tokens_instrumented.exe  < $ROOT/inputs/tc346 > ./outputs/t897

./print_tokens_instrumented.exe  < $ROOT/inputs/tc347 > ./outputs/t898

./print_tokens_instrumented.exe  < $ROOT/inputs/tc348 > ./outputs/t899

./print_tokens_instrumented.exe  < $ROOT/inputs/tc349 > ./outputs/t900

./print_tokens_instrumented.exe  < $ROOT/inputs/tc35 > ./outputs/t901

./print_tokens_instrumented.exe  < $ROOT/inputs/tc350 > ./outputs/t902

./print_tokens_instrumented.exe  < $ROOT/inputs/tc351 > ./outputs/t903

./print_tokens_instrumented.exe  < $ROOT/inputs/tc352 > ./outputs/t904

./print_tokens_instrumented.exe  < $ROOT/inputs/tc353 > ./outputs/t905

./print_tokens_instrumented.exe  < $ROOT/inputs/tc354 > ./outputs/t906

./print_tokens_instrumented.exe  < $ROOT/inputs/tc355 > ./outputs/t907

./print_tokens_instrumented.exe  < $ROOT/inputs/tc356 > ./outputs/t908

./print_tokens_instrumented.exe  < $ROOT/inputs/tc357 > ./outputs/t909

./print_tokens_instrumented.exe  < $ROOT/inputs/tc358 > ./outputs/t910

./print_tokens_instrumented.exe  < $ROOT/inputs/tc359 > ./outputs/t911

./print_tokens_instrumented.exe  < $ROOT/inputs/tc36 > ./outputs/t912

./print_tokens_instrumented.exe  < $ROOT/inputs/tc360 > ./outputs/t913

./print_tokens_instrumented.exe  < $ROOT/inputs/tc361 > ./outputs/t914

./print_tokens_instrumented.exe  < $ROOT/inputs/tc362 > ./outputs/t915

./print_tokens_instrumented.exe  < $ROOT/inputs/tc363 > ./outputs/t916

./print_tokens_instrumented.exe  < $ROOT/inputs/tc364 > ./outputs/t917

./print_tokens_instrumented.exe  < $ROOT/inputs/tc365 > ./outputs/t918

./print_tokens_instrumented.exe  < $ROOT/inputs/tc366 > ./outputs/t919

./print_tokens_instrumented.exe  < $ROOT/inputs/tc367 > ./outputs/t920

./print_tokens_instrumented.exe  < $ROOT/inputs/tc368 > ./outputs/t921

./print_tokens_instrumented.exe  < $ROOT/inputs/tc369 > ./outputs/t922

./print_tokens_instrumented.exe  < $ROOT/inputs/tc37 > ./outputs/t923

./print_tokens_instrumented.exe  < $ROOT/inputs/tc370 > ./outputs/t924

./print_tokens_instrumented.exe  < $ROOT/inputs/tc371 > ./outputs/t925

./print_tokens_instrumented.exe  < $ROOT/inputs/tc372 > ./outputs/t926

./print_tokens_instrumented.exe  < $ROOT/inputs/tc373 > ./outputs/t927

./print_tokens_instrumented.exe  < $ROOT/inputs/tc374 > ./outputs/t928

./print_tokens_instrumented.exe  < $ROOT/inputs/tc375 > ./outputs/t929

./print_tokens_instrumented.exe  < $ROOT/inputs/tc376 > ./outputs/t930

./print_tokens_instrumented.exe  < $ROOT/inputs/tc377 > ./outputs/t931

./print_tokens_instrumented.exe  < $ROOT/inputs/tc378 > ./outputs/t932

./print_tokens_instrumented.exe  < $ROOT/inputs/tc379 > ./outputs/t933

./print_tokens_instrumented.exe  < $ROOT/inputs/tc38 > ./outputs/t934

./print_tokens_instrumented.exe  < $ROOT/inputs/tc380 > ./outputs/t935

./print_tokens_instrumented.exe  < $ROOT/inputs/tc381 > ./outputs/t936

./print_tokens_instrumented.exe  < $ROOT/inputs/tc382 > ./outputs/t937

./print_tokens_instrumented.exe  < $ROOT/inputs/tc383 > ./outputs/t938

./print_tokens_instrumented.exe  < $ROOT/inputs/tc384 > ./outputs/t939

./print_tokens_instrumented.exe  < $ROOT/inputs/tc385 > ./outputs/t940

./print_tokens_instrumented.exe  < $ROOT/inputs/tc386 > ./outputs/t941

./print_tokens_instrumented.exe  < $ROOT/inputs/tc387 > ./outputs/t942

./print_tokens_instrumented.exe  < $ROOT/inputs/tc388 > ./outputs/t943

./print_tokens_instrumented.exe  < $ROOT/inputs/tc389 > ./outputs/t944

./print_tokens_instrumented.exe  < $ROOT/inputs/tc39 > ./outputs/t945

./print_tokens_instrumented.exe  < $ROOT/inputs/tc390 > ./outputs/t946

./print_tokens_instrumented.exe  < $ROOT/inputs/tc391 > ./outputs/t947

./print_tokens_instrumented.exe  < $ROOT/inputs/tc392 > ./outputs/t948

./print_tokens_instrumented.exe  < $ROOT/inputs/tc393 > ./outputs/t949

./print_tokens_instrumented.exe  < $ROOT/inputs/tc394 > ./outputs/t950

./print_tokens_instrumented.exe  < $ROOT/inputs/tc395 > ./outputs/t951

./print_tokens_instrumented.exe  < $ROOT/inputs/tc396 > ./outputs/t952

./print_tokens_instrumented.exe  < $ROOT/inputs/tc397 > ./outputs/t953

./print_tokens_instrumented.exe  < $ROOT/inputs/tc398 > ./outputs/t954

./print_tokens_instrumented.exe  < $ROOT/inputs/tc399 > ./outputs/t955

./print_tokens_instrumented.exe  < $ROOT/inputs/tc4 > ./outputs/t956

./print_tokens_instrumented.exe  < $ROOT/inputs/tc40 > ./outputs/t957

./print_tokens_instrumented.exe  < $ROOT/inputs/tc400 > ./outputs/t958

./print_tokens_instrumented.exe  < $ROOT/inputs/tc41 > ./outputs/t959

./print_tokens_instrumented.exe  < $ROOT/inputs/tc42 > ./outputs/t960

./print_tokens_instrumented.exe  < $ROOT/inputs/tc43 > ./outputs/t961

./print_tokens_instrumented.exe  < $ROOT/inputs/tc44 > ./outputs/t962

./print_tokens_instrumented.exe  < $ROOT/inputs/tc45 > ./outputs/t963

./print_tokens_instrumented.exe  < $ROOT/inputs/tc46 > ./outputs/t964

./print_tokens_instrumented.exe  < $ROOT/inputs/tc47 > ./outputs/t965

./print_tokens_instrumented.exe  < $ROOT/inputs/tc48 > ./outputs/t966

./print_tokens_instrumented.exe  < $ROOT/inputs/tc49 > ./outputs/t967

./print_tokens_instrumented.exe  < $ROOT/inputs/tc5 > ./outputs/t968

./print_tokens_instrumented.exe  < $ROOT/inputs/tc50 > ./outputs/t969

./print_tokens_instrumented.exe  < $ROOT/inputs/tc51 > ./outputs/t970

./print_tokens_instrumented.exe  < $ROOT/inputs/tc52 > ./outputs/t971

./print_tokens_instrumented.exe  < $ROOT/inputs/tc53 > ./outputs/t972

./print_tokens_instrumented.exe  < $ROOT/inputs/tc54 > ./outputs/t973

./print_tokens_instrumented.exe  < $ROOT/inputs/tc55 > ./outputs/t974

./print_tokens_instrumented.exe  < $ROOT/inputs/tc56 > ./outputs/t975

./print_tokens_instrumented.exe  < $ROOT/inputs/tc57 > ./outputs/t976

./print_tokens_instrumented.exe  < $ROOT/inputs/tc58 > ./outputs/t977

./print_tokens_instrumented.exe  < $ROOT/inputs/tc59 > ./outputs/t978

./print_tokens_instrumented.exe  < $ROOT/inputs/tc6 > ./outputs/t979

./print_tokens_instrumented.exe  < $ROOT/inputs/tc60 > ./outputs/t980

./print_tokens_instrumented.exe  < $ROOT/inputs/tc61 > ./outputs/t981

./print_tokens_instrumented.exe  < $ROOT/inputs/tc62 > ./outputs/t982

./print_tokens_instrumented.exe  < $ROOT/inputs/tc63 > ./outputs/t983

./print_tokens_instrumented.exe  < $ROOT/inputs/tc64 > ./outputs/t984

./print_tokens_instrumented.exe  < $ROOT/inputs/tc65 > ./outputs/t985

./print_tokens_instrumented.exe  < $ROOT/inputs/tc66 > ./outputs/t986

./print_tokens_instrumented.exe  < $ROOT/inputs/tc67 > ./outputs/t987

./print_tokens_instrumented.exe  < $ROOT/inputs/tc68 > ./outputs/t988

./print_tokens_instrumented.exe  < $ROOT/inputs/tc69 > ./outputs/t989

./print_tokens_instrumented.exe  < $ROOT/inputs/tc7 > ./outputs/t990

./print_tokens_instrumented.exe  < $ROOT/inputs/tc70 > ./outputs/t991

./print_tokens_instrumented.exe  < $ROOT/inputs/tc71 > ./outputs/t992

./print_tokens_instrumented.exe  < $ROOT/inputs/tc72 > ./outputs/t993

./print_tokens_instrumented.exe  < $ROOT/inputs/tc73 > ./outputs/t994

./print_tokens_instrumented.exe  < $ROOT/inputs/tc74 > ./outputs/t995

./print_tokens_instrumented.exe  < $ROOT/inputs/tc75 > ./outputs/t996

./print_tokens_instrumented.exe  < $ROOT/inputs/tc76 > ./outputs/t997

./print_tokens_instrumented.exe  < $ROOT/inputs/tc77 > ./outputs/t998

./print_tokens_instrumented.exe  < $ROOT/inputs/tc78 > ./outputs/t999

./print_tokens_instrumented.exe  < $ROOT/inputs/tc79 > ./outputs/t1000

./print_tokens_instrumented.exe  < $ROOT/inputs/tc8 > ./outputs/t1001

./print_tokens_instrumented.exe  < $ROOT/inputs/tc80 > ./outputs/t1002

./print_tokens_instrumented.exe  < $ROOT/inputs/tc81 > ./outputs/t1003

./print_tokens_instrumented.exe  < $ROOT/inputs/tc82 > ./outputs/t1004

./print_tokens_instrumented.exe  < $ROOT/inputs/tc83 > ./outputs/t1005

./print_tokens_instrumented.exe  < $ROOT/inputs/tc84 > ./outputs/t1006

./print_tokens_instrumented.exe  < $ROOT/inputs/tc85 > ./outputs/t1007

./print_tokens_instrumented.exe  < $ROOT/inputs/tc86 > ./outputs/t1008

./print_tokens_instrumented.exe  < $ROOT/inputs/tc87 > ./outputs/t1009

./print_tokens_instrumented.exe  < $ROOT/inputs/tc88 > ./outputs/t1010

./print_tokens_instrumented.exe  < $ROOT/inputs/tc89 > ./outputs/t1011

./print_tokens_instrumented.exe  < $ROOT/inputs/tc9 > ./outputs/t1012

./print_tokens_instrumented.exe  < $ROOT/inputs/tc90 > ./outputs/t1013

./print_tokens_instrumented.exe  < $ROOT/inputs/tc91 > ./outputs/t1014

./print_tokens_instrumented.exe  < $ROOT/inputs/tc92 > ./outputs/t1015

./print_tokens_instrumented.exe  < $ROOT/inputs/tc93 > ./outputs/t1016

./print_tokens_instrumented.exe  < $ROOT/inputs/tc94 > ./outputs/t1017

./print_tokens_instrumented.exe  < $ROOT/inputs/tc95 > ./outputs/t1018

./print_tokens_instrumented.exe  < $ROOT/inputs/tc96 > ./outputs/t1019

./print_tokens_instrumented.exe  < $ROOT/inputs/tc97 > ./outputs/t1020

./print_tokens_instrumented.exe  < $ROOT/inputs/tc98 > ./outputs/t1021

./print_tokens_instrumented.exe  < $ROOT/inputs/tc99 > ./outputs/t1022

./print_tokens_instrumented.exe  < $ROOT/inputs/test1 > ./outputs/t1023

./print_tokens_instrumented.exe  < $ROOT/inputs/test10 > ./outputs/t1024

./print_tokens_instrumented.exe  < $ROOT/inputs/test100 > ./outputs/t1025

./print_tokens_instrumented.exe  < $ROOT/inputs/test101 > ./outputs/t1026

./print_tokens_instrumented.exe  < $ROOT/inputs/test102 > ./outputs/t1027

./print_tokens_instrumented.exe  < $ROOT/inputs/test103 > ./outputs/t1028

./print_tokens_instrumented.exe  < $ROOT/inputs/test104 > ./outputs/t1029

./print_tokens_instrumented.exe  < $ROOT/inputs/test105 > ./outputs/t1030

./print_tokens_instrumented.exe  < $ROOT/inputs/test106 > ./outputs/t1031

./print_tokens_instrumented.exe  < $ROOT/inputs/test107 > ./outputs/t1032

./print_tokens_instrumented.exe  < $ROOT/inputs/test108 > ./outputs/t1033

./print_tokens_instrumented.exe  < $ROOT/inputs/test109 > ./outputs/t1034

./print_tokens_instrumented.exe  < $ROOT/inputs/test11 > ./outputs/t1035

./print_tokens_instrumented.exe  < $ROOT/inputs/test110 > ./outputs/t1036

./print_tokens_instrumented.exe  < $ROOT/inputs/test111 > ./outputs/t1037

./print_tokens_instrumented.exe  < $ROOT/inputs/test112 > ./outputs/t1038

./print_tokens_instrumented.exe  < $ROOT/inputs/test113 > ./outputs/t1039

./print_tokens_instrumented.exe  < $ROOT/inputs/test114 > ./outputs/t1040

./print_tokens_instrumented.exe  < $ROOT/inputs/test115 > ./outputs/t1041

./print_tokens_instrumented.exe  < $ROOT/inputs/test116 > ./outputs/t1042

./print_tokens_instrumented.exe  < $ROOT/inputs/test117 > ./outputs/t1043

./print_tokens_instrumented.exe  < $ROOT/inputs/test118 > ./outputs/t1044

./print_tokens_instrumented.exe  < $ROOT/inputs/test119 > ./outputs/t1045

./print_tokens_instrumented.exe  < $ROOT/inputs/test12 > ./outputs/t1046

./print_tokens_instrumented.exe  < $ROOT/inputs/test120 > ./outputs/t1047

./print_tokens_instrumented.exe  < $ROOT/inputs/test121 > ./outputs/t1048

./print_tokens_instrumented.exe  < $ROOT/inputs/test122 > ./outputs/t1049

./print_tokens_instrumented.exe  < $ROOT/inputs/test123 > ./outputs/t1050

./print_tokens_instrumented.exe  < $ROOT/inputs/test124 > ./outputs/t1051

./print_tokens_instrumented.exe  < $ROOT/inputs/test125 > ./outputs/t1052

./print_tokens_instrumented.exe  < $ROOT/inputs/test126 > ./outputs/t1053

./print_tokens_instrumented.exe  < $ROOT/inputs/test127 > ./outputs/t1054

./print_tokens_instrumented.exe  < $ROOT/inputs/test128 > ./outputs/t1055

./print_tokens_instrumented.exe  < $ROOT/inputs/test129 > ./outputs/t1056

./print_tokens_instrumented.exe  < $ROOT/inputs/test13 > ./outputs/t1057

./print_tokens_instrumented.exe  < $ROOT/inputs/test130 > ./outputs/t1058

./print_tokens_instrumented.exe  < $ROOT/inputs/test131 > ./outputs/t1059

./print_tokens_instrumented.exe  < $ROOT/inputs/test132 > ./outputs/t1060

./print_tokens_instrumented.exe  < $ROOT/inputs/test133 > ./outputs/t1061

./print_tokens_instrumented.exe  < $ROOT/inputs/test134 > ./outputs/t1062

./print_tokens_instrumented.exe  < $ROOT/inputs/test135 > ./outputs/t1063

./print_tokens_instrumented.exe  < $ROOT/inputs/test136 > ./outputs/t1064

./print_tokens_instrumented.exe  < $ROOT/inputs/test137 > ./outputs/t1065

./print_tokens_instrumented.exe  < $ROOT/inputs/test138 > ./outputs/t1066

./print_tokens_instrumented.exe  < $ROOT/inputs/test139 > ./outputs/t1067

./print_tokens_instrumented.exe  < $ROOT/inputs/test14 > ./outputs/t1068

./print_tokens_instrumented.exe  < $ROOT/inputs/test140 > ./outputs/t1069

./print_tokens_instrumented.exe  < $ROOT/inputs/test141 > ./outputs/t1070

./print_tokens_instrumented.exe  < $ROOT/inputs/test142 > ./outputs/t1071

./print_tokens_instrumented.exe  < $ROOT/inputs/test143 > ./outputs/t1072

./print_tokens_instrumented.exe  < $ROOT/inputs/test144 > ./outputs/t1073

./print_tokens_instrumented.exe  < $ROOT/inputs/test145 > ./outputs/t1074

./print_tokens_instrumented.exe  < $ROOT/inputs/test146 > ./outputs/t1075

./print_tokens_instrumented.exe  < $ROOT/inputs/test147 > ./outputs/t1076

./print_tokens_instrumented.exe  < $ROOT/inputs/test148 > ./outputs/t1077

./print_tokens_instrumented.exe  < $ROOT/inputs/test149 > ./outputs/t1078

./print_tokens_instrumented.exe  < $ROOT/inputs/test15 > ./outputs/t1079

./print_tokens_instrumented.exe  < $ROOT/inputs/test150 > ./outputs/t1080

./print_tokens_instrumented.exe  < $ROOT/inputs/test151 > ./outputs/t1081

./print_tokens_instrumented.exe  < $ROOT/inputs/test152 > ./outputs/t1082

./print_tokens_instrumented.exe  < $ROOT/inputs/test153 > ./outputs/t1083

./print_tokens_instrumented.exe  < $ROOT/inputs/test154 > ./outputs/t1084

./print_tokens_instrumented.exe  < $ROOT/inputs/test155 > ./outputs/t1085

./print_tokens_instrumented.exe  < $ROOT/inputs/test156 > ./outputs/t1086

./print_tokens_instrumented.exe  < $ROOT/inputs/test157 > ./outputs/t1087

./print_tokens_instrumented.exe  < $ROOT/inputs/test158 > ./outputs/t1088

./print_tokens_instrumented.exe  < $ROOT/inputs/test159 > ./outputs/t1089

./print_tokens_instrumented.exe  < $ROOT/inputs/test16 > ./outputs/t1090

./print_tokens_instrumented.exe  < $ROOT/inputs/test160 > ./outputs/t1091

./print_tokens_instrumented.exe  < $ROOT/inputs/test161 > ./outputs/t1092

./print_tokens_instrumented.exe  < $ROOT/inputs/test162 > ./outputs/t1093

./print_tokens_instrumented.exe  < $ROOT/inputs/test163 > ./outputs/t1094

./print_tokens_instrumented.exe  < $ROOT/inputs/test164 > ./outputs/t1095

./print_tokens_instrumented.exe  < $ROOT/inputs/test165 > ./outputs/t1096

./print_tokens_instrumented.exe  < $ROOT/inputs/test166 > ./outputs/t1097

./print_tokens_instrumented.exe  < $ROOT/inputs/test167 > ./outputs/t1098

./print_tokens_instrumented.exe  < $ROOT/inputs/test168 > ./outputs/t1099

./print_tokens_instrumented.exe  < $ROOT/inputs/test169 > ./outputs/t1100

./print_tokens_instrumented.exe  < $ROOT/inputs/test17 > ./outputs/t1101

./print_tokens_instrumented.exe  < $ROOT/inputs/test170 > ./outputs/t1102

./print_tokens_instrumented.exe  < $ROOT/inputs/test171 > ./outputs/t1103

./print_tokens_instrumented.exe  < $ROOT/inputs/test172 > ./outputs/t1104

./print_tokens_instrumented.exe  < $ROOT/inputs/test173 > ./outputs/t1105

./print_tokens_instrumented.exe  < $ROOT/inputs/test174 > ./outputs/t1106

./print_tokens_instrumented.exe  < $ROOT/inputs/test175 > ./outputs/t1107

./print_tokens_instrumented.exe  < $ROOT/inputs/test176 > ./outputs/t1108

./print_tokens_instrumented.exe  < $ROOT/inputs/test177 > ./outputs/t1109

./print_tokens_instrumented.exe  < $ROOT/inputs/test178 > ./outputs/t1110

./print_tokens_instrumented.exe  < $ROOT/inputs/test179 > ./outputs/t1111

./print_tokens_instrumented.exe  < $ROOT/inputs/test18 > ./outputs/t1112

./print_tokens_instrumented.exe  < $ROOT/inputs/test180 > ./outputs/t1113

./print_tokens_instrumented.exe  < $ROOT/inputs/test181 > ./outputs/t1114

./print_tokens_instrumented.exe  < $ROOT/inputs/test182 > ./outputs/t1115

./print_tokens_instrumented.exe  < $ROOT/inputs/test183 > ./outputs/t1116

./print_tokens_instrumented.exe  < $ROOT/inputs/test184 > ./outputs/t1117

./print_tokens_instrumented.exe  < $ROOT/inputs/test185 > ./outputs/t1118

./print_tokens_instrumented.exe  < $ROOT/inputs/test186 > ./outputs/t1119

./print_tokens_instrumented.exe  < $ROOT/inputs/test187 > ./outputs/t1120

./print_tokens_instrumented.exe  < $ROOT/inputs/test188 > ./outputs/t1121

./print_tokens_instrumented.exe  < $ROOT/inputs/test189 > ./outputs/t1122

./print_tokens_instrumented.exe  < $ROOT/inputs/test19 > ./outputs/t1123

./print_tokens_instrumented.exe  < $ROOT/inputs/test190 > ./outputs/t1124

./print_tokens_instrumented.exe  < $ROOT/inputs/test191 > ./outputs/t1125

./print_tokens_instrumented.exe  < $ROOT/inputs/test192 > ./outputs/t1126

./print_tokens_instrumented.exe  < $ROOT/inputs/test193 > ./outputs/t1127

./print_tokens_instrumented.exe  < $ROOT/inputs/test194 > ./outputs/t1128

./print_tokens_instrumented.exe  < $ROOT/inputs/test195 > ./outputs/t1129

./print_tokens_instrumented.exe  < $ROOT/inputs/test196 > ./outputs/t1130

./print_tokens_instrumented.exe  < $ROOT/inputs/test197 > ./outputs/t1131

./print_tokens_instrumented.exe  < $ROOT/inputs/test198 > ./outputs/t1132

./print_tokens_instrumented.exe  < $ROOT/inputs/test199 > ./outputs/t1133

./print_tokens_instrumented.exe  < $ROOT/inputs/test2 > ./outputs/t1134

./print_tokens_instrumented.exe  < $ROOT/inputs/test20 > ./outputs/t1135

./print_tokens_instrumented.exe  < $ROOT/inputs/test200 > ./outputs/t1136

./print_tokens_instrumented.exe  < $ROOT/inputs/test201 > ./outputs/t1137

./print_tokens_instrumented.exe  < $ROOT/inputs/test202 > ./outputs/t1138

./print_tokens_instrumented.exe  < $ROOT/inputs/test203 > ./outputs/t1139

./print_tokens_instrumented.exe  < $ROOT/inputs/test204 > ./outputs/t1140

./print_tokens_instrumented.exe  < $ROOT/inputs/test205 > ./outputs/t1141

./print_tokens_instrumented.exe  < $ROOT/inputs/test206 > ./outputs/t1142

./print_tokens_instrumented.exe  < $ROOT/inputs/test207 > ./outputs/t1143

./print_tokens_instrumented.exe  < $ROOT/inputs/test208 > ./outputs/t1144

./print_tokens_instrumented.exe  < $ROOT/inputs/test209 > ./outputs/t1145

./print_tokens_instrumented.exe  < $ROOT/inputs/test21 > ./outputs/t1146

./print_tokens_instrumented.exe  < $ROOT/inputs/test210 > ./outputs/t1147

./print_tokens_instrumented.exe  < $ROOT/inputs/test211 > ./outputs/t1148

./print_tokens_instrumented.exe  < $ROOT/inputs/test212 > ./outputs/t1149

./print_tokens_instrumented.exe  < $ROOT/inputs/test213 > ./outputs/t1150

./print_tokens_instrumented.exe  < $ROOT/inputs/test214 > ./outputs/t1151

./print_tokens_instrumented.exe  < $ROOT/inputs/test215 > ./outputs/t1152

./print_tokens_instrumented.exe  < $ROOT/inputs/test216 > ./outputs/t1153

./print_tokens_instrumented.exe  < $ROOT/inputs/test217 > ./outputs/t1154

./print_tokens_instrumented.exe  < $ROOT/inputs/test218 > ./outputs/t1155

./print_tokens_instrumented.exe  < $ROOT/inputs/test219 > ./outputs/t1156

./print_tokens_instrumented.exe  < $ROOT/inputs/test22 > ./outputs/t1157

./print_tokens_instrumented.exe  < $ROOT/inputs/test220 > ./outputs/t1158

./print_tokens_instrumented.exe  < $ROOT/inputs/test221 > ./outputs/t1159

./print_tokens_instrumented.exe  < $ROOT/inputs/test222 > ./outputs/t1160

./print_tokens_instrumented.exe  < $ROOT/inputs/test223 > ./outputs/t1161

./print_tokens_instrumented.exe  < $ROOT/inputs/test224 > ./outputs/t1162

./print_tokens_instrumented.exe  < $ROOT/inputs/test225 > ./outputs/t1163

./print_tokens_instrumented.exe  < $ROOT/inputs/test226 > ./outputs/t1164

./print_tokens_instrumented.exe  < $ROOT/inputs/test227 > ./outputs/t1165

./print_tokens_instrumented.exe  < $ROOT/inputs/test228 > ./outputs/t1166

./print_tokens_instrumented.exe  < $ROOT/inputs/test229 > ./outputs/t1167

./print_tokens_instrumented.exe  < $ROOT/inputs/test23 > ./outputs/t1168

./print_tokens_instrumented.exe  < $ROOT/inputs/test230 > ./outputs/t1169

./print_tokens_instrumented.exe  < $ROOT/inputs/test231 > ./outputs/t1170

./print_tokens_instrumented.exe  < $ROOT/inputs/test232 > ./outputs/t1171

./print_tokens_instrumented.exe  < $ROOT/inputs/test233 > ./outputs/t1172

./print_tokens_instrumented.exe  < $ROOT/inputs/test234 > ./outputs/t1173

./print_tokens_instrumented.exe  < $ROOT/inputs/test235 > ./outputs/t1174

./print_tokens_instrumented.exe  < $ROOT/inputs/test236 > ./outputs/t1175

./print_tokens_instrumented.exe  < $ROOT/inputs/test237 > ./outputs/t1176

./print_tokens_instrumented.exe  < $ROOT/inputs/test238 > ./outputs/t1177

./print_tokens_instrumented.exe  < $ROOT/inputs/test239 > ./outputs/t1178

./print_tokens_instrumented.exe  < $ROOT/inputs/test24 > ./outputs/t1179

./print_tokens_instrumented.exe  < $ROOT/inputs/test240 > ./outputs/t1180

./print_tokens_instrumented.exe  < $ROOT/inputs/test241 > ./outputs/t1181

./print_tokens_instrumented.exe  < $ROOT/inputs/test242 > ./outputs/t1182

./print_tokens_instrumented.exe  < $ROOT/inputs/test243 > ./outputs/t1183

./print_tokens_instrumented.exe  < $ROOT/inputs/test244 > ./outputs/t1184

./print_tokens_instrumented.exe  < $ROOT/inputs/test245 > ./outputs/t1185

./print_tokens_instrumented.exe  < $ROOT/inputs/test246 > ./outputs/t1186

./print_tokens_instrumented.exe  < $ROOT/inputs/test247 > ./outputs/t1187

./print_tokens_instrumented.exe  < $ROOT/inputs/test248 > ./outputs/t1188

./print_tokens_instrumented.exe  < $ROOT/inputs/test249 > ./outputs/t1189

./print_tokens_instrumented.exe  < $ROOT/inputs/test25 > ./outputs/t1190

./print_tokens_instrumented.exe  < $ROOT/inputs/test250 > ./outputs/t1191

./print_tokens_instrumented.exe  < $ROOT/inputs/test251 > ./outputs/t1192

./print_tokens_instrumented.exe  < $ROOT/inputs/test252 > ./outputs/t1193

./print_tokens_instrumented.exe  < $ROOT/inputs/test253 > ./outputs/t1194

./print_tokens_instrumented.exe  < $ROOT/inputs/test254 > ./outputs/t1195

./print_tokens_instrumented.exe  < $ROOT/inputs/test255 > ./outputs/t1196

./print_tokens_instrumented.exe  < $ROOT/inputs/test256 > ./outputs/t1197

./print_tokens_instrumented.exe  < $ROOT/inputs/test257 > ./outputs/t1198

./print_tokens_instrumented.exe  < $ROOT/inputs/test258 > ./outputs/t1199

./print_tokens_instrumented.exe  < $ROOT/inputs/test259 > ./outputs/t1200

./print_tokens_instrumented.exe  < $ROOT/inputs/test26 > ./outputs/t1201

./print_tokens_instrumented.exe  < $ROOT/inputs/test260 > ./outputs/t1202

./print_tokens_instrumented.exe  < $ROOT/inputs/test261 > ./outputs/t1203

./print_tokens_instrumented.exe  < $ROOT/inputs/test262 > ./outputs/t1204

./print_tokens_instrumented.exe  < $ROOT/inputs/test263 > ./outputs/t1205

./print_tokens_instrumented.exe  < $ROOT/inputs/test264 > ./outputs/t1206

./print_tokens_instrumented.exe  < $ROOT/inputs/test265 > ./outputs/t1207

./print_tokens_instrumented.exe  < $ROOT/inputs/test266 > ./outputs/t1208

./print_tokens_instrumented.exe  < $ROOT/inputs/test267 > ./outputs/t1209

./print_tokens_instrumented.exe  < $ROOT/inputs/test268 > ./outputs/t1210

./print_tokens_instrumented.exe  < $ROOT/inputs/test269 > ./outputs/t1211

./print_tokens_instrumented.exe  < $ROOT/inputs/test27 > ./outputs/t1212

./print_tokens_instrumented.exe  < $ROOT/inputs/test270 > ./outputs/t1213

./print_tokens_instrumented.exe  < $ROOT/inputs/test271 > ./outputs/t1214

./print_tokens_instrumented.exe  < $ROOT/inputs/test272 > ./outputs/t1215

./print_tokens_instrumented.exe  < $ROOT/inputs/test273 > ./outputs/t1216

./print_tokens_instrumented.exe  < $ROOT/inputs/test274 > ./outputs/t1217

./print_tokens_instrumented.exe  < $ROOT/inputs/test275 > ./outputs/t1218

./print_tokens_instrumented.exe  < $ROOT/inputs/test276 > ./outputs/t1219

./print_tokens_instrumented.exe  < $ROOT/inputs/test277 > ./outputs/t1220

./print_tokens_instrumented.exe  < $ROOT/inputs/test278 > ./outputs/t1221

./print_tokens_instrumented.exe  < $ROOT/inputs/test279 > ./outputs/t1222

./print_tokens_instrumented.exe  < $ROOT/inputs/test28 > ./outputs/t1223

./print_tokens_instrumented.exe  < $ROOT/inputs/test280 > ./outputs/t1224

./print_tokens_instrumented.exe  < $ROOT/inputs/test281 > ./outputs/t1225

./print_tokens_instrumented.exe  < $ROOT/inputs/test282 > ./outputs/t1226

./print_tokens_instrumented.exe  < $ROOT/inputs/test283 > ./outputs/t1227

./print_tokens_instrumented.exe  < $ROOT/inputs/test284 > ./outputs/t1228

./print_tokens_instrumented.exe  < $ROOT/inputs/test285 > ./outputs/t1229

./print_tokens_instrumented.exe  < $ROOT/inputs/test286 > ./outputs/t1230

./print_tokens_instrumented.exe  < $ROOT/inputs/test287 > ./outputs/t1231

./print_tokens_instrumented.exe  < $ROOT/inputs/test288 > ./outputs/t1232

./print_tokens_instrumented.exe  < $ROOT/inputs/test289 > ./outputs/t1233

./print_tokens_instrumented.exe  < $ROOT/inputs/test29 > ./outputs/t1234

./print_tokens_instrumented.exe  < $ROOT/inputs/test290 > ./outputs/t1235

./print_tokens_instrumented.exe  < $ROOT/inputs/test291 > ./outputs/t1236

./print_tokens_instrumented.exe  < $ROOT/inputs/test292 > ./outputs/t1237

./print_tokens_instrumented.exe  < $ROOT/inputs/test293 > ./outputs/t1238

./print_tokens_instrumented.exe  < $ROOT/inputs/test294 > ./outputs/t1239

./print_tokens_instrumented.exe  < $ROOT/inputs/test295 > ./outputs/t1240

./print_tokens_instrumented.exe  < $ROOT/inputs/test296 > ./outputs/t1241

./print_tokens_instrumented.exe  < $ROOT/inputs/test297 > ./outputs/t1242

./print_tokens_instrumented.exe  < $ROOT/inputs/test298 > ./outputs/t1243

./print_tokens_instrumented.exe  < $ROOT/inputs/test299 > ./outputs/t1244

./print_tokens_instrumented.exe  < $ROOT/inputs/test3 > ./outputs/t1245

./print_tokens_instrumented.exe  < $ROOT/inputs/test30 > ./outputs/t1246

./print_tokens_instrumented.exe  < $ROOT/inputs/test300 > ./outputs/t1247

./print_tokens_instrumented.exe  < $ROOT/inputs/test301 > ./outputs/t1248

./print_tokens_instrumented.exe  < $ROOT/inputs/test302 > ./outputs/t1249

./print_tokens_instrumented.exe  < $ROOT/inputs/test303 > ./outputs/t1250

./print_tokens_instrumented.exe  < $ROOT/inputs/test304 > ./outputs/t1251

./print_tokens_instrumented.exe  < $ROOT/inputs/test305 > ./outputs/t1252

./print_tokens_instrumented.exe  < $ROOT/inputs/test306 > ./outputs/t1253

./print_tokens_instrumented.exe  < $ROOT/inputs/test307 > ./outputs/t1254

./print_tokens_instrumented.exe  < $ROOT/inputs/test308 > ./outputs/t1255

./print_tokens_instrumented.exe  < $ROOT/inputs/test309 > ./outputs/t1256

./print_tokens_instrumented.exe  < $ROOT/inputs/test31 > ./outputs/t1257

./print_tokens_instrumented.exe  < $ROOT/inputs/test310 > ./outputs/t1258

./print_tokens_instrumented.exe  < $ROOT/inputs/test311 > ./outputs/t1259

./print_tokens_instrumented.exe  < $ROOT/inputs/test312 > ./outputs/t1260

./print_tokens_instrumented.exe  < $ROOT/inputs/test313 > ./outputs/t1261

./print_tokens_instrumented.exe  < $ROOT/inputs/test314 > ./outputs/t1262

./print_tokens_instrumented.exe  < $ROOT/inputs/test315 > ./outputs/t1263

./print_tokens_instrumented.exe  < $ROOT/inputs/test316 > ./outputs/t1264

./print_tokens_instrumented.exe  < $ROOT/inputs/test317 > ./outputs/t1265

./print_tokens_instrumented.exe  < $ROOT/inputs/test318 > ./outputs/t1266

./print_tokens_instrumented.exe  < $ROOT/inputs/test319 > ./outputs/t1267

./print_tokens_instrumented.exe  < $ROOT/inputs/test32 > ./outputs/t1268

./print_tokens_instrumented.exe  < $ROOT/inputs/test320 > ./outputs/t1269

./print_tokens_instrumented.exe  < $ROOT/inputs/test321 > ./outputs/t1270

./print_tokens_instrumented.exe  < $ROOT/inputs/test322 > ./outputs/t1271

./print_tokens_instrumented.exe  < $ROOT/inputs/test323 > ./outputs/t1272

./print_tokens_instrumented.exe  < $ROOT/inputs/test324 > ./outputs/t1273

./print_tokens_instrumented.exe  < $ROOT/inputs/test325 > ./outputs/t1274

./print_tokens_instrumented.exe  < $ROOT/inputs/test326 > ./outputs/t1275

./print_tokens_instrumented.exe  < $ROOT/inputs/test327 > ./outputs/t1276

./print_tokens_instrumented.exe  < $ROOT/inputs/test328 > ./outputs/t1277

./print_tokens_instrumented.exe  < $ROOT/inputs/test329 > ./outputs/t1278

./print_tokens_instrumented.exe  < $ROOT/inputs/test33 > ./outputs/t1279

./print_tokens_instrumented.exe  < $ROOT/inputs/test330 > ./outputs/t1280

./print_tokens_instrumented.exe  < $ROOT/inputs/test331 > ./outputs/t1281

./print_tokens_instrumented.exe  < $ROOT/inputs/test332 > ./outputs/t1282

./print_tokens_instrumented.exe  < $ROOT/inputs/test333 > ./outputs/t1283

./print_tokens_instrumented.exe  < $ROOT/inputs/test334 > ./outputs/t1284

./print_tokens_instrumented.exe  < $ROOT/inputs/test335 > ./outputs/t1285

./print_tokens_instrumented.exe  < $ROOT/inputs/test336 > ./outputs/t1286

./print_tokens_instrumented.exe  < $ROOT/inputs/test337 > ./outputs/t1287

./print_tokens_instrumented.exe  < $ROOT/inputs/test338 > ./outputs/t1288

./print_tokens_instrumented.exe  < $ROOT/inputs/test339 > ./outputs/t1289

./print_tokens_instrumented.exe  < $ROOT/inputs/test34 > ./outputs/t1290

./print_tokens_instrumented.exe  < $ROOT/inputs/test340 > ./outputs/t1291

./print_tokens_instrumented.exe  < $ROOT/inputs/test341 > ./outputs/t1292

./print_tokens_instrumented.exe  < $ROOT/inputs/test342 > ./outputs/t1293

./print_tokens_instrumented.exe  < $ROOT/inputs/test343 > ./outputs/t1294

./print_tokens_instrumented.exe  < $ROOT/inputs/test344 > ./outputs/t1295

./print_tokens_instrumented.exe  < $ROOT/inputs/test345 > ./outputs/t1296

./print_tokens_instrumented.exe  < $ROOT/inputs/test346 > ./outputs/t1297

./print_tokens_instrumented.exe  < $ROOT/inputs/test347 > ./outputs/t1298

./print_tokens_instrumented.exe  < $ROOT/inputs/test348 > ./outputs/t1299

./print_tokens_instrumented.exe  < $ROOT/inputs/test349 > ./outputs/t1300

./print_tokens_instrumented.exe  < $ROOT/inputs/test35 > ./outputs/t1301

./print_tokens_instrumented.exe  < $ROOT/inputs/test350 > ./outputs/t1302

./print_tokens_instrumented.exe  < $ROOT/inputs/test351 > ./outputs/t1303

./print_tokens_instrumented.exe  < $ROOT/inputs/test352 > ./outputs/t1304

./print_tokens_instrumented.exe  < $ROOT/inputs/test353 > ./outputs/t1305

./print_tokens_instrumented.exe  < $ROOT/inputs/test354 > ./outputs/t1306

./print_tokens_instrumented.exe  < $ROOT/inputs/test355 > ./outputs/t1307

./print_tokens_instrumented.exe  < $ROOT/inputs/test356 > ./outputs/t1308

./print_tokens_instrumented.exe  < $ROOT/inputs/test357 > ./outputs/t1309

./print_tokens_instrumented.exe  < $ROOT/inputs/test358 > ./outputs/t1310

./print_tokens_instrumented.exe  < $ROOT/inputs/test359 > ./outputs/t1311

./print_tokens_instrumented.exe  < $ROOT/inputs/test36 > ./outputs/t1312

./print_tokens_instrumented.exe  < $ROOT/inputs/test360 > ./outputs/t1313

./print_tokens_instrumented.exe  < $ROOT/inputs/test361 > ./outputs/t1314

./print_tokens_instrumented.exe  < $ROOT/inputs/test362 > ./outputs/t1315

./print_tokens_instrumented.exe  < $ROOT/inputs/test363 > ./outputs/t1316

./print_tokens_instrumented.exe  < $ROOT/inputs/test364 > ./outputs/t1317

./print_tokens_instrumented.exe  < $ROOT/inputs/test365 > ./outputs/t1318

./print_tokens_instrumented.exe  < $ROOT/inputs/test366 > ./outputs/t1319

./print_tokens_instrumented.exe  < $ROOT/inputs/test367 > ./outputs/t1320

./print_tokens_instrumented.exe  < $ROOT/inputs/test368 > ./outputs/t1321

./print_tokens_instrumented.exe  < $ROOT/inputs/test369 > ./outputs/t1322

./print_tokens_instrumented.exe  < $ROOT/inputs/test37 > ./outputs/t1323

./print_tokens_instrumented.exe  < $ROOT/inputs/test370 > ./outputs/t1324

./print_tokens_instrumented.exe  < $ROOT/inputs/test371 > ./outputs/t1325

./print_tokens_instrumented.exe  < $ROOT/inputs/test372 > ./outputs/t1326

./print_tokens_instrumented.exe  < $ROOT/inputs/test373 > ./outputs/t1327

./print_tokens_instrumented.exe  < $ROOT/inputs/test374 > ./outputs/t1328

./print_tokens_instrumented.exe  < $ROOT/inputs/test375 > ./outputs/t1329

./print_tokens_instrumented.exe  < $ROOT/inputs/test376 > ./outputs/t1330

./print_tokens_instrumented.exe  < $ROOT/inputs/test377 > ./outputs/t1331

./print_tokens_instrumented.exe  < $ROOT/inputs/test378 > ./outputs/t1332

./print_tokens_instrumented.exe  < $ROOT/inputs/test379 > ./outputs/t1333

./print_tokens_instrumented.exe  < $ROOT/inputs/test38 > ./outputs/t1334

./print_tokens_instrumented.exe  < $ROOT/inputs/test380 > ./outputs/t1335

./print_tokens_instrumented.exe  < $ROOT/inputs/test381 > ./outputs/t1336

./print_tokens_instrumented.exe  < $ROOT/inputs/test382 > ./outputs/t1337

./print_tokens_instrumented.exe  < $ROOT/inputs/test383 > ./outputs/t1338

./print_tokens_instrumented.exe  < $ROOT/inputs/test384 > ./outputs/t1339

./print_tokens_instrumented.exe  < $ROOT/inputs/test385 > ./outputs/t1340

./print_tokens_instrumented.exe  < $ROOT/inputs/test386 > ./outputs/t1341

./print_tokens_instrumented.exe  < $ROOT/inputs/test387 > ./outputs/t1342

./print_tokens_instrumented.exe  < $ROOT/inputs/test388 > ./outputs/t1343

./print_tokens_instrumented.exe  < $ROOT/inputs/test389 > ./outputs/t1344

./print_tokens_instrumented.exe  < $ROOT/inputs/test39 > ./outputs/t1345

./print_tokens_instrumented.exe  < $ROOT/inputs/test390 > ./outputs/t1346

./print_tokens_instrumented.exe  < $ROOT/inputs/test391 > ./outputs/t1347

./print_tokens_instrumented.exe  < $ROOT/inputs/test392 > ./outputs/t1348

./print_tokens_instrumented.exe  < $ROOT/inputs/test393 > ./outputs/t1349

./print_tokens_instrumented.exe  < $ROOT/inputs/test394 > ./outputs/t1350

./print_tokens_instrumented.exe  < $ROOT/inputs/test395 > ./outputs/t1351

./print_tokens_instrumented.exe  < $ROOT/inputs/test396 > ./outputs/t1352

./print_tokens_instrumented.exe  < $ROOT/inputs/test397 > ./outputs/t1353

./print_tokens_instrumented.exe  < $ROOT/inputs/test398 > ./outputs/t1354

./print_tokens_instrumented.exe  < $ROOT/inputs/test399 > ./outputs/t1355

./print_tokens_instrumented.exe  < $ROOT/inputs/test4 > ./outputs/t1356

./print_tokens_instrumented.exe  < $ROOT/inputs/test40 > ./outputs/t1357

./print_tokens_instrumented.exe  < $ROOT/inputs/test400 > ./outputs/t1358

./print_tokens_instrumented.exe  < $ROOT/inputs/test41 > ./outputs/t1359

./print_tokens_instrumented.exe  < $ROOT/inputs/test42 > ./outputs/t1360

./print_tokens_instrumented.exe  < $ROOT/inputs/test43 > ./outputs/t1361

./print_tokens_instrumented.exe  < $ROOT/inputs/test44 > ./outputs/t1362

./print_tokens_instrumented.exe  < $ROOT/inputs/test45 > ./outputs/t1363

./print_tokens_instrumented.exe  < $ROOT/inputs/test46 > ./outputs/t1364

./print_tokens_instrumented.exe  < $ROOT/inputs/test47 > ./outputs/t1365

./print_tokens_instrumented.exe  < $ROOT/inputs/test48 > ./outputs/t1366

./print_tokens_instrumented.exe  < $ROOT/inputs/test49 > ./outputs/t1367

./print_tokens_instrumented.exe  < $ROOT/inputs/test5 > ./outputs/t1368

./print_tokens_instrumented.exe  < $ROOT/inputs/test50 > ./outputs/t1369

./print_tokens_instrumented.exe  < $ROOT/inputs/test51 > ./outputs/t1370

./print_tokens_instrumented.exe  < $ROOT/inputs/test52 > ./outputs/t1371

./print_tokens_instrumented.exe  < $ROOT/inputs/test53 > ./outputs/t1372

./print_tokens_instrumented.exe  < $ROOT/inputs/test54 > ./outputs/t1373

./print_tokens_instrumented.exe  < $ROOT/inputs/test55 > ./outputs/t1374

./print_tokens_instrumented.exe  < $ROOT/inputs/test56 > ./outputs/t1375

./print_tokens_instrumented.exe  < $ROOT/inputs/test57 > ./outputs/t1376

./print_tokens_instrumented.exe  < $ROOT/inputs/test58 > ./outputs/t1377

./print_tokens_instrumented.exe  < $ROOT/inputs/test59 > ./outputs/t1378

./print_tokens_instrumented.exe  < $ROOT/inputs/test6 > ./outputs/t1379

./print_tokens_instrumented.exe  < $ROOT/inputs/test60 > ./outputs/t1380

./print_tokens_instrumented.exe  < $ROOT/inputs/test61 > ./outputs/t1381

./print_tokens_instrumented.exe  < $ROOT/inputs/test62 > ./outputs/t1382

./print_tokens_instrumented.exe  < $ROOT/inputs/test63 > ./outputs/t1383

./print_tokens_instrumented.exe  < $ROOT/inputs/test64 > ./outputs/t1384

./print_tokens_instrumented.exe  < $ROOT/inputs/test65 > ./outputs/t1385

./print_tokens_instrumented.exe  < $ROOT/inputs/test66 > ./outputs/t1386

./print_tokens_instrumented.exe  < $ROOT/inputs/test67 > ./outputs/t1387

./print_tokens_instrumented.exe  < $ROOT/inputs/test68 > ./outputs/t1388

./print_tokens_instrumented.exe  < $ROOT/inputs/test69 > ./outputs/t1389

./print_tokens_instrumented.exe  < $ROOT/inputs/test7 > ./outputs/t1390

./print_tokens_instrumented.exe  < $ROOT/inputs/test70 > ./outputs/t1391

./print_tokens_instrumented.exe  < $ROOT/inputs/test71 > ./outputs/t1392

./print_tokens_instrumented.exe  < $ROOT/inputs/test72 > ./outputs/t1393

./print_tokens_instrumented.exe  < $ROOT/inputs/test73 > ./outputs/t1394

./print_tokens_instrumented.exe  < $ROOT/inputs/test74 > ./outputs/t1395

./print_tokens_instrumented.exe  < $ROOT/inputs/test75 > ./outputs/t1396

./print_tokens_instrumented.exe  < $ROOT/inputs/test76 > ./outputs/t1397

./print_tokens_instrumented.exe  < $ROOT/inputs/test77 > ./outputs/t1398

./print_tokens_instrumented.exe  < $ROOT/inputs/test78 > ./outputs/t1399

./print_tokens_instrumented.exe  < $ROOT/inputs/test79 > ./outputs/t1400

./print_tokens_instrumented.exe  < $ROOT/inputs/test8 > ./outputs/t1401

./print_tokens_instrumented.exe  < $ROOT/inputs/test80 > ./outputs/t1402

./print_tokens_instrumented.exe  < $ROOT/inputs/test81 > ./outputs/t1403

./print_tokens_instrumented.exe  < $ROOT/inputs/test82 > ./outputs/t1404

./print_tokens_instrumented.exe  < $ROOT/inputs/test83 > ./outputs/t1405

./print_tokens_instrumented.exe  < $ROOT/inputs/test84 > ./outputs/t1406

./print_tokens_instrumented.exe  < $ROOT/inputs/test85 > ./outputs/t1407

./print_tokens_instrumented.exe  < $ROOT/inputs/test86 > ./outputs/t1408

./print_tokens_instrumented.exe  < $ROOT/inputs/test87 > ./outputs/t1409

./print_tokens_instrumented.exe  < $ROOT/inputs/test88 > ./outputs/t1410

./print_tokens_instrumented.exe  < $ROOT/inputs/test89 > ./outputs/t1411

./print_tokens_instrumented.exe  < $ROOT/inputs/test9 > ./outputs/t1412

./print_tokens_instrumented.exe  < $ROOT/inputs/test90 > ./outputs/t1413

./print_tokens_instrumented.exe  < $ROOT/inputs/test91 > ./outputs/t1414

./print_tokens_instrumented.exe  < $ROOT/inputs/test92 > ./outputs/t1415

./print_tokens_instrumented.exe  < $ROOT/inputs/test93 > ./outputs/t1416

./print_tokens_instrumented.exe  < $ROOT/inputs/test94 > ./outputs/t1417

./print_tokens_instrumented.exe  < $ROOT/inputs/test95 > ./outputs/t1418

./print_tokens_instrumented.exe  < $ROOT/inputs/test96 > ./outputs/t1419

./print_tokens_instrumented.exe  < $ROOT/inputs/test97 > ./outputs/t1420

./print_tokens_instrumented.exe  < $ROOT/inputs/test98 > ./outputs/t1421

./print_tokens_instrumented.exe  < $ROOT/inputs/test99 > ./outputs/t1422

./print_tokens_instrumented.exe  < $ROOT/inputs/ts500 > ./outputs/t1423

./print_tokens_instrumented.exe  < $ROOT/inputs/ts501 > ./outputs/t1424

./print_tokens_instrumented.exe  < $ROOT/inputs/ts502 > ./outputs/t1425

./print_tokens_instrumented.exe  < $ROOT/inputs/ts503 > ./outputs/t1426

./print_tokens_instrumented.exe  < $ROOT/inputs/ts504 > ./outputs/t1427

./print_tokens_instrumented.exe  < $ROOT/inputs/ts505 > ./outputs/t1428

./print_tokens_instrumented.exe  < $ROOT/inputs/ts506 > ./outputs/t1429

./print_tokens_instrumented.exe  < $ROOT/inputs/ts507 > ./outputs/t1430

./print_tokens_instrumented.exe  < $ROOT/inputs/ts508 > ./outputs/t1431

./print_tokens_instrumented.exe  < $ROOT/inputs/ts509 > ./outputs/t1432

./print_tokens_instrumented.exe  < $ROOT/inputs/ts510 > ./outputs/t1433

./print_tokens_instrumented.exe  < $ROOT/inputs/ts511 > ./outputs/t1434

./print_tokens_instrumented.exe  < $ROOT/inputs/ts512 > ./outputs/t1435

./print_tokens_instrumented.exe  < $ROOT/inputs/ts513 > ./outputs/t1436

./print_tokens_instrumented.exe  < $ROOT/inputs/ts514 > ./outputs/t1437

./print_tokens_instrumented.exe  < $ROOT/inputs/ts515 > ./outputs/t1438

./print_tokens_instrumented.exe  < $ROOT/inputs/ts516 > ./outputs/t1439

./print_tokens_instrumented.exe  < $ROOT/inputs/ts517 > ./outputs/t1440

./print_tokens_instrumented.exe  < $ROOT/inputs/ts518 > ./outputs/t1441

./print_tokens_instrumented.exe  < $ROOT/inputs/ts519 > ./outputs/t1442

./print_tokens_instrumented.exe  < $ROOT/inputs/ts520 > ./outputs/t1443

./print_tokens_instrumented.exe  < $ROOT/inputs/ts521 > ./outputs/t1444

./print_tokens_instrumented.exe  < $ROOT/inputs/ts522 > ./outputs/t1445

./print_tokens_instrumented.exe  < $ROOT/inputs/ts523 > ./outputs/t1446

./print_tokens_instrumented.exe  < $ROOT/inputs/ts524 > ./outputs/t1447

./print_tokens_instrumented.exe  < $ROOT/inputs/ts525 > ./outputs/t1448

./print_tokens_instrumented.exe  < $ROOT/inputs/ts526 > ./outputs/t1449

./print_tokens_instrumented.exe  < $ROOT/inputs/ts527 > ./outputs/t1450

./print_tokens_instrumented.exe  < $ROOT/inputs/ts528 > ./outputs/t1451

./print_tokens_instrumented.exe  < $ROOT/inputs/ts529 > ./outputs/t1452

./print_tokens_instrumented.exe  < $ROOT/inputs/ts530 > ./outputs/t1453

./print_tokens_instrumented.exe  < $ROOT/inputs/ts531 > ./outputs/t1454

./print_tokens_instrumented.exe  < $ROOT/inputs/ts532 > ./outputs/t1455

./print_tokens_instrumented.exe  < $ROOT/inputs/ts533 > ./outputs/t1456

./print_tokens_instrumented.exe  < $ROOT/inputs/ts534 > ./outputs/t1457

./print_tokens_instrumented.exe  < $ROOT/inputs/ts535 > ./outputs/t1458

./print_tokens_instrumented.exe  < $ROOT/inputs/ts536 > ./outputs/t1459

./print_tokens_instrumented.exe  < $ROOT/inputs/ts537 > ./outputs/t1460

./print_tokens_instrumented.exe  < $ROOT/inputs/ts538 > ./outputs/t1461

./print_tokens_instrumented.exe  < $ROOT/inputs/ts539 > ./outputs/t1462

./print_tokens_instrumented.exe  < $ROOT/inputs/ts540 > ./outputs/t1463

./print_tokens_instrumented.exe  < $ROOT/inputs/ts541 > ./outputs/t1464

./print_tokens_instrumented.exe  < $ROOT/inputs/ts542 > ./outputs/t1465

./print_tokens_instrumented.exe  < $ROOT/inputs/ts543 > ./outputs/t1466

./print_tokens_instrumented.exe  < $ROOT/inputs/ts544 > ./outputs/t1467

./print_tokens_instrumented.exe  < $ROOT/inputs/ts545 > ./outputs/t1468

./print_tokens_instrumented.exe  < $ROOT/inputs/ts546 > ./outputs/t1469

./print_tokens_instrumented.exe  < $ROOT/inputs/ts547 > ./outputs/t1470

./print_tokens_instrumented.exe  < $ROOT/inputs/ts548 > ./outputs/t1471

./print_tokens_instrumented.exe  < $ROOT/inputs/ts549 > ./outputs/t1472

./print_tokens_instrumented.exe  < $ROOT/inputs/ts550 > ./outputs/t1473

./print_tokens_instrumented.exe  < $ROOT/inputs/ts551 > ./outputs/t1474

./print_tokens_instrumented.exe  < $ROOT/inputs/ts552 > ./outputs/t1475

./print_tokens_instrumented.exe  < $ROOT/inputs/ts553 > ./outputs/t1476

./print_tokens_instrumented.exe  < $ROOT/inputs/ts554 > ./outputs/t1477

./print_tokens_instrumented.exe  < $ROOT/inputs/ts555 > ./outputs/t1478

./print_tokens_instrumented.exe  < $ROOT/inputs/ts556 > ./outputs/t1479

./print_tokens_instrumented.exe  < $ROOT/inputs/ts557 > ./outputs/t1480

./print_tokens_instrumented.exe  < $ROOT/inputs/ts558 > ./outputs/t1481

./print_tokens_instrumented.exe  < $ROOT/inputs/ts559 > ./outputs/t1482

./print_tokens_instrumented.exe  < $ROOT/inputs/ts560 > ./outputs/t1483

./print_tokens_instrumented.exe  < $ROOT/inputs/ts561 > ./outputs/t1484

./print_tokens_instrumented.exe  < $ROOT/inputs/ts562 > ./outputs/t1485

./print_tokens_instrumented.exe  < $ROOT/inputs/ts563 > ./outputs/t1486

./print_tokens_instrumented.exe  < $ROOT/inputs/ts564 > ./outputs/t1487

./print_tokens_instrumented.exe  < $ROOT/inputs/ts565 > ./outputs/t1488

./print_tokens_instrumented.exe  < $ROOT/inputs/ts566 > ./outputs/t1489

./print_tokens_instrumented.exe  < $ROOT/inputs/ts567 > ./outputs/t1490

./print_tokens_instrumented.exe  < $ROOT/inputs/ts568 > ./outputs/t1491

./print_tokens_instrumented.exe  < $ROOT/inputs/ts569 > ./outputs/t1492

./print_tokens_instrumented.exe  < $ROOT/inputs/ts570 > ./outputs/t1493

./print_tokens_instrumented.exe  < $ROOT/inputs/ts571 > ./outputs/t1494

./print_tokens_instrumented.exe  < $ROOT/inputs/ts572 > ./outputs/t1495

./print_tokens_instrumented.exe  < $ROOT/inputs/ts573 > ./outputs/t1496

./print_tokens_instrumented.exe  < $ROOT/inputs/ts574 > ./outputs/t1497

./print_tokens_instrumented.exe  < $ROOT/inputs/ts575 > ./outputs/t1498

./print_tokens_instrumented.exe  < $ROOT/inputs/ts576 > ./outputs/t1499

./print_tokens_instrumented.exe  < $ROOT/inputs/ts577 > ./outputs/t1500

./print_tokens_instrumented.exe  < $ROOT/inputs/ts578 > ./outputs/t1501

./print_tokens_instrumented.exe  < $ROOT/inputs/ts579 > ./outputs/t1502

./print_tokens_instrumented.exe  < $ROOT/inputs/ts580 > ./outputs/t1503

./print_tokens_instrumented.exe  < $ROOT/inputs/ts581 > ./outputs/t1504

./print_tokens_instrumented.exe  < $ROOT/inputs/ts582 > ./outputs/t1505

./print_tokens_instrumented.exe  < $ROOT/inputs/ts583 > ./outputs/t1506

./print_tokens_instrumented.exe  < $ROOT/inputs/ts584 > ./outputs/t1507

./print_tokens_instrumented.exe  < $ROOT/inputs/ts585 > ./outputs/t1508

./print_tokens_instrumented.exe  < $ROOT/inputs/ts586 > ./outputs/t1509

./print_tokens_instrumented.exe  < $ROOT/inputs/ts587 > ./outputs/t1510

./print_tokens_instrumented.exe  < $ROOT/inputs/ts588 > ./outputs/t1511

./print_tokens_instrumented.exe  < $ROOT/inputs/ts589 > ./outputs/t1512

./print_tokens_instrumented.exe  < $ROOT/inputs/ts590 > ./outputs/t1513

./print_tokens_instrumented.exe  < $ROOT/inputs/ts591 > ./outputs/t1514

./print_tokens_instrumented.exe  < $ROOT/inputs/ts592 > ./outputs/t1515

./print_tokens_instrumented.exe  < $ROOT/inputs/ts593 > ./outputs/t1516

./print_tokens_instrumented.exe  < $ROOT/inputs/ts594 > ./outputs/t1517

./print_tokens_instrumented.exe  < $ROOT/inputs/ts595 > ./outputs/t1518

./print_tokens_instrumented.exe  < $ROOT/inputs/ts596 > ./outputs/t1519

./print_tokens_instrumented.exe  < $ROOT/inputs/ts597 > ./outputs/t1520

./print_tokens_instrumented.exe  < $ROOT/inputs/ts598 > ./outputs/t1521

./print_tokens_instrumented.exe  < $ROOT/inputs/ts599 > ./outputs/t1522

./print_tokens_instrumented.exe  < $ROOT/inputs/ts600 > ./outputs/t1523

./print_tokens_instrumented.exe  < $ROOT/inputs/ts601 > ./outputs/t1524

./print_tokens_instrumented.exe  < $ROOT/inputs/ts603 > ./outputs/t1525

./print_tokens_instrumented.exe  < $ROOT/inputs/ts604 > ./outputs/t1526

./print_tokens_instrumented.exe  < $ROOT/inputs/ts605 > ./outputs/t1527

./print_tokens_instrumented.exe  < $ROOT/inputs/ts606 > ./outputs/t1528

./print_tokens_instrumented.exe  < $ROOT/inputs/ts607 > ./outputs/t1529

./print_tokens_instrumented.exe  < $ROOT/inputs/ts608 > ./outputs/t1530

./print_tokens_instrumented.exe  < $ROOT/inputs/ts609 > ./outputs/t1531

./print_tokens_instrumented.exe  < $ROOT/inputs/ts610 > ./outputs/t1532

./print_tokens_instrumented.exe  < $ROOT/inputs/ts611 > ./outputs/t1533

./print_tokens_instrumented.exe  < $ROOT/inputs/ts612 > ./outputs/t1534

./print_tokens_instrumented.exe  < $ROOT/inputs/ts613 > ./outputs/t1535

./print_tokens_instrumented.exe  < $ROOT/inputs/ts614 > ./outputs/t1536

./print_tokens_instrumented.exe  < $ROOT/inputs/ts615 > ./outputs/t1537

./print_tokens_instrumented.exe  < $ROOT/inputs/ts616 > ./outputs/t1538

./print_tokens_instrumented.exe  < $ROOT/inputs/ts617 > ./outputs/t1539

./print_tokens_instrumented.exe  < $ROOT/inputs/ts618 > ./outputs/t1540

./print_tokens_instrumented.exe  < $ROOT/inputs/ts619 > ./outputs/t1541

./print_tokens_instrumented.exe  < $ROOT/inputs/ts620 > ./outputs/t1542

./print_tokens_instrumented.exe  < $ROOT/inputs/ts621 > ./outputs/t1543

./print_tokens_instrumented.exe  < $ROOT/inputs/ts622 > ./outputs/t1544

./print_tokens_instrumented.exe  < $ROOT/inputs/ts623 > ./outputs/t1545

./print_tokens_instrumented.exe  < $ROOT/inputs/ts624 > ./outputs/t1546

./print_tokens_instrumented.exe  < $ROOT/inputs/ts625 > ./outputs/t1547

./print_tokens_instrumented.exe  < $ROOT/inputs/ts626 > ./outputs/t1548

./print_tokens_instrumented.exe  < $ROOT/inputs/ts627 > ./outputs/t1549

./print_tokens_instrumented.exe  < $ROOT/inputs/ts628 > ./outputs/t1550

./print_tokens_instrumented.exe  < $ROOT/inputs/ts629 > ./outputs/t1551

./print_tokens_instrumented.exe  < $ROOT/inputs/ts630 > ./outputs/t1552

./print_tokens_instrumented.exe  < $ROOT/inputs/ts631 > ./outputs/t1553

./print_tokens_instrumented.exe  < $ROOT/inputs/ts632 > ./outputs/t1554

./print_tokens_instrumented.exe  < $ROOT/inputs/ts633 > ./outputs/t1555

./print_tokens_instrumented.exe  < $ROOT/inputs/ts634 > ./outputs/t1556

./print_tokens_instrumented.exe  < $ROOT/inputs/ts635 > ./outputs/t1557

./print_tokens_instrumented.exe  < $ROOT/inputs/ts636 > ./outputs/t1558

./print_tokens_instrumented.exe  < $ROOT/inputs/ts637 > ./outputs/t1559

./print_tokens_instrumented.exe  < $ROOT/inputs/ts638 > ./outputs/t1560

./print_tokens_instrumented.exe  < $ROOT/inputs/ts639 > ./outputs/t1561

./print_tokens_instrumented.exe  < $ROOT/inputs/ts640 > ./outputs/t1562

./print_tokens_instrumented.exe  < $ROOT/inputs/ts641 > ./outputs/t1563

./print_tokens_instrumented.exe  < $ROOT/inputs/ts642 > ./outputs/t1564

./print_tokens_instrumented.exe  < $ROOT/inputs/ts643 > ./outputs/t1565

./print_tokens_instrumented.exe  < $ROOT/inputs/ts644 > ./outputs/t1566

./print_tokens_instrumented.exe  < $ROOT/inputs/ts645 > ./outputs/t1567

./print_tokens_instrumented.exe  < $ROOT/inputs/ts646 > ./outputs/t1568

./print_tokens_instrumented.exe  < $ROOT/inputs/ts647 > ./outputs/t1569

./print_tokens_instrumented.exe  < $ROOT/inputs/ts648 > ./outputs/t1570

./print_tokens_instrumented.exe  < $ROOT/inputs/ts649 > ./outputs/t1571

./print_tokens_instrumented.exe  < $ROOT/inputs/ts650 > ./outputs/t1572

./print_tokens_instrumented.exe  < $ROOT/inputs/ts651 > ./outputs/t1573

./print_tokens_instrumented.exe  < $ROOT/inputs/ts652 > ./outputs/t1574

./print_tokens_instrumented.exe  < $ROOT/inputs/ts653 > ./outputs/t1575

./print_tokens_instrumented.exe  < $ROOT/inputs/ts654 > ./outputs/t1576

./print_tokens_instrumented.exe  < $ROOT/inputs/ts655 > ./outputs/t1577

./print_tokens_instrumented.exe  < $ROOT/inputs/ts656 > ./outputs/t1578

./print_tokens_instrumented.exe  < $ROOT/inputs/ts657 > ./outputs/t1579

./print_tokens_instrumented.exe  < $ROOT/inputs/ts658 > ./outputs/t1580

./print_tokens_instrumented.exe  < $ROOT/inputs/ts659 > ./outputs/t1581

./print_tokens_instrumented.exe  < $ROOT/inputs/ts660 > ./outputs/t1582

./print_tokens_instrumented.exe  < $ROOT/inputs/ts661 > ./outputs/t1583

./print_tokens_instrumented.exe  < $ROOT/inputs/ts662 > ./outputs/t1584

./print_tokens_instrumented.exe  < $ROOT/inputs/ts663 > ./outputs/t1585

./print_tokens_instrumented.exe  < $ROOT/inputs/ts664 > ./outputs/t1586

./print_tokens_instrumented.exe  < $ROOT/inputs/ts665 > ./outputs/t1587

./print_tokens_instrumented.exe  < $ROOT/inputs/ts666 > ./outputs/t1588

./print_tokens_instrumented.exe  < $ROOT/inputs/ts667 > ./outputs/t1589

./print_tokens_instrumented.exe  < $ROOT/inputs/ts668 > ./outputs/t1590

./print_tokens_instrumented.exe  < $ROOT/inputs/ts669 > ./outputs/t1591

./print_tokens_instrumented.exe  < $ROOT/inputs/ts670 > ./outputs/t1592

./print_tokens_instrumented.exe  < $ROOT/inputs/ts671 > ./outputs/t1593

./print_tokens_instrumented.exe  < $ROOT/inputs/ts672 > ./outputs/t1594

./print_tokens_instrumented.exe  < $ROOT/inputs/ts673 > ./outputs/t1595

./print_tokens_instrumented.exe  < $ROOT/inputs/ts674 > ./outputs/t1596

./print_tokens_instrumented.exe  < $ROOT/inputs/ts675 > ./outputs/t1597

./print_tokens_instrumented.exe  < $ROOT/inputs/ts676 > ./outputs/t1598

./print_tokens_instrumented.exe  < $ROOT/inputs/ts677 > ./outputs/t1599

./print_tokens_instrumented.exe  < $ROOT/inputs/ts678 > ./outputs/t1600

./print_tokens_instrumented.exe  < $ROOT/inputs/ts679 > ./outputs/t1601

./print_tokens_instrumented.exe  < $ROOT/inputs/ts680 > ./outputs/t1602

./print_tokens_instrumented.exe  < $ROOT/inputs/ts681 > ./outputs/t1603

./print_tokens_instrumented.exe  < $ROOT/inputs/ts682 > ./outputs/t1604

./print_tokens_instrumented.exe  < $ROOT/inputs/ts683 > ./outputs/t1605

./print_tokens_instrumented.exe  < $ROOT/inputs/ts684 > ./outputs/t1606

./print_tokens_instrumented.exe  < $ROOT/inputs/ts685 > ./outputs/t1607

./print_tokens_instrumented.exe  < $ROOT/inputs/ts686 > ./outputs/t1608

./print_tokens_instrumented.exe  < $ROOT/inputs/ts687 > ./outputs/t1609

./print_tokens_instrumented.exe  < $ROOT/inputs/ts688 > ./outputs/t1610

./print_tokens_instrumented.exe  < $ROOT/inputs/ts689 > ./outputs/t1611

./print_tokens_instrumented.exe  < $ROOT/inputs/ts690 > ./outputs/t1612

./print_tokens_instrumented.exe  < $ROOT/inputs/ts691 > ./outputs/t1613

./print_tokens_instrumented.exe  < $ROOT/inputs/ts692 > ./outputs/t1614

./print_tokens_instrumented.exe  < $ROOT/inputs/ts693 > ./outputs/t1615

./print_tokens_instrumented.exe  < $ROOT/inputs/ts694 > ./outputs/t1616

./print_tokens_instrumented.exe  < $ROOT/inputs/ts695 > ./outputs/t1617

./print_tokens_instrumented.exe  < $ROOT/inputs/ts696 > ./outputs/t1618

./print_tokens_instrumented.exe  < $ROOT/inputs/ts697 > ./outputs/t1619

./print_tokens_instrumented.exe  < $ROOT/inputs/ts698 > ./outputs/t1620

./print_tokens_instrumented.exe  < $ROOT/inputs/ts699 > ./outputs/t1621

./print_tokens_instrumented.exe  < $ROOT/inputs/ts701 > ./outputs/t1622

./print_tokens_instrumented.exe  < $ROOT/inputs/ts702 > ./outputs/t1623

./print_tokens_instrumented.exe  < $ROOT/inputs/ts703 > ./outputs/t1624

./print_tokens_instrumented.exe  < $ROOT/inputs/ts704 > ./outputs/t1625

./print_tokens_instrumented.exe  < $ROOT/inputs/ts705 > ./outputs/t1626

./print_tokens_instrumented.exe  < $ROOT/inputs/ts706 > ./outputs/t1627

./print_tokens_instrumented.exe  < $ROOT/inputs/ts707 > ./outputs/t1628

./print_tokens_instrumented.exe  < $ROOT/inputs/ts708 > ./outputs/t1629

./print_tokens_instrumented.exe  < $ROOT/inputs/ts709 > ./outputs/t1630

./print_tokens_instrumented.exe  < $ROOT/inputs/ts710 > ./outputs/t1631

./print_tokens_instrumented.exe  < $ROOT/inputs/ts711 > ./outputs/t1632

./print_tokens_instrumented.exe  < $ROOT/inputs/ts712 > ./outputs/t1633

./print_tokens_instrumented.exe  < $ROOT/inputs/ts713 > ./outputs/t1634

./print_tokens_instrumented.exe  < $ROOT/inputs/ts714 > ./outputs/t1635

./print_tokens_instrumented.exe  < $ROOT/inputs/ts715 > ./outputs/t1636

./print_tokens_instrumented.exe  < $ROOT/inputs/ts716 > ./outputs/t1637

./print_tokens_instrumented.exe  < $ROOT/inputs/ts717 > ./outputs/t1638

./print_tokens_instrumented.exe  < $ROOT/inputs/ts718 > ./outputs/t1639

./print_tokens_instrumented.exe  < $ROOT/inputs/ts719 > ./outputs/t1640

./print_tokens_instrumented.exe  < $ROOT/inputs/ts720 > ./outputs/t1641

./print_tokens_instrumented.exe  < $ROOT/inputs/ts721 > ./outputs/t1642

./print_tokens_instrumented.exe  < $ROOT/inputs/ts722 > ./outputs/t1643

./print_tokens_instrumented.exe  < $ROOT/inputs/ts723 > ./outputs/t1644

./print_tokens_instrumented.exe  < $ROOT/inputs/ts724 > ./outputs/t1645

./print_tokens_instrumented.exe  < $ROOT/inputs/ts725 > ./outputs/t1646

./print_tokens_instrumented.exe  < $ROOT/inputs/ts726 > ./outputs/t1647

./print_tokens_instrumented.exe  < $ROOT/inputs/ts727 > ./outputs/t1648

./print_tokens_instrumented.exe  < $ROOT/inputs/ts728 > ./outputs/t1649

./print_tokens_instrumented.exe  < $ROOT/inputs/ts729 > ./outputs/t1650

./print_tokens_instrumented.exe  < $ROOT/inputs/ts730 > ./outputs/t1651

./print_tokens_instrumented.exe  < $ROOT/inputs/ts731 > ./outputs/t1652

./print_tokens_instrumented.exe  < $ROOT/inputs/ts732 > ./outputs/t1653

./print_tokens_instrumented.exe  < $ROOT/inputs/ts733 > ./outputs/t1654

./print_tokens_instrumented.exe  < $ROOT/inputs/ts734 > ./outputs/t1655

./print_tokens_instrumented.exe  < $ROOT/inputs/ts735 > ./outputs/t1656

./print_tokens_instrumented.exe  < $ROOT/inputs/ts736 > ./outputs/t1657

./print_tokens_instrumented.exe  < $ROOT/inputs/ts737 > ./outputs/t1658

./print_tokens_instrumented.exe  < $ROOT/inputs/ts738 > ./outputs/t1659

./print_tokens_instrumented.exe  < $ROOT/inputs/ts739 > ./outputs/t1660

./print_tokens_instrumented.exe  < $ROOT/inputs/ts740 > ./outputs/t1661

./print_tokens_instrumented.exe  < $ROOT/inputs/ts741 > ./outputs/t1662

./print_tokens_instrumented.exe  < $ROOT/inputs/ts742 > ./outputs/t1663

./print_tokens_instrumented.exe  < $ROOT/inputs/ts743 > ./outputs/t1664

./print_tokens_instrumented.exe  < $ROOT/inputs/ts744 > ./outputs/t1665

./print_tokens_instrumented.exe  < $ROOT/inputs/ts745 > ./outputs/t1666

./print_tokens_instrumented.exe  < $ROOT/inputs/ts746 > ./outputs/t1667

./print_tokens_instrumented.exe  < $ROOT/inputs/ts747 > ./outputs/t1668

./print_tokens_instrumented.exe  < $ROOT/inputs/ts748 > ./outputs/t1669

./print_tokens_instrumented.exe  < $ROOT/inputs/ts749 > ./outputs/t1670

./print_tokens_instrumented.exe  < $ROOT/inputs/ts750 > ./outputs/t1671

./print_tokens_instrumented.exe  < $ROOT/inputs/ts751 > ./outputs/t1672

./print_tokens_instrumented.exe  < $ROOT/inputs/ts752 > ./outputs/t1673

./print_tokens_instrumented.exe  < $ROOT/inputs/ts753 > ./outputs/t1674

./print_tokens_instrumented.exe  < $ROOT/inputs/ts754 > ./outputs/t1675

./print_tokens_instrumented.exe  < $ROOT/inputs/ts755 > ./outputs/t1676

./print_tokens_instrumented.exe  < $ROOT/inputs/ts756 > ./outputs/t1677

./print_tokens_instrumented.exe  < $ROOT/inputs/ts757 > ./outputs/t1678

./print_tokens_instrumented.exe  < $ROOT/inputs/ts758 > ./outputs/t1679

./print_tokens_instrumented.exe  < $ROOT/inputs/ts759 > ./outputs/t1680

./print_tokens_instrumented.exe  < $ROOT/inputs/ts760 > ./outputs/t1681

./print_tokens_instrumented.exe  < $ROOT/inputs/ts761 > ./outputs/t1682

./print_tokens_instrumented.exe  < $ROOT/inputs/ts762 > ./outputs/t1683

./print_tokens_instrumented.exe  < $ROOT/inputs/ts763 > ./outputs/t1684

./print_tokens_instrumented.exe  < $ROOT/inputs/ts764 > ./outputs/t1685

./print_tokens_instrumented.exe  < $ROOT/inputs/ts765 > ./outputs/t1686

./print_tokens_instrumented.exe  < $ROOT/inputs/ts766 > ./outputs/t1687

./print_tokens_instrumented.exe  < $ROOT/inputs/ts767 > ./outputs/t1688

./print_tokens_instrumented.exe  < $ROOT/inputs/ts768 > ./outputs/t1689

./print_tokens_instrumented.exe  < $ROOT/inputs/ts769 > ./outputs/t1690

./print_tokens_instrumented.exe  < $ROOT/inputs/ts770 > ./outputs/t1691

./print_tokens_instrumented.exe  < $ROOT/inputs/ts771 > ./outputs/t1692

./print_tokens_instrumented.exe  < $ROOT/inputs/ts772 > ./outputs/t1693

./print_tokens_instrumented.exe  < $ROOT/inputs/ts773 > ./outputs/t1694

./print_tokens_instrumented.exe  < $ROOT/inputs/ts774 > ./outputs/t1695

./print_tokens_instrumented.exe  < $ROOT/inputs/ts775 > ./outputs/t1696

./print_tokens_instrumented.exe  < $ROOT/inputs/ts776 > ./outputs/t1697

./print_tokens_instrumented.exe  < $ROOT/inputs/ts777 > ./outputs/t1698

./print_tokens_instrumented.exe  < $ROOT/inputs/ts778 > ./outputs/t1699

./print_tokens_instrumented.exe  < $ROOT/inputs/ts779 > ./outputs/t1700

./print_tokens_instrumented.exe  < $ROOT/inputs/ts780 > ./outputs/t1701

./print_tokens_instrumented.exe  < $ROOT/inputs/ts781 > ./outputs/t1702

./print_tokens_instrumented.exe  < $ROOT/inputs/ts782 > ./outputs/t1703

./print_tokens_instrumented.exe  < $ROOT/inputs/ts783 > ./outputs/t1704

./print_tokens_instrumented.exe  < $ROOT/inputs/ts784 > ./outputs/t1705

./print_tokens_instrumented.exe  < $ROOT/inputs/ts785 > ./outputs/t1706

./print_tokens_instrumented.exe  < $ROOT/inputs/ts786 > ./outputs/t1707

./print_tokens_instrumented.exe  < $ROOT/inputs/ts787 > ./outputs/t1708

./print_tokens_instrumented.exe  < $ROOT/inputs/ts788 > ./outputs/t1709

./print_tokens_instrumented.exe  < $ROOT/inputs/ts789 > ./outputs/t1710

./print_tokens_instrumented.exe  < $ROOT/inputs/ts790 > ./outputs/t1711

./print_tokens_instrumented.exe  < $ROOT/inputs/ts791 > ./outputs/t1712

./print_tokens_instrumented.exe  < $ROOT/inputs/ts792 > ./outputs/t1713

./print_tokens_instrumented.exe  < $ROOT/inputs/ts793 > ./outputs/t1714

./print_tokens_instrumented.exe  < $ROOT/inputs/ts794 > ./outputs/t1715

./print_tokens_instrumented.exe  < $ROOT/inputs/ts795 > ./outputs/t1716

./print_tokens_instrumented.exe  < $ROOT/inputs/ts796 > ./outputs/t1717

./print_tokens_instrumented.exe  < $ROOT/inputs/ts797 > ./outputs/t1718

./print_tokens_instrumented.exe  < $ROOT/inputs/ts798 > ./outputs/t1719

./print_tokens_instrumented.exe  < $ROOT/inputs/ts799 > ./outputs/t1720

./print_tokens_instrumented.exe  < $ROOT/inputs/ts800 > ./outputs/t1721

./print_tokens_instrumented.exe  < $ROOT/inputs/tst1 > ./outputs/t1722

./print_tokens_instrumented.exe  < $ROOT/inputs/tst10 > ./outputs/t1723

./print_tokens_instrumented.exe  < $ROOT/inputs/tst100 > ./outputs/t1724

./print_tokens_instrumented.exe  < $ROOT/inputs/tst101 > ./outputs/t1725

./print_tokens_instrumented.exe  < $ROOT/inputs/tst102 > ./outputs/t1726

./print_tokens_instrumented.exe  < $ROOT/inputs/tst103 > ./outputs/t1727

./print_tokens_instrumented.exe  < $ROOT/inputs/tst104 > ./outputs/t1728

./print_tokens_instrumented.exe  < $ROOT/inputs/tst105 > ./outputs/t1729

./print_tokens_instrumented.exe  < $ROOT/inputs/tst106 > ./outputs/t1730

./print_tokens_instrumented.exe  < $ROOT/inputs/tst107 > ./outputs/t1731

./print_tokens_instrumented.exe  < $ROOT/inputs/tst108 > ./outputs/t1732

./print_tokens_instrumented.exe  < $ROOT/inputs/tst109 > ./outputs/t1733

./print_tokens_instrumented.exe  < $ROOT/inputs/tst11 > ./outputs/t1734

./print_tokens_instrumented.exe  < $ROOT/inputs/tst110 > ./outputs/t1735

./print_tokens_instrumented.exe  < $ROOT/inputs/tst111 > ./outputs/t1736

./print_tokens_instrumented.exe  < $ROOT/inputs/tst112 > ./outputs/t1737

./print_tokens_instrumented.exe  < $ROOT/inputs/tst113 > ./outputs/t1738

./print_tokens_instrumented.exe  < $ROOT/inputs/tst114 > ./outputs/t1739

./print_tokens_instrumented.exe  < $ROOT/inputs/tst115 > ./outputs/t1740

./print_tokens_instrumented.exe  < $ROOT/inputs/tst116 > ./outputs/t1741

./print_tokens_instrumented.exe  < $ROOT/inputs/tst117 > ./outputs/t1742

./print_tokens_instrumented.exe  < $ROOT/inputs/tst118 > ./outputs/t1743

./print_tokens_instrumented.exe  < $ROOT/inputs/tst119 > ./outputs/t1744

./print_tokens_instrumented.exe  < $ROOT/inputs/tst12 > ./outputs/t1745

./print_tokens_instrumented.exe  < $ROOT/inputs/tst120 > ./outputs/t1746

./print_tokens_instrumented.exe  < $ROOT/inputs/tst121 > ./outputs/t1747

./print_tokens_instrumented.exe  < $ROOT/inputs/tst122 > ./outputs/t1748

./print_tokens_instrumented.exe  < $ROOT/inputs/tst123 > ./outputs/t1749

./print_tokens_instrumented.exe  < $ROOT/inputs/tst124 > ./outputs/t1750

./print_tokens_instrumented.exe  < $ROOT/inputs/tst125 > ./outputs/t1751

./print_tokens_instrumented.exe  < $ROOT/inputs/tst126 > ./outputs/t1752

./print_tokens_instrumented.exe  < $ROOT/inputs/tst127 > ./outputs/t1753

./print_tokens_instrumented.exe  < $ROOT/inputs/tst128 > ./outputs/t1754

./print_tokens_instrumented.exe  < $ROOT/inputs/tst129 > ./outputs/t1755

./print_tokens_instrumented.exe  < $ROOT/inputs/tst13 > ./outputs/t1756

./print_tokens_instrumented.exe  < $ROOT/inputs/tst130 > ./outputs/t1757

./print_tokens_instrumented.exe  < $ROOT/inputs/tst131 > ./outputs/t1758

./print_tokens_instrumented.exe  < $ROOT/inputs/tst132 > ./outputs/t1759

./print_tokens_instrumented.exe  < $ROOT/inputs/tst133 > ./outputs/t1760

./print_tokens_instrumented.exe  < $ROOT/inputs/tst134 > ./outputs/t1761

./print_tokens_instrumented.exe  < $ROOT/inputs/tst135 > ./outputs/t1762

./print_tokens_instrumented.exe  < $ROOT/inputs/tst136 > ./outputs/t1763

./print_tokens_instrumented.exe  < $ROOT/inputs/tst137 > ./outputs/t1764

./print_tokens_instrumented.exe  < $ROOT/inputs/tst138 > ./outputs/t1765

./print_tokens_instrumented.exe  < $ROOT/inputs/tst139 > ./outputs/t1766

./print_tokens_instrumented.exe  < $ROOT/inputs/tst14 > ./outputs/t1767

./print_tokens_instrumented.exe  < $ROOT/inputs/tst140 > ./outputs/t1768

./print_tokens_instrumented.exe  < $ROOT/inputs/tst141 > ./outputs/t1769

./print_tokens_instrumented.exe  < $ROOT/inputs/tst142 > ./outputs/t1770

./print_tokens_instrumented.exe  < $ROOT/inputs/tst143 > ./outputs/t1771

./print_tokens_instrumented.exe  < $ROOT/inputs/tst144 > ./outputs/t1772

./print_tokens_instrumented.exe  < $ROOT/inputs/tst145 > ./outputs/t1773

./print_tokens_instrumented.exe  < $ROOT/inputs/tst146 > ./outputs/t1774

./print_tokens_instrumented.exe  < $ROOT/inputs/tst147 > ./outputs/t1775

./print_tokens_instrumented.exe  < $ROOT/inputs/tst148 > ./outputs/t1776

./print_tokens_instrumented.exe  < $ROOT/inputs/tst149 > ./outputs/t1777

./print_tokens_instrumented.exe  < $ROOT/inputs/tst15 > ./outputs/t1778

./print_tokens_instrumented.exe  < $ROOT/inputs/tst150 > ./outputs/t1779

./print_tokens_instrumented.exe  < $ROOT/inputs/tst151 > ./outputs/t1780

./print_tokens_instrumented.exe  < $ROOT/inputs/tst152 > ./outputs/t1781

./print_tokens_instrumented.exe  < $ROOT/inputs/tst153 > ./outputs/t1782

./print_tokens_instrumented.exe  < $ROOT/inputs/tst154 > ./outputs/t1783

./print_tokens_instrumented.exe  < $ROOT/inputs/tst155 > ./outputs/t1784

./print_tokens_instrumented.exe  < $ROOT/inputs/tst156 > ./outputs/t1785

./print_tokens_instrumented.exe  < $ROOT/inputs/tst157 > ./outputs/t1786

./print_tokens_instrumented.exe  < $ROOT/inputs/tst158 > ./outputs/t1787

./print_tokens_instrumented.exe  < $ROOT/inputs/tst159 > ./outputs/t1788

./print_tokens_instrumented.exe  < $ROOT/inputs/tst16 > ./outputs/t1789

./print_tokens_instrumented.exe  < $ROOT/inputs/tst160 > ./outputs/t1790

./print_tokens_instrumented.exe  < $ROOT/inputs/tst161 > ./outputs/t1791

./print_tokens_instrumented.exe  < $ROOT/inputs/tst162 > ./outputs/t1792

./print_tokens_instrumented.exe  < $ROOT/inputs/tst163 > ./outputs/t1793

./print_tokens_instrumented.exe  < $ROOT/inputs/tst164 > ./outputs/t1794

./print_tokens_instrumented.exe  < $ROOT/inputs/tst165 > ./outputs/t1795

./print_tokens_instrumented.exe  < $ROOT/inputs/tst166 > ./outputs/t1796

./print_tokens_instrumented.exe  < $ROOT/inputs/tst167 > ./outputs/t1797

./print_tokens_instrumented.exe  < $ROOT/inputs/tst168 > ./outputs/t1798

./print_tokens_instrumented.exe  < $ROOT/inputs/tst169 > ./outputs/t1799

./print_tokens_instrumented.exe  < $ROOT/inputs/tst17 > ./outputs/t1800

./print_tokens_instrumented.exe  < $ROOT/inputs/tst170 > ./outputs/t1801

./print_tokens_instrumented.exe  < $ROOT/inputs/tst171 > ./outputs/t1802

./print_tokens_instrumented.exe  < $ROOT/inputs/tst172 > ./outputs/t1803

./print_tokens_instrumented.exe  < $ROOT/inputs/tst173 > ./outputs/t1804

./print_tokens_instrumented.exe  < $ROOT/inputs/tst174 > ./outputs/t1805

./print_tokens_instrumented.exe  < $ROOT/inputs/tst175 > ./outputs/t1806

./print_tokens_instrumented.exe  < $ROOT/inputs/tst176 > ./outputs/t1807

./print_tokens_instrumented.exe  < $ROOT/inputs/tst177 > ./outputs/t1808

./print_tokens_instrumented.exe  < $ROOT/inputs/tst178 > ./outputs/t1809

./print_tokens_instrumented.exe  < $ROOT/inputs/tst179 > ./outputs/t1810

./print_tokens_instrumented.exe  < $ROOT/inputs/tst18 > ./outputs/t1811

./print_tokens_instrumented.exe  < $ROOT/inputs/tst180 > ./outputs/t1812

./print_tokens_instrumented.exe  < $ROOT/inputs/tst181 > ./outputs/t1813

./print_tokens_instrumented.exe  < $ROOT/inputs/tst182 > ./outputs/t1814

./print_tokens_instrumented.exe  < $ROOT/inputs/tst183 > ./outputs/t1815

./print_tokens_instrumented.exe  < $ROOT/inputs/tst184 > ./outputs/t1816

./print_tokens_instrumented.exe  < $ROOT/inputs/tst185 > ./outputs/t1817

./print_tokens_instrumented.exe  < $ROOT/inputs/tst186 > ./outputs/t1818

./print_tokens_instrumented.exe  < $ROOT/inputs/tst187 > ./outputs/t1819

./print_tokens_instrumented.exe  < $ROOT/inputs/tst188 > ./outputs/t1820

./print_tokens_instrumented.exe  < $ROOT/inputs/tst189 > ./outputs/t1821

./print_tokens_instrumented.exe  < $ROOT/inputs/tst19 > ./outputs/t1822

./print_tokens_instrumented.exe  < $ROOT/inputs/tst190 > ./outputs/t1823

./print_tokens_instrumented.exe  < $ROOT/inputs/tst191 > ./outputs/t1824

./print_tokens_instrumented.exe  < $ROOT/inputs/tst192 > ./outputs/t1825

./print_tokens_instrumented.exe  < $ROOT/inputs/tst193 > ./outputs/t1826

./print_tokens_instrumented.exe  < $ROOT/inputs/tst194 > ./outputs/t1827

./print_tokens_instrumented.exe  < $ROOT/inputs/tst195 > ./outputs/t1828

./print_tokens_instrumented.exe  < $ROOT/inputs/tst196 > ./outputs/t1829

./print_tokens_instrumented.exe  < $ROOT/inputs/tst197 > ./outputs/t1830

./print_tokens_instrumented.exe  < $ROOT/inputs/tst198 > ./outputs/t1831

./print_tokens_instrumented.exe  < $ROOT/inputs/tst199 > ./outputs/t1832

./print_tokens_instrumented.exe  < $ROOT/inputs/tst2 > ./outputs/t1833

./print_tokens_instrumented.exe  < $ROOT/inputs/tst20 > ./outputs/t1834

./print_tokens_instrumented.exe  < $ROOT/inputs/tst200 > ./outputs/t1835

./print_tokens_instrumented.exe  < $ROOT/inputs/tst201 > ./outputs/t1836

./print_tokens_instrumented.exe  < $ROOT/inputs/tst202 > ./outputs/t1837

./print_tokens_instrumented.exe  < $ROOT/inputs/tst203 > ./outputs/t1838

./print_tokens_instrumented.exe  < $ROOT/inputs/tst204 > ./outputs/t1839

./print_tokens_instrumented.exe  < $ROOT/inputs/tst205 > ./outputs/t1840

./print_tokens_instrumented.exe  < $ROOT/inputs/tst206 > ./outputs/t1841

./print_tokens_instrumented.exe  < $ROOT/inputs/tst207 > ./outputs/t1842

./print_tokens_instrumented.exe  < $ROOT/inputs/tst208 > ./outputs/t1843

./print_tokens_instrumented.exe  < $ROOT/inputs/tst209 > ./outputs/t1844

./print_tokens_instrumented.exe  < $ROOT/inputs/tst21 > ./outputs/t1845

./print_tokens_instrumented.exe  < $ROOT/inputs/tst210 > ./outputs/t1846

./print_tokens_instrumented.exe  < $ROOT/inputs/tst211 > ./outputs/t1847

./print_tokens_instrumented.exe  < $ROOT/inputs/tst212 > ./outputs/t1848

./print_tokens_instrumented.exe  < $ROOT/inputs/tst213 > ./outputs/t1849

./print_tokens_instrumented.exe  < $ROOT/inputs/tst214 > ./outputs/t1850

./print_tokens_instrumented.exe  < $ROOT/inputs/tst215 > ./outputs/t1851

./print_tokens_instrumented.exe  < $ROOT/inputs/tst216 > ./outputs/t1852

./print_tokens_instrumented.exe  < $ROOT/inputs/tst217 > ./outputs/t1853

./print_tokens_instrumented.exe  < $ROOT/inputs/tst218 > ./outputs/t1854

./print_tokens_instrumented.exe  < $ROOT/inputs/tst219 > ./outputs/t1855

./print_tokens_instrumented.exe  < $ROOT/inputs/tst22 > ./outputs/t1856

./print_tokens_instrumented.exe  < $ROOT/inputs/tst220 > ./outputs/t1857

./print_tokens_instrumented.exe  < $ROOT/inputs/tst221 > ./outputs/t1858

./print_tokens_instrumented.exe  < $ROOT/inputs/tst222 > ./outputs/t1859

./print_tokens_instrumented.exe  < $ROOT/inputs/tst223 > ./outputs/t1860

./print_tokens_instrumented.exe  < $ROOT/inputs/tst224 > ./outputs/t1861

./print_tokens_instrumented.exe  < $ROOT/inputs/tst225 > ./outputs/t1862

./print_tokens_instrumented.exe  < $ROOT/inputs/tst226 > ./outputs/t1863

./print_tokens_instrumented.exe  < $ROOT/inputs/tst227 > ./outputs/t1864

./print_tokens_instrumented.exe  < $ROOT/inputs/tst228 > ./outputs/t1865

./print_tokens_instrumented.exe  < $ROOT/inputs/tst229 > ./outputs/t1866

./print_tokens_instrumented.exe  < $ROOT/inputs/tst23 > ./outputs/t1867

./print_tokens_instrumented.exe  < $ROOT/inputs/tst230 > ./outputs/t1868

./print_tokens_instrumented.exe  < $ROOT/inputs/tst231 > ./outputs/t1869

./print_tokens_instrumented.exe  < $ROOT/inputs/tst232 > ./outputs/t1870

./print_tokens_instrumented.exe  < $ROOT/inputs/tst233 > ./outputs/t1871

./print_tokens_instrumented.exe  < $ROOT/inputs/tst234 > ./outputs/t1872

./print_tokens_instrumented.exe  < $ROOT/inputs/tst235 > ./outputs/t1873

./print_tokens_instrumented.exe  < $ROOT/inputs/tst236 > ./outputs/t1874

./print_tokens_instrumented.exe  < $ROOT/inputs/tst237 > ./outputs/t1875

./print_tokens_instrumented.exe  < $ROOT/inputs/tst238 > ./outputs/t1876

./print_tokens_instrumented.exe  < $ROOT/inputs/tst239 > ./outputs/t1877

./print_tokens_instrumented.exe  < $ROOT/inputs/tst24 > ./outputs/t1878

./print_tokens_instrumented.exe  < $ROOT/inputs/tst240 > ./outputs/t1879

./print_tokens_instrumented.exe  < $ROOT/inputs/tst241 > ./outputs/t1880

./print_tokens_instrumented.exe  < $ROOT/inputs/tst242 > ./outputs/t1881

./print_tokens_instrumented.exe  < $ROOT/inputs/tst243 > ./outputs/t1882

./print_tokens_instrumented.exe  < $ROOT/inputs/tst244 > ./outputs/t1883

./print_tokens_instrumented.exe  < $ROOT/inputs/tst245 > ./outputs/t1884

./print_tokens_instrumented.exe  < $ROOT/inputs/tst246 > ./outputs/t1885

./print_tokens_instrumented.exe  < $ROOT/inputs/tst247 > ./outputs/t1886

./print_tokens_instrumented.exe  < $ROOT/inputs/tst248 > ./outputs/t1887

./print_tokens_instrumented.exe  < $ROOT/inputs/tst249 > ./outputs/t1888

./print_tokens_instrumented.exe  < $ROOT/inputs/tst25 > ./outputs/t1889

./print_tokens_instrumented.exe  < $ROOT/inputs/tst250 > ./outputs/t1890

./print_tokens_instrumented.exe  < $ROOT/inputs/tst251 > ./outputs/t1891

./print_tokens_instrumented.exe  < $ROOT/inputs/tst252 > ./outputs/t1892

./print_tokens_instrumented.exe  < $ROOT/inputs/tst253 > ./outputs/t1893

./print_tokens_instrumented.exe  < $ROOT/inputs/tst254 > ./outputs/t1894

./print_tokens_instrumented.exe  < $ROOT/inputs/tst255 > ./outputs/t1895

./print_tokens_instrumented.exe  < $ROOT/inputs/tst256 > ./outputs/t1896

./print_tokens_instrumented.exe  < $ROOT/inputs/tst257 > ./outputs/t1897

./print_tokens_instrumented.exe  < $ROOT/inputs/tst258 > ./outputs/t1898

./print_tokens_instrumented.exe  < $ROOT/inputs/tst259 > ./outputs/t1899

./print_tokens_instrumented.exe  < $ROOT/inputs/tst26 > ./outputs/t1900

./print_tokens_instrumented.exe  < $ROOT/inputs/tst260 > ./outputs/t1901

./print_tokens_instrumented.exe  < $ROOT/inputs/tst261 > ./outputs/t1902

./print_tokens_instrumented.exe  < $ROOT/inputs/tst262 > ./outputs/t1903

./print_tokens_instrumented.exe  < $ROOT/inputs/tst263 > ./outputs/t1904

./print_tokens_instrumented.exe  < $ROOT/inputs/tst264 > ./outputs/t1905

./print_tokens_instrumented.exe  < $ROOT/inputs/tst265 > ./outputs/t1906

./print_tokens_instrumented.exe  < $ROOT/inputs/tst266 > ./outputs/t1907

./print_tokens_instrumented.exe  < $ROOT/inputs/tst267 > ./outputs/t1908

./print_tokens_instrumented.exe  < $ROOT/inputs/tst268 > ./outputs/t1909

./print_tokens_instrumented.exe  < $ROOT/inputs/tst269 > ./outputs/t1910

./print_tokens_instrumented.exe  < $ROOT/inputs/tst27 > ./outputs/t1911

./print_tokens_instrumented.exe  < $ROOT/inputs/tst270 > ./outputs/t1912

./print_tokens_instrumented.exe  < $ROOT/inputs/tst271 > ./outputs/t1913

./print_tokens_instrumented.exe  < $ROOT/inputs/tst272 > ./outputs/t1914

./print_tokens_instrumented.exe  < $ROOT/inputs/tst273 > ./outputs/t1915

./print_tokens_instrumented.exe  < $ROOT/inputs/tst274 > ./outputs/t1916

./print_tokens_instrumented.exe  < $ROOT/inputs/tst275 > ./outputs/t1917

./print_tokens_instrumented.exe  < $ROOT/inputs/tst276 > ./outputs/t1918

./print_tokens_instrumented.exe  < $ROOT/inputs/tst277 > ./outputs/t1919

./print_tokens_instrumented.exe  < $ROOT/inputs/tst278 > ./outputs/t1920

./print_tokens_instrumented.exe  < $ROOT/inputs/tst279 > ./outputs/t1921

./print_tokens_instrumented.exe  < $ROOT/inputs/tst28 > ./outputs/t1922

./print_tokens_instrumented.exe  < $ROOT/inputs/tst280 > ./outputs/t1923

./print_tokens_instrumented.exe  < $ROOT/inputs/tst281 > ./outputs/t1924

./print_tokens_instrumented.exe  < $ROOT/inputs/tst282 > ./outputs/t1925

./print_tokens_instrumented.exe  < $ROOT/inputs/tst283 > ./outputs/t1926

./print_tokens_instrumented.exe  < $ROOT/inputs/tst284 > ./outputs/t1927

./print_tokens_instrumented.exe  < $ROOT/inputs/tst285 > ./outputs/t1928

./print_tokens_instrumented.exe  < $ROOT/inputs/tst286 > ./outputs/t1929

./print_tokens_instrumented.exe  < $ROOT/inputs/tst287 > ./outputs/t1930

./print_tokens_instrumented.exe  < $ROOT/inputs/tst288 > ./outputs/t1931

./print_tokens_instrumented.exe  < $ROOT/inputs/tst289 > ./outputs/t1932

./print_tokens_instrumented.exe  < $ROOT/inputs/tst29 > ./outputs/t1933

./print_tokens_instrumented.exe  < $ROOT/inputs/tst290 > ./outputs/t1934

./print_tokens_instrumented.exe  < $ROOT/inputs/tst291 > ./outputs/t1935

./print_tokens_instrumented.exe  < $ROOT/inputs/tst292 > ./outputs/t1936

./print_tokens_instrumented.exe  < $ROOT/inputs/tst293 > ./outputs/t1937

./print_tokens_instrumented.exe  < $ROOT/inputs/tst294 > ./outputs/t1938

./print_tokens_instrumented.exe  < $ROOT/inputs/tst295 > ./outputs/t1939

./print_tokens_instrumented.exe  < $ROOT/inputs/tst296 > ./outputs/t1940

./print_tokens_instrumented.exe  < $ROOT/inputs/tst297 > ./outputs/t1941

./print_tokens_instrumented.exe  < $ROOT/inputs/tst298 > ./outputs/t1942

./print_tokens_instrumented.exe  < $ROOT/inputs/tst299 > ./outputs/t1943

./print_tokens_instrumented.exe  < $ROOT/inputs/tst3 > ./outputs/t1944

./print_tokens_instrumented.exe  < $ROOT/inputs/tst30 > ./outputs/t1945

./print_tokens_instrumented.exe  < $ROOT/inputs/tst300 > ./outputs/t1946

./print_tokens_instrumented.exe  < $ROOT/inputs/tst31 > ./outputs/t1947

./print_tokens_instrumented.exe  < $ROOT/inputs/tst32 > ./outputs/t1948

./print_tokens_instrumented.exe  < $ROOT/inputs/tst33 > ./outputs/t1949

./print_tokens_instrumented.exe  < $ROOT/inputs/tst34 > ./outputs/t1950

./print_tokens_instrumented.exe  < $ROOT/inputs/tst35 > ./outputs/t1951

./print_tokens_instrumented.exe  < $ROOT/inputs/tst36 > ./outputs/t1952

./print_tokens_instrumented.exe  < $ROOT/inputs/tst37 > ./outputs/t1953

./print_tokens_instrumented.exe  < $ROOT/inputs/tst38 > ./outputs/t1954

./print_tokens_instrumented.exe  < $ROOT/inputs/tst39 > ./outputs/t1955

./print_tokens_instrumented.exe  < $ROOT/inputs/tst4 > ./outputs/t1956

./print_tokens_instrumented.exe  < $ROOT/inputs/tst40 > ./outputs/t1957

./print_tokens_instrumented.exe  < $ROOT/inputs/tst41 > ./outputs/t1958

./print_tokens_instrumented.exe  < $ROOT/inputs/tst42 > ./outputs/t1959

./print_tokens_instrumented.exe  < $ROOT/inputs/tst43 > ./outputs/t1960

./print_tokens_instrumented.exe  < $ROOT/inputs/tst44 > ./outputs/t1961

./print_tokens_instrumented.exe  < $ROOT/inputs/tst45 > ./outputs/t1962

./print_tokens_instrumented.exe  < $ROOT/inputs/tst46 > ./outputs/t1963

./print_tokens_instrumented.exe  < $ROOT/inputs/tst47 > ./outputs/t1964

./print_tokens_instrumented.exe  < $ROOT/inputs/tst48 > ./outputs/t1965

./print_tokens_instrumented.exe  < $ROOT/inputs/tst49 > ./outputs/t1966

./print_tokens_instrumented.exe  < $ROOT/inputs/tst5 > ./outputs/t1967

./print_tokens_instrumented.exe  < $ROOT/inputs/tst50 > ./outputs/t1968

./print_tokens_instrumented.exe  < $ROOT/inputs/tst51 > ./outputs/t1969

./print_tokens_instrumented.exe  < $ROOT/inputs/tst52 > ./outputs/t1970

./print_tokens_instrumented.exe  < $ROOT/inputs/tst53 > ./outputs/t1971

./print_tokens_instrumented.exe  < $ROOT/inputs/tst54 > ./outputs/t1972

./print_tokens_instrumented.exe  < $ROOT/inputs/tst55 > ./outputs/t1973

./print_tokens_instrumented.exe  < $ROOT/inputs/tst56 > ./outputs/t1974

./print_tokens_instrumented.exe  < $ROOT/inputs/tst57 > ./outputs/t1975

./print_tokens_instrumented.exe  < $ROOT/inputs/tst58 > ./outputs/t1976

./print_tokens_instrumented.exe  < $ROOT/inputs/tst59 > ./outputs/t1977

./print_tokens_instrumented.exe  < $ROOT/inputs/tst6 > ./outputs/t1978

./print_tokens_instrumented.exe  < $ROOT/inputs/tst60 > ./outputs/t1979

./print_tokens_instrumented.exe  < $ROOT/inputs/tst61 > ./outputs/t1980

./print_tokens_instrumented.exe  < $ROOT/inputs/tst62 > ./outputs/t1981

./print_tokens_instrumented.exe  < $ROOT/inputs/tst63 > ./outputs/t1982

./print_tokens_instrumented.exe  < $ROOT/inputs/tst64 > ./outputs/t1983

./print_tokens_instrumented.exe  < $ROOT/inputs/tst65 > ./outputs/t1984

./print_tokens_instrumented.exe  < $ROOT/inputs/tst66 > ./outputs/t1985

./print_tokens_instrumented.exe  < $ROOT/inputs/tst67 > ./outputs/t1986

./print_tokens_instrumented.exe  < $ROOT/inputs/tst68 > ./outputs/t1987

./print_tokens_instrumented.exe  < $ROOT/inputs/tst69 > ./outputs/t1988

./print_tokens_instrumented.exe  < $ROOT/inputs/tst7 > ./outputs/t1989

./print_tokens_instrumented.exe  < $ROOT/inputs/tst70 > ./outputs/t1990

./print_tokens_instrumented.exe  < $ROOT/inputs/tst71 > ./outputs/t1991

./print_tokens_instrumented.exe  < $ROOT/inputs/tst72 > ./outputs/t1992

./print_tokens_instrumented.exe  < $ROOT/inputs/tst73 > ./outputs/t1993

./print_tokens_instrumented.exe  < $ROOT/inputs/tst74 > ./outputs/t1994

./print_tokens_instrumented.exe  < $ROOT/inputs/tst75 > ./outputs/t1995

./print_tokens_instrumented.exe  < $ROOT/inputs/tst76 > ./outputs/t1996

./print_tokens_instrumented.exe  < $ROOT/inputs/tst77 > ./outputs/t1997

./print_tokens_instrumented.exe  < $ROOT/inputs/tst78 > ./outputs/t1998

./print_tokens_instrumented.exe  < $ROOT/inputs/tst79 > ./outputs/t1999

./print_tokens_instrumented.exe  < $ROOT/inputs/tst8 > ./outputs/t2000

./print_tokens_instrumented.exe  < $ROOT/inputs/tst80 > ./outputs/t2001

./print_tokens_instrumented.exe  < $ROOT/inputs/tst81 > ./outputs/t2002

./print_tokens_instrumented.exe  < $ROOT/inputs/tst82 > ./outputs/t2003

./print_tokens_instrumented.exe  < $ROOT/inputs/tst83 > ./outputs/t2004

./print_tokens_instrumented.exe  < $ROOT/inputs/tst84 > ./outputs/t2005

./print_tokens_instrumented.exe  < $ROOT/inputs/tst85 > ./outputs/t2006

./print_tokens_instrumented.exe  < $ROOT/inputs/tst86 > ./outputs/t2007

./print_tokens_instrumented.exe  < $ROOT/inputs/tst87 > ./outputs/t2008

./print_tokens_instrumented.exe  < $ROOT/inputs/tst88 > ./outputs/t2009

./print_tokens_instrumented.exe  < $ROOT/inputs/tst89 > ./outputs/t2010

./print_tokens_instrumented.exe  < $ROOT/inputs/tst9 > ./outputs/t2011

./print_tokens_instrumented.exe  < $ROOT/inputs/tst90 > ./outputs/t2012

./print_tokens_instrumented.exe  < $ROOT/inputs/tst91 > ./outputs/t2013

./print_tokens_instrumented.exe  < $ROOT/inputs/tst92 > ./outputs/t2014

./print_tokens_instrumented.exe  < $ROOT/inputs/tst93 > ./outputs/t2015

./print_tokens_instrumented.exe  < $ROOT/inputs/tst94 > ./outputs/t2016

./print_tokens_instrumented.exe  < $ROOT/inputs/tst95 > ./outputs/t2017

./print_tokens_instrumented.exe  < $ROOT/inputs/tst96 > ./outputs/t2018

./print_tokens_instrumented.exe  < $ROOT/inputs/tst97 > ./outputs/t2019

./print_tokens_instrumented.exe  < $ROOT/inputs/tst98 > ./outputs/t2020

./print_tokens_instrumented.exe  < $ROOT/inputs/tst99 > ./outputs/t2021

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.100 > ./outputs/t2022

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1002 > ./outputs/t2023

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1006 > ./outputs/t2024

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1007 > ./outputs/t2025

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.101 > ./outputs/t2026

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1011 > ./outputs/t2027

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1012 > ./outputs/t2028

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1013 > ./outputs/t2029

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1016 > ./outputs/t2030

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1017 > ./outputs/t2031

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1019 > ./outputs/t2032

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.102 > ./outputs/t2033

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1021 > ./outputs/t2034

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1022 > ./outputs/t2035

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1023 > ./outputs/t2036

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1026 > ./outputs/t2037

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1027 > ./outputs/t2038

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1028 > ./outputs/t2039

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1029 > ./outputs/t2040

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.103 > ./outputs/t2041

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1033 > ./outputs/t2042

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1037 > ./outputs/t2043

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.104 > ./outputs/t2044

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1041 > ./outputs/t2045

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1044 > ./outputs/t2046

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1051 > ./outputs/t2047

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1052 > ./outputs/t2048

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1053 > ./outputs/t2049

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1056 > ./outputs/t2050

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1058 > ./outputs/t2051

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1062 > ./outputs/t2052

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1063 > ./outputs/t2053

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1064 > ./outputs/t2054

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1066 > ./outputs/t2055

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1070 > ./outputs/t2056

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1072 > ./outputs/t2057

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1073 > ./outputs/t2058

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1079 > ./outputs/t2059

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.108 > ./outputs/t2060

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1081 > ./outputs/t2061

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1083 > ./outputs/t2062

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1086 > ./outputs/t2063

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1087 > ./outputs/t2064

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1088 > ./outputs/t2065

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1089 > ./outputs/t2066

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1090 > ./outputs/t2067

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1097 > ./outputs/t2068

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1098 > ./outputs/t2069

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1099 > ./outputs/t2070

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.11 > ./outputs/t2071

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.110 > ./outputs/t2072

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1100 > ./outputs/t2073

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1102 > ./outputs/t2074

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1104 > ./outputs/t2075

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1106 > ./outputs/t2076

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1107 > ./outputs/t2077

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1108 > ./outputs/t2078

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1111 > ./outputs/t2079

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1116 > ./outputs/t2080

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1117 > ./outputs/t2081

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1118 > ./outputs/t2082

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.112 > ./outputs/t2083

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1122 > ./outputs/t2084

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1123 > ./outputs/t2085

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1128 > ./outputs/t2086

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1129 > ./outputs/t2087

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.113 > ./outputs/t2088

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1131 > ./outputs/t2089

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1132 > ./outputs/t2090

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1133 > ./outputs/t2091

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1134 > ./outputs/t2092

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1135 > ./outputs/t2093

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1136 > ./outputs/t2094

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1137 > ./outputs/t2095

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1138 > ./outputs/t2096

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1143 > ./outputs/t2097

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1145 > ./outputs/t2098

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1146 > ./outputs/t2099

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1147 > ./outputs/t2100

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1148 > ./outputs/t2101

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1149 > ./outputs/t2102

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1150 > ./outputs/t2103

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1151 > ./outputs/t2104

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1152 > ./outputs/t2105

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1153 > ./outputs/t2106

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1154 > ./outputs/t2107

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1157 > ./outputs/t2108

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1158 > ./outputs/t2109

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.116 > ./outputs/t2110

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1161 > ./outputs/t2111

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1164 > ./outputs/t2112

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1168 > ./outputs/t2113

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1169 > ./outputs/t2114

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1170 > ./outputs/t2115

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1171 > ./outputs/t2116

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1172 > ./outputs/t2117

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1175 > ./outputs/t2118

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1176 > ./outputs/t2119

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1177 > ./outputs/t2120

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1178 > ./outputs/t2121

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.118 > ./outputs/t2122

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1181 > ./outputs/t2123

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1183 > ./outputs/t2124

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1188 > ./outputs/t2125

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1190 > ./outputs/t2126

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1194 > ./outputs/t2127

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1195 > ./outputs/t2128

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1197 > ./outputs/t2129

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1199 > ./outputs/t2130

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.12 > ./outputs/t2131

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.120 > ./outputs/t2132

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1201 > ./outputs/t2133

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1203 > ./outputs/t2134

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1204 > ./outputs/t2135

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1205 > ./outputs/t2136

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1208 > ./outputs/t2137

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1210 > ./outputs/t2138

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1211 > ./outputs/t2139

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1213 > ./outputs/t2140

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1214 > ./outputs/t2141

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1215 > ./outputs/t2142

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1216 > ./outputs/t2143

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1218 > ./outputs/t2144

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.122 > ./outputs/t2145

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1220 > ./outputs/t2146

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1221 > ./outputs/t2147

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1222 > ./outputs/t2148

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1225 > ./outputs/t2149

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1227 > ./outputs/t2150

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1229 > ./outputs/t2151

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.123 > ./outputs/t2152

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1230 > ./outputs/t2153

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1231 > ./outputs/t2154

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1232 > ./outputs/t2155

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1236 > ./outputs/t2156

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1238 > ./outputs/t2157

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.124 > ./outputs/t2158

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1240 > ./outputs/t2159

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1242 > ./outputs/t2160

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1244 > ./outputs/t2161

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1247 > ./outputs/t2162

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1248 > ./outputs/t2163

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1251 > ./outputs/t2164

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1254 > ./outputs/t2165

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1257 > ./outputs/t2166

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1259 > ./outputs/t2167

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1261 > ./outputs/t2168

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1262 > ./outputs/t2169

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1263 > ./outputs/t2170

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1269 > ./outputs/t2171

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1271 > ./outputs/t2172

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1273 > ./outputs/t2173

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1274 > ./outputs/t2174

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1275 > ./outputs/t2175

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1277 > ./outputs/t2176

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1279 > ./outputs/t2177

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1280 > ./outputs/t2178

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1282 > ./outputs/t2179

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1284 > ./outputs/t2180

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1285 > ./outputs/t2181

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1286 > ./outputs/t2182

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1288 > ./outputs/t2183

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1293 > ./outputs/t2184

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1295 > ./outputs/t2185

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1296 > ./outputs/t2186

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1297 > ./outputs/t2187

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1299 > ./outputs/t2188

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.13 > ./outputs/t2189

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.130 > ./outputs/t2190

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1300 > ./outputs/t2191

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1301 > ./outputs/t2192

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1304 > ./outputs/t2193

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1307 > ./outputs/t2194

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1308 > ./outputs/t2195

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1309 > ./outputs/t2196

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1310 > ./outputs/t2197

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1311 > ./outputs/t2198

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1312 > ./outputs/t2199

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1313 > ./outputs/t2200

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1314 > ./outputs/t2201

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1315 > ./outputs/t2202

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1318 > ./outputs/t2203

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1319 > ./outputs/t2204

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1320 > ./outputs/t2205

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1323 > ./outputs/t2206

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1326 > ./outputs/t2207

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1329 > ./outputs/t2208

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.133 > ./outputs/t2209

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1331 > ./outputs/t2210

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1332 > ./outputs/t2211

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1336 > ./outputs/t2212

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1338 > ./outputs/t2213

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1343 > ./outputs/t2214

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1344 > ./outputs/t2215

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1345 > ./outputs/t2216

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1347 > ./outputs/t2217

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1349 > ./outputs/t2218

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.135 > ./outputs/t2219

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1350 > ./outputs/t2220

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1351 > ./outputs/t2221

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1355 > ./outputs/t2222

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1356 > ./outputs/t2223

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1357 > ./outputs/t2224

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.136 > ./outputs/t2225

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1360 > ./outputs/t2226

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1361 > ./outputs/t2227

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1362 > ./outputs/t2228

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1363 > ./outputs/t2229

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1366 > ./outputs/t2230

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1367 > ./outputs/t2231

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1369 > ./outputs/t2232

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1372 > ./outputs/t2233

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1377 > ./outputs/t2234

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1381 > ./outputs/t2235

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1382 > ./outputs/t2236

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1383 > ./outputs/t2237

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1387 > ./outputs/t2238

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1388 > ./outputs/t2239

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1392 > ./outputs/t2240

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1393 > ./outputs/t2241

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1396 > ./outputs/t2242

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1397 > ./outputs/t2243

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.140 > ./outputs/t2244

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1404 > ./outputs/t2245

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1405 > ./outputs/t2246

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1408 > ./outputs/t2247

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1409 > ./outputs/t2248

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1410 > ./outputs/t2249

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1413 > ./outputs/t2250

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1415 > ./outputs/t2251

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.142 > ./outputs/t2252

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1420 > ./outputs/t2253

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1421 > ./outputs/t2254

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1424 > ./outputs/t2255

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1425 > ./outputs/t2256

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1429 > ./outputs/t2257

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.143 > ./outputs/t2258

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1430 > ./outputs/t2259

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1437 > ./outputs/t2260

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1438 > ./outputs/t2261

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1439 > ./outputs/t2262

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1441 > ./outputs/t2263

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1443 > ./outputs/t2264

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.145 > ./outputs/t2265

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1455 > ./outputs/t2266

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1457 > ./outputs/t2267

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1459 > ./outputs/t2268

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1461 > ./outputs/t2269

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1468 > ./outputs/t2270

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1469 > ./outputs/t2271

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.147 > ./outputs/t2272

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1470 > ./outputs/t2273

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1475 > ./outputs/t2274

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1476 > ./outputs/t2275

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1480 > ./outputs/t2276

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1483 > ./outputs/t2277

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1486 > ./outputs/t2278

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1491 > ./outputs/t2279

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1492 > ./outputs/t2280

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1493 > ./outputs/t2281

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1494 > ./outputs/t2282

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1496 > ./outputs/t2283

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1497 > ./outputs/t2284

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.15 > ./outputs/t2285

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1501 > ./outputs/t2286

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1502 > ./outputs/t2287

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1504 > ./outputs/t2288

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1509 > ./outputs/t2289

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.151 > ./outputs/t2290

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1510 > ./outputs/t2291

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1516 > ./outputs/t2292

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1517 > ./outputs/t2293

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1518 > ./outputs/t2294

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1519 > ./outputs/t2295

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1524 > ./outputs/t2296

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1525 > ./outputs/t2297

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1526 > ./outputs/t2298

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1527 > ./outputs/t2299

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1529 > ./outputs/t2300

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.153 > ./outputs/t2301

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1530 > ./outputs/t2302

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1532 > ./outputs/t2303

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1534 > ./outputs/t2304

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1538 > ./outputs/t2305

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1539 > ./outputs/t2306

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.154 > ./outputs/t2307

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1541 > ./outputs/t2308

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1542 > ./outputs/t2309

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1546 > ./outputs/t2310

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1549 > ./outputs/t2311

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.155 > ./outputs/t2312

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1551 > ./outputs/t2313

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1554 > ./outputs/t2314

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1556 > ./outputs/t2315

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1557 > ./outputs/t2316

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1559 > ./outputs/t2317

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1562 > ./outputs/t2318

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1563 > ./outputs/t2319

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1565 > ./outputs/t2320

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1566 > ./outputs/t2321

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1567 > ./outputs/t2322

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1569 > ./outputs/t2323

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.157 > ./outputs/t2324

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1570 > ./outputs/t2325

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1572 > ./outputs/t2326

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1576 > ./outputs/t2327

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1578 > ./outputs/t2328

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1579 > ./outputs/t2329

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1584 > ./outputs/t2330

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1587 > ./outputs/t2331

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1588 > ./outputs/t2332

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1589 > ./outputs/t2333

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1593 > ./outputs/t2334

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1596 > ./outputs/t2335

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1598 > ./outputs/t2336

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1599 > ./outputs/t2337

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.16 > ./outputs/t2338

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.160 > ./outputs/t2339

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1600 > ./outputs/t2340

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1604 > ./outputs/t2341

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1605 > ./outputs/t2342

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1609 > ./outputs/t2343

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.161 > ./outputs/t2344

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1611 > ./outputs/t2345

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1612 > ./outputs/t2346

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1613 > ./outputs/t2347

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1615 > ./outputs/t2348

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1616 > ./outputs/t2349

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.162 > ./outputs/t2350

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1621 > ./outputs/t2351

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1622 > ./outputs/t2352

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1627 > ./outputs/t2353

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1628 > ./outputs/t2354

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.163 > ./outputs/t2355

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1633 > ./outputs/t2356

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1636 > ./outputs/t2357

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1639 > ./outputs/t2358

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.164 > ./outputs/t2359

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1640 > ./outputs/t2360

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1642 > ./outputs/t2361

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1643 > ./outputs/t2362

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1647 > ./outputs/t2363

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1648 > ./outputs/t2364

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1649 > ./outputs/t2365

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1650 > ./outputs/t2366

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1658 > ./outputs/t2367

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1659 > ./outputs/t2368

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1660 > ./outputs/t2369

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1666 > ./outputs/t2370

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1667 > ./outputs/t2371

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1668 > ./outputs/t2372

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1669 > ./outputs/t2373

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1670 > ./outputs/t2374

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1671 > ./outputs/t2375

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1672 > ./outputs/t2376

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1675 > ./outputs/t2377

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1676 > ./outputs/t2378

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1679 > ./outputs/t2379

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1681 > ./outputs/t2380

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1686 > ./outputs/t2381

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.169 > ./outputs/t2382

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1691 > ./outputs/t2383

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1694 > ./outputs/t2384

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1695 > ./outputs/t2385

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1698 > ./outputs/t2386

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.17 > ./outputs/t2387

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.170 > ./outputs/t2388

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1702 > ./outputs/t2389

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1707 > ./outputs/t2390

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.171 > ./outputs/t2391

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1710 > ./outputs/t2392

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1711 > ./outputs/t2393

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1712 > ./outputs/t2394

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1716 > ./outputs/t2395

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1724 > ./outputs/t2396

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1730 > ./outputs/t2397

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1735 > ./outputs/t2398

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1737 > ./outputs/t2399

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1738 > ./outputs/t2400

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1740 > ./outputs/t2401

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1742 > ./outputs/t2402

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1744 > ./outputs/t2403

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.175 > ./outputs/t2404

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1753 > ./outputs/t2405

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1754 > ./outputs/t2406

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1755 > ./outputs/t2407

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1756 > ./outputs/t2408

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.176 > ./outputs/t2409

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1760 > ./outputs/t2410

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1762 > ./outputs/t2411

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1764 > ./outputs/t2412

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.177 > ./outputs/t2413

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1771 > ./outputs/t2414

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1773 > ./outputs/t2415

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1774 > ./outputs/t2416

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1776 > ./outputs/t2417

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1778 > ./outputs/t2418

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1782 > ./outputs/t2419

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1783 > ./outputs/t2420

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1785 > ./outputs/t2421

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1787 > ./outputs/t2422

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1789 > ./outputs/t2423

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1792 > ./outputs/t2424

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1793 > ./outputs/t2425

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1794 > ./outputs/t2426

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1798 > ./outputs/t2427

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1800 > ./outputs/t2428

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1802 > ./outputs/t2429

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1806 > ./outputs/t2430

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1809 > ./outputs/t2431

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1812 > ./outputs/t2432

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1814 > ./outputs/t2433

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1816 > ./outputs/t2434

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1818 > ./outputs/t2435

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1819 > ./outputs/t2436

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.182 > ./outputs/t2437

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1821 > ./outputs/t2438

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1823 > ./outputs/t2439

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1827 > ./outputs/t2440

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1829 > ./outputs/t2441

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1830 > ./outputs/t2442

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1832 > ./outputs/t2443

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1835 > ./outputs/t2444

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1836 > ./outputs/t2445

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1837 > ./outputs/t2446

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1838 > ./outputs/t2447

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1839 > ./outputs/t2448

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.184 > ./outputs/t2449

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1845 > ./outputs/t2450

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1847 > ./outputs/t2451

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1848 > ./outputs/t2452

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.185 > ./outputs/t2453

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1850 > ./outputs/t2454

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1855 > ./outputs/t2455

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1856 > ./outputs/t2456

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1858 > ./outputs/t2457

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1862 > ./outputs/t2458

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1863 > ./outputs/t2459

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1865 > ./outputs/t2460

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1871 > ./outputs/t2461

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1872 > ./outputs/t2462

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1873 > ./outputs/t2463

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1874 > ./outputs/t2464

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1876 > ./outputs/t2465

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1877 > ./outputs/t2466

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1878 > ./outputs/t2467

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.188 > ./outputs/t2468

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1880 > ./outputs/t2469

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1881 > ./outputs/t2470

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1882 > ./outputs/t2471

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1885 > ./outputs/t2472

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1886 > ./outputs/t2473

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1887 > ./outputs/t2474

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.189 > ./outputs/t2475

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1891 > ./outputs/t2476

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1892 > ./outputs/t2477

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1893 > ./outputs/t2478

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1895 > ./outputs/t2479

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1896 > ./outputs/t2480

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1897 > ./outputs/t2481

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1898 > ./outputs/t2482

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.190 > ./outputs/t2483

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1903 > ./outputs/t2484

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1905 > ./outputs/t2485

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1907 > ./outputs/t2486

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1908 > ./outputs/t2487

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.191 > ./outputs/t2488

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1912 > ./outputs/t2489

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1913 > ./outputs/t2490

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1914 > ./outputs/t2491

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1916 > ./outputs/t2492

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1917 > ./outputs/t2493

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1918 > ./outputs/t2494

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1920 > ./outputs/t2495

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1922 > ./outputs/t2496

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1924 > ./outputs/t2497

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1925 > ./outputs/t2498

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1926 > ./outputs/t2499

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1929 > ./outputs/t2500

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.193 > ./outputs/t2501

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1931 > ./outputs/t2502

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1932 > ./outputs/t2503

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1934 > ./outputs/t2504

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1935 > ./outputs/t2505

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1936 > ./outputs/t2506

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1937 > ./outputs/t2507

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1938 > ./outputs/t2508

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1944 > ./outputs/t2509

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1945 > ./outputs/t2510

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1946 > ./outputs/t2511

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1947 > ./outputs/t2512

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1948 > ./outputs/t2513

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.195 > ./outputs/t2514

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1950 > ./outputs/t2515

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1955 > ./outputs/t2516

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1958 > ./outputs/t2517

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1959 > ./outputs/t2518

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1961 > ./outputs/t2519

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1964 > ./outputs/t2520

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1970 > ./outputs/t2521

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1972 > ./outputs/t2522

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1974 > ./outputs/t2523

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1975 > ./outputs/t2524

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1979 > ./outputs/t2525

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1984 > ./outputs/t2526

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1985 > ./outputs/t2527

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1988 > ./outputs/t2528

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1989 > ./outputs/t2529

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1990 > ./outputs/t2530

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1995 > ./outputs/t2531

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1997 > ./outputs/t2532

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1998 > ./outputs/t2533

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.1999 > ./outputs/t2534

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.20 > ./outputs/t2535

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.2000 > ./outputs/t2536

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.201 > ./outputs/t2537

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.204 > ./outputs/t2538

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.206 > ./outputs/t2539

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.207 > ./outputs/t2540

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.208 > ./outputs/t2541

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.209 > ./outputs/t2542

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.21 > ./outputs/t2543

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.210 > ./outputs/t2544

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.213 > ./outputs/t2545

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.214 > ./outputs/t2546

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.215 > ./outputs/t2547

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.22 > ./outputs/t2548

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.225 > ./outputs/t2549

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.226 > ./outputs/t2550

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.230 > ./outputs/t2551

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.233 > ./outputs/t2552

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.234 > ./outputs/t2553

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.237 > ./outputs/t2554

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.238 > ./outputs/t2555

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.239 > ./outputs/t2556

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.243 > ./outputs/t2557

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.244 > ./outputs/t2558

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.245 > ./outputs/t2559

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.246 > ./outputs/t2560

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.247 > ./outputs/t2561

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.248 > ./outputs/t2562

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.249 > ./outputs/t2563

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.25 > ./outputs/t2564

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.251 > ./outputs/t2565

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.252 > ./outputs/t2566

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.254 > ./outputs/t2567

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.256 > ./outputs/t2568

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.257 > ./outputs/t2569

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.258 > ./outputs/t2570

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.260 > ./outputs/t2571

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.264 > ./outputs/t2572

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.266 > ./outputs/t2573

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.267 > ./outputs/t2574

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.268 > ./outputs/t2575

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.27 > ./outputs/t2576

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.270 > ./outputs/t2577

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.271 > ./outputs/t2578

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.272 > ./outputs/t2579

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.275 > ./outputs/t2580

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.276 > ./outputs/t2581

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.277 > ./outputs/t2582

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.28 > ./outputs/t2583

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.280 > ./outputs/t2584

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.281 > ./outputs/t2585

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.282 > ./outputs/t2586

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.283 > ./outputs/t2587

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.286 > ./outputs/t2588

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.289 > ./outputs/t2589

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.294 > ./outputs/t2590

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.295 > ./outputs/t2591

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.296 > ./outputs/t2592

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.297 > ./outputs/t2593

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.298 > ./outputs/t2594

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.299 > ./outputs/t2595

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.30 > ./outputs/t2596

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.301 > ./outputs/t2597

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.302 > ./outputs/t2598

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.305 > ./outputs/t2599

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.306 > ./outputs/t2600

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.307 > ./outputs/t2601

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.31 > ./outputs/t2602

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.311 > ./outputs/t2603

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.318 > ./outputs/t2604

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.319 > ./outputs/t2605

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.320 > ./outputs/t2606

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.321 > ./outputs/t2607

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.322 > ./outputs/t2608

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.323 > ./outputs/t2609

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.325 > ./outputs/t2610

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.327 > ./outputs/t2611

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.329 > ./outputs/t2612

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.33 > ./outputs/t2613

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.330 > ./outputs/t2614

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.333 > ./outputs/t2615

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.335 > ./outputs/t2616

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.337 > ./outputs/t2617

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.339 > ./outputs/t2618

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.34 > ./outputs/t2619

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.340 > ./outputs/t2620

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.343 > ./outputs/t2621

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.344 > ./outputs/t2622

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.345 > ./outputs/t2623

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.348 > ./outputs/t2624

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.349 > ./outputs/t2625

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.350 > ./outputs/t2626

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.352 > ./outputs/t2627

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.353 > ./outputs/t2628

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.355 > ./outputs/t2629

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.36 > ./outputs/t2630

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.360 > ./outputs/t2631

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.362 > ./outputs/t2632

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.363 > ./outputs/t2633

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.367 > ./outputs/t2634

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.369 > ./outputs/t2635

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.37 > ./outputs/t2636

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.372 > ./outputs/t2637

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.377 > ./outputs/t2638

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.378 > ./outputs/t2639

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.379 > ./outputs/t2640

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.380 > ./outputs/t2641

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.383 > ./outputs/t2642

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.386 > ./outputs/t2643

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.387 > ./outputs/t2644

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.388 > ./outputs/t2645

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.392 > ./outputs/t2646

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.395 > ./outputs/t2647

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.396 > ./outputs/t2648

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.398 > ./outputs/t2649

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.4 > ./outputs/t2650

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.40 > ./outputs/t2651

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.402 > ./outputs/t2652

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.407 > ./outputs/t2653

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.41 > ./outputs/t2654

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.412 > ./outputs/t2655

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.413 > ./outputs/t2656

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.415 > ./outputs/t2657

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.418 > ./outputs/t2658

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.419 > ./outputs/t2659

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.42 > ./outputs/t2660

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.421 > ./outputs/t2661

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.423 > ./outputs/t2662

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.424 > ./outputs/t2663

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.425 > ./outputs/t2664

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.428 > ./outputs/t2665

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.430 > ./outputs/t2666

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.432 > ./outputs/t2667

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.433 > ./outputs/t2668

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.434 > ./outputs/t2669

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.435 > ./outputs/t2670

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.436 > ./outputs/t2671

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.438 > ./outputs/t2672

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.441 > ./outputs/t2673

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.442 > ./outputs/t2674

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.447 > ./outputs/t2675

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.448 > ./outputs/t2676

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.449 > ./outputs/t2677

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.450 > ./outputs/t2678

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.451 > ./outputs/t2679

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.455 > ./outputs/t2680

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.456 > ./outputs/t2681

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.457 > ./outputs/t2682

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.459 > ./outputs/t2683

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.462 > ./outputs/t2684

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.463 > ./outputs/t2685

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.467 > ./outputs/t2686

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.468 > ./outputs/t2687

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.469 > ./outputs/t2688

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.47 > ./outputs/t2689

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.475 > ./outputs/t2690

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.476 > ./outputs/t2691

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.477 > ./outputs/t2692

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.479 > ./outputs/t2693

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.48 > ./outputs/t2694

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.480 > ./outputs/t2695

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.483 > ./outputs/t2696

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.487 > ./outputs/t2697

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.489 > ./outputs/t2698

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.493 > ./outputs/t2699

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.494 > ./outputs/t2700

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.496 > ./outputs/t2701

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.50 > ./outputs/t2702

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.502 > ./outputs/t2703

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.504 > ./outputs/t2704

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.506 > ./outputs/t2705

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.507 > ./outputs/t2706

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.510 > ./outputs/t2707

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.511 > ./outputs/t2708

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.512 > ./outputs/t2709

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.513 > ./outputs/t2710

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.514 > ./outputs/t2711

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.515 > ./outputs/t2712

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.518 > ./outputs/t2713

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.519 > ./outputs/t2714

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.52 > ./outputs/t2715

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.520 > ./outputs/t2716

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.522 > ./outputs/t2717

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.525 > ./outputs/t2718

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.526 > ./outputs/t2719

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.527 > ./outputs/t2720

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.528 > ./outputs/t2721

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.533 > ./outputs/t2722

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.534 > ./outputs/t2723

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.537 > ./outputs/t2724

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.538 > ./outputs/t2725

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.539 > ./outputs/t2726

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.54 > ./outputs/t2727

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.540 > ./outputs/t2728

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.543 > ./outputs/t2729

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.544 > ./outputs/t2730

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.552 > ./outputs/t2731

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.553 > ./outputs/t2732

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.558 > ./outputs/t2733

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.562 > ./outputs/t2734

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.566 > ./outputs/t2735

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.568 > ./outputs/t2736

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.569 > ./outputs/t2737

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.570 > ./outputs/t2738

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.571 > ./outputs/t2739

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.572 > ./outputs/t2740

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.573 > ./outputs/t2741

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.574 > ./outputs/t2742

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.576 > ./outputs/t2743

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.577 > ./outputs/t2744

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.579 > ./outputs/t2745

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.58 > ./outputs/t2746

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.580 > ./outputs/t2747

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.581 > ./outputs/t2748

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.582 > ./outputs/t2749

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.583 > ./outputs/t2750

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.584 > ./outputs/t2751

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.585 > ./outputs/t2752

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.586 > ./outputs/t2753

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.592 > ./outputs/t2754

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.593 > ./outputs/t2755

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.594 > ./outputs/t2756

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.596 > ./outputs/t2757

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.597 > ./outputs/t2758

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.598 > ./outputs/t2759

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.60 > ./outputs/t2760

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.602 > ./outputs/t2761

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.605 > ./outputs/t2762

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.607 > ./outputs/t2763

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.611 > ./outputs/t2764

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.614 > ./outputs/t2765

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.615 > ./outputs/t2766

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.616 > ./outputs/t2767

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.617 > ./outputs/t2768

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.619 > ./outputs/t2769

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.62 > ./outputs/t2770

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.621 > ./outputs/t2771

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.623 > ./outputs/t2772

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.624 > ./outputs/t2773

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.625 > ./outputs/t2774

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.626 > ./outputs/t2775

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.627 > ./outputs/t2776

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.63 > ./outputs/t2777

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.630 > ./outputs/t2778

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.633 > ./outputs/t2779

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.636 > ./outputs/t2780

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.64 > ./outputs/t2781

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.640 > ./outputs/t2782

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.642 > ./outputs/t2783

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.647 > ./outputs/t2784

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.648 > ./outputs/t2785

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.650 > ./outputs/t2786

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.655 > ./outputs/t2787

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.656 > ./outputs/t2788

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.659 > ./outputs/t2789

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.662 > ./outputs/t2790

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.663 > ./outputs/t2791

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.665 > ./outputs/t2792

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.668 > ./outputs/t2793

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.669 > ./outputs/t2794

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.67 > ./outputs/t2795

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.670 > ./outputs/t2796

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.673 > ./outputs/t2797

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.674 > ./outputs/t2798

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.676 > ./outputs/t2799

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.677 > ./outputs/t2800

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.679 > ./outputs/t2801

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.68 > ./outputs/t2802

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.680 > ./outputs/t2803

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.682 > ./outputs/t2804

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.686 > ./outputs/t2805

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.691 > ./outputs/t2806

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.695 > ./outputs/t2807

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.70 > ./outputs/t2808

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.701 > ./outputs/t2809

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.704 > ./outputs/t2810

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.706 > ./outputs/t2811

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.708 > ./outputs/t2812

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.709 > ./outputs/t2813

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.71 > ./outputs/t2814

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.712 > ./outputs/t2815

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.713 > ./outputs/t2816

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.716 > ./outputs/t2817

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.717 > ./outputs/t2818

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.719 > ./outputs/t2819

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.72 > ./outputs/t2820

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.721 > ./outputs/t2821

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.723 > ./outputs/t2822

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.727 > ./outputs/t2823

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.728 > ./outputs/t2824

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.734 > ./outputs/t2825

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.736 > ./outputs/t2826

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.738 > ./outputs/t2827

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.74 > ./outputs/t2828

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.742 > ./outputs/t2829

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.744 > ./outputs/t2830

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.746 > ./outputs/t2831

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.747 > ./outputs/t2832

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.748 > ./outputs/t2833

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.75 > ./outputs/t2834

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.751 > ./outputs/t2835

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.752 > ./outputs/t2836

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.753 > ./outputs/t2837

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.756 > ./outputs/t2838

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.758 > ./outputs/t2839

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.76 > ./outputs/t2840

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.760 > ./outputs/t2841

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.761 > ./outputs/t2842

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.765 > ./outputs/t2843

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.766 > ./outputs/t2844

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.767 > ./outputs/t2845

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.768 > ./outputs/t2846

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.769 > ./outputs/t2847

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.77 > ./outputs/t2848

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.772 > ./outputs/t2849

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.773 > ./outputs/t2850

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.775 > ./outputs/t2851

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.776 > ./outputs/t2852

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.777 > ./outputs/t2853

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.778 > ./outputs/t2854

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.779 > ./outputs/t2855

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.78 > ./outputs/t2856

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.781 > ./outputs/t2857

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.784 > ./outputs/t2858

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.786 > ./outputs/t2859

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.787 > ./outputs/t2860

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.788 > ./outputs/t2861

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.789 > ./outputs/t2862

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.79 > ./outputs/t2863

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.790 > ./outputs/t2864

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.791 > ./outputs/t2865

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.793 > ./outputs/t2866

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.798 > ./outputs/t2867

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.80 > ./outputs/t2868

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.803 > ./outputs/t2869

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.807 > ./outputs/t2870

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.808 > ./outputs/t2871

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.811 > ./outputs/t2872

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.814 > ./outputs/t2873

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.816 > ./outputs/t2874

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.818 > ./outputs/t2875

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.82 > ./outputs/t2876

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.821 > ./outputs/t2877

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.823 > ./outputs/t2878

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.825 > ./outputs/t2879

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.828 > ./outputs/t2880

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.829 > ./outputs/t2881

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.83 > ./outputs/t2882

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.831 > ./outputs/t2883

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.832 > ./outputs/t2884

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.834 > ./outputs/t2885

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.836 > ./outputs/t2886

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.837 > ./outputs/t2887

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.840 > ./outputs/t2888

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.843 > ./outputs/t2889

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.85 > ./outputs/t2890

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.851 > ./outputs/t2891

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.855 > ./outputs/t2892

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.858 > ./outputs/t2893

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.860 > ./outputs/t2894

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.862 > ./outputs/t2895

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.864 > ./outputs/t2896

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.865 > ./outputs/t2897

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.866 > ./outputs/t2898

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.87 > ./outputs/t2899

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.871 > ./outputs/t2900

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.88 > ./outputs/t2901

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.880 > ./outputs/t2902

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.888 > ./outputs/t2903

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.89 > ./outputs/t2904

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.892 > ./outputs/t2905

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.895 > ./outputs/t2906

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.896 > ./outputs/t2907

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.898 > ./outputs/t2908

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.9 > ./outputs/t2909

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.903 > ./outputs/t2910

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.904 > ./outputs/t2911

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.905 > ./outputs/t2912

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.906 > ./outputs/t2913

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.910 > ./outputs/t2914

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.913 > ./outputs/t2915

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.914 > ./outputs/t2916

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.92 > ./outputs/t2917

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.920 > ./outputs/t2918

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.922 > ./outputs/t2919

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.923 > ./outputs/t2920

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.924 > ./outputs/t2921

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.926 > ./outputs/t2922

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.927 > ./outputs/t2923

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.93 > ./outputs/t2924

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.930 > ./outputs/t2925

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.933 > ./outputs/t2926

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.937 > ./outputs/t2927

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.94 > ./outputs/t2928

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.942 > ./outputs/t2929

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.944 > ./outputs/t2930

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.945 > ./outputs/t2931

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.949 > ./outputs/t2932

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.954 > ./outputs/t2933

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.955 > ./outputs/t2934

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.957 > ./outputs/t2935

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.958 > ./outputs/t2936

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.96 > ./outputs/t2937

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.960 > ./outputs/t2938

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.961 > ./outputs/t2939

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.962 > ./outputs/t2940

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.964 > ./outputs/t2941

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.966 > ./outputs/t2942

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.968 > ./outputs/t2943

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.969 > ./outputs/t2944

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.97 > ./outputs/t2945

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.971 > ./outputs/t2946

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.973 > ./outputs/t2947

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.974 > ./outputs/t2948

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.978 > ./outputs/t2949

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.98 > ./outputs/t2950

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.981 > ./outputs/t2951

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.982 > ./outputs/t2952

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.984 > ./outputs/t2953

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.987 > ./outputs/t2954

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.989 > ./outputs/t2955

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.99 > ./outputs/t2956

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.991 > ./outputs/t2957

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.992 > ./outputs/t2958

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.993 > ./outputs/t2959

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.994 > ./outputs/t2960

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.995 > ./outputs/t2961

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.996 > ./outputs/t2962

./print_tokens_instrumented.exe  < $ROOT/inputs/uslin.999 > ./outputs/t2963

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t2964

./print_tokens_instrumented.exe $ROOT/inputs/jk1     > ./outputs/t2965

./print_tokens_instrumented.exe $ROOT/inputs/jk10     > ./outputs/t2966

./print_tokens_instrumented.exe $ROOT/inputs/jk11     > ./outputs/t2967

./print_tokens_instrumented.exe $ROOT/inputs/jk12     > ./outputs/t2968

./print_tokens_instrumented.exe $ROOT/inputs/jk13     > ./outputs/t2969

./print_tokens_instrumented.exe $ROOT/inputs/jk14     > ./outputs/t2970

./print_tokens_instrumented.exe $ROOT/inputs/jk15     > ./outputs/t2971

./print_tokens_instrumented.exe $ROOT/inputs/jk16     > ./outputs/t2972

./print_tokens_instrumented.exe $ROOT/inputs/jk17     > ./outputs/t2973

./print_tokens_instrumented.exe $ROOT/inputs/jk18     > ./outputs/t2974

./print_tokens_instrumented.exe $ROOT/inputs/jk19     > ./outputs/t2975

./print_tokens_instrumented.exe $ROOT/inputs/jk2     > ./outputs/t2976

./print_tokens_instrumented.exe $ROOT/inputs/jk20     > ./outputs/t2977

./print_tokens_instrumented.exe $ROOT/inputs/jk21     > ./outputs/t2978

./print_tokens_instrumented.exe $ROOT/inputs/jk22     > ./outputs/t2979

./print_tokens_instrumented.exe $ROOT/inputs/jk23     > ./outputs/t2980

./print_tokens_instrumented.exe $ROOT/inputs/jk24     > ./outputs/t2981

./print_tokens_instrumented.exe $ROOT/inputs/jk25     > ./outputs/t2982

./print_tokens_instrumented.exe $ROOT/inputs/jk26     > ./outputs/t2983

./print_tokens_instrumented.exe $ROOT/inputs/jk27     > ./outputs/t2984

./print_tokens_instrumented.exe $ROOT/inputs/jk28     > ./outputs/t2985

./print_tokens_instrumented.exe $ROOT/inputs/jk29     > ./outputs/t2986

./print_tokens_instrumented.exe $ROOT/inputs/jk3     > ./outputs/t2987

./print_tokens_instrumented.exe $ROOT/inputs/jk30     > ./outputs/t2988

./print_tokens_instrumented.exe $ROOT/inputs/jk31     > ./outputs/t2989

./print_tokens_instrumented.exe $ROOT/inputs/jk32     > ./outputs/t2990

./print_tokens_instrumented.exe $ROOT/inputs/jk33     > ./outputs/t2991

./print_tokens_instrumented.exe $ROOT/inputs/jk34     > ./outputs/t2992

./print_tokens_instrumented.exe $ROOT/inputs/jk35     > ./outputs/t2993

./print_tokens_instrumented.exe $ROOT/inputs/jk36     > ./outputs/t2994

./print_tokens_instrumented.exe $ROOT/inputs/jk37     > ./outputs/t2995

./print_tokens_instrumented.exe $ROOT/inputs/jk38     > ./outputs/t2996

./print_tokens_instrumented.exe $ROOT/inputs/jk39     > ./outputs/t2997

./print_tokens_instrumented.exe $ROOT/inputs/jk4     > ./outputs/t2998

./print_tokens_instrumented.exe $ROOT/inputs/jk40     > ./outputs/t2999

./print_tokens_instrumented.exe $ROOT/inputs/jk41     > ./outputs/t3000

./print_tokens_instrumented.exe $ROOT/inputs/jk42     > ./outputs/t3001

./print_tokens_instrumented.exe $ROOT/inputs/jk43     > ./outputs/t3002

./print_tokens_instrumented.exe $ROOT/inputs/jk44     > ./outputs/t3003

./print_tokens_instrumented.exe $ROOT/inputs/jk45     > ./outputs/t3004

./print_tokens_instrumented.exe $ROOT/inputs/jk46     > ./outputs/t3005

./print_tokens_instrumented.exe $ROOT/inputs/jk47     > ./outputs/t3006

./print_tokens_instrumented.exe $ROOT/inputs/jk48     > ./outputs/t3007

./print_tokens_instrumented.exe $ROOT/inputs/jk49     > ./outputs/t3008

./print_tokens_instrumented.exe $ROOT/inputs/jk5     > ./outputs/t3009

./print_tokens_instrumented.exe $ROOT/inputs/jk50     > ./outputs/t3010

./print_tokens_instrumented.exe $ROOT/inputs/jk6     > ./outputs/t3011

./print_tokens_instrumented.exe $ROOT/inputs/jk7     > ./outputs/t3012

./print_tokens_instrumented.exe $ROOT/inputs/jk8     > ./outputs/t3013

./print_tokens_instrumented.exe $ROOT/inputs/jk9     > ./outputs/t3014

./print_tokens_instrumented.exe $ROOT/inputs/newtst522.tst.noeof     > ./outputs/t3015

./print_tokens_instrumented.exe $ROOT/inputs/tc240.noeof     > ./outputs/t3016

./print_tokens_instrumented.exe $ROOT/inputs/test287.noeof     > ./outputs/t3017

./print_tokens_instrumented.exe $ROOT/inputs/test330.noeof     > ./outputs/t3018

./print_tokens_instrumented.exe $ROOT/inputs/test373.noeof     > ./outputs/t3019

./print_tokens_instrumented.exe $ROOT/inputs/ts516.noeof     > ./outputs/t3020

./print_tokens_instrumented.exe $ROOT/inputs/ts583.noeof     > ./outputs/t3021

./print_tokens_instrumented.exe $ROOT/inputs/ts609.noeof     > ./outputs/t3022

./print_tokens_instrumented.exe $ROOT/inputs/tst110.noeof     > ./outputs/t3023

./print_tokens_instrumented.exe $ROOT/inputs/tst52.noeof     > ./outputs/t3024

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1     > ./outputs/t3025

./print_tokens_instrumented.exe $ROOT/inputs/uslin.10     > ./outputs/t3026

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1000     > ./outputs/t3027

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1001     > ./outputs/t3028

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1003     > ./outputs/t3029

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1004     > ./outputs/t3030

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1005     > ./outputs/t3031

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1008     > ./outputs/t3032

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1009     > ./outputs/t3033

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1010     > ./outputs/t3034

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1014     > ./outputs/t3035

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1014.noeof     > ./outputs/t3036

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1015     > ./outputs/t3037

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1018     > ./outputs/t3038

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1020     > ./outputs/t3039

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1024     > ./outputs/t3040

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1025     > ./outputs/t3041

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1030     > ./outputs/t3042

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1031     > ./outputs/t3043

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1032     > ./outputs/t3044

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1034     > ./outputs/t3045

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1035     > ./outputs/t3046

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1036     > ./outputs/t3047

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1038     > ./outputs/t3048

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1038.noeof     > ./outputs/t3049

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1039     > ./outputs/t3050

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1040     > ./outputs/t3051

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1042     > ./outputs/t3052

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1043     > ./outputs/t3053

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1045     > ./outputs/t3054

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1046     > ./outputs/t3055

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1047     > ./outputs/t3056

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1048     > ./outputs/t3057

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1049     > ./outputs/t3058

./print_tokens_instrumented.exe $ROOT/inputs/uslin.105     > ./outputs/t3059

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1050     > ./outputs/t3060

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1054     > ./outputs/t3061

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1057     > ./outputs/t3062

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1059     > ./outputs/t3063

./print_tokens_instrumented.exe $ROOT/inputs/uslin.106     > ./outputs/t3064

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1061     > ./outputs/t3065

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1065     > ./outputs/t3066

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1067     > ./outputs/t3067

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1068     > ./outputs/t3068

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1069     > ./outputs/t3069

./print_tokens_instrumented.exe $ROOT/inputs/uslin.107     > ./outputs/t3070

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1071     > ./outputs/t3071

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1074     > ./outputs/t3072

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1075     > ./outputs/t3073

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1076     > ./outputs/t3074

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1077     > ./outputs/t3075

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1078     > ./outputs/t3076

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1080     > ./outputs/t3077

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1082     > ./outputs/t3078

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1084     > ./outputs/t3079

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1085     > ./outputs/t3080

./print_tokens_instrumented.exe $ROOT/inputs/uslin.109     > ./outputs/t3081

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1091     > ./outputs/t3082

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1092     > ./outputs/t3083

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1093     > ./outputs/t3084

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1094     > ./outputs/t3085

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1095     > ./outputs/t3086

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1096     > ./outputs/t3087

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1101     > ./outputs/t3088

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1103     > ./outputs/t3089

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1105     > ./outputs/t3090

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1109      > ./outputs/t3091

./print_tokens_instrumented.exe $ROOT/inputs/uslin.111     > ./outputs/t3092

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1112     > ./outputs/t3093

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1113     > ./outputs/t3094

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1114     > ./outputs/t3095

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1115     > ./outputs/t3096

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1119     > ./outputs/t3097

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1120     > ./outputs/t3098

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1121     > ./outputs/t3099

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1124      > ./outputs/t3100

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1125     > ./outputs/t3101

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1126     > ./outputs/t3102

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1127     > ./outputs/t3103

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1130     > ./outputs/t3104

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1139     > ./outputs/t3105

./print_tokens_instrumented.exe $ROOT/inputs/uslin.114     > ./outputs/t3106

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1140     > ./outputs/t3107

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1141     > ./outputs/t3108

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1142     > ./outputs/t3109

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1144     > ./outputs/t3110

./print_tokens_instrumented.exe $ROOT/inputs/uslin.115     > ./outputs/t3111

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1155     > ./outputs/t3112

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1156      > ./outputs/t3113

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1159     > ./outputs/t3114

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1160     > ./outputs/t3115

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1162     > ./outputs/t3116

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1163     > ./outputs/t3117

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1165     > ./outputs/t3118

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1166     > ./outputs/t3119

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1167     > ./outputs/t3120

./print_tokens_instrumented.exe $ROOT/inputs/uslin.117     > ./outputs/t3121

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1173     > ./outputs/t3122

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1174     > ./outputs/t3123

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1179     > ./outputs/t3124

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1180     > ./outputs/t3125

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1182     > ./outputs/t3126

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1184     > ./outputs/t3127

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1185     > ./outputs/t3128

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1186     > ./outputs/t3129

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1187     > ./outputs/t3130

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1189     > ./outputs/t3131

./print_tokens_instrumented.exe $ROOT/inputs/uslin.119     > ./outputs/t3132

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1191     > ./outputs/t3133

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1192     > ./outputs/t3134

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1193     > ./outputs/t3135

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1196     > ./outputs/t3136

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1198     > ./outputs/t3137

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1200     > ./outputs/t3138

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1202     > ./outputs/t3139

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1206     > ./outputs/t3140

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1207     > ./outputs/t3141

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1209     > ./outputs/t3142

./print_tokens_instrumented.exe $ROOT/inputs/uslin.121     > ./outputs/t3143

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1212     > ./outputs/t3144

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1217     > ./outputs/t3145

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1219     > ./outputs/t3146

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1224     > ./outputs/t3147

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1226     > ./outputs/t3148

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1233     > ./outputs/t3149

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1234     > ./outputs/t3150

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1235     > ./outputs/t3151

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1237     > ./outputs/t3152

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1239     > ./outputs/t3153

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1241     > ./outputs/t3154

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1243     > ./outputs/t3155

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1245     > ./outputs/t3156

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1246     > ./outputs/t3157

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1249     > ./outputs/t3158

./print_tokens_instrumented.exe $ROOT/inputs/uslin.125     > ./outputs/t3159

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1250     > ./outputs/t3160

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1252     > ./outputs/t3161

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1253     > ./outputs/t3162

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1255      > ./outputs/t3163

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1256     > ./outputs/t3164

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1258     > ./outputs/t3165

./print_tokens_instrumented.exe $ROOT/inputs/uslin.126     > ./outputs/t3166

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1260      > ./outputs/t3167

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1264     > ./outputs/t3168

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1265     > ./outputs/t3169

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1266     > ./outputs/t3170

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1267     > ./outputs/t3171

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1268     > ./outputs/t3172

./print_tokens_instrumented.exe $ROOT/inputs/uslin.127     > ./outputs/t3173

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1270     > ./outputs/t3174

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1272     > ./outputs/t3175

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1276     > ./outputs/t3176

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1278     > ./outputs/t3177

./print_tokens_instrumented.exe $ROOT/inputs/uslin.128     > ./outputs/t3178

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1281     > ./outputs/t3179

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1283     > ./outputs/t3180

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1287     > ./outputs/t3181

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1289     > ./outputs/t3182

./print_tokens_instrumented.exe $ROOT/inputs/uslin.129     > ./outputs/t3183

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1290     > ./outputs/t3184

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1291     > ./outputs/t3185

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1292     > ./outputs/t3186

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1294     > ./outputs/t3187

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1298     > ./outputs/t3188

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1302     > ./outputs/t3189

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1303     > ./outputs/t3190

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1305     > ./outputs/t3191

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1306     > ./outputs/t3192

./print_tokens_instrumented.exe $ROOT/inputs/uslin.131     > ./outputs/t3193

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1316     > ./outputs/t3194

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1317     > ./outputs/t3195

./print_tokens_instrumented.exe $ROOT/inputs/uslin.132     > ./outputs/t3196

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1321     > ./outputs/t3197

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1322     > ./outputs/t3198

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1324     > ./outputs/t3199

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1325     > ./outputs/t3200

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1327     > ./outputs/t3201

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1328     > ./outputs/t3202

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1330     > ./outputs/t3203

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1333     > ./outputs/t3204

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1334     > ./outputs/t3205

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1335     > ./outputs/t3206

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1337     > ./outputs/t3207

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1339     > ./outputs/t3208

./print_tokens_instrumented.exe $ROOT/inputs/uslin.134     > ./outputs/t3209

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1340     > ./outputs/t3210

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1341     > ./outputs/t3211

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1342     > ./outputs/t3212

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1346     > ./outputs/t3213

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1348     > ./outputs/t3214

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1352     > ./outputs/t3215

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1353     > ./outputs/t3216

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1354     > ./outputs/t3217

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1358     > ./outputs/t3218

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1359     > ./outputs/t3219

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1364     > ./outputs/t3220

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1368     > ./outputs/t3221

./print_tokens_instrumented.exe $ROOT/inputs/uslin.137     > ./outputs/t3222

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1370     > ./outputs/t3223

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1371     > ./outputs/t3224

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1373     > ./outputs/t3225

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1374     > ./outputs/t3226

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1375     > ./outputs/t3227

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1376     > ./outputs/t3228

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1378     > ./outputs/t3229

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1379     > ./outputs/t3230

./print_tokens_instrumented.exe $ROOT/inputs/uslin.138     > ./outputs/t3231

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1380     > ./outputs/t3232

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1384     > ./outputs/t3233

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1385     > ./outputs/t3234

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1386     > ./outputs/t3235

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1389     > ./outputs/t3236

./print_tokens_instrumented.exe $ROOT/inputs/uslin.139     > ./outputs/t3237

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1390     > ./outputs/t3238

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1391     > ./outputs/t3239

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1394     > ./outputs/t3240

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1395     > ./outputs/t3241

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1398     > ./outputs/t3242

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1399     > ./outputs/t3243

./print_tokens_instrumented.exe $ROOT/inputs/uslin.14     > ./outputs/t3244

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1401     > ./outputs/t3245

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1402     > ./outputs/t3246

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1403     > ./outputs/t3247

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1406     > ./outputs/t3248

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1407     > ./outputs/t3249

./print_tokens_instrumented.exe $ROOT/inputs/uslin.141     > ./outputs/t3250

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1411     > ./outputs/t3251

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1412     > ./outputs/t3252

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1414     > ./outputs/t3253

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1416     > ./outputs/t3254

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1417     > ./outputs/t3255

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1418      > ./outputs/t3256

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1419     > ./outputs/t3257

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1422     > ./outputs/t3258

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1423     > ./outputs/t3259

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1426     > ./outputs/t3260

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1427     > ./outputs/t3261

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1428     > ./outputs/t3262

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1431     > ./outputs/t3263

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1432     > ./outputs/t3264

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1433     > ./outputs/t3265

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1434     > ./outputs/t3266

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1435     > ./outputs/t3267

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1436     > ./outputs/t3268

./print_tokens_instrumented.exe $ROOT/inputs/uslin.144     > ./outputs/t3269

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1440     > ./outputs/t3270

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1444     > ./outputs/t3271

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1445     > ./outputs/t3272

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1446     > ./outputs/t3273

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1447     > ./outputs/t3274

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1448     > ./outputs/t3275

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1449     > ./outputs/t3276

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1450     > ./outputs/t3277

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1451     > ./outputs/t3278

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1452     > ./outputs/t3279

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1453     > ./outputs/t3280

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1454     > ./outputs/t3281

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1456     > ./outputs/t3282

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1458     > ./outputs/t3283

./print_tokens_instrumented.exe $ROOT/inputs/uslin.146     > ./outputs/t3284

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1460     > ./outputs/t3285

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1462     > ./outputs/t3286

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1463     > ./outputs/t3287

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1464     > ./outputs/t3288

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1465     > ./outputs/t3289

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1466     > ./outputs/t3290

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1467     > ./outputs/t3291

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1471     > ./outputs/t3292

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1472     > ./outputs/t3293

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1473     > ./outputs/t3294

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1474     > ./outputs/t3295

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1477     > ./outputs/t3296

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1478     > ./outputs/t3297

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1479     > ./outputs/t3298

./print_tokens_instrumented.exe $ROOT/inputs/uslin.148     > ./outputs/t3299

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1481     > ./outputs/t3300

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1482     > ./outputs/t3301

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1484     > ./outputs/t3302

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1485     > ./outputs/t3303

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1487     > ./outputs/t3304

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1488     > ./outputs/t3305

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1489     > ./outputs/t3306

./print_tokens_instrumented.exe $ROOT/inputs/uslin.149     > ./outputs/t3307

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1495     > ./outputs/t3308

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1498     > ./outputs/t3309

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1499     > ./outputs/t3310

./print_tokens_instrumented.exe $ROOT/inputs/uslin.150     > ./outputs/t3311

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1500     > ./outputs/t3312

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1503     > ./outputs/t3313

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1505     > ./outputs/t3314

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1506     > ./outputs/t3315

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1507     > ./outputs/t3316

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1508     > ./outputs/t3317

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1511     > ./outputs/t3318

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1512     > ./outputs/t3319

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1513     > ./outputs/t3320

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1514     > ./outputs/t3321

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1515     > ./outputs/t3322

./print_tokens_instrumented.exe $ROOT/inputs/uslin.152      > ./outputs/t3323

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1520     > ./outputs/t3324

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1521     > ./outputs/t3325

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1522      > ./outputs/t3326

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1523     > ./outputs/t3327

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1528     > ./outputs/t3328

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1531     > ./outputs/t3329

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1533     > ./outputs/t3330

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1535     > ./outputs/t3331

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1536     > ./outputs/t3332

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1537     > ./outputs/t3333

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1540     > ./outputs/t3334

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1543     > ./outputs/t3335

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1544     > ./outputs/t3336

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1545     > ./outputs/t3337

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1547      > ./outputs/t3338

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1548     > ./outputs/t3339

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1550     > ./outputs/t3340

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1552     > ./outputs/t3341

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1553     > ./outputs/t3342

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1555     > ./outputs/t3343

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1558     > ./outputs/t3344

./print_tokens_instrumented.exe $ROOT/inputs/uslin.156     > ./outputs/t3345

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1560     > ./outputs/t3346

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1561     > ./outputs/t3347

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1564     > ./outputs/t3348

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1568     > ./outputs/t3349

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1571     > ./outputs/t3350

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1573     > ./outputs/t3351

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1574     > ./outputs/t3352

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1575      > ./outputs/t3353

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1577     > ./outputs/t3354

./print_tokens_instrumented.exe $ROOT/inputs/uslin.158     > ./outputs/t3355

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1580     > ./outputs/t3356

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1581     > ./outputs/t3357

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1582     > ./outputs/t3358

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1583      > ./outputs/t3359

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1585     > ./outputs/t3360

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1586      > ./outputs/t3361

./print_tokens_instrumented.exe $ROOT/inputs/uslin.159     > ./outputs/t3362

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1590     > ./outputs/t3363

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1591     > ./outputs/t3364

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1592     > ./outputs/t3365

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1594     > ./outputs/t3366

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1595      > ./outputs/t3367

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1597     > ./outputs/t3368

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1601     > ./outputs/t3369

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1602     > ./outputs/t3370

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1603     > ./outputs/t3371

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1606     > ./outputs/t3372

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1607     > ./outputs/t3373

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1608     > ./outputs/t3374

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1610      > ./outputs/t3375

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1614     > ./outputs/t3376

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1617     > ./outputs/t3377

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1618     > ./outputs/t3378

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1619     > ./outputs/t3379

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1620     > ./outputs/t3380

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1623     > ./outputs/t3381

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1624     > ./outputs/t3382

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1625     > ./outputs/t3383

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1626      > ./outputs/t3384

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1629     > ./outputs/t3385

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1630     > ./outputs/t3386

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1631     > ./outputs/t3387

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1632     > ./outputs/t3388

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1634     > ./outputs/t3389

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1635     > ./outputs/t3390

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1637     > ./outputs/t3391

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1638     > ./outputs/t3392

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1641     > ./outputs/t3393

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1644     > ./outputs/t3394

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1645     > ./outputs/t3395

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1646     > ./outputs/t3396

./print_tokens_instrumented.exe $ROOT/inputs/uslin.165     > ./outputs/t3397

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1651     > ./outputs/t3398

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1652     > ./outputs/t3399

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1653     > ./outputs/t3400

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1654     > ./outputs/t3401

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1655     > ./outputs/t3402

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1656     > ./outputs/t3403

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1657     > ./outputs/t3404

./print_tokens_instrumented.exe $ROOT/inputs/uslin.166     > ./outputs/t3405

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1661     > ./outputs/t3406

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1662     > ./outputs/t3407

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1663     > ./outputs/t3408

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1664     > ./outputs/t3409

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1665     > ./outputs/t3410

./print_tokens_instrumented.exe $ROOT/inputs/uslin.167     > ./outputs/t3411

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1673     > ./outputs/t3412

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1674     > ./outputs/t3413

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1677      > ./outputs/t3414

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1678     > ./outputs/t3415

./print_tokens_instrumented.exe $ROOT/inputs/uslin.168     > ./outputs/t3416

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1680     > ./outputs/t3417

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1682     > ./outputs/t3418

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1683     > ./outputs/t3419

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1684     > ./outputs/t3420

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1685     > ./outputs/t3421

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1687     > ./outputs/t3422

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1688     > ./outputs/t3423

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1689     > ./outputs/t3424

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1690     > ./outputs/t3425

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1692     > ./outputs/t3426

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1693     > ./outputs/t3427

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1696     > ./outputs/t3428

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1697     > ./outputs/t3429

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1699     > ./outputs/t3430

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1700     > ./outputs/t3431

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1701     > ./outputs/t3432

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1703     > ./outputs/t3433

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1704     > ./outputs/t3434

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1705     > ./outputs/t3435

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1706     > ./outputs/t3436

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1708     > ./outputs/t3437

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1709     > ./outputs/t3438

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1713     > ./outputs/t3439

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1714     > ./outputs/t3440

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1715     > ./outputs/t3441

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1717     > ./outputs/t3442

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1718     > ./outputs/t3443

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1719     > ./outputs/t3444

./print_tokens_instrumented.exe $ROOT/inputs/uslin.172     > ./outputs/t3445

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1720     > ./outputs/t3446

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1721     > ./outputs/t3447

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1722     > ./outputs/t3448

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1723     > ./outputs/t3449

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1725     > ./outputs/t3450

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1726     > ./outputs/t3451

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1727     > ./outputs/t3452

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1729     > ./outputs/t3453

./print_tokens_instrumented.exe $ROOT/inputs/uslin.173     > ./outputs/t3454

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1731     > ./outputs/t3455

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1732     > ./outputs/t3456

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1733     > ./outputs/t3457

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1734     > ./outputs/t3458

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1736     > ./outputs/t3459

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1739     > ./outputs/t3460

./print_tokens_instrumented.exe $ROOT/inputs/uslin.174     > ./outputs/t3461

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1741     > ./outputs/t3462

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1743     > ./outputs/t3463

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1745     > ./outputs/t3464

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1746     > ./outputs/t3465

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1747     > ./outputs/t3466

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1748     > ./outputs/t3467

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1749     > ./outputs/t3468

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1750     > ./outputs/t3469

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1751     > ./outputs/t3470

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1752     > ./outputs/t3471

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1757     > ./outputs/t3472

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1758     > ./outputs/t3473

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1759     > ./outputs/t3474

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1761     > ./outputs/t3475

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1763     > ./outputs/t3476

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1765     > ./outputs/t3477

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1766     > ./outputs/t3478

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1767     > ./outputs/t3479

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1768     > ./outputs/t3480

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1769     > ./outputs/t3481

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1770     > ./outputs/t3482

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1772     > ./outputs/t3483

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1775     > ./outputs/t3484

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1777     > ./outputs/t3485

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1779     > ./outputs/t3486

./print_tokens_instrumented.exe $ROOT/inputs/uslin.178     > ./outputs/t3487

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1780     > ./outputs/t3488

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1781     > ./outputs/t3489

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1784     > ./outputs/t3490

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1786     > ./outputs/t3491

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1788      > ./outputs/t3492

./print_tokens_instrumented.exe $ROOT/inputs/uslin.179     > ./outputs/t3493

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1790     > ./outputs/t3494

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1791     > ./outputs/t3495

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1795      > ./outputs/t3496

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1796     > ./outputs/t3497

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1797     > ./outputs/t3498

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1799     > ./outputs/t3499

./print_tokens_instrumented.exe $ROOT/inputs/uslin.18     > ./outputs/t3500

./print_tokens_instrumented.exe $ROOT/inputs/uslin.180     > ./outputs/t3501

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1801     > ./outputs/t3502

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1803     > ./outputs/t3503

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1804     > ./outputs/t3504

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1805     > ./outputs/t3505

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1807     > ./outputs/t3506

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1808     > ./outputs/t3507

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1810     > ./outputs/t3508

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1811     > ./outputs/t3509

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1813     > ./outputs/t3510

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1815     > ./outputs/t3511

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1817     > ./outputs/t3512

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1820     > ./outputs/t3513

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1822     > ./outputs/t3514

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1824     > ./outputs/t3515

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1825     > ./outputs/t3516

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1826     > ./outputs/t3517

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1828     > ./outputs/t3518

./print_tokens_instrumented.exe $ROOT/inputs/uslin.183     > ./outputs/t3519

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1831     > ./outputs/t3520

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1833     > ./outputs/t3521

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1834     > ./outputs/t3522

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1840     > ./outputs/t3523

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1841     > ./outputs/t3524

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1842     > ./outputs/t3525

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1843     > ./outputs/t3526

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1844     > ./outputs/t3527

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1846     > ./outputs/t3528

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1849     > ./outputs/t3529

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1851     > ./outputs/t3530

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1852     > ./outputs/t3531

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1853      > ./outputs/t3532

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1854      > ./outputs/t3533

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1857     > ./outputs/t3534

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1857.noeof     > ./outputs/t3535

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1859     > ./outputs/t3536

./print_tokens_instrumented.exe $ROOT/inputs/uslin.186     > ./outputs/t3537

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1860     > ./outputs/t3538

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1861     > ./outputs/t3539

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1864     > ./outputs/t3540

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1866     > ./outputs/t3541

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1867     > ./outputs/t3542

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1868     > ./outputs/t3543

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1869     > ./outputs/t3544

./print_tokens_instrumented.exe $ROOT/inputs/uslin.187     > ./outputs/t3545

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1870     > ./outputs/t3546

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1875     > ./outputs/t3547

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1879     > ./outputs/t3548

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1883     > ./outputs/t3549

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1884     > ./outputs/t3550

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1888     > ./outputs/t3551

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1889     > ./outputs/t3552

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1890     > ./outputs/t3553

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1894     > ./outputs/t3554

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1899     > ./outputs/t3555

./print_tokens_instrumented.exe $ROOT/inputs/uslin.19     > ./outputs/t3556

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1900     > ./outputs/t3557

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1901     > ./outputs/t3558

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1902     > ./outputs/t3559

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1904     > ./outputs/t3560

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1906     > ./outputs/t3561

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1909     > ./outputs/t3562

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1910     > ./outputs/t3563

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1911     > ./outputs/t3564

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1915     > ./outputs/t3565

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1919     > ./outputs/t3566

./print_tokens_instrumented.exe $ROOT/inputs/uslin.192     > ./outputs/t3567

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1921     > ./outputs/t3568

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1923     > ./outputs/t3569

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1927     > ./outputs/t3570

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1928      > ./outputs/t3571

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1930     > ./outputs/t3572

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1939     > ./outputs/t3573

./print_tokens_instrumented.exe $ROOT/inputs/uslin.194     > ./outputs/t3574

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1940     > ./outputs/t3575

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1941     > ./outputs/t3576

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1942     > ./outputs/t3577

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1943     > ./outputs/t3578

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1949     > ./outputs/t3579

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1951     > ./outputs/t3580

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1952     > ./outputs/t3581

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1953     > ./outputs/t3582

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1954     > ./outputs/t3583

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1956     > ./outputs/t3584

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1957     > ./outputs/t3585

./print_tokens_instrumented.exe $ROOT/inputs/uslin.196     > ./outputs/t3586

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1960     > ./outputs/t3587

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1962     > ./outputs/t3588

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1963     > ./outputs/t3589

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1965     > ./outputs/t3590

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1966     > ./outputs/t3591

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1967     > ./outputs/t3592

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1968     > ./outputs/t3593

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1969     > ./outputs/t3594

./print_tokens_instrumented.exe $ROOT/inputs/uslin.197      > ./outputs/t3595

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1973     > ./outputs/t3596

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1976     > ./outputs/t3597

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1977     > ./outputs/t3598

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1978     > ./outputs/t3599

./print_tokens_instrumented.exe $ROOT/inputs/uslin.198     > ./outputs/t3600

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1980     > ./outputs/t3601

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1981     > ./outputs/t3602

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1982     > ./outputs/t3603

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1983     > ./outputs/t3604

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1984.noeof     > ./outputs/t3605

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1986     > ./outputs/t3606

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1987     > ./outputs/t3607

./print_tokens_instrumented.exe $ROOT/inputs/uslin.199     > ./outputs/t3608

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1991     > ./outputs/t3609

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1992      > ./outputs/t3610

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1993     > ./outputs/t3611

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1994     > ./outputs/t3612

./print_tokens_instrumented.exe $ROOT/inputs/uslin.1996     > ./outputs/t3613

./print_tokens_instrumented.exe $ROOT/inputs/uslin.200     > ./outputs/t3614

./print_tokens_instrumented.exe $ROOT/inputs/uslin.202     > ./outputs/t3615

./print_tokens_instrumented.exe $ROOT/inputs/uslin.203     > ./outputs/t3616

./print_tokens_instrumented.exe $ROOT/inputs/uslin.205     > ./outputs/t3617

./print_tokens_instrumented.exe $ROOT/inputs/uslin.211     > ./outputs/t3618

./print_tokens_instrumented.exe $ROOT/inputs/uslin.212     > ./outputs/t3619

./print_tokens_instrumented.exe $ROOT/inputs/uslin.216     > ./outputs/t3620

./print_tokens_instrumented.exe $ROOT/inputs/uslin.217     > ./outputs/t3621

./print_tokens_instrumented.exe $ROOT/inputs/uslin.218     > ./outputs/t3622

./print_tokens_instrumented.exe $ROOT/inputs/uslin.219     > ./outputs/t3623

./print_tokens_instrumented.exe $ROOT/inputs/uslin.220     > ./outputs/t3624

./print_tokens_instrumented.exe $ROOT/inputs/uslin.221     > ./outputs/t3625

./print_tokens_instrumented.exe $ROOT/inputs/uslin.222     > ./outputs/t3626

./print_tokens_instrumented.exe $ROOT/inputs/uslin.223     > ./outputs/t3627

./print_tokens_instrumented.exe $ROOT/inputs/uslin.224     > ./outputs/t3628

./print_tokens_instrumented.exe $ROOT/inputs/uslin.227     > ./outputs/t3629

./print_tokens_instrumented.exe $ROOT/inputs/uslin.228     > ./outputs/t3630

./print_tokens_instrumented.exe $ROOT/inputs/uslin.229     > ./outputs/t3631

./print_tokens_instrumented.exe $ROOT/inputs/uslin.23     > ./outputs/t3632

./print_tokens_instrumented.exe $ROOT/inputs/uslin.231     > ./outputs/t3633

./print_tokens_instrumented.exe $ROOT/inputs/uslin.232     > ./outputs/t3634

./print_tokens_instrumented.exe $ROOT/inputs/uslin.235     > ./outputs/t3635

./print_tokens_instrumented.exe $ROOT/inputs/uslin.236     > ./outputs/t3636

./print_tokens_instrumented.exe $ROOT/inputs/uslin.24     > ./outputs/t3637

./print_tokens_instrumented.exe $ROOT/inputs/uslin.240     > ./outputs/t3638

./print_tokens_instrumented.exe $ROOT/inputs/uslin.241     > ./outputs/t3639

./print_tokens_instrumented.exe $ROOT/inputs/uslin.242     > ./outputs/t3640

./print_tokens_instrumented.exe $ROOT/inputs/uslin.250     > ./outputs/t3641

./print_tokens_instrumented.exe $ROOT/inputs/uslin.253     > ./outputs/t3642

./print_tokens_instrumented.exe $ROOT/inputs/uslin.255     > ./outputs/t3643

./print_tokens_instrumented.exe $ROOT/inputs/uslin.259     > ./outputs/t3644

./print_tokens_instrumented.exe $ROOT/inputs/uslin.26     > ./outputs/t3645

./print_tokens_instrumented.exe $ROOT/inputs/uslin.261     > ./outputs/t3646

./print_tokens_instrumented.exe $ROOT/inputs/uslin.262     > ./outputs/t3647

./print_tokens_instrumented.exe $ROOT/inputs/uslin.263     > ./outputs/t3648

./print_tokens_instrumented.exe $ROOT/inputs/uslin.265      > ./outputs/t3649

./print_tokens_instrumented.exe $ROOT/inputs/uslin.269     > ./outputs/t3650

./print_tokens_instrumented.exe $ROOT/inputs/uslin.273     > ./outputs/t3651

./print_tokens_instrumented.exe $ROOT/inputs/uslin.274     > ./outputs/t3652

./print_tokens_instrumented.exe $ROOT/inputs/uslin.278     > ./outputs/t3653

./print_tokens_instrumented.exe $ROOT/inputs/uslin.279     > ./outputs/t3654

./print_tokens_instrumented.exe $ROOT/inputs/uslin.284     > ./outputs/t3655

./print_tokens_instrumented.exe $ROOT/inputs/uslin.285     > ./outputs/t3656

./print_tokens_instrumented.exe $ROOT/inputs/uslin.288     > ./outputs/t3657

./print_tokens_instrumented.exe $ROOT/inputs/uslin.29     > ./outputs/t3658

./print_tokens_instrumented.exe $ROOT/inputs/uslin.290     > ./outputs/t3659

./print_tokens_instrumented.exe $ROOT/inputs/uslin.291     > ./outputs/t3660

./print_tokens_instrumented.exe $ROOT/inputs/uslin.292     > ./outputs/t3661

./print_tokens_instrumented.exe $ROOT/inputs/uslin.293     > ./outputs/t3662

./print_tokens_instrumented.exe $ROOT/inputs/uslin.3      > ./outputs/t3663

./print_tokens_instrumented.exe $ROOT/inputs/uslin.300     > ./outputs/t3664

./print_tokens_instrumented.exe $ROOT/inputs/uslin.303      > ./outputs/t3665

./print_tokens_instrumented.exe $ROOT/inputs/uslin.304     > ./outputs/t3666

./print_tokens_instrumented.exe $ROOT/inputs/uslin.308      > ./outputs/t3667

./print_tokens_instrumented.exe $ROOT/inputs/uslin.309     > ./outputs/t3668

./print_tokens_instrumented.exe $ROOT/inputs/uslin.310     > ./outputs/t3669

./print_tokens_instrumented.exe $ROOT/inputs/uslin.312     > ./outputs/t3670

./print_tokens_instrumented.exe $ROOT/inputs/uslin.313     > ./outputs/t3671

./print_tokens_instrumented.exe $ROOT/inputs/uslin.314     > ./outputs/t3672

./print_tokens_instrumented.exe $ROOT/inputs/uslin.315     > ./outputs/t3673

./print_tokens_instrumented.exe $ROOT/inputs/uslin.316     > ./outputs/t3674

./print_tokens_instrumented.exe $ROOT/inputs/uslin.317     > ./outputs/t3675

./print_tokens_instrumented.exe $ROOT/inputs/uslin.32     > ./outputs/t3676

./print_tokens_instrumented.exe $ROOT/inputs/uslin.324     > ./outputs/t3677

./print_tokens_instrumented.exe $ROOT/inputs/uslin.326     > ./outputs/t3678

./print_tokens_instrumented.exe $ROOT/inputs/uslin.328     > ./outputs/t3679

./print_tokens_instrumented.exe $ROOT/inputs/uslin.331     > ./outputs/t3680

./print_tokens_instrumented.exe $ROOT/inputs/uslin.332     > ./outputs/t3681

./print_tokens_instrumented.exe $ROOT/inputs/uslin.336     > ./outputs/t3682

./print_tokens_instrumented.exe $ROOT/inputs/uslin.338     > ./outputs/t3683

./print_tokens_instrumented.exe $ROOT/inputs/uslin.341     > ./outputs/t3684

./print_tokens_instrumented.exe $ROOT/inputs/uslin.342     > ./outputs/t3685

./print_tokens_instrumented.exe $ROOT/inputs/uslin.346     > ./outputs/t3686

./print_tokens_instrumented.exe $ROOT/inputs/uslin.347     > ./outputs/t3687

./print_tokens_instrumented.exe $ROOT/inputs/uslin.35     > ./outputs/t3688

./print_tokens_instrumented.exe $ROOT/inputs/uslin.351     > ./outputs/t3689

./print_tokens_instrumented.exe $ROOT/inputs/uslin.354     > ./outputs/t3690

./print_tokens_instrumented.exe $ROOT/inputs/uslin.356     > ./outputs/t3691

./print_tokens_instrumented.exe $ROOT/inputs/uslin.357     > ./outputs/t3692

./print_tokens_instrumented.exe $ROOT/inputs/uslin.358     > ./outputs/t3693

./print_tokens_instrumented.exe $ROOT/inputs/uslin.359     > ./outputs/t3694

./print_tokens_instrumented.exe $ROOT/inputs/uslin.361     > ./outputs/t3695

./print_tokens_instrumented.exe $ROOT/inputs/uslin.364     > ./outputs/t3696

./print_tokens_instrumented.exe $ROOT/inputs/uslin.365     > ./outputs/t3697

./print_tokens_instrumented.exe $ROOT/inputs/uslin.366     > ./outputs/t3698

./print_tokens_instrumented.exe $ROOT/inputs/uslin.368     > ./outputs/t3699

./print_tokens_instrumented.exe $ROOT/inputs/uslin.370     > ./outputs/t3700

./print_tokens_instrumented.exe $ROOT/inputs/uslin.371     > ./outputs/t3701

./print_tokens_instrumented.exe $ROOT/inputs/uslin.373     > ./outputs/t3702

./print_tokens_instrumented.exe $ROOT/inputs/uslin.374     > ./outputs/t3703

./print_tokens_instrumented.exe $ROOT/inputs/uslin.375     > ./outputs/t3704

./print_tokens_instrumented.exe $ROOT/inputs/uslin.376     > ./outputs/t3705

./print_tokens_instrumented.exe $ROOT/inputs/uslin.38     > ./outputs/t3706

./print_tokens_instrumented.exe $ROOT/inputs/uslin.381     > ./outputs/t3707

./print_tokens_instrumented.exe $ROOT/inputs/uslin.382     > ./outputs/t3708

./print_tokens_instrumented.exe $ROOT/inputs/uslin.384     > ./outputs/t3709

./print_tokens_instrumented.exe $ROOT/inputs/uslin.385     > ./outputs/t3710

./print_tokens_instrumented.exe $ROOT/inputs/uslin.389     > ./outputs/t3711

./print_tokens_instrumented.exe $ROOT/inputs/uslin.39     > ./outputs/t3712

./print_tokens_instrumented.exe $ROOT/inputs/uslin.390     > ./outputs/t3713

./print_tokens_instrumented.exe $ROOT/inputs/uslin.391     > ./outputs/t3714

./print_tokens_instrumented.exe $ROOT/inputs/uslin.393     > ./outputs/t3715

./print_tokens_instrumented.exe $ROOT/inputs/uslin.394     > ./outputs/t3716

./print_tokens_instrumented.exe $ROOT/inputs/uslin.396.noeof     > ./outputs/t3717

./print_tokens_instrumented.exe $ROOT/inputs/uslin.397     > ./outputs/t3718

./print_tokens_instrumented.exe $ROOT/inputs/uslin.399     > ./outputs/t3719

./print_tokens_instrumented.exe $ROOT/inputs/uslin.400     > ./outputs/t3720

./print_tokens_instrumented.exe $ROOT/inputs/uslin.401     > ./outputs/t3721

./print_tokens_instrumented.exe $ROOT/inputs/uslin.403     > ./outputs/t3722

./print_tokens_instrumented.exe $ROOT/inputs/uslin.404     > ./outputs/t3723

./print_tokens_instrumented.exe $ROOT/inputs/uslin.405     > ./outputs/t3724

./print_tokens_instrumented.exe $ROOT/inputs/uslin.406     > ./outputs/t3725

./print_tokens_instrumented.exe $ROOT/inputs/uslin.408     > ./outputs/t3726

./print_tokens_instrumented.exe $ROOT/inputs/uslin.409     > ./outputs/t3727

./print_tokens_instrumented.exe $ROOT/inputs/uslin.410     > ./outputs/t3728

./print_tokens_instrumented.exe $ROOT/inputs/uslin.411      > ./outputs/t3729

./print_tokens_instrumented.exe $ROOT/inputs/uslin.414     > ./outputs/t3730

./print_tokens_instrumented.exe $ROOT/inputs/uslin.416     > ./outputs/t3731

./print_tokens_instrumented.exe $ROOT/inputs/uslin.416.noeof     > ./outputs/t3732

./print_tokens_instrumented.exe $ROOT/inputs/uslin.417     > ./outputs/t3733

./print_tokens_instrumented.exe $ROOT/inputs/uslin.420     > ./outputs/t3734

./print_tokens_instrumented.exe $ROOT/inputs/uslin.422     > ./outputs/t3735

./print_tokens_instrumented.exe $ROOT/inputs/uslin.426     > ./outputs/t3736

./print_tokens_instrumented.exe $ROOT/inputs/uslin.427     > ./outputs/t3737

./print_tokens_instrumented.exe $ROOT/inputs/uslin.429     > ./outputs/t3738

./print_tokens_instrumented.exe $ROOT/inputs/uslin.43     > ./outputs/t3739

./print_tokens_instrumented.exe $ROOT/inputs/uslin.431     > ./outputs/t3740

./print_tokens_instrumented.exe $ROOT/inputs/uslin.437     > ./outputs/t3741

./print_tokens_instrumented.exe $ROOT/inputs/uslin.439     > ./outputs/t3742

./print_tokens_instrumented.exe $ROOT/inputs/uslin.44     > ./outputs/t3743

./print_tokens_instrumented.exe $ROOT/inputs/uslin.440     > ./outputs/t3744

./print_tokens_instrumented.exe $ROOT/inputs/uslin.441.noeof     > ./outputs/t3745

./print_tokens_instrumented.exe $ROOT/inputs/uslin.443     > ./outputs/t3746

./print_tokens_instrumented.exe $ROOT/inputs/uslin.444     > ./outputs/t3747

./print_tokens_instrumented.exe $ROOT/inputs/uslin.445     > ./outputs/t3748

./print_tokens_instrumented.exe $ROOT/inputs/uslin.446     > ./outputs/t3749

./print_tokens_instrumented.exe $ROOT/inputs/uslin.45     > ./outputs/t3750

./print_tokens_instrumented.exe $ROOT/inputs/uslin.452     > ./outputs/t3751

./print_tokens_instrumented.exe $ROOT/inputs/uslin.453     > ./outputs/t3752

./print_tokens_instrumented.exe $ROOT/inputs/uslin.454     > ./outputs/t3753

./print_tokens_instrumented.exe $ROOT/inputs/uslin.458     > ./outputs/t3754

./print_tokens_instrumented.exe $ROOT/inputs/uslin.46     > ./outputs/t3755

./print_tokens_instrumented.exe $ROOT/inputs/uslin.460     > ./outputs/t3756

./print_tokens_instrumented.exe $ROOT/inputs/uslin.461     > ./outputs/t3757

./print_tokens_instrumented.exe $ROOT/inputs/uslin.464     > ./outputs/t3758

./print_tokens_instrumented.exe $ROOT/inputs/uslin.465     > ./outputs/t3759

./print_tokens_instrumented.exe $ROOT/inputs/uslin.466     > ./outputs/t3760

./print_tokens_instrumented.exe $ROOT/inputs/uslin.470     > ./outputs/t3761

./print_tokens_instrumented.exe $ROOT/inputs/uslin.471     > ./outputs/t3762

./print_tokens_instrumented.exe $ROOT/inputs/uslin.472     > ./outputs/t3763

./print_tokens_instrumented.exe $ROOT/inputs/uslin.473     > ./outputs/t3764

./print_tokens_instrumented.exe $ROOT/inputs/uslin.474     > ./outputs/t3765

./print_tokens_instrumented.exe $ROOT/inputs/uslin.478     > ./outputs/t3766

./print_tokens_instrumented.exe $ROOT/inputs/uslin.481     > ./outputs/t3767

./print_tokens_instrumented.exe $ROOT/inputs/uslin.482     > ./outputs/t3768

./print_tokens_instrumented.exe $ROOT/inputs/uslin.484     > ./outputs/t3769

./print_tokens_instrumented.exe $ROOT/inputs/uslin.485     > ./outputs/t3770

./print_tokens_instrumented.exe $ROOT/inputs/uslin.486     > ./outputs/t3771

./print_tokens_instrumented.exe $ROOT/inputs/uslin.488     > ./outputs/t3772

./print_tokens_instrumented.exe $ROOT/inputs/uslin.49     > ./outputs/t3773

./print_tokens_instrumented.exe $ROOT/inputs/uslin.490     > ./outputs/t3774

./print_tokens_instrumented.exe $ROOT/inputs/uslin.491     > ./outputs/t3775

./print_tokens_instrumented.exe $ROOT/inputs/uslin.492     > ./outputs/t3776

./print_tokens_instrumented.exe $ROOT/inputs/uslin.495     > ./outputs/t3777

./print_tokens_instrumented.exe $ROOT/inputs/uslin.497     > ./outputs/t3778

./print_tokens_instrumented.exe $ROOT/inputs/uslin.498     > ./outputs/t3779

./print_tokens_instrumented.exe $ROOT/inputs/uslin.499     > ./outputs/t3780

./print_tokens_instrumented.exe $ROOT/inputs/uslin.5      > ./outputs/t3781

./print_tokens_instrumented.exe $ROOT/inputs/uslin.5.noeof     > ./outputs/t3782

./print_tokens_instrumented.exe $ROOT/inputs/uslin.500     > ./outputs/t3783

./print_tokens_instrumented.exe $ROOT/inputs/uslin.501     > ./outputs/t3784

./print_tokens_instrumented.exe $ROOT/inputs/uslin.503     > ./outputs/t3785

./print_tokens_instrumented.exe $ROOT/inputs/uslin.505     > ./outputs/t3786

./print_tokens_instrumented.exe $ROOT/inputs/uslin.508     > ./outputs/t3787

./print_tokens_instrumented.exe $ROOT/inputs/uslin.509     > ./outputs/t3788

./print_tokens_instrumented.exe $ROOT/inputs/uslin.51     > ./outputs/t3789

./print_tokens_instrumented.exe $ROOT/inputs/uslin.516     > ./outputs/t3790

./print_tokens_instrumented.exe $ROOT/inputs/uslin.517     > ./outputs/t3791

./print_tokens_instrumented.exe $ROOT/inputs/uslin.521     > ./outputs/t3792

./print_tokens_instrumented.exe $ROOT/inputs/uslin.523     > ./outputs/t3793

./print_tokens_instrumented.exe $ROOT/inputs/uslin.524     > ./outputs/t3794

./print_tokens_instrumented.exe $ROOT/inputs/uslin.529     > ./outputs/t3795

./print_tokens_instrumented.exe $ROOT/inputs/uslin.53     > ./outputs/t3796

./print_tokens_instrumented.exe $ROOT/inputs/uslin.530     > ./outputs/t3797

./print_tokens_instrumented.exe $ROOT/inputs/uslin.531     > ./outputs/t3798

./print_tokens_instrumented.exe $ROOT/inputs/uslin.532     > ./outputs/t3799

./print_tokens_instrumented.exe $ROOT/inputs/uslin.535     > ./outputs/t3800

./print_tokens_instrumented.exe $ROOT/inputs/uslin.536     > ./outputs/t3801

./print_tokens_instrumented.exe $ROOT/inputs/uslin.541     > ./outputs/t3802

./print_tokens_instrumented.exe $ROOT/inputs/uslin.542     > ./outputs/t3803

./print_tokens_instrumented.exe $ROOT/inputs/uslin.545     > ./outputs/t3804

./print_tokens_instrumented.exe $ROOT/inputs/uslin.546     > ./outputs/t3805

./print_tokens_instrumented.exe $ROOT/inputs/uslin.547     > ./outputs/t3806

./print_tokens_instrumented.exe $ROOT/inputs/uslin.548     > ./outputs/t3807

./print_tokens_instrumented.exe $ROOT/inputs/uslin.549     > ./outputs/t3808

./print_tokens_instrumented.exe $ROOT/inputs/uslin.55     > ./outputs/t3809

./print_tokens_instrumented.exe $ROOT/inputs/uslin.550      > ./outputs/t3810

./print_tokens_instrumented.exe $ROOT/inputs/uslin.551     > ./outputs/t3811

./print_tokens_instrumented.exe $ROOT/inputs/uslin.554     > ./outputs/t3812

./print_tokens_instrumented.exe $ROOT/inputs/uslin.555     > ./outputs/t3813

./print_tokens_instrumented.exe $ROOT/inputs/uslin.556     > ./outputs/t3814

./print_tokens_instrumented.exe $ROOT/inputs/uslin.559     > ./outputs/t3815

./print_tokens_instrumented.exe $ROOT/inputs/uslin.56     > ./outputs/t3816

./print_tokens_instrumented.exe $ROOT/inputs/uslin.560     > ./outputs/t3817

./print_tokens_instrumented.exe $ROOT/inputs/uslin.561     > ./outputs/t3818

./print_tokens_instrumented.exe $ROOT/inputs/uslin.563     > ./outputs/t3819

./print_tokens_instrumented.exe $ROOT/inputs/uslin.564     > ./outputs/t3820

./print_tokens_instrumented.exe $ROOT/inputs/uslin.565     > ./outputs/t3821

./print_tokens_instrumented.exe $ROOT/inputs/uslin.567     > ./outputs/t3822

./print_tokens_instrumented.exe $ROOT/inputs/uslin.57     > ./outputs/t3823

./print_tokens_instrumented.exe $ROOT/inputs/uslin.575     > ./outputs/t3824

./print_tokens_instrumented.exe $ROOT/inputs/uslin.578     > ./outputs/t3825

./print_tokens_instrumented.exe $ROOT/inputs/uslin.587     > ./outputs/t3826

./print_tokens_instrumented.exe $ROOT/inputs/uslin.588     > ./outputs/t3827

./print_tokens_instrumented.exe $ROOT/inputs/uslin.589     > ./outputs/t3828

./print_tokens_instrumented.exe $ROOT/inputs/uslin.59     > ./outputs/t3829

./print_tokens_instrumented.exe $ROOT/inputs/uslin.590     > ./outputs/t3830

./print_tokens_instrumented.exe $ROOT/inputs/uslin.591     > ./outputs/t3831

./print_tokens_instrumented.exe $ROOT/inputs/uslin.595     > ./outputs/t3832

./print_tokens_instrumented.exe $ROOT/inputs/uslin.599     > ./outputs/t3833

./print_tokens_instrumented.exe $ROOT/inputs/uslin.6     > ./outputs/t3834

./print_tokens_instrumented.exe $ROOT/inputs/uslin.600     > ./outputs/t3835

./print_tokens_instrumented.exe $ROOT/inputs/uslin.601     > ./outputs/t3836

./print_tokens_instrumented.exe $ROOT/inputs/uslin.603     > ./outputs/t3837

./print_tokens_instrumented.exe $ROOT/inputs/uslin.604     > ./outputs/t3838

./print_tokens_instrumented.exe $ROOT/inputs/uslin.606     > ./outputs/t3839

./print_tokens_instrumented.exe $ROOT/inputs/uslin.608     > ./outputs/t3840

./print_tokens_instrumented.exe $ROOT/inputs/uslin.609      > ./outputs/t3841

./print_tokens_instrumented.exe $ROOT/inputs/uslin.61     > ./outputs/t3842

./print_tokens_instrumented.exe $ROOT/inputs/uslin.610     > ./outputs/t3843

./print_tokens_instrumented.exe $ROOT/inputs/uslin.612     > ./outputs/t3844

./print_tokens_instrumented.exe $ROOT/inputs/uslin.613     > ./outputs/t3845

./print_tokens_instrumented.exe $ROOT/inputs/uslin.618     > ./outputs/t3846

./print_tokens_instrumented.exe $ROOT/inputs/uslin.620     > ./outputs/t3847

./print_tokens_instrumented.exe $ROOT/inputs/uslin.622     > ./outputs/t3848

./print_tokens_instrumented.exe $ROOT/inputs/uslin.628     > ./outputs/t3849

./print_tokens_instrumented.exe $ROOT/inputs/uslin.629      > ./outputs/t3850

./print_tokens_instrumented.exe $ROOT/inputs/uslin.631     > ./outputs/t3851

./print_tokens_instrumented.exe $ROOT/inputs/uslin.632     > ./outputs/t3852

./print_tokens_instrumented.exe $ROOT/inputs/uslin.634     > ./outputs/t3853

./print_tokens_instrumented.exe $ROOT/inputs/uslin.635     > ./outputs/t3854

./print_tokens_instrumented.exe $ROOT/inputs/uslin.637     > ./outputs/t3855

./print_tokens_instrumented.exe $ROOT/inputs/uslin.637.noeof     > ./outputs/t3856

./print_tokens_instrumented.exe $ROOT/inputs/uslin.638     > ./outputs/t3857

./print_tokens_instrumented.exe $ROOT/inputs/uslin.639     > ./outputs/t3858

./print_tokens_instrumented.exe $ROOT/inputs/uslin.639.noeof     > ./outputs/t3859

./print_tokens_instrumented.exe $ROOT/inputs/uslin.641     > ./outputs/t3860

./print_tokens_instrumented.exe $ROOT/inputs/uslin.643     > ./outputs/t3861

./print_tokens_instrumented.exe $ROOT/inputs/uslin.644     > ./outputs/t3862

./print_tokens_instrumented.exe $ROOT/inputs/uslin.645     > ./outputs/t3863

./print_tokens_instrumented.exe $ROOT/inputs/uslin.646     > ./outputs/t3864

./print_tokens_instrumented.exe $ROOT/inputs/uslin.649     > ./outputs/t3865

./print_tokens_instrumented.exe $ROOT/inputs/uslin.65     > ./outputs/t3866

./print_tokens_instrumented.exe $ROOT/inputs/uslin.651     > ./outputs/t3867

./print_tokens_instrumented.exe $ROOT/inputs/uslin.652     > ./outputs/t3868

./print_tokens_instrumented.exe $ROOT/inputs/uslin.653     > ./outputs/t3869

./print_tokens_instrumented.exe $ROOT/inputs/uslin.654     > ./outputs/t3870

./print_tokens_instrumented.exe $ROOT/inputs/uslin.657     > ./outputs/t3871

./print_tokens_instrumented.exe $ROOT/inputs/uslin.658     > ./outputs/t3872

./print_tokens_instrumented.exe $ROOT/inputs/uslin.66      > ./outputs/t3873

./print_tokens_instrumented.exe $ROOT/inputs/uslin.660     > ./outputs/t3874

./print_tokens_instrumented.exe $ROOT/inputs/uslin.661     > ./outputs/t3875

./print_tokens_instrumented.exe $ROOT/inputs/uslin.664     > ./outputs/t3876

./print_tokens_instrumented.exe $ROOT/inputs/uslin.666     > ./outputs/t3877

./print_tokens_instrumented.exe $ROOT/inputs/uslin.667     > ./outputs/t3878

./print_tokens_instrumented.exe $ROOT/inputs/uslin.671     > ./outputs/t3879

./print_tokens_instrumented.exe $ROOT/inputs/uslin.672     > ./outputs/t3880

./print_tokens_instrumented.exe $ROOT/inputs/uslin.675     > ./outputs/t3881

./print_tokens_instrumented.exe $ROOT/inputs/uslin.678     > ./outputs/t3882

./print_tokens_instrumented.exe $ROOT/inputs/uslin.681     > ./outputs/t3883

./print_tokens_instrumented.exe $ROOT/inputs/uslin.683     > ./outputs/t3884

./print_tokens_instrumented.exe $ROOT/inputs/uslin.684     > ./outputs/t3885

./print_tokens_instrumented.exe $ROOT/inputs/uslin.685     > ./outputs/t3886

./print_tokens_instrumented.exe $ROOT/inputs/uslin.687     > ./outputs/t3887

./print_tokens_instrumented.exe $ROOT/inputs/uslin.688     > ./outputs/t3888

./print_tokens_instrumented.exe $ROOT/inputs/uslin.689     > ./outputs/t3889

./print_tokens_instrumented.exe $ROOT/inputs/uslin.69     > ./outputs/t3890

./print_tokens_instrumented.exe $ROOT/inputs/uslin.690     > ./outputs/t3891

./print_tokens_instrumented.exe $ROOT/inputs/uslin.692     > ./outputs/t3892

./print_tokens_instrumented.exe $ROOT/inputs/uslin.693     > ./outputs/t3893

./print_tokens_instrumented.exe $ROOT/inputs/uslin.694     > ./outputs/t3894

./print_tokens_instrumented.exe $ROOT/inputs/uslin.696     > ./outputs/t3895

./print_tokens_instrumented.exe $ROOT/inputs/uslin.697     > ./outputs/t3896

./print_tokens_instrumented.exe $ROOT/inputs/uslin.698     > ./outputs/t3897

./print_tokens_instrumented.exe $ROOT/inputs/uslin.699     > ./outputs/t3898

./print_tokens_instrumented.exe $ROOT/inputs/uslin.700     > ./outputs/t3899

./print_tokens_instrumented.exe $ROOT/inputs/uslin.702     > ./outputs/t3900

./print_tokens_instrumented.exe $ROOT/inputs/uslin.703     > ./outputs/t3901

./print_tokens_instrumented.exe $ROOT/inputs/uslin.705     > ./outputs/t3902

./print_tokens_instrumented.exe $ROOT/inputs/uslin.707     > ./outputs/t3903

./print_tokens_instrumented.exe $ROOT/inputs/uslin.710     > ./outputs/t3904

./print_tokens_instrumented.exe $ROOT/inputs/uslin.714     > ./outputs/t3905

./print_tokens_instrumented.exe $ROOT/inputs/uslin.715     > ./outputs/t3906

./print_tokens_instrumented.exe $ROOT/inputs/uslin.718     > ./outputs/t3907

./print_tokens_instrumented.exe $ROOT/inputs/uslin.720     > ./outputs/t3908

./print_tokens_instrumented.exe $ROOT/inputs/uslin.722     > ./outputs/t3909

./print_tokens_instrumented.exe $ROOT/inputs/uslin.724     > ./outputs/t3910

./print_tokens_instrumented.exe $ROOT/inputs/uslin.724.noeof     > ./outputs/t3911

./print_tokens_instrumented.exe $ROOT/inputs/uslin.725     > ./outputs/t3912

./print_tokens_instrumented.exe $ROOT/inputs/uslin.726     > ./outputs/t3913

./print_tokens_instrumented.exe $ROOT/inputs/uslin.729     > ./outputs/t3914

./print_tokens_instrumented.exe $ROOT/inputs/uslin.73     > ./outputs/t3915

./print_tokens_instrumented.exe $ROOT/inputs/uslin.730     > ./outputs/t3916

./print_tokens_instrumented.exe $ROOT/inputs/uslin.731     > ./outputs/t3917

./print_tokens_instrumented.exe $ROOT/inputs/uslin.732     > ./outputs/t3918

./print_tokens_instrumented.exe $ROOT/inputs/uslin.733     > ./outputs/t3919

./print_tokens_instrumented.exe $ROOT/inputs/uslin.735     > ./outputs/t3920

./print_tokens_instrumented.exe $ROOT/inputs/uslin.737     > ./outputs/t3921

./print_tokens_instrumented.exe $ROOT/inputs/uslin.739     > ./outputs/t3922

./print_tokens_instrumented.exe $ROOT/inputs/uslin.740     > ./outputs/t3923

./print_tokens_instrumented.exe $ROOT/inputs/uslin.741     > ./outputs/t3924

./print_tokens_instrumented.exe $ROOT/inputs/uslin.743     > ./outputs/t3925

./print_tokens_instrumented.exe $ROOT/inputs/uslin.745      > ./outputs/t3926

./print_tokens_instrumented.exe $ROOT/inputs/uslin.749     > ./outputs/t3927

./print_tokens_instrumented.exe $ROOT/inputs/uslin.750     > ./outputs/t3928

./print_tokens_instrumented.exe $ROOT/inputs/uslin.754     > ./outputs/t3929

./print_tokens_instrumented.exe $ROOT/inputs/uslin.755     > ./outputs/t3930

./print_tokens_instrumented.exe $ROOT/inputs/uslin.757     > ./outputs/t3931

./print_tokens_instrumented.exe $ROOT/inputs/uslin.759     > ./outputs/t3932

./print_tokens_instrumented.exe $ROOT/inputs/uslin.762     > ./outputs/t3933

./print_tokens_instrumented.exe $ROOT/inputs/uslin.763     > ./outputs/t3934

./print_tokens_instrumented.exe $ROOT/inputs/uslin.764     > ./outputs/t3935

./print_tokens_instrumented.exe $ROOT/inputs/uslin.77.noeof     > ./outputs/t3936

./print_tokens_instrumented.exe $ROOT/inputs/uslin.770     > ./outputs/t3937

./print_tokens_instrumented.exe $ROOT/inputs/uslin.771     > ./outputs/t3938

./print_tokens_instrumented.exe $ROOT/inputs/uslin.774     > ./outputs/t3939

./print_tokens_instrumented.exe $ROOT/inputs/uslin.780     > ./outputs/t3940

./print_tokens_instrumented.exe $ROOT/inputs/uslin.782     > ./outputs/t3941

./print_tokens_instrumented.exe $ROOT/inputs/uslin.783     > ./outputs/t3942

./print_tokens_instrumented.exe $ROOT/inputs/uslin.785     > ./outputs/t3943

./print_tokens_instrumented.exe $ROOT/inputs/uslin.792     > ./outputs/t3944

./print_tokens_instrumented.exe $ROOT/inputs/uslin.794     > ./outputs/t3945

./print_tokens_instrumented.exe $ROOT/inputs/uslin.795     > ./outputs/t3946

./print_tokens_instrumented.exe $ROOT/inputs/uslin.796     > ./outputs/t3947

./print_tokens_instrumented.exe $ROOT/inputs/uslin.797      > ./outputs/t3948

./print_tokens_instrumented.exe $ROOT/inputs/uslin.799     > ./outputs/t3949

./print_tokens_instrumented.exe $ROOT/inputs/uslin.800     > ./outputs/t3950

./print_tokens_instrumented.exe $ROOT/inputs/uslin.801     > ./outputs/t3951

./print_tokens_instrumented.exe $ROOT/inputs/uslin.802     > ./outputs/t3952

./print_tokens_instrumented.exe $ROOT/inputs/uslin.804     > ./outputs/t3953

./print_tokens_instrumented.exe $ROOT/inputs/uslin.805     > ./outputs/t3954

./print_tokens_instrumented.exe $ROOT/inputs/uslin.806     > ./outputs/t3955

./print_tokens_instrumented.exe $ROOT/inputs/uslin.809     > ./outputs/t3956

./print_tokens_instrumented.exe $ROOT/inputs/uslin.81     > ./outputs/t3957

./print_tokens_instrumented.exe $ROOT/inputs/uslin.810     > ./outputs/t3958

./print_tokens_instrumented.exe $ROOT/inputs/uslin.812     > ./outputs/t3959

./print_tokens_instrumented.exe $ROOT/inputs/uslin.813     > ./outputs/t3960

./print_tokens_instrumented.exe $ROOT/inputs/uslin.815      > ./outputs/t3961

./print_tokens_instrumented.exe $ROOT/inputs/uslin.817     > ./outputs/t3962

./print_tokens_instrumented.exe $ROOT/inputs/uslin.819     > ./outputs/t3963

./print_tokens_instrumented.exe $ROOT/inputs/uslin.820     > ./outputs/t3964

./print_tokens_instrumented.exe $ROOT/inputs/uslin.822     > ./outputs/t3965

./print_tokens_instrumented.exe $ROOT/inputs/uslin.824     > ./outputs/t3966

./print_tokens_instrumented.exe $ROOT/inputs/uslin.826     > ./outputs/t3967

./print_tokens_instrumented.exe $ROOT/inputs/uslin.827      > ./outputs/t3968

./print_tokens_instrumented.exe $ROOT/inputs/uslin.830     > ./outputs/t3969

./print_tokens_instrumented.exe $ROOT/inputs/uslin.833     > ./outputs/t3970

./print_tokens_instrumented.exe $ROOT/inputs/uslin.835     > ./outputs/t3971

./print_tokens_instrumented.exe $ROOT/inputs/uslin.838     > ./outputs/t3972

./print_tokens_instrumented.exe $ROOT/inputs/uslin.839     > ./outputs/t3973

./print_tokens_instrumented.exe $ROOT/inputs/uslin.84     > ./outputs/t3974

./print_tokens_instrumented.exe $ROOT/inputs/uslin.841     > ./outputs/t3975

./print_tokens_instrumented.exe $ROOT/inputs/uslin.842     > ./outputs/t3976

./print_tokens_instrumented.exe $ROOT/inputs/uslin.844     > ./outputs/t3977

./print_tokens_instrumented.exe $ROOT/inputs/uslin.845     > ./outputs/t3978

./print_tokens_instrumented.exe $ROOT/inputs/uslin.846     > ./outputs/t3979

./print_tokens_instrumented.exe $ROOT/inputs/uslin.847     > ./outputs/t3980

./print_tokens_instrumented.exe $ROOT/inputs/uslin.848     > ./outputs/t3981

./print_tokens_instrumented.exe $ROOT/inputs/uslin.849      > ./outputs/t3982

./print_tokens_instrumented.exe $ROOT/inputs/uslin.850     > ./outputs/t3983

./print_tokens_instrumented.exe $ROOT/inputs/uslin.852     > ./outputs/t3984

./print_tokens_instrumented.exe $ROOT/inputs/uslin.853     > ./outputs/t3985

./print_tokens_instrumented.exe $ROOT/inputs/uslin.854     > ./outputs/t3986

./print_tokens_instrumented.exe $ROOT/inputs/uslin.856     > ./outputs/t3987

./print_tokens_instrumented.exe $ROOT/inputs/uslin.857     > ./outputs/t3988

./print_tokens_instrumented.exe $ROOT/inputs/uslin.859     > ./outputs/t3989

./print_tokens_instrumented.exe $ROOT/inputs/uslin.86     > ./outputs/t3990

./print_tokens_instrumented.exe $ROOT/inputs/uslin.861     > ./outputs/t3991

./print_tokens_instrumented.exe $ROOT/inputs/uslin.863     > ./outputs/t3992

./print_tokens_instrumented.exe $ROOT/inputs/uslin.867     > ./outputs/t3993

./print_tokens_instrumented.exe $ROOT/inputs/uslin.868     > ./outputs/t3994

./print_tokens_instrumented.exe $ROOT/inputs/uslin.869     > ./outputs/t3995

./print_tokens_instrumented.exe $ROOT/inputs/uslin.870     > ./outputs/t3996

./print_tokens_instrumented.exe $ROOT/inputs/uslin.870.noeof     > ./outputs/t3997

./print_tokens_instrumented.exe $ROOT/inputs/uslin.873     > ./outputs/t3998

./print_tokens_instrumented.exe $ROOT/inputs/uslin.874     > ./outputs/t3999

./print_tokens_instrumented.exe $ROOT/inputs/uslin.877      > ./outputs/t4000

./print_tokens_instrumented.exe $ROOT/inputs/uslin.878     > ./outputs/t4001

./print_tokens_instrumented.exe $ROOT/inputs/uslin.879     > ./outputs/t4002

./print_tokens_instrumented.exe $ROOT/inputs/uslin.881     > ./outputs/t4003

./print_tokens_instrumented.exe $ROOT/inputs/uslin.882     > ./outputs/t4004

./print_tokens_instrumented.exe $ROOT/inputs/uslin.883     > ./outputs/t4005

./print_tokens_instrumented.exe $ROOT/inputs/uslin.884     > ./outputs/t4006

./print_tokens_instrumented.exe $ROOT/inputs/uslin.885     > ./outputs/t4007

./print_tokens_instrumented.exe $ROOT/inputs/uslin.885.noeof     > ./outputs/t4008

./print_tokens_instrumented.exe $ROOT/inputs/uslin.886     > ./outputs/t4009

./print_tokens_instrumented.exe $ROOT/inputs/uslin.887     > ./outputs/t4010

./print_tokens_instrumented.exe $ROOT/inputs/uslin.889     > ./outputs/t4011

./print_tokens_instrumented.exe $ROOT/inputs/uslin.890     > ./outputs/t4012

./print_tokens_instrumented.exe $ROOT/inputs/uslin.891     > ./outputs/t4013

./print_tokens_instrumented.exe $ROOT/inputs/uslin.893     > ./outputs/t4014

./print_tokens_instrumented.exe $ROOT/inputs/uslin.894     > ./outputs/t4015

./print_tokens_instrumented.exe $ROOT/inputs/uslin.897     > ./outputs/t4016

./print_tokens_instrumented.exe $ROOT/inputs/uslin.899     > ./outputs/t4017

./print_tokens_instrumented.exe $ROOT/inputs/uslin.90     > ./outputs/t4018

./print_tokens_instrumented.exe $ROOT/inputs/uslin.900     > ./outputs/t4019

./print_tokens_instrumented.exe $ROOT/inputs/uslin.901     > ./outputs/t4020

./print_tokens_instrumented.exe $ROOT/inputs/uslin.902     > ./outputs/t4021

./print_tokens_instrumented.exe $ROOT/inputs/uslin.907     > ./outputs/t4022

./print_tokens_instrumented.exe $ROOT/inputs/uslin.908     > ./outputs/t4023

./print_tokens_instrumented.exe $ROOT/inputs/uslin.909     > ./outputs/t4024

./print_tokens_instrumented.exe $ROOT/inputs/uslin.91     > ./outputs/t4025

./print_tokens_instrumented.exe $ROOT/inputs/uslin.911     > ./outputs/t4026

./print_tokens_instrumented.exe $ROOT/inputs/uslin.912     > ./outputs/t4027

./print_tokens_instrumented.exe $ROOT/inputs/uslin.916     > ./outputs/t4028

./print_tokens_instrumented.exe $ROOT/inputs/uslin.917     > ./outputs/t4029

./print_tokens_instrumented.exe $ROOT/inputs/uslin.918     > ./outputs/t4030

./print_tokens_instrumented.exe $ROOT/inputs/uslin.919     > ./outputs/t4031

./print_tokens_instrumented.exe $ROOT/inputs/uslin.921     > ./outputs/t4032

./print_tokens_instrumented.exe $ROOT/inputs/uslin.925      > ./outputs/t4033

./print_tokens_instrumented.exe $ROOT/inputs/uslin.928     > ./outputs/t4034

./print_tokens_instrumented.exe $ROOT/inputs/uslin.929     > ./outputs/t4035

./print_tokens_instrumented.exe $ROOT/inputs/uslin.931     > ./outputs/t4036

./print_tokens_instrumented.exe $ROOT/inputs/uslin.932     > ./outputs/t4037

./print_tokens_instrumented.exe $ROOT/inputs/uslin.934     > ./outputs/t4038

./print_tokens_instrumented.exe $ROOT/inputs/uslin.935     > ./outputs/t4039

./print_tokens_instrumented.exe $ROOT/inputs/uslin.936     > ./outputs/t4040

./print_tokens_instrumented.exe $ROOT/inputs/uslin.938     > ./outputs/t4041

./print_tokens_instrumented.exe $ROOT/inputs/uslin.939     > ./outputs/t4042

./print_tokens_instrumented.exe $ROOT/inputs/uslin.940     > ./outputs/t4043

./print_tokens_instrumented.exe $ROOT/inputs/uslin.941     > ./outputs/t4044

./print_tokens_instrumented.exe $ROOT/inputs/uslin.943     > ./outputs/t4045

./print_tokens_instrumented.exe $ROOT/inputs/uslin.946     > ./outputs/t4046

./print_tokens_instrumented.exe $ROOT/inputs/uslin.947     > ./outputs/t4047

./print_tokens_instrumented.exe $ROOT/inputs/uslin.948     > ./outputs/t4048

./print_tokens_instrumented.exe $ROOT/inputs/uslin.95     > ./outputs/t4049

./print_tokens_instrumented.exe $ROOT/inputs/uslin.950     > ./outputs/t4050

./print_tokens_instrumented.exe $ROOT/inputs/uslin.951     > ./outputs/t4051

./print_tokens_instrumented.exe $ROOT/inputs/uslin.952     > ./outputs/t4052

./print_tokens_instrumented.exe $ROOT/inputs/uslin.956     > ./outputs/t4053

./print_tokens_instrumented.exe $ROOT/inputs/uslin.959     > ./outputs/t4054

./print_tokens_instrumented.exe $ROOT/inputs/uslin.963     > ./outputs/t4055

./print_tokens_instrumented.exe $ROOT/inputs/uslin.965     > ./outputs/t4056

./print_tokens_instrumented.exe $ROOT/inputs/uslin.967     > ./outputs/t4057

./print_tokens_instrumented.exe $ROOT/inputs/uslin.970     > ./outputs/t4058

./print_tokens_instrumented.exe $ROOT/inputs/uslin.972     > ./outputs/t4059

./print_tokens_instrumented.exe $ROOT/inputs/uslin.975     > ./outputs/t4060

./print_tokens_instrumented.exe $ROOT/inputs/uslin.976     > ./outputs/t4061

./print_tokens_instrumented.exe $ROOT/inputs/uslin.977     > ./outputs/t4062

./print_tokens_instrumented.exe $ROOT/inputs/uslin.979     > ./outputs/t4063

./print_tokens_instrumented.exe $ROOT/inputs/uslin.980     > ./outputs/t4064

./print_tokens_instrumented.exe $ROOT/inputs/uslin.983     > ./outputs/t4065

./print_tokens_instrumented.exe $ROOT/inputs/uslin.985     > ./outputs/t4066

./print_tokens_instrumented.exe $ROOT/inputs/uslin.986     > ./outputs/t4067

./print_tokens_instrumented.exe $ROOT/inputs/uslin.988     > ./outputs/t4068

./print_tokens_instrumented.exe $ROOT/inputs/uslin.990     > ./outputs/t4069

./print_tokens_instrumented.exe $ROOT/inputs/uslin.997     > ./outputs/t4070

./print_tokens_instrumented.exe $ROOT/inputs/uslin.998     > ./outputs/t4071

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4072

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4073

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4074

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4075

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4076

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4077

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4078

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4079

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4080

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4081

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4082

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4083

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4084

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4085

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4086

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4087

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4088

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4089

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4090

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4091

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4092

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4093

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4094

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4095

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4096

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4097

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4098

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4099

./print_tokens_instrumented.exe $ROOT/inputs/garbage/nothing     > ./outputs/t4100

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4101

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4102

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4103

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4104

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4105

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4106

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4107

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4108

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4109

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4110

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4111

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4112

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4113

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4114

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4115

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4116

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4117

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4118

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4119

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4120

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4121

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4122

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4123

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4124

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4125

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4126

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4127

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4128

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4129

./print_tokens_instrumented.exe one doesntliketwo     > ./outputs/t4130


gcov print_tokens_instrumented.c
gcovr -r . --html-details -o coverage_and_instrument_report.html

rm print_tokens_instrumented.c stream.h tokens.h