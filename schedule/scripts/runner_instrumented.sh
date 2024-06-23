ROOT=$1
# Change to the current directory
cd $PWD

# Remove the "result_instrumented" folder if it exists
if [ -d result_instrumented ]; then
    rm -rf result_instrumented
fi

# Create a new "result_instrumented" folder
mkdir result_instrumented
cp schedule.c result_instrumented/
cd result_instrumented
# Build the code without coverage and instrumentation
gcc -fprofile-arcs -ftest-coverage -g -o schedule.exe schedule.c -w
mkdir outputs

./schedule.exe 7 1 9  < $ROOT/inputs/input/inp.58 > ./outputs/t1

./schedule.exe 2 3 5  < $ROOT/inputs/input/inp.46 > ./outputs/t2

./schedule.exe 4 8 8  < $ROOT/inputs/input/inp.18 > ./outputs/t3

./schedule.exe 10 0 2  < $ROOT/inputs/input/inp.51 > ./outputs/t4

./schedule.exe 8 3 2  < $ROOT/inputs/input/inp.99 > ./outputs/t5

./schedule.exe 7 10 5  < $ROOT/inputs/input/inp.84 > ./outputs/t6

./schedule.exe 4 0 6  < $ROOT/inputs/input/inp.20 > ./outputs/t7

./schedule.exe 3 7 4  < $ROOT/inputs/input/inp.28 > ./outputs/t8

./schedule.exe 9 7 5  < $ROOT/inputs/input/inp.9 > ./outputs/t9

./schedule.exe 9 10 6  < $ROOT/inputs/input/inp.98 > ./outputs/t10

./schedule.exe 7 9 8  < $ROOT/inputs/input/inp.14 > ./outputs/t11

./schedule.exe 8 9 0  < $ROOT/inputs/input/inp.34 > ./outputs/t12

./schedule.exe 8 5 0  < $ROOT/inputs/input/inp.42 > ./outputs/t13

./schedule.exe 9 8 5  < $ROOT/inputs/input/inp.88 > ./outputs/t14

./schedule.exe 7 0 6  < $ROOT/inputs/input/inp.95 > ./outputs/t15

./schedule.exe 8 3 9  < $ROOT/inputs/input/inp.56 > ./outputs/t16

./schedule.exe 7 4 2  < $ROOT/inputs/input/inp.12 > ./outputs/t17

./schedule.exe 5 8 7  < $ROOT/inputs/input/inp.6 > ./outputs/t18

./schedule.exe 0 4 1  < $ROOT/inputs/input/inp.75 > ./outputs/t19

./schedule.exe 0 10 6  < $ROOT/inputs/input/inp.59 > ./outputs/t20

./schedule.exe 9 0 9  < $ROOT/inputs/input/inp.20 > ./outputs/t21

./schedule.exe 9 9 2  < $ROOT/inputs/input/inp.3 > ./outputs/t22

./schedule.exe 6 1 0  < $ROOT/inputs/input/inp.27 > ./outputs/t23

./schedule.exe 5 10 8  < $ROOT/inputs/input/inp.66 > ./outputs/t24

./schedule.exe 6 9 0  < $ROOT/inputs/input/inp.88 > ./outputs/t25

./schedule.exe 3 7 3  < $ROOT/inputs/input/inp.32 > ./outputs/t26

./schedule.exe 1 5 5  < $ROOT/inputs/input/inp.35 > ./outputs/t27

./schedule.exe 1 2 7  < $ROOT/inputs/input/inp.30 > ./outputs/t28

./schedule.exe 2 7 6  < $ROOT/inputs/input/inp.19 > ./outputs/t29

./schedule.exe 4 6 3  < $ROOT/inputs/input/inp.68 > ./outputs/t30

./schedule.exe 4 6 2  < $ROOT/inputs/input/inp.97 > ./outputs/t31

./schedule.exe 8 4 2  < $ROOT/inputs/input/inp.58 > ./outputs/t32

./schedule.exe 10 0 0  < $ROOT/inputs/input/inp.21 > ./outputs/t33

./schedule.exe 6 3 3  < $ROOT/inputs/input/inp.6 > ./outputs/t34

./schedule.exe 8 9 10  < $ROOT/inputs/input/inp.76 > ./outputs/t35

./schedule.exe 10 5 9  < $ROOT/inputs/input/inp.6 > ./outputs/t36

./schedule.exe 8 9 0  < $ROOT/inputs/input/inp.37 > ./outputs/t37

./schedule.exe 10 10 3  < $ROOT/inputs/input/inp.15 > ./outputs/t38

./schedule.exe 1 7 2  < $ROOT/inputs/input/inp.60 > ./outputs/t39

./schedule.exe 2 9 5  < $ROOT/inputs/input/inp.15 > ./outputs/t40

./schedule.exe 9 4 2  < $ROOT/inputs/input/inp.15 > ./outputs/t41

./schedule.exe 9 0 0  < $ROOT/inputs/input/inp.81 > ./outputs/t42

./schedule.exe 0 6 4  < $ROOT/inputs/input/inp.19 > ./outputs/t43

./schedule.exe 10 4 5  < $ROOT/inputs/input/inp.53 > ./outputs/t44

./schedule.exe 7 6 5  < $ROOT/inputs/input/inp.89 > ./outputs/t45

./schedule.exe 0 2 2  < $ROOT/inputs/input/inp.97 > ./outputs/t46

./schedule.exe 10 8 8  < $ROOT/inputs/input/inp.52 > ./outputs/t47

./schedule.exe 0 5 1  < $ROOT/inputs/input/inp.22 > ./outputs/t48

./schedule.exe 4 1 6  < $ROOT/inputs/input/inp.23 > ./outputs/t49

./schedule.exe 7 10 4  < $ROOT/inputs/input/inp.10 > ./outputs/t50

./schedule.exe 8 1 0  < $ROOT/inputs/input/inp.37 > ./outputs/t51

./schedule.exe 1 10 6  < $ROOT/inputs/input/inp.1 > ./outputs/t52

./schedule.exe 2 8 0  < $ROOT/inputs/input/inp.55 > ./outputs/t53

./schedule.exe 0 5 1  < $ROOT/inputs/input/inp.91 > ./outputs/t54

./schedule.exe 0 7 4  < $ROOT/inputs/input/inp.44 > ./outputs/t55

./schedule.exe 6 2 3  < $ROOT/inputs/input/inp.2 > ./outputs/t56

./schedule.exe 6 3 8  < $ROOT/inputs/input/inp.78 > ./outputs/t57

./schedule.exe 6 10 8  < $ROOT/inputs/input/inp.28 > ./outputs/t58

./schedule.exe 3 3 2  < $ROOT/inputs/input/inp.27 > ./outputs/t59

./schedule.exe 6 1 4  < $ROOT/inputs/input/inp.60 > ./outputs/t60

./schedule.exe 0 6 8  < $ROOT/inputs/input/inp.90 > ./outputs/t61

./schedule.exe 5 2 8  < $ROOT/inputs/input/inp.81 > ./outputs/t62

./schedule.exe 3 4 5  < $ROOT/inputs/input/inp.46 > ./outputs/t63

./schedule.exe 10 4 0  < $ROOT/inputs/input/inp.86 > ./outputs/t64

./schedule.exe 6 1 2  < $ROOT/inputs/input/inp.38 > ./outputs/t65

./schedule.exe 8 2 9  < $ROOT/inputs/input/inp.39 > ./outputs/t66

./schedule.exe 6 7 7  < $ROOT/inputs/input/inp.3 > ./outputs/t67

./schedule.exe 2 5 5  < $ROOT/inputs/input/inp.6 > ./outputs/t68

./schedule.exe 7 5 7  < $ROOT/inputs/input/inp.66 > ./outputs/t69

./schedule.exe 3 6 1  < $ROOT/inputs/input/inp.61 > ./outputs/t70

./schedule.exe 4 9 6  < $ROOT/inputs/input/inp.30 > ./outputs/t71

./schedule.exe 6 0 1  < $ROOT/inputs/input/inp.26 > ./outputs/t72

./schedule.exe 3 5 6  < $ROOT/inputs/input/inp.84 > ./outputs/t73

./schedule.exe 4 8 0  < $ROOT/inputs/input/inp.51 > ./outputs/t74

./schedule.exe 2 3 7  < $ROOT/inputs/input/inp.30 > ./outputs/t75

./schedule.exe 1 4 4  < $ROOT/inputs/input/inp.68 > ./outputs/t76

./schedule.exe 0 4 4  < $ROOT/inputs/input/inp.56 > ./outputs/t77

./schedule.exe 1 3 8  < $ROOT/inputs/input/inp.43 > ./outputs/t78

./schedule.exe 4 6 6  < $ROOT/inputs/input/inp.39 > ./outputs/t79

./schedule.exe 7 6 8  < $ROOT/inputs/input/inp.26 > ./outputs/t80

./schedule.exe 1 3 10  < $ROOT/inputs/input/inp.27 > ./outputs/t81

./schedule.exe 7 3 8  < $ROOT/inputs/input/inp.86 > ./outputs/t82

./schedule.exe 3 3 8  < $ROOT/inputs/input/inp.3 > ./outputs/t83

./schedule.exe 1 10 1  < $ROOT/inputs/input/inp.61 > ./outputs/t84

./schedule.exe 8 5 3  < $ROOT/inputs/input/inp.91 > ./outputs/t85

./schedule.exe 3 5 3  < $ROOT/inputs/input/inp.43 > ./outputs/t86

./schedule.exe 7 6 0  < $ROOT/inputs/input/inp.5 > ./outputs/t87

./schedule.exe 4 6 7  < $ROOT/inputs/input/inp.28 > ./outputs/t88

./schedule.exe 9 0 3  < $ROOT/inputs/input/inp.73 > ./outputs/t89

./schedule.exe 8 7 6  < $ROOT/inputs/input/inp.54 > ./outputs/t90

./schedule.exe 6 10 9  < $ROOT/inputs/input/inp.74 > ./outputs/t91

./schedule.exe 5 4 8  < $ROOT/inputs/input/inp.99 > ./outputs/t92

./schedule.exe 3 0 2  < $ROOT/inputs/input/inp.38 > ./outputs/t93

./schedule.exe 2 0 1  < $ROOT/inputs/input/inp.3 > ./outputs/t94

./schedule.exe 6 4 6  < $ROOT/inputs/input/inp.58 > ./outputs/t95

./schedule.exe 8 9 6  < $ROOT/inputs/input/inp.32 > ./outputs/t96

./schedule.exe 7 1 8  < $ROOT/inputs/input/inp.91 > ./outputs/t97

./schedule.exe 9 3 7  < $ROOT/inputs/input/inp.40 > ./outputs/t98

./schedule.exe 3 9 4  < $ROOT/inputs/input/inp.41 > ./outputs/t99

./schedule.exe 6 10 0  < $ROOT/inputs/input/inp.56 > ./outputs/t100

./schedule.exe 3 0 7  < $ROOT/inputs/input/inp.71 > ./outputs/t101

./schedule.exe 2 9 4  < $ROOT/inputs/input/inp.20 > ./outputs/t102

./schedule.exe 6 1 7  < $ROOT/inputs/input/inp.91 > ./outputs/t103

./schedule.exe 2 9 9  < $ROOT/inputs/input/inp.25 > ./outputs/t104

./schedule.exe 0 10 3  < $ROOT/inputs/input/inp.6 > ./outputs/t105

./schedule.exe 3 10 10  < $ROOT/inputs/input/inp.63 > ./outputs/t106

./schedule.exe 10 1 7  < $ROOT/inputs/input/inp.74 > ./outputs/t107

./schedule.exe 7 1 2  < $ROOT/inputs/input/inp.16 > ./outputs/t108

./schedule.exe 1 4 5  < $ROOT/inputs/input/inp.24 > ./outputs/t109

./schedule.exe 0 0 1  < $ROOT/inputs/input/inp.71 > ./outputs/t110

./schedule.exe 8 5 1  < $ROOT/inputs/input/inp.92 > ./outputs/t111

./schedule.exe 10 5 8  < $ROOT/inputs/input/inp.82 > ./outputs/t112

./schedule.exe 4 9 4  < $ROOT/inputs/input/inp.44 > ./outputs/t113

./schedule.exe 8 7 4  < $ROOT/inputs/input/inp.20 > ./outputs/t114

./schedule.exe 0 0 8  < $ROOT/inputs/input/inp.29 > ./outputs/t115

./schedule.exe 5 7 9  < $ROOT/inputs/input/inp.39 > ./outputs/t116

./schedule.exe 0 8 2  < $ROOT/inputs/input/inp.47 > ./outputs/t117

./schedule.exe 2 3 3  < $ROOT/inputs/input/inp.3 > ./outputs/t118

./schedule.exe 2 3 7  < $ROOT/inputs/input/inp.12 > ./outputs/t119

./schedule.exe 8 0 0  < $ROOT/inputs/input/inp.32 > ./outputs/t120

./schedule.exe 7 3 7  < $ROOT/inputs/input/inp.12 > ./outputs/t121

./schedule.exe 5 5 8  < $ROOT/inputs/input/inp.74 > ./outputs/t122

./schedule.exe 1 7 2  < $ROOT/inputs/input/inp.59 > ./outputs/t123

./schedule.exe 3 1 10  < $ROOT/inputs/input/inp.71 > ./outputs/t124

./schedule.exe 7 5 2  < $ROOT/inputs/input/inp.98 > ./outputs/t125

./schedule.exe 6 9 0  < $ROOT/inputs/input/inp.74 > ./outputs/t126

./schedule.exe 5 1 1  < $ROOT/inputs/input/inp.60 > ./outputs/t127

./schedule.exe 10 10 6  < $ROOT/inputs/input/inp.79 > ./outputs/t128

./schedule.exe 2 2 3  < $ROOT/inputs/input/inp.35 > ./outputs/t129

./schedule.exe 6 2 6  < $ROOT/inputs/input/inp.20 > ./outputs/t130

./schedule.exe 4 8 2  < $ROOT/inputs/input/inp.91 > ./outputs/t131

./schedule.exe 8 4 9  < $ROOT/inputs/input/inp.54 > ./outputs/t132

./schedule.exe 1 1 4  < $ROOT/inputs/input/inp.30 > ./outputs/t133

./schedule.exe 5 8 10  < $ROOT/inputs/input/inp.76 > ./outputs/t134

./schedule.exe 2 1 6  < $ROOT/inputs/input/inp.95 > ./outputs/t135

./schedule.exe 4 9 10  < $ROOT/inputs/input/inp.33 > ./outputs/t136

./schedule.exe 7 9 0  < $ROOT/inputs/input/inp.25 > ./outputs/t137

./schedule.exe 2 6 0  < $ROOT/inputs/input/inp.45 > ./outputs/t138

./schedule.exe 2 3 7  < $ROOT/inputs/input/inp.99 > ./outputs/t139

./schedule.exe 2 2 10  < $ROOT/inputs/input/inp.45 > ./outputs/t140

./schedule.exe 5 0 9  < $ROOT/inputs/input/inp.11 > ./outputs/t141

./schedule.exe 4 8 1  < $ROOT/inputs/input/inp.53 > ./outputs/t142

./schedule.exe 5 3 2  < $ROOT/inputs/input/inp.38 > ./outputs/t143

./schedule.exe 10 3 3  < $ROOT/inputs/input/inp.78 > ./outputs/t144

./schedule.exe 1 6 10  < $ROOT/inputs/input/inp.57 > ./outputs/t145

./schedule.exe 0 4 10  < $ROOT/inputs/input/inp.82 > ./outputs/t146

./schedule.exe 4 10 2  < $ROOT/inputs/input/inp.91 > ./outputs/t147

./schedule.exe 1 2 10  < $ROOT/inputs/input/inp.40 > ./outputs/t148

./schedule.exe 6 8 9  < $ROOT/inputs/input/inp.100 > ./outputs/t149

./schedule.exe 8 3 8  < $ROOT/inputs/input/inp.92 > ./outputs/t150

./schedule.exe 1 10 7  < $ROOT/inputs/input/inp.18 > ./outputs/t151

./schedule.exe 7 8 5  < $ROOT/inputs/input/inp.9 > ./outputs/t152

./schedule.exe 7 6 5  < $ROOT/inputs/input/inp.24 > ./outputs/t153

./schedule.exe 4 3 0  < $ROOT/inputs/input/inp.2 > ./outputs/t154

./schedule.exe 10 5 6  < $ROOT/inputs/input/inp.2 > ./outputs/t155

./schedule.exe 9 8 9  < $ROOT/inputs/input/inp.26 > ./outputs/t156

./schedule.exe 4 2 4  < $ROOT/inputs/input/inp.22 > ./outputs/t157

./schedule.exe 8 7 4  < $ROOT/inputs/input/inp.94 > ./outputs/t158

./schedule.exe 8 7 4  < $ROOT/inputs/input/inp.40 > ./outputs/t159

./schedule.exe 5 6 2  < $ROOT/inputs/input/inp.92 > ./outputs/t160

./schedule.exe 9 8 3  < $ROOT/inputs/input/inp.0 > ./outputs/t161

./schedule.exe 7 6 2  < $ROOT/inputs/input/inp.86 > ./outputs/t162

./schedule.exe 1 1 1  < $ROOT/inputs/input/inp.78 > ./outputs/t163

./schedule.exe 3 7 3  < $ROOT/inputs/input/inp.7 > ./outputs/t164

./schedule.exe 3 8 8  < $ROOT/inputs/input/inp.61 > ./outputs/t165

./schedule.exe 10 2 4  < $ROOT/inputs/input/inp.84 > ./outputs/t166

./schedule.exe 2 2 2  < $ROOT/inputs/input/inp.51 > ./outputs/t167

./schedule.exe 0 4 2  < $ROOT/inputs/input/inp.2 > ./outputs/t168

./schedule.exe 5 2 0  < $ROOT/inputs/input/inp.76 > ./outputs/t169

./schedule.exe 7 10 1  < $ROOT/inputs/input/inp.21 > ./outputs/t170

./schedule.exe 7 0 0  < $ROOT/inputs/input/inp.39 > ./outputs/t171

./schedule.exe 10 4 3  < $ROOT/inputs/input/inp.35 > ./outputs/t172

./schedule.exe 1 8 1  < $ROOT/inputs/input/inp.5 > ./outputs/t173

./schedule.exe 2 1 10  < $ROOT/inputs/input/inp.20 > ./outputs/t174

./schedule.exe 10 1 6  < $ROOT/inputs/input/inp.8 > ./outputs/t175

./schedule.exe 10 5 7  < $ROOT/inputs/input/inp.72 > ./outputs/t176

./schedule.exe 9 10 5  < $ROOT/inputs/input/inp.96 > ./outputs/t177

./schedule.exe 1 1 8  < $ROOT/inputs/input/inp.14 > ./outputs/t178

./schedule.exe 3 9 5  < $ROOT/inputs/input/inp.2 > ./outputs/t179

./schedule.exe 6 2 10  < $ROOT/inputs/input/inp.71 > ./outputs/t180

./schedule.exe 7 8 4  < $ROOT/inputs/input/inp.30 > ./outputs/t181

./schedule.exe 9 5 7  < $ROOT/inputs/input/inp.96 > ./outputs/t182

./schedule.exe 10 6 5  < $ROOT/inputs/input/inp.35 > ./outputs/t183

./schedule.exe 8 2 8  < $ROOT/inputs/input/inp.50 > ./outputs/t184

./schedule.exe 10 7 4  < $ROOT/inputs/input/inp.72 > ./outputs/t185

./schedule.exe 0 2 5  < $ROOT/inputs/input/inp.16 > ./outputs/t186

./schedule.exe 0 0 7  < $ROOT/inputs/input/inp.60 > ./outputs/t187

./schedule.exe 7 8 9  < $ROOT/inputs/input/inp.64 > ./outputs/t188

./schedule.exe 1 3 8  < $ROOT/inputs/input/inp.65 > ./outputs/t189

./schedule.exe 2 0 8  < $ROOT/inputs/input/inp.86 > ./outputs/t190

./schedule.exe 1 5 3  < $ROOT/inputs/input/inp.33 > ./outputs/t191

./schedule.exe 2 2 0  < $ROOT/inputs/input/inp.85 > ./outputs/t192

./schedule.exe 4 6 10  < $ROOT/inputs/input/inp.86 > ./outputs/t193

./schedule.exe 5 0 2  < $ROOT/inputs/input/inp.83 > ./outputs/t194

./schedule.exe 5 7 6  < $ROOT/inputs/input/inp.75 > ./outputs/t195

./schedule.exe 4 2 2  < $ROOT/inputs/input/inp.77 > ./outputs/t196

./schedule.exe 4 3 1  < $ROOT/inputs/input/inp.91 > ./outputs/t197

./schedule.exe 10 3 8  < $ROOT/inputs/input/inp.7 > ./outputs/t198

./schedule.exe 4 0 6  < $ROOT/inputs/input/inp.99 > ./outputs/t199

./schedule.exe 2 6 2  < $ROOT/inputs/input/inp.92 > ./outputs/t200

./schedule.exe 2 8 10  < $ROOT/inputs/input/inp.97 > ./outputs/t201

./schedule.exe 4 7 6  < $ROOT/inputs/input/inp.30 > ./outputs/t202

./schedule.exe 6 6 3  < $ROOT/inputs/input/inp.55 > ./outputs/t203

./schedule.exe 9 0 5  < $ROOT/inputs/input/inp.51 > ./outputs/t204

./schedule.exe 2 10 3  < $ROOT/inputs/input/inp.5 > ./outputs/t205

./schedule.exe 7 2 2  < $ROOT/inputs/input/inp.17 > ./outputs/t206

./schedule.exe 9 8 10  < $ROOT/inputs/input/inp.35 > ./outputs/t207

./schedule.exe 7 8 10  < $ROOT/inputs/input/inp.30 > ./outputs/t208

./schedule.exe 5 7 9  < $ROOT/inputs/input/inp.76 > ./outputs/t209

./schedule.exe 10 10 10  < $ROOT/inputs/input/inp.97 > ./outputs/t210

./schedule.exe 5 0 10  < $ROOT/inputs/input/inp.52 > ./outputs/t211

./schedule.exe 1 2 5  < $ROOT/inputs/input/inp.45 > ./outputs/t212

./schedule.exe 3 2 0  < $ROOT/inputs/input/inp.22 > ./outputs/t213

./schedule.exe 9 2 6  < $ROOT/inputs/input/inp.23 > ./outputs/t214

./schedule.exe 3 7 4  < $ROOT/inputs/input/inp.2 > ./outputs/t215

./schedule.exe 5 2 3  < $ROOT/inputs/input/inp.37 > ./outputs/t216

./schedule.exe 2 9 10  < $ROOT/inputs/input/inp.34 > ./outputs/t217

./schedule.exe 4 2 10  < $ROOT/inputs/input/inp.97 > ./outputs/t218

./schedule.exe 1 5 4  < $ROOT/inputs/input/inp.61 > ./outputs/t219

./schedule.exe 2 9 9  < $ROOT/inputs/input/inp.65 > ./outputs/t220

./schedule.exe 6 10 5  < $ROOT/inputs/input/inp.13 > ./outputs/t221

./schedule.exe 1 3 3  < $ROOT/inputs/input/inp.15 > ./outputs/t222

./schedule.exe 8 7 6  < $ROOT/inputs/input/inp.59 > ./outputs/t223

./schedule.exe 2 5 6  < $ROOT/inputs/input/inp.12 > ./outputs/t224

./schedule.exe 10 10 4  < $ROOT/inputs/input/inp.18 > ./outputs/t225

./schedule.exe 9 1 3  < $ROOT/inputs/input/inp.1 > ./outputs/t226

./schedule.exe 3 7 6  < $ROOT/inputs/input/inp.47 > ./outputs/t227

./schedule.exe 2 4 10  < $ROOT/inputs/input/inp.18 > ./outputs/t228

./schedule.exe 2 3 9  < $ROOT/inputs/input/inp.4 > ./outputs/t229

./schedule.exe 10 10 3  < $ROOT/inputs/input/inp.61 > ./outputs/t230

./schedule.exe 9 0 8  < $ROOT/inputs/input/inp.87 > ./outputs/t231

./schedule.exe 9 10 7  < $ROOT/inputs/input/inp.66 > ./outputs/t232

./schedule.exe 6 5 0  < $ROOT/inputs/input/inp.53 > ./outputs/t233

./schedule.exe 8 2 7  < $ROOT/inputs/input/inp.53 > ./outputs/t234

./schedule.exe 8 0 6  < $ROOT/inputs/input/inp.4 > ./outputs/t235

./schedule.exe 2 1 4  < $ROOT/inputs/input/inp.81 > ./outputs/t236

./schedule.exe 9 6 10  < $ROOT/inputs/input/inp.99 > ./outputs/t237

./schedule.exe 8 8 9  < $ROOT/inputs/input/inp.89 > ./outputs/t238

./schedule.exe 8 0 7  < $ROOT/inputs/input/inp.28 > ./outputs/t239

./schedule.exe 4 10 7  < $ROOT/inputs/input/inp.66 > ./outputs/t240

./schedule.exe 7 0 5  < $ROOT/inputs/input/inp.70 > ./outputs/t241

./schedule.exe 0 1 10  < $ROOT/inputs/input/inp.83 > ./outputs/t242

./schedule.exe 0 0 9  < $ROOT/inputs/input/inp.63 > ./outputs/t243

./schedule.exe 2 3 6  < $ROOT/inputs/input/inp.83 > ./outputs/t244

./schedule.exe 4 7 0  < $ROOT/inputs/input/inp.66 > ./outputs/t245

./schedule.exe 1 7 7  < $ROOT/inputs/input/inp.40 > ./outputs/t246

./schedule.exe 7 4 6  < $ROOT/inputs/input/inp.51 > ./outputs/t247

./schedule.exe 8 1 2  < $ROOT/inputs/input/inp.42 > ./outputs/t248

./schedule.exe 0 3 1  < $ROOT/inputs/input/inp.66 > ./outputs/t249

./schedule.exe 10 6 3  < $ROOT/inputs/input/inp.42 > ./outputs/t250

./schedule.exe 0 2 3  < $ROOT/inputs/input/inp.39 > ./outputs/t251

./schedule.exe 9 7 3  < $ROOT/inputs/input/inp.56 > ./outputs/t252

./schedule.exe 3 0 5  < $ROOT/inputs/input/inp.1 > ./outputs/t253

./schedule.exe 5 4 4  < $ROOT/inputs/input/inp.44 > ./outputs/t254

./schedule.exe 10 5 6  < $ROOT/inputs/input/inp.27 > ./outputs/t255

./schedule.exe 6 6 0  < $ROOT/inputs/input/inp.59 > ./outputs/t256

./schedule.exe 2 2 5  < $ROOT/inputs/input/inp.25 > ./outputs/t257

./schedule.exe 4 6 6  < $ROOT/inputs/input/inp.52 > ./outputs/t258

./schedule.exe 8 5 8  < $ROOT/inputs/input/inp.19 > ./outputs/t259

./schedule.exe 1 9 4  < $ROOT/inputs/input/inp.16 > ./outputs/t260

./schedule.exe 1 1 6  < $ROOT/inputs/input/inp.84 > ./outputs/t261

./schedule.exe 6 9 6  < $ROOT/inputs/input/inp.2 > ./outputs/t262

./schedule.exe 2 6 10  < $ROOT/inputs/input/inp.20 > ./outputs/t263

./schedule.exe 2 1 2  < $ROOT/inputs/input/inp.58 > ./outputs/t264

./schedule.exe 4 2 0  < $ROOT/inputs/input/inp.39 > ./outputs/t265

./schedule.exe 2 8 1  < $ROOT/inputs/input/inp.10 > ./outputs/t266

./schedule.exe 8 10 0  < $ROOT/inputs/input/inp.73 > ./outputs/t267

./schedule.exe 7 8 5  < $ROOT/inputs/input/inp.34 > ./outputs/t268

./schedule.exe 1 1 6  < $ROOT/inputs/input/inp.8 > ./outputs/t269

./schedule.exe 9 5 3  < $ROOT/inputs/input/inp.24 > ./outputs/t270

./schedule.exe 8 0 3  < $ROOT/inputs/input/inp.80 > ./outputs/t271

./schedule.exe 10 2 6  < $ROOT/inputs/input/inp.33 > ./outputs/t272

./schedule.exe 4 10 3  < $ROOT/inputs/input/inp.98 > ./outputs/t273

./schedule.exe 6 7 10  < $ROOT/inputs/input/inp.20 > ./outputs/t274

./schedule.exe 8 10 4  < $ROOT/inputs/input/inp.17 > ./outputs/t275

./schedule.exe 8 2 9  < $ROOT/inputs/input/inp.70 > ./outputs/t276

./schedule.exe 0 2 1  < $ROOT/inputs/input/inp.55 > ./outputs/t277

./schedule.exe 8 7 8  < $ROOT/inputs/input/inp.17 > ./outputs/t278

./schedule.exe 6 10 7  < $ROOT/inputs/input/inp.82 > ./outputs/t279

./schedule.exe 2 2 2  < $ROOT/inputs/input/inp.60 > ./outputs/t280

./schedule.exe 9 7 9  < $ROOT/inputs/input/inp.38 > ./outputs/t281

./schedule.exe 5 3 10  < $ROOT/inputs/input/inp.96 > ./outputs/t282

./schedule.exe 9 6 6  < $ROOT/inputs/input/inp.75 > ./outputs/t283

./schedule.exe 3 6 3  < $ROOT/inputs/input/inp.20 > ./outputs/t284

./schedule.exe 0 8 8  < $ROOT/inputs/input/inp.34 > ./outputs/t285

./schedule.exe 7 5 5  < $ROOT/inputs/input/inp.78 > ./outputs/t286

./schedule.exe 6 2 3  < $ROOT/inputs/input/inp.66 > ./outputs/t287

./schedule.exe 10 6 6  < $ROOT/inputs/input/inp.47 > ./outputs/t288

./schedule.exe 9 3 6  < $ROOT/inputs/input/inp.37 > ./outputs/t289

./schedule.exe 9 3 9  < $ROOT/inputs/input/inp.100 > ./outputs/t290

./schedule.exe 3 2 7  < $ROOT/inputs/input/inp.48 > ./outputs/t291

./schedule.exe 8 7 4  < $ROOT/inputs/input/inp.21 > ./outputs/t292

./schedule.exe 7 8 3  < $ROOT/inputs/input/inp.97 > ./outputs/t293

./schedule.exe 8 7 10  < $ROOT/inputs/input/inp.63 > ./outputs/t294

./schedule.exe 9 9 7  < $ROOT/inputs/input/inp.64 > ./outputs/t295

./schedule.exe 7 3 8  < $ROOT/inputs/input/inp.12 > ./outputs/t296

./schedule.exe 0 0 6  < $ROOT/inputs/input/inp.81 > ./outputs/t297

./schedule.exe 3 9 4  < $ROOT/inputs/input/inp.70 > ./outputs/t298

./schedule.exe 4 2 3  < $ROOT/inputs/input/inp.48 > ./outputs/t299

./schedule.exe 6 7 9  < $ROOT/inputs/input/inp.48 > ./outputs/t300

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.1 > ./outputs/t301

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.2 > ./outputs/t302

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.3 > ./outputs/t303

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.4 > ./outputs/t304

./schedule.exe  2 1 4  < $ROOT/inputs/input/tc.5 > ./outputs/t305

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.6 > ./outputs/t306

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.7 > ./outputs/t307

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.8 > ./outputs/t308

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.9 > ./outputs/t309

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.10 > ./outputs/t310

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.11 > ./outputs/t311

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.12 > ./outputs/t312

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.13 > ./outputs/t313

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.14 > ./outputs/t314

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.15 > ./outputs/t315

./schedule.exe  4 2 3  < $ROOT/inputs/input/tc.16 > ./outputs/t316

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.17 > ./outputs/t317

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.18 > ./outputs/t318

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.19 > ./outputs/t319

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.20 > ./outputs/t320

./schedule.exe  2 0 0  < $ROOT/inputs/input/tc.21 > ./outputs/t321

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.22 > ./outputs/t322

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.23 > ./outputs/t323

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.24 > ./outputs/t324

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.25 > ./outputs/t325

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.26 > ./outputs/t326

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.27 > ./outputs/t327

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.28 > ./outputs/t328

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.29 > ./outputs/t329

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.30 > ./outputs/t330

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.31 > ./outputs/t331

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.32 > ./outputs/t332

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.33 > ./outputs/t333

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.34 > ./outputs/t334

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.35 > ./outputs/t335

./schedule.exe  3 4 3  < $ROOT/inputs/input/tc.36 > ./outputs/t336

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.37 > ./outputs/t337

./schedule.exe  4 2 4  < $ROOT/inputs/input/tc.38 > ./outputs/t338

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.39 > ./outputs/t339

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.40 > ./outputs/t340

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.41 > ./outputs/t341

./schedule.exe  4 0 0  < $ROOT/inputs/input/tc.42 > ./outputs/t342

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.43 > ./outputs/t343

./schedule.exe  3 3 3  < $ROOT/inputs/input/tc.44 > ./outputs/t344

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.45 > ./outputs/t345

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.46 > ./outputs/t346

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.47 > ./outputs/t347

./schedule.exe  4 4 1  < $ROOT/inputs/input/tc.48 > ./outputs/t348

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.49 > ./outputs/t349

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.50 > ./outputs/t350

./schedule.exe  1 1 3  < $ROOT/inputs/input/tc.51 > ./outputs/t351

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.52 > ./outputs/t352

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.53 > ./outputs/t353

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.54 > ./outputs/t354

./schedule.exe  4 1 3  < $ROOT/inputs/input/tc.55 > ./outputs/t355

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.56 > ./outputs/t356

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.57 > ./outputs/t357

./schedule.exe  1 3 4  < $ROOT/inputs/input/tc.58 > ./outputs/t358

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.59 > ./outputs/t359

./schedule.exe  1 3 2  < $ROOT/inputs/input/tc.60 > ./outputs/t360

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.61 > ./outputs/t361

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.62 > ./outputs/t362

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.63 > ./outputs/t363

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.64 > ./outputs/t364

./schedule.exe  3 4 1  < $ROOT/inputs/input/tc.65 > ./outputs/t365

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.66 > ./outputs/t366

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.67 > ./outputs/t367

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.68 > ./outputs/t368

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.69 > ./outputs/t369

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.70 > ./outputs/t370

./schedule.exe  0 0 4  < $ROOT/inputs/input/tc.71 > ./outputs/t371

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.72 > ./outputs/t372

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.73 > ./outputs/t373

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.74 > ./outputs/t374

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.75 > ./outputs/t375

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.76 > ./outputs/t376

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.77 > ./outputs/t377

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.78 > ./outputs/t378

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.79 > ./outputs/t379

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.80 > ./outputs/t380

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.81 > ./outputs/t381

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.82 > ./outputs/t382

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.83 > ./outputs/t383

./schedule.exe  2 1 3  < $ROOT/inputs/input/tc.84 > ./outputs/t384

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.85 > ./outputs/t385

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.86 > ./outputs/t386

./schedule.exe  0 0 4  < $ROOT/inputs/input/tc.87 > ./outputs/t387

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.88 > ./outputs/t388

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.89 > ./outputs/t389

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.90 > ./outputs/t390

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.91 > ./outputs/t391

./schedule.exe  2 2 4  < $ROOT/inputs/input/tc.92 > ./outputs/t392

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.93 > ./outputs/t393

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.94 > ./outputs/t394

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.95 > ./outputs/t395

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.96 > ./outputs/t396

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.97 > ./outputs/t397

./schedule.exe  3 3 3  < $ROOT/inputs/input/tc.98 > ./outputs/t398

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.99 > ./outputs/t399

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.100 > ./outputs/t400

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.101 > ./outputs/t401

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.102 > ./outputs/t402

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.103 > ./outputs/t403

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.104 > ./outputs/t404

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.105 > ./outputs/t405

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.106 > ./outputs/t406

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.107 > ./outputs/t407

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.108 > ./outputs/t408

./schedule.exe  1 3 3  < $ROOT/inputs/input/tc.109 > ./outputs/t409

./schedule.exe  3 4 1  < $ROOT/inputs/input/tc.110 > ./outputs/t410

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.111 > ./outputs/t411

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.112 > ./outputs/t412

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.113 > ./outputs/t413

./schedule.exe  0 0 4  < $ROOT/inputs/input/tc.114 > ./outputs/t414

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.115 > ./outputs/t415

./schedule.exe  1 4 1  < $ROOT/inputs/input/tc.116 > ./outputs/t416

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.117 > ./outputs/t417

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.118 > ./outputs/t418

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.119 > ./outputs/t419

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.120 > ./outputs/t420

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.121 > ./outputs/t421

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.122 > ./outputs/t422

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.123 > ./outputs/t423

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.124 > ./outputs/t424

./schedule.exe  2 2 4  < $ROOT/inputs/input/tc.125 > ./outputs/t425

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.126 > ./outputs/t426

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.127 > ./outputs/t427

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.128 > ./outputs/t428

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.129 > ./outputs/t429

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.130 > ./outputs/t430

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.131 > ./outputs/t431

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.132 > ./outputs/t432

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.133 > ./outputs/t433

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.134 > ./outputs/t434

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.135 > ./outputs/t435

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.136 > ./outputs/t436

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.137 > ./outputs/t437

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.138 > ./outputs/t438

./schedule.exe  4 0 0  < $ROOT/inputs/input/tc.139 > ./outputs/t439

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.140 > ./outputs/t440

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.141 > ./outputs/t441

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.142 > ./outputs/t442

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.143 > ./outputs/t443

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.144 > ./outputs/t444

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.145 > ./outputs/t445

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.146 > ./outputs/t446

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.147 > ./outputs/t447

./schedule.exe  2 2 3  < $ROOT/inputs/input/tc.148 > ./outputs/t448

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.149 > ./outputs/t449

./schedule.exe  0 3 0  < $ROOT/inputs/input/tc.150 > ./outputs/t450

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.151 > ./outputs/t451

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.152 > ./outputs/t452

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.153 > ./outputs/t453

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.154 > ./outputs/t454

./schedule.exe  1 4 3  < $ROOT/inputs/input/tc.155 > ./outputs/t455

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.156 > ./outputs/t456

./schedule.exe  2 1 4  < $ROOT/inputs/input/tc.157 > ./outputs/t457

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.158 > ./outputs/t458

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.159 > ./outputs/t459

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.160 > ./outputs/t460

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.161 > ./outputs/t461

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.162 > ./outputs/t462

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.163 > ./outputs/t463

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.164 > ./outputs/t464

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.165 > ./outputs/t465

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.166 > ./outputs/t466

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.167 > ./outputs/t467

./schedule.exe  4 3 1  < $ROOT/inputs/input/tc.168 > ./outputs/t468

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.169 > ./outputs/t469

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.170 > ./outputs/t470

./schedule.exe  2 0 0  < $ROOT/inputs/input/tc.171 > ./outputs/t471

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.172 > ./outputs/t472

./schedule.exe  4 3 1  < $ROOT/inputs/input/tc.173 > ./outputs/t473

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.174 > ./outputs/t474

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.175 > ./outputs/t475

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.176 > ./outputs/t476

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.177 > ./outputs/t477

./schedule.exe  3 3 1  < $ROOT/inputs/input/tc.178 > ./outputs/t478

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.179 > ./outputs/t479

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.180 > ./outputs/t480

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.181 > ./outputs/t481

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.182 > ./outputs/t482

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.183 > ./outputs/t483

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.184 > ./outputs/t484

./schedule.exe  3 1 1  < $ROOT/inputs/input/tc.185 > ./outputs/t485

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.186 > ./outputs/t486

./schedule.exe  4 0 0  < $ROOT/inputs/input/tc.187 > ./outputs/t487

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.188 > ./outputs/t488

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.189 > ./outputs/t489

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.190 > ./outputs/t490

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.191 > ./outputs/t491

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.192 > ./outputs/t492

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.193 > ./outputs/t493

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.194 > ./outputs/t494

./schedule.exe  2 0 0  < $ROOT/inputs/input/tc.195 > ./outputs/t495

./schedule.exe  4 3 2  < $ROOT/inputs/input/tc.196 > ./outputs/t496

./schedule.exe  1 2 2  < $ROOT/inputs/input/tc.197 > ./outputs/t497

./schedule.exe  2 2 4  < $ROOT/inputs/input/tc.198 > ./outputs/t498

./schedule.exe  1 4 1  < $ROOT/inputs/input/tc.199 > ./outputs/t499

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.200 > ./outputs/t500

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.201 > ./outputs/t501

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.202 > ./outputs/t502

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.203 > ./outputs/t503

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.204 > ./outputs/t504

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.205 > ./outputs/t505

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.206 > ./outputs/t506

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.207 > ./outputs/t507

./schedule.exe  3 2 4  < $ROOT/inputs/input/tc.208 > ./outputs/t508

./schedule.exe  0 0 4  < $ROOT/inputs/input/tc.209 > ./outputs/t509

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.210 > ./outputs/t510

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.211 > ./outputs/t511

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.212 > ./outputs/t512

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.213 > ./outputs/t513

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.214 > ./outputs/t514

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.215 > ./outputs/t515

./schedule.exe  4 3 2  < $ROOT/inputs/input/tc.216 > ./outputs/t516

./schedule.exe  2 3 2  < $ROOT/inputs/input/tc.217 > ./outputs/t517

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.218 > ./outputs/t518

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.219 > ./outputs/t519

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.220 > ./outputs/t520

./schedule.exe  3 3 3  < $ROOT/inputs/input/tc.221 > ./outputs/t521

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.222 > ./outputs/t522

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.223 > ./outputs/t523

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.224 > ./outputs/t524

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.225 > ./outputs/t525

./schedule.exe  1 0 0  < $ROOT/inputs/input/tc.226 > ./outputs/t526

./schedule.exe  1 3 3  < $ROOT/inputs/input/tc.227 > ./outputs/t527

./schedule.exe  0 1 0  < $ROOT/inputs/input/tc.228 > ./outputs/t528

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.229 > ./outputs/t529

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.230 > ./outputs/t530

./schedule.exe  4 3 4  < $ROOT/inputs/input/tc.231 > ./outputs/t531

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.232 > ./outputs/t532

./schedule.exe  3 3 4  < $ROOT/inputs/input/tc.233 > ./outputs/t533

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.234 > ./outputs/t534

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.235 > ./outputs/t535

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.236 > ./outputs/t536

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.237 > ./outputs/t537

./schedule.exe  0 0 3  < $ROOT/inputs/input/tc.238 > ./outputs/t538

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.239 > ./outputs/t539

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.240 > ./outputs/t540

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.241 > ./outputs/t541

./schedule.exe  4 4 4  < $ROOT/inputs/input/tc.242 > ./outputs/t542

./schedule.exe  0 3 0  < $ROOT/inputs/input/tc.243 > ./outputs/t543

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.244 > ./outputs/t544

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.245 > ./outputs/t545

./schedule.exe  2 0 0  < $ROOT/inputs/input/tc.246 > ./outputs/t546

./schedule.exe  4 0 0  < $ROOT/inputs/input/tc.247 > ./outputs/t547

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.248 > ./outputs/t548

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.249 > ./outputs/t549

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.250 > ./outputs/t550

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.251 > ./outputs/t551

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.252 > ./outputs/t552

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.253 > ./outputs/t553

./schedule.exe  0 4 0  < $ROOT/inputs/input/tc.254 > ./outputs/t554

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.255 > ./outputs/t555

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.256 > ./outputs/t556

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.257 > ./outputs/t557

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.258 > ./outputs/t558

./schedule.exe  3 0 0  < $ROOT/inputs/input/tc.259 > ./outputs/t559

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.260 > ./outputs/t560

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.261 > ./outputs/t561

./schedule.exe  2 3 4  < $ROOT/inputs/input/tc.262 > ./outputs/t562

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.263 > ./outputs/t563

./schedule.exe  0 0 2  < $ROOT/inputs/input/tc.264 > ./outputs/t564

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.265 > ./outputs/t565

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.266 > ./outputs/t566

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.267 > ./outputs/t567

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.268 > ./outputs/t568

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.269 > ./outputs/t569

./schedule.exe  0 0 4  < $ROOT/inputs/input/tc.270 > ./outputs/t570

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.271 > ./outputs/t571

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.272 > ./outputs/t572

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.273 > ./outputs/t573

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.274 > ./outputs/t574

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.275 > ./outputs/t575

./schedule.exe  0 3 0  < $ROOT/inputs/input/tc.276 > ./outputs/t576

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.277 > ./outputs/t577

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.278 > ./outputs/t578

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.279 > ./outputs/t579

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.280 > ./outputs/t580

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.281 > ./outputs/t581

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.282 > ./outputs/t582

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.283 > ./outputs/t583

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.284 > ./outputs/t584

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.285 > ./outputs/t585

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.286 > ./outputs/t586

./schedule.exe  2 0 0  < $ROOT/inputs/input/tc.287 > ./outputs/t587

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.288 > ./outputs/t588

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.289 > ./outputs/t589

./schedule.exe  0 0 4  < $ROOT/inputs/input/tc.290 > ./outputs/t590

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.291 > ./outputs/t591

./schedule.exe  0 3 0  < $ROOT/inputs/input/tc.292 > ./outputs/t592

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.293 > ./outputs/t593

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.294 > ./outputs/t594

./schedule.exe  0 2 0  < $ROOT/inputs/input/tc.295 > ./outputs/t595

./schedule.exe  0 0 1  < $ROOT/inputs/input/tc.296 > ./outputs/t596

./schedule.exe  1 4 2  < $ROOT/inputs/input/tc.297 > ./outputs/t597

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.298 > ./outputs/t598

./schedule.exe  0 3 0  < $ROOT/inputs/input/tc.299 > ./outputs/t599

./schedule.exe  0 0 0  < $ROOT/inputs/input/tc.300 > ./outputs/t600

./schedule.exe  5 4 2  < $ROOT/inputs/input/dat000 > ./outputs/t601

./schedule.exe  2 5 2  < $ROOT/inputs/input/dat001 > ./outputs/t602

./schedule.exe  0 3 2  < $ROOT/inputs/input/dat002 > ./outputs/t603

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat003 > ./outputs/t604

./schedule.exe  3 2 1  < $ROOT/inputs/input/dat004 > ./outputs/t605

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat005 > ./outputs/t606

./schedule.exe  2 0 4  < $ROOT/inputs/input/dat006 > ./outputs/t607

./schedule.exe  2 4 4  < $ROOT/inputs/input/dat007 > ./outputs/t608

./schedule.exe  1 3 2  < $ROOT/inputs/input/dat008 > ./outputs/t609

./schedule.exe  5 0 3  < $ROOT/inputs/input/dat009 > ./outputs/t610

./schedule.exe  3 2 3  < $ROOT/inputs/input/dat010 > ./outputs/t611

./schedule.exe  2 5 4  < $ROOT/inputs/input/dat011 > ./outputs/t612

./schedule.exe  3 4 0  < $ROOT/inputs/input/dat012 > ./outputs/t613

./schedule.exe  3 4 2  < $ROOT/inputs/input/dat013 > ./outputs/t614

./schedule.exe  1 1 1  < $ROOT/inputs/input/dat014 > ./outputs/t615

./schedule.exe  1 5 1  < $ROOT/inputs/input/dat015 > ./outputs/t616

./schedule.exe  3 2 3  < $ROOT/inputs/input/dat016 > ./outputs/t617

./schedule.exe  2 4 2  < $ROOT/inputs/input/dat017 > ./outputs/t618

./schedule.exe  1 5 2  < $ROOT/inputs/input/dat018 > ./outputs/t619

./schedule.exe  0 0 5  < $ROOT/inputs/input/dat019 > ./outputs/t620

./schedule.exe  3 4 3  < $ROOT/inputs/input/dat020 > ./outputs/t621

./schedule.exe  4 1 3  < $ROOT/inputs/input/dat021 > ./outputs/t622

./schedule.exe  0 3 0  < $ROOT/inputs/input/dat022 > ./outputs/t623

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat023 > ./outputs/t624

./schedule.exe  5 5 1  < $ROOT/inputs/input/dat024 > ./outputs/t625

./schedule.exe  2 1 3  < $ROOT/inputs/input/dat025 > ./outputs/t626

./schedule.exe  2 2 5  < $ROOT/inputs/input/dat026 > ./outputs/t627

./schedule.exe  5 1 1  < $ROOT/inputs/input/dat027 > ./outputs/t628

./schedule.exe  2 5 1  < $ROOT/inputs/input/dat028 > ./outputs/t629

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat029 > ./outputs/t630

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat030 > ./outputs/t631

./schedule.exe  3 4 1  < $ROOT/inputs/input/dat031 > ./outputs/t632

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat032 > ./outputs/t633

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat033 > ./outputs/t634

./schedule.exe  2 0 4  < $ROOT/inputs/input/dat034 > ./outputs/t635

./schedule.exe  4 2 4  < $ROOT/inputs/input/dat035 > ./outputs/t636

./schedule.exe  5 1 0  < $ROOT/inputs/input/dat036 > ./outputs/t637

./schedule.exe  1 0 3  < $ROOT/inputs/input/dat037 > ./outputs/t638

./schedule.exe  2 5 5  < $ROOT/inputs/input/dat038 > ./outputs/t639

./schedule.exe  5 4 0  < $ROOT/inputs/input/dat039 > ./outputs/t640

./schedule.exe  4 2 2  < $ROOT/inputs/input/dat040 > ./outputs/t641

./schedule.exe  4 4 3  < $ROOT/inputs/input/dat041 > ./outputs/t642

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat042 > ./outputs/t643

./schedule.exe  1 1 4  < $ROOT/inputs/input/dat043 > ./outputs/t644

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat044 > ./outputs/t645

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat045 > ./outputs/t646

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat046 > ./outputs/t647

./schedule.exe  5 2 0  < $ROOT/inputs/input/dat047 > ./outputs/t648

./schedule.exe  3 4 1  < $ROOT/inputs/input/dat048 > ./outputs/t649

./schedule.exe  0 1 1  < $ROOT/inputs/input/dat049 > ./outputs/t650

./schedule.exe  1 1 2  < $ROOT/inputs/input/dat050 > ./outputs/t651

./schedule.exe  4 4 5  < $ROOT/inputs/input/dat051 > ./outputs/t652

./schedule.exe  4 4 2  < $ROOT/inputs/input/dat052 > ./outputs/t653

./schedule.exe  5 0 3  < $ROOT/inputs/input/dat053 > ./outputs/t654

./schedule.exe  4 1 2  < $ROOT/inputs/input/dat054 > ./outputs/t655

./schedule.exe  1 5 5  < $ROOT/inputs/input/dat055 > ./outputs/t656

./schedule.exe  0 3 1  < $ROOT/inputs/input/dat056 > ./outputs/t657

./schedule.exe  0 4 3  < $ROOT/inputs/input/dat057 > ./outputs/t658

./schedule.exe  1 3 2  < $ROOT/inputs/input/dat058 > ./outputs/t659

./schedule.exe  4 0 1  < $ROOT/inputs/input/dat059 > ./outputs/t660

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat060 > ./outputs/t661

./schedule.exe  4 4 5  < $ROOT/inputs/input/dat061 > ./outputs/t662

./schedule.exe  5 5 0  < $ROOT/inputs/input/dat062 > ./outputs/t663

./schedule.exe  1 0 1  < $ROOT/inputs/input/dat063 > ./outputs/t664

./schedule.exe  1 5 1  < $ROOT/inputs/input/dat064 > ./outputs/t665

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat065 > ./outputs/t666

./schedule.exe  0 3 2  < $ROOT/inputs/input/dat066 > ./outputs/t667

./schedule.exe  4 2 2  < $ROOT/inputs/input/dat067 > ./outputs/t668

./schedule.exe  3 5 1  < $ROOT/inputs/input/dat068 > ./outputs/t669

./schedule.exe  0 4 3  < $ROOT/inputs/input/dat069 > ./outputs/t670

./schedule.exe  1 0 1  < $ROOT/inputs/input/dat070 > ./outputs/t671

./schedule.exe  1 2 2  < $ROOT/inputs/input/dat071 > ./outputs/t672

./schedule.exe  5 1 0  < $ROOT/inputs/input/dat072 > ./outputs/t673

./schedule.exe  4 2 1  < $ROOT/inputs/input/dat073 > ./outputs/t674

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat074 > ./outputs/t675

./schedule.exe  5 4 3  < $ROOT/inputs/input/dat075 > ./outputs/t676

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat076 > ./outputs/t677

./schedule.exe  1 2 1  < $ROOT/inputs/input/dat077 > ./outputs/t678

./schedule.exe  4 3 3  < $ROOT/inputs/input/dat078 > ./outputs/t679

./schedule.exe  0 1 0  < $ROOT/inputs/input/dat079 > ./outputs/t680

./schedule.exe  0 5 5  < $ROOT/inputs/input/dat080 > ./outputs/t681

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat081 > ./outputs/t682

./schedule.exe  0 5 1  < $ROOT/inputs/input/dat082 > ./outputs/t683

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat083 > ./outputs/t684

./schedule.exe  3 1 3  < $ROOT/inputs/input/dat084 > ./outputs/t685

./schedule.exe  4 4 0  < $ROOT/inputs/input/dat085 > ./outputs/t686

./schedule.exe  1 0 3  < $ROOT/inputs/input/dat086 > ./outputs/t687

./schedule.exe  5 1 0  < $ROOT/inputs/input/dat087 > ./outputs/t688

./schedule.exe  0 2 2  < $ROOT/inputs/input/dat088 > ./outputs/t689

./schedule.exe  0 4 4  < $ROOT/inputs/input/dat089 > ./outputs/t690

./schedule.exe  5 5 4  < $ROOT/inputs/input/dat090 > ./outputs/t691

./schedule.exe  0 2 1  < $ROOT/inputs/input/dat091 > ./outputs/t692

./schedule.exe  2 5 2  < $ROOT/inputs/input/dat092 > ./outputs/t693

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat093 > ./outputs/t694

./schedule.exe  2 3 1  < $ROOT/inputs/input/dat094 > ./outputs/t695

./schedule.exe  5 1 0  < $ROOT/inputs/input/dat095 > ./outputs/t696

./schedule.exe  5 4 1  < $ROOT/inputs/input/dat096 > ./outputs/t697

./schedule.exe  5 5 1  < $ROOT/inputs/input/dat097 > ./outputs/t698

./schedule.exe  3 2 1  < $ROOT/inputs/input/dat098 > ./outputs/t699

./schedule.exe  0 5 3  < $ROOT/inputs/input/dat099 > ./outputs/t700

./schedule.exe  0 1 2  < $ROOT/inputs/input/dat100 > ./outputs/t701

./schedule.exe  2 5 0  < $ROOT/inputs/input/dat101 > ./outputs/t702

./schedule.exe  1 2 3  < $ROOT/inputs/input/dat102 > ./outputs/t703

./schedule.exe  2 4 4  < $ROOT/inputs/input/dat103 > ./outputs/t704

./schedule.exe  2 0 0  < $ROOT/inputs/input/dat104 > ./outputs/t705

./schedule.exe  2 4 1  < $ROOT/inputs/input/dat105 > ./outputs/t706

./schedule.exe  5 2 4  < $ROOT/inputs/input/dat106 > ./outputs/t707

./schedule.exe  0 5 3  < $ROOT/inputs/input/dat107 > ./outputs/t708

./schedule.exe  3 2 2  < $ROOT/inputs/input/dat108 > ./outputs/t709

./schedule.exe  3 5 5  < $ROOT/inputs/input/dat109 > ./outputs/t710

./schedule.exe  5 0 3  < $ROOT/inputs/input/dat110 > ./outputs/t711

./schedule.exe  2 4 5  < $ROOT/inputs/input/dat111 > ./outputs/t712

./schedule.exe  3 5 1  < $ROOT/inputs/input/dat112 > ./outputs/t713

./schedule.exe  0 3 1  < $ROOT/inputs/input/dat113 > ./outputs/t714

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat114 > ./outputs/t715

./schedule.exe  1 5 4  < $ROOT/inputs/input/dat115 > ./outputs/t716

./schedule.exe  3 1 2  < $ROOT/inputs/input/dat116 > ./outputs/t717

./schedule.exe  1 5 5  < $ROOT/inputs/input/dat117 > ./outputs/t718

./schedule.exe  1 3 5  < $ROOT/inputs/input/dat118 > ./outputs/t719

./schedule.exe  2 1 1  < $ROOT/inputs/input/dat119 > ./outputs/t720

./schedule.exe  4 2 3  < $ROOT/inputs/input/dat120 > ./outputs/t721

./schedule.exe  4 4 1  < $ROOT/inputs/input/dat121 > ./outputs/t722

./schedule.exe  1 1 2  < $ROOT/inputs/input/dat122 > ./outputs/t723

./schedule.exe  1 4 3  < $ROOT/inputs/input/dat123 > ./outputs/t724

./schedule.exe  0 1 4  < $ROOT/inputs/input/dat124 > ./outputs/t725

./schedule.exe  0 4 3  < $ROOT/inputs/input/dat125 > ./outputs/t726

./schedule.exe  3 5 5  < $ROOT/inputs/input/dat126 > ./outputs/t727

./schedule.exe  5 3 5  < $ROOT/inputs/input/dat127 > ./outputs/t728

./schedule.exe  1 5 1  < $ROOT/inputs/input/dat128 > ./outputs/t729

./schedule.exe  0 5 1  < $ROOT/inputs/input/dat129 > ./outputs/t730

./schedule.exe  4 3 1  < $ROOT/inputs/input/dat130 > ./outputs/t731

./schedule.exe  4 4 4  < $ROOT/inputs/input/dat131 > ./outputs/t732

./schedule.exe  4 2 3  < $ROOT/inputs/input/dat132 > ./outputs/t733

./schedule.exe  2 3 3  < $ROOT/inputs/input/dat133 > ./outputs/t734

./schedule.exe  0 4 5  < $ROOT/inputs/input/dat134 > ./outputs/t735

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat135 > ./outputs/t736

./schedule.exe  2 5 5  < $ROOT/inputs/input/dat136 > ./outputs/t737

./schedule.exe  3 2 2  < $ROOT/inputs/input/dat137 > ./outputs/t738

./schedule.exe  0 3 3  < $ROOT/inputs/input/dat138 > ./outputs/t739

./schedule.exe  2 4 5  < $ROOT/inputs/input/dat139 > ./outputs/t740

./schedule.exe  0 4 5  < $ROOT/inputs/input/dat140 > ./outputs/t741

./schedule.exe  4 0 3  < $ROOT/inputs/input/dat141 > ./outputs/t742

./schedule.exe  1 0 2  < $ROOT/inputs/input/dat142 > ./outputs/t743

./schedule.exe  5 3 5  < $ROOT/inputs/input/dat143 > ./outputs/t744

./schedule.exe  5 5 4  < $ROOT/inputs/input/dat144 > ./outputs/t745

./schedule.exe  1 3 5  < $ROOT/inputs/input/dat145 > ./outputs/t746

./schedule.exe  5 4 0  < $ROOT/inputs/input/dat146 > ./outputs/t747

./schedule.exe  3 0 1  < $ROOT/inputs/input/dat147 > ./outputs/t748

./schedule.exe  5 4 4  < $ROOT/inputs/input/dat148 > ./outputs/t749

./schedule.exe  3 5 3  < $ROOT/inputs/input/dat149 > ./outputs/t750

./schedule.exe  1 0 3  < $ROOT/inputs/input/dat150 > ./outputs/t751

./schedule.exe  2 0 5  < $ROOT/inputs/input/dat151 > ./outputs/t752

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat152 > ./outputs/t753

./schedule.exe  2 1 0  < $ROOT/inputs/input/dat153 > ./outputs/t754

./schedule.exe  1 4 0  < $ROOT/inputs/input/dat154 > ./outputs/t755

./schedule.exe  4 1 5  < $ROOT/inputs/input/dat155 > ./outputs/t756

./schedule.exe  1 3 5  < $ROOT/inputs/input/dat156 > ./outputs/t757

./schedule.exe  5 4 5  < $ROOT/inputs/input/dat157 > ./outputs/t758

./schedule.exe  4 0 2  < $ROOT/inputs/input/dat158 > ./outputs/t759

./schedule.exe  2 0 0  < $ROOT/inputs/input/dat159 > ./outputs/t760

./schedule.exe  1 1 1  < $ROOT/inputs/input/dat160 > ./outputs/t761

./schedule.exe  4 3 4  < $ROOT/inputs/input/dat161 > ./outputs/t762

./schedule.exe  0 2 1  < $ROOT/inputs/input/dat162 > ./outputs/t763

./schedule.exe  4 5 4  < $ROOT/inputs/input/dat163 > ./outputs/t764

./schedule.exe  4 1 5  < $ROOT/inputs/input/dat164 > ./outputs/t765

./schedule.exe  3 4 4  < $ROOT/inputs/input/dat165 > ./outputs/t766

./schedule.exe  4 5 1  < $ROOT/inputs/input/dat166 > ./outputs/t767

./schedule.exe  1 0 1  < $ROOT/inputs/input/dat167 > ./outputs/t768

./schedule.exe  4 5 3  < $ROOT/inputs/input/dat168 > ./outputs/t769

./schedule.exe  2 3 0  < $ROOT/inputs/input/dat169 > ./outputs/t770

./schedule.exe  5 0 5  < $ROOT/inputs/input/dat170 > ./outputs/t771

./schedule.exe  2 4 4  < $ROOT/inputs/input/dat171 > ./outputs/t772

./schedule.exe  5 0 2  < $ROOT/inputs/input/dat172 > ./outputs/t773

./schedule.exe  2 5 4  < $ROOT/inputs/input/dat173 > ./outputs/t774

./schedule.exe  0 2 3  < $ROOT/inputs/input/dat174 > ./outputs/t775

./schedule.exe  4 1 5  < $ROOT/inputs/input/dat175 > ./outputs/t776

./schedule.exe  4 2 0  < $ROOT/inputs/input/dat176 > ./outputs/t777

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat177 > ./outputs/t778

./schedule.exe  5 4 2  < $ROOT/inputs/input/dat178 > ./outputs/t779

./schedule.exe  4 2 3  < $ROOT/inputs/input/dat179 > ./outputs/t780

./schedule.exe  3 5 0  < $ROOT/inputs/input/dat180 > ./outputs/t781

./schedule.exe  2 2 0  < $ROOT/inputs/input/dat181 > ./outputs/t782

./schedule.exe  5 4 5  < $ROOT/inputs/input/dat182 > ./outputs/t783

./schedule.exe  5 0 2  < $ROOT/inputs/input/dat183 > ./outputs/t784

./schedule.exe  5 2 0  < $ROOT/inputs/input/dat184 > ./outputs/t785

./schedule.exe  5 2 0  < $ROOT/inputs/input/dat185 > ./outputs/t786

./schedule.exe  1 4 5  < $ROOT/inputs/input/dat186 > ./outputs/t787

./schedule.exe  5 1 1  < $ROOT/inputs/input/dat187 > ./outputs/t788

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat188 > ./outputs/t789

./schedule.exe  3 5 0  < $ROOT/inputs/input/dat189 > ./outputs/t790

./schedule.exe  3 1 3  < $ROOT/inputs/input/dat190 > ./outputs/t791

./schedule.exe  4 2 2  < $ROOT/inputs/input/dat191 > ./outputs/t792

./schedule.exe  2 2 3  < $ROOT/inputs/input/dat192 > ./outputs/t793

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat193 > ./outputs/t794

./schedule.exe  4 4 1  < $ROOT/inputs/input/dat194 > ./outputs/t795

./schedule.exe  3 2 1  < $ROOT/inputs/input/dat195 > ./outputs/t796

./schedule.exe  1 2 4  < $ROOT/inputs/input/dat196 > ./outputs/t797

./schedule.exe  0 1 2  < $ROOT/inputs/input/dat197 > ./outputs/t798

./schedule.exe  3 2 4  < $ROOT/inputs/input/dat198 > ./outputs/t799

./schedule.exe  1 3 4  < $ROOT/inputs/input/dat199 > ./outputs/t800

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat200 > ./outputs/t801

./schedule.exe  5 3 4  < $ROOT/inputs/input/dat201 > ./outputs/t802

./schedule.exe  4 1 0  < $ROOT/inputs/input/dat202 > ./outputs/t803

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat203 > ./outputs/t804

./schedule.exe  0 3 2  < $ROOT/inputs/input/dat204 > ./outputs/t805

./schedule.exe  0 1 4  < $ROOT/inputs/input/dat205 > ./outputs/t806

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat206 > ./outputs/t807

./schedule.exe  1 3 3  < $ROOT/inputs/input/dat207 > ./outputs/t808

./schedule.exe  1 2 0  < $ROOT/inputs/input/dat208 > ./outputs/t809

./schedule.exe  1 4 1  < $ROOT/inputs/input/dat209 > ./outputs/t810

./schedule.exe  2 4 3  < $ROOT/inputs/input/dat210 > ./outputs/t811

./schedule.exe  5 1 1  < $ROOT/inputs/input/dat211 > ./outputs/t812

./schedule.exe  3 2 5  < $ROOT/inputs/input/dat212 > ./outputs/t813

./schedule.exe  5 3 1  < $ROOT/inputs/input/dat213 > ./outputs/t814

./schedule.exe  0 5 4  < $ROOT/inputs/input/dat214 > ./outputs/t815

./schedule.exe  0 4 4  < $ROOT/inputs/input/dat215 > ./outputs/t816

./schedule.exe  2 2 3  < $ROOT/inputs/input/dat216 > ./outputs/t817

./schedule.exe  5 2 4  < $ROOT/inputs/input/dat217 > ./outputs/t818

./schedule.exe  0 5 4  < $ROOT/inputs/input/dat218 > ./outputs/t819

./schedule.exe  1 0 4  < $ROOT/inputs/input/dat219 > ./outputs/t820

./schedule.exe  1 2 5  < $ROOT/inputs/input/dat220 > ./outputs/t821

./schedule.exe  2 1 1  < $ROOT/inputs/input/dat221 > ./outputs/t822

./schedule.exe  5 2 1  < $ROOT/inputs/input/dat222 > ./outputs/t823

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat223 > ./outputs/t824

./schedule.exe  3 5 0  < $ROOT/inputs/input/dat224 > ./outputs/t825

./schedule.exe  4 2 5  < $ROOT/inputs/input/dat225 > ./outputs/t826

./schedule.exe  5 5 3  < $ROOT/inputs/input/dat226 > ./outputs/t827

./schedule.exe  0 4 1  < $ROOT/inputs/input/dat227 > ./outputs/t828

./schedule.exe  2 1 1  < $ROOT/inputs/input/dat228 > ./outputs/t829

./schedule.exe  4 4 0  < $ROOT/inputs/input/dat229 > ./outputs/t830

./schedule.exe  0 3 2  < $ROOT/inputs/input/dat230 > ./outputs/t831

./schedule.exe  2 1 3  < $ROOT/inputs/input/dat231 > ./outputs/t832

./schedule.exe  5 0 2  < $ROOT/inputs/input/dat232 > ./outputs/t833

./schedule.exe  5 2 4  < $ROOT/inputs/input/dat233 > ./outputs/t834

./schedule.exe  4 2 2  < $ROOT/inputs/input/dat234 > ./outputs/t835

./schedule.exe  0 4 5  < $ROOT/inputs/input/dat235 > ./outputs/t836

./schedule.exe  3 1 3  < $ROOT/inputs/input/dat236 > ./outputs/t837

./schedule.exe  4 1 0  < $ROOT/inputs/input/dat237 > ./outputs/t838

./schedule.exe  0 5 3  < $ROOT/inputs/input/dat238 > ./outputs/t839

./schedule.exe  1 0 2  < $ROOT/inputs/input/dat239 > ./outputs/t840

./schedule.exe  4 3 1  < $ROOT/inputs/input/dat240 > ./outputs/t841

./schedule.exe  5 1 1  < $ROOT/inputs/input/dat241 > ./outputs/t842

./schedule.exe  3 4 2  < $ROOT/inputs/input/dat242 > ./outputs/t843

./schedule.exe  4 2 4  < $ROOT/inputs/input/dat243 > ./outputs/t844

./schedule.exe  4 3 4  < $ROOT/inputs/input/dat244 > ./outputs/t845

./schedule.exe  3 0 2  < $ROOT/inputs/input/dat245 > ./outputs/t846

./schedule.exe  0 4 3  < $ROOT/inputs/input/dat246 > ./outputs/t847

./schedule.exe  0 0 5  < $ROOT/inputs/input/dat247 > ./outputs/t848

./schedule.exe  2 4 0  < $ROOT/inputs/input/dat248 > ./outputs/t849

./schedule.exe  4 3 2  < $ROOT/inputs/input/dat249 > ./outputs/t850

./schedule.exe  1 5 4  < $ROOT/inputs/input/dat250 > ./outputs/t851

./schedule.exe  4 2 4  < $ROOT/inputs/input/dat251 > ./outputs/t852

./schedule.exe  0 2 1  < $ROOT/inputs/input/dat252 > ./outputs/t853

./schedule.exe  0 1 3  < $ROOT/inputs/input/dat253 > ./outputs/t854

./schedule.exe  3 2 2  < $ROOT/inputs/input/dat254 > ./outputs/t855

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat255 > ./outputs/t856

./schedule.exe  5 1 1  < $ROOT/inputs/input/dat256 > ./outputs/t857

./schedule.exe  1 3 3  < $ROOT/inputs/input/dat257 > ./outputs/t858

./schedule.exe  0 3 3  < $ROOT/inputs/input/dat258 > ./outputs/t859

./schedule.exe  1 0 2  < $ROOT/inputs/input/dat259 > ./outputs/t860

./schedule.exe  2 5 1  < $ROOT/inputs/input/dat260 > ./outputs/t861

./schedule.exe  1 3 4  < $ROOT/inputs/input/dat261 > ./outputs/t862

./schedule.exe  3 5 3  < $ROOT/inputs/input/dat262 > ./outputs/t863

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat263 > ./outputs/t864

./schedule.exe  4 2 3  < $ROOT/inputs/input/dat264 > ./outputs/t865

./schedule.exe  0 0 4  < $ROOT/inputs/input/dat265 > ./outputs/t866

./schedule.exe  4 0 1  < $ROOT/inputs/input/dat266 > ./outputs/t867

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat267 > ./outputs/t868

./schedule.exe  0 0 2  < $ROOT/inputs/input/dat268 > ./outputs/t869

./schedule.exe  5 4 1  < $ROOT/inputs/input/dat269 > ./outputs/t870

./schedule.exe  3 3 3  < $ROOT/inputs/input/dat270 > ./outputs/t871

./schedule.exe  2 1 0  < $ROOT/inputs/input/dat271 > ./outputs/t872

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat272 > ./outputs/t873

./schedule.exe  5 4 4  < $ROOT/inputs/input/dat273 > ./outputs/t874

./schedule.exe  5 1 2  < $ROOT/inputs/input/dat274 > ./outputs/t875

./schedule.exe  2 4 3  < $ROOT/inputs/input/dat275 > ./outputs/t876

./schedule.exe  3 4 4  < $ROOT/inputs/input/dat276 > ./outputs/t877

./schedule.exe  1 3 5  < $ROOT/inputs/input/dat277 > ./outputs/t878

./schedule.exe  5 4 4  < $ROOT/inputs/input/dat278 > ./outputs/t879

./schedule.exe  1 1 4  < $ROOT/inputs/input/dat279 > ./outputs/t880

./schedule.exe  0 3 0  < $ROOT/inputs/input/dat280 > ./outputs/t881

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat281 > ./outputs/t882

./schedule.exe  4 5 2  < $ROOT/inputs/input/dat282 > ./outputs/t883

./schedule.exe  3 3 2  < $ROOT/inputs/input/dat283 > ./outputs/t884

./schedule.exe  2 4 2  < $ROOT/inputs/input/dat284 > ./outputs/t885

./schedule.exe  4 4 5  < $ROOT/inputs/input/dat285 > ./outputs/t886

./schedule.exe  2 1 0  < $ROOT/inputs/input/dat286 > ./outputs/t887

./schedule.exe  1 4 1  < $ROOT/inputs/input/dat287 > ./outputs/t888

./schedule.exe  5 1 5  < $ROOT/inputs/input/dat288 > ./outputs/t889

./schedule.exe  1 0 1  < $ROOT/inputs/input/dat289 > ./outputs/t890

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat290 > ./outputs/t891

./schedule.exe  3 1 3  < $ROOT/inputs/input/dat291 > ./outputs/t892

./schedule.exe  5 2 5  < $ROOT/inputs/input/dat292 > ./outputs/t893

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat293 > ./outputs/t894

./schedule.exe  2 1 5  < $ROOT/inputs/input/dat294 > ./outputs/t895

./schedule.exe  4 0 1  < $ROOT/inputs/input/dat295 > ./outputs/t896

./schedule.exe  0 4 2  < $ROOT/inputs/input/dat296 > ./outputs/t897

./schedule.exe  0 5 0  < $ROOT/inputs/input/dat297 > ./outputs/t898

./schedule.exe  4 5 1  < $ROOT/inputs/input/dat298 > ./outputs/t899

./schedule.exe  5 1 5  < $ROOT/inputs/input/dat299 > ./outputs/t900

./schedule.exe  0 1 3  < $ROOT/inputs/input/dat300 > ./outputs/t901

./schedule.exe  0 0 1  < $ROOT/inputs/input/dat301 > ./outputs/t902

./schedule.exe  0 0 3  < $ROOT/inputs/input/dat302 > ./outputs/t903

./schedule.exe  3 0 5  < $ROOT/inputs/input/dat303 > ./outputs/t904

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat304 > ./outputs/t905

./schedule.exe  3 5 1  < $ROOT/inputs/input/dat305 > ./outputs/t906

./schedule.exe  2 1 1  < $ROOT/inputs/input/dat306 > ./outputs/t907

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat307 > ./outputs/t908

./schedule.exe  0 2 1  < $ROOT/inputs/input/dat308 > ./outputs/t909

./schedule.exe  4 0 0  < $ROOT/inputs/input/dat309 > ./outputs/t910

./schedule.exe  4 2 5  < $ROOT/inputs/input/dat310 > ./outputs/t911

./schedule.exe  1 4 1  < $ROOT/inputs/input/dat311 > ./outputs/t912

./schedule.exe  5 4 2  < $ROOT/inputs/input/dat312 > ./outputs/t913

./schedule.exe  5 5 2  < $ROOT/inputs/input/dat313 > ./outputs/t914

./schedule.exe  4 4 2  < $ROOT/inputs/input/dat314 > ./outputs/t915

./schedule.exe  4 1 2  < $ROOT/inputs/input/dat315 > ./outputs/t916

./schedule.exe  3 0 2  < $ROOT/inputs/input/dat316 > ./outputs/t917

./schedule.exe  0 3 1  < $ROOT/inputs/input/dat317 > ./outputs/t918

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat318 > ./outputs/t919

./schedule.exe  3 3 2  < $ROOT/inputs/input/dat319 > ./outputs/t920

./schedule.exe  0 2 2  < $ROOT/inputs/input/dat320 > ./outputs/t921

./schedule.exe  0 5 4  < $ROOT/inputs/input/dat321 > ./outputs/t922

./schedule.exe  3 2 4  < $ROOT/inputs/input/dat322 > ./outputs/t923

./schedule.exe  0 1 0  < $ROOT/inputs/input/dat323 > ./outputs/t924

./schedule.exe  2 3 2  < $ROOT/inputs/input/dat324 > ./outputs/t925

./schedule.exe  2 5 5  < $ROOT/inputs/input/dat325 > ./outputs/t926

./schedule.exe  0 3 3  < $ROOT/inputs/input/dat326 > ./outputs/t927

./schedule.exe  2 5 0  < $ROOT/inputs/input/dat327 > ./outputs/t928

./schedule.exe  3 2 2  < $ROOT/inputs/input/dat328 > ./outputs/t929

./schedule.exe  0 4 3  < $ROOT/inputs/input/dat329 > ./outputs/t930

./schedule.exe  0 0 2  < $ROOT/inputs/input/dat330 > ./outputs/t931

./schedule.exe  0 0 1  < $ROOT/inputs/input/dat331 > ./outputs/t932

./schedule.exe  5 2 2  < $ROOT/inputs/input/dat332 > ./outputs/t933

./schedule.exe  1 3 2  < $ROOT/inputs/input/dat333 > ./outputs/t934

./schedule.exe  0 5 1  < $ROOT/inputs/input/dat334 > ./outputs/t935

./schedule.exe  1 4 5  < $ROOT/inputs/input/dat335 > ./outputs/t936

./schedule.exe  5 4 4  < $ROOT/inputs/input/dat336 > ./outputs/t937

./schedule.exe  5 1 2  < $ROOT/inputs/input/dat337 > ./outputs/t938

./schedule.exe  0 2 5  < $ROOT/inputs/input/dat338 > ./outputs/t939

./schedule.exe  2 4 3  < $ROOT/inputs/input/dat339 > ./outputs/t940

./schedule.exe  2 4 1  < $ROOT/inputs/input/dat340 > ./outputs/t941

./schedule.exe  1 0 3  < $ROOT/inputs/input/dat341 > ./outputs/t942

./schedule.exe  4 1 5  < $ROOT/inputs/input/dat342 > ./outputs/t943

./schedule.exe  1 1 1  < $ROOT/inputs/input/dat343 > ./outputs/t944

./schedule.exe  1 1 1  < $ROOT/inputs/input/dat344 > ./outputs/t945

./schedule.exe  2 4 1  < $ROOT/inputs/input/dat345 > ./outputs/t946

./schedule.exe  0 2 3  < $ROOT/inputs/input/dat346 > ./outputs/t947

./schedule.exe  5 0 1  < $ROOT/inputs/input/dat347 > ./outputs/t948

./schedule.exe  4 5 5  < $ROOT/inputs/input/dat348 > ./outputs/t949

./schedule.exe  5 0 4  < $ROOT/inputs/input/dat349 > ./outputs/t950

./schedule.exe  4 3 1  < $ROOT/inputs/input/dat350 > ./outputs/t951

./schedule.exe  4 1 3  < $ROOT/inputs/input/dat351 > ./outputs/t952

./schedule.exe  3 2 3  < $ROOT/inputs/input/dat352 > ./outputs/t953

./schedule.exe  4 3 5  < $ROOT/inputs/input/dat353 > ./outputs/t954

./schedule.exe  1 3 0  < $ROOT/inputs/input/dat354 > ./outputs/t955

./schedule.exe  2 5 3  < $ROOT/inputs/input/dat355 > ./outputs/t956

./schedule.exe  0 1 1  < $ROOT/inputs/input/dat356 > ./outputs/t957

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat357 > ./outputs/t958

./schedule.exe  3 1 2  < $ROOT/inputs/input/dat358 > ./outputs/t959

./schedule.exe  5 2 5  < $ROOT/inputs/input/dat359 > ./outputs/t960

./schedule.exe  0 1 2  < $ROOT/inputs/input/dat360 > ./outputs/t961

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat361 > ./outputs/t962

./schedule.exe  5 0 1  < $ROOT/inputs/input/dat362 > ./outputs/t963

./schedule.exe  4 2 3  < $ROOT/inputs/input/dat363 > ./outputs/t964

./schedule.exe  3 4 2  < $ROOT/inputs/input/dat364 > ./outputs/t965

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat365 > ./outputs/t966

./schedule.exe  4 2 2  < $ROOT/inputs/input/dat366 > ./outputs/t967

./schedule.exe  5 5 0  < $ROOT/inputs/input/dat367 > ./outputs/t968

./schedule.exe  2 1 2  < $ROOT/inputs/input/dat368 > ./outputs/t969

./schedule.exe  1 4 5  < $ROOT/inputs/input/dat369 > ./outputs/t970

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat370 > ./outputs/t971

./schedule.exe  0 4 4  < $ROOT/inputs/input/dat371 > ./outputs/t972

./schedule.exe  2 0 5  < $ROOT/inputs/input/dat372 > ./outputs/t973

./schedule.exe  4 1 5  < $ROOT/inputs/input/dat373 > ./outputs/t974

./schedule.exe  5 5 4  < $ROOT/inputs/input/dat374 > ./outputs/t975

./schedule.exe  0 5 4  < $ROOT/inputs/input/dat375 > ./outputs/t976

./schedule.exe  2 4 4  < $ROOT/inputs/input/dat376 > ./outputs/t977

./schedule.exe  0 2 1  < $ROOT/inputs/input/dat377 > ./outputs/t978

./schedule.exe  3 3 2  < $ROOT/inputs/input/dat378 > ./outputs/t979

./schedule.exe  2 0 1  < $ROOT/inputs/input/dat379 > ./outputs/t980

./schedule.exe  0 3 3  < $ROOT/inputs/input/dat380 > ./outputs/t981

./schedule.exe  2 4 2  < $ROOT/inputs/input/dat381 > ./outputs/t982

./schedule.exe  0 5 0  < $ROOT/inputs/input/dat382 > ./outputs/t983

./schedule.exe  4 4 0  < $ROOT/inputs/input/dat383 > ./outputs/t984

./schedule.exe  2 5 5  < $ROOT/inputs/input/dat384 > ./outputs/t985

./schedule.exe  0 2 5  < $ROOT/inputs/input/dat385 > ./outputs/t986

./schedule.exe  5 3 1  < $ROOT/inputs/input/dat386 > ./outputs/t987

./schedule.exe  3 1 4  < $ROOT/inputs/input/dat387 > ./outputs/t988

./schedule.exe  5 0 2  < $ROOT/inputs/input/dat388 > ./outputs/t989

./schedule.exe  3 3 1  < $ROOT/inputs/input/dat389 > ./outputs/t990

./schedule.exe  4 4 3  < $ROOT/inputs/input/dat390 > ./outputs/t991

./schedule.exe  4 4 2  < $ROOT/inputs/input/dat391 > ./outputs/t992

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat392 > ./outputs/t993

./schedule.exe  1 3 0  < $ROOT/inputs/input/dat393 > ./outputs/t994

./schedule.exe  5 4 0  < $ROOT/inputs/input/dat394 > ./outputs/t995

./schedule.exe  4 5 2  < $ROOT/inputs/input/dat395 > ./outputs/t996

./schedule.exe  4 3 2  < $ROOT/inputs/input/dat396 > ./outputs/t997

./schedule.exe  3 3 2  < $ROOT/inputs/input/dat397 > ./outputs/t998

./schedule.exe  2 5 4  < $ROOT/inputs/input/dat398 > ./outputs/t999

./schedule.exe  0 0 5  < $ROOT/inputs/input/dat399 > ./outputs/t1000

./schedule.exe  5 4 5  < $ROOT/inputs/input/dat400 > ./outputs/t1001

./schedule.exe  5 0 5  < $ROOT/inputs/input/dat401 > ./outputs/t1002

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat402 > ./outputs/t1003

./schedule.exe  3 5 5  < $ROOT/inputs/input/dat403 > ./outputs/t1004

./schedule.exe  1 3 2  < $ROOT/inputs/input/dat404 > ./outputs/t1005

./schedule.exe  2 3 3  < $ROOT/inputs/input/dat405 > ./outputs/t1006

./schedule.exe  1 2 1  < $ROOT/inputs/input/dat406 > ./outputs/t1007

./schedule.exe  3 4 2  < $ROOT/inputs/input/dat407 > ./outputs/t1008

./schedule.exe  2 2 4  < $ROOT/inputs/input/dat408 > ./outputs/t1009

./schedule.exe  5 4 1  < $ROOT/inputs/input/dat409 > ./outputs/t1010

./schedule.exe  2 3 5  < $ROOT/inputs/input/dat410 > ./outputs/t1011

./schedule.exe  2 2 2  < $ROOT/inputs/input/dat411 > ./outputs/t1012

./schedule.exe  3 1 4  < $ROOT/inputs/input/dat412 > ./outputs/t1013

./schedule.exe  1 4 0  < $ROOT/inputs/input/dat413 > ./outputs/t1014

./schedule.exe  0 1 5  < $ROOT/inputs/input/dat414 > ./outputs/t1015

./schedule.exe  3 2 1  < $ROOT/inputs/input/dat415 > ./outputs/t1016

./schedule.exe  0 1 4  < $ROOT/inputs/input/dat416 > ./outputs/t1017

./schedule.exe  5 0 5  < $ROOT/inputs/input/dat417 > ./outputs/t1018

./schedule.exe  5 1 4  < $ROOT/inputs/input/dat418 > ./outputs/t1019

./schedule.exe  4 3 3  < $ROOT/inputs/input/dat419 > ./outputs/t1020

./schedule.exe  1 2 0  < $ROOT/inputs/input/dat420 > ./outputs/t1021

./schedule.exe  2 5 2  < $ROOT/inputs/input/dat421 > ./outputs/t1022

./schedule.exe  2 3 4  < $ROOT/inputs/input/dat422 > ./outputs/t1023

./schedule.exe  3 4 4  < $ROOT/inputs/input/dat423 > ./outputs/t1024

./schedule.exe  1 0 5  < $ROOT/inputs/input/dat424 > ./outputs/t1025

./schedule.exe  3 3 2  < $ROOT/inputs/input/dat425 > ./outputs/t1026

./schedule.exe  0 3 0  < $ROOT/inputs/input/dat426 > ./outputs/t1027

./schedule.exe  0 2 4  < $ROOT/inputs/input/dat427 > ./outputs/t1028

./schedule.exe  0 1 5  < $ROOT/inputs/input/dat428 > ./outputs/t1029

./schedule.exe  2 5 4  < $ROOT/inputs/input/dat429 > ./outputs/t1030

./schedule.exe  0 4 3  < $ROOT/inputs/input/dat430 > ./outputs/t1031

./schedule.exe  0 1 5  < $ROOT/inputs/input/dat431 > ./outputs/t1032

./schedule.exe  1 2 5  < $ROOT/inputs/input/dat432 > ./outputs/t1033

./schedule.exe  2 4 3  < $ROOT/inputs/input/dat433 > ./outputs/t1034

./schedule.exe  5 0 2  < $ROOT/inputs/input/dat434 > ./outputs/t1035

./schedule.exe  5 4 5  < $ROOT/inputs/input/dat435 > ./outputs/t1036

./schedule.exe  1 4 3  < $ROOT/inputs/input/dat436 > ./outputs/t1037

./schedule.exe  4 1 3  < $ROOT/inputs/input/dat437 > ./outputs/t1038

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat438 > ./outputs/t1039

./schedule.exe  4 1 5  < $ROOT/inputs/input/dat439 > ./outputs/t1040

./schedule.exe  5 1 0  < $ROOT/inputs/input/dat440 > ./outputs/t1041

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat441 > ./outputs/t1042

./schedule.exe  5 3 3  < $ROOT/inputs/input/dat442 > ./outputs/t1043

./schedule.exe  3 1 4  < $ROOT/inputs/input/dat443 > ./outputs/t1044

./schedule.exe  5 5 2  < $ROOT/inputs/input/dat444 > ./outputs/t1045

./schedule.exe  2 4 5  < $ROOT/inputs/input/dat445 > ./outputs/t1046

./schedule.exe  5 1 3  < $ROOT/inputs/input/dat446 > ./outputs/t1047

./schedule.exe  5 0 1  < $ROOT/inputs/input/dat447 > ./outputs/t1048

./schedule.exe  5 0 3  < $ROOT/inputs/input/dat448 > ./outputs/t1049

./schedule.exe  2 4 5  < $ROOT/inputs/input/dat449 > ./outputs/t1050

./schedule.exe  5 0 1  < $ROOT/inputs/input/dat450 > ./outputs/t1051

./schedule.exe  2 4 2  < $ROOT/inputs/input/dat451 > ./outputs/t1052

./schedule.exe  4 2 3  < $ROOT/inputs/input/dat452 > ./outputs/t1053

./schedule.exe  2 5 3  < $ROOT/inputs/input/dat453 > ./outputs/t1054

./schedule.exe  0 4 2  < $ROOT/inputs/input/dat454 > ./outputs/t1055

./schedule.exe  2 4 3  < $ROOT/inputs/input/dat455 > ./outputs/t1056

./schedule.exe  3 2 1  < $ROOT/inputs/input/dat456 > ./outputs/t1057

./schedule.exe  0 0 3  < $ROOT/inputs/input/dat457 > ./outputs/t1058

./schedule.exe  5 0 2  < $ROOT/inputs/input/dat458 > ./outputs/t1059

./schedule.exe  4 2 1  < $ROOT/inputs/input/dat459 > ./outputs/t1060

./schedule.exe  0 0 4  < $ROOT/inputs/input/dat460 > ./outputs/t1061

./schedule.exe  1 2 4  < $ROOT/inputs/input/dat461 > ./outputs/t1062

./schedule.exe  1 5 5  < $ROOT/inputs/input/dat462 > ./outputs/t1063

./schedule.exe  3 0 4  < $ROOT/inputs/input/dat463 > ./outputs/t1064

./schedule.exe  0 2 3  < $ROOT/inputs/input/dat464 > ./outputs/t1065

./schedule.exe  3 1 1  < $ROOT/inputs/input/dat465 > ./outputs/t1066

./schedule.exe  4 1 2  < $ROOT/inputs/input/dat466 > ./outputs/t1067

./schedule.exe  4 3 1  < $ROOT/inputs/input/dat467 > ./outputs/t1068

./schedule.exe  5 1 4  < $ROOT/inputs/input/dat468 > ./outputs/t1069

./schedule.exe  5 1 2  < $ROOT/inputs/input/dat469 > ./outputs/t1070

./schedule.exe  3 3 0  < $ROOT/inputs/input/dat470 > ./outputs/t1071

./schedule.exe  1 2 2  < $ROOT/inputs/input/dat471 > ./outputs/t1072

./schedule.exe  0 3 0  < $ROOT/inputs/input/dat472 > ./outputs/t1073

./schedule.exe  1 0 5  < $ROOT/inputs/input/dat473 > ./outputs/t1074

./schedule.exe  0 4 2  < $ROOT/inputs/input/dat474 > ./outputs/t1075

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat475 > ./outputs/t1076

./schedule.exe  3 0 1  < $ROOT/inputs/input/dat476 > ./outputs/t1077

./schedule.exe  0 0 5  < $ROOT/inputs/input/dat477 > ./outputs/t1078

./schedule.exe  5 3 3  < $ROOT/inputs/input/dat478 > ./outputs/t1079

./schedule.exe  0 1 2  < $ROOT/inputs/input/dat479 > ./outputs/t1080

./schedule.exe  2 3 3  < $ROOT/inputs/input/dat480 > ./outputs/t1081

./schedule.exe  0 4 3  < $ROOT/inputs/input/dat481 > ./outputs/t1082

./schedule.exe  2 0 2  < $ROOT/inputs/input/dat482 > ./outputs/t1083

./schedule.exe  1 5 4  < $ROOT/inputs/input/dat483 > ./outputs/t1084

./schedule.exe  5 5 0  < $ROOT/inputs/input/dat484 > ./outputs/t1085

./schedule.exe  0 3 5  < $ROOT/inputs/input/dat485 > ./outputs/t1086

./schedule.exe  2 1 3  < $ROOT/inputs/input/dat486 > ./outputs/t1087

./schedule.exe  0 2 2  < $ROOT/inputs/input/dat487 > ./outputs/t1088

./schedule.exe  4 0 4  < $ROOT/inputs/input/dat488 > ./outputs/t1089

./schedule.exe  3 3 5  < $ROOT/inputs/input/dat489 > ./outputs/t1090

./schedule.exe  5 5 0  < $ROOT/inputs/input/dat490 > ./outputs/t1091

./schedule.exe  3 5 3  < $ROOT/inputs/input/dat491 > ./outputs/t1092

./schedule.exe  5 4 5  < $ROOT/inputs/input/dat492 > ./outputs/t1093

./schedule.exe  4 5 1  < $ROOT/inputs/input/dat493 > ./outputs/t1094

./schedule.exe  1 2 1  < $ROOT/inputs/input/dat494 > ./outputs/t1095

./schedule.exe  4 3 4  < $ROOT/inputs/input/dat495 > ./outputs/t1096

./schedule.exe  0 4 2  < $ROOT/inputs/input/dat496 > ./outputs/t1097

./schedule.exe  5 4 1  < $ROOT/inputs/input/dat497 > ./outputs/t1098

./schedule.exe  3 2 1  < $ROOT/inputs/input/dat498 > ./outputs/t1099

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat499 > ./outputs/t1100

./schedule.exe  3 1 4  < $ROOT/inputs/input/dat500 > ./outputs/t1101

./schedule.exe  5 4 0  < $ROOT/inputs/input/dat501 > ./outputs/t1102

./schedule.exe  2 3 0  < $ROOT/inputs/input/dat502 > ./outputs/t1103

./schedule.exe  2 5 0  < $ROOT/inputs/input/dat503 > ./outputs/t1104

./schedule.exe  1 1 0  < $ROOT/inputs/input/dat504 > ./outputs/t1105

./schedule.exe  4 5 1  < $ROOT/inputs/input/dat505 > ./outputs/t1106

./schedule.exe  1 0 2  < $ROOT/inputs/input/dat506 > ./outputs/t1107

./schedule.exe  1 5 4  < $ROOT/inputs/input/dat507 > ./outputs/t1108

./schedule.exe  2 5 5  < $ROOT/inputs/input/dat508 > ./outputs/t1109

./schedule.exe  1 0 3  < $ROOT/inputs/input/dat509 > ./outputs/t1110

./schedule.exe  3 1 2  < $ROOT/inputs/input/dat510 > ./outputs/t1111

./schedule.exe  2 4 1  < $ROOT/inputs/input/dat511 > ./outputs/t1112

./schedule.exe  5 2 4  < $ROOT/inputs/input/dat512 > ./outputs/t1113

./schedule.exe  4 5 1  < $ROOT/inputs/input/dat513 > ./outputs/t1114

./schedule.exe  3 1 1  < $ROOT/inputs/input/dat514 > ./outputs/t1115

./schedule.exe  1 3 1  < $ROOT/inputs/input/dat515 > ./outputs/t1116

./schedule.exe  0 0 5  < $ROOT/inputs/input/dat516 > ./outputs/t1117

./schedule.exe  5 5 1  < $ROOT/inputs/input/dat517 > ./outputs/t1118

./schedule.exe  5 0 1  < $ROOT/inputs/input/dat518 > ./outputs/t1119

./schedule.exe  3 5 2  < $ROOT/inputs/input/dat519 > ./outputs/t1120

./schedule.exe  5 5 0  < $ROOT/inputs/input/dat520 > ./outputs/t1121

./schedule.exe  0 1 0  < $ROOT/inputs/input/dat521 > ./outputs/t1122

./schedule.exe  0 0 3  < $ROOT/inputs/input/dat522 > ./outputs/t1123

./schedule.exe  0 1 4  < $ROOT/inputs/input/dat523 > ./outputs/t1124

./schedule.exe  1 4 3  < $ROOT/inputs/input/dat524 > ./outputs/t1125

./schedule.exe  0 2 0  < $ROOT/inputs/input/dat525 > ./outputs/t1126

./schedule.exe  4 0 3  < $ROOT/inputs/input/dat526 > ./outputs/t1127

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat527 > ./outputs/t1128

./schedule.exe  3 0 5  < $ROOT/inputs/input/dat528 > ./outputs/t1129

./schedule.exe  5 3 3  < $ROOT/inputs/input/dat529 > ./outputs/t1130

./schedule.exe  4 5 3  < $ROOT/inputs/input/dat530 > ./outputs/t1131

./schedule.exe  1 0 0  < $ROOT/inputs/input/dat531 > ./outputs/t1132

./schedule.exe  1 4 5  < $ROOT/inputs/input/dat532 > ./outputs/t1133

./schedule.exe  0 4 0  < $ROOT/inputs/input/dat533 > ./outputs/t1134

./schedule.exe  5 5 3  < $ROOT/inputs/input/dat534 > ./outputs/t1135

./schedule.exe  2 1 0  < $ROOT/inputs/input/dat535 > ./outputs/t1136

./schedule.exe  1 0 2  < $ROOT/inputs/input/dat536 > ./outputs/t1137

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat537 > ./outputs/t1138

./schedule.exe  4 3 2  < $ROOT/inputs/input/dat538 > ./outputs/t1139

./schedule.exe  1 0 0  < $ROOT/inputs/input/dat539 > ./outputs/t1140

./schedule.exe  1 0 0  < $ROOT/inputs/input/dat540 > ./outputs/t1141

./schedule.exe  2 5 3  < $ROOT/inputs/input/dat541 > ./outputs/t1142

./schedule.exe  2 3 2  < $ROOT/inputs/input/dat542 > ./outputs/t1143

./schedule.exe  4 0 5  < $ROOT/inputs/input/dat543 > ./outputs/t1144

./schedule.exe  2 4 5  < $ROOT/inputs/input/dat544 > ./outputs/t1145

./schedule.exe  4 4 2  < $ROOT/inputs/input/dat545 > ./outputs/t1146

./schedule.exe  5 3 4  < $ROOT/inputs/input/dat546 > ./outputs/t1147

./schedule.exe  2 1 5  < $ROOT/inputs/input/dat547 > ./outputs/t1148

./schedule.exe  5 5 4  < $ROOT/inputs/input/dat548 > ./outputs/t1149

./schedule.exe  2 3 3  < $ROOT/inputs/input/dat549 > ./outputs/t1150

./schedule.exe  0 0 3  < $ROOT/inputs/input/dat550 > ./outputs/t1151

./schedule.exe  4 0 3  < $ROOT/inputs/input/dat551 > ./outputs/t1152

./schedule.exe  3 2 2  < $ROOT/inputs/input/dat552 > ./outputs/t1153

./schedule.exe  2 1 0  < $ROOT/inputs/input/dat553 > ./outputs/t1154

./schedule.exe  4 3 2  < $ROOT/inputs/input/dat554 > ./outputs/t1155

./schedule.exe  0 0 0  < $ROOT/inputs/input/dat555 > ./outputs/t1156

./schedule.exe  4 1 3  < $ROOT/inputs/input/dat556 > ./outputs/t1157

./schedule.exe  1 4 2  < $ROOT/inputs/input/dat557 > ./outputs/t1158

./schedule.exe  5 5 1  < $ROOT/inputs/input/dat558 > ./outputs/t1159

./schedule.exe  4 3 2  < $ROOT/inputs/input/dat559 > ./outputs/t1160

./schedule.exe  0 4 2  < $ROOT/inputs/input/dat560 > ./outputs/t1161

./schedule.exe  5 5 0  < $ROOT/inputs/input/dat561 > ./outputs/t1162

./schedule.exe  4 2 2  < $ROOT/inputs/input/dat562 > ./outputs/t1163

./schedule.exe  3 5 2  < $ROOT/inputs/input/dat563 > ./outputs/t1164

./schedule.exe  0 4 2  < $ROOT/inputs/input/dat564 > ./outputs/t1165

./schedule.exe  2 5 2  < $ROOT/inputs/input/dat565 > ./outputs/t1166

./schedule.exe  2 5 1  < $ROOT/inputs/input/dat566 > ./outputs/t1167

./schedule.exe  0 4 1  < $ROOT/inputs/input/dat567 > ./outputs/t1168

./schedule.exe  4 0 0  < $ROOT/inputs/input/dat568 > ./outputs/t1169

./schedule.exe  4 0 5  < $ROOT/inputs/input/dat569 > ./outputs/t1170

./schedule.exe  1 4 2  < $ROOT/inputs/input/dat570 > ./outputs/t1171

./schedule.exe  1 5 1  < $ROOT/inputs/input/dat571 > ./outputs/t1172

./schedule.exe  2 2 2  < $ROOT/inputs/input/dat572 > ./outputs/t1173

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat573 > ./outputs/t1174

./schedule.exe  0 0 5  < $ROOT/inputs/input/dat574 > ./outputs/t1175

./schedule.exe  2 1 5  < $ROOT/inputs/input/dat575 > ./outputs/t1176

./schedule.exe  3 1 0  < $ROOT/inputs/input/dat576 > ./outputs/t1177

./schedule.exe  0 2 2  < $ROOT/inputs/input/dat577 > ./outputs/t1178

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat578 > ./outputs/t1179

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat579 > ./outputs/t1180

./schedule.exe  3 3 2  < $ROOT/inputs/input/dat580 > ./outputs/t1181

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat581 > ./outputs/t1182

./schedule.exe  3 1 3  < $ROOT/inputs/input/dat582 > ./outputs/t1183

./schedule.exe  1 2 2  < $ROOT/inputs/input/dat583 > ./outputs/t1184

./schedule.exe  5 4 4  < $ROOT/inputs/input/dat584 > ./outputs/t1185

./schedule.exe  3 0 5  < $ROOT/inputs/input/dat585 > ./outputs/t1186

./schedule.exe  1 0 3  < $ROOT/inputs/input/dat586 > ./outputs/t1187

./schedule.exe  2 3 4  < $ROOT/inputs/input/dat587 > ./outputs/t1188

./schedule.exe  5 1 0  < $ROOT/inputs/input/dat588 > ./outputs/t1189

./schedule.exe  3 3 1  < $ROOT/inputs/input/dat589 > ./outputs/t1190

./schedule.exe  1 4 2  < $ROOT/inputs/input/dat590 > ./outputs/t1191

./schedule.exe  5 0 4  < $ROOT/inputs/input/dat591 > ./outputs/t1192

./schedule.exe  5 3 5  < $ROOT/inputs/input/dat592 > ./outputs/t1193

./schedule.exe  2 0 0  < $ROOT/inputs/input/dat593 > ./outputs/t1194

./schedule.exe  5 2 4  < $ROOT/inputs/input/dat594 > ./outputs/t1195

./schedule.exe  3 5 3  < $ROOT/inputs/input/dat595 > ./outputs/t1196

./schedule.exe  5 1 1  < $ROOT/inputs/input/dat596 > ./outputs/t1197

./schedule.exe  4 5 0  < $ROOT/inputs/input/dat597 > ./outputs/t1198

./schedule.exe  3 2 5  < $ROOT/inputs/input/dat598 > ./outputs/t1199

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat599 > ./outputs/t1200

./schedule.exe  0 1 2  < $ROOT/inputs/input/dat600 > ./outputs/t1201

./schedule.exe  0 1 0  < $ROOT/inputs/input/dat601 > ./outputs/t1202

./schedule.exe  1 4 2  < $ROOT/inputs/input/dat602 > ./outputs/t1203

./schedule.exe  2 3 5  < $ROOT/inputs/input/dat603 > ./outputs/t1204

./schedule.exe  3 1 0  < $ROOT/inputs/input/dat604 > ./outputs/t1205

./schedule.exe  1 5 1  < $ROOT/inputs/input/dat605 > ./outputs/t1206

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat606 > ./outputs/t1207

./schedule.exe  3 4 1  < $ROOT/inputs/input/dat607 > ./outputs/t1208

./schedule.exe  5 4 3  < $ROOT/inputs/input/dat608 > ./outputs/t1209

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat609 > ./outputs/t1210

./schedule.exe  5 4 3  < $ROOT/inputs/input/dat610 > ./outputs/t1211

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat612 > ./outputs/t1212

./schedule.exe  0 1 5  < $ROOT/inputs/input/dat613 > ./outputs/t1213

./schedule.exe  4 4 0  < $ROOT/inputs/input/dat614 > ./outputs/t1214

./schedule.exe  5 1 5  < $ROOT/inputs/input/dat615 > ./outputs/t1215

./schedule.exe  3 3 5  < $ROOT/inputs/input/dat616 > ./outputs/t1216

./schedule.exe  1 0 1  < $ROOT/inputs/input/dat617 > ./outputs/t1217

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat618 > ./outputs/t1218

./schedule.exe  0 4 0  < $ROOT/inputs/input/dat619 > ./outputs/t1219

./schedule.exe  1 2 3  < $ROOT/inputs/input/dat620 > ./outputs/t1220

./schedule.exe  2 2 3  < $ROOT/inputs/input/dat621 > ./outputs/t1221

./schedule.exe  0 0 0  < $ROOT/inputs/input/dat622 > ./outputs/t1222

./schedule.exe  5 5 3  < $ROOT/inputs/input/dat623 > ./outputs/t1223

./schedule.exe  1 0 5  < $ROOT/inputs/input/dat624 > ./outputs/t1224

./schedule.exe  0 4 5  < $ROOT/inputs/input/dat625 > ./outputs/t1225

./schedule.exe  3 5 3  < $ROOT/inputs/input/dat626 > ./outputs/t1226

./schedule.exe  5 0 3  < $ROOT/inputs/input/dat627 > ./outputs/t1227

./schedule.exe  3 4 1  < $ROOT/inputs/input/dat628 > ./outputs/t1228

./schedule.exe  4 5 5  < $ROOT/inputs/input/dat629 > ./outputs/t1229

./schedule.exe  3 0 5  < $ROOT/inputs/input/dat630 > ./outputs/t1230

./schedule.exe  4 4 3  < $ROOT/inputs/input/dat631 > ./outputs/t1231

./schedule.exe  4 1 5  < $ROOT/inputs/input/dat632 > ./outputs/t1232

./schedule.exe  3 2 1  < $ROOT/inputs/input/dat633 > ./outputs/t1233

./schedule.exe  4 5 4  < $ROOT/inputs/input/dat634 > ./outputs/t1234

./schedule.exe  1 0 2  < $ROOT/inputs/input/dat635 > ./outputs/t1235

./schedule.exe  5 4 5  < $ROOT/inputs/input/dat636 > ./outputs/t1236

./schedule.exe  4 5 1  < $ROOT/inputs/input/dat637 > ./outputs/t1237

./schedule.exe  0 2 0  < $ROOT/inputs/input/dat638 > ./outputs/t1238

./schedule.exe  1 3 4  < $ROOT/inputs/input/dat639 > ./outputs/t1239

./schedule.exe  0 0 4  < $ROOT/inputs/input/dat640 > ./outputs/t1240

./schedule.exe  3 4 4  < $ROOT/inputs/input/dat641 > ./outputs/t1241

./schedule.exe  2 5 0  < $ROOT/inputs/input/dat642 > ./outputs/t1242

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat643 > ./outputs/t1243

./schedule.exe  1 3 3  < $ROOT/inputs/input/dat644 > ./outputs/t1244

./schedule.exe  3 5 1  < $ROOT/inputs/input/dat645 > ./outputs/t1245

./schedule.exe  0 1 2  < $ROOT/inputs/input/dat646 > ./outputs/t1246

./schedule.exe  5 5 2  < $ROOT/inputs/input/dat647 > ./outputs/t1247

./schedule.exe  4 2 3  < $ROOT/inputs/input/dat648 > ./outputs/t1248

./schedule.exe  4 3 5  < $ROOT/inputs/input/dat649 > ./outputs/t1249

./schedule.exe  2 1 2  < $ROOT/inputs/input/dat650 > ./outputs/t1250

./schedule.exe  4 4 4  < $ROOT/inputs/input/dat651 > ./outputs/t1251

./schedule.exe  4 1 2  < $ROOT/inputs/input/dat652 > ./outputs/t1252

./schedule.exe  2 5 4  < $ROOT/inputs/input/dat653 > ./outputs/t1253

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat654 > ./outputs/t1254

./schedule.exe  1 5 0  < $ROOT/inputs/input/dat655 > ./outputs/t1255

./schedule.exe  0 4 5  < $ROOT/inputs/input/dat656 > ./outputs/t1256

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat657 > ./outputs/t1257

./schedule.exe  0 3 3  < $ROOT/inputs/input/dat658 > ./outputs/t1258

./schedule.exe  3 2 0  < $ROOT/inputs/input/dat659 > ./outputs/t1259

./schedule.exe  0 0 3  < $ROOT/inputs/input/dat660 > ./outputs/t1260

./schedule.exe  3 4 1  < $ROOT/inputs/input/dat661 > ./outputs/t1261

./schedule.exe  5 0 5  < $ROOT/inputs/input/dat662 > ./outputs/t1262

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat663 > ./outputs/t1263

./schedule.exe  3 5 1  < $ROOT/inputs/input/dat664 > ./outputs/t1264

./schedule.exe  4 4 0  < $ROOT/inputs/input/dat665 > ./outputs/t1265

./schedule.exe  3 1 1  < $ROOT/inputs/input/dat666 > ./outputs/t1266

./schedule.exe  4 4 3  < $ROOT/inputs/input/dat667 > ./outputs/t1267

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat668 > ./outputs/t1268

./schedule.exe  2 4 3  < $ROOT/inputs/input/dat669 > ./outputs/t1269

./schedule.exe  4 0 2  < $ROOT/inputs/input/dat670 > ./outputs/t1270

./schedule.exe  4 0 4  < $ROOT/inputs/input/dat671 > ./outputs/t1271

./schedule.exe  0 2 2  < $ROOT/inputs/input/dat672 > ./outputs/t1272

./schedule.exe  5 0 3  < $ROOT/inputs/input/dat673 > ./outputs/t1273

./schedule.exe  1 1 1  < $ROOT/inputs/input/dat674 > ./outputs/t1274

./schedule.exe  3 5 1  < $ROOT/inputs/input/dat675 > ./outputs/t1275

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat676 > ./outputs/t1276

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat677 > ./outputs/t1277

./schedule.exe  2 3 1  < $ROOT/inputs/input/dat678 > ./outputs/t1278

./schedule.exe  0 3 3  < $ROOT/inputs/input/dat679 > ./outputs/t1279

./schedule.exe  2 5 1  < $ROOT/inputs/input/dat680 > ./outputs/t1280

./schedule.exe  5 4 3  < $ROOT/inputs/input/dat681 > ./outputs/t1281

./schedule.exe  3 0 0  < $ROOT/inputs/input/dat682 > ./outputs/t1282

./schedule.exe  2 3 0  < $ROOT/inputs/input/dat683 > ./outputs/t1283

./schedule.exe  0 3 3  < $ROOT/inputs/input/dat684 > ./outputs/t1284

./schedule.exe  1 1 0  < $ROOT/inputs/input/dat685 > ./outputs/t1285

./schedule.exe  0 0 1  < $ROOT/inputs/input/dat686 > ./outputs/t1286

./schedule.exe  0 3 1  < $ROOT/inputs/input/dat687 > ./outputs/t1287

./schedule.exe  5 2 4  < $ROOT/inputs/input/dat688 > ./outputs/t1288

./schedule.exe  5 1 4  < $ROOT/inputs/input/dat689 > ./outputs/t1289

./schedule.exe  2 5 1  < $ROOT/inputs/input/dat690 > ./outputs/t1290

./schedule.exe  0 5 5  < $ROOT/inputs/input/dat691 > ./outputs/t1291

./schedule.exe  3 0 0  < $ROOT/inputs/input/dat692 > ./outputs/t1292

./schedule.exe  3 2 4  < $ROOT/inputs/input/dat693 > ./outputs/t1293

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat694 > ./outputs/t1294

./schedule.exe  4 1 2  < $ROOT/inputs/input/dat695 > ./outputs/t1295

./schedule.exe  2 3 5  < $ROOT/inputs/input/dat696 > ./outputs/t1296

./schedule.exe  3 1 1  < $ROOT/inputs/input/dat697 > ./outputs/t1297

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat698 > ./outputs/t1298

./schedule.exe  0 1 3  < $ROOT/inputs/input/dat699 > ./outputs/t1299

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat700 > ./outputs/t1300

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat701 > ./outputs/t1301

./schedule.exe  0 2 1  < $ROOT/inputs/input/dat702 > ./outputs/t1302

./schedule.exe  2 0 4  < $ROOT/inputs/input/dat703 > ./outputs/t1303

./schedule.exe  3 4 5  < $ROOT/inputs/input/dat704 > ./outputs/t1304

./schedule.exe  5 5 0  < $ROOT/inputs/input/dat705 > ./outputs/t1305

./schedule.exe  3 5 2  < $ROOT/inputs/input/dat706 > ./outputs/t1306

./schedule.exe  0 2 3  < $ROOT/inputs/input/dat707 > ./outputs/t1307

./schedule.exe  4 1 1  < $ROOT/inputs/input/dat708 > ./outputs/t1308

./schedule.exe  3 0 2  < $ROOT/inputs/input/dat709 > ./outputs/t1309

./schedule.exe  1 1 3  < $ROOT/inputs/input/dat710 > ./outputs/t1310

./schedule.exe  0 0 3  < $ROOT/inputs/input/dat711 > ./outputs/t1311

./schedule.exe  4 2 2  < $ROOT/inputs/input/dat712 > ./outputs/t1312

./schedule.exe  5 1 3  < $ROOT/inputs/input/dat713 > ./outputs/t1313

./schedule.exe  4 4 0  < $ROOT/inputs/input/dat714 > ./outputs/t1314

./schedule.exe  5 0 0  < $ROOT/inputs/input/dat715 > ./outputs/t1315

./schedule.exe  0 1 3  < $ROOT/inputs/input/dat716 > ./outputs/t1316

./schedule.exe  0 5 2  < $ROOT/inputs/input/dat717 > ./outputs/t1317

./schedule.exe  1 5 2  < $ROOT/inputs/input/dat718 > ./outputs/t1318

./schedule.exe  0 5 3  < $ROOT/inputs/input/dat719 > ./outputs/t1319

./schedule.exe  3 3 4  < $ROOT/inputs/input/dat720 > ./outputs/t1320

./schedule.exe  2 5 4  < $ROOT/inputs/input/dat721 > ./outputs/t1321

./schedule.exe  4 4 1  < $ROOT/inputs/input/dat722 > ./outputs/t1322

./schedule.exe  0 1 5  < $ROOT/inputs/input/dat723 > ./outputs/t1323

./schedule.exe  2 1 0  < $ROOT/inputs/input/dat724 > ./outputs/t1324

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat725 > ./outputs/t1325

./schedule.exe  2 0 3  < $ROOT/inputs/input/dat726 > ./outputs/t1326

./schedule.exe  5 3 0  < $ROOT/inputs/input/dat727 > ./outputs/t1327

./schedule.exe  2 2 5  < $ROOT/inputs/input/dat728 > ./outputs/t1328

./schedule.exe  0 0 2  < $ROOT/inputs/input/dat729 > ./outputs/t1329

./schedule.exe  0 5 1  < $ROOT/inputs/input/dat730 > ./outputs/t1330

./schedule.exe  0 2 3  < $ROOT/inputs/input/dat731 > ./outputs/t1331

./schedule.exe  0 4 5  < $ROOT/inputs/input/dat732 > ./outputs/t1332

./schedule.exe  3 5 4  < $ROOT/inputs/input/dat733 > ./outputs/t1333

./schedule.exe  2 5 0  < $ROOT/inputs/input/dat734 > ./outputs/t1334

./schedule.exe  3 3 3  < $ROOT/inputs/input/dat735 > ./outputs/t1335

./schedule.exe  2 1 1  < $ROOT/inputs/input/dat736 > ./outputs/t1336

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat737 > ./outputs/t1337

./schedule.exe  5 4 1  < $ROOT/inputs/input/dat738 > ./outputs/t1338

./schedule.exe  3 3 0  < $ROOT/inputs/input/dat739 > ./outputs/t1339

./schedule.exe  0 0 1  < $ROOT/inputs/input/dat740 > ./outputs/t1340

./schedule.exe  5 3 2  < $ROOT/inputs/input/dat741 > ./outputs/t1341

./schedule.exe  5 5 5  < $ROOT/inputs/input/dat742 > ./outputs/t1342

./schedule.exe  5 4 3  < $ROOT/inputs/input/dat743 > ./outputs/t1343

./schedule.exe  4 3 2  < $ROOT/inputs/input/dat744 > ./outputs/t1344

./schedule.exe  5 5 4  < $ROOT/inputs/input/dat745 > ./outputs/t1345

./schedule.exe  1 1 5  < $ROOT/inputs/input/dat746 > ./outputs/t1346

./schedule.exe  0 4 4  < $ROOT/inputs/input/dat747 > ./outputs/t1347

./schedule.exe  0 0 1  < $ROOT/inputs/input/dat748 > ./outputs/t1348

./schedule.exe  4 5 3  < $ROOT/inputs/input/dat749 > ./outputs/t1349

./schedule.exe  4 4 5  < $ROOT/inputs/input/dat750 > ./outputs/t1350

./schedule.exe  3 1 5  < $ROOT/inputs/input/dat751 > ./outputs/t1351

./schedule.exe  4 4 2  < $ROOT/inputs/input/dat752 > ./outputs/t1352

./schedule.exe  2 1 0  < $ROOT/inputs/input/dat753 > ./outputs/t1353

./schedule.exe  2 1 2  < $ROOT/inputs/input/dat754 > ./outputs/t1354

./schedule.exe  0 4 1  < $ROOT/inputs/input/dat755 > ./outputs/t1355

./schedule.exe  4 1 0  < $ROOT/inputs/input/dat756 > ./outputs/t1356

./schedule.exe  5 5 2  < $ROOT/inputs/input/dat757 > ./outputs/t1357

./schedule.exe  2 4 5  < $ROOT/inputs/input/dat758 > ./outputs/t1358

./schedule.exe  3 5 0  < $ROOT/inputs/input/dat759 > ./outputs/t1359

./schedule.exe  1 2 4  < $ROOT/inputs/input/dat760 > ./outputs/t1360

./schedule.exe  3 4 4  < $ROOT/inputs/input/dat761 > ./outputs/t1361

./schedule.exe  4 2 1  < $ROOT/inputs/input/dat762 > ./outputs/t1362

./schedule.exe  3 3 0  < $ROOT/inputs/input/dat763 > ./outputs/t1363

./schedule.exe  3 4 3  < $ROOT/inputs/input/dat764 > ./outputs/t1364

./schedule.exe  0 5 5  < $ROOT/inputs/input/dat765 > ./outputs/t1365

./schedule.exe  5 4 0  < $ROOT/inputs/input/dat766 > ./outputs/t1366

./schedule.exe  0 3 2  < $ROOT/inputs/input/dat767 > ./outputs/t1367

./schedule.exe  2 3 0  < $ROOT/inputs/input/dat768 > ./outputs/t1368

./schedule.exe  5 0 1  < $ROOT/inputs/input/dat769 > ./outputs/t1369

./schedule.exe  0 5 1  < $ROOT/inputs/input/dat770 > ./outputs/t1370

./schedule.exe  4 4 5  < $ROOT/inputs/input/dat771 > ./outputs/t1371

./schedule.exe  0 2 2  < $ROOT/inputs/input/dat772 > ./outputs/t1372

./schedule.exe  1 1 1  < $ROOT/inputs/input/dat773 > ./outputs/t1373

./schedule.exe  0 2 0  < $ROOT/inputs/input/dat774 > ./outputs/t1374

./schedule.exe  0 3 0  < $ROOT/inputs/input/dat775 > ./outputs/t1375

./schedule.exe  4 5 2  < $ROOT/inputs/input/dat776 > ./outputs/t1376

./schedule.exe  4 2 1  < $ROOT/inputs/input/dat777 > ./outputs/t1377

./schedule.exe  2 2 5  < $ROOT/inputs/input/dat778 > ./outputs/t1378

./schedule.exe  5 2 3  < $ROOT/inputs/input/dat779 > ./outputs/t1379

./schedule.exe  3 1 2  < $ROOT/inputs/input/dat780 > ./outputs/t1380

./schedule.exe  3 0 3  < $ROOT/inputs/input/dat781 > ./outputs/t1381

./schedule.exe  5 4 3  < $ROOT/inputs/input/dat782 > ./outputs/t1382

./schedule.exe  1 3 2  < $ROOT/inputs/input/dat783 > ./outputs/t1383

./schedule.exe  3 0 0  < $ROOT/inputs/input/dat784 > ./outputs/t1384

./schedule.exe  4 2 5  < $ROOT/inputs/input/dat785 > ./outputs/t1385

./schedule.exe  4 3 5  < $ROOT/inputs/input/dat786 > ./outputs/t1386

./schedule.exe  4 2 4  < $ROOT/inputs/input/dat787 > ./outputs/t1387

./schedule.exe  1 5 4  < $ROOT/inputs/input/dat788 > ./outputs/t1388

./schedule.exe  4 0 1  < $ROOT/inputs/input/dat789 > ./outputs/t1389

./schedule.exe  3 5 4  < $ROOT/inputs/input/dat790 > ./outputs/t1390

./schedule.exe  2 3 5  < $ROOT/inputs/input/dat791 > ./outputs/t1391

./schedule.exe  1 3 0  < $ROOT/inputs/input/dat792 > ./outputs/t1392

./schedule.exe  0 2 4  < $ROOT/inputs/input/dat793 > ./outputs/t1393

./schedule.exe  2 4 1  < $ROOT/inputs/input/dat794 > ./outputs/t1394

./schedule.exe  2 0 0  < $ROOT/inputs/input/dat795 > ./outputs/t1395

./schedule.exe  5 0 2  < $ROOT/inputs/input/dat796 > ./outputs/t1396

./schedule.exe  5 0 1  < $ROOT/inputs/input/dat797 > ./outputs/t1397

./schedule.exe  0 4 5  < $ROOT/inputs/input/dat798 > ./outputs/t1398

./schedule.exe  5 5 3  < $ROOT/inputs/input/dat800 > ./outputs/t1399

./schedule.exe  2 2 1  < $ROOT/inputs/input/dat799 > ./outputs/t1400

./schedule.exe 1 1 1  < $ROOT/inputs/input/ad.1 > ./outputs/t1401

./schedule.exe 1 1 0  < $ROOT/inputs/input/ad.2 > ./outputs/t1402

./schedule.exe 1 2  < $ROOT/inputs/input/ad.1 > ./outputs/t1403

./schedule.exe 1  < $ROOT/inputs/input/ad.1 > ./outputs/t1404

./schedule.exe  < $ROOT/inputs/input/ad.1 > ./outputs/t1405

./schedule.exe 1 2 3 4  < $ROOT/inputs/input/ad.1 > ./outputs/t1406

./schedule.exe 7 1 9  < $ROOT/inputs/input/add.58 > ./outputs/t1407

./schedule.exe 7 1 4  < $ROOT/inputs/input/add.100 > ./outputs/t1408

./schedule.exe 3 5 9  < $ROOT/inputs/input/add.95 > ./outputs/t1409

./schedule.exe 9 7 2  < $ROOT/inputs/input/add.0 > ./outputs/t1410

./schedule.exe 0 2 6  < $ROOT/inputs/input/add.52 > ./outputs/t1411

./schedule.exe 3 2 0  < $ROOT/inputs/input/add.48 > ./outputs/t1412

./schedule.exe 10 5 0  < $ROOT/inputs/input/add.20 > ./outputs/t1413

./schedule.exe 7 4 10  < $ROOT/inputs/input/add.37 > ./outputs/t1414

./schedule.exe 9 2 0  < $ROOT/inputs/input/add.13 > ./outputs/t1415

./schedule.exe 9 1 2  < $ROOT/inputs/input/add.14 > ./outputs/t1416

./schedule.exe 1 3 10  < $ROOT/inputs/input/add.100 > ./outputs/t1417

./schedule.exe 1 2 1  < $ROOT/inputs/input/add.0 > ./outputs/t1418

./schedule.exe 5 5 4  < $ROOT/inputs/input/add.11 > ./outputs/t1419

./schedule.exe 1 6 10  < $ROOT/inputs/input/add.38 > ./outputs/t1420

./schedule.exe 4 0 8  < $ROOT/inputs/input/add.92 > ./outputs/t1421

./schedule.exe 1 10 8  < $ROOT/inputs/input/add.50 > ./outputs/t1422

./schedule.exe 1 4 5  < $ROOT/inputs/input/add.51 > ./outputs/t1423

./schedule.exe 9 9 3  < $ROOT/inputs/input/add.43 > ./outputs/t1424

./schedule.exe 2 6 6  < $ROOT/inputs/input/add.78 > ./outputs/t1425

./schedule.exe 1 7 4  < $ROOT/inputs/input/add.42 > ./outputs/t1426

./schedule.exe 3 1 0  < $ROOT/inputs/input/add.33 > ./outputs/t1427

./schedule.exe 3 2 2  < $ROOT/inputs/input/add.56 > ./outputs/t1428

./schedule.exe 2 7 9  < $ROOT/inputs/input/add.57 > ./outputs/t1429

./schedule.exe 0 0 7  < $ROOT/inputs/input/add.34 > ./outputs/t1430

./schedule.exe 3 6 5  < $ROOT/inputs/input/add.86 > ./outputs/t1431

./schedule.exe 4 6 2  < $ROOT/inputs/input/add.97 > ./outputs/t1432

./schedule.exe 5 10 5  < $ROOT/inputs/input/add.52 > ./outputs/t1433

./schedule.exe 9 3 10  < $ROOT/inputs/input/add.73 > ./outputs/t1434

./schedule.exe 6 10 6  < $ROOT/inputs/input/add.69 > ./outputs/t1435

./schedule.exe 2 0 9  < $ROOT/inputs/input/add.53 > ./outputs/t1436

./schedule.exe 1 0 4  < $ROOT/inputs/input/add.77 > ./outputs/t1437

./schedule.exe 6 5 9  < $ROOT/inputs/input/add.32 > ./outputs/t1438

./schedule.exe 4 3 7  < $ROOT/inputs/input/add.82 > ./outputs/t1439

./schedule.exe 6 6 0  < $ROOT/inputs/input/add.19 > ./outputs/t1440

./schedule.exe 3 3 4  < $ROOT/inputs/input/add.85 > ./outputs/t1441

./schedule.exe 1 10 6  < $ROOT/inputs/input/add.7 > ./outputs/t1442

./schedule.exe 2 0 9  < $ROOT/inputs/input/add.15 > ./outputs/t1443

./schedule.exe 4 7 0  < $ROOT/inputs/input/add.90 > ./outputs/t1444

./schedule.exe 6 0 3  < $ROOT/inputs/input/add.91 > ./outputs/t1445

./schedule.exe 3 3 0  < $ROOT/inputs/input/add.23 > ./outputs/t1446

./schedule.exe 7 9 2  < $ROOT/inputs/input/add.50 > ./outputs/t1447

./schedule.exe 4 10 7  < $ROOT/inputs/input/add.83 > ./outputs/t1448

./schedule.exe 2 2 10  < $ROOT/inputs/input/add.77 > ./outputs/t1449

./schedule.exe 1 5 3  < $ROOT/inputs/input/add.11 > ./outputs/t1450

./schedule.exe 2 4 3  < $ROOT/inputs/input/add.37 > ./outputs/t1451

./schedule.exe 3 2 3  < $ROOT/inputs/input/add.65 > ./outputs/t1452

./schedule.exe 7 4 2  < $ROOT/inputs/input/add.37 > ./outputs/t1453

./schedule.exe 5 0 9  < $ROOT/inputs/input/add.64 > ./outputs/t1454

./schedule.exe 3 0 7  < $ROOT/inputs/input/add.73 > ./outputs/t1455

./schedule.exe 4 8 9  < $ROOT/inputs/input/add.70 > ./outputs/t1456

./schedule.exe 10 10 8  < $ROOT/inputs/input/add.26 > ./outputs/t1457

./schedule.exe 2 8 6  < $ROOT/inputs/input/add.21 > ./outputs/t1458

./schedule.exe 10 2 1  < $ROOT/inputs/input/add.6 > ./outputs/t1459

./schedule.exe 0 4 10  < $ROOT/inputs/input/add.82 > ./outputs/t1460

./schedule.exe 7 0 3  < $ROOT/inputs/input/add.48 > ./outputs/t1461

./schedule.exe 9 1 6  < $ROOT/inputs/input/add.83 > ./outputs/t1462

./schedule.exe 3 9 10  < $ROOT/inputs/input/add.9 > ./outputs/t1463

./schedule.exe 10 3 7  < $ROOT/inputs/input/add.20 > ./outputs/t1464

./schedule.exe 1 1 0  < $ROOT/inputs/input/add.91 > ./outputs/t1465

./schedule.exe 6 9 8  < $ROOT/inputs/input/add.78 > ./outputs/t1466

./schedule.exe 0 7 6  < $ROOT/inputs/input/add.45 > ./outputs/t1467

./schedule.exe 8 0 2  < $ROOT/inputs/input/add.12 > ./outputs/t1468

./schedule.exe 7 1 10  < $ROOT/inputs/input/add.25 > ./outputs/t1469

./schedule.exe 8 2 7  < $ROOT/inputs/input/add.68 > ./outputs/t1470

./schedule.exe 0 6 1  < $ROOT/inputs/input/add.39 > ./outputs/t1471

./schedule.exe 4 5 5  < $ROOT/inputs/input/add.62 > ./outputs/t1472

./schedule.exe 7 2 9  < $ROOT/inputs/input/add.72 > ./outputs/t1473

./schedule.exe 10 10 6  < $ROOT/inputs/input/add.35 > ./outputs/t1474

./schedule.exe 3 3 2  < $ROOT/inputs/input/add.74 > ./outputs/t1475

./schedule.exe 4 7 2  < $ROOT/inputs/input/add.47 > ./outputs/t1476

./schedule.exe 8 8 0  < $ROOT/inputs/input/add.54 > ./outputs/t1477

./schedule.exe 3 8 5  < $ROOT/inputs/input/add.48 > ./outputs/t1478

./schedule.exe 8 6 3  < $ROOT/inputs/input/add.11 > ./outputs/t1479

./schedule.exe 2 10 7  < $ROOT/inputs/input/add.91 > ./outputs/t1480

./schedule.exe 4 4 3  < $ROOT/inputs/input/add.97 > ./outputs/t1481

./schedule.exe 8 4 0  < $ROOT/inputs/input/add.37 > ./outputs/t1482

./schedule.exe 7 1 1  < $ROOT/inputs/input/add.88 > ./outputs/t1483

./schedule.exe 6 9 10  < $ROOT/inputs/input/add.50 > ./outputs/t1484

./schedule.exe 0 1 8  < $ROOT/inputs/input/add.75 > ./outputs/t1485

./schedule.exe 10 4 10  < $ROOT/inputs/input/add.3 > ./outputs/t1486

./schedule.exe 5 10 7  < $ROOT/inputs/input/add.22 > ./outputs/t1487

./schedule.exe 2 3 9  < $ROOT/inputs/input/add.95 > ./outputs/t1488

./schedule.exe 4 2 9  < $ROOT/inputs/input/add.60 > ./outputs/t1489

./schedule.exe 0 9 2  < $ROOT/inputs/input/add.31 > ./outputs/t1490

./schedule.exe 1 2 6  < $ROOT/inputs/input/add.45 > ./outputs/t1491

./schedule.exe 5 2 0  < $ROOT/inputs/input/add.34 > ./outputs/t1492

./schedule.exe 9 8 2  < $ROOT/inputs/input/add.77 > ./outputs/t1493

./schedule.exe 5 4 3  < $ROOT/inputs/input/add.29 > ./outputs/t1494

./schedule.exe 1 10 8  < $ROOT/inputs/input/add.22 > ./outputs/t1495

./schedule.exe 2 9 3  < $ROOT/inputs/input/add.38 > ./outputs/t1496

./schedule.exe 10 10 5  < $ROOT/inputs/input/add.89 > ./outputs/t1497

./schedule.exe 0 6 3  < $ROOT/inputs/input/add.43 > ./outputs/t1498

./schedule.exe 2 7 0  < $ROOT/inputs/input/add.94 > ./outputs/t1499

./schedule.exe 0 0 5  < $ROOT/inputs/input/add.79 > ./outputs/t1500

./schedule.exe 10 2 4  < $ROOT/inputs/input/add.17 > ./outputs/t1501

./schedule.exe 10 4 0  < $ROOT/inputs/input/add.36 > ./outputs/t1502

./schedule.exe 4 1 2  < $ROOT/inputs/input/add.20 > ./outputs/t1503

./schedule.exe 9 6 5  < $ROOT/inputs/input/add.86 > ./outputs/t1504

./schedule.exe 7 7 3  < $ROOT/inputs/input/add.11 > ./outputs/t1505

./schedule.exe 0 1 8  < $ROOT/inputs/input/add.67 > ./outputs/t1506

./schedule.exe 7 1 9  < $ROOT/inputs/input/adt.58 > ./outputs/t1507

./schedule.exe 7 1 4  < $ROOT/inputs/input/adt.100 > ./outputs/t1508

./schedule.exe 3 5 9  < $ROOT/inputs/input/adt.95 > ./outputs/t1509

./schedule.exe 9 7 2  < $ROOT/inputs/input/adt.0 > ./outputs/t1510

./schedule.exe 0 2 6  < $ROOT/inputs/input/adt.52 > ./outputs/t1511

./schedule.exe 3 2 0  < $ROOT/inputs/input/adt.48 > ./outputs/t1512

./schedule.exe 10 5 0  < $ROOT/inputs/input/adt.20 > ./outputs/t1513

./schedule.exe 10 5 10  < $ROOT/inputs/input/adt.3 > ./outputs/t1514

./schedule.exe 5 7 8  < $ROOT/inputs/input/adt.89 > ./outputs/t1515

./schedule.exe 7 5 3  < $ROOT/inputs/input/adt.75 > ./outputs/t1516

./schedule.exe 1 10 0  < $ROOT/inputs/input/adt.93 > ./outputs/t1517

./schedule.exe 2 9 9  < $ROOT/inputs/input/adt.24 > ./outputs/t1518

./schedule.exe 1 8 5  < $ROOT/inputs/input/adt.24 > ./outputs/t1519

./schedule.exe 6 0 2  < $ROOT/inputs/input/adt.54 > ./outputs/t1520

./schedule.exe 10 3 0  < $ROOT/inputs/input/adt.48 > ./outputs/t1521

./schedule.exe 2 5 6  < $ROOT/inputs/input/adt.55 > ./outputs/t1522

./schedule.exe 3 2 8  < $ROOT/inputs/input/adt.44 > ./outputs/t1523

./schedule.exe 0 10 1  < $ROOT/inputs/input/adt.14 > ./outputs/t1524

./schedule.exe 5 5 4  < $ROOT/inputs/input/adt.96 > ./outputs/t1525

./schedule.exe 1 4 3  < $ROOT/inputs/input/adt.57 > ./outputs/t1526

./schedule.exe 1 0 3  < $ROOT/inputs/input/adt.74 > ./outputs/t1527

./schedule.exe 10 6 1  < $ROOT/inputs/input/adt.37 > ./outputs/t1528

./schedule.exe 6 3 10  < $ROOT/inputs/input/adt.9 > ./outputs/t1529

./schedule.exe 7 9 10  < $ROOT/inputs/input/adt.36 > ./outputs/t1530

./schedule.exe 6 9 7  < $ROOT/inputs/input/adt.55 > ./outputs/t1531

./schedule.exe 0 0 4  < $ROOT/inputs/input/adt.40 > ./outputs/t1532

./schedule.exe 9 7 0  < $ROOT/inputs/input/adt.0 > ./outputs/t1533

./schedule.exe 3 1 9  < $ROOT/inputs/input/adt.11 > ./outputs/t1534

./schedule.exe 8 1 0  < $ROOT/inputs/input/adt.90 > ./outputs/t1535

./schedule.exe 3 3 1  < $ROOT/inputs/input/adt.62 > ./outputs/t1536

./schedule.exe 1 1 10  < $ROOT/inputs/input/adt.4 > ./outputs/t1537

./schedule.exe 10 8 9  < $ROOT/inputs/input/adt.54 > ./outputs/t1538

./schedule.exe 4 2 10  < $ROOT/inputs/input/adt.21 > ./outputs/t1539

./schedule.exe 3 7 3  < $ROOT/inputs/input/adt.32 > ./outputs/t1540

./schedule.exe 2 8 0  < $ROOT/inputs/input/adt.57 > ./outputs/t1541

./schedule.exe 9 10 2  < $ROOT/inputs/input/adt.3 > ./outputs/t1542

./schedule.exe 4 1 7  < $ROOT/inputs/input/adt.74 > ./outputs/t1543

./schedule.exe 1 10 9  < $ROOT/inputs/input/adt.0 > ./outputs/t1544

./schedule.exe 3 1 1  < $ROOT/inputs/input/adt.54 > ./outputs/t1545

./schedule.exe 6 6 1  < $ROOT/inputs/input/adt.36 > ./outputs/t1546

./schedule.exe 6 5 9  < $ROOT/inputs/input/adt.34 > ./outputs/t1547

./schedule.exe 9 7 3  < $ROOT/inputs/input/adt.64 > ./outputs/t1548

./schedule.exe 5 2 1  < $ROOT/inputs/input/adt.34 > ./outputs/t1549

./schedule.exe 6 9 8  < $ROOT/inputs/input/adt.8 > ./outputs/t1550

./schedule.exe 3 5 4  < $ROOT/inputs/input/adt.16 > ./outputs/t1551

./schedule.exe 10 0 6  < $ROOT/inputs/input/adt.30 > ./outputs/t1552

./schedule.exe 7 5 1  < $ROOT/inputs/input/adt.26 > ./outputs/t1553

./schedule.exe 0 7 6  < $ROOT/inputs/input/adt.3 > ./outputs/t1554

./schedule.exe 7 2 1  < $ROOT/inputs/input/adt.17 > ./outputs/t1555

./schedule.exe 6 0 6  < $ROOT/inputs/input/adt.21 > ./outputs/t1556

./schedule.exe 7 1 9  < $ROOT/inputs/input/inp.hf.1 > ./outputs/t1557

./schedule.exe 2 3 5  < $ROOT/inputs/input/inp.hf.2 > ./outputs/t1558

./schedule.exe 4 8 8  < $ROOT/inputs/input/inp.hf.3 > ./outputs/t1559

./schedule.exe 10 0 2  < $ROOT/inputs/input/inp.hf.4 > ./outputs/t1560

./schedule.exe 8 3 2  < $ROOT/inputs/input/inp.hf.5 > ./outputs/t1561

./schedule.exe 7 10 5  < $ROOT/inputs/input/inp.hf.6 > ./outputs/t1562

./schedule.exe 4 0 6  < $ROOT/inputs/input/inp.hf.7 > ./outputs/t1563

./schedule.exe 3 7 4  < $ROOT/inputs/input/inp.hf.8 > ./outputs/t1564

./schedule.exe 9 7 5  < $ROOT/inputs/input/inp.hf.9 > ./outputs/t1565

./schedule.exe 9 10 6  < $ROOT/inputs/input/inp.hf.10 > ./outputs/t1566

./schedule.exe 7 9 8  < $ROOT/inputs/input/inp.hf.11 > ./outputs/t1567

./schedule.exe 8 9 0  < $ROOT/inputs/input/inp.hf.12 > ./outputs/t1568

./schedule.exe 8 5 0  < $ROOT/inputs/input/inp.hf.13 > ./outputs/t1569

./schedule.exe 9 8 5  < $ROOT/inputs/input/inp.hf.14 > ./outputs/t1570

./schedule.exe 7 0 6  < $ROOT/inputs/input/inp.hf.15 > ./outputs/t1571

./schedule.exe 8 3 9  < $ROOT/inputs/input/inp.hf.16 > ./outputs/t1572

./schedule.exe 7 4 2  < $ROOT/inputs/input/inp.hf.17 > ./outputs/t1573

./schedule.exe 5 8 7  < $ROOT/inputs/input/inp.hf.18 > ./outputs/t1574

./schedule.exe 0 4 1  < $ROOT/inputs/input/inp.hf.19 > ./outputs/t1575

./schedule.exe 0 10 6  < $ROOT/inputs/input/inp.hf.20 > ./outputs/t1576

./schedule.exe 9 0 9  < $ROOT/inputs/input/inp.hf.21 > ./outputs/t1577

./schedule.exe 9 9 2  < $ROOT/inputs/input/inp.hf.22 > ./outputs/t1578

./schedule.exe 6 1 0  < $ROOT/inputs/input/inp.hf.23 > ./outputs/t1579

./schedule.exe 5 10 8  < $ROOT/inputs/input/inp.hf.24 > ./outputs/t1580

./schedule.exe 6 9 0  < $ROOT/inputs/input/inp.hf.25 > ./outputs/t1581

./schedule.exe 3 7 3  < $ROOT/inputs/input/inp.hf.26 > ./outputs/t1582

./schedule.exe 1 5 5  < $ROOT/inputs/input/inp.hf.27 > ./outputs/t1583

./schedule.exe 1 2 7  < $ROOT/inputs/input/inp.hf.28 > ./outputs/t1584

./schedule.exe 2 7 6  < $ROOT/inputs/input/inp.hf.29 > ./outputs/t1585

./schedule.exe 4 6 3  < $ROOT/inputs/input/inp.hf.30 > ./outputs/t1586

./schedule.exe 7 1 9  < $ROOT/inputs/input/adt.158 > ./outputs/t1587

./schedule.exe 7 1 4  < $ROOT/inputs/input/adt.200 > ./outputs/t1588

./schedule.exe 3 5 9  < $ROOT/inputs/input/adt.195 > ./outputs/t1589

./schedule.exe 9 7 2  < $ROOT/inputs/input/adt.100 > ./outputs/t1590

./schedule.exe 0 2 6  < $ROOT/inputs/input/adt.152 > ./outputs/t1591

./schedule.exe 3 2 0  < $ROOT/inputs/input/adt.148 > ./outputs/t1592

./schedule.exe 10 5 0  < $ROOT/inputs/input/adt.120 > ./outputs/t1593

./schedule.exe 10 5 10  < $ROOT/inputs/input/adt.103 > ./outputs/t1594

./schedule.exe 5 7 8  < $ROOT/inputs/input/adt.189 > ./outputs/t1595

./schedule.exe 7 5 3  < $ROOT/inputs/input/adt.175 > ./outputs/t1596

./schedule.exe 1 10 0  < $ROOT/inputs/input/adt.193 > ./outputs/t1597

./schedule.exe 2 9 9  < $ROOT/inputs/input/adt.124 > ./outputs/t1598

./schedule.exe 1 8 5  < $ROOT/inputs/input/adt.124 > ./outputs/t1599

./schedule.exe 6 0 2  < $ROOT/inputs/input/adt.154 > ./outputs/t1600

./schedule.exe 10 3 0  < $ROOT/inputs/input/adt.148 > ./outputs/t1601

./schedule.exe 2 5 6  < $ROOT/inputs/input/adt.155 > ./outputs/t1602

./schedule.exe 3 2 8  < $ROOT/inputs/input/adt.144 > ./outputs/t1603

./schedule.exe 0 10 1  < $ROOT/inputs/input/adt.114 > ./outputs/t1604

./schedule.exe 5 5 4  < $ROOT/inputs/input/adt.196 > ./outputs/t1605

./schedule.exe 1 4 3  < $ROOT/inputs/input/adt.157 > ./outputs/t1606

./schedule.exe 1 0 3  < $ROOT/inputs/input/adt.174 > ./outputs/t1607

./schedule.exe 10 6 1  < $ROOT/inputs/input/adt.137 > ./outputs/t1608

./schedule.exe 6 3 10  < $ROOT/inputs/input/adt.109 > ./outputs/t1609

./schedule.exe 7 9 10  < $ROOT/inputs/input/adt.136 > ./outputs/t1610

./schedule.exe 6 9 7  < $ROOT/inputs/input/adt.155 > ./outputs/t1611

./schedule.exe 0 0 4  < $ROOT/inputs/input/adt.140 > ./outputs/t1612

./schedule.exe 9 7 0  < $ROOT/inputs/input/adt.100 > ./outputs/t1613

./schedule.exe 3 1 9  < $ROOT/inputs/input/adt.111 > ./outputs/t1614

./schedule.exe 8 1 0  < $ROOT/inputs/input/adt.190 > ./outputs/t1615

./schedule.exe 3 3 1  < $ROOT/inputs/input/adt.162 > ./outputs/t1616

./schedule.exe 1 1 10  < $ROOT/inputs/input/adt.104 > ./outputs/t1617

./schedule.exe 10 8 9  < $ROOT/inputs/input/adt.154 > ./outputs/t1618

./schedule.exe 4 2 10  < $ROOT/inputs/input/adt.121 > ./outputs/t1619

./schedule.exe 3 7 3  < $ROOT/inputs/input/adt.132 > ./outputs/t1620

./schedule.exe 2 8 0  < $ROOT/inputs/input/adt.157 > ./outputs/t1621

./schedule.exe 9 10 2  < $ROOT/inputs/input/adt.103 > ./outputs/t1622

./schedule.exe 4 1 7  < $ROOT/inputs/input/adt.174 > ./outputs/t1623

./schedule.exe 1 10 9  < $ROOT/inputs/input/adt.100 > ./outputs/t1624

./schedule.exe 3 1 1  < $ROOT/inputs/input/adt.154 > ./outputs/t1625

./schedule.exe 6 6 1  < $ROOT/inputs/input/adt.136 > ./outputs/t1626

./schedule.exe 6 5 9  < $ROOT/inputs/input/adt.134 > ./outputs/t1627

./schedule.exe 9 7 3  < $ROOT/inputs/input/adt.164 > ./outputs/t1628

./schedule.exe 5 2 1  < $ROOT/inputs/input/adt.134 > ./outputs/t1629

./schedule.exe 6 9 8  < $ROOT/inputs/input/adt.108 > ./outputs/t1630

./schedule.exe 3 5 4  < $ROOT/inputs/input/adt.116 > ./outputs/t1631

./schedule.exe 10 0 6  < $ROOT/inputs/input/adt.130 > ./outputs/t1632

./schedule.exe 7 5 1  < $ROOT/inputs/input/adt.126 > ./outputs/t1633

./schedule.exe 0 7 6  < $ROOT/inputs/input/adt.103 > ./outputs/t1634

./schedule.exe 7 2 1  < $ROOT/inputs/input/adt.117 > ./outputs/t1635

./schedule.exe 6 0 6  < $ROOT/inputs/input/adt.121 > ./outputs/t1636

./schedule.exe 0 6 6  < $ROOT/inputs/input/adt.127 > ./outputs/t1637

./schedule.exe 2 6 0  < $ROOT/inputs/input/adt.158 > ./outputs/t1638

./schedule.exe 4 10 7  < $ROOT/inputs/input/adt.174 > ./outputs/t1639

./schedule.exe 2 6 0  < $ROOT/inputs/input/adt.103 > ./outputs/t1640

./schedule.exe 1 1 10  < $ROOT/inputs/input/adt.103 > ./outputs/t1641

./schedule.exe 10 5 7  < $ROOT/inputs/input/adt.150 > ./outputs/t1642

./schedule.exe 4 5 0  < $ROOT/inputs/input/adt.189 > ./outputs/t1643

./schedule.exe 4 5 5  < $ROOT/inputs/input/adt.189 > ./outputs/t1644

./schedule.exe 8 3 1  < $ROOT/inputs/input/adt.170 > ./outputs/t1645

./schedule.exe 8 9 4  < $ROOT/inputs/input/adt.100 > ./outputs/t1646

./schedule.exe 8 6 10  < $ROOT/inputs/input/adt.173 > ./outputs/t1647

./schedule.exe 0 2 5  < $ROOT/inputs/input/adt.146 > ./outputs/t1648

./schedule.exe 6 2 7  < $ROOT/inputs/input/adt.136 > ./outputs/t1649

./schedule.exe 1 8 1  < $ROOT/inputs/input/adt.107 > ./outputs/t1650

./schedule.exe 7 4 0  < $ROOT/inputs/input/adt.113 > ./outputs/t1651

./schedule.exe 5 6 0  < $ROOT/inputs/input/adt.160 > ./outputs/t1652

./schedule.exe 7 6 6  < $ROOT/inputs/input/adt.192 > ./outputs/t1653

./schedule.exe 4 5 0  < $ROOT/inputs/input/adt.115 > ./outputs/t1654

./schedule.exe 5 3 4  < $ROOT/inputs/input/adt.156 > ./outputs/t1655

./schedule.exe 2 9 8  < $ROOT/inputs/input/adt.199 > ./outputs/t1656

./schedule.exe 4 0 3  < $ROOT/inputs/input/adt.108 > ./outputs/t1657

./schedule.exe 0 10 6  < $ROOT/inputs/input/adt.101 > ./outputs/t1658

./schedule.exe 9 3 9  < $ROOT/inputs/input/adt.123 > ./outputs/t1659

./schedule.exe 6 2 3  < $ROOT/inputs/input/adt.155 > ./outputs/t1660

./schedule.exe 1 8 7  < $ROOT/inputs/input/adt.116 > ./outputs/t1661

./schedule.exe 8 2 7  < $ROOT/inputs/input/adt.150 > ./outputs/t1662

./schedule.exe 0 6 8  < $ROOT/inputs/input/adt.172 > ./outputs/t1663

./schedule.exe 3 9 2  < $ROOT/inputs/input/adt.175 > ./outputs/t1664

./schedule.exe 9 4 7  < $ROOT/inputs/input/adt.122 > ./outputs/t1665

./schedule.exe 0 7 2  < $ROOT/inputs/input/adt.116 > ./outputs/t1666

./schedule.exe 7 4 9  < $ROOT/inputs/input/adt.102 > ./outputs/t1667

./schedule.exe 3 1 9  < $ROOT/inputs/input/adt.165 > ./outputs/t1668

./schedule.exe 1 3 9  < $ROOT/inputs/input/adt.159 > ./outputs/t1669

./schedule.exe 0 7 0  < $ROOT/inputs/input/adt.163 > ./outputs/t1670

./schedule.exe 1 3 5  < $ROOT/inputs/input/adt.144 > ./outputs/t1671

./schedule.exe 1 1 1  < $ROOT/inputs/input/adt.164 > ./outputs/t1672

./schedule.exe 3 4 3  < $ROOT/inputs/input/adt.179 > ./outputs/t1673

./schedule.exe 10 5 4  < $ROOT/inputs/input/adt.159 > ./outputs/t1674

./schedule.exe 8 7 6  < $ROOT/inputs/input/adt.140 > ./outputs/t1675

./schedule.exe 3 3 5  < $ROOT/inputs/input/adt.118 > ./outputs/t1676

./schedule.exe 0 0 2  < $ROOT/inputs/input/adt.119 > ./outputs/t1677

./schedule.exe 4 8 0  < $ROOT/inputs/input/adt.151 > ./outputs/t1678

./schedule.exe 3 5 6  < $ROOT/inputs/input/adt.103 > ./outputs/t1679

./schedule.exe 1 2 9  < $ROOT/inputs/input/adt.112 > ./outputs/t1680

./schedule.exe 7 0 1  < $ROOT/inputs/input/adt.114 > ./outputs/t1681

./schedule.exe 8 5 1  < $ROOT/inputs/input/adt.113 > ./outputs/t1682

./schedule.exe 1 0 0  < $ROOT/inputs/input/adt.178 > ./outputs/t1683

./schedule.exe 9 0 7  < $ROOT/inputs/input/adt.140 > ./outputs/t1684

./schedule.exe 10 3 9  < $ROOT/inputs/input/adt.136 > ./outputs/t1685

./schedule.exe 8 4 3  < $ROOT/inputs/input/adt.131 > ./outputs/t1686

./schedule.exe 4 1 4  < $ROOT/inputs/input/dat615 > ./outputs/t1687

./schedule.exe 1 0 1  < $ROOT/inputs/input/dat615 > ./outputs/t1688

./schedule.exe 1 1 0  < $ROOT/inputs/input/nt.31 > ./outputs/t1689

./schedule.exe 1 1 1  < $ROOT/inputs/input/nt.32 > ./outputs/t1690

./schedule.exe 2 0 1  < $ROOT/inputs/input/nt.32 > ./outputs/t1691

./schedule.exe 1 0 1  < $ROOT/inputs/input/nt.33 > ./outputs/t1692

./schedule.exe 5 1 4  < $ROOT/inputs/input/dat615 > ./outputs/t1693

./schedule.exe 5 3 3  < $ROOT/inputs/input/dat610 > ./outputs/t1694

./schedule.exe 1 2 1  < $ROOT/inputs/input/dat581 > ./outputs/t1695

./schedule.exe 1 3 2  < $ROOT/inputs/input/dat557 > ./outputs/t1696

./schedule.exe 0 5 1  < $ROOT/inputs/input/dat317 > ./outputs/t1697

./schedule.exe 4 0 1  < $ROOT/inputs/input/dat309 > ./outputs/t1698

./schedule.exe 5 0 4  < $ROOT/inputs/input/dat217 > ./outputs/t1699

./schedule.exe 1 2 0  < $ROOT/inputs/input/dat185 > ./outputs/t1700

./schedule.exe 3 0 2  < $ROOT/inputs/input/dat108 > ./outputs/t1701

./schedule.exe 4 1 0  < $ROOT/inputs/input/dat054 > ./outputs/t1702

./schedule.exe 1 0 2  < $ROOT/inputs/input/dat050 > ./outputs/t1703

./schedule.exe 5 1 1  < $ROOT/inputs/input/dat036 > ./outputs/t1704

./schedule.exe 2 0 1  < $ROOT/inputs/input/dat581 > ./outputs/t1705

./schedule.exe 1 4 2  < $ROOT/inputs/input/dat557 > ./outputs/t1706

./schedule.exe 0 3 0  < $ROOT/inputs/input/dat317 > ./outputs/t1707

./schedule.exe 4 1 0  < $ROOT/inputs/input/dat309 > ./outputs/t1708

./schedule.exe 5 4 4  < $ROOT/inputs/input/dat217 > ./outputs/t1709

./schedule.exe 5 0 2  < $ROOT/inputs/input/dat185 > ./outputs/t1710

./schedule.exe 3 4 2  < $ROOT/inputs/input/dat108 > ./outputs/t1711

./schedule.exe 4 1 1  < $ROOT/inputs/input/dat054 > ./outputs/t1712

./schedule.exe 1 1 0  < $ROOT/inputs/input/dat050 > ./outputs/t1713

./schedule.exe 5 0 1  < $ROOT/inputs/input/dat036 > ./outputs/t1714

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.1 > ./outputs/t1715

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.2 > ./outputs/t1716

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.3 > ./outputs/t1717

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.4 > ./outputs/t1718

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.5 > ./outputs/t1719

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.6 > ./outputs/t1720

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.7 > ./outputs/t1721

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.8 > ./outputs/t1722

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.9 > ./outputs/t1723

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.10 > ./outputs/t1724

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.11 > ./outputs/t1725

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.12 > ./outputs/t1726

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.13 > ./outputs/t1727

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.14 > ./outputs/t1728

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.15 > ./outputs/t1729

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.16 > ./outputs/t1730

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.17 > ./outputs/t1731

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.18 > ./outputs/t1732

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.19 > ./outputs/t1733

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.20 > ./outputs/t1734

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.21 > ./outputs/t1735

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.22 > ./outputs/t1736

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.23 > ./outputs/t1737

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.24 > ./outputs/t1738

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.25 > ./outputs/t1739

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.26 > ./outputs/t1740

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.27 > ./outputs/t1741

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.28 > ./outputs/t1742

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.29 > ./outputs/t1743

./schedule.exe 0 0 0  < $ROOT/inputs/input/nt.30 > ./outputs/t1744

./schedule.exe 5 0 4  < $ROOT/inputs/input/dat615 > ./outputs/t1745

./schedule.exe 5 3 3  < $ROOT/inputs/input/dat610 > ./outputs/t1746

./schedule.exe 0 2 1  < $ROOT/inputs/input/dat581 > ./outputs/t1747

./schedule.exe 0 3 2  < $ROOT/inputs/input/dat557 > ./outputs/t1748

./schedule.exe 0 3 1  < $ROOT/inputs/input/dat317 > ./outputs/t1749

./schedule.exe 4 2 1  < $ROOT/inputs/input/dat309 > ./outputs/t1750

./schedule.exe 5 1 4  < $ROOT/inputs/input/dat217 > ./outputs/t1751

./schedule.exe 1 0 0  < $ROOT/inputs/input/dat185 > ./outputs/t1752

./schedule.exe 1 0 2  < $ROOT/inputs/input/dat108 > ./outputs/t1753

./schedule.exe 0 1 0  < $ROOT/inputs/input/dat054 > ./outputs/t1754

./schedule.exe 1 1 2  < $ROOT/inputs/input/dat050 > ./outputs/t1755

./schedule.exe 5 1 0  < $ROOT/inputs/input/dat036 > ./outputs/t1756

./schedule.exe 5 0 1  < $ROOT/inputs/input/dat581 > ./outputs/t1757

./schedule.exe 1 2 2  < $ROOT/inputs/input/dat557 > ./outputs/t1758

./schedule.exe 0 1 0  < $ROOT/inputs/input/dat317 > ./outputs/t1759

./schedule.exe 4 1 3  < $ROOT/inputs/input/dat309 > ./outputs/t1760

./schedule.exe 5 0 4  < $ROOT/inputs/input/dat217 > ./outputs/t1761

./schedule.exe 5 0 1  < $ROOT/inputs/input/dat185 > ./outputs/t1762

./schedule.exe 2 4 2  < $ROOT/inputs/input/dat108 > ./outputs/t1763

./schedule.exe 4 0 1  < $ROOT/inputs/input/dat054 > ./outputs/t1764

./schedule.exe 1 0 0  < $ROOT/inputs/input/dat050 > ./outputs/t1765

./schedule.exe 5 4 1  < $ROOT/inputs/input/dat036 > ./outputs/t1766

./schedule.exe 7 1 9  < $ROOT/inputs/input/add.327 > ./outputs/t1767

./schedule.exe 7 1 4  < $ROOT/inputs/input/add.340 > ./outputs/t1768

./schedule.exe 3 5 9  < $ROOT/inputs/input/add.316 > ./outputs/t1769

./schedule.exe 9 7 2  < $ROOT/inputs/input/add.344 > ./outputs/t1770

./schedule.exe 0 2 6  < $ROOT/inputs/input/add.333 > ./outputs/t1771

./schedule.exe 3 2 0  < $ROOT/inputs/input/add.325 > ./outputs/t1772

./schedule.exe 10 5 0  < $ROOT/inputs/input/add.312 > ./outputs/t1773

./schedule.exe 7 4 10  < $ROOT/inputs/input/add.350 > ./outputs/t1774

./schedule.exe 2 2 3  < $ROOT/inputs/input/add.319 > ./outputs/t1775

./schedule.exe 8 5 3  < $ROOT/inputs/input/add.309 > ./outputs/t1776

./schedule.exe 9 5 1  < $ROOT/inputs/input/add.312 > ./outputs/t1777

./schedule.exe 0 10 1  < $ROOT/inputs/input/add.305 > ./outputs/t1778

./schedule.exe 4 1 0  < $ROOT/inputs/input/add.308 > ./outputs/t1779

./schedule.exe 10 0 4  < $ROOT/inputs/input/add.306 > ./outputs/t1780

./schedule.exe 10 3 0  < $ROOT/inputs/input/add.310 > ./outputs/t1781

./schedule.exe 9 5 5  < $ROOT/inputs/input/add.336 > ./outputs/t1782

./schedule.exe 0 9 7  < $ROOT/inputs/input/add.317 > ./outputs/t1783

./schedule.exe 2 7 3  < $ROOT/inputs/input/add.337 > ./outputs/t1784

./schedule.exe 7 10 9  < $ROOT/inputs/input/add.333 > ./outputs/t1785

./schedule.exe 5 9 3  < $ROOT/inputs/input/add.320 > ./outputs/t1786

./schedule.exe 1 8 3  < $ROOT/inputs/input/add.319 > ./outputs/t1787

./schedule.exe 5 10 9  < $ROOT/inputs/input/add.341 > ./outputs/t1788

./schedule.exe 9 9 0  < $ROOT/inputs/input/add.341 > ./outputs/t1789

./schedule.exe 4 4 2  < $ROOT/inputs/input/add.312 > ./outputs/t1790

./schedule.exe 9 10 7  < $ROOT/inputs/input/add.345 > ./outputs/t1791

./schedule.exe 2 9 7  < $ROOT/inputs/input/add.341 > ./outputs/t1792

./schedule.exe 2 1 5  < $ROOT/inputs/input/add.343 > ./outputs/t1793

./schedule.exe 9 3 2  < $ROOT/inputs/input/add.334 > ./outputs/t1794

./schedule.exe 6 9 1  < $ROOT/inputs/input/add.308 > ./outputs/t1795

./schedule.exe 6 4 9  < $ROOT/inputs/input/add.319 > ./outputs/t1796

./schedule.exe 10 9 4  < $ROOT/inputs/input/add.349 > ./outputs/t1797

./schedule.exe 1 3 4  < $ROOT/inputs/input/add.310 > ./outputs/t1798

./schedule.exe 0 7 0  < $ROOT/inputs/input/add.334 > ./outputs/t1799

./schedule.exe 3 2 4  < $ROOT/inputs/input/add.343 > ./outputs/t1800

./schedule.exe 6 2 0  < $ROOT/inputs/input/add.347 > ./outputs/t1801

./schedule.exe 7 6 9  < $ROOT/inputs/input/add.320 > ./outputs/t1802

./schedule.exe 0 7 6  < $ROOT/inputs/input/add.334 > ./outputs/t1803

./schedule.exe 10 0 0  < $ROOT/inputs/input/add.300 > ./outputs/t1804

./schedule.exe 6 1 8  < $ROOT/inputs/input/add.350 > ./outputs/t1805

./schedule.exe 3 10 6  < $ROOT/inputs/input/add.325 > ./outputs/t1806

./schedule.exe 10 7 5  < $ROOT/inputs/input/add.332 > ./outputs/t1807

./schedule.exe 7 10 10  < $ROOT/inputs/input/add.325 > ./outputs/t1808

./schedule.exe 7 10 4  < $ROOT/inputs/input/add.313 > ./outputs/t1809

./schedule.exe 10 4 3  < $ROOT/inputs/input/add.302 > ./outputs/t1810

./schedule.exe 10 6 1  < $ROOT/inputs/input/add.335 > ./outputs/t1811

./schedule.exe 0 3 3  < $ROOT/inputs/input/add.304 > ./outputs/t1812

./schedule.exe 2 10 4  < $ROOT/inputs/input/add.312 > ./outputs/t1813

./schedule.exe 9 4 2  < $ROOT/inputs/input/add.319 > ./outputs/t1814

./schedule.exe 7 10 5  < $ROOT/inputs/input/add.322 > ./outputs/t1815

./schedule.exe 4 3 4  < $ROOT/inputs/input/add.343 > ./outputs/t1816

./schedule.exe 5 6 9  < $ROOT/inputs/input/add.335 > ./outputs/t1817

./schedule.exe 3 5 0  < $ROOT/inputs/input/add.313 > ./outputs/t1818

./schedule.exe 5 3 9  < $ROOT/inputs/input/add.302 > ./outputs/t1819

./schedule.exe 2 2 4  < $ROOT/inputs/input/add.303 > ./outputs/t1820

./schedule.exe 4 4 3  < $ROOT/inputs/input/add.324 > ./outputs/t1821

./schedule.exe 0 1 9  < $ROOT/inputs/input/add.333 > ./outputs/t1822

./schedule.exe 2 0 10  < $ROOT/inputs/input/add.301 > ./outputs/t1823

./schedule.exe 0 0 6  < $ROOT/inputs/input/add.349 > ./outputs/t1824

./schedule.exe 6 1 3  < $ROOT/inputs/input/add.329 > ./outputs/t1825

./schedule.exe 10 4 1  < $ROOT/inputs/input/add.321 > ./outputs/t1826

./schedule.exe 6 10 9  < $ROOT/inputs/input/add.309 > ./outputs/t1827

./schedule.exe 1 0 2  < $ROOT/inputs/input/add.327 > ./outputs/t1828

./schedule.exe 7 1 2  < $ROOT/inputs/input/add.301 > ./outputs/t1829

./schedule.exe 0 3 1  < $ROOT/inputs/input/add.313 > ./outputs/t1830

./schedule.exe 6 7 4  < $ROOT/inputs/input/add.324 > ./outputs/t1831

./schedule.exe 7 10 2  < $ROOT/inputs/input/add.302 > ./outputs/t1832

./schedule.exe 3 9 2  < $ROOT/inputs/input/add.317 > ./outputs/t1833

./schedule.exe 2 3 8  < $ROOT/inputs/input/add.305 > ./outputs/t1834

./schedule.exe 8 10 9  < $ROOT/inputs/input/add.339 > ./outputs/t1835

./schedule.exe 2 10 2  < $ROOT/inputs/input/add.304 > ./outputs/t1836

./schedule.exe 1 9 5  < $ROOT/inputs/input/add.348 > ./outputs/t1837

./schedule.exe 2 3 0  < $ROOT/inputs/input/add.344 > ./outputs/t1838

./schedule.exe 3 8 6  < $ROOT/inputs/input/add.341 > ./outputs/t1839

./schedule.exe 1 1 9  < $ROOT/inputs/input/add.307 > ./outputs/t1840

./schedule.exe 9 10 10  < $ROOT/inputs/input/add.347 > ./outputs/t1841

./schedule.exe 0 7 5  < $ROOT/inputs/input/add.316 > ./outputs/t1842

./schedule.exe 8 7 1  < $ROOT/inputs/input/add.336 > ./outputs/t1843

./schedule.exe 4 2 6  < $ROOT/inputs/input/add.326 > ./outputs/t1844

./schedule.exe 9 4 6  < $ROOT/inputs/input/add.304 > ./outputs/t1845

./schedule.exe 7 6 8  < $ROOT/inputs/input/add.314 > ./outputs/t1846

./schedule.exe 3 9 7  < $ROOT/inputs/input/add.350 > ./outputs/t1847

./schedule.exe 1 1 10  < $ROOT/inputs/input/add.327 > ./outputs/t1848

./schedule.exe 9 8 4  < $ROOT/inputs/input/add.343 > ./outputs/t1849

./schedule.exe 10 9 0  < $ROOT/inputs/input/add.305 > ./outputs/t1850

./schedule.exe 0 2 2  < $ROOT/inputs/input/add.305 > ./outputs/t1851

./schedule.exe 6 10 7  < $ROOT/inputs/input/add.331 > ./outputs/t1852

./schedule.exe 1 5 10  < $ROOT/inputs/input/add.306 > ./outputs/t1853

./schedule.exe 4 3 8  < $ROOT/inputs/input/add.330 > ./outputs/t1854

./schedule.exe 2 1 9  < $ROOT/inputs/input/add.344 > ./outputs/t1855

./schedule.exe 2 7 0  < $ROOT/inputs/input/add.308 > ./outputs/t1856

./schedule.exe 5 0 6  < $ROOT/inputs/input/add.303 > ./outputs/t1857

./schedule.exe 1 10 10  < $ROOT/inputs/input/add.320 > ./outputs/t1858

./schedule.exe 8 0 3  < $ROOT/inputs/input/add.341 > ./outputs/t1859

./schedule.exe 6 8 8  < $ROOT/inputs/input/add.330 > ./outputs/t1860

./schedule.exe 8 0 7  < $ROOT/inputs/input/add.316 > ./outputs/t1861

./schedule.exe 2 4 1  < $ROOT/inputs/input/add.306 > ./outputs/t1862

./schedule.exe 2 7 3  < $ROOT/inputs/input/add.314 > ./outputs/t1863

./schedule.exe 8 4 5  < $ROOT/inputs/input/add.343 > ./outputs/t1864

./schedule.exe 10 7 3  < $ROOT/inputs/input/add.323 > ./outputs/t1865

./schedule.exe 0 6 3  < $ROOT/inputs/input/add.315 > ./outputs/t1866

./schedule.exe 1  6  5   < $ROOT/inputs/input/lu1 > ./outputs/t1867

./schedule.exe 2  5  10   < $ROOT/inputs/input/lu2 > ./outputs/t1868

./schedule.exe 3  6  7   < $ROOT/inputs/input/lu3 > ./outputs/t1869

./schedule.exe 8  9  2   < $ROOT/inputs/input/lu4 > ./outputs/t1870

./schedule.exe 7  2  9   < $ROOT/inputs/input/lu5 > ./outputs/t1871

./schedule.exe 2  7  10   < $ROOT/inputs/input/lu6 > ./outputs/t1872

./schedule.exe 3  10  3   < $ROOT/inputs/input/lu7 > ./outputs/t1873

./schedule.exe 6  3  2   < $ROOT/inputs/input/lu8 > ./outputs/t1874

./schedule.exe 9  6  5   < $ROOT/inputs/input/lu9 > ./outputs/t1875

./schedule.exe 2  7  6   < $ROOT/inputs/input/lu10 > ./outputs/t1876

./schedule.exe 3  2  3   < $ROOT/inputs/input/lu11 > ./outputs/t1877

./schedule.exe 6  1  6   < $ROOT/inputs/input/lu12 > ./outputs/t1878

./schedule.exe 3  10  5   < $ROOT/inputs/input/lu13 > ./outputs/t1879

./schedule.exe 6  7  10   < $ROOT/inputs/input/lu14 > ./outputs/t1880

./schedule.exe 5  4  5   < $ROOT/inputs/input/lu15 > ./outputs/t1881

./schedule.exe 2  3  6   < $ROOT/inputs/input/lu16 > ./outputs/t1882

./schedule.exe 5  8  3   < $ROOT/inputs/input/lu17 > ./outputs/t1883

./schedule.exe 8  7  8   < $ROOT/inputs/input/lu18 > ./outputs/t1884

./schedule.exe 9  6  3   < $ROOT/inputs/input/lu19 > ./outputs/t1885

./schedule.exe 4  1  6   < $ROOT/inputs/input/lu20 > ./outputs/t1886

./schedule.exe 5  6  7   < $ROOT/inputs/input/lu21 > ./outputs/t1887

./schedule.exe 4  3  10   < $ROOT/inputs/input/lu22 > ./outputs/t1888

./schedule.exe 7  2  5   < $ROOT/inputs/input/lu23 > ./outputs/t1889

./schedule.exe 4  7  2   < $ROOT/inputs/input/lu24 > ./outputs/t1890

./schedule.exe 9  10  5   < $ROOT/inputs/input/lu25 > ./outputs/t1891

./schedule.exe 4  1  2   < $ROOT/inputs/input/lu26 > ./outputs/t1892

./schedule.exe 9  10  9   < $ROOT/inputs/input/lu27 > ./outputs/t1893

./schedule.exe 4  7  2   < $ROOT/inputs/input/lu28 > ./outputs/t1894

./schedule.exe 3  8  3   < $ROOT/inputs/input/lu29 > ./outputs/t1895

./schedule.exe 6  3  6   < $ROOT/inputs/input/lu30 > ./outputs/t1896

./schedule.exe 5  4  9   < $ROOT/inputs/input/lu31 > ./outputs/t1897

./schedule.exe 6  3  6   < $ROOT/inputs/input/lu32 > ./outputs/t1898

./schedule.exe 9  10  7   < $ROOT/inputs/input/lu33 > ./outputs/t1899

./schedule.exe 6  9  6   < $ROOT/inputs/input/lu34 > ./outputs/t1900

./schedule.exe 7  10  3   < $ROOT/inputs/input/lu35 > ./outputs/t1901

./schedule.exe 2  7  10   < $ROOT/inputs/input/lu36 > ./outputs/t1902

./schedule.exe 1  8  3   < $ROOT/inputs/input/lu37 > ./outputs/t1903

./schedule.exe 6  9  6   < $ROOT/inputs/input/lu38 > ./outputs/t1904

./schedule.exe 1  8  3   < $ROOT/inputs/input/lu39 > ./outputs/t1905

./schedule.exe 10  1  10   < $ROOT/inputs/input/lu40 > ./outputs/t1906

./schedule.exe 7  6  1   < $ROOT/inputs/input/lu41 > ./outputs/t1907

./schedule.exe 8  9  8   < $ROOT/inputs/input/lu42 > ./outputs/t1908

./schedule.exe 7  4  1   < $ROOT/inputs/input/lu43 > ./outputs/t1909

./schedule.exe 6  3  2   < $ROOT/inputs/input/lu44 > ./outputs/t1910

./schedule.exe 1  8  3   < $ROOT/inputs/input/lu45 > ./outputs/t1911

./schedule.exe 8  9  2   < $ROOT/inputs/input/lu46 > ./outputs/t1912

./schedule.exe 1  10  3   < $ROOT/inputs/input/lu47 > ./outputs/t1913

./schedule.exe 4  7  4   < $ROOT/inputs/input/lu48 > ./outputs/t1914

./schedule.exe 9  4  9   < $ROOT/inputs/input/lu49 > ./outputs/t1915

./schedule.exe 2  3  4   < $ROOT/inputs/input/lu50 > ./outputs/t1916

./schedule.exe 5  2  5   < $ROOT/inputs/input/lu51 > ./outputs/t1917

./schedule.exe 4  1  4   < $ROOT/inputs/input/lu52 > ./outputs/t1918

./schedule.exe 9  2  1   < $ROOT/inputs/input/lu53 > ./outputs/t1919

./schedule.exe 2  1  10   < $ROOT/inputs/input/lu54 > ./outputs/t1920

./schedule.exe 1  6  3   < $ROOT/inputs/input/lu55 > ./outputs/t1921

./schedule.exe 10  9  8   < $ROOT/inputs/input/lu56 > ./outputs/t1922

./schedule.exe 1  6  1   < $ROOT/inputs/input/lu57 > ./outputs/t1923

./schedule.exe 6  7  6   < $ROOT/inputs/input/lu58 > ./outputs/t1924

./schedule.exe 9  6  3   < $ROOT/inputs/input/lu59 > ./outputs/t1925

./schedule.exe 4  9  8   < $ROOT/inputs/input/lu60 > ./outputs/t1926

./schedule.exe 9  4  5   < $ROOT/inputs/input/lu61 > ./outputs/t1927

./schedule.exe 4  5  6   < $ROOT/inputs/input/lu62 > ./outputs/t1928

./schedule.exe 9  4  3   < $ROOT/inputs/input/lu63 > ./outputs/t1929

./schedule.exe 8  9  10   < $ROOT/inputs/input/lu64 > ./outputs/t1930

./schedule.exe 1  6  1   < $ROOT/inputs/input/lu65 > ./outputs/t1931

./schedule.exe 2  7  2   < $ROOT/inputs/input/lu66 > ./outputs/t1932

./schedule.exe 7  6  1   < $ROOT/inputs/input/lu67 > ./outputs/t1933

./schedule.exe 6  5  6   < $ROOT/inputs/input/lu68 > ./outputs/t1934

./schedule.exe 1  6  5   < $ROOT/inputs/input/lu69 > ./outputs/t1935

./schedule.exe 6  1  8   < $ROOT/inputs/input/lu70 > ./outputs/t1936

./schedule.exe 5  4  9   < $ROOT/inputs/input/lu71 > ./outputs/t1937

./schedule.exe 2  5  6   < $ROOT/inputs/input/lu72 > ./outputs/t1938

./schedule.exe 3  6  7   < $ROOT/inputs/input/lu73 > ./outputs/t1939

./schedule.exe 8  1  10   < $ROOT/inputs/input/lu74 > ./outputs/t1940

./schedule.exe 5  10  3   < $ROOT/inputs/input/lu75 > ./outputs/t1941

./schedule.exe 4  7  10   < $ROOT/inputs/input/lu76 > ./outputs/t1942

./schedule.exe 9  2  7   < $ROOT/inputs/input/lu77 > ./outputs/t1943

./schedule.exe 4  1  10   < $ROOT/inputs/input/lu78 > ./outputs/t1944

./schedule.exe 5  2  3   < $ROOT/inputs/input/lu79 > ./outputs/t1945

./schedule.exe 4  5  6   < $ROOT/inputs/input/lu80 > ./outputs/t1946

./schedule.exe 3  2  3   < $ROOT/inputs/input/lu81 > ./outputs/t1947

./schedule.exe 8  3  2   < $ROOT/inputs/input/lu82 > ./outputs/t1948

./schedule.exe 3  6  5   < $ROOT/inputs/input/lu83 > ./outputs/t1949

./schedule.exe 6  7  8   < $ROOT/inputs/input/lu84 > ./outputs/t1950

./schedule.exe 1  6  9   < $ROOT/inputs/input/lu85 > ./outputs/t1951

./schedule.exe 4  1  6   < $ROOT/inputs/input/lu86 > ./outputs/t1952

./schedule.exe 1  8  3   < $ROOT/inputs/input/lu87 > ./outputs/t1953

./schedule.exe 6  3  4   < $ROOT/inputs/input/lu88 > ./outputs/t1954

./schedule.exe 5  10  7   < $ROOT/inputs/input/lu89 > ./outputs/t1955

./schedule.exe 6  9  2   < $ROOT/inputs/input/lu90 > ./outputs/t1956

./schedule.exe 5  10  1   < $ROOT/inputs/input/lu91 > ./outputs/t1957

./schedule.exe 4  7  8   < $ROOT/inputs/input/lu92 > ./outputs/t1958

./schedule.exe 5  2  5   < $ROOT/inputs/input/lu93 > ./outputs/t1959

./schedule.exe 4  7  8   < $ROOT/inputs/input/lu94 > ./outputs/t1960

./schedule.exe 3  4  9   < $ROOT/inputs/input/lu95 > ./outputs/t1961

./schedule.exe 8  5  4   < $ROOT/inputs/input/lu96 > ./outputs/t1962

./schedule.exe 9  10  5   < $ROOT/inputs/input/lu97 > ./outputs/t1963

./schedule.exe 4  9  8   < $ROOT/inputs/input/lu98 > ./outputs/t1964

./schedule.exe 5  2  7   < $ROOT/inputs/input/lu99 > ./outputs/t1965

./schedule.exe 4  5  2   < $ROOT/inputs/input/lu100 > ./outputs/t1966

./schedule.exe 5  6  1   < $ROOT/inputs/input/lu101 > ./outputs/t1967

./schedule.exe 4  7  8   < $ROOT/inputs/input/lu102 > ./outputs/t1968

./schedule.exe 1  6  1   < $ROOT/inputs/input/lu103 > ./outputs/t1969

./schedule.exe 2  7  10   < $ROOT/inputs/input/lu104 > ./outputs/t1970

./schedule.exe 1  10  5   < $ROOT/inputs/input/lu105 > ./outputs/t1971

./schedule.exe 6  3  8   < $ROOT/inputs/input/lu106 > ./outputs/t1972

./schedule.exe 5  2  7   < $ROOT/inputs/input/lu107 > ./outputs/t1973

./schedule.exe 10  1  10   < $ROOT/inputs/input/lu108 > ./outputs/t1974

./schedule.exe 9  2  3   < $ROOT/inputs/input/lu109 > ./outputs/t1975

./schedule.exe 6  9  6   < $ROOT/inputs/input/lu110 > ./outputs/t1976

./schedule.exe 3  2  1   < $ROOT/inputs/input/lu111 > ./outputs/t1977

./schedule.exe 2  5  6   < $ROOT/inputs/input/lu112 > ./outputs/t1978

./schedule.exe 3  10  7   < $ROOT/inputs/input/lu113 > ./outputs/t1979

./schedule.exe 8  5  10   < $ROOT/inputs/input/lu114 > ./outputs/t1980

./schedule.exe 3  6  9   < $ROOT/inputs/input/lu115 > ./outputs/t1981

./schedule.exe 10  5  2   < $ROOT/inputs/input/lu116 > ./outputs/t1982

./schedule.exe 7  8  9   < $ROOT/inputs/input/lu117 > ./outputs/t1983

./schedule.exe 4  3  2   < $ROOT/inputs/input/lu118 > ./outputs/t1984

./schedule.exe 9  6  7   < $ROOT/inputs/input/lu119 > ./outputs/t1985

./schedule.exe 8  7  4   < $ROOT/inputs/input/lu120 > ./outputs/t1986

./schedule.exe 1  4  5   < $ROOT/inputs/input/lu121 > ./outputs/t1987

./schedule.exe 4  3  6   < $ROOT/inputs/input/lu122 > ./outputs/t1988

./schedule.exe 7  4  5   < $ROOT/inputs/input/lu123 > ./outputs/t1989

./schedule.exe 8  3  2   < $ROOT/inputs/input/lu124 > ./outputs/t1990

./schedule.exe 9  10  1   < $ROOT/inputs/input/lu125 > ./outputs/t1991

./schedule.exe 6  3  6   < $ROOT/inputs/input/lu126 > ./outputs/t1992

./schedule.exe 1  2  3   < $ROOT/inputs/input/lu127 > ./outputs/t1993

./schedule.exe 6  1  6   < $ROOT/inputs/input/lu128 > ./outputs/t1994

./schedule.exe 1  2  1   < $ROOT/inputs/input/lu129 > ./outputs/t1995

./schedule.exe 2  7  8   < $ROOT/inputs/input/lu130 > ./outputs/t1996

./schedule.exe 9  2  7   < $ROOT/inputs/input/lu131 > ./outputs/t1997

./schedule.exe 8  5  4   < $ROOT/inputs/input/lu132 > ./outputs/t1998

./schedule.exe 3  10  7   < $ROOT/inputs/input/lu133 > ./outputs/t1999

./schedule.exe 2  3  4   < $ROOT/inputs/input/lu134 > ./outputs/t2000

./schedule.exe 9  4  5   < $ROOT/inputs/input/lu135 > ./outputs/t2001

./schedule.exe 8  3  4   < $ROOT/inputs/input/lu136 > ./outputs/t2002

./schedule.exe 3  4  9   < $ROOT/inputs/input/lu137 > ./outputs/t2003

./schedule.exe 10  9  8   < $ROOT/inputs/input/lu138 > ./outputs/t2004

./schedule.exe 9  2  7   < $ROOT/inputs/input/lu139 > ./outputs/t2005

./schedule.exe 8  9  6   < $ROOT/inputs/input/lu140 > ./outputs/t2006

./schedule.exe 9  8  5   < $ROOT/inputs/input/lu141 > ./outputs/t2007

./schedule.exe 6  9  10   < $ROOT/inputs/input/lu142 > ./outputs/t2008

./schedule.exe 3  6  1   < $ROOT/inputs/input/lu143 > ./outputs/t2009

./schedule.exe 8  1  4   < $ROOT/inputs/input/lu144 > ./outputs/t2010

./schedule.exe 3  6  1   < $ROOT/inputs/input/lu145 > ./outputs/t2011

./schedule.exe 2  7  4   < $ROOT/inputs/input/lu146 > ./outputs/t2012

./schedule.exe 7  2  5   < $ROOT/inputs/input/lu147 > ./outputs/t2013

./schedule.exe 2  7  4   < $ROOT/inputs/input/lu148 > ./outputs/t2014

./schedule.exe 1  2  7   < $ROOT/inputs/input/lu149 > ./outputs/t2015

./schedule.exe 2  7  4   < $ROOT/inputs/input/lu150 > ./outputs/t2016

./schedule.exe 9  6  9   < $ROOT/inputs/input/lu151 > ./outputs/t2017

./schedule.exe 4  9  2   < $ROOT/inputs/input/lu152 > ./outputs/t2018

./schedule.exe 7  2  7   < $ROOT/inputs/input/lu153 > ./outputs/t2019

./schedule.exe 2  3  6   < $ROOT/inputs/input/lu154 > ./outputs/t2020

./schedule.exe 3  6  7   < $ROOT/inputs/input/lu155 > ./outputs/t2021

./schedule.exe 4  7  8   < $ROOT/inputs/input/lu156 > ./outputs/t2022

./schedule.exe 9  2  1   < $ROOT/inputs/input/lu157 > ./outputs/t2023

./schedule.exe 6  3  6   < $ROOT/inputs/input/lu158 > ./outputs/t2024

./schedule.exe 5  4  9   < $ROOT/inputs/input/lu159 > ./outputs/t2025

./schedule.exe 2  3  2   < $ROOT/inputs/input/lu160 > ./outputs/t2026

./schedule.exe 7  6  7   < $ROOT/inputs/input/lu161 > ./outputs/t2027

./schedule.exe 4  3  4   < $ROOT/inputs/input/lu162 > ./outputs/t2028

./schedule.exe 5  10  9   < $ROOT/inputs/input/lu163 > ./outputs/t2029

./schedule.exe 10  5  6   < $ROOT/inputs/input/lu164 > ./outputs/t2030

./schedule.exe 1  6  9   < $ROOT/inputs/input/lu165 > ./outputs/t2031

./schedule.exe 4  5  8   < $ROOT/inputs/input/lu166 > ./outputs/t2032

./schedule.exe 5  8  1   < $ROOT/inputs/input/lu167 > ./outputs/t2033

./schedule.exe 8  7  4   < $ROOT/inputs/input/lu168 > ./outputs/t2034

./schedule.exe 7  6  3   < $ROOT/inputs/input/lu169 > ./outputs/t2035

./schedule.exe 8  7  10   < $ROOT/inputs/input/lu170 > ./outputs/t2036

./schedule.exe 7  2  3   < $ROOT/inputs/input/lu171 > ./outputs/t2037

./schedule.exe 2  7  8   < $ROOT/inputs/input/lu172 > ./outputs/t2038

./schedule.exe 5  2  7   < $ROOT/inputs/input/lu173 > ./outputs/t2039

./schedule.exe 8  1  2   < $ROOT/inputs/input/lu174 > ./outputs/t2040

./schedule.exe 3  2  1   < $ROOT/inputs/input/lu175 > ./outputs/t2041

./schedule.exe 6  3  6   < $ROOT/inputs/input/lu176 > ./outputs/t2042

./schedule.exe 9  6  1   < $ROOT/inputs/input/lu177 > ./outputs/t2043

./schedule.exe 10  3  4   < $ROOT/inputs/input/lu178 > ./outputs/t2044

./schedule.exe 1  2  5   < $ROOT/inputs/input/lu179 > ./outputs/t2045

./schedule.exe 8  9  6   < $ROOT/inputs/input/lu180 > ./outputs/t2046

./schedule.exe 1  8  1   < $ROOT/inputs/input/lu181 > ./outputs/t2047

./schedule.exe 2  5  8   < $ROOT/inputs/input/lu182 > ./outputs/t2048

./schedule.exe 3  10  9   < $ROOT/inputs/input/lu183 > ./outputs/t2049

./schedule.exe 6  1  10   < $ROOT/inputs/input/lu184 > ./outputs/t2050

./schedule.exe 1  4  7   < $ROOT/inputs/input/lu185 > ./outputs/t2051

./schedule.exe 8  7  6   < $ROOT/inputs/input/lu186 > ./outputs/t2052

./schedule.exe 1  8  5   < $ROOT/inputs/input/lu187 > ./outputs/t2053

./schedule.exe 10  3  8   < $ROOT/inputs/input/lu188 > ./outputs/t2054

./schedule.exe 7  2  3   < $ROOT/inputs/input/lu189 > ./outputs/t2055

./schedule.exe 10  3  2   < $ROOT/inputs/input/lu190 > ./outputs/t2056

./schedule.exe 5  10  5   < $ROOT/inputs/input/lu191 > ./outputs/t2057

./schedule.exe 6  3  4   < $ROOT/inputs/input/lu192 > ./outputs/t2058

./schedule.exe 1  10  1   < $ROOT/inputs/input/lu193 > ./outputs/t2059

./schedule.exe 4  5  10   < $ROOT/inputs/input/lu194 > ./outputs/t2060

./schedule.exe 3  2  9   < $ROOT/inputs/input/lu195 > ./outputs/t2061

./schedule.exe 8  5  8   < $ROOT/inputs/input/lu196 > ./outputs/t2062

./schedule.exe 7  6  7   < $ROOT/inputs/input/lu197 > ./outputs/t2063

./schedule.exe 10  3  10   < $ROOT/inputs/input/lu198 > ./outputs/t2064

./schedule.exe 9  4  9   < $ROOT/inputs/input/lu199 > ./outputs/t2065

./schedule.exe 8  1  4   < $ROOT/inputs/input/lu200 > ./outputs/t2066

./schedule.exe 3  2  9   < $ROOT/inputs/input/lu201 > ./outputs/t2067

./schedule.exe 2  9  8   < $ROOT/inputs/input/lu202 > ./outputs/t2068

./schedule.exe 1  8  7   < $ROOT/inputs/input/lu203 > ./outputs/t2069

./schedule.exe 6  1  4   < $ROOT/inputs/input/lu204 > ./outputs/t2070

./schedule.exe 3  10  5   < $ROOT/inputs/input/lu205 > ./outputs/t2071

./schedule.exe 2  3  8   < $ROOT/inputs/input/lu206 > ./outputs/t2072

./schedule.exe 5  2  3   < $ROOT/inputs/input/lu207 > ./outputs/t2073

./schedule.exe 4  5  2   < $ROOT/inputs/input/lu208 > ./outputs/t2074

./schedule.exe 5  6  1   < $ROOT/inputs/input/lu209 > ./outputs/t2075

./schedule.exe 2  5  6   < $ROOT/inputs/input/lu210 > ./outputs/t2076

./schedule.exe 1  6  3   < $ROOT/inputs/input/lu211 > ./outputs/t2077

./schedule.exe 2  7  4   < $ROOT/inputs/input/lu212 > ./outputs/t2078

./schedule.exe 5  8  7   < $ROOT/inputs/input/lu213 > ./outputs/t2079

./schedule.exe 10  5  2   < $ROOT/inputs/input/lu214 > ./outputs/t2080

./schedule.exe 1  4  9   < $ROOT/inputs/input/lu215 > ./outputs/t2081

./schedule.exe 8  1  6   < $ROOT/inputs/input/lu216 > ./outputs/t2082

./schedule.exe 3  4  9   < $ROOT/inputs/input/lu217 > ./outputs/t2083

./schedule.exe 6  5  2   < $ROOT/inputs/input/lu218 > ./outputs/t2084

./schedule.exe 7  6  3   < $ROOT/inputs/input/lu219 > ./outputs/t2085

./schedule.exe 4  7  8   < $ROOT/inputs/input/lu220 > ./outputs/t2086

./schedule.exe 3  8  1   < $ROOT/inputs/input/lu221 > ./outputs/t2087

./schedule.exe 10  1  4   < $ROOT/inputs/input/lu222 > ./outputs/t2088

./schedule.exe 1  10  7   < $ROOT/inputs/input/lu223 > ./outputs/t2089

./schedule.exe 4  7  10   < $ROOT/inputs/input/lu224 > ./outputs/t2090

./schedule.exe 5  4  3   < $ROOT/inputs/input/lu225 > ./outputs/t2091

./schedule.exe 10  5  4   < $ROOT/inputs/input/lu226 > ./outputs/t2092

./schedule.exe 1  4  9   < $ROOT/inputs/input/lu227 > ./outputs/t2093

./schedule.exe 2  5  4   < $ROOT/inputs/input/lu228 > ./outputs/t2094

./schedule.exe 7  10  9   < $ROOT/inputs/input/lu229 > ./outputs/t2095

./schedule.exe 2  7  2   < $ROOT/inputs/input/lu230 > ./outputs/t2096

./schedule.exe 3  8  9   < $ROOT/inputs/input/lu231 > ./outputs/t2097

./schedule.exe 4  9  2   < $ROOT/inputs/input/lu232 > ./outputs/t2098

./schedule.exe 9  8  7   < $ROOT/inputs/input/lu233 > ./outputs/t2099

./schedule.exe 6  9  4   < $ROOT/inputs/input/lu234 > ./outputs/t2100

./schedule.exe 9  4  3   < $ROOT/inputs/input/lu235 > ./outputs/t2101

./schedule.exe 2  7  6   < $ROOT/inputs/input/lu236 > ./outputs/t2102

./schedule.exe 1  8  9   < $ROOT/inputs/input/lu237 > ./outputs/t2103

./schedule.exe 8  1  6   < $ROOT/inputs/input/lu238 > ./outputs/t2104

./schedule.exe 7  10  9   < $ROOT/inputs/input/lu239 > ./outputs/t2105

./schedule.exe 4  3  2   < $ROOT/inputs/input/lu240 > ./outputs/t2106

./schedule.exe 9  4  5   < $ROOT/inputs/input/lu241 > ./outputs/t2107

./schedule.exe 6  1  10   < $ROOT/inputs/input/lu242 > ./outputs/t2108

./schedule.exe 1  10  1   < $ROOT/inputs/input/lu243 > ./outputs/t2109

./schedule.exe 6  3  10   < $ROOT/inputs/input/lu244 > ./outputs/t2110

./schedule.exe 1  4  3   < $ROOT/inputs/input/lu245 > ./outputs/t2111

./schedule.exe 8  3  10   < $ROOT/inputs/input/lu246 > ./outputs/t2112

./schedule.exe 9  2  5   < $ROOT/inputs/input/lu247 > ./outputs/t2113

./schedule.exe 8  5  6   < $ROOT/inputs/input/lu248 > ./outputs/t2114

./schedule.exe 3  4  3   < $ROOT/inputs/input/lu249 > ./outputs/t2115

./schedule.exe 10  7  2   < $ROOT/inputs/input/lu250 > ./outputs/t2116

./schedule.exe 1  2  3   < $ROOT/inputs/input/lu251 > ./outputs/t2117

./schedule.exe 2  5  4   < $ROOT/inputs/input/lu252 > ./outputs/t2118

./schedule.exe 7  4  5   < $ROOT/inputs/input/lu253 > ./outputs/t2119

./schedule.exe 4  3  2   < $ROOT/inputs/input/lu254 > ./outputs/t2120

./schedule.exe 5  4  9   < $ROOT/inputs/input/lu255 > ./outputs/t2121

./schedule.exe 2  5  10   < $ROOT/inputs/input/lu256 > ./outputs/t2122

./schedule.exe 7  6  1   < $ROOT/inputs/input/lu257 > ./outputs/t2123

./schedule.exe 6  9  6   < $ROOT/inputs/input/lu258 > ./outputs/t2124

./schedule.exe 3  2  5   < $ROOT/inputs/input/lu259 > ./outputs/t2125

./schedule.exe 8  3  4   < $ROOT/inputs/input/lu260 > ./outputs/t2126

./schedule.exe 5  6  7   < $ROOT/inputs/input/lu261 > ./outputs/t2127

./schedule.exe 6  1  10   < $ROOT/inputs/input/lu262 > ./outputs/t2128

./schedule.exe 9  8  5   < $ROOT/inputs/input/lu263 > ./outputs/t2129

./schedule.exe 4  3  4   < $ROOT/inputs/input/lu264 > ./outputs/t2130

./schedule.exe 1  4  3   < $ROOT/inputs/input/lu265 > ./outputs/t2131

./schedule.exe 8  1  10   < $ROOT/inputs/input/lu266 > ./outputs/t2132

./schedule.exe 1  6  5   < $ROOT/inputs/input/lu267 > ./outputs/t2133

./schedule.exe 8  1  6   < $ROOT/inputs/input/lu268 > ./outputs/t2134

./schedule.exe 9  4  9   < $ROOT/inputs/input/lu269 > ./outputs/t2135

./schedule.exe 8  9  4   < $ROOT/inputs/input/lu270 > ./outputs/t2136

./schedule.exe 5  8  3   < $ROOT/inputs/input/lu271 > ./outputs/t2137

./schedule.exe 2  1  8   < $ROOT/inputs/input/lu272 > ./outputs/t2138

./schedule.exe 7  6  3   < $ROOT/inputs/input/lu273 > ./outputs/t2139

./schedule.exe 10  7  10   < $ROOT/inputs/input/lu274 > ./outputs/t2140

./schedule.exe 5  10  9   < $ROOT/inputs/input/lu275 > ./outputs/t2141

./schedule.exe 6  1  2   < $ROOT/inputs/input/lu276 > ./outputs/t2142

./schedule.exe 7  2  3   < $ROOT/inputs/input/lu277 > ./outputs/t2143

./schedule.exe 4  9  4   < $ROOT/inputs/input/lu278 > ./outputs/t2144

./schedule.exe 5  2  7   < $ROOT/inputs/input/lu279 > ./outputs/t2145

./schedule.exe 8  7  8   < $ROOT/inputs/input/lu280 > ./outputs/t2146

./schedule.exe 7  10  1   < $ROOT/inputs/input/lu281 > ./outputs/t2147

./schedule.exe 2  9  8   < $ROOT/inputs/input/lu282 > ./outputs/t2148

./schedule.exe 7  8  5   < $ROOT/inputs/input/lu283 > ./outputs/t2149

./schedule.exe 8  9  8   < $ROOT/inputs/input/lu284 > ./outputs/t2150

./schedule.exe 3  6  5   < $ROOT/inputs/input/lu285 > ./outputs/t2151

./schedule.exe 2  5  4   < $ROOT/inputs/input/lu286 > ./outputs/t2152

./schedule.exe 7  6  5   < $ROOT/inputs/input/lu287 > ./outputs/t2153

./schedule.exe 4  1  4   < $ROOT/inputs/input/lu288 > ./outputs/t2154

./schedule.exe 3  8  1   < $ROOT/inputs/input/lu289 > ./outputs/t2155

./schedule.exe 8  5  4   < $ROOT/inputs/input/lu290 > ./outputs/t2156

./schedule.exe 7  4  7   < $ROOT/inputs/input/lu291 > ./outputs/t2157

./schedule.exe 8  7  6   < $ROOT/inputs/input/lu292 > ./outputs/t2158

./schedule.exe 9  6  5   < $ROOT/inputs/input/lu293 > ./outputs/t2159

./schedule.exe 8  9  4   < $ROOT/inputs/input/lu294 > ./outputs/t2160

./schedule.exe 1  6  7   < $ROOT/inputs/input/lu295 > ./outputs/t2161

./schedule.exe 2  9  6   < $ROOT/inputs/input/lu296 > ./outputs/t2162

./schedule.exe 5  4  7   < $ROOT/inputs/input/lu297 > ./outputs/t2163

./schedule.exe 6  3  10   < $ROOT/inputs/input/lu298 > ./outputs/t2164

./schedule.exe 7  8  9   < $ROOT/inputs/input/lu299 > ./outputs/t2165

./schedule.exe 4  5  2   < $ROOT/inputs/input/lu300 > ./outputs/t2166

./schedule.exe 3  10  1   < $ROOT/inputs/input/lu301 > ./outputs/t2167

./schedule.exe 8  5  4   < $ROOT/inputs/input/lu302 > ./outputs/t2168

./schedule.exe 3  2  5   < $ROOT/inputs/input/lu303 > ./outputs/t2169

./schedule.exe 4  7  10   < $ROOT/inputs/input/lu304 > ./outputs/t2170

./schedule.exe 7  8  3   < $ROOT/inputs/input/lu305 > ./outputs/t2171

./schedule.exe 4  7  10   < $ROOT/inputs/input/lu306 > ./outputs/t2172

./schedule.exe 9  4  5   < $ROOT/inputs/input/lu307 > ./outputs/t2173

./schedule.exe 10  5  8   < $ROOT/inputs/input/lu308 > ./outputs/t2174

./schedule.exe 3  6  3   < $ROOT/inputs/input/lu309 > ./outputs/t2175

./schedule.exe 6  3  4   < $ROOT/inputs/input/lu310 > ./outputs/t2176

./schedule.exe 1  10  3   < $ROOT/inputs/input/lu311 > ./outputs/t2177

./schedule.exe 4  3  8   < $ROOT/inputs/input/lu312 > ./outputs/t2178

./schedule.exe 3  8  7   < $ROOT/inputs/input/lu313 > ./outputs/t2179

./schedule.exe 10  7  8   < $ROOT/inputs/input/lu314 > ./outputs/t2180

./schedule.exe 3  4  5   < $ROOT/inputs/input/lu315 > ./outputs/t2181

./schedule.exe 4  5  8   < $ROOT/inputs/input/lu316 > ./outputs/t2182

./schedule.exe 1  2  3   < $ROOT/inputs/input/lu317 > ./outputs/t2183

./schedule.exe 10  7  8   < $ROOT/inputs/input/lu318 > ./outputs/t2184

./schedule.exe 7  4  9   < $ROOT/inputs/input/lu319 > ./outputs/t2185

./schedule.exe 4  7  10   < $ROOT/inputs/input/lu320 > ./outputs/t2186

./schedule.exe 9  6  5   < $ROOT/inputs/input/lu321 > ./outputs/t2187

./schedule.exe 6  1  4   < $ROOT/inputs/input/lu322 > ./outputs/t2188

./schedule.exe 9  10  3   < $ROOT/inputs/input/lu323 > ./outputs/t2189

./schedule.exe 8  5  4   < $ROOT/inputs/input/lu324 > ./outputs/t2190

./schedule.exe 9  4  3   < $ROOT/inputs/input/lu325 > ./outputs/t2191

./schedule.exe 8  3  4   < $ROOT/inputs/input/lu326 > ./outputs/t2192

./schedule.exe 5  10  1   < $ROOT/inputs/input/lu327 > ./outputs/t2193

./schedule.exe 8  3  10   < $ROOT/inputs/input/lu328 > ./outputs/t2194

./schedule.exe 7  6  1   < $ROOT/inputs/input/lu329 > ./outputs/t2195

./schedule.exe 6  5  4   < $ROOT/inputs/input/lu330 > ./outputs/t2196

./schedule.exe 5  2  9   < $ROOT/inputs/input/lu331 > ./outputs/t2197

./schedule.exe 4  5  2   < $ROOT/inputs/input/lu332 > ./outputs/t2198

./schedule.exe 3  4  3   < $ROOT/inputs/input/lu333 > ./outputs/t2199

./schedule.exe 6  9  8   < $ROOT/inputs/input/lu334 > ./outputs/t2200

./schedule.exe 7  6  1   < $ROOT/inputs/input/lu335 > ./outputs/t2201

./schedule.exe 4  1  2   < $ROOT/inputs/input/lu336 > ./outputs/t2202

./schedule.exe 5  10  1   < $ROOT/inputs/input/lu337 > ./outputs/t2203

./schedule.exe 10  9  2   < $ROOT/inputs/input/lu338 > ./outputs/t2204

./schedule.exe 5  2  1   < $ROOT/inputs/input/lu339 > ./outputs/t2205

./schedule.exe 8  7  8   < $ROOT/inputs/input/lu340 > ./outputs/t2206

./schedule.exe 7  6  9   < $ROOT/inputs/input/lu341 > ./outputs/t2207

./schedule.exe 10  1  10   < $ROOT/inputs/input/lu342 > ./outputs/t2208

./schedule.exe 9  6  7   < $ROOT/inputs/input/lu343 > ./outputs/t2209

./schedule.exe 6  7  10   < $ROOT/inputs/input/lu344 > ./outputs/t2210

./schedule.exe 7  10  9   < $ROOT/inputs/input/lu345 > ./outputs/t2211

./schedule.exe 6  7  10   < $ROOT/inputs/input/lu346 > ./outputs/t2212

./schedule.exe 3  4  5   < $ROOT/inputs/input/lu347 > ./outputs/t2213

./schedule.exe 10  9  6   < $ROOT/inputs/input/lu348 > ./outputs/t2214

./schedule.exe 3  6  9   < $ROOT/inputs/input/lu349 > ./outputs/t2215

./schedule.exe 10  5  8   < $ROOT/inputs/input/lu350 > ./outputs/t2216

./schedule.exe 5  8  9   < $ROOT/inputs/input/lu351 > ./outputs/t2217

./schedule.exe 2  7  4   < $ROOT/inputs/input/lu352 > ./outputs/t2218

./schedule.exe 3  4  9   < $ROOT/inputs/input/lu353 > ./outputs/t2219

./schedule.exe 6  9  8   < $ROOT/inputs/input/lu354 > ./outputs/t2220

./schedule.exe 7  8  9   < $ROOT/inputs/input/lu355 > ./outputs/t2221

./schedule.exe 10  7  4   < $ROOT/inputs/input/lu356 > ./outputs/t2222

./schedule.exe 1  4  9   < $ROOT/inputs/input/lu357 > ./outputs/t2223

./schedule.exe 10  9  10   < $ROOT/inputs/input/lu358 > ./outputs/t2224

./schedule.exe 5  4  7   < $ROOT/inputs/input/lu359 > ./outputs/t2225

./schedule.exe 2  3  4   < $ROOT/inputs/input/lu360 > ./outputs/t2226

./schedule.exe 7  8  3   < $ROOT/inputs/input/lu361 > ./outputs/t2227

./schedule.exe 8  9  10   < $ROOT/inputs/input/lu362 > ./outputs/t2228

./schedule.exe 1  6  5   < $ROOT/inputs/input/lu363 > ./outputs/t2229

./schedule.exe 4  3  6   < $ROOT/inputs/input/lu364 > ./outputs/t2230

./schedule.exe 7  2  5   < $ROOT/inputs/input/lu365 > ./outputs/t2231

./schedule.exe 4  3  2   < $ROOT/inputs/input/lu366 > ./outputs/t2232

./schedule.exe 9  10  3   < $ROOT/inputs/input/lu367 > ./outputs/t2233

./schedule.exe 4  1  8   < $ROOT/inputs/input/lu368 > ./outputs/t2234

./schedule.exe 1  8  7   < $ROOT/inputs/input/lu369 > ./outputs/t2235

./schedule.exe 6  3  8   < $ROOT/inputs/input/lu370 > ./outputs/t2236

./schedule.exe 5  4  3   < $ROOT/inputs/input/lu371 > ./outputs/t2237

./schedule.exe 10  1  8   < $ROOT/inputs/input/lu372 > ./outputs/t2238

./schedule.exe 3  8  7   < $ROOT/inputs/input/lu373 > ./outputs/t2239

./schedule.exe 6  9  10   < $ROOT/inputs/input/lu374 > ./outputs/t2240

./schedule.exe 9  8  3   < $ROOT/inputs/input/lu375 > ./outputs/t2241

./schedule.exe 6  3  10   < $ROOT/inputs/input/lu376 > ./outputs/t2242

./schedule.exe 3  10  9   < $ROOT/inputs/input/lu377 > ./outputs/t2243

./schedule.exe 10  3  8   < $ROOT/inputs/input/lu378 > ./outputs/t2244

./schedule.exe 5  2  7   < $ROOT/inputs/input/lu379 > ./outputs/t2245

./schedule.exe 6  1  6   < $ROOT/inputs/input/lu380 > ./outputs/t2246

./schedule.exe 3  2  3   < $ROOT/inputs/input/lu381 > ./outputs/t2247

./schedule.exe 8  9  8   < $ROOT/inputs/input/lu382 > ./outputs/t2248

./schedule.exe 7  6  5   < $ROOT/inputs/input/lu383 > ./outputs/t2249

./schedule.exe 6  7  8   < $ROOT/inputs/input/lu384 > ./outputs/t2250

./schedule.exe 3  8  9   < $ROOT/inputs/input/lu385 > ./outputs/t2251

./schedule.exe 10  9  8   < $ROOT/inputs/input/lu386 > ./outputs/t2252

./schedule.exe 5  8  7   < $ROOT/inputs/input/lu387 > ./outputs/t2253

./schedule.exe 2  7  2   < $ROOT/inputs/input/lu388 > ./outputs/t2254

./schedule.exe 3  10  1   < $ROOT/inputs/input/lu389 > ./outputs/t2255

./schedule.exe 10  3  8   < $ROOT/inputs/input/lu390 > ./outputs/t2256

./schedule.exe 1  8  1   < $ROOT/inputs/input/lu391 > ./outputs/t2257

./schedule.exe 4  5  10   < $ROOT/inputs/input/lu392 > ./outputs/t2258

./schedule.exe 7  6  9   < $ROOT/inputs/input/lu393 > ./outputs/t2259

./schedule.exe 10  7  6   < $ROOT/inputs/input/lu394 > ./outputs/t2260

./schedule.exe 7  6  1   < $ROOT/inputs/input/lu395 > ./outputs/t2261

./schedule.exe 10  5  2   < $ROOT/inputs/input/lu396 > ./outputs/t2262

./schedule.exe 1  2  1   < $ROOT/inputs/input/lu397 > ./outputs/t2263

./schedule.exe 2  9  10   < $ROOT/inputs/input/lu398 > ./outputs/t2264

./schedule.exe 3  8  7   < $ROOT/inputs/input/lu399 > ./outputs/t2265

./schedule.exe 6  9  4   < $ROOT/inputs/input/lu400 > ./outputs/t2266

./schedule.exe 3  6  7   < $ROOT/inputs/input/lu401 > ./outputs/t2267

./schedule.exe 10  3  6   < $ROOT/inputs/input/lu402 > ./outputs/t2268

./schedule.exe 5  10  5   < $ROOT/inputs/input/lu403 > ./outputs/t2269

./schedule.exe 6  7  10   < $ROOT/inputs/input/lu404 > ./outputs/t2270

./schedule.exe 7  10  9   < $ROOT/inputs/input/lu405 > ./outputs/t2271

./schedule.exe 4  5  10   < $ROOT/inputs/input/lu406 > ./outputs/t2272

./schedule.exe 1  6  7   < $ROOT/inputs/input/lu407 > ./outputs/t2273

./schedule.exe 6  7  10   < $ROOT/inputs/input/lu408 > ./outputs/t2274

./schedule.exe 1  8  9   < $ROOT/inputs/input/lu409 > ./outputs/t2275

./schedule.exe 8  3  8   < $ROOT/inputs/input/lu410 > ./outputs/t2276

./schedule.exe 3  6  9   < $ROOT/inputs/input/lu411 > ./outputs/t2277

./schedule.exe 8  9  6   < $ROOT/inputs/input/lu412 > ./outputs/t2278

./schedule.exe 9  2  5   < $ROOT/inputs/input/lu413 > ./outputs/t2279

./schedule.exe 10  9  2   < $ROOT/inputs/input/lu414 > ./outputs/t2280

./schedule.exe 5  8  1   < $ROOT/inputs/input/lu415 > ./outputs/t2281

./schedule.exe 4  5  10   < $ROOT/inputs/input/lu416 > ./outputs/t2282

./schedule.exe 5  10  1   < $ROOT/inputs/input/lu417 > ./outputs/t2283

./schedule.exe 6  3  8   < $ROOT/inputs/input/lu418 > ./outputs/t2284

./schedule.exe 9  4  5   < $ROOT/inputs/input/lu419 > ./outputs/t2285

./schedule.exe 4  5  10   < $ROOT/inputs/input/lu420 > ./outputs/t2286

./schedule.exe 7  6  5   < $ROOT/inputs/input/lu421 > ./outputs/t2287

./schedule.exe 10  7  2   < $ROOT/inputs/input/lu422 > ./outputs/t2288

./schedule.exe 5  6  7   < $ROOT/inputs/input/lu423 > ./outputs/t2289

./schedule.exe 6  5  8   < $ROOT/inputs/input/lu424 > ./outputs/t2290

./schedule.exe 1  6  5   < $ROOT/inputs/input/lu425 > ./outputs/t2291

./schedule.exe 6  9  4   < $ROOT/inputs/input/lu426 > ./outputs/t2292

./schedule.exe 9  6  5   < $ROOT/inputs/input/lu427 > ./outputs/t2293

./schedule.exe 10  5  4   < $ROOT/inputs/input/lu428 > ./outputs/t2294

./schedule.exe 7  6  3   < $ROOT/inputs/input/lu429 > ./outputs/t2295

./schedule.exe 2  5  10   < $ROOT/inputs/input/lu430 > ./outputs/t2296

./schedule.exe 7  10  7   < $ROOT/inputs/input/lu431 > ./outputs/t2297

./schedule.exe 10  1  2   < $ROOT/inputs/input/lu432 > ./outputs/t2298

./schedule.exe 1  8  7   < $ROOT/inputs/input/lu433 > ./outputs/t2299

./schedule.exe 10  1  4   < $ROOT/inputs/input/lu434 > ./outputs/t2300

./schedule.exe 7  4  5   < $ROOT/inputs/input/lu435 > ./outputs/t2301

./schedule.exe 4  9  4   < $ROOT/inputs/input/lu436 > ./outputs/t2302

./schedule.exe 3  2  3   < $ROOT/inputs/input/lu437 > ./outputs/t2303

./schedule.exe 4  1  6   < $ROOT/inputs/input/lu438 > ./outputs/t2304

./schedule.exe 7  2  7   < $ROOT/inputs/input/lu439 > ./outputs/t2305

./schedule.exe 10  7  4   < $ROOT/inputs/input/lu440 > ./outputs/t2306

./schedule.exe 9  4  9   < $ROOT/inputs/input/lu441 > ./outputs/t2307

./schedule.exe 10  7  8   < $ROOT/inputs/input/lu442 > ./outputs/t2308

./schedule.exe 5  8  5   < $ROOT/inputs/input/lu443 > ./outputs/t2309

./schedule.exe 6  3  4   < $ROOT/inputs/input/lu444 > ./outputs/t2310

./schedule.exe 7  8  3   < $ROOT/inputs/input/lu445 > ./outputs/t2311

./schedule.exe 6  5  8   < $ROOT/inputs/input/lu446 > ./outputs/t2312

./schedule.exe 7  8  9   < $ROOT/inputs/input/lu447 > ./outputs/t2313

./schedule.exe 4  7  10   < $ROOT/inputs/input/lu448 > ./outputs/t2314

./schedule.exe 1  6  5   < $ROOT/inputs/input/lu449 > ./outputs/t2315

./schedule.exe 10  5  6   < $ROOT/inputs/input/lu450 > ./outputs/t2316

./schedule.exe 3  6  3   < $ROOT/inputs/input/lu451 > ./outputs/t2317

./schedule.exe 2  5  4   < $ROOT/inputs/input/lu452 > ./outputs/t2318

./schedule.exe 1  6  9   < $ROOT/inputs/input/lu453 > ./outputs/t2319

./schedule.exe 10  7  2   < $ROOT/inputs/input/lu454 > ./outputs/t2320

./schedule.exe 3  2  3   < $ROOT/inputs/input/lu455 > ./outputs/t2321

./schedule.exe 6  1  2   < $ROOT/inputs/input/lu456 > ./outputs/t2322

./schedule.exe 7  2  5   < $ROOT/inputs/input/lu457 > ./outputs/t2323

./schedule.exe 4  1  4   < $ROOT/inputs/input/lu458 > ./outputs/t2324

./schedule.exe 5  6  5   < $ROOT/inputs/input/lu459 > ./outputs/t2325

./schedule.exe 6  3  10   < $ROOT/inputs/input/lu460 > ./outputs/t2326

./schedule.exe 3  6  3   < $ROOT/inputs/input/lu461 > ./outputs/t2327

./schedule.exe 8  9  6   < $ROOT/inputs/input/lu462 > ./outputs/t2328

./schedule.exe 9  6  9   < $ROOT/inputs/input/lu463 > ./outputs/t2329

./schedule.exe 10  7  2   < $ROOT/inputs/input/lu464 > ./outputs/t2330

./schedule.exe 3  6  3   < $ROOT/inputs/input/lu465 > ./outputs/t2331

./schedule.exe 4  7  10   < $ROOT/inputs/input/lu466 > ./outputs/t2332

./schedule.exe 3  8  3   < $ROOT/inputs/input/lu467 > ./outputs/t2333

./schedule.exe 10  9  4   < $ROOT/inputs/input/lu468 > ./outputs/t2334

./schedule.exe 1  8  9   < $ROOT/inputs/input/lu469 > ./outputs/t2335

./schedule.exe 10  7  8   < $ROOT/inputs/input/lu470 > ./outputs/t2336

./schedule.exe 3  10  7   < $ROOT/inputs/input/lu471 > ./outputs/t2337

./schedule.exe 8  3  2   < $ROOT/inputs/input/lu472 > ./outputs/t2338

./schedule.exe 1  2  7   < $ROOT/inputs/input/lu473 > ./outputs/t2339

./schedule.exe 4  9  4   < $ROOT/inputs/input/lu474 > ./outputs/t2340

./schedule.exe 3  6  9   < $ROOT/inputs/input/lu475 > ./outputs/t2341

./schedule.exe 10  5  4   < $ROOT/inputs/input/lu476 > ./outputs/t2342

./schedule.exe 9  8  7   < $ROOT/inputs/input/lu477 > ./outputs/t2343

./schedule.exe 2  3  6   < $ROOT/inputs/input/lu478 > ./outputs/t2344

./schedule.exe 3  8  7   < $ROOT/inputs/input/lu479 > ./outputs/t2345

./schedule.exe 8  7  4   < $ROOT/inputs/input/lu480 > ./outputs/t2346

./schedule.exe 9  4  3   < $ROOT/inputs/input/lu481 > ./outputs/t2347

./schedule.exe 8  5  10   < $ROOT/inputs/input/lu482 > ./outputs/t2348

./schedule.exe 5  8  3   < $ROOT/inputs/input/lu483 > ./outputs/t2349

./schedule.exe 2  7  4   < $ROOT/inputs/input/lu484 > ./outputs/t2350

./schedule.exe 5  6  7   < $ROOT/inputs/input/lu485 > ./outputs/t2351

./schedule.exe 6  3  2   < $ROOT/inputs/input/lu486 > ./outputs/t2352

./schedule.exe 5  2  7   < $ROOT/inputs/input/lu487 > ./outputs/t2353

./schedule.exe 10  5  4   < $ROOT/inputs/input/lu488 > ./outputs/t2354

./schedule.exe 3  4  3   < $ROOT/inputs/input/lu489 > ./outputs/t2355

./schedule.exe 10  5  4   < $ROOT/inputs/input/lu490 > ./outputs/t2356

./schedule.exe 3  10  1   < $ROOT/inputs/input/lu491 > ./outputs/t2357

./schedule.exe 6  5  4   < $ROOT/inputs/input/lu492 > ./outputs/t2358

./schedule.exe 9  2  9   < $ROOT/inputs/input/lu493 > ./outputs/t2359

./schedule.exe 2  5  4   < $ROOT/inputs/input/lu494 > ./outputs/t2360

./schedule.exe 7  4  9   < $ROOT/inputs/input/lu495 > ./outputs/t2361

./schedule.exe 8  1  8   < $ROOT/inputs/input/lu496 > ./outputs/t2362

./schedule.exe 5  10  3   < $ROOT/inputs/input/lu497 > ./outputs/t2363

./schedule.exe 6  3  6   < $ROOT/inputs/input/lu498 > ./outputs/t2364

./schedule.exe 5  6  5   < $ROOT/inputs/input/lu499 > ./outputs/t2365

./schedule.exe 8  7  10   < $ROOT/inputs/input/lu500 > ./outputs/t2366

./schedule.exe 7 1 9  < $ROOT/inputs/input/bdt.58 > ./outputs/t2367

./schedule.exe 1 4 2  < $ROOT/inputs/input/bdt.35 > ./outputs/t2368

./schedule.exe 4 8 8  < $ROOT/inputs/input/bdt.18 > ./outputs/t2369

./schedule.exe 7 2 10  < $ROOT/inputs/input/bdt.24 > ./outputs/t2370

./schedule.exe 6 8 3  < $ROOT/inputs/input/bdt.17 > ./outputs/t2371

./schedule.exe 7 10 5  < $ROOT/inputs/input/bdt.84 > ./outputs/t2372

./schedule.exe 6 8 3  < $ROOT/inputs/input/bdt.56 > ./outputs/t2373

./schedule.exe 8 8 0  < $ROOT/inputs/input/bdt.80 > ./outputs/t2374

./schedule.exe 8 1 4  < $ROOT/inputs/input/bdt.35 > ./outputs/t2375

./schedule.exe 9 3 4  < $ROOT/inputs/input/bdt.20 > ./outputs/t2376

./schedule.exe 8 8 5  < $ROOT/inputs/input/bdt.14 > ./outputs/t2377

./schedule.exe 4 9 7  < $ROOT/inputs/input/bdt.91 > ./outputs/t2378

./schedule.exe 1 8 3  < $ROOT/inputs/input/bdt.9 > ./outputs/t2379

./schedule.exe 10 10 7  < $ROOT/inputs/input/bdt.2 > ./outputs/t2380

./schedule.exe 5 2 8  < $ROOT/inputs/input/bdt.41 > ./outputs/t2381

./schedule.exe 8 3 4  < $ROOT/inputs/input/bdt.84 > ./outputs/t2382

./schedule.exe 10 10 6  < $ROOT/inputs/input/bdt.20 > ./outputs/t2383

./schedule.exe 10 7 9  < $ROOT/inputs/input/bdt.22 > ./outputs/t2384

./schedule.exe 2 8 7  < $ROOT/inputs/input/bdt.100 > ./outputs/t2385

./schedule.exe 10 3 4  < $ROOT/inputs/input/bdt.6 > ./outputs/t2386

./schedule.exe 2 5 3  < $ROOT/inputs/input/bdt.46 > ./outputs/t2387

./schedule.exe 8 6 0  < $ROOT/inputs/input/bdt.16 > ./outputs/t2388

./schedule.exe 2 7 7  < $ROOT/inputs/input/bdt.77 > ./outputs/t2389

./schedule.exe 0 5 1  < $ROOT/inputs/input/bdt.1 > ./outputs/t2390

./schedule.exe 5 4 5  < $ROOT/inputs/input/bdt.20 > ./outputs/t2391

./schedule.exe 8 6 2  < $ROOT/inputs/input/bdt.35 > ./outputs/t2392

./schedule.exe 8 4 4  < $ROOT/inputs/input/bdt.63 > ./outputs/t2393

./schedule.exe 6 4 8  < $ROOT/inputs/input/bdt.82 > ./outputs/t2394

./schedule.exe 0 1 3  < $ROOT/inputs/input/bdt.80 > ./outputs/t2395

./schedule.exe 8 7 9  < $ROOT/inputs/input/bdt.47 > ./outputs/t2396

./schedule.exe 1 9 9  < $ROOT/inputs/input/bdt.27 > ./outputs/t2397

./schedule.exe 1 9 0  < $ROOT/inputs/input/bdt.39 > ./outputs/t2398

./schedule.exe 4 0 10  < $ROOT/inputs/input/bdt.83 > ./outputs/t2399

./schedule.exe 7 0 6  < $ROOT/inputs/input/bdt.38 > ./outputs/t2400

./schedule.exe 5 0 7  < $ROOT/inputs/input/bdt.30 > ./outputs/t2401

./schedule.exe 2 9 7  < $ROOT/inputs/input/bdt.74 > ./outputs/t2402

./schedule.exe 10 10 6  < $ROOT/inputs/input/bdt.42 > ./outputs/t2403

./schedule.exe 2 5 10  < $ROOT/inputs/input/bdt.25 > ./outputs/t2404

./schedule.exe 8 5 0  < $ROOT/inputs/input/bdt.31 > ./outputs/t2405

./schedule.exe 6 9 1  < $ROOT/inputs/input/bdt.37 > ./outputs/t2406

./schedule.exe 8 4 2  < $ROOT/inputs/input/bdt.29 > ./outputs/t2407

./schedule.exe 5 9 1  < $ROOT/inputs/input/bdt.91 > ./outputs/t2408

./schedule.exe 5 1 2  < $ROOT/inputs/input/bdt.95 > ./outputs/t2409

./schedule.exe 1 9 10  < $ROOT/inputs/input/bdt.79 > ./outputs/t2410

./schedule.exe 3 6 5  < $ROOT/inputs/input/bdt.83 > ./outputs/t2411

./schedule.exe 7 2 8  < $ROOT/inputs/input/bdt.86 > ./outputs/t2412

./schedule.exe 4 7 7  < $ROOT/inputs/input/bdt.83 > ./outputs/t2413

./schedule.exe 0 3 6  < $ROOT/inputs/input/bdt.36 > ./outputs/t2414

./schedule.exe 5 5 1  < $ROOT/inputs/input/bdt.49 > ./outputs/t2415

./schedule.exe 6 9 8  < $ROOT/inputs/input/bdt.64 > ./outputs/t2416

./schedule.exe 2 3 1  < $ROOT/inputs/input/nnt1 > ./outputs/t2417

./schedule.exe 2 3 1  < $ROOT/inputs/input/nnt2 > ./outputs/t2418

./schedule.exe 1 0 1  < $ROOT/inputs/input/nnt2 > ./outputs/t2419

./schedule.exe 1 0 2  < $ROOT/inputs/input/nnt3 > ./outputs/t2420

./schedule.exe 3 0 2  < $ROOT/inputs/input/nnt3 > ./outputs/t2421

./schedule.exe 3 2 2  < $ROOT/inputs/input/nnt4 > ./outputs/t2422

./schedule.exe 4 2 2  < $ROOT/inputs/input/nnt4 > ./outputs/t2423

./schedule.exe 4 0 2  < $ROOT/inputs/input/nnt5 > ./outputs/t2424

./schedule.exe 4 3 2  < $ROOT/inputs/input/nnt6 > ./outputs/t2425

./schedule.exe 4 3 2  < $ROOT/inputs/input/nnt7 > ./outputs/t2426

./schedule.exe 4 3 2  < $ROOT/inputs/input/nnt8 > ./outputs/t2427

./schedule.exe 2 3 2  < $ROOT/inputs/input/nnt8 > ./outputs/t2428

./schedule.exe 2 0 2  < $ROOT/inputs/input/nnt8 > ./outputs/t2429

./schedule.exe 2 0 2  < $ROOT/inputs/input/nnt9 > ./outputs/t2430

./schedule.exe 2 3 2  < $ROOT/inputs/input/nnt9 > ./outputs/t2431

./schedule.exe 2 3 1  < $ROOT/inputs/input/nnt9 > ./outputs/t2432

./schedule.exe 5 3 1  < $ROOT/inputs/input/nnt9 > ./outputs/t2433

./schedule.exe 5 3 1  < $ROOT/inputs/input/nnt10 > ./outputs/t2434

./schedule.exe 0 3 1  < $ROOT/inputs/input/nnt10 > ./outputs/t2435

./schedule.exe 0 1 1  < $ROOT/inputs/input/nnt10 > ./outputs/t2436

./schedule.exe 0 1 1  < $ROOT/inputs/input/nnt11 > ./outputs/t2437

./schedule.exe 3 4 1  < $ROOT/inputs/input/nnt11 > ./outputs/t2438

./schedule.exe 3 1 1  < $ROOT/inputs/input/nnt11 > ./outputs/t2439

./schedule.exe 3 1 1  < $ROOT/inputs/input/nnt12 > ./outputs/t2440

./schedule.exe 3 1 0  < $ROOT/inputs/input/nnt12 > ./outputs/t2441

./schedule.exe 5 0 0  < $ROOT/inputs/input/nnt12 > ./outputs/t2442

./schedule.exe 5 1 1  < $ROOT/inputs/input/nnt13 > ./outputs/t2443

./schedule.exe 1 1 1  < $ROOT/inputs/input/nnt13 > ./outputs/t2444

./schedule.exe 1 1 1  < $ROOT/inputs/input/nnt14 > ./outputs/t2445

./schedule.exe 3 5 2  < $ROOT/inputs/input/nnt14 > ./outputs/t2446

./schedule.exe 3 0 0  < $ROOT/inputs/input/nnt14 > ./outputs/t2447

./schedule.exe 1 0 7  < $ROOT/inputs/input/inp.hf.18 > ./outputs/t2448

./schedule.exe 3 2 4  < $ROOT/inputs/input/inp.hf.17 > ./outputs/t2449

./schedule.exe 0 1 0  < $ROOT/inputs/input/adt.55 > ./outputs/t2450

./schedule.exe 0 0 0  < $ROOT/inputs/input/adt.3 > ./outputs/t2451

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2452

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2453

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2454

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2455

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2456

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2457

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2458

./schedule.exe 1 1  < $ROOT/inputs/input/ad.2 > ./outputs/t2459

./schedule.exe 0 0 0  < $ROOT/inputs/input/inp.hf.14 > ./outputs/t2460

./schedule.exe 0 1 5  < $ROOT/inputs/input/inp.hf.14 > ./outputs/t2461

./schedule.exe 0 5 1  < $ROOT/inputs/input/inp.hf.13 > ./outputs/t2462

./schedule.exe 1 2 3  < $ROOT/inputs/input/inp.hf.12 > ./outputs/t2463

./schedule.exe 0 1 0  < $ROOT/inputs/input/inp.hf.8 > ./outputs/t2464

./schedule.exe 2 1 0  < $ROOT/inputs/input/inp.hf.1 > ./outputs/t2465

./schedule.exe 1 1 0  < $ROOT/inputs/input/inp.hf.12 > ./outputs/t2466

./schedule.exe 0 2 5  < $ROOT/inputs/input/inp.hf.8 > ./outputs/t2467

./schedule.exe 0 1 2   < $ROOT/inputs/input/lu119 > ./outputs/t2468

./schedule.exe 1 0 3   < $ROOT/inputs/input/lu68 > ./outputs/t2469

./schedule.exe 3 3 1  < $ROOT/inputs/input/ft.2 > ./outputs/t2470

./schedule.exe 9 4 2  < $ROOT/inputs/input/ft.21 > ./outputs/t2471

./schedule.exe 3 9 7  < $ROOT/inputs/input/ft.1 > ./outputs/t2472

./schedule.exe 2 0 2  < $ROOT/inputs/input/ft.30 > ./outputs/t2473

./schedule.exe 6 8 3  < $ROOT/inputs/input/ft.29 > ./outputs/t2474

./schedule.exe 10 8 3  < $ROOT/inputs/input/ft.25 > ./outputs/t2475

./schedule.exe 2 7 9  < $ROOT/inputs/input/ft.6 > ./outputs/t2476

./schedule.exe 8 6 5  < $ROOT/inputs/input/ft.1 > ./outputs/t2477

./schedule.exe 2 5 6  < $ROOT/inputs/input/ft.30 > ./outputs/t2478

./schedule.exe 2 1 5  < $ROOT/inputs/input/ft.20 > ./outputs/t2479

./schedule.exe 10 0 7  < $ROOT/inputs/input/ft.25 > ./outputs/t2480

./schedule.exe 7 8 1  < $ROOT/inputs/input/ft.25 > ./outputs/t2481

./schedule.exe 10 7 9  < $ROOT/inputs/input/ft.3 > ./outputs/t2482

./schedule.exe 1 2 3  < $ROOT/inputs/input/ft.20 > ./outputs/t2483

./schedule.exe 3 7 3  < $ROOT/inputs/input/ft.18 > ./outputs/t2484

./schedule.exe 3 6 4  < $ROOT/inputs/input/ft.9 > ./outputs/t2485

./schedule.exe 7 10 9  < $ROOT/inputs/input/ft.6 > ./outputs/t2486

./schedule.exe 6 8 9  < $ROOT/inputs/input/ft.26 > ./outputs/t2487

./schedule.exe 3 1 5  < $ROOT/inputs/input/ft.8 > ./outputs/t2488

./schedule.exe 2 4 2  < $ROOT/inputs/input/ft.15 > ./outputs/t2489

./schedule.exe 6 6 0  < $ROOT/inputs/input/ft.19 > ./outputs/t2490

./schedule.exe 4 10 6  < $ROOT/inputs/input/ft.26 > ./outputs/t2491

./schedule.exe 6 0 1  < $ROOT/inputs/input/ft.4 > ./outputs/t2492

./schedule.exe 7 2 5  < $ROOT/inputs/input/ft.5 > ./outputs/t2493

./schedule.exe 9 8 0  < $ROOT/inputs/input/ft.1 > ./outputs/t2494

./schedule.exe 4 2 10  < $ROOT/inputs/input/ft.1 > ./outputs/t2495

./schedule.exe 4 1 4  < $ROOT/inputs/input/ft.14 > ./outputs/t2496

./schedule.exe 1 1 9  < $ROOT/inputs/input/ft.21 > ./outputs/t2497

./schedule.exe 2 7 3  < $ROOT/inputs/input/ft.11 > ./outputs/t2498

./schedule.exe 10 10 6  < $ROOT/inputs/input/ft.2 > ./outputs/t2499

./schedule.exe 8 9 2  < $ROOT/inputs/input/ft.8 > ./outputs/t2500

./schedule.exe 2 9 10  < $ROOT/inputs/input/ft.9 > ./outputs/t2501

./schedule.exe 6 9 1  < $ROOT/inputs/input/ft.11 > ./outputs/t2502

./schedule.exe 10 7 5  < $ROOT/inputs/input/ft.3 > ./outputs/t2503

./schedule.exe 7 1 4  < $ROOT/inputs/input/ft.19 > ./outputs/t2504

./schedule.exe 1 2 1  < $ROOT/inputs/input/ft.24 > ./outputs/t2505

./schedule.exe 3 1 6  < $ROOT/inputs/input/ft.17 > ./outputs/t2506

./schedule.exe 1 9 5  < $ROOT/inputs/input/ft.14 > ./outputs/t2507

./schedule.exe 9 5 8  < $ROOT/inputs/input/ft.8 > ./outputs/t2508

./schedule.exe 0 6 3  < $ROOT/inputs/input/ft.14 > ./outputs/t2509

./schedule.exe 8 6 2  < $ROOT/inputs/input/ft.27 > ./outputs/t2510

./schedule.exe 6 6 10  < $ROOT/inputs/input/ft.8 > ./outputs/t2511

./schedule.exe 8 2 9  < $ROOT/inputs/input/ft.19 > ./outputs/t2512

./schedule.exe 2 2 6  < $ROOT/inputs/input/ft.11 > ./outputs/t2513

./schedule.exe 4 9 4  < $ROOT/inputs/input/ft.15 > ./outputs/t2514

./schedule.exe 10 7 9  < $ROOT/inputs/input/ft.26 > ./outputs/t2515

./schedule.exe 4 7 6  < $ROOT/inputs/input/ft.24 > ./outputs/t2516

./schedule.exe 9 5 3  < $ROOT/inputs/input/ft.1 > ./outputs/t2517

./schedule.exe 3 5 9  < $ROOT/inputs/input/ft.25 > ./outputs/t2518

./schedule.exe 5 3 10  < $ROOT/inputs/input/ft.5 > ./outputs/t2519

./schedule.exe  < $ROOT/inputs/input/bdt.77 > ./outputs/t2520

./schedule.exe  < $ROOT/inputs/input/bdt.77 > ./outputs/t2521

./schedule.exe  < $ROOT/inputs/input/bdt.77 > ./outputs/t2522

./schedule.exe 1 2   < $ROOT/inputs/input/bdt.77 > ./outputs/t2523

./schedule.exe 2 3   < $ROOT/inputs/input/bdt.77 > ./outputs/t2524

./schedule.exe 2 3   < $ROOT/inputs/input/bdt.77 > ./outputs/t2525

./schedule.exe 0 0  < $ROOT/inputs/input/bdt.77 > ./outputs/t2526

./schedule.exe 0   0     < $ROOT/inputs/input/bdt.77 > ./outputs/t2527

./schedule.exe 0          0  < $ROOT/inputs/input/bdt.77 > ./outputs/t2528

./schedule.exe 1 1 1  < $ROOT/inputs/input/et.1 > ./outputs/t2529

./schedule.exe 1 2 3  < $ROOT/inputs/input/et.3 > ./outputs/t2530

./schedule.exe 1 2 3  < $ROOT/inputs/input/et.2 > ./outputs/t2531

./schedule.exe 2 1 3  < $ROOT/inputs/input/et.4 > ./outputs/t2532

./schedule.exe 3 4 1  < $ROOT/inputs/input/et.5 > ./outputs/t2533

./schedule.exe 1 2 1  < $ROOT/inputs/input/et.6 > ./outputs/t2534

./schedule.exe 2 1 2  < $ROOT/inputs/input/et.7 > ./outputs/t2535

./schedule.exe 2 3 1  < $ROOT/inputs/input/et.8 > ./outputs/t2536

./schedule.exe 2 1 1  < $ROOT/inputs/input/et.9 > ./outputs/t2537

./schedule.exe 2 5 1  < $ROOT/inputs/input/et.10 > ./outputs/t2538

./schedule.exe 0 0 0  < $ROOT/inputs/input/et.11 > ./outputs/t2539

./schedule.exe 0 1 4  < $ROOT/inputs/input/et.12 > ./outputs/t2540

./schedule.exe 1 2 3  < $ROOT/inputs/input/et.13 > ./outputs/t2541

./schedule.exe 4 1 2  < $ROOT/inputs/input/et.14 > ./outputs/t2542

./schedule.exe 1 2 3  < $ROOT/inputs/input/et.15 > ./outputs/t2543

./schedule.exe 3  1  < $ROOT/inputs/input/ft.2 > ./outputs/t2544

./schedule.exe 9  2  < $ROOT/inputs/input/ft.21 > ./outputs/t2545

./schedule.exe 3   < $ROOT/inputs/input/ft.1 > ./outputs/t2546

./schedule.exe 2  2  < $ROOT/inputs/input/ft.30 > ./outputs/t2547

./schedule.exe 6   < $ROOT/inputs/input/ft.29 > ./outputs/t2548

./schedule.exe 8 3  < $ROOT/inputs/input/ft.25 > ./outputs/t2549

./schedule.exe 2  9  < $ROOT/inputs/input/ft.6 > ./outputs/t2550

./schedule.exe 8 6   < $ROOT/inputs/input/ft.1 > ./outputs/t2551

./schedule.exe 2 5   < $ROOT/inputs/input/ft.30 > ./outputs/t2552

./schedule.exe 2  5  < $ROOT/inputs/input/ft.20 > ./outputs/t2553

./schedule.exe 2 5 0  < $ROOT/inputs/input/dt.1 > ./outputs/t2554

./schedule.exe 2 0 0  < $ROOT/inputs/input/dt.1 > ./outputs/t2555

./schedule.exe 2 0 0  < $ROOT/inputs/input/dt.2 > ./outputs/t2556

./schedule.exe 2 2 2   < $ROOT/inputs/input/dt.2 > ./outputs/t2557

./schedule.exe 0 2 1   < $ROOT/inputs/input/dt.3 > ./outputs/t2558

./schedule.exe 1 4 2   < $ROOT/inputs/input/dt.4 > ./outputs/t2559

./schedule.exe 0 4 2   < $ROOT/inputs/input/dt.5 > ./outputs/t2560

./schedule.exe 0 4 2   < $ROOT/inputs/input/dt.6 > ./outputs/t2561

./schedule.exe 1 4 2   < $ROOT/inputs/input/dt.7 > ./outputs/t2562

./schedule.exe 1 4 0   < $ROOT/inputs/input/dt.8 > ./outputs/t2563

./schedule.exe 1 4 0   < $ROOT/inputs/input/dt.9 > ./outputs/t2564

./schedule.exe 0 2 0  < $ROOT/inputs/input/dt.9 > ./outputs/t2565

./schedule.exe 1 2 1  < $ROOT/inputs/input/dt.10 > ./outputs/t2566

./schedule.exe 1 2 1  < $ROOT/inputs/input/dt.11 > ./outputs/t2567

./schedule.exe 1 2 1  < $ROOT/inputs/input/dt.12 > ./outputs/t2568

./schedule.exe 3 2 0  < $ROOT/inputs/input/dt.13 > ./outputs/t2569

./schedule.exe 3 2 0  < $ROOT/inputs/input/dt.14 > ./outputs/t2570

./schedule.exe 2 1 0   < $ROOT/inputs/input/dt.15 > ./outputs/t2571

./schedule.exe 2 1 1   < $ROOT/inputs/input/dt.16 > ./outputs/t2572

./schedule.exe 2 1 1   < $ROOT/inputs/input/dt.17 > ./outputs/t2573

./schedule.exe 2 1 1   < $ROOT/inputs/input/dt.18 > ./outputs/t2574

./schedule.exe 2 1 3   < $ROOT/inputs/input/dt.19 > ./outputs/t2575

./schedule.exe 2 1 3   < $ROOT/inputs/input/dt.20 > ./outputs/t2576

./schedule.exe 2 1 3   < $ROOT/inputs/input/dt.21 > ./outputs/t2577

./schedule.exe 2 1 3   < $ROOT/inputs/input/dt.22 > ./outputs/t2578

./schedule.exe 4 1 2   < $ROOT/inputs/input/dt.23 > ./outputs/t2579

./schedule.exe 4 1 2   < $ROOT/inputs/input/dt.24 > ./outputs/t2580

./schedule.exe 1 1 1  < $ROOT/inputs/input/ct.1 > ./outputs/t2581

./schedule.exe 0 2 1  < $ROOT/inputs/input/ct.2 > ./outputs/t2582

./schedule.exe 3 2 0  < $ROOT/inputs/input/ct.3 > ./outputs/t2583

./schedule.exe 3 0 0  < $ROOT/inputs/input/ct.3 > ./outputs/t2584

./schedule.exe 3 0 0  < $ROOT/inputs/input/ct.4 > ./outputs/t2585

./schedule.exe 1 1 1  < $ROOT/inputs/input/ct.4 > ./outputs/t2586

./schedule.exe 1 1 1  < $ROOT/inputs/input/ct.5 > ./outputs/t2587

./schedule.exe 3 0 3  < $ROOT/inputs/input/ct.5 > ./outputs/t2588

./schedule.exe 3 0 3  < $ROOT/inputs/input/ct.6 > ./outputs/t2589

./schedule.exe 3 1 3  < $ROOT/inputs/input/ct.7 > ./outputs/t2590

./schedule.exe 1 0 0  < $ROOT/inputs/input/ct.7 > ./outputs/t2591

./schedule.exe 1 9 9  < $ROOT/inputs/input/ct.8 > ./outputs/t2592

./schedule.exe 1 3 1  < $ROOT/inputs/input/ct.8 > ./outputs/t2593

./schedule.exe 1 3 1  < $ROOT/inputs/input/ct.9 > ./outputs/t2594

./schedule.exe 1 3 1  < $ROOT/inputs/input/ct.10 > ./outputs/t2595

./schedule.exe 1 3 1  < $ROOT/inputs/input/ct.11 > ./outputs/t2596

./schedule.exe 0 3 0  < $ROOT/inputs/input/ct.11 > ./outputs/t2597

./schedule.exe 1 3 0  < $ROOT/inputs/input/ct.12 > ./outputs/t2598

./schedule.exe 1 3 2  < $ROOT/inputs/input/ct.13 > ./outputs/t2599

./schedule.exe 3 4 5  < $ROOT/inputs/input/ct.14 > ./outputs/t2600

./schedule.exe 1 2 3  < $ROOT/inputs/input/ct.15 > ./outputs/t2601

./schedule.exe 4 2 3  < $ROOT/inputs/input/ct.16 > ./outputs/t2602

./schedule.exe 2 2 2  < $ROOT/inputs/input/ct.17 > ./outputs/t2603

./schedule.exe 4 5 6  < $ROOT/inputs/input/ct.18 > ./outputs/t2604

./schedule.exe 3 3 4  < $ROOT/inputs/input/ct.19 > ./outputs/t2605

./schedule.exe 3 2 4  < $ROOT/inputs/input/ct.20 > ./outputs/t2606

./schedule.exe 3 2 4  < $ROOT/inputs/input/ct.21 > ./outputs/t2607

./schedule.exe 0 1 2  < $ROOT/inputs/input/ct.22 > ./outputs/t2608

./schedule.exe 1 0 5  < $ROOT/inputs/input/ct.23 > ./outputs/t2609

./schedule.exe 3 4 2  < $ROOT/inputs/input/ct.24 > ./outputs/t2610

./schedule.exe 3 2 1  < $ROOT/inputs/input/ct.25 > ./outputs/t2611

./schedule.exe 7 1 3  < $ROOT/inputs/input/ct.26 > ./outputs/t2612

./schedule.exe 2 1 4  < $ROOT/inputs/input/ct.27 > ./outputs/t2613

./schedule.exe 3 1 5  < $ROOT/inputs/input/ct.28 > ./outputs/t2614

./schedule.exe 0 0 0  < $ROOT/inputs/input/ct.29 > ./outputs/t2615

./schedule.exe 1 2 0  < $ROOT/inputs/input/ct.30 > ./outputs/t2616

./schedule.exe 2 3 1  < $ROOT/inputs/input/ct.31 > ./outputs/t2617

./schedule.exe 1 4 2  < $ROOT/inputs/input/ct.32 > ./outputs/t2618

./schedule.exe 3 5 0  < $ROOT/inputs/input/ct.33 > ./outputs/t2619

./schedule.exe 0 3 4  < $ROOT/inputs/input/ct.34 > ./outputs/t2620

./schedule.exe 1 2 3  < $ROOT/inputs/input/ct.35 > ./outputs/t2621

./schedule.exe 6 7 3  < $ROOT/inputs/input/ct.36 > ./outputs/t2622

./schedule.exe 1 2 0  < $ROOT/inputs/input/ct.37 > ./outputs/t2623

./schedule.exe 3 4 5  < $ROOT/inputs/input/ct.38 > ./outputs/t2624

./schedule.exe 2 3 1  < $ROOT/inputs/input/ct.39 > ./outputs/t2625

./schedule.exe 1 4 5  < $ROOT/inputs/input/ct.40 > ./outputs/t2626

./schedule.exe 1 5 6  < $ROOT/inputs/input/ct.41 > ./outputs/t2627

./schedule.exe 1 2 4  < $ROOT/inputs/input/ct.42 > ./outputs/t2628

./schedule.exe 0 8 4  < $ROOT/inputs/input/ct.43 > ./outputs/t2629

./schedule.exe 0 3 4  < $ROOT/inputs/input/ct.44 > ./outputs/t2630

./schedule.exe 0 3 2  < $ROOT/inputs/input/ct.45 > ./outputs/t2631

./schedule.exe 8 2 4  < $ROOT/inputs/input/ct.46 > ./outputs/t2632

./schedule.exe 2 2 1  < $ROOT/inputs/input/ct.47 > ./outputs/t2633

./schedule.exe 1 2 4  < $ROOT/inputs/input/ct.48 > ./outputs/t2634

./schedule.exe 0 9 0  < $ROOT/inputs/input/ct.49 > ./outputs/t2635

./schedule.exe 1 3 2  < $ROOT/inputs/input/ct.50 > ./outputs/t2636

./schedule.exe 0 9 2  < $ROOT/inputs/input/ct.51 > ./outputs/t2637

./schedule.exe 2 1 2  < $ROOT/inputs/input/ct.52 > ./outputs/t2638

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.53 > ./outputs/t2639

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.54 > ./outputs/t2640

./schedule.exe 2 2 2  < $ROOT/inputs/input/ct.55 > ./outputs/t2641

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.56 > ./outputs/t2642

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.57 > ./outputs/t2643

./schedule.exe 2 1 2  < $ROOT/inputs/input/ct.58 > ./outputs/t2644

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.59 > ./outputs/t2645

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.60 > ./outputs/t2646

./schedule.exe 2 2 2  < $ROOT/inputs/input/ct.61 > ./outputs/t2647

./schedule.exe 2 0 2  < $ROOT/inputs/input/ct.62 > ./outputs/t2648

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.63 > ./outputs/t2649

./schedule.exe 2 4 2  < $ROOT/inputs/input/ct.65 > ./outputs/t2650


gcov schedule.c
gcovr -r . --html-details -o coverage_and_instrument_report.html

rm schedule.c