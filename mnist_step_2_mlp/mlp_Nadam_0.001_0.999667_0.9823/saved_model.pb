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
dense_258/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_258/kernel
w
$dense_258/kernel/Read/ReadVariableOpReadVariableOpdense_258/kernel* 
_output_shapes
:
??*
dtype0
u
dense_258/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_258/bias
n
"dense_258/bias/Read/ReadVariableOpReadVariableOpdense_258/bias*
_output_shapes	
:?*
dtype0
~
dense_259/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_259/kernel
w
$dense_259/kernel/Read/ReadVariableOpReadVariableOpdense_259/kernel* 
_output_shapes
:
??*
dtype0
u
dense_259/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_259/bias
n
"dense_259/bias/Read/ReadVariableOpReadVariableOpdense_259/bias*
_output_shapes	
:?*
dtype0
}
dense_260/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_260/kernel
v
$dense_260/kernel/Read/ReadVariableOpReadVariableOpdense_260/kernel*
_output_shapes
:	?
*
dtype0
t
dense_260/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_260/bias
m
"dense_260/bias/Read/ReadVariableOpReadVariableOpdense_260/bias*
_output_shapes
:
*
dtype0
h

Nadam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
Nadam/iter
a
Nadam/iter/Read/ReadVariableOpReadVariableOp
Nadam/iter*
_output_shapes
: *
dtype0	
l
Nadam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_1
e
 Nadam/beta_1/Read/ReadVariableOpReadVariableOpNadam/beta_1*
_output_shapes
: *
dtype0
l
Nadam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/beta_2
e
 Nadam/beta_2/Read/ReadVariableOpReadVariableOpNadam/beta_2*
_output_shapes
: *
dtype0
j
Nadam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameNadam/decay
c
Nadam/decay/Read/ReadVariableOpReadVariableOpNadam/decay*
_output_shapes
: *
dtype0
z
Nadam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameNadam/learning_rate
s
'Nadam/learning_rate/Read/ReadVariableOpReadVariableOpNadam/learning_rate*
_output_shapes
: *
dtype0
|
Nadam/momentum_cacheVarHandleOp*
_output_shapes
: *
dtype0*
shape: *%
shared_nameNadam/momentum_cache
u
(Nadam/momentum_cache/Read/ReadVariableOpReadVariableOpNadam/momentum_cache*
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
Nadam/dense_258/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameNadam/dense_258/kernel/m
?
,Nadam/dense_258/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_258/kernel/m* 
_output_shapes
:
??*
dtype0
?
Nadam/dense_258/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameNadam/dense_258/bias/m
~
*Nadam/dense_258/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_258/bias/m*
_output_shapes	
:?*
dtype0
?
Nadam/dense_259/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameNadam/dense_259/kernel/m
?
,Nadam/dense_259/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_259/kernel/m* 
_output_shapes
:
??*
dtype0
?
Nadam/dense_259/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameNadam/dense_259/bias/m
~
*Nadam/dense_259/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_259/bias/m*
_output_shapes	
:?*
dtype0
?
Nadam/dense_260/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*)
shared_nameNadam/dense_260/kernel/m
?
,Nadam/dense_260/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_260/kernel/m*
_output_shapes
:	?
*
dtype0
?
Nadam/dense_260/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameNadam/dense_260/bias/m
}
*Nadam/dense_260/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_260/bias/m*
_output_shapes
:
*
dtype0
?
Nadam/dense_258/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameNadam/dense_258/kernel/v
?
,Nadam/dense_258/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_258/kernel/v* 
_output_shapes
:
??*
dtype0
?
Nadam/dense_258/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameNadam/dense_258/bias/v
~
*Nadam/dense_258/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_258/bias/v*
_output_shapes	
:?*
dtype0
?
Nadam/dense_259/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameNadam/dense_259/kernel/v
?
,Nadam/dense_259/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_259/kernel/v* 
_output_shapes
:
??*
dtype0
?
Nadam/dense_259/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameNadam/dense_259/bias/v
~
*Nadam/dense_259/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_259/bias/v*
_output_shapes	
:?*
dtype0
?
Nadam/dense_260/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*)
shared_nameNadam/dense_260/kernel/v
?
,Nadam/dense_260/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_260/kernel/v*
_output_shapes
:	?
*
dtype0
?
Nadam/dense_260/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameNadam/dense_260/bias/v
}
*Nadam/dense_260/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_260/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?&
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?%
value?%B?% B?%
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
 learning_rate
!momentum_cache
mAmBmCmDmEmF
vGvHvIvJvKvL
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
"layer_metrics
#layer_regularization_losses
$metrics
trainable_variables
	variables
regularization_losses

%layers
&non_trainable_variables
 
\Z
VARIABLE_VALUEdense_258/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_258/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
'layer_metrics
(layer_regularization_losses
)metrics
trainable_variables
	variables
regularization_losses

*layers
+non_trainable_variables
\Z
VARIABLE_VALUEdense_259/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_259/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
,layer_metrics
-layer_regularization_losses
.metrics
trainable_variables
	variables
regularization_losses

/layers
0non_trainable_variables
\Z
VARIABLE_VALUEdense_260/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_260/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
1layer_metrics
2layer_regularization_losses
3metrics
trainable_variables
	variables
regularization_losses

4layers
5non_trainable_variables
IG
VARIABLE_VALUE
Nadam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
MK
VARIABLE_VALUENadam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
KI
VARIABLE_VALUENadam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
[Y
VARIABLE_VALUENadam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
][
VARIABLE_VALUENadam/momentum_cache3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUE
 
 

60
71
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
	8total
	9count
:	variables
;	keras_api
D
	<total
	=count
>
_fn_kwargs
?	variables
@	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

80
91

:	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

<0
=1

?	variables
?~
VARIABLE_VALUENadam/dense_258/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_258/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_259/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_259/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_260/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_260/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_258/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_258/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_259/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_259/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_260/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_260/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_dense_258_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_258_inputdense_258/kerneldense_258/biasdense_259/kerneldense_259/biasdense_260/kerneldense_260/bias*
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
&__inference_signature_wrapper_29663417
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_258/kernel/Read/ReadVariableOp"dense_258/bias/Read/ReadVariableOp$dense_259/kernel/Read/ReadVariableOp"dense_259/bias/Read/ReadVariableOp$dense_260/kernel/Read/ReadVariableOp"dense_260/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Nadam/dense_258/kernel/m/Read/ReadVariableOp*Nadam/dense_258/bias/m/Read/ReadVariableOp,Nadam/dense_259/kernel/m/Read/ReadVariableOp*Nadam/dense_259/bias/m/Read/ReadVariableOp,Nadam/dense_260/kernel/m/Read/ReadVariableOp*Nadam/dense_260/bias/m/Read/ReadVariableOp,Nadam/dense_258/kernel/v/Read/ReadVariableOp*Nadam/dense_258/bias/v/Read/ReadVariableOp,Nadam/dense_259/kernel/v/Read/ReadVariableOp*Nadam/dense_259/bias/v/Read/ReadVariableOp,Nadam/dense_260/kernel/v/Read/ReadVariableOp*Nadam/dense_260/bias/v/Read/ReadVariableOpConst*)
Tin"
 2	*
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
!__inference__traced_save_29663668
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_258/kerneldense_258/biasdense_259/kerneldense_259/biasdense_260/kerneldense_260/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcounttotal_1count_1Nadam/dense_258/kernel/mNadam/dense_258/bias/mNadam/dense_259/kernel/mNadam/dense_259/bias/mNadam/dense_260/kernel/mNadam/dense_260/bias/mNadam/dense_258/kernel/vNadam/dense_258/bias/vNadam/dense_259/kernel/vNadam/dense_259/bias/vNadam/dense_260/kernel/vNadam/dense_260/bias/v*(
Tin!
2*
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
$__inference__traced_restore_29663762??
?
?
,__inference_dense_259_layer_call_fn_29663541

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
G__inference_dense_259_layer_call_and_return_conditional_losses_296632152
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
G__inference_dense_259_layer_call_and_return_conditional_losses_29663215

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
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663373
dense_258_input&
dense_258_29663357:
??!
dense_258_29663359:	?&
dense_259_29663362:
??!
dense_259_29663364:	?%
dense_260_29663367:	?
 
dense_260_29663369:

identity??!dense_258/StatefulPartitionedCall?!dense_259/StatefulPartitionedCall?!dense_260/StatefulPartitionedCall?
!dense_258/StatefulPartitionedCallStatefulPartitionedCalldense_258_inputdense_258_29663357dense_258_29663359*
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
G__inference_dense_258_layer_call_and_return_conditional_losses_296631982#
!dense_258/StatefulPartitionedCall?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall*dense_258/StatefulPartitionedCall:output:0dense_259_29663362dense_259_29663364*
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
G__inference_dense_259_layer_call_and_return_conditional_losses_296632152#
!dense_259/StatefulPartitionedCall?
!dense_260/StatefulPartitionedCallStatefulPartitionedCall*dense_259/StatefulPartitionedCall:output:0dense_260_29663367dense_260_29663369*
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
G__inference_dense_260_layer_call_and_return_conditional_losses_296632322#
!dense_260/StatefulPartitionedCall?
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0"^dense_258/StatefulPartitionedCall"^dense_259/StatefulPartitionedCall"^dense_260/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_258_input
?
?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663322

inputs&
dense_258_29663306:
??!
dense_258_29663308:	?&
dense_259_29663311:
??!
dense_259_29663313:	?%
dense_260_29663316:	?
 
dense_260_29663318:

identity??!dense_258/StatefulPartitionedCall?!dense_259/StatefulPartitionedCall?!dense_260/StatefulPartitionedCall?
!dense_258/StatefulPartitionedCallStatefulPartitionedCallinputsdense_258_29663306dense_258_29663308*
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
G__inference_dense_258_layer_call_and_return_conditional_losses_296631982#
!dense_258/StatefulPartitionedCall?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall*dense_258/StatefulPartitionedCall:output:0dense_259_29663311dense_259_29663313*
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
G__inference_dense_259_layer_call_and_return_conditional_losses_296632152#
!dense_259/StatefulPartitionedCall?
!dense_260/StatefulPartitionedCallStatefulPartitionedCall*dense_259/StatefulPartitionedCall:output:0dense_260_29663316dense_260_29663318*
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
G__inference_dense_260_layer_call_and_return_conditional_losses_296632322#
!dense_260/StatefulPartitionedCall?
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0"^dense_258/StatefulPartitionedCall"^dense_259/StatefulPartitionedCall"^dense_260/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663392
dense_258_input&
dense_258_29663376:
??!
dense_258_29663378:	?&
dense_259_29663381:
??!
dense_259_29663383:	?%
dense_260_29663386:	?
 
dense_260_29663388:

identity??!dense_258/StatefulPartitionedCall?!dense_259/StatefulPartitionedCall?!dense_260/StatefulPartitionedCall?
!dense_258/StatefulPartitionedCallStatefulPartitionedCalldense_258_inputdense_258_29663376dense_258_29663378*
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
G__inference_dense_258_layer_call_and_return_conditional_losses_296631982#
!dense_258/StatefulPartitionedCall?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall*dense_258/StatefulPartitionedCall:output:0dense_259_29663381dense_259_29663383*
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
G__inference_dense_259_layer_call_and_return_conditional_losses_296632152#
!dense_259/StatefulPartitionedCall?
!dense_260/StatefulPartitionedCallStatefulPartitionedCall*dense_259/StatefulPartitionedCall:output:0dense_260_29663386dense_260_29663388*
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
G__inference_dense_260_layer_call_and_return_conditional_losses_296632322#
!dense_260/StatefulPartitionedCall?
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0"^dense_258/StatefulPartitionedCall"^dense_259/StatefulPartitionedCall"^dense_260/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_258_input
?
?
0__inference_sequential_86_layer_call_fn_29663501

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
K__inference_sequential_86_layer_call_and_return_conditional_losses_296633222
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
?
?
,__inference_dense_260_layer_call_fn_29663561

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
G__inference_dense_260_layer_call_and_return_conditional_losses_296632322
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
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663442

inputs<
(dense_258_matmul_readvariableop_resource:
??8
)dense_258_biasadd_readvariableop_resource:	?<
(dense_259_matmul_readvariableop_resource:
??8
)dense_259_biasadd_readvariableop_resource:	?;
(dense_260_matmul_readvariableop_resource:	?
7
)dense_260_biasadd_readvariableop_resource:

identity?? dense_258/BiasAdd/ReadVariableOp?dense_258/MatMul/ReadVariableOp? dense_259/BiasAdd/ReadVariableOp?dense_259/MatMul/ReadVariableOp? dense_260/BiasAdd/ReadVariableOp?dense_260/MatMul/ReadVariableOp?
dense_258/MatMul/ReadVariableOpReadVariableOp(dense_258_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_258/MatMul/ReadVariableOp?
dense_258/MatMulMatMulinputs'dense_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_258/MatMul?
 dense_258/BiasAdd/ReadVariableOpReadVariableOp)dense_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_258/BiasAdd/ReadVariableOp?
dense_258/BiasAddBiasAdddense_258/MatMul:product:0(dense_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_258/BiasAdd?
dense_258/SigmoidSigmoiddense_258/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_258/Sigmoid?
dense_259/MatMul/ReadVariableOpReadVariableOp(dense_259_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_259/MatMul/ReadVariableOp?
dense_259/MatMulMatMuldense_258/Sigmoid:y:0'dense_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_259/MatMul?
 dense_259/BiasAdd/ReadVariableOpReadVariableOp)dense_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_259/BiasAdd/ReadVariableOp?
dense_259/BiasAddBiasAdddense_259/MatMul:product:0(dense_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_259/BiasAdd?
dense_259/SigmoidSigmoiddense_259/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_259/Sigmoid?
dense_260/MatMul/ReadVariableOpReadVariableOp(dense_260_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_260/MatMul/ReadVariableOp?
dense_260/MatMulMatMuldense_259/Sigmoid:y:0'dense_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_260/MatMul?
 dense_260/BiasAdd/ReadVariableOpReadVariableOp)dense_260_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_260/BiasAdd/ReadVariableOp?
dense_260/BiasAddBiasAdddense_260/MatMul:product:0(dense_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_260/BiasAdd
dense_260/SigmoidSigmoiddense_260/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_260/Sigmoid?
IdentityIdentitydense_260/Sigmoid:y:0!^dense_258/BiasAdd/ReadVariableOp ^dense_258/MatMul/ReadVariableOp!^dense_259/BiasAdd/ReadVariableOp ^dense_259/MatMul/ReadVariableOp!^dense_260/BiasAdd/ReadVariableOp ^dense_260/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_258/BiasAdd/ReadVariableOp dense_258/BiasAdd/ReadVariableOp2B
dense_258/MatMul/ReadVariableOpdense_258/MatMul/ReadVariableOp2D
 dense_259/BiasAdd/ReadVariableOp dense_259/BiasAdd/ReadVariableOp2B
dense_259/MatMul/ReadVariableOpdense_259/MatMul/ReadVariableOp2D
 dense_260/BiasAdd/ReadVariableOp dense_260/BiasAdd/ReadVariableOp2B
dense_260/MatMul/ReadVariableOpdense_260/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
!__inference__traced_save_29663668
file_prefix/
+savev2_dense_258_kernel_read_readvariableop-
)savev2_dense_258_bias_read_readvariableop/
+savev2_dense_259_kernel_read_readvariableop-
)savev2_dense_259_bias_read_readvariableop/
+savev2_dense_260_kernel_read_readvariableop-
)savev2_dense_260_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_nadam_dense_258_kernel_m_read_readvariableop5
1savev2_nadam_dense_258_bias_m_read_readvariableop7
3savev2_nadam_dense_259_kernel_m_read_readvariableop5
1savev2_nadam_dense_259_bias_m_read_readvariableop7
3savev2_nadam_dense_260_kernel_m_read_readvariableop5
1savev2_nadam_dense_260_bias_m_read_readvariableop7
3savev2_nadam_dense_258_kernel_v_read_readvariableop5
1savev2_nadam_dense_258_bias_v_read_readvariableop7
3savev2_nadam_dense_259_kernel_v_read_readvariableop5
1savev2_nadam_dense_259_bias_v_read_readvariableop7
3savev2_nadam_dense_260_kernel_v_read_readvariableop5
1savev2_nadam_dense_260_bias_v_read_readvariableop
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
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_258_kernel_read_readvariableop)savev2_dense_258_bias_read_readvariableop+savev2_dense_259_kernel_read_readvariableop)savev2_dense_259_bias_read_readvariableop+savev2_dense_260_kernel_read_readvariableop)savev2_dense_260_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_nadam_dense_258_kernel_m_read_readvariableop1savev2_nadam_dense_258_bias_m_read_readvariableop3savev2_nadam_dense_259_kernel_m_read_readvariableop1savev2_nadam_dense_259_bias_m_read_readvariableop3savev2_nadam_dense_260_kernel_m_read_readvariableop1savev2_nadam_dense_260_bias_m_read_readvariableop3savev2_nadam_dense_258_kernel_v_read_readvariableop1savev2_nadam_dense_258_bias_v_read_readvariableop3savev2_nadam_dense_259_kernel_v_read_readvariableop1savev2_nadam_dense_259_bias_v_read_readvariableop3savev2_nadam_dense_260_kernel_v_read_readvariableop1savev2_nadam_dense_260_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
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
: : : : : : : : : : :
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
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:

_output_shapes
: 
?

?
G__inference_dense_258_layer_call_and_return_conditional_losses_29663198

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
?
?
,__inference_dense_258_layer_call_fn_29663521

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
G__inference_dense_258_layer_call_and_return_conditional_losses_296631982
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
0__inference_sequential_86_layer_call_fn_29663354
dense_258_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_86_layer_call_and_return_conditional_losses_296633222
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
_user_specified_namedense_258_input
?(
?
#__inference__wrapped_model_29663180
dense_258_inputJ
6sequential_86_dense_258_matmul_readvariableop_resource:
??F
7sequential_86_dense_258_biasadd_readvariableop_resource:	?J
6sequential_86_dense_259_matmul_readvariableop_resource:
??F
7sequential_86_dense_259_biasadd_readvariableop_resource:	?I
6sequential_86_dense_260_matmul_readvariableop_resource:	?
E
7sequential_86_dense_260_biasadd_readvariableop_resource:

identity??.sequential_86/dense_258/BiasAdd/ReadVariableOp?-sequential_86/dense_258/MatMul/ReadVariableOp?.sequential_86/dense_259/BiasAdd/ReadVariableOp?-sequential_86/dense_259/MatMul/ReadVariableOp?.sequential_86/dense_260/BiasAdd/ReadVariableOp?-sequential_86/dense_260/MatMul/ReadVariableOp?
-sequential_86/dense_258/MatMul/ReadVariableOpReadVariableOp6sequential_86_dense_258_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_86/dense_258/MatMul/ReadVariableOp?
sequential_86/dense_258/MatMulMatMuldense_258_input5sequential_86/dense_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_86/dense_258/MatMul?
.sequential_86/dense_258/BiasAdd/ReadVariableOpReadVariableOp7sequential_86_dense_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_86/dense_258/BiasAdd/ReadVariableOp?
sequential_86/dense_258/BiasAddBiasAdd(sequential_86/dense_258/MatMul:product:06sequential_86/dense_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_86/dense_258/BiasAdd?
sequential_86/dense_258/SigmoidSigmoid(sequential_86/dense_258/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_86/dense_258/Sigmoid?
-sequential_86/dense_259/MatMul/ReadVariableOpReadVariableOp6sequential_86_dense_259_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_86/dense_259/MatMul/ReadVariableOp?
sequential_86/dense_259/MatMulMatMul#sequential_86/dense_258/Sigmoid:y:05sequential_86/dense_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_86/dense_259/MatMul?
.sequential_86/dense_259/BiasAdd/ReadVariableOpReadVariableOp7sequential_86_dense_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_86/dense_259/BiasAdd/ReadVariableOp?
sequential_86/dense_259/BiasAddBiasAdd(sequential_86/dense_259/MatMul:product:06sequential_86/dense_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_86/dense_259/BiasAdd?
sequential_86/dense_259/SigmoidSigmoid(sequential_86/dense_259/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_86/dense_259/Sigmoid?
-sequential_86/dense_260/MatMul/ReadVariableOpReadVariableOp6sequential_86_dense_260_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_86/dense_260/MatMul/ReadVariableOp?
sequential_86/dense_260/MatMulMatMul#sequential_86/dense_259/Sigmoid:y:05sequential_86/dense_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_86/dense_260/MatMul?
.sequential_86/dense_260/BiasAdd/ReadVariableOpReadVariableOp7sequential_86_dense_260_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_86/dense_260/BiasAdd/ReadVariableOp?
sequential_86/dense_260/BiasAddBiasAdd(sequential_86/dense_260/MatMul:product:06sequential_86/dense_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_86/dense_260/BiasAdd?
sequential_86/dense_260/SigmoidSigmoid(sequential_86/dense_260/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2!
sequential_86/dense_260/Sigmoid?
IdentityIdentity#sequential_86/dense_260/Sigmoid:y:0/^sequential_86/dense_258/BiasAdd/ReadVariableOp.^sequential_86/dense_258/MatMul/ReadVariableOp/^sequential_86/dense_259/BiasAdd/ReadVariableOp.^sequential_86/dense_259/MatMul/ReadVariableOp/^sequential_86/dense_260/BiasAdd/ReadVariableOp.^sequential_86/dense_260/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2`
.sequential_86/dense_258/BiasAdd/ReadVariableOp.sequential_86/dense_258/BiasAdd/ReadVariableOp2^
-sequential_86/dense_258/MatMul/ReadVariableOp-sequential_86/dense_258/MatMul/ReadVariableOp2`
.sequential_86/dense_259/BiasAdd/ReadVariableOp.sequential_86/dense_259/BiasAdd/ReadVariableOp2^
-sequential_86/dense_259/MatMul/ReadVariableOp-sequential_86/dense_259/MatMul/ReadVariableOp2`
.sequential_86/dense_260/BiasAdd/ReadVariableOp.sequential_86/dense_260/BiasAdd/ReadVariableOp2^
-sequential_86/dense_260/MatMul/ReadVariableOp-sequential_86/dense_260/MatMul/ReadVariableOp:Y U
(
_output_shapes
:??????????
)
_user_specified_namedense_258_input
?
?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663239

inputs&
dense_258_29663199:
??!
dense_258_29663201:	?&
dense_259_29663216:
??!
dense_259_29663218:	?%
dense_260_29663233:	?
 
dense_260_29663235:

identity??!dense_258/StatefulPartitionedCall?!dense_259/StatefulPartitionedCall?!dense_260/StatefulPartitionedCall?
!dense_258/StatefulPartitionedCallStatefulPartitionedCallinputsdense_258_29663199dense_258_29663201*
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
G__inference_dense_258_layer_call_and_return_conditional_losses_296631982#
!dense_258/StatefulPartitionedCall?
!dense_259/StatefulPartitionedCallStatefulPartitionedCall*dense_258/StatefulPartitionedCall:output:0dense_259_29663216dense_259_29663218*
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
G__inference_dense_259_layer_call_and_return_conditional_losses_296632152#
!dense_259/StatefulPartitionedCall?
!dense_260/StatefulPartitionedCallStatefulPartitionedCall*dense_259/StatefulPartitionedCall:output:0dense_260_29663233dense_260_29663235*
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
G__inference_dense_260_layer_call_and_return_conditional_losses_296632322#
!dense_260/StatefulPartitionedCall?
IdentityIdentity*dense_260/StatefulPartitionedCall:output:0"^dense_258/StatefulPartitionedCall"^dense_259/StatefulPartitionedCall"^dense_260/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_258/StatefulPartitionedCall!dense_258/StatefulPartitionedCall2F
!dense_259/StatefulPartitionedCall!dense_259/StatefulPartitionedCall2F
!dense_260/StatefulPartitionedCall!dense_260/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663467

inputs<
(dense_258_matmul_readvariableop_resource:
??8
)dense_258_biasadd_readvariableop_resource:	?<
(dense_259_matmul_readvariableop_resource:
??8
)dense_259_biasadd_readvariableop_resource:	?;
(dense_260_matmul_readvariableop_resource:	?
7
)dense_260_biasadd_readvariableop_resource:

identity?? dense_258/BiasAdd/ReadVariableOp?dense_258/MatMul/ReadVariableOp? dense_259/BiasAdd/ReadVariableOp?dense_259/MatMul/ReadVariableOp? dense_260/BiasAdd/ReadVariableOp?dense_260/MatMul/ReadVariableOp?
dense_258/MatMul/ReadVariableOpReadVariableOp(dense_258_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_258/MatMul/ReadVariableOp?
dense_258/MatMulMatMulinputs'dense_258/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_258/MatMul?
 dense_258/BiasAdd/ReadVariableOpReadVariableOp)dense_258_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_258/BiasAdd/ReadVariableOp?
dense_258/BiasAddBiasAdddense_258/MatMul:product:0(dense_258/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_258/BiasAdd?
dense_258/SigmoidSigmoiddense_258/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_258/Sigmoid?
dense_259/MatMul/ReadVariableOpReadVariableOp(dense_259_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_259/MatMul/ReadVariableOp?
dense_259/MatMulMatMuldense_258/Sigmoid:y:0'dense_259/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_259/MatMul?
 dense_259/BiasAdd/ReadVariableOpReadVariableOp)dense_259_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_259/BiasAdd/ReadVariableOp?
dense_259/BiasAddBiasAdddense_259/MatMul:product:0(dense_259/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_259/BiasAdd?
dense_259/SigmoidSigmoiddense_259/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_259/Sigmoid?
dense_260/MatMul/ReadVariableOpReadVariableOp(dense_260_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_260/MatMul/ReadVariableOp?
dense_260/MatMulMatMuldense_259/Sigmoid:y:0'dense_260/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_260/MatMul?
 dense_260/BiasAdd/ReadVariableOpReadVariableOp)dense_260_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_260/BiasAdd/ReadVariableOp?
dense_260/BiasAddBiasAdddense_260/MatMul:product:0(dense_260/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_260/BiasAdd
dense_260/SigmoidSigmoiddense_260/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_260/Sigmoid?
IdentityIdentitydense_260/Sigmoid:y:0!^dense_258/BiasAdd/ReadVariableOp ^dense_258/MatMul/ReadVariableOp!^dense_259/BiasAdd/ReadVariableOp ^dense_259/MatMul/ReadVariableOp!^dense_260/BiasAdd/ReadVariableOp ^dense_260/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_258/BiasAdd/ReadVariableOp dense_258/BiasAdd/ReadVariableOp2B
dense_258/MatMul/ReadVariableOpdense_258/MatMul/ReadVariableOp2D
 dense_259/BiasAdd/ReadVariableOp dense_259/BiasAdd/ReadVariableOp2B
dense_259/MatMul/ReadVariableOpdense_259/MatMul/ReadVariableOp2D
 dense_260/BiasAdd/ReadVariableOp dense_260/BiasAdd/ReadVariableOp2B
dense_260/MatMul/ReadVariableOpdense_260/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
G__inference_dense_260_layer_call_and_return_conditional_losses_29663552

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
?y
?
$__inference__traced_restore_29663762
file_prefix5
!assignvariableop_dense_258_kernel:
??0
!assignvariableop_1_dense_258_bias:	?7
#assignvariableop_2_dense_259_kernel:
??0
!assignvariableop_3_dense_259_bias:	?6
#assignvariableop_4_dense_260_kernel:	?
/
!assignvariableop_5_dense_260_bias:
'
assignvariableop_6_nadam_iter:	 )
assignvariableop_7_nadam_beta_1: )
assignvariableop_8_nadam_beta_2: (
assignvariableop_9_nadam_decay: 1
'assignvariableop_10_nadam_learning_rate: 2
(assignvariableop_11_nadam_momentum_cache: #
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: @
,assignvariableop_16_nadam_dense_258_kernel_m:
??9
*assignvariableop_17_nadam_dense_258_bias_m:	?@
,assignvariableop_18_nadam_dense_259_kernel_m:
??9
*assignvariableop_19_nadam_dense_259_bias_m:	??
,assignvariableop_20_nadam_dense_260_kernel_m:	?
8
*assignvariableop_21_nadam_dense_260_bias_m:
@
,assignvariableop_22_nadam_dense_258_kernel_v:
??9
*assignvariableop_23_nadam_dense_258_bias_v:	?@
,assignvariableop_24_nadam_dense_259_kernel_v:
??9
*assignvariableop_25_nadam_dense_259_bias_v:	??
,assignvariableop_26_nadam_dense_260_kernel_v:	?
8
*assignvariableop_27_nadam_dense_260_bias_v:

identity_29??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_258_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_258_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_259_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_259_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_260_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_260_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_nadam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_nadam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_nadam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp'assignvariableop_10_nadam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp(assignvariableop_11_nadam_momentum_cacheIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp,assignvariableop_16_nadam_dense_258_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp*assignvariableop_17_nadam_dense_258_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp,assignvariableop_18_nadam_dense_259_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp*assignvariableop_19_nadam_dense_259_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp,assignvariableop_20_nadam_dense_260_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp*assignvariableop_21_nadam_dense_260_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_nadam_dense_258_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_nadam_dense_258_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_nadam_dense_259_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_nadam_dense_259_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_nadam_dense_260_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp*assignvariableop_27_nadam_dense_260_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28?
Identity_29IdentityIdentity_28:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_29"#
identity_29Identity_29:output:0*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272(
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
?

?
G__inference_dense_260_layer_call_and_return_conditional_losses_29663232

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
?
?
&__inference_signature_wrapper_29663417
dense_258_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_296631802
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
_user_specified_namedense_258_input
?
?
0__inference_sequential_86_layer_call_fn_29663484

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
K__inference_sequential_86_layer_call_and_return_conditional_losses_296632392
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
0__inference_sequential_86_layer_call_fn_29663254
dense_258_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_258_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_86_layer_call_and_return_conditional_losses_296632392
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
_user_specified_namedense_258_input
?

?
G__inference_dense_258_layer_call_and_return_conditional_losses_29663512

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
G__inference_dense_259_layer_call_and_return_conditional_losses_29663532

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
dense_258_input9
!serving_default_dense_258_input:0??????????=
	dense_2600
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
*M&call_and_return_all_conditional_losses
N_default_save_signature
O__call__"?$
_tf_keras_sequential?${"name": "sequential_86", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_86", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_258_input"}}, {"class_name": "Dense", "config": {"name": "dense_258", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_259", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_260", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dense_258_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_86", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_258_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_258", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_259", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_260", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Nadam", "config": {"name": "Nadam", "learning_rate": 0.0010000000474974513, "decay": 0.004, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
?	


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*P&call_and_return_all_conditional_losses
Q__call__"?
_tf_keras_layer?{"name": "dense_258", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_258", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*R&call_and_return_all_conditional_losses
S__call__"?
_tf_keras_layer?{"name": "dense_259", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_259", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*T&call_and_return_all_conditional_losses
U__call__"?
_tf_keras_layer?{"name": "dense_260", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_260", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
iter

beta_1

beta_2
	decay
 learning_rate
!momentum_cache
mAmBmCmDmEmF
vGvHvIvJvKvL"
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
"layer_metrics
#layer_regularization_losses
$metrics
trainable_variables
	variables
regularization_losses

%layers
&non_trainable_variables
O__call__
N_default_save_signature
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
,
Vserving_default"
signature_map
$:"
??2dense_258/kernel
:?2dense_258/bias
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
'layer_metrics
(layer_regularization_losses
)metrics
trainable_variables
	variables
regularization_losses

*layers
+non_trainable_variables
Q__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_259/kernel
:?2dense_259/bias
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
,layer_metrics
-layer_regularization_losses
.metrics
trainable_variables
	variables
regularization_losses

/layers
0non_trainable_variables
S__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_260/kernel
:
2dense_260/bias
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
1layer_metrics
2layer_regularization_losses
3metrics
trainable_variables
	variables
regularization_losses

4layers
5non_trainable_variables
U__call__
*T&call_and_return_all_conditional_losses
&T"call_and_return_conditional_losses"
_generic_user_object
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
60
71"
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
	8total
	9count
:	variables
;	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
?
	<total
	=count
>
_fn_kwargs
?	variables
@	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}
:  (2total
:  (2count
.
80
91"
trackable_list_wrapper
-
:	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
-
?	variables"
_generic_user_object
*:(
??2Nadam/dense_258/kernel/m
#:!?2Nadam/dense_258/bias/m
*:(
??2Nadam/dense_259/kernel/m
#:!?2Nadam/dense_259/bias/m
):'	?
2Nadam/dense_260/kernel/m
": 
2Nadam/dense_260/bias/m
*:(
??2Nadam/dense_258/kernel/v
#:!?2Nadam/dense_258/bias/v
*:(
??2Nadam/dense_259/kernel/v
#:!?2Nadam/dense_259/bias/v
):'	?
2Nadam/dense_260/kernel/v
": 
2Nadam/dense_260/bias/v
?2?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663442
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663467
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663373
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663392?
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
#__inference__wrapped_model_29663180?
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
dense_258_input??????????
?2?
0__inference_sequential_86_layer_call_fn_29663254
0__inference_sequential_86_layer_call_fn_29663484
0__inference_sequential_86_layer_call_fn_29663501
0__inference_sequential_86_layer_call_fn_29663354?
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
G__inference_dense_258_layer_call_and_return_conditional_losses_29663512?
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
,__inference_dense_258_layer_call_fn_29663521?
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
G__inference_dense_259_layer_call_and_return_conditional_losses_29663532?
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
,__inference_dense_259_layer_call_fn_29663541?
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
G__inference_dense_260_layer_call_and_return_conditional_losses_29663552?
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
,__inference_dense_260_layer_call_fn_29663561?
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
&__inference_signature_wrapper_29663417dense_258_input"?
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
#__inference__wrapped_model_29663180z
9?6
/?,
*?'
dense_258_input??????????
? "5?2
0
	dense_260#? 
	dense_260?????????
?
G__inference_dense_258_layer_call_and_return_conditional_losses_29663512^
0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_258_layer_call_fn_29663521Q
0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_259_layer_call_and_return_conditional_losses_29663532^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_259_layer_call_fn_29663541Q0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_260_layer_call_and_return_conditional_losses_29663552]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
,__inference_dense_260_layer_call_fn_29663561P0?-
&?#
!?
inputs??????????
? "??????????
?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663373r
A?>
7?4
*?'
dense_258_input??????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663392r
A?>
7?4
*?'
dense_258_input??????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663442i
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
K__inference_sequential_86_layer_call_and_return_conditional_losses_29663467i
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
0__inference_sequential_86_layer_call_fn_29663254e
A?>
7?4
*?'
dense_258_input??????????
p 

 
? "??????????
?
0__inference_sequential_86_layer_call_fn_29663354e
A?>
7?4
*?'
dense_258_input??????????
p

 
? "??????????
?
0__inference_sequential_86_layer_call_fn_29663484\
8?5
.?+
!?
inputs??????????
p 

 
? "??????????
?
0__inference_sequential_86_layer_call_fn_29663501\
8?5
.?+
!?
inputs??????????
p

 
? "??????????
?
&__inference_signature_wrapper_29663417?
L?I
? 
B??
=
dense_258_input*?'
dense_258_input??????????"5?2
0
	dense_260#? 
	dense_260?????????
