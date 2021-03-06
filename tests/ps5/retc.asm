//
// Generated by Microsoft (R) HLSL Shader Compiler 9.30.9200.20499
//
//
///
// Buffer Definitions: 
//
// cbuffer $Globals
// {
//
//   int predicate;                     // Offset:    0 Size:     4
//
// }
//
// interfaces $ThisPointer
// {
//
//   interface iChangeColour gAbstractColourChanger;// Offset:    0 Size:     1
//   interface iChangeColour gAbstractColourChangerB;// Offset:    1 Size:     1
//
// }
//
//
// Resource Bindings:
//
// Name                                 Type  Format         Dim Slot Elements
// ------------------------------ ---------- ------- ----------- ---- --------
// $Globals                          cbuffer      NA          NA    0        1
//
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// COLOR                    0   xyz         0     NONE   float   xyz 
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
//
// Available Class Types:
//
// Name                             ID CB Stride Texture Sampler
// ------------------------------ ---- --------- ------- -------
// cUnchangedColour                  0         0       0       0
// cDoubleColour                     1         0       0       0
//
// Interface slots, 2 total:
//
//             Slots
// +----------+---------+---------------------------------------
// | Type ID  |   0     |0    1    
// | Table ID |         |0    1    
// +----------+---------+---------------------------------------
// | Type ID  |   1     |0    1    
// | Table ID |         |2    3    
// +----------+---------+---------------------------------------
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_function_body fb0
dcl_function_body fb1
dcl_function_body fb2
dcl_function_body fb3
dcl_function_table ft0 = {fb0}
dcl_function_table ft1 = {fb1}
dcl_function_table ft2 = {fb2}
dcl_function_table ft3 = {fb3}
dcl_interface fp0[1][1] = {ft0, ft1}
dcl_interface fp1[1][1] = {ft2, ft3}
dcl_input_ps linear v0.xyz
dcl_output o0.xyzw
dcl_temps 2
fcall fp0[0][0]
ine r0.w, cb0[0].x, l(0)
fcall fp1[0][0]
movc o0.xyz, cb0[0].xxxx, r1.xyzx, r0.xyzx
mov o0.w, l(1.000000)
ret 
label fb0
mov r0.xyz, v0.xyzx
ret 
label fb1
add r0.xyz, v0.xyzx, v0.xyzx
ret 
label fb2
mov r1.xyz, r0.xyzx
retc_nz r0.w
ret 
label fb3
add r1.xyz, r0.xyzx, r0.xyzx
retc_nz r0.w
ret 
// Approximately 16 instruction slots used
