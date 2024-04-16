#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <Params.h>
uniform vec4 CB0[57];
uniform vec4 CB3[3];
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D NormalMap1Texture;
uniform sampler2D NormalMap2Texture;
uniform samplerCube EnvMapTexture;

varying vec4 VARYING0;
varying vec3 VARYING1;
varying vec2 VARYING2;
varying vec2 VARYING3;
varying vec2 VARYING4;
varying vec3 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    float f0 = clamp(dot(step(CB0[24].xyz, abs(VARYING5 - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f1 = VARYING5.yzx - (VARYING5.yzx * f0);
    vec4 f2 = vec4(clamp(f0, 0.0, 1.0));
    vec4 f3 = mix(texture3D(LightMapTexture, f1), vec4(0.0), f2);
    vec4 f4 = mix(texture3D(LightGridSkylightTexture, f1), vec4(1.0), f2);
    vec3 f5 = f3.xyz * (f3.w * 120.0);
    float f6 = f4.x;
    float f7 = f4.y;
    vec4 f8 = vec4(CB3[0].w);
    vec4 f9 = ((mix(texture2D(NormalMap1Texture, VARYING2), texture2D(NormalMap2Texture, VARYING2), f8) * VARYING0.x) + (mix(texture2D(NormalMap1Texture, VARYING3), texture2D(NormalMap2Texture, VARYING3), f8) * VARYING0.y)) + (mix(texture2D(NormalMap1Texture, VARYING4), texture2D(NormalMap2Texture, VARYING4), f8) * VARYING0.z);
    vec2 f10 = f9.wy * 2.0;
    vec2 f11 = f10 - vec2(1.0);
    float f12 = f9.x;
    vec3 f13 = vec3(dot(VARYING1, VARYING0.xyz));
    vec3 f14 = vec4(normalize(((mix(vec3(VARYING6.z, 0.0, -VARYING6.x), vec3(-VARYING6.y, VARYING6.x, 0.0), f13) * f11.x) + (mix(vec3(0.0, 1.0, 0.0), vec3(0.0, -VARYING6.z, VARYING6.y), f13) * f11.y)) + (VARYING6.xyz * sqrt(clamp(1.0 + dot(vec2(1.0) - f10, f11), 0.0, 1.0)))), f12).xyz;
    vec3 f15 = mix(VARYING6.xyz, f14, vec3(0.25));
    vec3 f16 = VARYING7.xyz / vec3(sqrt(dot(VARYING7.xyz, VARYING7.xyz)));
    vec3 f17 = -f16;
    vec3 f18 = f14 * f14;
    bvec3 f19 = lessThan(f14, vec3(0.0));
    vec3 f20 = vec3(f19.x ? f18.x : vec3(0.0).x, f19.y ? f18.y : vec3(0.0).y, f19.z ? f18.z : vec3(0.0).z);
    vec3 f21 = f18 - f20;
    float f22 = f21.x;
    float f23 = f21.y;
    float f24 = f21.z;
    float f25 = f20.x;
    float f26 = f20.y;
    float f27 = f20.z;
    vec3 f28 = textureCube(EnvMapTexture, reflect(f17, f15)).xyz;
    float f29 = 0.08900000154972076416015625 + (f12 * 0.9110000133514404296875);
    vec3 f30 = -CB0[16].xyz;
    vec3 f31 = normalize(f16 + f30);
    float f32 = f29 * f29;
    float f33 = max(0.001000000047497451305389404296875, dot(f14, f31));
    float f34 = dot(f30, f31);
    float f35 = 1.0 - f34;
    float f36 = f35 * f35;
    float f37 = (f36 * f36) * f35;
    float f38 = f32 * f32;
    float f39 = (((f33 * f38) - f33) * f33) + 1.0;
    vec3 f40 = mix(((min(f5 + (CB0[32].xyz + (CB0[33].xyz * f6)), vec3(CB0[21].w)) + (((((((CB0[40].xyz * f22) + (CB0[42].xyz * f23)) + (CB0[44].xyz * f24)) + (CB0[41].xyz * f25)) + (CB0[43].xyz * f26)) + (CB0[45].xyz * f27)) + (((((((CB0[34].xyz * f22) + (CB0[36].xyz * f23)) + (CB0[38].xyz * f24)) + (CB0[35].xyz * f25)) + (CB0[37].xyz * f26)) + (CB0[39].xyz * f27)) * f6))) + (CB0[15].xyz * f7)) * CB3[1].xyz, (((f28 * f28) * CB0[20].x) * f6) + (f5 * 0.100000001490116119384765625), vec3((clamp(0.7799999713897705078125 - (2.5 * abs(dot(f15, f16))), 0.0, 1.0) + 0.300000011920928955078125) * (VARYING0.w * CB3[2].z))) + (((((vec3(f37) + (vec3(0.0199999995529651641845703125) * (1.0 - f37))) * (((f38 + (f38 * f38)) / (((f39 * f39) * ((f34 * 3.0) + 0.5)) * ((f33 * 0.75) + 0.25))) * clamp(dot(f14, f30) * f7, 0.0, 1.0))) * CB0[15].xyz) * 1.0) * clamp(1.0 - (VARYING7.w * CB0[28].y), 0.0, 1.0));
    vec4 f41 = vec4(0.0);
    f41.x = f40.x;
    vec4 f42 = f41;
    f42.y = f40.y;
    vec4 f43 = f42;
    f43.z = f40.z;
    vec4 f44 = f43;
    f44.w = 1.0;
    vec3 f45 = f17 * f17;
    bvec3 f46 = lessThan(f17, vec3(0.0));
    vec3 f47 = vec3(f46.x ? f45.x : vec3(0.0).x, f46.y ? f45.y : vec3(0.0).y, f46.z ? f45.z : vec3(0.0).z);
    vec3 f48 = f45 - f47;
    vec3 f49 = (((((CB0[34].xyz * f48.x) + (CB0[36].xyz * f48.y)) + (CB0[38].xyz * f48.z)) + (CB0[35].xyz * f47.x)) + (CB0[37].xyz * f47.y)) + (CB0[39].xyz * f47.z);
    bvec3 f50 = bvec3(!(CB0[18].w == 0.0));
    vec3 f51 = mix(vec3(f50.x ? CB0[19].xyz.x : f49.x, f50.y ? CB0[19].xyz.y : f49.y, f50.z ? CB0[19].xyz.z : f49.z), f44.xyz, vec3(VARYING6.w));
    vec4 f52 = f44;
    f52.x = f51.x;
    vec4 f53 = f52;
    f53.y = f51.y;
    vec4 f54 = f53;
    f54.z = f51.z;
    vec3 f55 = sqrt(clamp(f54.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f56 = f54;
    f56.x = f55.x;
    vec4 f57 = f56;
    f57.y = f55.y;
    vec4 f58 = f57;
    f58.z = f55.z;
    gl_FragData[0] = f58;
}

//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$NormalMap1Texture=s0
//$$NormalMap2Texture=s2
//$$EnvMapTexture=s3
