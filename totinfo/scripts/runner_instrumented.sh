ROOT=$1
# Change to the current directory
cd $PWD

# Remove the "result_instrumented" folder if it exists
if [ -d result_instrumented ]; then
    rm -rf result_instrumented
fi

# Create a new "result_instrumented" folder
mkdir result_instrumented
cp chisq.h gamma.h std.h tot_info.c result_instrumented/
cd result_instrumented
# Build the code without coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o tot_info.exe tot_info.c -w -lm
mkdir outputs

./tot_info.exe  < $ROOT/inputs/universe/tst88 > ./outputs/t1

./tot_info.exe  < $ROOT/inputs/universe/tst34 > ./outputs/t2

./tot_info.exe  < $ROOT/inputs/universe/tst16 > ./outputs/t3

./tot_info.exe  < $ROOT/inputs/universe/jkADr.mat > ./outputs/t4

./tot_info.exe  < $ROOT/inputs/universe/tst6 > ./outputs/t5

./tot_info.exe  < $ROOT/inputs/universe/tst13 > ./outputs/t6

./tot_info.exe  < $ROOT/inputs/universe/tst108 > ./outputs/t7

./tot_info.exe  < $ROOT/inputs/universe/tst17 > ./outputs/t8

./tot_info.exe  < $ROOT/inputs/universe/tst29 > ./outputs/t9

./tot_info.exe  < $ROOT/inputs/universe/tst89 > ./outputs/t10

./tot_info.exe  < $ROOT/inputs/universe/tst8 > ./outputs/t11

./tot_info.exe  < $ROOT/inputs/universe/tst9 > ./outputs/t12

./tot_info.exe  < $ROOT/inputs/universe/tst55 > ./outputs/t13

./tot_info.exe  < $ROOT/inputs/universe/tst76 > ./outputs/t14

./tot_info.exe  < $ROOT/inputs/universe/tst109 > ./outputs/t15

./tot_info.exe  < $ROOT/inputs/universe/tst10 > ./outputs/t16

./tot_info.exe  < $ROOT/inputs/universe/tst15 > ./outputs/t17

./tot_info.exe  < $ROOT/inputs/universe/tst19 > ./outputs/t18

./tot_info.exe  < $ROOT/inputs/universe/tst90 > ./outputs/t19

./tot_info.exe  < $ROOT/inputs/universe/tst20 > ./outputs/t20

./tot_info.exe  < $ROOT/inputs/universe/tst56 > ./outputs/t21

./tot_info.exe  < $ROOT/inputs/universe/tst24 > ./outputs/t22

./tot_info.exe  < $ROOT/inputs/universe/tst3 > ./outputs/t23

./tot_info.exe  < $ROOT/inputs/universe/tst25 > ./outputs/t24

./tot_info.exe  < $ROOT/inputs/universe/tst50 > ./outputs/t25

./tot_info.exe  < $ROOT/inputs/universe/tst87 > ./outputs/t26

./tot_info.exe  < $ROOT/inputs/universe/tst91 > ./outputs/t27

./tot_info.exe  < $ROOT/inputs/universe/tst107 > ./outputs/t28

./tot_info.exe  < $ROOT/inputs/universe/tst27 > ./outputs/t29

./tot_info.exe  < $ROOT/inputs/universe/tst77 > ./outputs/t30

./tot_info.exe  < $ROOT/inputs/universe/tst98 > ./outputs/t31

./tot_info.exe  < $ROOT/inputs/universe/tst18 > ./outputs/t32

./tot_info.exe  < $ROOT/inputs/universe/tst28 > ./outputs/t33

./tot_info.exe  < $ROOT/inputs/universe/tst7 > ./outputs/t34

./tot_info.exe  < $ROOT/inputs/universe/tst30 > ./outputs/t35

./tot_info.exe  < $ROOT/inputs/universe/tst107 > ./outputs/t36

./tot_info.exe  < $ROOT/inputs/universe/tst32 > ./outputs/t37

./tot_info.exe  < $ROOT/inputs/universe/tst33 > ./outputs/t38

./tot_info.exe  < $ROOT/inputs/universe/tst2 > ./outputs/t39

./tot_info.exe  < $ROOT/inputs/universe/tst5 > ./outputs/t40

./tot_info.exe  < $ROOT/inputs/universe/tst92 > ./outputs/t41

./tot_info.exe  < $ROOT/inputs/universe/tst97 > ./outputs/t42

./tot_info.exe  < $ROOT/inputs/universe/tst31 > ./outputs/t43

./tot_info.exe  < $ROOT/inputs/universe/tst35 > ./outputs/t44

./tot_info.exe  < $ROOT/inputs/universe/tst21 > ./outputs/t45

./tot_info.exe  < $ROOT/inputs/universe/tst39 > ./outputs/t46

./tot_info.exe  < $ROOT/inputs/universe/tst12 > ./outputs/t47

./tot_info.exe  < $ROOT/inputs/universe/tst86 > ./outputs/t48

./tot_info.exe  < $ROOT/inputs/universe/tst106 > ./outputs/t49

./tot_info.exe  < $ROOT/inputs/universe/tst41 > ./outputs/t50

./tot_info.exe  < $ROOT/inputs/universe/tst43 > ./outputs/t51

./tot_info.exe  < $ROOT/inputs/universe/tst23 > ./outputs/t52

./tot_info.exe  < $ROOT/inputs/universe/tst115 > ./outputs/t53

./tot_info.exe  < $ROOT/inputs/universe/tst44 > ./outputs/t54

./tot_info.exe  < $ROOT/inputs/universe/tst68 > ./outputs/t55

./tot_info.exe  < $ROOT/inputs/universe/tst45 > ./outputs/t56

./tot_info.exe  < $ROOT/inputs/universe/tst4 > ./outputs/t57

./tot_info.exe  < $ROOT/inputs/universe/tst116 > ./outputs/t58

./tot_info.exe  < $ROOT/inputs/universe/tst85 > ./outputs/t59

./tot_info.exe  < $ROOT/inputs/universe/tst46 > ./outputs/t60

./tot_info.exe  < $ROOT/inputs/universe/tst47 > ./outputs/t61

./tot_info.exe  < $ROOT/inputs/universe/tst96 > ./outputs/t62

./tot_info.exe  < $ROOT/inputs/universe/tst73 > ./outputs/t63

./tot_info.exe  < $ROOT/inputs/universe/tst48 > ./outputs/t64

./tot_info.exe  < $ROOT/inputs/universe/tst101 > ./outputs/t65

./tot_info.exe  < $ROOT/inputs/universe/tst64 > ./outputs/t66

./tot_info.exe  < $ROOT/inputs/universe/tst84 > ./outputs/t67

./tot_info.exe  < $ROOT/inputs/universe/tst49 > ./outputs/t68

./tot_info.exe  < $ROOT/inputs/universe/tst95 > ./outputs/t69

./tot_info.exe  < $ROOT/inputs/universe/tst14 > ./outputs/t70

./tot_info.exe  < $ROOT/inputs/universe/tst51 > ./outputs/t71

./tot_info.exe  < $ROOT/inputs/universe/tst115 > ./outputs/t72

./tot_info.exe  < $ROOT/inputs/universe/tst72 > ./outputs/t73

./tot_info.exe  < $ROOT/inputs/universe/tst60 > ./outputs/t74

./tot_info.exe  < $ROOT/inputs/universe/tst83 > ./outputs/t75

./tot_info.exe  < $ROOT/inputs/universe/tst38 > ./outputs/t76

./tot_info.exe  < $ROOT/inputs/universe/tst52 > ./outputs/t77

./tot_info.exe  < $ROOT/inputs/universe/tst95 > ./outputs/t78

./tot_info.exe  < $ROOT/inputs/universe/tst82 > ./outputs/t79

./tot_info.exe  < $ROOT/inputs/universe/tst114 > ./outputs/t80

./tot_info.exe  < $ROOT/inputs/universe/tst75 > ./outputs/t81

./tot_info.exe  < $ROOT/inputs/universe/tst36 > ./outputs/t82

./tot_info.exe  < $ROOT/inputs/universe/tst54 > ./outputs/t83

./tot_info.exe  < $ROOT/inputs/universe/tst57 > ./outputs/t84

./tot_info.exe  < $ROOT/inputs/universe/tst79 > ./outputs/t85

./tot_info.exe  < $ROOT/inputs/universe/tst58 > ./outputs/t86

./tot_info.exe  < $ROOT/inputs/universe/tst94 > ./outputs/t87

./tot_info.exe  < $ROOT/inputs/universe/tst59 > ./outputs/t88

./tot_info.exe  < $ROOT/inputs/universe/tst11 > ./outputs/t89

./tot_info.exe  < $ROOT/inputs/universe/tst116 > ./outputs/t90

./tot_info.exe  < $ROOT/inputs/universe/tst40 > ./outputs/t91

./tot_info.exe  < $ROOT/inputs/universe/tst93 > ./outputs/t92

./tot_info.exe  < $ROOT/inputs/universe/tst61 > ./outputs/t93

./tot_info.exe  < $ROOT/inputs/universe/tst22 > ./outputs/t94

./tot_info.exe  < $ROOT/inputs/universe/tst42 > ./outputs/t95

./tot_info.exe  < $ROOT/inputs/universe/tst62 > ./outputs/t96

./tot_info.exe  < $ROOT/inputs/universe/tst104 > ./outputs/t97

./tot_info.exe  < $ROOT/inputs/universe/tst37 > ./outputs/t98

./tot_info.exe  < $ROOT/inputs/universe/tst81 > ./outputs/t99

./tot_info.exe  < $ROOT/inputs/universe/tst63 > ./outputs/t100

./tot_info.exe  < $ROOT/inputs/universe/tst113 > ./outputs/t101

./tot_info.exe  < $ROOT/inputs/universe/tst112 > ./outputs/t102

./tot_info.exe  < $ROOT/inputs/universe/tst26 > ./outputs/t103

./tot_info.exe  < $ROOT/inputs/universe/tst65 > ./outputs/t104

./tot_info.exe  < $ROOT/inputs/universe/tst71 > ./outputs/t105

./tot_info.exe  < $ROOT/inputs/universe/tst111 > ./outputs/t106

./tot_info.exe  < $ROOT/inputs/universe/tst74 > ./outputs/t107

./tot_info.exe  < $ROOT/inputs/universe/tst102 > ./outputs/t108

./tot_info.exe  < $ROOT/inputs/universe/tst66 > ./outputs/t109

./tot_info.exe  < $ROOT/inputs/universe/tst117 > ./outputs/t110

./tot_info.exe  < $ROOT/inputs/universe/tst67 > ./outputs/t111

./tot_info.exe  < $ROOT/inputs/universe/tst69 > ./outputs/t112

./tot_info.exe  < $ROOT/inputs/universe/tst70 > ./outputs/t113

./tot_info.exe  < $ROOT/inputs/universe/tst1 > ./outputs/t114

./tot_info.exe  < $ROOT/inputs/universe/tst103 > ./outputs/t115

./tot_info.exe  < $ROOT/inputs/universe/tst80 > ./outputs/t116

./tot_info.exe  < $ROOT/inputs/universe/test3 > ./outputs/t117

./tot_info.exe  < $ROOT/inputs/universe/test5 > ./outputs/t118

./tot_info.exe  < $ROOT/inputs/universe/test32 > ./outputs/t119

./tot_info.exe  < $ROOT/inputs/universe/test7 > ./outputs/t120

./tot_info.exe  < $ROOT/inputs/universe/test8 > ./outputs/t121

./tot_info.exe  < $ROOT/inputs/universe/test9 > ./outputs/t122

./tot_info.exe  < $ROOT/inputs/universe/test10 > ./outputs/t123

./tot_info.exe  < $ROOT/inputs/universe/test19 > ./outputs/t124

./tot_info.exe  < $ROOT/inputs/universe/test31 > ./outputs/t125

./tot_info.exe  < $ROOT/inputs/universe/test1 > ./outputs/t126

./tot_info.exe  < $ROOT/inputs/universe/test4 > ./outputs/t127

./tot_info.exe  < $ROOT/inputs/universe/test39 > ./outputs/t128

./tot_info.exe  < $ROOT/inputs/universe/test11 > ./outputs/t129

./tot_info.exe  < $ROOT/inputs/universe/test30 > ./outputs/t130

./tot_info.exe  < $ROOT/inputs/universe/test14 > ./outputs/t131

./tot_info.exe  < $ROOT/inputs/universe/test13 > ./outputs/t132

./tot_info.exe  < $ROOT/inputs/universe/test15 > ./outputs/t133

./tot_info.exe  < $ROOT/inputs/universe/test16 > ./outputs/t134

./tot_info.exe  < $ROOT/inputs/universe/test17 > ./outputs/t135

./tot_info.exe  < $ROOT/inputs/universe/test6 > ./outputs/t136

./tot_info.exe  < $ROOT/inputs/universe/test33 > ./outputs/t137

./tot_info.exe  < $ROOT/inputs/universe/test34 > ./outputs/t138

./tot_info.exe  < $ROOT/inputs/universe/test35 > ./outputs/t139

./tot_info.exe  < $ROOT/inputs/universe/test36 > ./outputs/t140

./tot_info.exe  < $ROOT/inputs/universe/test18 > ./outputs/t141

./tot_info.exe  < $ROOT/inputs/universe/test37 > ./outputs/t142

./tot_info.exe  < $ROOT/inputs/universe/test40 > ./outputs/t143

./tot_info.exe  < $ROOT/inputs/universe/test38 > ./outputs/t144

./tot_info.exe  < $ROOT/inputs/universe/tstt1.mat > ./outputs/t145

./tot_info.exe  < $ROOT/inputs/universe/jk2AAZ.mat > ./outputs/t146

./tot_info.exe  < $ROOT/inputs/universe/jk2ABS.mat > ./outputs/t147

./tot_info.exe  < $ROOT/inputs/universe/jk2ABk.mat > ./outputs/t148

./tot_info.exe  < $ROOT/inputs/universe/jk1AA_.mat > ./outputs/t149

./tot_info.exe  < $ROOT/inputs/universe/tst29.mat > ./outputs/t150

./tot_info.exe  < $ROOT/inputs/universe/jk1AAS.mat > ./outputs/t151

./tot_info.exe  < $ROOT/inputs/universe/jkAAY.mat > ./outputs/t152

./tot_info.exe  < $ROOT/inputs/universe/jk2AAy.mat > ./outputs/t153

./tot_info.exe  < $ROOT/inputs/universe/jkAAQ.mat > ./outputs/t154

./tot_info.exe  < $ROOT/inputs/universe/tst21.mat > ./outputs/t155

./tot_info.exe  < $ROOT/inputs/universe/jkAAZ.mat > ./outputs/t156

./tot_info.exe  < $ROOT/inputs/universe/jk2ABq.mat > ./outputs/t157

./tot_info.exe  < $ROOT/inputs/universe/jk1ABq.mat > ./outputs/t158

./tot_info.exe  < $ROOT/inputs/universe/jk2AAX.mat > ./outputs/t159

./tot_info.exe  < $ROOT/inputs/universe/jkADr.mat > ./outputs/t160

./tot_info.exe  < $ROOT/inputs/universe/jkAFi.mat > ./outputs/t161

./tot_info.exe  < $ROOT/inputs/universe/jk2AAS.mat > ./outputs/t162

./tot_info.exe  < $ROOT/inputs/universe/tst2f.mat > ./outputs/t163

./tot_info.exe  < $ROOT/inputs/universe/tst23.mat > ./outputs/t164

./tot_info.exe  < $ROOT/inputs/universe/tst2E.mat > ./outputs/t165

./tot_info.exe  < $ROOT/inputs/universe/test72 > ./outputs/t166

./tot_info.exe  < $ROOT/inputs/universe/test77 > ./outputs/t167

./tot_info.exe  < $ROOT/inputs/universe/test80 > ./outputs/t168

./tot_info.exe  < $ROOT/inputs/universe/test51 > ./outputs/t169

./tot_info.exe  < $ROOT/inputs/universe/test52 > ./outputs/t170

./tot_info.exe  < $ROOT/inputs/universe/test53 > ./outputs/t171

./tot_info.exe  < $ROOT/inputs/universe/test54 > ./outputs/t172

./tot_info.exe  < $ROOT/inputs/universe/test56 > ./outputs/t173

./tot_info.exe  < $ROOT/inputs/universe/test57 > ./outputs/t174

./tot_info.exe  < $ROOT/inputs/universe/test60 > ./outputs/t175

./tot_info.exe  < $ROOT/inputs/universe/test42 > ./outputs/t176

./tot_info.exe  < $ROOT/inputs/universe/test75 > ./outputs/t177

./tot_info.exe  < $ROOT/inputs/universe/test73 > ./outputs/t178

./tot_info.exe  < $ROOT/inputs/universe/test99 > ./outputs/t179

./tot_info.exe  < $ROOT/inputs/universe/test43 > ./outputs/t180

./tot_info.exe  < $ROOT/inputs/universe/test90 > ./outputs/t181

./tot_info.exe  < $ROOT/inputs/universe/test45 > ./outputs/t182

./tot_info.exe  < $ROOT/inputs/universe/test46 > ./outputs/t183

./tot_info.exe  < $ROOT/inputs/universe/test78 > ./outputs/t184

./tot_info.exe  < $ROOT/inputs/universe/test83 > ./outputs/t185

./tot_info.exe  < $ROOT/inputs/universe/test59 > ./outputs/t186

./tot_info.exe  < $ROOT/inputs/universe/test49 > ./outputs/t187

./tot_info.exe  < $ROOT/inputs/universe/test50 > ./outputs/t188

./tot_info.exe  < $ROOT/inputs/universe/test61 > ./outputs/t189

./tot_info.exe  < $ROOT/inputs/universe/test63 > ./outputs/t190

./tot_info.exe  < $ROOT/inputs/universe/test74 > ./outputs/t191

./tot_info.exe  < $ROOT/inputs/universe/test64 > ./outputs/t192

./tot_info.exe  < $ROOT/inputs/universe/test79 > ./outputs/t193

./tot_info.exe  < $ROOT/inputs/universe/test87 > ./outputs/t194

./tot_info.exe  < $ROOT/inputs/universe/test66 > ./outputs/t195

./tot_info.exe  < $ROOT/inputs/universe/test67 > ./outputs/t196

./tot_info.exe  < $ROOT/inputs/universe/test48 > ./outputs/t197

./tot_info.exe  < $ROOT/inputs/universe/test100 > ./outputs/t198

./tot_info.exe  < $ROOT/inputs/universe/test92 > ./outputs/t199

./tot_info.exe  < $ROOT/inputs/universe/test68 > ./outputs/t200

./tot_info.exe  < $ROOT/inputs/universe/test76 > ./outputs/t201

./tot_info.exe  < $ROOT/inputs/universe/test69 > ./outputs/t202

./tot_info.exe  < $ROOT/inputs/universe/test44 > ./outputs/t203

./tot_info.exe  < $ROOT/inputs/universe/test47 > ./outputs/t204

./tot_info.exe  < $ROOT/inputs/universe/test81 > ./outputs/t205

./tot_info.exe  < $ROOT/inputs/universe/test84 > ./outputs/t206

./tot_info.exe  < $ROOT/inputs/universe/test98 > ./outputs/t207

./tot_info.exe  < $ROOT/inputs/universe/test58 > ./outputs/t208

./tot_info.exe  < $ROOT/inputs/universe/test88 > ./outputs/t209

./tot_info.exe  < $ROOT/inputs/universe/test89 > ./outputs/t210

./tot_info.exe  < $ROOT/inputs/universe/test91 > ./outputs/t211

./tot_info.exe  < $ROOT/inputs/universe/test70 > ./outputs/t212

./tot_info.exe  < $ROOT/inputs/universe/test82 > ./outputs/t213

./tot_info.exe  < $ROOT/inputs/universe/test93 > ./outputs/t214

./tot_info.exe  < $ROOT/inputs/universe/test94 > ./outputs/t215

./tot_info.exe  < $ROOT/inputs/universe/test65 > ./outputs/t216

./tot_info.exe  < $ROOT/inputs/universe/test71 > ./outputs/t217

./tot_info.exe  < $ROOT/inputs/universe/test85 > ./outputs/t218

./tot_info.exe  < $ROOT/inputs/universe/test101 > ./outputs/t219

./tot_info.exe  < $ROOT/inputs/universe/test102 > ./outputs/t220

./tot_info.exe  < $ROOT/inputs/universe/test103 > ./outputs/t221

./tot_info.exe  < $ROOT/inputs/universe/test104 > ./outputs/t222

./tot_info.exe  < $ROOT/inputs/universe/test105 > ./outputs/t223

./tot_info.exe  < $ROOT/inputs/universe/test106 > ./outputs/t224

./tot_info.exe  < $ROOT/inputs/universe/test107 > ./outputs/t225

./tot_info.exe  < $ROOT/inputs/universe/test108 > ./outputs/t226

./tot_info.exe  < $ROOT/inputs/universe/test1.inc > ./outputs/t227

./tot_info.exe  < $ROOT/inputs/universe/test3.inc > ./outputs/t228

./tot_info.exe  < $ROOT/inputs/universe/test4.inc > ./outputs/t229

./tot_info.exe  < $ROOT/inputs/universe/test5.inc > ./outputs/t230

./tot_info.exe  < $ROOT/inputs/universe/test6.inc > ./outputs/t231

./tot_info.exe  < $ROOT/inputs/universe/test7.inc > ./outputs/t232

./tot_info.exe  < $ROOT/inputs/universe/test8.inc > ./outputs/t233

./tot_info.exe  < $ROOT/inputs/universe/test9.inc > ./outputs/t234

./tot_info.exe  < $ROOT/inputs/universe/test10.inc > ./outputs/t235

./tot_info.exe  < $ROOT/inputs/universe/test11.inc > ./outputs/t236

./tot_info.exe  < $ROOT/inputs/universe/test13.inc > ./outputs/t237

./tot_info.exe  < $ROOT/inputs/universe/test14.inc > ./outputs/t238

./tot_info.exe  < $ROOT/inputs/universe/test15.inc > ./outputs/t239

./tot_info.exe  < $ROOT/inputs/universe/test16.inc > ./outputs/t240

./tot_info.exe  < $ROOT/inputs/universe/test17.inc > ./outputs/t241

./tot_info.exe  < $ROOT/inputs/universe/test18.inc > ./outputs/t242

./tot_info.exe  < $ROOT/inputs/universe/test19.inc > ./outputs/t243

./tot_info.exe  < $ROOT/inputs/universe/test20.inc > ./outputs/t244

./tot_info.exe  < $ROOT/inputs/universe/test21.inc > ./outputs/t245

./tot_info.exe  < $ROOT/inputs/universe/test22.inc > ./outputs/t246

./tot_info.exe  < $ROOT/inputs/universe/test23.inc > ./outputs/t247

./tot_info.exe  < $ROOT/inputs/universe/test24.inc > ./outputs/t248

./tot_info.exe  < $ROOT/inputs/universe/test25.inc > ./outputs/t249

./tot_info.exe  < $ROOT/inputs/universe/test26.inc > ./outputs/t250

./tot_info.exe  < $ROOT/inputs/universe/test27.inc > ./outputs/t251

./tot_info.exe  < $ROOT/inputs/universe/test28.inc > ./outputs/t252

./tot_info.exe  < $ROOT/inputs/universe/test29.inc > ./outputs/t253

./tot_info.exe  < $ROOT/inputs/universe/test30.inc > ./outputs/t254

./tot_info.exe  < $ROOT/inputs/universe/test31.inc > ./outputs/t255

./tot_info.exe  < $ROOT/inputs/universe/test32.inc > ./outputs/t256

./tot_info.exe  < $ROOT/inputs/universe/test33.inc > ./outputs/t257

./tot_info.exe  < $ROOT/inputs/universe/test34.inc > ./outputs/t258

./tot_info.exe  < $ROOT/inputs/universe/test35.inc > ./outputs/t259

./tot_info.exe  < $ROOT/inputs/universe/test36.inc > ./outputs/t260

./tot_info.exe  < $ROOT/inputs/universe/test37.inc > ./outputs/t261

./tot_info.exe  < $ROOT/inputs/universe/test38.inc > ./outputs/t262

./tot_info.exe  < $ROOT/inputs/universe/test39.inc > ./outputs/t263

./tot_info.exe  < $ROOT/inputs/universe/test40.inc > ./outputs/t264

./tot_info.exe  < $ROOT/inputs/universe/test41.inc > ./outputs/t265

./tot_info.exe  < $ROOT/inputs/universe/test42.inc > ./outputs/t266

./tot_info.exe  < $ROOT/inputs/universe/test43.inc > ./outputs/t267

./tot_info.exe  < $ROOT/inputs/universe/test44.inc > ./outputs/t268

./tot_info.exe  < $ROOT/inputs/universe/test45.inc > ./outputs/t269

./tot_info.exe  < $ROOT/inputs/universe/test46.inc > ./outputs/t270

./tot_info.exe  < $ROOT/inputs/universe/test47.inc > ./outputs/t271

./tot_info.exe  < $ROOT/inputs/universe/test48.inc > ./outputs/t272

./tot_info.exe  < $ROOT/inputs/universe/test49.inc > ./outputs/t273

./tot_info.exe  < $ROOT/inputs/universe/test50.inc > ./outputs/t274

./tot_info.exe  < $ROOT/inputs/universe/test51.inc > ./outputs/t275

./tot_info.exe  < $ROOT/inputs/universe/test52.inc > ./outputs/t276

./tot_info.exe  < $ROOT/inputs/universe/test53.inc > ./outputs/t277

./tot_info.exe  < $ROOT/inputs/universe/test54.inc > ./outputs/t278

./tot_info.exe  < $ROOT/inputs/universe/test55.inc > ./outputs/t279

./tot_info.exe  < $ROOT/inputs/universe/test56.inc > ./outputs/t280

./tot_info.exe  < $ROOT/inputs/universe/test57.inc > ./outputs/t281

./tot_info.exe  < $ROOT/inputs/universe/test58.inc > ./outputs/t282

./tot_info.exe  < $ROOT/inputs/universe/test59.inc > ./outputs/t283

./tot_info.exe  < $ROOT/inputs/universe/test60.inc > ./outputs/t284

./tot_info.exe  < $ROOT/inputs/universe/test61.inc > ./outputs/t285

./tot_info.exe  < $ROOT/inputs/universe/test62.inc > ./outputs/t286

./tot_info.exe  < $ROOT/inputs/universe/test63.inc > ./outputs/t287

./tot_info.exe  < $ROOT/inputs/universe/test64.inc > ./outputs/t288

./tot_info.exe  < $ROOT/inputs/universe/test65.inc > ./outputs/t289

./tot_info.exe  < $ROOT/inputs/universe/test66.inc > ./outputs/t290

./tot_info.exe  < $ROOT/inputs/universe/test67.inc > ./outputs/t291

./tot_info.exe  < $ROOT/inputs/universe/test68.inc > ./outputs/t292

./tot_info.exe  < $ROOT/inputs/universe/test69.inc > ./outputs/t293

./tot_info.exe  < $ROOT/inputs/universe/test70.inc > ./outputs/t294

./tot_info.exe  < $ROOT/inputs/universe/test71.inc > ./outputs/t295

./tot_info.exe  < $ROOT/inputs/universe/test72.inc > ./outputs/t296

./tot_info.exe  < $ROOT/inputs/universe/test73.inc > ./outputs/t297

./tot_info.exe  < $ROOT/inputs/universe/test74.inc > ./outputs/t298

./tot_info.exe  < $ROOT/inputs/universe/test75.inc > ./outputs/t299

./tot_info.exe  < $ROOT/inputs/universe/test76.inc > ./outputs/t300

./tot_info.exe  < $ROOT/inputs/universe/test77.inc > ./outputs/t301

./tot_info.exe  < $ROOT/inputs/universe/test78.inc > ./outputs/t302

./tot_info.exe  < $ROOT/inputs/universe/test79.inc > ./outputs/t303

./tot_info.exe  < $ROOT/inputs/universe/test80.inc > ./outputs/t304

./tot_info.exe  < $ROOT/inputs/universe/test81.inc > ./outputs/t305

./tot_info.exe  < $ROOT/inputs/universe/test82.inc > ./outputs/t306

./tot_info.exe  < $ROOT/inputs/universe/test83.inc > ./outputs/t307

./tot_info.exe  < $ROOT/inputs/universe/test84.inc > ./outputs/t308

./tot_info.exe  < $ROOT/inputs/universe/test85.inc > ./outputs/t309

./tot_info.exe  < $ROOT/inputs/universe/test86.inc > ./outputs/t310

./tot_info.exe  < $ROOT/inputs/universe/test87.inc > ./outputs/t311

./tot_info.exe  < $ROOT/inputs/universe/test88.inc > ./outputs/t312

./tot_info.exe  < $ROOT/inputs/universe/test89.inc > ./outputs/t313

./tot_info.exe  < $ROOT/inputs/universe/test90.inc > ./outputs/t314

./tot_info.exe  < $ROOT/inputs/universe/test91.inc > ./outputs/t315

./tot_info.exe  < $ROOT/inputs/universe/test92.inc > ./outputs/t316

./tot_info.exe  < $ROOT/inputs/universe/test93.inc > ./outputs/t317

./tot_info.exe  < $ROOT/inputs/universe/test94.inc > ./outputs/t318

./tot_info.exe  < $ROOT/inputs/universe/test95.inc > ./outputs/t319

./tot_info.exe  < $ROOT/inputs/universe/test96.inc > ./outputs/t320

./tot_info.exe  < $ROOT/inputs/universe/test97.inc > ./outputs/t321

./tot_info.exe  < $ROOT/inputs/universe/test98.inc > ./outputs/t322

./tot_info.exe  < $ROOT/inputs/universe/test99.inc > ./outputs/t323

./tot_info.exe  < $ROOT/inputs/universe/test100.inc > ./outputs/t324

./tot_info.exe  < $ROOT/inputs/universe/test101.inc > ./outputs/t325

./tot_info.exe  < $ROOT/inputs/universe/test102.inc > ./outputs/t326

./tot_info.exe  < $ROOT/inputs/universe/test103.inc > ./outputs/t327

./tot_info.exe  < $ROOT/inputs/universe/test104.inc > ./outputs/t328

./tot_info.exe  < $ROOT/inputs/universe/test106.inc > ./outputs/t329

./tot_info.exe  < $ROOT/inputs/universe/test107.inc > ./outputs/t330

./tot_info.exe  < $ROOT/inputs/universe/test108.inc > ./outputs/t331

./tot_info.exe  < $ROOT/inputs/universe/test109.inc > ./outputs/t332

./tot_info.exe  < $ROOT/inputs/universe/test110.inc > ./outputs/t333

./tot_info.exe  < $ROOT/inputs/universe/test111.inc > ./outputs/t334

./tot_info.exe  < $ROOT/inputs/universe/test112.inc > ./outputs/t335

./tot_info.exe  < $ROOT/inputs/universe/test113.inc > ./outputs/t336

./tot_info.exe  < $ROOT/inputs/universe/test114.inc > ./outputs/t337

./tot_info.exe  < $ROOT/inputs/universe/test115.inc > ./outputs/t338

./tot_info.exe  < $ROOT/inputs/universe/test116.inc > ./outputs/t339

./tot_info.exe  < $ROOT/inputs/universe/test117.inc > ./outputs/t340

./tot_info.exe  < $ROOT/inputs/universe/test118.inc > ./outputs/t341

./tot_info.exe  < $ROOT/inputs/universe/test119.inc > ./outputs/t342

./tot_info.exe  < $ROOT/inputs/universe/test120.inc > ./outputs/t343

./tot_info.exe  < $ROOT/inputs/universe/test121.inc > ./outputs/t344

./tot_info.exe  < $ROOT/inputs/universe/test122.inc > ./outputs/t345

./tot_info.exe  < $ROOT/inputs/universe/test123.inc > ./outputs/t346

./tot_info.exe  < $ROOT/inputs/universe/test124.inc > ./outputs/t347

./tot_info.exe  < $ROOT/inputs/universe/test125.inc > ./outputs/t348

./tot_info.exe  < $ROOT/inputs/universe/test126.inc > ./outputs/t349

./tot_info.exe  < $ROOT/inputs/universe/test127.inc > ./outputs/t350

./tot_info.exe  < $ROOT/inputs/universe/test128.inc > ./outputs/t351

./tot_info.exe  < $ROOT/inputs/universe/test129.inc > ./outputs/t352

./tot_info.exe  < $ROOT/inputs/universe/test130.inc > ./outputs/t353

./tot_info.exe  < $ROOT/inputs/universe/test131.inc > ./outputs/t354

./tot_info.exe  < $ROOT/inputs/universe/test132.inc > ./outputs/t355

./tot_info.exe  < $ROOT/inputs/universe/test133.inc > ./outputs/t356

./tot_info.exe  < $ROOT/inputs/universe/test134.inc > ./outputs/t357

./tot_info.exe  < $ROOT/inputs/universe/test135.inc > ./outputs/t358

./tot_info.exe  < $ROOT/inputs/universe/test136.inc > ./outputs/t359

./tot_info.exe  < $ROOT/inputs/universe/test137.inc > ./outputs/t360

./tot_info.exe  < $ROOT/inputs/universe/test138.inc > ./outputs/t361

./tot_info.exe  < $ROOT/inputs/universe/test139.inc > ./outputs/t362

./tot_info.exe  < $ROOT/inputs/universe/test140.inc	 > ./outputs/t363

./tot_info.exe  < $ROOT/inputs/universe/test141.inc > ./outputs/t364

./tot_info.exe  < $ROOT/inputs/universe/test142.inc > ./outputs/t365

./tot_info.exe  < $ROOT/inputs/universe/test143.inc > ./outputs/t366

./tot_info.exe  < $ROOT/inputs/universe/test144.inc > ./outputs/t367

./tot_info.exe  < $ROOT/inputs/universe/test145.inc > ./outputs/t368

./tot_info.exe  < $ROOT/inputs/universe/test146.inc > ./outputs/t369

./tot_info.exe  < $ROOT/inputs/universe/test147.inc > ./outputs/t370

./tot_info.exe  < $ROOT/inputs/universe/test148.inc > ./outputs/t371

./tot_info.exe  < $ROOT/inputs/universe/test149.inc > ./outputs/t372

./tot_info.exe  < $ROOT/inputs/universe/test151.inc > ./outputs/t373

./tot_info.exe  < $ROOT/inputs/universe/test152.inc > ./outputs/t374

./tot_info.exe  < $ROOT/inputs/universe/test153.inc > ./outputs/t375

./tot_info.exe  < $ROOT/inputs/universe/test154.inc > ./outputs/t376

./tot_info.exe  < $ROOT/inputs/universe/test155.inc > ./outputs/t377

./tot_info.exe  < $ROOT/inputs/universe/test156.inc > ./outputs/t378

./tot_info.exe  < $ROOT/inputs/universe/test157.inc > ./outputs/t379

./tot_info.exe  < $ROOT/inputs/universe/test158.inc > ./outputs/t380

./tot_info.exe  < $ROOT/inputs/universe/test159.inc > ./outputs/t381

./tot_info.exe  < $ROOT/inputs/universe/test160.inc > ./outputs/t382

./tot_info.exe  < $ROOT/inputs/universe/test161.inc > ./outputs/t383

./tot_info.exe  < $ROOT/inputs/universe/test162.inc > ./outputs/t384

./tot_info.exe  < $ROOT/inputs/universe/test163.inc > ./outputs/t385

./tot_info.exe  < $ROOT/inputs/universe/test164.inc > ./outputs/t386

./tot_info.exe  < $ROOT/inputs/universe/test165.inc > ./outputs/t387

./tot_info.exe  < $ROOT/inputs/universe/test166.inc > ./outputs/t388

./tot_info.exe  < $ROOT/inputs/universe/test167.inc > ./outputs/t389

./tot_info.exe  < $ROOT/inputs/universe/test168.inc > ./outputs/t390

./tot_info.exe  < $ROOT/inputs/universe/test169.inc > ./outputs/t391

./tot_info.exe  < $ROOT/inputs/universe/test170.inc > ./outputs/t392

./tot_info.exe  < $ROOT/inputs/universe/test171.inc > ./outputs/t393

./tot_info.exe  < $ROOT/inputs/universe/test172.inc > ./outputs/t394

./tot_info.exe  < $ROOT/inputs/universe/test173.inc > ./outputs/t395

./tot_info.exe  < $ROOT/inputs/universe/test174.inc > ./outputs/t396

./tot_info.exe  < $ROOT/inputs/universe/test175.inc > ./outputs/t397

./tot_info.exe  < $ROOT/inputs/universe/test176.inc > ./outputs/t398

./tot_info.exe  < $ROOT/inputs/universe/test177.inc > ./outputs/t399

./tot_info.exe  < $ROOT/inputs/universe/test178.inc > ./outputs/t400

./tot_info.exe  < $ROOT/inputs/universe/test179.inc > ./outputs/t401

./tot_info.exe  < $ROOT/inputs/universe/test180.inc > ./outputs/t402

./tot_info.exe  < $ROOT/inputs/universe/test181.inc > ./outputs/t403

./tot_info.exe  < $ROOT/inputs/universe/test182.inc > ./outputs/t404

./tot_info.exe  < $ROOT/inputs/universe/test183.inc > ./outputs/t405

./tot_info.exe  < $ROOT/inputs/universe/test184.inc > ./outputs/t406

./tot_info.exe  < $ROOT/inputs/universe/test185.inc > ./outputs/t407

./tot_info.exe  < $ROOT/inputs/universe/test186.inc > ./outputs/t408

./tot_info.exe  < $ROOT/inputs/universe/test187.inc > ./outputs/t409

./tot_info.exe  < $ROOT/inputs/universe/test188.inc > ./outputs/t410

./tot_info.exe  < $ROOT/inputs/universe/test189.inc > ./outputs/t411

./tot_info.exe  < $ROOT/inputs/universe/test190.inc > ./outputs/t412

./tot_info.exe  < $ROOT/inputs/universe/test191.inc > ./outputs/t413

./tot_info.exe  < $ROOT/inputs/universe/test192.inc > ./outputs/t414

./tot_info.exe  < $ROOT/inputs/universe/test193.inc > ./outputs/t415

./tot_info.exe  < $ROOT/inputs/universe/test194.inc > ./outputs/t416

./tot_info.exe  < $ROOT/inputs/universe/test195.inc > ./outputs/t417

./tot_info.exe  < $ROOT/inputs/universe/test196.inc > ./outputs/t418

./tot_info.exe  < $ROOT/inputs/universe/test197.inc > ./outputs/t419

./tot_info.exe  < $ROOT/inputs/universe/test198.inc > ./outputs/t420

./tot_info.exe  < $ROOT/inputs/universe/test199.inc > ./outputs/t421

./tot_info.exe  < $ROOT/inputs/universe/test300.inc > ./outputs/t422

./tot_info.exe  < $ROOT/inputs/universe/test301.inc > ./outputs/t423

./tot_info.exe  < $ROOT/inputs/universe/test302.inc > ./outputs/t424

./tot_info.exe  < $ROOT/inputs/universe/test303.inc > ./outputs/t425

./tot_info.exe  < $ROOT/inputs/universe/test304.inc > ./outputs/t426

./tot_info.exe  < $ROOT/inputs/universe/test305.inc > ./outputs/t427

./tot_info.exe  < $ROOT/inputs/universe/test306.inc > ./outputs/t428

./tot_info.exe  < $ROOT/inputs/universe/test307.inc > ./outputs/t429

./tot_info.exe  < $ROOT/inputs/universe/test308.inc > ./outputs/t430

./tot_info.exe  < $ROOT/inputs/universe/test309.inc > ./outputs/t431

./tot_info.exe  < $ROOT/inputs/universe/test310.inc > ./outputs/t432

./tot_info.exe  < $ROOT/inputs/universe/test311.inc > ./outputs/t433

./tot_info.exe  < $ROOT/inputs/universe/test312.inc > ./outputs/t434

./tot_info.exe  < $ROOT/inputs/universe/test313.inc > ./outputs/t435

./tot_info.exe  < $ROOT/inputs/universe/test314.inc > ./outputs/t436

./tot_info.exe  < $ROOT/inputs/universe/test315.inc > ./outputs/t437

./tot_info.exe  < $ROOT/inputs/universe/test316.inc > ./outputs/t438

./tot_info.exe  < $ROOT/inputs/universe/test317.inc > ./outputs/t439

./tot_info.exe  < $ROOT/inputs/universe/test318.inc > ./outputs/t440

./tot_info.exe  < $ROOT/inputs/universe/test319.inc > ./outputs/t441

./tot_info.exe  < $ROOT/inputs/universe/test320.inc > ./outputs/t442

./tot_info.exe  < $ROOT/inputs/universe/test321.inc > ./outputs/t443

./tot_info.exe  < $ROOT/inputs/universe/test322.inc > ./outputs/t444

./tot_info.exe  < $ROOT/inputs/universe/test323.inc > ./outputs/t445

./tot_info.exe  < $ROOT/inputs/universe/test324.inc > ./outputs/t446

./tot_info.exe  < $ROOT/inputs/universe/test325.inc > ./outputs/t447

./tot_info.exe  < $ROOT/inputs/universe/test326.inc > ./outputs/t448

./tot_info.exe  < $ROOT/inputs/universe/test327.inc > ./outputs/t449

./tot_info.exe  < $ROOT/inputs/universe/test328.inc > ./outputs/t450

./tot_info.exe  < $ROOT/inputs/universe/test329.inc > ./outputs/t451

./tot_info.exe  < $ROOT/inputs/universe/test331.inc > ./outputs/t452

./tot_info.exe  < $ROOT/inputs/universe/test332.inc > ./outputs/t453

./tot_info.exe  < $ROOT/inputs/universe/test333.inc > ./outputs/t454

./tot_info.exe  < $ROOT/inputs/universe/test334.inc > ./outputs/t455

./tot_info.exe  < $ROOT/inputs/universe/test335.inc > ./outputs/t456

./tot_info.exe  < $ROOT/inputs/universe/test336.inc > ./outputs/t457

./tot_info.exe  < $ROOT/inputs/universe/test337.inc > ./outputs/t458

./tot_info.exe  < $ROOT/inputs/universe/test338.inc > ./outputs/t459

./tot_info.exe  < $ROOT/inputs/universe/test339.inc > ./outputs/t460

./tot_info.exe  < $ROOT/inputs/universe/test340.inc > ./outputs/t461

./tot_info.exe  < $ROOT/inputs/universe/test341.inc > ./outputs/t462

./tot_info.exe  < $ROOT/inputs/universe/test342.inc > ./outputs/t463

./tot_info.exe  < $ROOT/inputs/universe/test343.inc > ./outputs/t464

./tot_info.exe  < $ROOT/inputs/universe/test344.inc > ./outputs/t465

./tot_info.exe  < $ROOT/inputs/universe/test345.inc > ./outputs/t466

./tot_info.exe  < $ROOT/inputs/universe/test346.inc > ./outputs/t467

./tot_info.exe  < $ROOT/inputs/universe/test347.inc > ./outputs/t468

./tot_info.exe  < $ROOT/inputs/universe/test348.inc > ./outputs/t469

./tot_info.exe  < $ROOT/inputs/universe/test349.inc > ./outputs/t470

./tot_info.exe  < $ROOT/inputs/universe/test350.inc > ./outputs/t471

./tot_info.exe  < $ROOT/inputs/universe/test351.inc > ./outputs/t472

./tot_info.exe  < $ROOT/inputs/universe/test352.inc > ./outputs/t473

./tot_info.exe  < $ROOT/inputs/universe/test353.inc > ./outputs/t474

./tot_info.exe  < $ROOT/inputs/universe/test354.inc > ./outputs/t475

./tot_info.exe  < $ROOT/inputs/universe/test355.inc > ./outputs/t476

./tot_info.exe  < $ROOT/inputs/universe/test356.inc > ./outputs/t477

./tot_info.exe  < $ROOT/inputs/universe/test357.inc > ./outputs/t478

./tot_info.exe  < $ROOT/inputs/universe/test358.inc > ./outputs/t479

./tot_info.exe  < $ROOT/inputs/universe/test359.inc > ./outputs/t480

./tot_info.exe  < $ROOT/inputs/universe/test361.inc > ./outputs/t481

./tot_info.exe  < $ROOT/inputs/universe/test362.inc > ./outputs/t482

./tot_info.exe  < $ROOT/inputs/universe/test363.inc > ./outputs/t483

./tot_info.exe  < $ROOT/inputs/universe/test364.inc > ./outputs/t484

./tot_info.exe  < $ROOT/inputs/universe/test365.inc > ./outputs/t485

./tot_info.exe  < $ROOT/inputs/universe/test366.inc > ./outputs/t486

./tot_info.exe  < $ROOT/inputs/universe/test367.inc > ./outputs/t487

./tot_info.exe  < $ROOT/inputs/universe/test368.inc > ./outputs/t488

./tot_info.exe  < $ROOT/inputs/universe/test369.inc > ./outputs/t489

./tot_info.exe  < $ROOT/inputs/universe/test370.inc > ./outputs/t490

./tot_info.exe  < $ROOT/inputs/universe/test371.inc > ./outputs/t491

./tot_info.exe  < $ROOT/inputs/universe/test372.inc > ./outputs/t492

./tot_info.exe  < $ROOT/inputs/universe/test373.inc > ./outputs/t493

./tot_info.exe  < $ROOT/inputs/universe/test374.inc > ./outputs/t494

./tot_info.exe  < $ROOT/inputs/universe/test375.inc > ./outputs/t495

./tot_info.exe  < $ROOT/inputs/universe/test376.inc > ./outputs/t496

./tot_info.exe  < $ROOT/inputs/universe/test377.inc > ./outputs/t497

./tot_info.exe  < $ROOT/inputs/universe/test378.inc > ./outputs/t498

./tot_info.exe  < $ROOT/inputs/universe/test379.inc > ./outputs/t499

./tot_info.exe  < $ROOT/inputs/universe/test380.inc > ./outputs/t500

./tot_info.exe  < $ROOT/inputs/universe/test381.inc > ./outputs/t501

./tot_info.exe  < $ROOT/inputs/universe/test382.inc > ./outputs/t502

./tot_info.exe  < $ROOT/inputs/universe/test383.inc > ./outputs/t503

./tot_info.exe  < $ROOT/inputs/universe/test384.inc > ./outputs/t504

./tot_info.exe  < $ROOT/inputs/universe/test385.inc > ./outputs/t505

./tot_info.exe  < $ROOT/inputs/universe/test386.inc > ./outputs/t506

./tot_info.exe  < $ROOT/inputs/universe/test387.inc > ./outputs/t507

./tot_info.exe  < $ROOT/inputs/universe/test388.inc > ./outputs/t508

./tot_info.exe  < $ROOT/inputs/universe/test390.inc > ./outputs/t509

./tot_info.exe  < $ROOT/inputs/universe/test391.inc > ./outputs/t510

./tot_info.exe  < $ROOT/inputs/universe/test392.inc > ./outputs/t511

./tot_info.exe  < $ROOT/inputs/universe/test393.inc > ./outputs/t512

./tot_info.exe  < $ROOT/inputs/universe/test394.inc > ./outputs/t513

./tot_info.exe  < $ROOT/inputs/universe/test395.inc > ./outputs/t514

./tot_info.exe  < $ROOT/inputs/universe/test396.inc > ./outputs/t515

./tot_info.exe  < $ROOT/inputs/universe/test397.inc > ./outputs/t516

./tot_info.exe  < $ROOT/inputs/universe/test398.inc > ./outputs/t517

./tot_info.exe  < $ROOT/inputs/universe/test399.inc > ./outputs/t518

./tot_info.exe  < $ROOT/inputs/universe/test400.inc > ./outputs/t519

./tot_info.exe  < $ROOT/inputs/universe/test401.inc > ./outputs/t520

./tot_info.exe  < $ROOT/inputs/universe/test402.inc > ./outputs/t521

./tot_info.exe  < $ROOT/inputs/universe/test403.inc > ./outputs/t522

./tot_info.exe  < $ROOT/inputs/universe/test404.inc > ./outputs/t523

./tot_info.exe  < $ROOT/inputs/universe/test405.inc > ./outputs/t524

./tot_info.exe  < $ROOT/inputs/universe/test406.inc > ./outputs/t525

./tot_info.exe  < $ROOT/inputs/universe/test407.inc > ./outputs/t526

./tot_info.exe  < $ROOT/inputs/universe/test408.inc > ./outputs/t527

./tot_info.exe  < $ROOT/inputs/universe/test409.inc > ./outputs/t528

./tot_info.exe  < $ROOT/inputs/universe/test410.inc > ./outputs/t529

./tot_info.exe  < $ROOT/inputs/universe/tst21.mat > ./outputs/t530

./tot_info.exe  < $ROOT/inputs/universe/tst22.mat > ./outputs/t531

./tot_info.exe  < $ROOT/inputs/universe/tst23.mat > ./outputs/t532

./tot_info.exe  < $ROOT/inputs/universe/tst24.mat > ./outputs/t533

./tot_info.exe  < $ROOT/inputs/universe/tst25.mat > ./outputs/t534

./tot_info.exe  < $ROOT/inputs/universe/tst26.mat > ./outputs/t535

./tot_info.exe  < $ROOT/inputs/universe/tst27.mat > ./outputs/t536

./tot_info.exe  < $ROOT/inputs/universe/tst28.mat > ./outputs/t537

./tot_info.exe  < $ROOT/inputs/universe/tst2question.mat > ./outputs/t538

./tot_info.exe  < $ROOT/inputs/universe/tst2rtangle.mat > ./outputs/t539

./tot_info.exe  < $ROOT/inputs/universe/tst2=.mat > ./outputs/t540

./tot_info.exe  < $ROOT/inputs/universe/tst2:.mat > ./outputs/t541

./tot_info.exe  < $ROOT/inputs/universe/tst2g.mat > ./outputs/t542

./tot_info.exe  < $ROOT/inputs/universe/tst2@.mat > ./outputs/t543

./tot_info.exe  < $ROOT/inputs/universe/tst2A.mat > ./outputs/t544

./tot_info.exe  < $ROOT/inputs/universe/tst2B.mat > ./outputs/t545

./tot_info.exe  < $ROOT/inputs/universe/tst2D.mat > ./outputs/t546

./tot_info.exe  < $ROOT/inputs/universe/tst2E.mat > ./outputs/t547

./tot_info.exe  < $ROOT/inputs/universe/tst2f.mat > ./outputs/t548

./tot_info.exe  < $ROOT/inputs/universe/tst2D.mat > ./outputs/t549

./tot_info.exe  < $ROOT/inputs/universe/jkAAA.mat > ./outputs/t550

./tot_info.exe  < $ROOT/inputs/universe/jkAAB.mat > ./outputs/t551

./tot_info.exe  < $ROOT/inputs/universe/jkAAC.mat > ./outputs/t552

./tot_info.exe  < $ROOT/inputs/universe/jkAAD.mat > ./outputs/t553

./tot_info.exe  < $ROOT/inputs/universe/jkAAE.mat > ./outputs/t554

./tot_info.exe  < $ROOT/inputs/universe/jkAAF.mat > ./outputs/t555

./tot_info.exe  < $ROOT/inputs/universe/jkAAG.mat > ./outputs/t556

./tot_info.exe  < $ROOT/inputs/universe/jkAAH.mat > ./outputs/t557

./tot_info.exe  < $ROOT/inputs/universe/jkAAI.mat > ./outputs/t558

./tot_info.exe  < $ROOT/inputs/universe/jkAAJ.mat > ./outputs/t559

./tot_info.exe  < $ROOT/inputs/universe/jkAFa.mat > ./outputs/t560

./tot_info.exe  < $ROOT/inputs/universe/jkAFb.mat > ./outputs/t561

./tot_info.exe  < $ROOT/inputs/universe/jkAFc.mat > ./outputs/t562

./tot_info.exe  < $ROOT/inputs/universe/jkAFd.mat > ./outputs/t563

./tot_info.exe  < $ROOT/inputs/universe/jkAFe.mat > ./outputs/t564

./tot_info.exe  < $ROOT/inputs/universe/jkAFf.mat > ./outputs/t565

./tot_info.exe  < $ROOT/inputs/universe/jkAFg.mat > ./outputs/t566

./tot_info.exe  < $ROOT/inputs/universe/jkAFh.mat > ./outputs/t567

./tot_info.exe  < $ROOT/inputs/universe/jkAFi.mat > ./outputs/t568

./tot_info.exe  < $ROOT/inputs/universe/jkAEI.mat > ./outputs/t569

./tot_info.exe  < $ROOT/inputs/universe/jkAEJ.mat > ./outputs/t570

./tot_info.exe  < $ROOT/inputs/universe/jkAEK.mat > ./outputs/t571

./tot_info.exe  < $ROOT/inputs/universe/jkAEL.mat > ./outputs/t572

./tot_info.exe  < $ROOT/inputs/universe/jkAEM.mat > ./outputs/t573

./tot_info.exe  < $ROOT/inputs/universe/jkAEN.mat > ./outputs/t574

./tot_info.exe  < $ROOT/inputs/universe/jkAEO.mat > ./outputs/t575

./tot_info.exe  < $ROOT/inputs/universe/jkAEP.mat > ./outputs/t576

./tot_info.exe  < $ROOT/inputs/universe/jkAEQ.mat > ./outputs/t577

./tot_info.exe  < $ROOT/inputs/universe/jkAER.mat > ./outputs/t578

./tot_info.exe  < $ROOT/inputs/universe/jkAES.mat > ./outputs/t579

./tot_info.exe  < $ROOT/inputs/universe/jkAET.mat > ./outputs/t580

./tot_info.exe  < $ROOT/inputs/universe/jkAEU.mat > ./outputs/t581

./tot_info.exe  < $ROOT/inputs/universe/jkAEV.mat > ./outputs/t582

./tot_info.exe  < $ROOT/inputs/universe/jkAEW.mat > ./outputs/t583

./tot_info.exe  < $ROOT/inputs/universe/jkAEX.mat > ./outputs/t584

./tot_info.exe  < $ROOT/inputs/universe/jkAEY.mat > ./outputs/t585

./tot_info.exe  < $ROOT/inputs/universe/jkAEZ.mat > ./outputs/t586

./tot_info.exe  < $ROOT/inputs/universe/jkAE[.mat > ./outputs/t587

./tot_info.exe  < $ROOT/inputs/universe/jkAE].mat > ./outputs/t588

./tot_info.exe  < $ROOT/inputs/universe/jkAE_.mat > ./outputs/t589

./tot_info.exe  < $ROOT/inputs/universe/jkAEa.mat > ./outputs/t590

./tot_info.exe  < $ROOT/inputs/universe/jkAEb.mat > ./outputs/t591

./tot_info.exe  < $ROOT/inputs/universe/jkAEc.mat > ./outputs/t592

./tot_info.exe  < $ROOT/inputs/universe/jkAEd.mat > ./outputs/t593

./tot_info.exe  < $ROOT/inputs/universe/jkAEe.mat > ./outputs/t594

./tot_info.exe  < $ROOT/inputs/universe/jkAEf.mat > ./outputs/t595

./tot_info.exe  < $ROOT/inputs/universe/jkAEg.mat > ./outputs/t596

./tot_info.exe  < $ROOT/inputs/universe/jkAEh.mat > ./outputs/t597

./tot_info.exe  < $ROOT/inputs/universe/jkAEi.mat > ./outputs/t598

./tot_info.exe  < $ROOT/inputs/universe/jkAEj.mat > ./outputs/t599

./tot_info.exe  < $ROOT/inputs/universe/jkAEk.mat > ./outputs/t600

./tot_info.exe  < $ROOT/inputs/universe/jkAEl.mat > ./outputs/t601

./tot_info.exe  < $ROOT/inputs/universe/jkAEm.mat > ./outputs/t602

./tot_info.exe  < $ROOT/inputs/universe/jkAEn.mat > ./outputs/t603

./tot_info.exe  < $ROOT/inputs/universe/jkAEo.mat > ./outputs/t604

./tot_info.exe  < $ROOT/inputs/universe/jkAEp.mat > ./outputs/t605

./tot_info.exe  < $ROOT/inputs/universe/jkAEq.mat > ./outputs/t606

./tot_info.exe  < $ROOT/inputs/universe/jkAEr.mat > ./outputs/t607

./tot_info.exe  < $ROOT/inputs/universe/jkAEs.mat > ./outputs/t608

./tot_info.exe  < $ROOT/inputs/universe/jkAEt.mat > ./outputs/t609

./tot_info.exe  < $ROOT/inputs/universe/jkAEu.mat > ./outputs/t610

./tot_info.exe  < $ROOT/inputs/universe/jkAEv.mat > ./outputs/t611

./tot_info.exe  < $ROOT/inputs/universe/jkAEw.mat > ./outputs/t612

./tot_info.exe  < $ROOT/inputs/universe/jkAEx.mat > ./outputs/t613

./tot_info.exe  < $ROOT/inputs/universe/jkAEy.mat > ./outputs/t614

./tot_info.exe  < $ROOT/inputs/universe/jkAFA.mat > ./outputs/t615

./tot_info.exe  < $ROOT/inputs/universe/jkAFB.mat > ./outputs/t616

./tot_info.exe  < $ROOT/inputs/universe/jkAFC.mat > ./outputs/t617

./tot_info.exe  < $ROOT/inputs/universe/jkAFD.mat > ./outputs/t618

./tot_info.exe  < $ROOT/inputs/universe/jkAFE.mat > ./outputs/t619

./tot_info.exe  < $ROOT/inputs/universe/jkAFF.mat > ./outputs/t620

./tot_info.exe  < $ROOT/inputs/universe/jkAFG.mat > ./outputs/t621

./tot_info.exe  < $ROOT/inputs/universe/jkAFH.mat > ./outputs/t622

./tot_info.exe  < $ROOT/inputs/universe/jkAFI.mat > ./outputs/t623

./tot_info.exe  < $ROOT/inputs/universe/jkAFJ.mat > ./outputs/t624

./tot_info.exe  < $ROOT/inputs/universe/jkAFK.mat > ./outputs/t625

./tot_info.exe  < $ROOT/inputs/universe/jkAFL.mat > ./outputs/t626

./tot_info.exe  < $ROOT/inputs/universe/jkAFM.mat > ./outputs/t627

./tot_info.exe  < $ROOT/inputs/universe/jkAFN.mat > ./outputs/t628

./tot_info.exe  < $ROOT/inputs/universe/jkAFO.mat > ./outputs/t629

./tot_info.exe  < $ROOT/inputs/universe/jkAFP.mat > ./outputs/t630

./tot_info.exe  < $ROOT/inputs/universe/jkAFQ.mat > ./outputs/t631

./tot_info.exe  < $ROOT/inputs/universe/jkAFR.mat > ./outputs/t632

./tot_info.exe  < $ROOT/inputs/universe/jkAFS.mat > ./outputs/t633

./tot_info.exe  < $ROOT/inputs/universe/jkAFT.mat > ./outputs/t634

./tot_info.exe  < $ROOT/inputs/universe/jkAFU.mat > ./outputs/t635

./tot_info.exe  < $ROOT/inputs/universe/jkAFV.mat > ./outputs/t636

./tot_info.exe  < $ROOT/inputs/universe/jkAFW.mat > ./outputs/t637

./tot_info.exe  < $ROOT/inputs/universe/jkAFX.mat > ./outputs/t638

./tot_info.exe  < $ROOT/inputs/universe/jkAFY.mat > ./outputs/t639

./tot_info.exe  < $ROOT/inputs/universe/jkAFZ.mat > ./outputs/t640

./tot_info.exe  < $ROOT/inputs/universe/jkAF[.mat > ./outputs/t641

./tot_info.exe  < $ROOT/inputs/universe/jkAF].mat > ./outputs/t642

./tot_info.exe  < $ROOT/inputs/universe/jkAFhh.mat > ./outputs/t643

./tot_info.exe  < $ROOT/inputs/universe/jkAF_.mat > ./outputs/t644

./tot_info.exe  < $ROOT/inputs/universe/jkACk.mat > ./outputs/t645

./tot_info.exe  < $ROOT/inputs/universe/jkACl.mat > ./outputs/t646

./tot_info.exe  < $ROOT/inputs/universe/jkACm.mat > ./outputs/t647

./tot_info.exe  < $ROOT/inputs/universe/jkACn.mat > ./outputs/t648

./tot_info.exe  < $ROOT/inputs/universe/jkACo.mat > ./outputs/t649

./tot_info.exe  < $ROOT/inputs/universe/jkACp.mat > ./outputs/t650

./tot_info.exe  < $ROOT/inputs/universe/jkACq.mat > ./outputs/t651

./tot_info.exe  < $ROOT/inputs/universe/jkACr.mat > ./outputs/t652

./tot_info.exe  < $ROOT/inputs/universe/jkACs.mat > ./outputs/t653

./tot_info.exe  < $ROOT/inputs/universe/jkACt.mat > ./outputs/t654

./tot_info.exe  < $ROOT/inputs/universe/jkACu.mat > ./outputs/t655

./tot_info.exe  < $ROOT/inputs/universe/jkACv.mat > ./outputs/t656

./tot_info.exe  < $ROOT/inputs/universe/jkACw.mat > ./outputs/t657

./tot_info.exe  < $ROOT/inputs/universe/jkACx.mat > ./outputs/t658

./tot_info.exe  < $ROOT/inputs/universe/jkACy.mat > ./outputs/t659

./tot_info.exe  < $ROOT/inputs/universe/jkADA.mat > ./outputs/t660

./tot_info.exe  < $ROOT/inputs/universe/jkADB.mat > ./outputs/t661

./tot_info.exe  < $ROOT/inputs/universe/jkADC.mat > ./outputs/t662

./tot_info.exe  < $ROOT/inputs/universe/jkADD.mat > ./outputs/t663

./tot_info.exe  < $ROOT/inputs/universe/jkADE.mat > ./outputs/t664

./tot_info.exe  < $ROOT/inputs/universe/jkADF.mat > ./outputs/t665

./tot_info.exe  < $ROOT/inputs/universe/jkADG.mat > ./outputs/t666

./tot_info.exe  < $ROOT/inputs/universe/jkADH.mat > ./outputs/t667

./tot_info.exe  < $ROOT/inputs/universe/jkADI.mat > ./outputs/t668

./tot_info.exe  < $ROOT/inputs/universe/jkADJ.mat > ./outputs/t669

./tot_info.exe  < $ROOT/inputs/universe/jkADK.mat > ./outputs/t670

./tot_info.exe  < $ROOT/inputs/universe/jkADL.mat > ./outputs/t671

./tot_info.exe  < $ROOT/inputs/universe/jkADM.mat > ./outputs/t672

./tot_info.exe  < $ROOT/inputs/universe/jkADN.mat > ./outputs/t673

./tot_info.exe  < $ROOT/inputs/universe/jkADO.mat > ./outputs/t674

./tot_info.exe  < $ROOT/inputs/universe/jkADP.mat > ./outputs/t675

./tot_info.exe  < $ROOT/inputs/universe/jkADQ.mat > ./outputs/t676

./tot_info.exe  < $ROOT/inputs/universe/jkADR.mat > ./outputs/t677

./tot_info.exe  < $ROOT/inputs/universe/jkADS.mat > ./outputs/t678

./tot_info.exe  < $ROOT/inputs/universe/jkADT.mat > ./outputs/t679

./tot_info.exe  < $ROOT/inputs/universe/jkADU.mat > ./outputs/t680

./tot_info.exe  < $ROOT/inputs/universe/jkADV.mat > ./outputs/t681

./tot_info.exe  < $ROOT/inputs/universe/jkADW.mat > ./outputs/t682

./tot_info.exe  < $ROOT/inputs/universe/jkADX.mat > ./outputs/t683

./tot_info.exe  < $ROOT/inputs/universe/jkADY.mat > ./outputs/t684

./tot_info.exe  < $ROOT/inputs/universe/jkADZ.mat > ./outputs/t685

./tot_info.exe  < $ROOT/inputs/universe/jkAD[.mat > ./outputs/t686

./tot_info.exe  < $ROOT/inputs/universe/jkAD].mat > ./outputs/t687

./tot_info.exe  < $ROOT/inputs/universe/jkADhh.mat > ./outputs/t688

./tot_info.exe  < $ROOT/inputs/universe/jkAD_.mat > ./outputs/t689

./tot_info.exe  < $ROOT/inputs/universe/jkADa.mat > ./outputs/t690

./tot_info.exe  < $ROOT/inputs/universe/jkADb.mat > ./outputs/t691

./tot_info.exe  < $ROOT/inputs/universe/jkAFi.mat > ./outputs/t692

./tot_info.exe  < $ROOT/inputs/universe/jkADd.mat > ./outputs/t693

./tot_info.exe  < $ROOT/inputs/universe/jkADe.mat > ./outputs/t694

./tot_info.exe  < $ROOT/inputs/universe/jkADf.mat > ./outputs/t695

./tot_info.exe  < $ROOT/inputs/universe/jkADg.mat > ./outputs/t696

./tot_info.exe  < $ROOT/inputs/universe/jkADh.mat > ./outputs/t697

./tot_info.exe  < $ROOT/inputs/universe/jkADi.mat > ./outputs/t698

./tot_info.exe  < $ROOT/inputs/universe/jkADj.mat > ./outputs/t699

./tot_info.exe  < $ROOT/inputs/universe/jkADk.mat > ./outputs/t700

./tot_info.exe  < $ROOT/inputs/universe/jkADl.mat > ./outputs/t701

./tot_info.exe  < $ROOT/inputs/universe/jkADm.mat > ./outputs/t702

./tot_info.exe  < $ROOT/inputs/universe/jkADn.mat > ./outputs/t703

./tot_info.exe  < $ROOT/inputs/universe/jkADo.mat > ./outputs/t704

./tot_info.exe  < $ROOT/inputs/universe/jkADp.mat > ./outputs/t705

./tot_info.exe  < $ROOT/inputs/universe/jkADq.mat > ./outputs/t706

./tot_info.exe  < $ROOT/inputs/universe/jkADr.mat > ./outputs/t707

./tot_info.exe  < $ROOT/inputs/universe/jkADs.mat > ./outputs/t708

./tot_info.exe  < $ROOT/inputs/universe/jkADt.mat > ./outputs/t709

./tot_info.exe  < $ROOT/inputs/universe/jkADu.mat > ./outputs/t710

./tot_info.exe  < $ROOT/inputs/universe/jkADv.mat > ./outputs/t711

./tot_info.exe  < $ROOT/inputs/universe/jkADw.mat > ./outputs/t712

./tot_info.exe  < $ROOT/inputs/universe/jkADx.mat > ./outputs/t713

./tot_info.exe  < $ROOT/inputs/universe/jkADy.mat > ./outputs/t714

./tot_info.exe  < $ROOT/inputs/universe/jkAEA.mat > ./outputs/t715

./tot_info.exe  < $ROOT/inputs/universe/jkAEB.mat > ./outputs/t716

./tot_info.exe  < $ROOT/inputs/universe/jkAEC.mat > ./outputs/t717

./tot_info.exe  < $ROOT/inputs/universe/jkAED.mat > ./outputs/t718

./tot_info.exe  < $ROOT/inputs/universe/jkAEE.mat > ./outputs/t719

./tot_info.exe  < $ROOT/inputs/universe/jkAEF.mat > ./outputs/t720

./tot_info.exe  < $ROOT/inputs/universe/jkAEG.mat > ./outputs/t721

./tot_info.exe  < $ROOT/inputs/universe/jkAEH.mat > ./outputs/t722

./tot_info.exe  < $ROOT/inputs/universe/jkABT.mat > ./outputs/t723

./tot_info.exe  < $ROOT/inputs/universe/jkABU.mat > ./outputs/t724

./tot_info.exe  < $ROOT/inputs/universe/jkABV.mat > ./outputs/t725

./tot_info.exe  < $ROOT/inputs/universe/jkABW.mat > ./outputs/t726

./tot_info.exe  < $ROOT/inputs/universe/jkABX.mat > ./outputs/t727

./tot_info.exe  < $ROOT/inputs/universe/jkABY.mat > ./outputs/t728

./tot_info.exe  < $ROOT/inputs/universe/jkABZ.mat > ./outputs/t729

./tot_info.exe  < $ROOT/inputs/universe/jkAB[.mat > ./outputs/t730

./tot_info.exe  < $ROOT/inputs/universe/jkAB].mat > ./outputs/t731

./tot_info.exe  < $ROOT/inputs/universe/jkAB_.mat > ./outputs/t732

./tot_info.exe  < $ROOT/inputs/universe/jkABa.mat > ./outputs/t733

./tot_info.exe  < $ROOT/inputs/universe/jkABb.mat > ./outputs/t734

./tot_info.exe  < $ROOT/inputs/universe/jkABc.mat > ./outputs/t735

./tot_info.exe  < $ROOT/inputs/universe/jkABd.mat > ./outputs/t736

./tot_info.exe  < $ROOT/inputs/universe/jkABe.mat > ./outputs/t737

./tot_info.exe  < $ROOT/inputs/universe/jkABf.mat > ./outputs/t738

./tot_info.exe  < $ROOT/inputs/universe/jkABg.mat > ./outputs/t739

./tot_info.exe  < $ROOT/inputs/universe/jkAB_.mat > ./outputs/t740

./tot_info.exe  < $ROOT/inputs/universe/jkABa.mat > ./outputs/t741

./tot_info.exe  < $ROOT/inputs/universe/jkABb.mat > ./outputs/t742

./tot_info.exe  < $ROOT/inputs/universe/jkABc.mat > ./outputs/t743

./tot_info.exe  < $ROOT/inputs/universe/jkABd.mat > ./outputs/t744

./tot_info.exe  < $ROOT/inputs/universe/jkABe.mat > ./outputs/t745

./tot_info.exe  < $ROOT/inputs/universe/jkABf.mat > ./outputs/t746

./tot_info.exe  < $ROOT/inputs/universe/jkABg.mat > ./outputs/t747

./tot_info.exe  < $ROOT/inputs/universe/jkABh.mat > ./outputs/t748

./tot_info.exe  < $ROOT/inputs/universe/jkABi.mat > ./outputs/t749

./tot_info.exe  < $ROOT/inputs/universe/jkABj.mat > ./outputs/t750

./tot_info.exe  < $ROOT/inputs/universe/jkABk.mat > ./outputs/t751

./tot_info.exe  < $ROOT/inputs/universe/jkABl.mat > ./outputs/t752

./tot_info.exe  < $ROOT/inputs/universe/jkABm.mat > ./outputs/t753

./tot_info.exe  < $ROOT/inputs/universe/jkABn.mat > ./outputs/t754

./tot_info.exe  < $ROOT/inputs/universe/jkABo.mat > ./outputs/t755

./tot_info.exe  < $ROOT/inputs/universe/jkABp.mat > ./outputs/t756

./tot_info.exe  < $ROOT/inputs/universe/jkAFi.mat > ./outputs/t757

./tot_info.exe  < $ROOT/inputs/universe/jkACC.mat > ./outputs/t758

./tot_info.exe  < $ROOT/inputs/universe/jkACD.mat > ./outputs/t759

./tot_info.exe  < $ROOT/inputs/universe/jkACE.mat > ./outputs/t760

./tot_info.exe  < $ROOT/inputs/universe/jkACF.mat > ./outputs/t761

./tot_info.exe  < $ROOT/inputs/universe/jkACG.mat > ./outputs/t762

./tot_info.exe  < $ROOT/inputs/universe/jkACH.mat > ./outputs/t763

./tot_info.exe  < $ROOT/inputs/universe/jkACI.mat > ./outputs/t764

./tot_info.exe  < $ROOT/inputs/universe/jkACJ.mat > ./outputs/t765

./tot_info.exe  < $ROOT/inputs/universe/jkACK.mat > ./outputs/t766

./tot_info.exe  < $ROOT/inputs/universe/jkACL.mat > ./outputs/t767

./tot_info.exe  < $ROOT/inputs/universe/jkACM.mat > ./outputs/t768

./tot_info.exe  < $ROOT/inputs/universe/jkACN.mat > ./outputs/t769

./tot_info.exe  < $ROOT/inputs/universe/jkACO.mat > ./outputs/t770

./tot_info.exe  < $ROOT/inputs/universe/jkACP.mat > ./outputs/t771

./tot_info.exe  < $ROOT/inputs/universe/jkACQ.mat > ./outputs/t772

./tot_info.exe  < $ROOT/inputs/universe/jkACR.mat > ./outputs/t773

./tot_info.exe  < $ROOT/inputs/universe/jkACS.mat > ./outputs/t774

./tot_info.exe  < $ROOT/inputs/universe/jkACT.mat > ./outputs/t775

./tot_info.exe  < $ROOT/inputs/universe/jkACU.mat > ./outputs/t776

./tot_info.exe  < $ROOT/inputs/universe/jkACV.mat > ./outputs/t777

./tot_info.exe  < $ROOT/inputs/universe/jkACW.mat > ./outputs/t778

./tot_info.exe  < $ROOT/inputs/universe/jkACX.mat > ./outputs/t779

./tot_info.exe  < $ROOT/inputs/universe/jkACY.mat > ./outputs/t780

./tot_info.exe  < $ROOT/inputs/universe/jkACZ.mat > ./outputs/t781

./tot_info.exe  < $ROOT/inputs/universe/jkAC[.mat > ./outputs/t782

./tot_info.exe  < $ROOT/inputs/universe/jkAC].mat > ./outputs/t783

./tot_info.exe  < $ROOT/inputs/universe/jkAC_.mat > ./outputs/t784

./tot_info.exe  < $ROOT/inputs/universe/jkACa.mat > ./outputs/t785

./tot_info.exe  < $ROOT/inputs/universe/jkACb.mat > ./outputs/t786

./tot_info.exe  < $ROOT/inputs/universe/jkACc.mat > ./outputs/t787

./tot_info.exe  < $ROOT/inputs/universe/jkACd.mat > ./outputs/t788

./tot_info.exe  < $ROOT/inputs/universe/jkACe.mat > ./outputs/t789

./tot_info.exe  < $ROOT/inputs/universe/jkACf.mat > ./outputs/t790

./tot_info.exe  < $ROOT/inputs/universe/jkACg.mat > ./outputs/t791

./tot_info.exe  < $ROOT/inputs/universe/jkACh.mat > ./outputs/t792

./tot_info.exe  < $ROOT/inputs/universe/jkACi.mat > ./outputs/t793

./tot_info.exe  < $ROOT/inputs/universe/jkACj.mat > ./outputs/t794

./tot_info.exe  < $ROOT/inputs/universe/jkAAK.mat > ./outputs/t795

./tot_info.exe  < $ROOT/inputs/universe/jkAAL.mat > ./outputs/t796

./tot_info.exe  < $ROOT/inputs/universe/jkAAM.mat > ./outputs/t797

./tot_info.exe  < $ROOT/inputs/universe/jkAAN.mat > ./outputs/t798

./tot_info.exe  < $ROOT/inputs/universe/jkAAO.mat > ./outputs/t799

./tot_info.exe  < $ROOT/inputs/universe/jkAAP.mat > ./outputs/t800

./tot_info.exe  < $ROOT/inputs/universe/jkAAQ.mat > ./outputs/t801

./tot_info.exe  < $ROOT/inputs/universe/jkAAR.mat > ./outputs/t802

./tot_info.exe  < $ROOT/inputs/universe/jkAAS.mat > ./outputs/t803

./tot_info.exe  < $ROOT/inputs/universe/jkAAT.mat > ./outputs/t804

./tot_info.exe  < $ROOT/inputs/universe/jkAAU.mat > ./outputs/t805

./tot_info.exe  < $ROOT/inputs/universe/jkAAV.mat > ./outputs/t806

./tot_info.exe  < $ROOT/inputs/universe/jkAAW.mat > ./outputs/t807

./tot_info.exe  < $ROOT/inputs/universe/jkAAX.mat > ./outputs/t808

./tot_info.exe  < $ROOT/inputs/universe/jkAAY.mat > ./outputs/t809

./tot_info.exe  < $ROOT/inputs/universe/jkAAZ.mat > ./outputs/t810

./tot_info.exe  < $ROOT/inputs/universe/jkAA[.mat > ./outputs/t811

./tot_info.exe  < $ROOT/inputs/universe/jkAA].mat > ./outputs/t812

./tot_info.exe  < $ROOT/inputs/universe/jkAA_.mat > ./outputs/t813

./tot_info.exe  < $ROOT/inputs/universe/jkAAa.mat > ./outputs/t814

./tot_info.exe  < $ROOT/inputs/universe/jkAAb.mat > ./outputs/t815

./tot_info.exe  < $ROOT/inputs/universe/jkAAc.mat > ./outputs/t816

./tot_info.exe  < $ROOT/inputs/universe/jkAAd.mat > ./outputs/t817

./tot_info.exe  < $ROOT/inputs/universe/jkAAe.mat > ./outputs/t818

./tot_info.exe  < $ROOT/inputs/universe/jkAAf.mat > ./outputs/t819

./tot_info.exe  < $ROOT/inputs/universe/jkAAg.mat > ./outputs/t820

./tot_info.exe  < $ROOT/inputs/universe/jkAAh.mat > ./outputs/t821

./tot_info.exe  < $ROOT/inputs/universe/jkAAi.mat > ./outputs/t822

./tot_info.exe  < $ROOT/inputs/universe/jkAAj.mat > ./outputs/t823

./tot_info.exe  < $ROOT/inputs/universe/jkAAk.mat > ./outputs/t824

./tot_info.exe  < $ROOT/inputs/universe/jkAAl.mat > ./outputs/t825

./tot_info.exe  < $ROOT/inputs/universe/jkAAm.mat > ./outputs/t826

./tot_info.exe  < $ROOT/inputs/universe/jkAAn.mat > ./outputs/t827

./tot_info.exe  < $ROOT/inputs/universe/jkAAo.mat > ./outputs/t828

./tot_info.exe  < $ROOT/inputs/universe/jkAAp.mat > ./outputs/t829

./tot_info.exe  < $ROOT/inputs/universe/jkAAq.mat > ./outputs/t830

./tot_info.exe  < $ROOT/inputs/universe/jkAAr.mat > ./outputs/t831

./tot_info.exe  < $ROOT/inputs/universe/jkAAs.mat > ./outputs/t832

./tot_info.exe  < $ROOT/inputs/universe/jkAAt.mat > ./outputs/t833

./tot_info.exe  < $ROOT/inputs/universe/jkAAu.mat > ./outputs/t834

./tot_info.exe  < $ROOT/inputs/universe/jkAAv.mat > ./outputs/t835

./tot_info.exe  < $ROOT/inputs/universe/jkAAw.mat > ./outputs/t836

./tot_info.exe  < $ROOT/inputs/universe/jkAAx.mat > ./outputs/t837

./tot_info.exe  < $ROOT/inputs/universe/jkAAy.mat > ./outputs/t838

./tot_info.exe  < $ROOT/inputs/universe/jkABA.mat > ./outputs/t839

./tot_info.exe  < $ROOT/inputs/universe/jkABB.mat > ./outputs/t840

./tot_info.exe  < $ROOT/inputs/universe/jkABC.mat > ./outputs/t841

./tot_info.exe  < $ROOT/inputs/universe/jkABD.mat > ./outputs/t842

./tot_info.exe  < $ROOT/inputs/universe/jkABE.mat > ./outputs/t843

./tot_info.exe  < $ROOT/inputs/universe/jkABF.mat > ./outputs/t844

./tot_info.exe  < $ROOT/inputs/universe/jkABG.mat > ./outputs/t845

./tot_info.exe  < $ROOT/inputs/universe/jkABH.mat > ./outputs/t846

./tot_info.exe  < $ROOT/inputs/universe/jkABI.mat > ./outputs/t847

./tot_info.exe  < $ROOT/inputs/universe/jkABJ.mat > ./outputs/t848

./tot_info.exe  < $ROOT/inputs/universe/jkABK.mat > ./outputs/t849

./tot_info.exe  < $ROOT/inputs/universe/jkABL.mat > ./outputs/t850

./tot_info.exe  < $ROOT/inputs/universe/jkABM.mat > ./outputs/t851

./tot_info.exe  < $ROOT/inputs/universe/jkABN.mat > ./outputs/t852

./tot_info.exe  < $ROOT/inputs/universe/jkABO.mat > ./outputs/t853

./tot_info.exe  < $ROOT/inputs/universe/jkABP.mat > ./outputs/t854

./tot_info.exe  < $ROOT/inputs/universe/jkABQ.mat > ./outputs/t855

./tot_info.exe  < $ROOT/inputs/universe/jkABR.mat > ./outputs/t856

./tot_info.exe  < $ROOT/inputs/universe/jkABS.mat > ./outputs/t857

./tot_info.exe  < $ROOT/inputs/universe/new1 > ./outputs/t858

./tot_info.exe  < $ROOT/inputs/universe/new10 > ./outputs/t859

./tot_info.exe  < $ROOT/inputs/universe/new11 > ./outputs/t860

./tot_info.exe  < $ROOT/inputs/universe/new12 > ./outputs/t861

./tot_info.exe  < $ROOT/inputs/universe/new13 > ./outputs/t862

./tot_info.exe  < $ROOT/inputs/universe/new14 > ./outputs/t863

./tot_info.exe  < $ROOT/inputs/universe/new15 > ./outputs/t864

./tot_info.exe  < $ROOT/inputs/universe/new16 > ./outputs/t865

./tot_info.exe  < $ROOT/inputs/universe/new17 > ./outputs/t866

./tot_info.exe  < $ROOT/inputs/universe/new18 > ./outputs/t867

./tot_info.exe  < $ROOT/inputs/universe/new19 > ./outputs/t868

./tot_info.exe  < $ROOT/inputs/universe/new2 > ./outputs/t869

./tot_info.exe  < $ROOT/inputs/universe/new20 > ./outputs/t870

./tot_info.exe  < $ROOT/inputs/universe/new21 > ./outputs/t871

./tot_info.exe  < $ROOT/inputs/universe/new22 > ./outputs/t872

./tot_info.exe  < $ROOT/inputs/universe/new23 > ./outputs/t873

./tot_info.exe  < $ROOT/inputs/universe/new24 > ./outputs/t874

./tot_info.exe  < $ROOT/inputs/universe/new25 > ./outputs/t875

./tot_info.exe  < $ROOT/inputs/universe/new26 > ./outputs/t876

./tot_info.exe  < $ROOT/inputs/universe/new27 > ./outputs/t877

./tot_info.exe  < $ROOT/inputs/universe/new28 > ./outputs/t878

./tot_info.exe  < $ROOT/inputs/universe/new29 > ./outputs/t879

./tot_info.exe  < $ROOT/inputs/universe/new3 > ./outputs/t880

./tot_info.exe  < $ROOT/inputs/universe/new30 > ./outputs/t881

./tot_info.exe  < $ROOT/inputs/universe/new31 > ./outputs/t882

./tot_info.exe  < $ROOT/inputs/universe/new32 > ./outputs/t883

./tot_info.exe  < $ROOT/inputs/universe/new33 > ./outputs/t884

./tot_info.exe  < $ROOT/inputs/universe/new34 > ./outputs/t885

./tot_info.exe  < $ROOT/inputs/universe/new35 > ./outputs/t886

./tot_info.exe  < $ROOT/inputs/universe/new36 > ./outputs/t887

./tot_info.exe  < $ROOT/inputs/universe/new37 > ./outputs/t888

./tot_info.exe  < $ROOT/inputs/universe/new38 > ./outputs/t889

./tot_info.exe  < $ROOT/inputs/universe/new39 > ./outputs/t890

./tot_info.exe  < $ROOT/inputs/universe/new4 > ./outputs/t891

./tot_info.exe  < $ROOT/inputs/universe/new40 > ./outputs/t892

./tot_info.exe  < $ROOT/inputs/universe/new5 > ./outputs/t893

./tot_info.exe  < $ROOT/inputs/universe/new6 > ./outputs/t894

./tot_info.exe  < $ROOT/inputs/universe/new7 > ./outputs/t895

./tot_info.exe  < $ROOT/inputs/universe/new8 > ./outputs/t896

./tot_info.exe  < $ROOT/inputs/universe/new9 > ./outputs/t897

./tot_info.exe  < $ROOT/inputs/universe/ntest12 > ./outputs/t898

./tot_info.exe  < $ROOT/inputs/universe/ntest13 > ./outputs/t899

./tot_info.exe  < $ROOT/inputs/universe/ntest14 > ./outputs/t900

./tot_info.exe  < $ROOT/inputs/universe/ntest15 > ./outputs/t901

./tot_info.exe  < $ROOT/inputs/universe/ntest16 > ./outputs/t902

./tot_info.exe  < $ROOT/inputs/universe/ntest17 > ./outputs/t903

./tot_info.exe  < $ROOT/inputs/universe/ntest18 > ./outputs/t904

./tot_info.exe  < $ROOT/inputs/universe/ntest19 > ./outputs/t905

./tot_info.exe  < $ROOT/inputs/universe/ntest2 > ./outputs/t906

./tot_info.exe  < $ROOT/inputs/universe/ntest20 > ./outputs/t907

./tot_info.exe  < $ROOT/inputs/universe/ntest21 > ./outputs/t908

./tot_info.exe  < $ROOT/inputs/universe/ntest22 > ./outputs/t909

./tot_info.exe  < $ROOT/inputs/universe/ntest23 > ./outputs/t910

./tot_info.exe  < $ROOT/inputs/universe/ntest24 > ./outputs/t911

./tot_info.exe  < $ROOT/inputs/universe/ntest25 > ./outputs/t912

./tot_info.exe  < $ROOT/inputs/universe/ntest26 > ./outputs/t913

./tot_info.exe  < $ROOT/inputs/universe/ntest27 > ./outputs/t914

./tot_info.exe  < $ROOT/inputs/universe/ntest28 > ./outputs/t915

./tot_info.exe  < $ROOT/inputs/universe/ntest29 > ./outputs/t916

./tot_info.exe  < $ROOT/inputs/universe/ntest3 > ./outputs/t917

./tot_info.exe  < $ROOT/inputs/universe/ntest30 > ./outputs/t918

./tot_info.exe  < $ROOT/inputs/universe/ntest31 > ./outputs/t919

./tot_info.exe  < $ROOT/inputs/universe/ntest32 > ./outputs/t920

./tot_info.exe  < $ROOT/inputs/universe/ntest33 > ./outputs/t921

./tot_info.exe  < $ROOT/inputs/universe/ntest35 > ./outputs/t922

./tot_info.exe  < $ROOT/inputs/universe/ntest36 > ./outputs/t923

./tot_info.exe  < $ROOT/inputs/universe/ntest37 > ./outputs/t924

./tot_info.exe  < $ROOT/inputs/universe/ntest38 > ./outputs/t925

./tot_info.exe  < $ROOT/inputs/universe/ntest39 > ./outputs/t926

./tot_info.exe  < $ROOT/inputs/universe/ntest4 > ./outputs/t927

./tot_info.exe  < $ROOT/inputs/universe/ntest40 > ./outputs/t928

./tot_info.exe  < $ROOT/inputs/universe/ntest41 > ./outputs/t929

./tot_info.exe  < $ROOT/inputs/universe/ntest42 > ./outputs/t930

./tot_info.exe  < $ROOT/inputs/universe/ntest43 > ./outputs/t931

./tot_info.exe  < $ROOT/inputs/universe/ntest44 > ./outputs/t932

./tot_info.exe  < $ROOT/inputs/universe/ntest45 > ./outputs/t933

./tot_info.exe  < $ROOT/inputs/universe/ntest46 > ./outputs/t934

./tot_info.exe  < $ROOT/inputs/universe/ntest48 > ./outputs/t935

./tot_info.exe  < $ROOT/inputs/universe/ntest49 > ./outputs/t936

./tot_info.exe  < $ROOT/inputs/universe/ntest5 > ./outputs/t937

./tot_info.exe  < $ROOT/inputs/universe/ntest50 > ./outputs/t938

./tot_info.exe  < $ROOT/inputs/universe/ntest51 > ./outputs/t939

./tot_info.exe  < $ROOT/inputs/universe/ntest52 > ./outputs/t940

./tot_info.exe  < $ROOT/inputs/universe/ntest53 > ./outputs/t941

./tot_info.exe  < $ROOT/inputs/universe/ntest54 > ./outputs/t942

./tot_info.exe  < $ROOT/inputs/universe/ntest55 > ./outputs/t943

./tot_info.exe  < $ROOT/inputs/universe/ntest56 > ./outputs/t944

./tot_info.exe  < $ROOT/inputs/universe/ntest57 > ./outputs/t945

./tot_info.exe  < $ROOT/inputs/universe/ntest6 > ./outputs/t946

./tot_info.exe  < $ROOT/inputs/universe/ntest7 > ./outputs/t947

./tot_info.exe  < $ROOT/inputs/universe/ntest9 > ./outputs/t948

./tot_info.exe  < $ROOT/inputs/universe/bnew1 > ./outputs/t949

./tot_info.exe  < $ROOT/inputs/universe/bnew10 > ./outputs/t950

./tot_info.exe  < $ROOT/inputs/universe/bnew11 > ./outputs/t951

./tot_info.exe  < $ROOT/inputs/universe/bnew12 > ./outputs/t952

./tot_info.exe  < $ROOT/inputs/universe/bnew13 > ./outputs/t953

./tot_info.exe  < $ROOT/inputs/universe/bnew14 > ./outputs/t954

./tot_info.exe  < $ROOT/inputs/universe/bnew15 > ./outputs/t955

./tot_info.exe  < $ROOT/inputs/universe/bnew16 > ./outputs/t956

./tot_info.exe  < $ROOT/inputs/universe/bnew17 > ./outputs/t957

./tot_info.exe  < $ROOT/inputs/universe/bnew18 > ./outputs/t958

./tot_info.exe  < $ROOT/inputs/universe/bnew19 > ./outputs/t959

./tot_info.exe  < $ROOT/inputs/universe/bnew2 > ./outputs/t960

./tot_info.exe  < $ROOT/inputs/universe/bnew20 > ./outputs/t961

./tot_info.exe  < $ROOT/inputs/universe/bnew21 > ./outputs/t962

./tot_info.exe  < $ROOT/inputs/universe/bnew22 > ./outputs/t963

./tot_info.exe  < $ROOT/inputs/universe/bnew23 > ./outputs/t964

./tot_info.exe  < $ROOT/inputs/universe/bnew24 > ./outputs/t965

./tot_info.exe  < $ROOT/inputs/universe/bnew25 > ./outputs/t966

./tot_info.exe  < $ROOT/inputs/universe/bnew26 > ./outputs/t967

./tot_info.exe  < $ROOT/inputs/universe/bnew27 > ./outputs/t968

./tot_info.exe  < $ROOT/inputs/universe/bnew3 > ./outputs/t969

./tot_info.exe  < $ROOT/inputs/universe/bnew4 > ./outputs/t970

./tot_info.exe  < $ROOT/inputs/universe/bnew5 > ./outputs/t971

./tot_info.exe  < $ROOT/inputs/universe/bnew6 > ./outputs/t972

./tot_info.exe  < $ROOT/inputs/universe/bnew7 > ./outputs/t973

./tot_info.exe  < $ROOT/inputs/universe/bnew8 > ./outputs/t974

./tot_info.exe  < $ROOT/inputs/universe/bnew9 > ./outputs/t975

./tot_info.exe  < $ROOT/inputs/universe/bnewt1 > ./outputs/t976

./tot_info.exe  < $ROOT/inputs/universe/bnewt10 > ./outputs/t977

./tot_info.exe  < $ROOT/inputs/universe/bnewt11 > ./outputs/t978

./tot_info.exe  < $ROOT/inputs/universe/bnewt12 > ./outputs/t979

./tot_info.exe  < $ROOT/inputs/universe/bnewt13 > ./outputs/t980

./tot_info.exe  < $ROOT/inputs/universe/bnewt14 > ./outputs/t981

./tot_info.exe  < $ROOT/inputs/universe/bnewt15 > ./outputs/t982

./tot_info.exe  < $ROOT/inputs/universe/bnewt16 > ./outputs/t983

./tot_info.exe  < $ROOT/inputs/universe/bnewt2 > ./outputs/t984

./tot_info.exe  < $ROOT/inputs/universe/bnewt3 > ./outputs/t985

./tot_info.exe  < $ROOT/inputs/universe/bnewt4 > ./outputs/t986

./tot_info.exe  < $ROOT/inputs/universe/bnewt5 > ./outputs/t987

./tot_info.exe  < $ROOT/inputs/universe/bnewt6 > ./outputs/t988

./tot_info.exe  < $ROOT/inputs/universe/bnewt7 > ./outputs/t989

./tot_info.exe  < $ROOT/inputs/universe/bnewt8 > ./outputs/t990

./tot_info.exe  < $ROOT/inputs/universe/bnewt9 > ./outputs/t991

./tot_info.exe  < $ROOT/inputs/universe/12new1 > ./outputs/t992

./tot_info.exe  < $ROOT/inputs/universe/12new10 > ./outputs/t993

./tot_info.exe  < $ROOT/inputs/universe/12new11 > ./outputs/t994

./tot_info.exe  < $ROOT/inputs/universe/12new12 > ./outputs/t995

./tot_info.exe  < $ROOT/inputs/universe/12new13 > ./outputs/t996

./tot_info.exe  < $ROOT/inputs/universe/12new14 > ./outputs/t997

./tot_info.exe  < $ROOT/inputs/universe/12new15 > ./outputs/t998

./tot_info.exe  < $ROOT/inputs/universe/12new16 > ./outputs/t999

./tot_info.exe  < $ROOT/inputs/universe/12new17 > ./outputs/t1000

./tot_info.exe  < $ROOT/inputs/universe/12new18 > ./outputs/t1001

./tot_info.exe  < $ROOT/inputs/universe/12new19 > ./outputs/t1002

./tot_info.exe  < $ROOT/inputs/universe/12new2 > ./outputs/t1003

./tot_info.exe  < $ROOT/inputs/universe/12new20 > ./outputs/t1004

./tot_info.exe  < $ROOT/inputs/universe/12new21 > ./outputs/t1005

./tot_info.exe  < $ROOT/inputs/universe/12new22 > ./outputs/t1006

./tot_info.exe  < $ROOT/inputs/universe/12new23 > ./outputs/t1007

./tot_info.exe  < $ROOT/inputs/universe/12new24 > ./outputs/t1008

./tot_info.exe  < $ROOT/inputs/universe/12new25 > ./outputs/t1009

./tot_info.exe  < $ROOT/inputs/universe/12new26 > ./outputs/t1010

./tot_info.exe  < $ROOT/inputs/universe/12new27 > ./outputs/t1011

./tot_info.exe  < $ROOT/inputs/universe/12new28 > ./outputs/t1012

./tot_info.exe  < $ROOT/inputs/universe/12new29 > ./outputs/t1013

./tot_info.exe  < $ROOT/inputs/universe/12new3 > ./outputs/t1014

./tot_info.exe  < $ROOT/inputs/universe/12new30 > ./outputs/t1015

./tot_info.exe  < $ROOT/inputs/universe/12new31 > ./outputs/t1016

./tot_info.exe  < $ROOT/inputs/universe/12new32 > ./outputs/t1017

./tot_info.exe  < $ROOT/inputs/universe/12new33 > ./outputs/t1018

./tot_info.exe  < $ROOT/inputs/universe/12new34 > ./outputs/t1019

./tot_info.exe  < $ROOT/inputs/universe/12new35 > ./outputs/t1020

./tot_info.exe  < $ROOT/inputs/universe/12new36 > ./outputs/t1021

./tot_info.exe  < $ROOT/inputs/universe/12new37 > ./outputs/t1022

./tot_info.exe  < $ROOT/inputs/universe/12new38 > ./outputs/t1023

./tot_info.exe  < $ROOT/inputs/universe/12new39 > ./outputs/t1024

./tot_info.exe  < $ROOT/inputs/universe/12new4 > ./outputs/t1025

./tot_info.exe  < $ROOT/inputs/universe/12new40 > ./outputs/t1026

./tot_info.exe  < $ROOT/inputs/universe/12new5 > ./outputs/t1027

./tot_info.exe  < $ROOT/inputs/universe/12new6 > ./outputs/t1028

./tot_info.exe  < $ROOT/inputs/universe/12new7 > ./outputs/t1029

./tot_info.exe  < $ROOT/inputs/universe/12new8 > ./outputs/t1030

./tot_info.exe  < $ROOT/inputs/universe/12new9 > ./outputs/t1031

./tot_info.exe  < $ROOT/inputs/universe/12new40 > ./outputs/t1032

./tot_info.exe  < $ROOT/inputs/universe/12new41 > ./outputs/t1033

./tot_info.exe  < $ROOT/inputs/universe/12new42 > ./outputs/t1034

./tot_info.exe  < $ROOT/inputs/universe/12new43 > ./outputs/t1035

./tot_info.exe  < $ROOT/inputs/universe/12new44 > ./outputs/t1036

./tot_info.exe  < $ROOT/inputs/universe/12new45 > ./outputs/t1037

./tot_info.exe  < $ROOT/inputs/universe/12new46 > ./outputs/t1038

./tot_info.exe  < $ROOT/inputs/universe/12new47 > ./outputs/t1039

./tot_info.exe  < $ROOT/inputs/universe/12new48 > ./outputs/t1040

./tot_info.exe  < $ROOT/inputs/universe/12new49 > ./outputs/t1041

./tot_info.exe  < $ROOT/inputs/universe/12new50 > ./outputs/t1042

./tot_info.exe  < $ROOT/inputs/universe/12new51 > ./outputs/t1043

./tot_info.exe  < $ROOT/inputs/universe/12new52 > ./outputs/t1044

./tot_info.exe  < $ROOT/inputs/universe/12new53 > ./outputs/t1045

./tot_info.exe  < $ROOT/inputs/universe/12new54 > ./outputs/t1046

./tot_info.exe  < $ROOT/inputs/universe/12new55 > ./outputs/t1047

./tot_info.exe  < $ROOT/inputs/universe/12new56 > ./outputs/t1048

./tot_info.exe  < $ROOT/inputs/universe/12new57 > ./outputs/t1049

./tot_info.exe  < $ROOT/inputs/universe/12new58 > ./outputs/t1050

./tot_info.exe  < $ROOT/inputs/universe/12new59 > ./outputs/t1051

./tot_info.exe  < $ROOT/inputs/universe/12new60 > ./outputs/t1052

gcov tot_info.c
gcovr -r . --html-details -o coverage_and_instrument_report.html

rm chisq.h gamma.h std.h tot_info.c