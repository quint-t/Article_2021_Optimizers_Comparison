??
??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
~
dense_123/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_123/kernel
w
$dense_123/kernel/Read/ReadVariableOpReadVariableOpdense_123/kernel* 
_output_shapes
:
??*
dtype0
u
dense_123/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_123/bias
n
"dense_123/bias/Read/ReadVariableOpReadVariableOpdense_123/bias*
_output_shapes	
:?*
dtype0
~
dense_124/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_124/kernel
w
$dense_124/kernel/Read/ReadVariableOpReadVariableOpdense_124/kernel* 
_output_shapes
:
??*
dtype0
u
dense_124/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_124/bias
n
"dense_124/bias/Read/ReadVariableOpReadVariableOpdense_124/bias*
_output_shapes	
:?*
dtype0
}
dense_125/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_125/kernel
v
$dense_125/kernel/Read/ReadVariableOpReadVariableOpdense_125/kernel*
_output_shapes
:	?
*
dtype0
t
dense_125/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_125/bias
m
"dense_125/bias/Read/ReadVariableOpReadVariableOpdense_125/bias*
_output_shapes
:
*
dtype0
j
Adamax/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdamax/iter
c
Adamax/iter/Read/ReadVariableOpReadVariableOpAdamax/iter*
_output_shapes
: *
dtype0	
n
Adamax/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_1
g
!Adamax/beta_1/Read/ReadVariableOpReadVariableOpAdamax/beta_1*
_output_shapes
: *
dtype0
n
Adamax/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/beta_2
g
!Adamax/beta_2/Read/ReadVariableOpReadVariableOpAdamax/beta_2*
_output_shapes
: *
dtype0
l
Adamax/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdamax/decay
e
 Adamax/decay/Read/ReadVariableOpReadVariableOpAdamax/decay*
_output_shapes
: *
dtype0
|
Adamax/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameAdamax/learning_rate
u
(Adamax/learning_rate/Read/ReadVariableOpReadVariableOpAdamax/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adamax/dense_123/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdamax/dense_123/kernel/m
?
-Adamax/dense_123/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_123/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_123/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/dense_123/bias/m
?
+Adamax/dense_123/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_123/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_124/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdamax/dense_124/kernel/m
?
-Adamax/dense_124/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_124/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_124/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/dense_124/bias/m
?
+Adamax/dense_124/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_124/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_125/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
**
shared_nameAdamax/dense_125/kernel/m
?
-Adamax/dense_125/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_125/kernel/m*
_output_shapes
:	?
*
dtype0
?
Adamax/dense_125/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdamax/dense_125/bias/m

+Adamax/dense_125/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_125/bias/m*
_output_shapes
:
*
dtype0
?
Adamax/dense_123/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdamax/dense_123/kernel/v
?
-Adamax/dense_123/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_123/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_123/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/dense_123/bias/v
?
+Adamax/dense_123/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_123/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_124/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdamax/dense_124/kernel/v
?
-Adamax/dense_124/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_124/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_124/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/dense_124/bias/v
?
+Adamax/dense_124/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_124/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_125/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
**
shared_nameAdamax/dense_125/kernel/v
?
-Adamax/dense_125/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_125/kernel/v*
_output_shapes
:	?
*
dtype0
?
Adamax/dense_125/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdamax/dense_125/bias/v

+Adamax/dense_125/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_125/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?$
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
h


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
h

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
?
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK
*

0
1
2
3
4
5
*

0
1
2
3
4
5
 
?
!layer_metrics
"layer_regularization_losses
#metrics
trainable_variables
	variables
regularization_losses

$layers
%non_trainable_variables
 
\Z
VARIABLE_VALUEdense_123/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_123/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE


0
1


0
1
 
?
&layer_metrics
'layer_regularization_losses
(metrics
trainable_variables
	variables
regularization_losses

)layers
*non_trainable_variables
\Z
VARIABLE_VALUEdense_124/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_124/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
+layer_metrics
,layer_regularization_losses
-metrics
trainable_variables
	variables
regularization_losses

.layers
/non_trainable_variables
\Z
VARIABLE_VALUEdense_125/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_125/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
0layer_metrics
1layer_regularization_losses
2metrics
trainable_variables
	variables
regularization_losses

3layers
4non_trainable_variables
JH
VARIABLE_VALUEAdamax/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdamax/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdamax/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
\Z
VARIABLE_VALUEAdamax/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
 
 

50
61

0
1
2
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
4
	7total
	8count
9	variables
:	keras_api
D
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

70
81

9	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

;0
<1

>	variables
?
VARIABLE_VALUEAdamax/dense_123/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_123/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_124/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_124/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_125/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_125/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_123/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_123/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_124/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_124/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_125/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_125/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_123_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_123_inputdense_123/kerneldense_123/biasdense_124/kerneldense_124/biasdense_125/kerneldense_125/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? */
f*R(
&__inference_signature_wrapper_14792847
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_123/kernel/Read/ReadVariableOp"dense_123/bias/Read/ReadVariableOp$dense_124/kernel/Read/ReadVariableOp"dense_124/bias/Read/ReadVariableOp$dense_125/kernel/Read/ReadVariableOp"dense_125/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Adamax/dense_123/kernel/m/Read/ReadVariableOp+Adamax/dense_123/bias/m/Read/ReadVariableOp-Adamax/dense_124/kernel/m/Read/ReadVariableOp+Adamax/dense_124/bias/m/Read/ReadVariableOp-Adamax/dense_125/kernel/m/Read/ReadVariableOp+Adamax/dense_125/bias/m/Read/ReadVariableOp-Adamax/dense_123/kernel/v/Read/ReadVariableOp+Adamax/dense_123/bias/v/Read/ReadVariableOp-Adamax/dense_124/kernel/v/Read/ReadVariableOp+Adamax/dense_124/bias/v/Read/ReadVariableOp-Adamax/dense_125/kernel/v/Read/ReadVariableOp+Adamax/dense_125/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__traced_save_14793095
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_123/kerneldense_123/biasdense_124/kerneldense_124/biasdense_125/kerneldense_125/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1Adamax/dense_123/kernel/mAdamax/dense_123/bias/mAdamax/dense_124/kernel/mAdamax/dense_124/bias/mAdamax/dense_125/kernel/mAdamax/dense_125/bias/mAdamax/dense_123/kernel/vAdamax/dense_123/bias/vAdamax/dense_124/kernel/vAdamax/dense_124/bias/vAdamax/dense_125/kernel/vAdamax/dense_125/bias/v*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference__traced_restore_14793186??
?u
?
$__inference__traced_restore_14793186
file_prefix5
!assignvariableop_dense_123_kernel:
??0
!assignvariableop_1_dense_123_bias:	?7
#assignvariableop_2_dense_124_kernel:
??0
!assignvariableop_3_dense_124_bias:	?6
#assignvariableop_4_dense_125_kernel:	?
/
!assignvariableop_5_dense_125_bias:
(
assignvariableop_6_adamax_iter:	 *
 assignvariableop_7_adamax_beta_1: *
 assignvariableop_8_adamax_beta_2: )
assignvariableop_9_adamax_decay: 2
(assignvariableop_10_adamax_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: A
-assignvariableop_15_adamax_dense_123_kernel_m:
??:
+assignvariableop_16_adamax_dense_123_bias_m:	?A
-assignvariableop_17_adamax_dense_124_kernel_m:
??:
+assignvariableop_18_adamax_dense_124_bias_m:	?@
-assignvariableop_19_adamax_dense_125_kernel_m:	?
9
+assignvariableop_20_adamax_dense_125_bias_m:
A
-assignvariableop_21_adamax_dense_123_kernel_v:
??:
+assignvariableop_22_adamax_dense_123_bias_v:	?A
-assignvariableop_23_adamax_dense_124_kernel_v:
??:
+assignvariableop_24_adamax_dense_124_bias_v:	?@
-assignvariableop_25_adamax_dense_125_kernel_v:	?
9
+assignvariableop_26_adamax_dense_125_bias_v:

identity_28??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_123_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_123_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_124_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_124_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_125_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_125_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adamax_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp assignvariableop_7_adamax_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp assignvariableop_8_adamax_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adamax_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp(assignvariableop_10_adamax_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp-assignvariableop_15_adamax_dense_123_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp+assignvariableop_16_adamax_dense_123_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp-assignvariableop_17_adamax_dense_124_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp+assignvariableop_18_adamax_dense_124_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp-assignvariableop_19_adamax_dense_125_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp+assignvariableop_20_adamax_dense_125_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adamax_dense_123_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adamax_dense_123_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adamax_dense_124_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adamax_dense_124_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp-assignvariableop_25_adamax_dense_125_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp+assignvariableop_26_adamax_dense_125_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27?
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*K
_input_shapes:
8: : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
&__inference_signature_wrapper_14792847
dense_123_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *,
f'R%
#__inference__wrapped_model_147926102
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_123_input
?
?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792897

inputs<
(dense_123_matmul_readvariableop_resource:
??8
)dense_123_biasadd_readvariableop_resource:	?<
(dense_124_matmul_readvariableop_resource:
??8
)dense_124_biasadd_readvariableop_resource:	?;
(dense_125_matmul_readvariableop_resource:	?
7
)dense_125_biasadd_readvariableop_resource:

identity?? dense_123/BiasAdd/ReadVariableOp?dense_123/MatMul/ReadVariableOp? dense_124/BiasAdd/ReadVariableOp?dense_124/MatMul/ReadVariableOp? dense_125/BiasAdd/ReadVariableOp?dense_125/MatMul/ReadVariableOp?
dense_123/MatMul/ReadVariableOpReadVariableOp(dense_123_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_123/MatMul/ReadVariableOp?
dense_123/MatMulMatMulinputs'dense_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/MatMul?
 dense_123/BiasAdd/ReadVariableOpReadVariableOp)dense_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_123/BiasAdd/ReadVariableOp?
dense_123/BiasAddBiasAdddense_123/MatMul:product:0(dense_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/BiasAdd?
dense_123/SigmoidSigmoiddense_123/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_123/Sigmoid?
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_124/MatMul/ReadVariableOp?
dense_124/MatMulMatMuldense_123/Sigmoid:y:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/MatMul?
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_124/BiasAdd/ReadVariableOp?
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/BiasAdd?
dense_124/SigmoidSigmoiddense_124/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_124/Sigmoid?
dense_125/MatMul/ReadVariableOpReadVariableOp(dense_125_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_125/MatMul/ReadVariableOp?
dense_125/MatMulMatMuldense_124/Sigmoid:y:0'dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_125/MatMul?
 dense_125/BiasAdd/ReadVariableOpReadVariableOp)dense_125_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_125/BiasAdd/ReadVariableOp?
dense_125/BiasAddBiasAdddense_125/MatMul:product:0(dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_125/BiasAdd
dense_125/SigmoidSigmoiddense_125/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_125/Sigmoid?
IdentityIdentitydense_125/Sigmoid:y:0!^dense_123/BiasAdd/ReadVariableOp ^dense_123/MatMul/ReadVariableOp!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp!^dense_125/BiasAdd/ReadVariableOp ^dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_123/BiasAdd/ReadVariableOp dense_123/BiasAdd/ReadVariableOp2B
dense_123/MatMul/ReadVariableOpdense_123/MatMul/ReadVariableOp2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2D
 dense_125/BiasAdd/ReadVariableOp dense_125/BiasAdd/ReadVariableOp2B
dense_125/MatMul/ReadVariableOpdense_125/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?>
?
!__inference__traced_save_14793095
file_prefix/
+savev2_dense_123_kernel_read_readvariableop-
)savev2_dense_123_bias_read_readvariableop/
+savev2_dense_124_kernel_read_readvariableop-
)savev2_dense_124_bias_read_readvariableop/
+savev2_dense_125_kernel_read_readvariableop-
)savev2_dense_125_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_adamax_dense_123_kernel_m_read_readvariableop6
2savev2_adamax_dense_123_bias_m_read_readvariableop8
4savev2_adamax_dense_124_kernel_m_read_readvariableop6
2savev2_adamax_dense_124_bias_m_read_readvariableop8
4savev2_adamax_dense_125_kernel_m_read_readvariableop6
2savev2_adamax_dense_125_bias_m_read_readvariableop8
4savev2_adamax_dense_123_kernel_v_read_readvariableop6
2savev2_adamax_dense_123_bias_v_read_readvariableop8
4savev2_adamax_dense_124_kernel_v_read_readvariableop6
2savev2_adamax_dense_124_bias_v_read_readvariableop8
4savev2_adamax_dense_125_kernel_v_read_readvariableop6
2savev2_adamax_dense_125_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_123_kernel_read_readvariableop)savev2_dense_123_bias_read_readvariableop+savev2_dense_124_kernel_read_readvariableop)savev2_dense_124_bias_read_readvariableop+savev2_dense_125_kernel_read_readvariableop)savev2_dense_125_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_adamax_dense_123_kernel_m_read_readvariableop2savev2_adamax_dense_123_bias_m_read_readvariableop4savev2_adamax_dense_124_kernel_m_read_readvariableop2savev2_adamax_dense_124_bias_m_read_readvariableop4savev2_adamax_dense_125_kernel_m_read_readvariableop2savev2_adamax_dense_125_bias_m_read_readvariableop4savev2_adamax_dense_123_kernel_v_read_readvariableop2savev2_adamax_dense_123_bias_v_read_readvariableop4savev2_adamax_dense_124_kernel_v_read_readvariableop2savev2_adamax_dense_124_bias_v_read_readvariableop4savev2_adamax_dense_125_kernel_v_read_readvariableop2savev2_adamax_dense_125_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??:?:
??:?:	?
:
: : : : : : : : : :
??:?:
??:?:	?
:
:
??:?:
??:?:	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: 
?
?
,__inference_dense_125_layer_call_fn_14792991

inputs
unknown:	?

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_125_layer_call_and_return_conditional_losses_147926622
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792872

inputs<
(dense_123_matmul_readvariableop_resource:
??8
)dense_123_biasadd_readvariableop_resource:	?<
(dense_124_matmul_readvariableop_resource:
??8
)dense_124_biasadd_readvariableop_resource:	?;
(dense_125_matmul_readvariableop_resource:	?
7
)dense_125_biasadd_readvariableop_resource:

identity?? dense_123/BiasAdd/ReadVariableOp?dense_123/MatMul/ReadVariableOp? dense_124/BiasAdd/ReadVariableOp?dense_124/MatMul/ReadVariableOp? dense_125/BiasAdd/ReadVariableOp?dense_125/MatMul/ReadVariableOp?
dense_123/MatMul/ReadVariableOpReadVariableOp(dense_123_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_123/MatMul/ReadVariableOp?
dense_123/MatMulMatMulinputs'dense_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/MatMul?
 dense_123/BiasAdd/ReadVariableOpReadVariableOp)dense_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_123/BiasAdd/ReadVariableOp?
dense_123/BiasAddBiasAdddense_123/MatMul:product:0(dense_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_123/BiasAdd?
dense_123/SigmoidSigmoiddense_123/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_123/Sigmoid?
dense_124/MatMul/ReadVariableOpReadVariableOp(dense_124_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_124/MatMul/ReadVariableOp?
dense_124/MatMulMatMuldense_123/Sigmoid:y:0'dense_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/MatMul?
 dense_124/BiasAdd/ReadVariableOpReadVariableOp)dense_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_124/BiasAdd/ReadVariableOp?
dense_124/BiasAddBiasAdddense_124/MatMul:product:0(dense_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_124/BiasAdd?
dense_124/SigmoidSigmoiddense_124/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_124/Sigmoid?
dense_125/MatMul/ReadVariableOpReadVariableOp(dense_125_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_125/MatMul/ReadVariableOp?
dense_125/MatMulMatMuldense_124/Sigmoid:y:0'dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_125/MatMul?
 dense_125/BiasAdd/ReadVariableOpReadVariableOp)dense_125_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_125/BiasAdd/ReadVariableOp?
dense_125/BiasAddBiasAdddense_125/MatMul:product:0(dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_125/BiasAdd
dense_125/SigmoidSigmoiddense_125/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_125/Sigmoid?
IdentityIdentitydense_125/Sigmoid:y:0!^dense_123/BiasAdd/ReadVariableOp ^dense_123/MatMul/ReadVariableOp!^dense_124/BiasAdd/ReadVariableOp ^dense_124/MatMul/ReadVariableOp!^dense_125/BiasAdd/ReadVariableOp ^dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_123/BiasAdd/ReadVariableOp dense_123/BiasAdd/ReadVariableOp2B
dense_123/MatMul/ReadVariableOpdense_123/MatMul/ReadVariableOp2D
 dense_124/BiasAdd/ReadVariableOp dense_124/BiasAdd/ReadVariableOp2B
dense_124/MatMul/ReadVariableOpdense_124/MatMul/ReadVariableOp2D
 dense_125/BiasAdd/ReadVariableOp dense_125/BiasAdd/ReadVariableOp2B
dense_125/MatMul/ReadVariableOpdense_125/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_dense_123_layer_call_fn_14792951

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_123_layer_call_and_return_conditional_losses_147926282
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792669

inputs&
dense_123_14792629:
??!
dense_123_14792631:	?&
dense_124_14792646:
??!
dense_124_14792648:	?%
dense_125_14792663:	?
 
dense_125_14792665:

identity??!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCallinputsdense_123_14792629dense_123_14792631*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_123_layer_call_and_return_conditional_losses_147926282#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_14792646dense_124_14792648*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_124_layer_call_and_return_conditional_losses_147926452#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_14792663dense_125_14792665*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_125_layer_call_and_return_conditional_losses_147926622#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_124_layer_call_and_return_conditional_losses_14792645

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792822
dense_123_input&
dense_123_14792806:
??!
dense_123_14792808:	?&
dense_124_14792811:
??!
dense_124_14792813:	?%
dense_125_14792816:	?
 
dense_125_14792818:

identity??!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCalldense_123_inputdense_123_14792806dense_123_14792808*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_123_layer_call_and_return_conditional_losses_147926282#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_14792811dense_124_14792813*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_124_layer_call_and_return_conditional_losses_147926452#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_14792816dense_125_14792818*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_125_layer_call_and_return_conditional_losses_147926622#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_123_input
?
?
,__inference_dense_124_layer_call_fn_14792971

inputs
unknown:
??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_124_layer_call_and_return_conditional_losses_147926452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792803
dense_123_input&
dense_123_14792787:
??!
dense_123_14792789:	?&
dense_124_14792792:
??!
dense_124_14792794:	?%
dense_125_14792797:	?
 
dense_125_14792799:

identity??!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCalldense_123_inputdense_123_14792787dense_123_14792789*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_123_layer_call_and_return_conditional_losses_147926282#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_14792792dense_124_14792794*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_124_layer_call_and_return_conditional_losses_147926452#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_14792797dense_125_14792799*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_125_layer_call_and_return_conditional_losses_147926622#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_123_input
?(
?
#__inference__wrapped_model_14792610
dense_123_inputJ
6sequential_41_dense_123_matmul_readvariableop_resource:
??F
7sequential_41_dense_123_biasadd_readvariableop_resource:	?J
6sequential_41_dense_124_matmul_readvariableop_resource:
??F
7sequential_41_dense_124_biasadd_readvariableop_resource:	?I
6sequential_41_dense_125_matmul_readvariableop_resource:	?
E
7sequential_41_dense_125_biasadd_readvariableop_resource:

identity??.sequential_41/dense_123/BiasAdd/ReadVariableOp?-sequential_41/dense_123/MatMul/ReadVariableOp?.sequential_41/dense_124/BiasAdd/ReadVariableOp?-sequential_41/dense_124/MatMul/ReadVariableOp?.sequential_41/dense_125/BiasAdd/ReadVariableOp?-sequential_41/dense_125/MatMul/ReadVariableOp?
-sequential_41/dense_123/MatMul/ReadVariableOpReadVariableOp6sequential_41_dense_123_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_41/dense_123/MatMul/ReadVariableOp?
sequential_41/dense_123/MatMulMatMuldense_123_input5sequential_41/dense_123/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_41/dense_123/MatMul?
.sequential_41/dense_123/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_dense_123_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_41/dense_123/BiasAdd/ReadVariableOp?
sequential_41/dense_123/BiasAddBiasAdd(sequential_41/dense_123/MatMul:product:06sequential_41/dense_123/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_41/dense_123/BiasAdd?
sequential_41/dense_123/SigmoidSigmoid(sequential_41/dense_123/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_41/dense_123/Sigmoid?
-sequential_41/dense_124/MatMul/ReadVariableOpReadVariableOp6sequential_41_dense_124_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_41/dense_124/MatMul/ReadVariableOp?
sequential_41/dense_124/MatMulMatMul#sequential_41/dense_123/Sigmoid:y:05sequential_41/dense_124/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_41/dense_124/MatMul?
.sequential_41/dense_124/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_dense_124_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_41/dense_124/BiasAdd/ReadVariableOp?
sequential_41/dense_124/BiasAddBiasAdd(sequential_41/dense_124/MatMul:product:06sequential_41/dense_124/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_41/dense_124/BiasAdd?
sequential_41/dense_124/SigmoidSigmoid(sequential_41/dense_124/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_41/dense_124/Sigmoid?
-sequential_41/dense_125/MatMul/ReadVariableOpReadVariableOp6sequential_41_dense_125_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_41/dense_125/MatMul/ReadVariableOp?
sequential_41/dense_125/MatMulMatMul#sequential_41/dense_124/Sigmoid:y:05sequential_41/dense_125/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_41/dense_125/MatMul?
.sequential_41/dense_125/BiasAdd/ReadVariableOpReadVariableOp7sequential_41_dense_125_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_41/dense_125/BiasAdd/ReadVariableOp?
sequential_41/dense_125/BiasAddBiasAdd(sequential_41/dense_125/MatMul:product:06sequential_41/dense_125/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_41/dense_125/BiasAdd?
sequential_41/dense_125/SigmoidSigmoid(sequential_41/dense_125/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2!
sequential_41/dense_125/Sigmoid?
IdentityIdentity#sequential_41/dense_125/Sigmoid:y:0/^sequential_41/dense_123/BiasAdd/ReadVariableOp.^sequential_41/dense_123/MatMul/ReadVariableOp/^sequential_41/dense_124/BiasAdd/ReadVariableOp.^sequential_41/dense_124/MatMul/ReadVariableOp/^sequential_41/dense_125/BiasAdd/ReadVariableOp.^sequential_41/dense_125/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2`
.sequential_41/dense_123/BiasAdd/ReadVariableOp.sequential_41/dense_123/BiasAdd/ReadVariableOp2^
-sequential_41/dense_123/MatMul/ReadVariableOp-sequential_41/dense_123/MatMul/ReadVariableOp2`
.sequential_41/dense_124/BiasAdd/ReadVariableOp.sequential_41/dense_124/BiasAdd/ReadVariableOp2^
-sequential_41/dense_124/MatMul/ReadVariableOp-sequential_41/dense_124/MatMul/ReadVariableOp2`
.sequential_41/dense_125/BiasAdd/ReadVariableOp.sequential_41/dense_125/BiasAdd/ReadVariableOp2^
-sequential_41/dense_125/MatMul/ReadVariableOp-sequential_41/dense_125/MatMul/ReadVariableOp:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_123_input
?
?
0__inference_sequential_41_layer_call_fn_14792914

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_41_layer_call_and_return_conditional_losses_147926692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_41_layer_call_fn_14792931

inputs
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_41_layer_call_and_return_conditional_losses_147927522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792752

inputs&
dense_123_14792736:
??!
dense_123_14792738:	?&
dense_124_14792741:
??!
dense_124_14792743:	?%
dense_125_14792746:	?
 
dense_125_14792748:

identity??!dense_123/StatefulPartitionedCall?!dense_124/StatefulPartitionedCall?!dense_125/StatefulPartitionedCall?
!dense_123/StatefulPartitionedCallStatefulPartitionedCallinputsdense_123_14792736dense_123_14792738*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_123_layer_call_and_return_conditional_losses_147926282#
!dense_123/StatefulPartitionedCall?
!dense_124/StatefulPartitionedCallStatefulPartitionedCall*dense_123/StatefulPartitionedCall:output:0dense_124_14792741dense_124_14792743*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_124_layer_call_and_return_conditional_losses_147926452#
!dense_124/StatefulPartitionedCall?
!dense_125/StatefulPartitionedCallStatefulPartitionedCall*dense_124/StatefulPartitionedCall:output:0dense_125_14792746dense_125_14792748*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dense_125_layer_call_and_return_conditional_losses_147926622#
!dense_125/StatefulPartitionedCall?
IdentityIdentity*dense_125/StatefulPartitionedCall:output:0"^dense_123/StatefulPartitionedCall"^dense_124/StatefulPartitionedCall"^dense_125/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_123/StatefulPartitionedCall!dense_123/StatefulPartitionedCall2F
!dense_124/StatefulPartitionedCall!dense_124/StatefulPartitionedCall2F
!dense_125/StatefulPartitionedCall!dense_125/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_123_layer_call_and_return_conditional_losses_14792628

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_125_layer_call_and_return_conditional_losses_14792662

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_123_layer_call_and_return_conditional_losses_14792942

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_41_layer_call_fn_14792684
dense_123_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_41_layer_call_and_return_conditional_losses_147926692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_123_input
?

?
G__inference_dense_124_layer_call_and_return_conditional_losses_14792962

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddb
SigmoidSigmoidBiasAdd:output:0*
T0*(
_output_shapes
:??????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_41_layer_call_fn_14792784
dense_123_input
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?

	unknown_4:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_123_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_sequential_41_layer_call_and_return_conditional_losses_147927522
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_123_input
?

?
G__inference_dense_125_layer_call_and_return_conditional_losses_14792982

inputs1
matmul_readvariableop_resource:	?
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
L
dense_123_input9
!serving_default_dense_123_input:0??????????=
	dense_1250
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:Ύ
?'
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
trainable_variables
	variables
regularization_losses
	keras_api
	
signatures
*L&call_and_return_all_conditional_losses
M_default_save_signature
N__call__"?$
_tf_keras_sequential?${"name": "sequential_41", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_123_input"}}, {"class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dense_123_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_41", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_123_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adamax", "config": {"name": "Adamax", "learning_rate": 0.009999999776482582, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
?	


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*O&call_and_return_all_conditional_losses
P__call__"?
_tf_keras_layer?{"name": "dense_123", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_123", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"?
_tf_keras_layer?{"name": "dense_124", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_124", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"?
_tf_keras_layer?{"name": "dense_125", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_125", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
iter

beta_1

beta_2
	decay
 learning_rate
m@mAmBmCmDmE
vFvGvHvIvJvK"
	optimizer
J

0
1
2
3
4
5"
trackable_list_wrapper
J

0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
?
!layer_metrics
"layer_regularization_losses
#metrics
trainable_variables
	variables
regularization_losses

$layers
%non_trainable_variables
N__call__
M_default_save_signature
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
,
Userving_default"
signature_map
$:"
??2dense_123/kernel
:?2dense_123/bias
.

0
1"
trackable_list_wrapper
.

0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
&layer_metrics
'layer_regularization_losses
(metrics
trainable_variables
	variables
regularization_losses

)layers
*non_trainable_variables
P__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_124/kernel
:?2dense_124/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
+layer_metrics
,layer_regularization_losses
-metrics
trainable_variables
	variables
regularization_losses

.layers
/non_trainable_variables
R__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_125/kernel
:
2dense_125/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0layer_metrics
1layer_regularization_losses
2metrics
trainable_variables
	variables
regularization_losses

3layers
4non_trainable_variables
T__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	7total
	8count
9	variables
:	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
?
	;total
	<count
=
_fn_kwargs
>	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
;0
<1"
trackable_list_wrapper
-
>	variables"
_generic_user_object
+:)
??2Adamax/dense_123/kernel/m
$:"?2Adamax/dense_123/bias/m
+:)
??2Adamax/dense_124/kernel/m
$:"?2Adamax/dense_124/bias/m
*:(	?
2Adamax/dense_125/kernel/m
#:!
2Adamax/dense_125/bias/m
+:)
??2Adamax/dense_123/kernel/v
$:"?2Adamax/dense_123/bias/v
+:)
??2Adamax/dense_124/kernel/v
$:"?2Adamax/dense_124/bias/v
*:(	?
2Adamax/dense_125/kernel/v
#:!
2Adamax/dense_125/bias/v
?2?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792872
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792897
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792803
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792822?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
#__inference__wrapped_model_14792610?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? */?,
*?'
dense_123_input??????????
?2?
0__inference_sequential_41_layer_call_fn_14792684
0__inference_sequential_41_layer_call_fn_14792914
0__inference_sequential_41_layer_call_fn_14792931
0__inference_sequential_41_layer_call_fn_14792784?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
G__inference_dense_123_layer_call_and_return_conditional_losses_14792942?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dense_123_layer_call_fn_14792951?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_dense_124_layer_call_and_return_conditional_losses_14792962?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dense_124_layer_call_fn_14792971?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
G__inference_dense_125_layer_call_and_return_conditional_losses_14792982?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_dense_125_layer_call_fn_14792991?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
&__inference_signature_wrapper_14792847dense_123_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
#__inference__wrapped_model_14792610z
9?6
/?,
*?'
dense_123_input??????????
? "5?2
0
	dense_125#? 
	dense_125?????????
?
G__inference_dense_123_layer_call_and_return_conditional_losses_14792942^
0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_123_layer_call_fn_14792951Q
0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_124_layer_call_and_return_conditional_losses_14792962^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_124_layer_call_fn_14792971Q0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_125_layer_call_and_return_conditional_losses_14792982]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
,__inference_dense_125_layer_call_fn_14792991P0?-
&?#
!?
inputs??????????
? "??????????
?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792803r
A?>
7?4
*?'
dense_123_input??????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792822r
A?>
7?4
*?'
dense_123_input??????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792872i
8?5
.?+
!?
inputs??????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_41_layer_call_and_return_conditional_losses_14792897i
8?5
.?+
!?
inputs??????????
p

 
? "%?"
?
0?????????

? ?
0__inference_sequential_41_layer_call_fn_14792684e
A?>
7?4
*?'
dense_123_input??????????
p 

 
? "??????????
?
0__inference_sequential_41_layer_call_fn_14792784e
A?>
7?4
*?'
dense_123_input??????????
p

 
? "??????????
?
0__inference_sequential_41_layer_call_fn_14792914\
8?5
.?+
!?
inputs??????????
p 

 
? "??????????
?
0__inference_sequential_41_layer_call_fn_14792931\
8?5
.?+
!?
inputs??????????
p

 
? "??????????
?
&__inference_signature_wrapper_14792847?
L?I
? 
B??
=
dense_123_input*?'
dense_123_input??????????"5?2
0
	dense_125#? 
	dense_125?????????
