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
dense_294/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_294/kernel
w
$dense_294/kernel/Read/ReadVariableOpReadVariableOpdense_294/kernel* 
_output_shapes
:
??*
dtype0
u
dense_294/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_294/bias
n
"dense_294/bias/Read/ReadVariableOpReadVariableOpdense_294/bias*
_output_shapes	
:?*
dtype0
~
dense_295/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_295/kernel
w
$dense_295/kernel/Read/ReadVariableOpReadVariableOpdense_295/kernel* 
_output_shapes
:
??*
dtype0
u
dense_295/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_295/bias
n
"dense_295/bias/Read/ReadVariableOpReadVariableOpdense_295/bias*
_output_shapes	
:?*
dtype0
}
dense_296/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_296/kernel
v
$dense_296/kernel/Read/ReadVariableOpReadVariableOpdense_296/kernel*
_output_shapes
:	?
*
dtype0
t
dense_296/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_296/bias
m
"dense_296/bias/Read/ReadVariableOpReadVariableOpdense_296/bias*
_output_shapes
:
*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
Adam/dense_294/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_294/kernel/m
?
+Adam/dense_294/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_294/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_294/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_294/bias/m
|
)Adam/dense_294/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_294/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_295/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_295/kernel/m
?
+Adam/dense_295/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_295/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_295/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_295/bias/m
|
)Adam/dense_295/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_295/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_296/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_nameAdam/dense_296/kernel/m
?
+Adam/dense_296/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_296/kernel/m*
_output_shapes
:	?
*
dtype0
?
Adam/dense_296/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_296/bias/m
{
)Adam/dense_296/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_296/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_294/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_294/kernel/v
?
+Adam/dense_294/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_294/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_294/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_294/bias/v
|
)Adam/dense_294/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_294/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_295/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_295/kernel/v
?
+Adam/dense_295/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_295/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_295/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_295/bias/v
|
)Adam/dense_295/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_295/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_296/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_nameAdam/dense_296/kernel/v
?
+Adam/dense_296/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_296/kernel/v*
_output_shapes
:	?
*
dtype0
?
Adam/dense_296/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_296/bias/v
{
)Adam/dense_296/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_296/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?%
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?$
value?$B?$ B?$
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
VARIABLE_VALUEdense_294/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_294/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_295/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_295/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_296/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_296/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
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
}
VARIABLE_VALUEAdam/dense_294/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_294/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_295/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_295/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_296/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_296/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_294/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_294/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_295/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_295/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_296/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_296/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_294_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_294_inputdense_294/kerneldense_294/biasdense_295/kerneldense_295/biasdense_296/kerneldense_296/bias*
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
&__inference_signature_wrapper_33230049
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_294/kernel/Read/ReadVariableOp"dense_294/bias/Read/ReadVariableOp$dense_295/kernel/Read/ReadVariableOp"dense_295/bias/Read/ReadVariableOp$dense_296/kernel/Read/ReadVariableOp"dense_296/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_294/kernel/m/Read/ReadVariableOp)Adam/dense_294/bias/m/Read/ReadVariableOp+Adam/dense_295/kernel/m/Read/ReadVariableOp)Adam/dense_295/bias/m/Read/ReadVariableOp+Adam/dense_296/kernel/m/Read/ReadVariableOp)Adam/dense_296/bias/m/Read/ReadVariableOp+Adam/dense_294/kernel/v/Read/ReadVariableOp)Adam/dense_294/bias/v/Read/ReadVariableOp+Adam/dense_295/kernel/v/Read/ReadVariableOp)Adam/dense_295/bias/v/Read/ReadVariableOp+Adam/dense_296/kernel/v/Read/ReadVariableOp)Adam/dense_296/bias/v/Read/ReadVariableOpConst*(
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
!__inference__traced_save_33230297
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_294/kerneldense_294/biasdense_295/kerneldense_295/biasdense_296/kerneldense_296/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_294/kernel/mAdam/dense_294/bias/mAdam/dense_295/kernel/mAdam/dense_295/bias/mAdam/dense_296/kernel/mAdam/dense_296/bias/mAdam/dense_294/kernel/vAdam/dense_294/bias/vAdam/dense_295/kernel/vAdam/dense_295/bias/vAdam/dense_296/kernel/vAdam/dense_296/bias/v*'
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
$__inference__traced_restore_33230388??
?
?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230099

inputs<
(dense_294_matmul_readvariableop_resource:
??8
)dense_294_biasadd_readvariableop_resource:	?<
(dense_295_matmul_readvariableop_resource:
??8
)dense_295_biasadd_readvariableop_resource:	?;
(dense_296_matmul_readvariableop_resource:	?
7
)dense_296_biasadd_readvariableop_resource:

identity?? dense_294/BiasAdd/ReadVariableOp?dense_294/MatMul/ReadVariableOp? dense_295/BiasAdd/ReadVariableOp?dense_295/MatMul/ReadVariableOp? dense_296/BiasAdd/ReadVariableOp?dense_296/MatMul/ReadVariableOp?
dense_294/MatMul/ReadVariableOpReadVariableOp(dense_294_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_294/MatMul/ReadVariableOp?
dense_294/MatMulMatMulinputs'dense_294/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_294/MatMul?
 dense_294/BiasAdd/ReadVariableOpReadVariableOp)dense_294_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_294/BiasAdd/ReadVariableOp?
dense_294/BiasAddBiasAdddense_294/MatMul:product:0(dense_294/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_294/BiasAdd?
dense_294/SigmoidSigmoiddense_294/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_294/Sigmoid?
dense_295/MatMul/ReadVariableOpReadVariableOp(dense_295_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_295/MatMul/ReadVariableOp?
dense_295/MatMulMatMuldense_294/Sigmoid:y:0'dense_295/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_295/MatMul?
 dense_295/BiasAdd/ReadVariableOpReadVariableOp)dense_295_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_295/BiasAdd/ReadVariableOp?
dense_295/BiasAddBiasAdddense_295/MatMul:product:0(dense_295/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_295/BiasAdd?
dense_295/SigmoidSigmoiddense_295/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_295/Sigmoid?
dense_296/MatMul/ReadVariableOpReadVariableOp(dense_296_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_296/MatMul/ReadVariableOp?
dense_296/MatMulMatMuldense_295/Sigmoid:y:0'dense_296/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_296/MatMul?
 dense_296/BiasAdd/ReadVariableOpReadVariableOp)dense_296_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_296/BiasAdd/ReadVariableOp?
dense_296/BiasAddBiasAdddense_296/MatMul:product:0(dense_296/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_296/BiasAdd
dense_296/SigmoidSigmoiddense_296/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_296/Sigmoid?
IdentityIdentitydense_296/Sigmoid:y:0!^dense_294/BiasAdd/ReadVariableOp ^dense_294/MatMul/ReadVariableOp!^dense_295/BiasAdd/ReadVariableOp ^dense_295/MatMul/ReadVariableOp!^dense_296/BiasAdd/ReadVariableOp ^dense_296/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_294/BiasAdd/ReadVariableOp dense_294/BiasAdd/ReadVariableOp2B
dense_294/MatMul/ReadVariableOpdense_294/MatMul/ReadVariableOp2D
 dense_295/BiasAdd/ReadVariableOp dense_295/BiasAdd/ReadVariableOp2B
dense_295/MatMul/ReadVariableOpdense_295/MatMul/ReadVariableOp2D
 dense_296/BiasAdd/ReadVariableOp dense_296/BiasAdd/ReadVariableOp2B
dense_296/MatMul/ReadVariableOpdense_296/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_294_layer_call_and_return_conditional_losses_33230144

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
?=
?
!__inference__traced_save_33230297
file_prefix/
+savev2_dense_294_kernel_read_readvariableop-
)savev2_dense_294_bias_read_readvariableop/
+savev2_dense_295_kernel_read_readvariableop-
)savev2_dense_295_bias_read_readvariableop/
+savev2_dense_296_kernel_read_readvariableop-
)savev2_dense_296_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_294_kernel_m_read_readvariableop4
0savev2_adam_dense_294_bias_m_read_readvariableop6
2savev2_adam_dense_295_kernel_m_read_readvariableop4
0savev2_adam_dense_295_bias_m_read_readvariableop6
2savev2_adam_dense_296_kernel_m_read_readvariableop4
0savev2_adam_dense_296_bias_m_read_readvariableop6
2savev2_adam_dense_294_kernel_v_read_readvariableop4
0savev2_adam_dense_294_bias_v_read_readvariableop6
2savev2_adam_dense_295_kernel_v_read_readvariableop4
0savev2_adam_dense_295_bias_v_read_readvariableop6
2savev2_adam_dense_296_kernel_v_read_readvariableop4
0savev2_adam_dense_296_bias_v_read_readvariableop
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
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_294_kernel_read_readvariableop)savev2_dense_294_bias_read_readvariableop+savev2_dense_295_kernel_read_readvariableop)savev2_dense_295_bias_read_readvariableop+savev2_dense_296_kernel_read_readvariableop)savev2_dense_296_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_294_kernel_m_read_readvariableop0savev2_adam_dense_294_bias_m_read_readvariableop2savev2_adam_dense_295_kernel_m_read_readvariableop0savev2_adam_dense_295_bias_m_read_readvariableop2savev2_adam_dense_296_kernel_m_read_readvariableop0savev2_adam_dense_296_bias_m_read_readvariableop2savev2_adam_dense_294_kernel_v_read_readvariableop0savev2_adam_dense_294_bias_v_read_readvariableop2savev2_adam_dense_295_kernel_v_read_readvariableop0savev2_adam_dense_295_bias_v_read_readvariableop2savev2_adam_dense_296_kernel_v_read_readvariableop0savev2_adam_dense_296_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
?

?
G__inference_dense_295_layer_call_and_return_conditional_losses_33229847

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
?u
?
$__inference__traced_restore_33230388
file_prefix5
!assignvariableop_dense_294_kernel:
??0
!assignvariableop_1_dense_294_bias:	?7
#assignvariableop_2_dense_295_kernel:
??0
!assignvariableop_3_dense_295_bias:	?6
#assignvariableop_4_dense_296_kernel:	?
/
!assignvariableop_5_dense_296_bias:
&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: #
assignvariableop_11_total: #
assignvariableop_12_count: %
assignvariableop_13_total_1: %
assignvariableop_14_count_1: ?
+assignvariableop_15_adam_dense_294_kernel_m:
??8
)assignvariableop_16_adam_dense_294_bias_m:	??
+assignvariableop_17_adam_dense_295_kernel_m:
??8
)assignvariableop_18_adam_dense_295_bias_m:	?>
+assignvariableop_19_adam_dense_296_kernel_m:	?
7
)assignvariableop_20_adam_dense_296_bias_m:
?
+assignvariableop_21_adam_dense_294_kernel_v:
??8
)assignvariableop_22_adam_dense_294_bias_v:	??
+assignvariableop_23_adam_dense_295_kernel_v:
??8
)assignvariableop_24_adam_dense_295_bias_v:	?>
+assignvariableop_25_adam_dense_296_kernel_v:	?
7
)assignvariableop_26_adam_dense_296_bias_v:
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
AssignVariableOpAssignVariableOp!assignvariableop_dense_294_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_294_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_295_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_295_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_296_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_296_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_294_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_294_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_295_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_295_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_296_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_296_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_294_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_294_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_295_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_295_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_296_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_296_bias_vIdentity_26:output:0"/device:CPU:0*
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
0__inference_sequential_98_layer_call_fn_33229986
dense_294_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_294_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_98_layer_call_and_return_conditional_losses_332299542
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
_user_specified_namedense_294_input
?
?
0__inference_sequential_98_layer_call_fn_33230116

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
K__inference_sequential_98_layer_call_and_return_conditional_losses_332298712
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
?(
?
#__inference__wrapped_model_33229812
dense_294_inputJ
6sequential_98_dense_294_matmul_readvariableop_resource:
??F
7sequential_98_dense_294_biasadd_readvariableop_resource:	?J
6sequential_98_dense_295_matmul_readvariableop_resource:
??F
7sequential_98_dense_295_biasadd_readvariableop_resource:	?I
6sequential_98_dense_296_matmul_readvariableop_resource:	?
E
7sequential_98_dense_296_biasadd_readvariableop_resource:

identity??.sequential_98/dense_294/BiasAdd/ReadVariableOp?-sequential_98/dense_294/MatMul/ReadVariableOp?.sequential_98/dense_295/BiasAdd/ReadVariableOp?-sequential_98/dense_295/MatMul/ReadVariableOp?.sequential_98/dense_296/BiasAdd/ReadVariableOp?-sequential_98/dense_296/MatMul/ReadVariableOp?
-sequential_98/dense_294/MatMul/ReadVariableOpReadVariableOp6sequential_98_dense_294_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_98/dense_294/MatMul/ReadVariableOp?
sequential_98/dense_294/MatMulMatMuldense_294_input5sequential_98/dense_294/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_98/dense_294/MatMul?
.sequential_98/dense_294/BiasAdd/ReadVariableOpReadVariableOp7sequential_98_dense_294_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_98/dense_294/BiasAdd/ReadVariableOp?
sequential_98/dense_294/BiasAddBiasAdd(sequential_98/dense_294/MatMul:product:06sequential_98/dense_294/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_98/dense_294/BiasAdd?
sequential_98/dense_294/SigmoidSigmoid(sequential_98/dense_294/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_98/dense_294/Sigmoid?
-sequential_98/dense_295/MatMul/ReadVariableOpReadVariableOp6sequential_98_dense_295_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_98/dense_295/MatMul/ReadVariableOp?
sequential_98/dense_295/MatMulMatMul#sequential_98/dense_294/Sigmoid:y:05sequential_98/dense_295/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_98/dense_295/MatMul?
.sequential_98/dense_295/BiasAdd/ReadVariableOpReadVariableOp7sequential_98_dense_295_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_98/dense_295/BiasAdd/ReadVariableOp?
sequential_98/dense_295/BiasAddBiasAdd(sequential_98/dense_295/MatMul:product:06sequential_98/dense_295/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_98/dense_295/BiasAdd?
sequential_98/dense_295/SigmoidSigmoid(sequential_98/dense_295/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_98/dense_295/Sigmoid?
-sequential_98/dense_296/MatMul/ReadVariableOpReadVariableOp6sequential_98_dense_296_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_98/dense_296/MatMul/ReadVariableOp?
sequential_98/dense_296/MatMulMatMul#sequential_98/dense_295/Sigmoid:y:05sequential_98/dense_296/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_98/dense_296/MatMul?
.sequential_98/dense_296/BiasAdd/ReadVariableOpReadVariableOp7sequential_98_dense_296_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_98/dense_296/BiasAdd/ReadVariableOp?
sequential_98/dense_296/BiasAddBiasAdd(sequential_98/dense_296/MatMul:product:06sequential_98/dense_296/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_98/dense_296/BiasAdd?
sequential_98/dense_296/SigmoidSigmoid(sequential_98/dense_296/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2!
sequential_98/dense_296/Sigmoid?
IdentityIdentity#sequential_98/dense_296/Sigmoid:y:0/^sequential_98/dense_294/BiasAdd/ReadVariableOp.^sequential_98/dense_294/MatMul/ReadVariableOp/^sequential_98/dense_295/BiasAdd/ReadVariableOp.^sequential_98/dense_295/MatMul/ReadVariableOp/^sequential_98/dense_296/BiasAdd/ReadVariableOp.^sequential_98/dense_296/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2`
.sequential_98/dense_294/BiasAdd/ReadVariableOp.sequential_98/dense_294/BiasAdd/ReadVariableOp2^
-sequential_98/dense_294/MatMul/ReadVariableOp-sequential_98/dense_294/MatMul/ReadVariableOp2`
.sequential_98/dense_295/BiasAdd/ReadVariableOp.sequential_98/dense_295/BiasAdd/ReadVariableOp2^
-sequential_98/dense_295/MatMul/ReadVariableOp-sequential_98/dense_295/MatMul/ReadVariableOp2`
.sequential_98/dense_296/BiasAdd/ReadVariableOp.sequential_98/dense_296/BiasAdd/ReadVariableOp2^
-sequential_98/dense_296/MatMul/ReadVariableOp-sequential_98/dense_296/MatMul/ReadVariableOp:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_294_input
?

?
G__inference_dense_294_layer_call_and_return_conditional_losses_33229830

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
G__inference_dense_295_layer_call_and_return_conditional_losses_33230164

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
?
?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33229954

inputs&
dense_294_33229938:
??!
dense_294_33229940:	?&
dense_295_33229943:
??!
dense_295_33229945:	?%
dense_296_33229948:	?
 
dense_296_33229950:

identity??!dense_294/StatefulPartitionedCall?!dense_295/StatefulPartitionedCall?!dense_296/StatefulPartitionedCall?
!dense_294/StatefulPartitionedCallStatefulPartitionedCallinputsdense_294_33229938dense_294_33229940*
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
G__inference_dense_294_layer_call_and_return_conditional_losses_332298302#
!dense_294/StatefulPartitionedCall?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall*dense_294/StatefulPartitionedCall:output:0dense_295_33229943dense_295_33229945*
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
G__inference_dense_295_layer_call_and_return_conditional_losses_332298472#
!dense_295/StatefulPartitionedCall?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall*dense_295/StatefulPartitionedCall:output:0dense_296_33229948dense_296_33229950*
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
G__inference_dense_296_layer_call_and_return_conditional_losses_332298642#
!dense_296/StatefulPartitionedCall?
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0"^dense_294/StatefulPartitionedCall"^dense_295/StatefulPartitionedCall"^dense_296/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230005
dense_294_input&
dense_294_33229989:
??!
dense_294_33229991:	?&
dense_295_33229994:
??!
dense_295_33229996:	?%
dense_296_33229999:	?
 
dense_296_33230001:

identity??!dense_294/StatefulPartitionedCall?!dense_295/StatefulPartitionedCall?!dense_296/StatefulPartitionedCall?
!dense_294/StatefulPartitionedCallStatefulPartitionedCalldense_294_inputdense_294_33229989dense_294_33229991*
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
G__inference_dense_294_layer_call_and_return_conditional_losses_332298302#
!dense_294/StatefulPartitionedCall?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall*dense_294/StatefulPartitionedCall:output:0dense_295_33229994dense_295_33229996*
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
G__inference_dense_295_layer_call_and_return_conditional_losses_332298472#
!dense_295/StatefulPartitionedCall?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall*dense_295/StatefulPartitionedCall:output:0dense_296_33229999dense_296_33230001*
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
G__inference_dense_296_layer_call_and_return_conditional_losses_332298642#
!dense_296/StatefulPartitionedCall?
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0"^dense_294/StatefulPartitionedCall"^dense_295/StatefulPartitionedCall"^dense_296/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_294_input
?
?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33229871

inputs&
dense_294_33229831:
??!
dense_294_33229833:	?&
dense_295_33229848:
??!
dense_295_33229850:	?%
dense_296_33229865:	?
 
dense_296_33229867:

identity??!dense_294/StatefulPartitionedCall?!dense_295/StatefulPartitionedCall?!dense_296/StatefulPartitionedCall?
!dense_294/StatefulPartitionedCallStatefulPartitionedCallinputsdense_294_33229831dense_294_33229833*
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
G__inference_dense_294_layer_call_and_return_conditional_losses_332298302#
!dense_294/StatefulPartitionedCall?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall*dense_294/StatefulPartitionedCall:output:0dense_295_33229848dense_295_33229850*
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
G__inference_dense_295_layer_call_and_return_conditional_losses_332298472#
!dense_295/StatefulPartitionedCall?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall*dense_295/StatefulPartitionedCall:output:0dense_296_33229865dense_296_33229867*
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
G__inference_dense_296_layer_call_and_return_conditional_losses_332298642#
!dense_296/StatefulPartitionedCall?
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0"^dense_294/StatefulPartitionedCall"^dense_295/StatefulPartitionedCall"^dense_296/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_98_layer_call_fn_33229886
dense_294_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_294_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_98_layer_call_and_return_conditional_losses_332298712
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
_user_specified_namedense_294_input
?
?
,__inference_dense_296_layer_call_fn_33230193

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
G__inference_dense_296_layer_call_and_return_conditional_losses_332298642
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
?
?
0__inference_sequential_98_layer_call_fn_33230133

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
K__inference_sequential_98_layer_call_and_return_conditional_losses_332299542
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
?
?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230024
dense_294_input&
dense_294_33230008:
??!
dense_294_33230010:	?&
dense_295_33230013:
??!
dense_295_33230015:	?%
dense_296_33230018:	?
 
dense_296_33230020:

identity??!dense_294/StatefulPartitionedCall?!dense_295/StatefulPartitionedCall?!dense_296/StatefulPartitionedCall?
!dense_294/StatefulPartitionedCallStatefulPartitionedCalldense_294_inputdense_294_33230008dense_294_33230010*
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
G__inference_dense_294_layer_call_and_return_conditional_losses_332298302#
!dense_294/StatefulPartitionedCall?
!dense_295/StatefulPartitionedCallStatefulPartitionedCall*dense_294/StatefulPartitionedCall:output:0dense_295_33230013dense_295_33230015*
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
G__inference_dense_295_layer_call_and_return_conditional_losses_332298472#
!dense_295/StatefulPartitionedCall?
!dense_296/StatefulPartitionedCallStatefulPartitionedCall*dense_295/StatefulPartitionedCall:output:0dense_296_33230018dense_296_33230020*
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
G__inference_dense_296_layer_call_and_return_conditional_losses_332298642#
!dense_296/StatefulPartitionedCall?
IdentityIdentity*dense_296/StatefulPartitionedCall:output:0"^dense_294/StatefulPartitionedCall"^dense_295/StatefulPartitionedCall"^dense_296/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_294/StatefulPartitionedCall!dense_294/StatefulPartitionedCall2F
!dense_295/StatefulPartitionedCall!dense_295/StatefulPartitionedCall2F
!dense_296/StatefulPartitionedCall!dense_296/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_294_input
?
?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230074

inputs<
(dense_294_matmul_readvariableop_resource:
??8
)dense_294_biasadd_readvariableop_resource:	?<
(dense_295_matmul_readvariableop_resource:
??8
)dense_295_biasadd_readvariableop_resource:	?;
(dense_296_matmul_readvariableop_resource:	?
7
)dense_296_biasadd_readvariableop_resource:

identity?? dense_294/BiasAdd/ReadVariableOp?dense_294/MatMul/ReadVariableOp? dense_295/BiasAdd/ReadVariableOp?dense_295/MatMul/ReadVariableOp? dense_296/BiasAdd/ReadVariableOp?dense_296/MatMul/ReadVariableOp?
dense_294/MatMul/ReadVariableOpReadVariableOp(dense_294_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_294/MatMul/ReadVariableOp?
dense_294/MatMulMatMulinputs'dense_294/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_294/MatMul?
 dense_294/BiasAdd/ReadVariableOpReadVariableOp)dense_294_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_294/BiasAdd/ReadVariableOp?
dense_294/BiasAddBiasAdddense_294/MatMul:product:0(dense_294/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_294/BiasAdd?
dense_294/SigmoidSigmoiddense_294/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_294/Sigmoid?
dense_295/MatMul/ReadVariableOpReadVariableOp(dense_295_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_295/MatMul/ReadVariableOp?
dense_295/MatMulMatMuldense_294/Sigmoid:y:0'dense_295/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_295/MatMul?
 dense_295/BiasAdd/ReadVariableOpReadVariableOp)dense_295_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_295/BiasAdd/ReadVariableOp?
dense_295/BiasAddBiasAdddense_295/MatMul:product:0(dense_295/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_295/BiasAdd?
dense_295/SigmoidSigmoiddense_295/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_295/Sigmoid?
dense_296/MatMul/ReadVariableOpReadVariableOp(dense_296_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_296/MatMul/ReadVariableOp?
dense_296/MatMulMatMuldense_295/Sigmoid:y:0'dense_296/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_296/MatMul?
 dense_296/BiasAdd/ReadVariableOpReadVariableOp)dense_296_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_296/BiasAdd/ReadVariableOp?
dense_296/BiasAddBiasAdddense_296/MatMul:product:0(dense_296/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_296/BiasAdd
dense_296/SigmoidSigmoiddense_296/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_296/Sigmoid?
IdentityIdentitydense_296/Sigmoid:y:0!^dense_294/BiasAdd/ReadVariableOp ^dense_294/MatMul/ReadVariableOp!^dense_295/BiasAdd/ReadVariableOp ^dense_295/MatMul/ReadVariableOp!^dense_296/BiasAdd/ReadVariableOp ^dense_296/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_294/BiasAdd/ReadVariableOp dense_294/BiasAdd/ReadVariableOp2B
dense_294/MatMul/ReadVariableOpdense_294/MatMul/ReadVariableOp2D
 dense_295/BiasAdd/ReadVariableOp dense_295/BiasAdd/ReadVariableOp2B
dense_295/MatMul/ReadVariableOpdense_295/MatMul/ReadVariableOp2D
 dense_296/BiasAdd/ReadVariableOp dense_296/BiasAdd/ReadVariableOp2B
dense_296/MatMul/ReadVariableOpdense_296/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_296_layer_call_and_return_conditional_losses_33230184

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
?
?
,__inference_dense_294_layer_call_fn_33230153

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
G__inference_dense_294_layer_call_and_return_conditional_losses_332298302
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
?
?
&__inference_signature_wrapper_33230049
dense_294_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_294_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_332298122
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
_user_specified_namedense_294_input
?
?
,__inference_dense_295_layer_call_fn_33230173

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
G__inference_dense_295_layer_call_and_return_conditional_losses_332298472
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
?

?
G__inference_dense_296_layer_call_and_return_conditional_losses_33229864

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
dense_294_input9
!serving_default_dense_294_input:0??????????=
	dense_2960
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
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
_tf_keras_sequential?${"name": "sequential_98", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_98", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_294_input"}}, {"class_name": "Dense", "config": {"name": "dense_294", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_295", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_296", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dense_294_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_98", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_294_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_294", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_295", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_296", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
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
_tf_keras_layer?{"name": "dense_294", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_294", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*Q&call_and_return_all_conditional_losses
R__call__"?
_tf_keras_layer?{"name": "dense_295", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_295", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*S&call_and_return_all_conditional_losses
T__call__"?
_tf_keras_layer?{"name": "dense_296", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_296", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
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
??2dense_294/kernel
:?2dense_294/bias
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
??2dense_295/kernel
:?2dense_295/bias
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
2dense_296/kernel
:
2dense_296/bias
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
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
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
):'
??2Adam/dense_294/kernel/m
": ?2Adam/dense_294/bias/m
):'
??2Adam/dense_295/kernel/m
": ?2Adam/dense_295/bias/m
(:&	?
2Adam/dense_296/kernel/m
!:
2Adam/dense_296/bias/m
):'
??2Adam/dense_294/kernel/v
": ?2Adam/dense_294/bias/v
):'
??2Adam/dense_295/kernel/v
": ?2Adam/dense_295/bias/v
(:&	?
2Adam/dense_296/kernel/v
!:
2Adam/dense_296/bias/v
?2?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230074
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230099
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230005
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230024?
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
#__inference__wrapped_model_33229812?
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
dense_294_input??????????
?2?
0__inference_sequential_98_layer_call_fn_33229886
0__inference_sequential_98_layer_call_fn_33230116
0__inference_sequential_98_layer_call_fn_33230133
0__inference_sequential_98_layer_call_fn_33229986?
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
G__inference_dense_294_layer_call_and_return_conditional_losses_33230144?
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
,__inference_dense_294_layer_call_fn_33230153?
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
G__inference_dense_295_layer_call_and_return_conditional_losses_33230164?
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
,__inference_dense_295_layer_call_fn_33230173?
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
G__inference_dense_296_layer_call_and_return_conditional_losses_33230184?
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
,__inference_dense_296_layer_call_fn_33230193?
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
&__inference_signature_wrapper_33230049dense_294_input"?
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
#__inference__wrapped_model_33229812z
9?6
/?,
*?'
dense_294_input??????????
? "5?2
0
	dense_296#? 
	dense_296?????????
?
G__inference_dense_294_layer_call_and_return_conditional_losses_33230144^
0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_294_layer_call_fn_33230153Q
0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_295_layer_call_and_return_conditional_losses_33230164^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_295_layer_call_fn_33230173Q0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_296_layer_call_and_return_conditional_losses_33230184]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
,__inference_dense_296_layer_call_fn_33230193P0?-
&?#
!?
inputs??????????
? "??????????
?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230005r
A?>
7?4
*?'
dense_294_input??????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230024r
A?>
7?4
*?'
dense_294_input??????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230074i
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
K__inference_sequential_98_layer_call_and_return_conditional_losses_33230099i
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
0__inference_sequential_98_layer_call_fn_33229886e
A?>
7?4
*?'
dense_294_input??????????
p 

 
? "??????????
?
0__inference_sequential_98_layer_call_fn_33229986e
A?>
7?4
*?'
dense_294_input??????????
p

 
? "??????????
?
0__inference_sequential_98_layer_call_fn_33230116\
8?5
.?+
!?
inputs??????????
p 

 
? "??????????
?
0__inference_sequential_98_layer_call_fn_33230133\
8?5
.?+
!?
inputs??????????
p

 
? "??????????
?
&__inference_signature_wrapper_33230049?
L?I
? 
B??
=
dense_294_input*?'
dense_294_input??????????"5?2
0
	dense_296#? 
	dense_296?????????
