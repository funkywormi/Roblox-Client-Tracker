#version 110

#extension GL_ARB_shading_language_include : require
#include <Globals.h>
#include <MaterialParams.h>
uniform vec4 CB0[58];
uniform vec4 CB2[4];
uniform sampler2D ShadowMapTexture;
uniform sampler3D LightMapTexture;
uniform sampler3D LightGridSkylightTexture;
uniform sampler2D DiffuseMapTexture;
uniform sampler2D NormalMapTexture;
uniform sampler2D NormalDetailMapTexture;
uniform sampler2D SpecularMapTexture;
uniform sampler2D GBufferDepthTexture;
uniform sampler2D GBufferColorTexture;
uniform samplerCube EnvironmentMapTexture;

varying vec2 VARYING0;
varying vec4 VARYING2;
varying vec4 VARYING3;
varying vec4 VARYING4;
varying vec4 VARYING5;
varying vec4 VARYING6;
varying vec4 VARYING7;

void main()
{
    vec2 f0 = clamp((vec2(0.0033333334140479564666748046875, CB0[28].y) * (-VARYING4.w)) + vec2(1.0), vec2(0.0), vec2(1.0));
    vec2 f1 = VARYING0 * CB2[0].x;
    float f2 = f0.y;
    vec4 f3 = texture2D(DiffuseMapTexture, f1);
    vec2 f4 = texture2D(NormalMapTexture, f1).wy * 2.0;
    vec2 f5 = f4 - vec2(1.0);
    float f6 = sqrt(clamp(1.0 + dot(vec2(1.0) - f4, f5), 0.0, 1.0));
    vec3 f7 = vec3(f5, f6);
    vec2 f8 = f7.xy + (vec3((texture2D(NormalDetailMapTexture, f1 * CB2[0].w).wy * 2.0) - vec2(1.0), 0.0).xy * CB2[1].x);
    vec3 f9 = f7;
    f9.x = f8.x;
    vec3 f10 = f9;
    f10.y = f8.y;
    vec2 f11 = f10.xy * f2;
    float f12 = f11.x;
    vec3 f13 = (VARYING2.xyz * f3.xyz) * (1.0 + (f12 * 0.20000000298023223876953125));
    float f14 = VARYING2.w * 2.0;
    float f15 = clamp((f14 - 1.0) + f3.w, 0.0, 1.0);
    float f16 = clamp(f14, 0.0, 1.0);
    float f17 = gl_FrontFacing ? 1.0 : (-1.0);
    vec3 f18 = VARYING6.xyz * f17;
    vec3 f19 = VARYING5.xyz * f17;
    vec3 f20 = normalize(((f18 * f12) + (cross(f19, f18) * f11.y)) + (f19 * (f6 * 10.0)));
    vec3 f21 = f13 * f13;
    float f22 = length(VARYING4.xyz);
    vec3 f23 = VARYING4.xyz / vec3(f22);
    float f24 = 0.08900000154972076416015625 + (mix(texture2D(SpecularMapTexture, f1 * CB2[1].w), texture2D(SpecularMapTexture, f1), vec4(clamp((f2 * CB2[3].z) - (CB2[2].z * CB2[3].z), 0.0, 1.0))).y * 0.9110000133514404296875);
    vec3 f25 = textureCube(EnvironmentMapTexture, reflect(-VARYING4.xyz, f20)).xyz;
    vec3 f26 = VARYING7.xyz - (CB0[16].xyz * VARYING3.w);
    float f27 = clamp(dot(step(CB0[24].xyz, abs(VARYING3.xyz - CB0[23].xyz)), vec3(1.0)), 0.0, 1.0);
    vec3 f28 = VARYING3.yzx - (VARYING3.yzx * f27);
    vec4 f29 = vec4(clamp(f27, 0.0, 1.0));
    vec4 f30 = mix(texture3D(LightMapTexture, f28), vec4(0.0), f29);
    vec4 f31 = mix(texture3D(LightGridSkylightTexture, f28), vec4(1.0), f29);
    vec3 f32 = f30.xyz * (f30.w * 120.0);
    float f33 = f31.x;
    vec4 f34 = texture2D(ShadowMapTexture, f26.xy);
    float f35 = f26.z;
    vec3 f36 = mix(f32, (f25 * f25) * CB0[20].x, vec3(f33)) * mix(vec3(1.0), f21, vec3(0.5));
    vec3 f37 = -CB0[16].xyz;
    float f38 = dot(f20, f37) * ((1.0 - ((step(f34.x, f35) * clamp(CB0[29].z + (CB0[29].w * abs(f35 - 0.5)), 0.0, 1.0)) * f34.y)) * f31.y);
    vec3 f39 = normalize(f23 + f37);
    float f40 = clamp(f38, 0.0, 1.0);
    float f41 = f24 * f24;
    float f42 = max(0.001000000047497451305389404296875, dot(f20, f39));
    float f43 = dot(f37, f39);
    float f44 = 1.0 - f43;
    float f45 = f44 * f44;
    float f46 = (f45 * f45) * f44;
    vec3 f47 = vec3(f46) + (vec3(0.039999999105930328369140625) * (1.0 - f46));
    float f48 = f41 * f41;
    float f49 = (((f42 * f48) - f42) * f42) + 1.0;
    float f50 = 1.0 - max(9.9999997473787516355514526367188e-05, dot(f20, f23));
    float f51 = 1.0 - VARYING2.w;
    float f52 = mix(0.660000026226043701171875, 1.0, f51 * f51);
    mat4 f53 = mat4(CB0[0], CB0[1], CB0[2], CB0[3]);
    vec4 f54 = vec4(CB0[11].xyz - VARYING4.xyz, 1.0) * f53;
    vec4 f55 = vec4(CB0[11].xyz - ((VARYING4.xyz * (1.0 + ((3.0 * f52) / max(dot(VARYING4.xyz, f20), 0.00999999977648258209228515625)))) + (f20 * (3.0 * (1.0 - f52)))), 1.0) * f53;
    float f56 = f54.w;
    vec2 f57 = (f54.xy * 0.5) + vec2(0.5 * f56);
    vec4 f58 = vec4(0.0);
    f58.x = f57.x;
    vec4 f59 = f58;
    f59.y = f57.y;
    vec2 f60 = f59.xy / vec2(f56);
    float f61 = f55.w;
    vec2 f62 = (f55.xy * 0.5) + vec2(0.5 * f61);
    vec4 f63 = vec4(0.0);
    f63.x = f62.x;
    vec4 f64 = f63;
    f64.y = f62.y;
    vec2 f65 = f64.xy / vec2(f61);
    vec2 f66 = f65 - vec2(0.5);
    vec2 f67 = (f65 - f60) * clamp(vec2(1.0) - ((f66 * f66) * 4.0), vec2(0.0), vec2(1.0));
    vec2 f68 = normalize(f67) * CB0[28].x;
    vec2 f69 = CB0[50].xy * 0.5;
    vec2 f70 = f69 / CB0[50].zw;
    vec2 f71 = (f65 + f68) + f70;
    vec2 f72 = (f65 - f68) + f70;
    vec4 f73 = texture2D(GBufferColorTexture, (f60 + (f67 * clamp(min(texture2D(GBufferDepthTexture, (vec2(clamp(f71.x, 0.0, 1.0), clamp(f71.y, 0.0, 1.0)) * CB0[50].zw) - f69).x * 500.0, texture2D(GBufferDepthTexture, (vec2(clamp(f72.x, 0.0, 1.0), clamp(f72.y, 0.0, 1.0)) * CB0[50].zw) - f69).x * 500.0) - f56, 0.0, 1.0))) * CB0[50].zw);
    vec3 f74 = f73.xyz;
    vec3 f75 = (f74 * f74) * CB0[20].x;
    vec4 f76 = f73;
    f76.x = f75.x;
    vec4 f77 = f76;
    f77.y = f75.y;
    vec4 f78 = f77;
    f78.z = f75.z;
    vec3 f79 = f78.xyz * mix(vec3(1.0), VARYING2.xyz, vec3(f16));
    vec4 f80 = vec4(0.0);
    f80.x = f79.x;
    vec4 f81 = f80;
    f81.y = f79.y;
    vec4 f82 = f81;
    f82.z = f79.z;
    vec4 f83 = f82;
    f83.w = mix(1.0, f73.w, dot(f82.xyz, vec3(1.0)) / (dot(f78.xyz, vec3(1.0)) + 0.00999999977648258209228515625));
    vec4 f84 = mix(mix(f83, vec4(mix((((((vec3(1.0) - (f47 * (CB0[31].w * clamp(1.0 - (VARYING4.w * CB0[28].y), 0.0, 1.0)))) * CB0[15].xyz) * f40) + (CB0[17].xyz * clamp(-f38, 0.0, 1.0))) + min(f32 + (CB0[13].xyz + (CB0[14].xyz * f33)), vec3(CB0[21].w))) * (f21 * f15), f36, vec3(VARYING7.w)), 1.0), vec4(f15)), vec4(f36, 1.0), vec4(((f50 * f50) * 0.800000011920928955078125) * f16)) + vec4(((f47 * (((f48 + (f48 * f48)) / (((f49 * f49) * ((f43 * 3.0) + 0.5)) * ((f42 * 0.75) + 0.25))) * f40)) * CB0[15].xyz) * 1.0, 0.0);
    float f85 = clamp(exp2((CB0[18].z * f22) + CB0[18].x) - CB0[18].w, 0.0, 1.0);
    vec3 f86 = -f23;
    vec3 f87 = f86 * f86;
    bvec3 f88 = lessThan(f86, vec3(0.0));
    vec3 f89 = vec3(f88.x ? f87.x : vec3(0.0).x, f88.y ? f87.y : vec3(0.0).y, f88.z ? f87.z : vec3(0.0).z);
    vec3 f90 = f87 - f89;
    vec3 f91 = (((((CB0[34].xyz * f90.x) + (CB0[36].xyz * f90.y)) + (CB0[38].xyz * f90.z)) + (CB0[35].xyz * f89.x)) + (CB0[37].xyz * f89.y)) + (CB0[39].xyz * f89.z);
    bvec3 f92 = bvec3(!(CB0[18].w == 0.0));
    vec3 f93 = mix(vec3(f92.x ? CB0[19].xyz.x : f91.x, f92.y ? CB0[19].xyz.y : f91.y, f92.z ? CB0[19].xyz.z : f91.z), f84.xyz, vec3(f85));
    vec4 f94 = f84;
    f94.x = f93.x;
    vec4 f95 = f94;
    f95.y = f93.y;
    vec4 f96 = f95;
    f96.z = f93.z;
    vec4 f97 = f96;
    f97.w = f85 * f84.w;
    vec3 f98 = sqrt(clamp(f97.xyz * CB0[20].y, vec3(0.0), vec3(1.0)));
    vec4 f99 = f97;
    f99.x = f98.x;
    vec4 f100 = f99;
    f100.y = f98.y;
    vec4 f101 = f100;
    f101.z = f98.z;
    gl_FragData[0] = f101;
}

//$$ShadowMapTexture=s1
//$$LightMapTexture=s6
//$$LightGridSkylightTexture=s7
//$$DiffuseMapTexture=s3
//$$NormalMapTexture=s4
//$$NormalDetailMapTexture=s8
//$$SpecularMapTexture=s5
//$$GBufferDepthTexture=s10
//$$GBufferColorTexture=s9
//$$EnvironmentMapTexture=s2
