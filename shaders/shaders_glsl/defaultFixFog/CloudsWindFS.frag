#version 110
#extension GL_ARB_shader_texture_lod : require

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <RayFrame.h>
const float f0[48] = float[](15.71790981292724609375, 12.89408969879150390625, 7.7199840545654296875, 5.107762813568115234375, 3.9570920467376708984375, 3.1285419464111328125, 2.467976093292236328125, 1.94060599803924560546875, 1.519268035888671875, 1.1720600128173828125, 0.9068109989166259765625, 0.696639001369476318359375, 0.53097999095916748046875, 0.4037419855594635009765625, 0.3046739995479583740234375, 0.230042994022369384765625, 0.1724649965763092041015625, 0.12898500263690948486328125, 0.096061997115612030029296875, 0.07203499972820281982421875, 0.0546710006892681121826171875, 0.0418930016458034515380859375, 0.0329019986093044281005859375, 0.0265490002930164337158203125, 0.022500999271869659423828125, 0.02016899921000003814697265625, 0.01880300045013427734375, 0.01828599907457828521728515625, 0.01808599941432476043701171875, 0.02294900082051753997802734375, 0.02805699966847896575927734375, 0.0330980010330677032470703125, 0.033073000609874725341796875, 0.03599999845027923583984375, 0.051086999475955963134765625, 0.108067996799945831298828125, 0.17280800640583038330078125, 0.2078000009059906005859375, 0.13236899673938751220703125, 0.111766003072261810302734375, 0.110400997102260589599609375, 0.10523100197315216064453125, 0.104189001023769378662109375, 0.108497999608516693115234375, 0.12747399508953094482421875, 0.2075670063495635986328125, 0.3197790086269378662109375, 0.4679400026798248291015625);

#include <CloudsParams.h>
uniform vec4 CB0[57];
uniform vec4 CB4[2];
uniform vec4 CB5[5];
uniform sampler3D CloudsDistanceFieldTexture;
uniform sampler2D AdvectionTexTexture;
uniform sampler3D DetailTex3DTexture;
uniform sampler2D BlueNoiseTexTexture;
uniform sampler2D BeerShadowMapTexture;

void main()
{
    vec2 f1 = CB4[1].xy;
    f1.x = CB4[1].xy.x;
    vec2 f2 = (CB4[0].zw * ((gl_FragCoord.xy * CB4[0].xy) - vec2(1.0))) + f1;
    vec3 f3 = normalize(((CB0[8].xyz * f2.x) + (CB0[9].xyz * f2.y)) - CB0[10].xyz);
    float f4 = f3.y;
    if (f4 < 0.0)
    {
        discard;
    }
    vec3 f5 = CB0[11].xyz * 0.00028000000747852027416229248046875;
    vec3 f6 = f5;
    f6.y = f5.y + 971.0;
    float f7 = dot(f3, f6);
    float f8 = 2.0 * f7;
    vec2 f9 = (vec2(f7 * (-2.0)) + sqrt(vec2(f8 * f8) - ((vec2(dot(f6, f6)) - vec2(946729.0, 951600.25)) * 4.0))) * 0.5;
    float f10 = f9.x;
    float f11 = f9.y - f10;
    float f12 = dot(CB0[16].xyz, f3);
    float f13 = (0.5 + (0.5 * f12)) * 46.5;
    int f14 = int(f13);
    float f15 = mix(f0[f14], f0[f14 + 1], fract(f13));
    float f16 = f15 * 0.125;
    vec3 f17 = f5 + (f3 * f10);
    f17.y = 0.0;
    int f18 = int(CB5[2].z);
    float f19 = float(f18);
    float f20 = (1.0 / f19) * f11;
    float f21 = (1.0 / max(f4, 9.9999997473787516355514526367188e-05)) / f19;
    vec3 f22 = f17 + ((f3 * f11) * (0.1500000059604644775390625 + (0.949999988079071044921875 * texture2DLod(BlueNoiseTexTexture, vec4(gl_FragCoord.xy, 0.0, 0.0).xy, 0.0).x)));
    f22.y = 0.0;
    bool f23;
    vec3 f24;
    vec4 f25;
    f25 = vec4(0.0);
    f24 = f22 + CB5[0].xyz;
    f23 = false;
    float f26;
    vec3 f27;
    bool f28;
    float f29;
    float f30;
    float f31;
    float f32;
    vec4 f33;
    vec4 f34;
    int f35 = 0;
    float f36 = f10;
    float f37 = 0.0;
    float f38 = 1.0;
    for (;;)
    {
        if (f35 < f18)
        {
            float f39 = float(int(CB5[2].z <= 9.0)) + (pow(f36, 3.0) * 2.6315789000364020466804504394531e-05);
            vec2 f40 = (texture2DLod(AdvectionTexTexture, vec4((f24.xz * 0.125) + vec2(0.0, CB5[0].w * (-17.5)), 0.0, f39).xy, f39).xy * 2.0) - vec2(1.0);
            vec3 f41 = vec3(f40.x, 0.0, f40.y);
            vec3 f42 = f24;
            f42.x = f24.x + (CB5[0].w * 39.0625);
            float f43 = CB5[2].y * clamp(1.0 + (0.001000000047497451305389404296875 * (6000.0 - CB0[11].y)), 0.0, 1.0);
            vec2 f44 = mix(vec2(0.1500000059604644775390625, 0.070000000298023223876953125), vec2(0.07500000298023223876953125, 0.0500000007450580596923828125), vec2(f43));
            vec2 f45 = vec2(CB5[4].x, 0.3499999940395355224609375 * CB5[4].x) * ((vec2(texture3DLod(DetailTex3DTexture, vec4((f42 * (0.5 * CB5[4].y)) + (f41 * f44.x), f39).xyz, f39).x, texture3DLod(DetailTex3DTexture, vec4((f42 * (2.0 * CB5[4].y)) + (f41 * f44.y), f39).xyz, f39).x) * 2.0) - vec2(1.0));
            float f46 = texture3DLod(CloudsDistanceFieldTexture, vec4(((f24 + (f41 * 0.75)) * vec3(0.03125, 1.0, 0.03125)).xzy, f39).xyz, f39).x + (f45.x + f45.y);
            float f47 = (f43 * 50.0) * (CB5[2].x - f46);
            bool f48 = f46 < CB5[2].x;
            if (f48)
            {
                vec4 f49 = texture2DLod(BeerShadowMapTexture, vec4(f24.xz * vec2(0.03125), 0.0, 0.0).xy, 0.0);
                float f50 = min(f49.z * 0.5, (f49.y + (0.3499999940395355224609375 * texture2DLod(BlueNoiseTexTexture, vec4(gl_FragCoord.xy, 0.0, 0.0).xy, 0.0).x)) * max(0.0, (1.0 - ((float(f35) / f19) + (f46 / f19))) - f49.x));
                float f51 = f37 + f47;
                vec3 f52 = f3 * f3;
                bvec3 f53 = lessThan(f3, vec3(0.0));
                vec3 f54 = vec3(f53.x ? f52.x : vec3(0.0).x, f53.y ? f52.y : vec3(0.0).y, f53.z ? f52.z : vec3(0.0).z);
                vec3 f55 = f52 - f54;
                float f56 = f55.x;
                float f57 = f55.y;
                float f58 = f55.z;
                float f59 = f54.x;
                float f60 = f54.y;
                float f61 = f54.z;
                float f62 = (1.44269502162933349609375 / f19) * f47;
                vec3 f63 = ((max(mix(vec3(0.1500000059604644775390625 + (0.300000011920928955078125 * f24.y)), mix(CB0[31].xyz, CB0[30].xyz, vec3(f24.y)), vec3(clamp(exp2(CB0[16].y), 0.0, 1.0))) * (((((((CB0[40].xyz * f56) + (CB0[42].xyz * f57)) + (CB0[44].xyz * f58)) + (CB0[41].xyz * f59)) + (CB0[43].xyz * f60)) + (CB0[45].xyz * f61)) + (((((((CB0[34].xyz * f56) + (CB0[36].xyz * f57)) + (CB0[38].xyz * f58)) + (CB0[35].xyz * f59)) + (CB0[37].xyz * f60)) + (CB0[39].xyz * f61)) * 1.0)), CB0[33].xyz + CB0[32].xyz) + ((CB0[15].xyz * ((4.0 * (((((0.2899999916553497314453125 * exp2(f50 * (-23.701419830322265625))) + ((0.1689999997615814208984375 * mix(0.07999999821186065673828125, 1.0, smoothstep(0.0, 1.5, abs(f12)))) * exp2(f50 * (-659.51776123046875)))) + ((((1.0 - f43) * 320.0) * clamp(f12 * f16, 0.0, 1.0)) * exp2(f50 * (-10.0)))) * (f15 * 0.0292499996721744537353515625)) + (0.092000000178813934326171875 * exp2(f49.w * (-2.3250000476837158203125))))) + (0.0425000004470348358154296875 + (((f47 / f19) * 0.13500000536441802978515625) * f24.y)))) * 2.099999904632568359375)) * CB5[3].xyz) * f62;
                float f64 = exp2(-f62);
                vec3 f65 = f25.xyz + (((f63 - (f63 * f64)) * f38) / vec3((f62 < 9.9999997473787516355514526367188e-05) ? 9.9999997473787516355514526367188e-05 : f62));
                vec4 f66 = f25;
                f66.x = f65.x;
                vec4 f67 = f66;
                f67.y = f65.y;
                vec4 f68 = f67;
                f68.z = f65.z;
                float f69 = f38 * f64;
                if (f69 <= 9.9999997473787516355514526367188e-06)
                {
                    f33 = f68;
                    f30 = 0.0;
                    f29 = f51;
                    break;
                }
                f34 = f68;
                f32 = f69;
                f31 = f51;
            }
            else
            {
                f34 = f25;
                f32 = f38;
                f31 = f37;
            }
            f28 = f48 ? true : f23;
            f26 = f36 + f20;
            f27 = f24 + (f3 * f21);
            f25 = f34;
            f24 = f27;
            f38 = f32;
            f37 = f31;
            f36 = f26;
            f35++;
            f23 = f28;
            continue;
        }
        else
        {
            f33 = f25;
            f30 = f38;
            f29 = f37;
            break;
        }
    }
    float f70 = 1.0 - f30;
    vec3 f71 = f33.xyz + (((((((CB0[15].xyz * clamp(1.0 - ((0.07999999821186065673828125 * f29) / f19), 0.0, 1.0)) * 2.0) * clamp(-f12, 0.0, 1.0)) * f16) * f70) * exp2(0.10999999940395355224609375 - (0.0350000001490116119384765625 * f29))) * CB5[3].xyz);
    vec4 f72 = f33;
    f72.x = f71.x;
    vec4 f73 = f72;
    f73.y = f71.y;
    vec4 f74 = f73;
    f74.z = f71.z;
    if (!f23)
    {
        discard;
    }
    float f75 = pow(max(exp2((CB0[18].z * 3.5714285373687744140625) * (f10 * f10)), 9.9999997473787516355514526367188e-05), 0.125);
    vec3 f76 = f3 * f3;
    bvec3 f77 = lessThan(f3, vec3(0.0));
    vec3 f78 = vec3(f77.x ? f76.x : vec3(0.0).x, f77.y ? f76.y : vec3(0.0).y, f77.z ? f76.z : vec3(0.0).z);
    vec3 f79 = f76 - f78;
    vec3 f80 = (((((CB0[34].xyz * f79.x) + (CB0[36].xyz * f79.y)) + (CB0[38].xyz * f79.z)) + (CB0[35].xyz * f78.x)) + (CB0[37].xyz * f78.y)) + (CB0[39].xyz * f78.z);
    bvec3 f81 = bvec3(!(CB0[18].w == 0.0));
    vec3 f82 = mix(vec3(f81.x ? CB0[19].xyz.x : f80.x, f81.y ? CB0[19].xyz.y : f80.y, f81.z ? CB0[19].xyz.z : f80.z), f74.xyz, vec3(f75));
    vec4 f83 = f74;
    f83.x = f82.x;
    vec4 f84 = f83;
    f84.y = f82.y;
    vec4 f85 = f84;
    f85.z = f82.z;
    vec4 f86 = f85;
    f86.w = f70;
    vec4 f87 = f86;
    f87.w = f70 * max(f75, CB0[18].y);
    gl_FragData[0] = f87;
}

//$$CloudsDistanceFieldTexture=s0
//$$AdvectionTexTexture=s6
//$$DetailTex3DTexture=s5
//$$BlueNoiseTexTexture=s7
//$$BeerShadowMapTexture=s3
