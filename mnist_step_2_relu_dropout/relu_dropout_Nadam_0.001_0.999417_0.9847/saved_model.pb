®­
³
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
delete_old_dirsbool(
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¾
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
executor_typestring 
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718Ø
~
dense_297/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ú*!
shared_namedense_297/kernel
w
$dense_297/kernel/Read/ReadVariableOpReadVariableOpdense_297/kernel* 
_output_shapes
:
ú*
dtype0
u
dense_297/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*
shared_namedense_297/bias
n
"dense_297/bias/Read/ReadVariableOpReadVariableOpdense_297/bias*
_output_shapes	
:ú*
dtype0
~
dense_298/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úú*!
shared_namedense_298/kernel
w
$dense_298/kernel/Read/ReadVariableOpReadVariableOpdense_298/kernel* 
_output_shapes
:
úú*
dtype0
u
dense_298/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*
shared_namedense_298/bias
n
"dense_298/bias/Read/ReadVariableOpReadVariableOpdense_298/bias*
_output_shapes	
:ú*
dtype0
}
dense_299/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú
*!
shared_namedense_299/kernel
v
$dense_299/kernel/Read/ReadVariableOpReadVariableOpdense_299/kernel*
_output_shapes
:	ú
*
dtype0
t
dense_299/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_299/bias
m
"dense_299/bias/Read/ReadVariableOpReadVariableOpdense_299/bias*
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

Nadam/dense_297/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ú*)
shared_nameNadam/dense_297/kernel/m

,Nadam/dense_297/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_297/kernel/m* 
_output_shapes
:
ú*
dtype0

Nadam/dense_297/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*'
shared_nameNadam/dense_297/bias/m
~
*Nadam/dense_297/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_297/bias/m*
_output_shapes	
:ú*
dtype0

Nadam/dense_298/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úú*)
shared_nameNadam/dense_298/kernel/m

,Nadam/dense_298/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_298/kernel/m* 
_output_shapes
:
úú*
dtype0

Nadam/dense_298/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*'
shared_nameNadam/dense_298/bias/m
~
*Nadam/dense_298/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_298/bias/m*
_output_shapes	
:ú*
dtype0

Nadam/dense_299/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú
*)
shared_nameNadam/dense_299/kernel/m

,Nadam/dense_299/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_299/kernel/m*
_output_shapes
:	ú
*
dtype0

Nadam/dense_299/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameNadam/dense_299/bias/m
}
*Nadam/dense_299/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_299/bias/m*
_output_shapes
:
*
dtype0

Nadam/dense_297/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ú*)
shared_nameNadam/dense_297/kernel/v

,Nadam/dense_297/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_297/kernel/v* 
_output_shapes
:
ú*
dtype0

Nadam/dense_297/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*'
shared_nameNadam/dense_297/bias/v
~
*Nadam/dense_297/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_297/bias/v*
_output_shapes	
:ú*
dtype0

Nadam/dense_298/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úú*)
shared_nameNadam/dense_298/kernel/v

,Nadam/dense_298/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_298/kernel/v* 
_output_shapes
:
úú*
dtype0

Nadam/dense_298/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*'
shared_nameNadam/dense_298/bias/v
~
*Nadam/dense_298/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_298/bias/v*
_output_shapes	
:ú*
dtype0

Nadam/dense_299/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú
*)
shared_nameNadam/dense_299/kernel/v

,Nadam/dense_299/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_299/kernel/v*
_output_shapes
:	ú
*
dtype0

Nadam/dense_299/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameNadam/dense_299/bias/v
}
*Nadam/dense_299/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_299/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
°-
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ë,
valueá,BÞ, B×,

layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
R
regularization_losses
	variables
trainable_variables
	keras_api
h

kernel
bias
regularization_losses
	variables
trainable_variables
 	keras_api
R
!regularization_losses
"	variables
#trainable_variables
$	keras_api
h

%kernel
&bias
'regularization_losses
(	variables
)trainable_variables
*	keras_api
À
+iter

,beta_1

-beta_2
	.decay
/learning_rate
0momentum_cachem_m`mamb%mc&mdvevfvgvh%vi&vj
 
*
0
1
2
3
%4
&5
*
0
1
2
3
%4
&5
­
regularization_losses
1layer_metrics
2layer_regularization_losses
		variables
3non_trainable_variables

trainable_variables
4metrics

5layers
 
 
 
 
­
regularization_losses
6layer_metrics
7layer_regularization_losses
	variables
8non_trainable_variables
trainable_variables
9metrics

:layers
\Z
VARIABLE_VALUEdense_297/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_297/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
;layer_metrics
<layer_regularization_losses
	variables
=non_trainable_variables
trainable_variables
>metrics

?layers
 
 
 
­
regularization_losses
@layer_metrics
Alayer_regularization_losses
	variables
Bnon_trainable_variables
trainable_variables
Cmetrics

Dlayers
\Z
VARIABLE_VALUEdense_298/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_298/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
Elayer_metrics
Flayer_regularization_losses
	variables
Gnon_trainable_variables
trainable_variables
Hmetrics

Ilayers
 
 
 
­
!regularization_losses
Jlayer_metrics
Klayer_regularization_losses
"	variables
Lnon_trainable_variables
#trainable_variables
Mmetrics

Nlayers
\Z
VARIABLE_VALUEdense_299/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_299/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
­
'regularization_losses
Olayer_metrics
Player_regularization_losses
(	variables
Qnon_trainable_variables
)trainable_variables
Rmetrics

Slayers
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
 

T0
U1
*
0
1
2
3
4
5
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
	Vtotal
	Wcount
X	variables
Y	keras_api
D
	Ztotal
	[count
\
_fn_kwargs
]	variables
^	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

V0
W1

X	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Z0
[1

]	variables
~
VARIABLE_VALUENadam/dense_297/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_297/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_298/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_298/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_299/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_299/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_297/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_297/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_298/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_298/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~
VARIABLE_VALUENadam/dense_299/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_299/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

 serving_default_dropout_99_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
¯
StatefulPartitionedCallStatefulPartitionedCall serving_default_dropout_99_inputdense_297/kerneldense_297/biasdense_298/kerneldense_298/biasdense_299/kerneldense_299/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 */
f*R(
&__inference_signature_wrapper_23568008
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
û

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_297/kernel/Read/ReadVariableOp"dense_297/bias/Read/ReadVariableOp$dense_298/kernel/Read/ReadVariableOp"dense_298/bias/Read/ReadVariableOp$dense_299/kernel/Read/ReadVariableOp"dense_299/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Nadam/dense_297/kernel/m/Read/ReadVariableOp*Nadam/dense_297/bias/m/Read/ReadVariableOp,Nadam/dense_298/kernel/m/Read/ReadVariableOp*Nadam/dense_298/bias/m/Read/ReadVariableOp,Nadam/dense_299/kernel/m/Read/ReadVariableOp*Nadam/dense_299/bias/m/Read/ReadVariableOp,Nadam/dense_297/kernel/v/Read/ReadVariableOp*Nadam/dense_297/bias/v/Read/ReadVariableOp,Nadam/dense_298/kernel/v/Read/ReadVariableOp*Nadam/dense_298/bias/v/Read/ReadVariableOp,Nadam/dense_299/kernel/v/Read/ReadVariableOp*Nadam/dense_299/bias/v/Read/ReadVariableOpConst*)
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
GPU 2J 8 **
f%R#
!__inference__traced_save_23568310
Æ
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_297/kerneldense_297/biasdense_298/kerneldense_298/biasdense_299/kerneldense_299/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcounttotal_1count_1Nadam/dense_297/kernel/mNadam/dense_297/bias/mNadam/dense_298/kernel/mNadam/dense_298/bias/mNadam/dense_299/kernel/mNadam/dense_299/bias/mNadam/dense_297/kernel/vNadam/dense_297/bias/vNadam/dense_298/kernel/vNadam/dense_298/bias/vNadam/dense_299/kernel/vNadam/dense_299/bias/v*(
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
GPU 2J 8 *-
f(R&
$__inference__traced_restore_23568404ßÞ
ã
c
G__inference_re_lu_199_layer_call_and_return_conditional_losses_23567767

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
È
I
-__inference_dropout_99_layer_call_fn_23568104

inputs
identityÇ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_99_layer_call_and_return_conditional_losses_235677212
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
f
H__inference_dropout_99_layer_call_and_return_conditional_losses_23567721

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù
f
H__inference_dropout_99_layer_call_and_return_conditional_losses_23568114

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Æ
H
,__inference_re_lu_199_layer_call_fn_23568179

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_199_layer_call_and_return_conditional_losses_235677672
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Ó

K__inference_sequential_99_layer_call_and_return_conditional_losses_23568067

inputs<
(dense_297_matmul_readvariableop_resource:
ú8
)dense_297_biasadd_readvariableop_resource:	ú<
(dense_298_matmul_readvariableop_resource:
úú8
)dense_298_biasadd_readvariableop_resource:	ú;
(dense_299_matmul_readvariableop_resource:	ú
7
)dense_299_biasadd_readvariableop_resource:

identity¢ dense_297/BiasAdd/ReadVariableOp¢dense_297/MatMul/ReadVariableOp¢ dense_298/BiasAdd/ReadVariableOp¢dense_298/MatMul/ReadVariableOp¢ dense_299/BiasAdd/ReadVariableOp¢dense_299/MatMul/ReadVariableOpq
dropout_99/IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_99/Identity­
dense_297/MatMul/ReadVariableOpReadVariableOp(dense_297_matmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02!
dense_297/MatMul/ReadVariableOp¨
dense_297/MatMulMatMuldropout_99/Identity:output:0'dense_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_297/MatMul«
 dense_297/BiasAdd/ReadVariableOpReadVariableOp)dense_297_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_297/BiasAdd/ReadVariableOpª
dense_297/BiasAddBiasAdddense_297/MatMul:product:0(dense_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_297/BiasAddw
re_lu_198/ReluReludense_297/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_198/Relu­
dense_298/MatMul/ReadVariableOpReadVariableOp(dense_298_matmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02!
dense_298/MatMul/ReadVariableOp¨
dense_298/MatMulMatMulre_lu_198/Relu:activations:0'dense_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_298/MatMul«
 dense_298/BiasAdd/ReadVariableOpReadVariableOp)dense_298_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_298/BiasAdd/ReadVariableOpª
dense_298/BiasAddBiasAdddense_298/MatMul:product:0(dense_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_298/BiasAddw
re_lu_199/ReluReludense_298/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_199/Relu¬
dense_299/MatMul/ReadVariableOpReadVariableOp(dense_299_matmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02!
dense_299/MatMul/ReadVariableOp§
dense_299/MatMulMatMulre_lu_199/Relu:activations:0'dense_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_299/MatMulª
 dense_299/BiasAdd/ReadVariableOpReadVariableOp)dense_299_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_299/BiasAdd/ReadVariableOp©
dense_299/BiasAddBiasAdddense_299/MatMul:product:0(dense_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_299/BiasAdd½
IdentityIdentitydense_299/BiasAdd:output:0!^dense_297/BiasAdd/ReadVariableOp ^dense_297/MatMul/ReadVariableOp!^dense_298/BiasAdd/ReadVariableOp ^dense_298/MatMul/ReadVariableOp!^dense_299/BiasAdd/ReadVariableOp ^dense_299/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 dense_297/BiasAdd/ReadVariableOp dense_297/BiasAdd/ReadVariableOp2B
dense_297/MatMul/ReadVariableOpdense_297/MatMul/ReadVariableOp2D
 dense_298/BiasAdd/ReadVariableOp dense_298/BiasAdd/ReadVariableOp2B
dense_298/MatMul/ReadVariableOpdense_298/MatMul/ReadVariableOp2D
 dense_299/BiasAdd/ReadVariableOp dense_299/BiasAdd/ReadVariableOp2B
dense_299/MatMul/ReadVariableOpdense_299/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ	
û
G__inference_dense_297_layer_call_and_return_conditional_losses_23568145

inputs2
matmul_readvariableop_resource:
ú.
biasadd_readvariableop_resource:	ú
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø

0__inference_sequential_99_layer_call_fn_23567939
dropout_99_input
unknown:
ú
	unknown_0:	ú
	unknown_1:
úú
	unknown_2:	ú
	unknown_3:	ú

	unknown_4:

identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCalldropout_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_99_layer_call_and_return_conditional_losses_235679072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_99_input
Ô
f
-__inference_dropout_99_layer_call_fn_23568109

inputs
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_99_layer_call_and_return_conditional_losses_235678632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
c
G__inference_re_lu_199_layer_call_and_return_conditional_losses_23568184

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
¨

,__inference_dense_297_layer_call_fn_23568135

inputs
unknown:
ú
	unknown_0:	ú
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_297_layer_call_and_return_conditional_losses_235677332
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«y
ö
$__inference__traced_restore_23568404
file_prefix5
!assignvariableop_dense_297_kernel:
ú0
!assignvariableop_1_dense_297_bias:	ú7
#assignvariableop_2_dense_298_kernel:
úú0
!assignvariableop_3_dense_298_bias:	ú6
#assignvariableop_4_dense_299_kernel:	ú
/
!assignvariableop_5_dense_299_bias:
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
,assignvariableop_16_nadam_dense_297_kernel_m:
ú9
*assignvariableop_17_nadam_dense_297_bias_m:	ú@
,assignvariableop_18_nadam_dense_298_kernel_m:
úú9
*assignvariableop_19_nadam_dense_298_bias_m:	ú?
,assignvariableop_20_nadam_dense_299_kernel_m:	ú
8
*assignvariableop_21_nadam_dense_299_bias_m:
@
,assignvariableop_22_nadam_dense_297_kernel_v:
ú9
*assignvariableop_23_nadam_dense_297_bias_v:	ú@
,assignvariableop_24_nadam_dense_298_kernel_v:
úú9
*assignvariableop_25_nadam_dense_298_bias_v:	ú?
,assignvariableop_26_nadam_dense_299_kernel_v:	ú
8
*assignvariableop_27_nadam_dense_299_bias_v:

identity_29¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Ç
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ó
valueÉBÆB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÈ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices½
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_297_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_297_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_298_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_298_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_299_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_299_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6¢
AssignVariableOp_6AssignVariableOpassignvariableop_6_nadam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¤
AssignVariableOp_7AssignVariableOpassignvariableop_7_nadam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¤
AssignVariableOp_8AssignVariableOpassignvariableop_8_nadam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9£
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¯
AssignVariableOp_10AssignVariableOp'assignvariableop_10_nadam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11°
AssignVariableOp_11AssignVariableOp(assignvariableop_11_nadam_momentum_cacheIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13¡
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15£
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16´
AssignVariableOp_16AssignVariableOp,assignvariableop_16_nadam_dense_297_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17²
AssignVariableOp_17AssignVariableOp*assignvariableop_17_nadam_dense_297_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18´
AssignVariableOp_18AssignVariableOp,assignvariableop_18_nadam_dense_298_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19²
AssignVariableOp_19AssignVariableOp*assignvariableop_19_nadam_dense_298_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20´
AssignVariableOp_20AssignVariableOp,assignvariableop_20_nadam_dense_299_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21²
AssignVariableOp_21AssignVariableOp*assignvariableop_21_nadam_dense_299_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22´
AssignVariableOp_22AssignVariableOp,assignvariableop_22_nadam_dense_297_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23²
AssignVariableOp_23AssignVariableOp*assignvariableop_23_nadam_dense_297_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24´
AssignVariableOp_24AssignVariableOp,assignvariableop_24_nadam_dense_298_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25²
AssignVariableOp_25AssignVariableOp*assignvariableop_25_nadam_dense_298_bias_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26´
AssignVariableOp_26AssignVariableOp,assignvariableop_26_nadam_dense_299_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27²
AssignVariableOp_27AssignVariableOp*assignvariableop_27_nadam_dense_299_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_279
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpÆ
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_28¹
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
×	
ù
G__inference_dense_299_layer_call_and_return_conditional_losses_23567779

inputs1
matmul_readvariableop_resource:	ú
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
 
Ú
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567907

inputs&
dense_297_23567889:
ú!
dense_297_23567891:	ú&
dense_298_23567895:
úú!
dense_298_23567897:	ú%
dense_299_23567901:	ú
 
dense_299_23567903:

identity¢!dense_297/StatefulPartitionedCall¢!dense_298/StatefulPartitionedCall¢!dense_299/StatefulPartitionedCall¢"dropout_99/StatefulPartitionedCallõ
"dropout_99/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_99_layer_call_and_return_conditional_losses_235678632$
"dropout_99/StatefulPartitionedCallÅ
!dense_297/StatefulPartitionedCallStatefulPartitionedCall+dropout_99/StatefulPartitionedCall:output:0dense_297_23567889dense_297_23567891*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_297_layer_call_and_return_conditional_losses_235677332#
!dense_297/StatefulPartitionedCallþ
re_lu_198/PartitionedCallPartitionedCall*dense_297/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_198_layer_call_and_return_conditional_losses_235677442
re_lu_198/PartitionedCall¼
!dense_298/StatefulPartitionedCallStatefulPartitionedCall"re_lu_198/PartitionedCall:output:0dense_298_23567895dense_298_23567897*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_298_layer_call_and_return_conditional_losses_235677562#
!dense_298/StatefulPartitionedCallþ
re_lu_199/PartitionedCallPartitionedCall*dense_298/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_199_layer_call_and_return_conditional_losses_235677672
re_lu_199/PartitionedCall»
!dense_299/StatefulPartitionedCallStatefulPartitionedCall"re_lu_199/PartitionedCall:output:0dense_299_23567901dense_299_23567903*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_299_layer_call_and_return_conditional_losses_235677792#
!dense_299/StatefulPartitionedCall
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0"^dense_297/StatefulPartitionedCall"^dense_298/StatefulPartitionedCall"^dense_299/StatefulPartitionedCall#^dropout_99/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_297/StatefulPartitionedCall!dense_297/StatefulPartitionedCall2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall2H
"dropout_99/StatefulPartitionedCall"dropout_99/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
g
H__inference_dropout_99_layer_call_and_return_conditional_losses_23567863

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
)

K__inference_sequential_99_layer_call_and_return_conditional_losses_23568099

inputs<
(dense_297_matmul_readvariableop_resource:
ú8
)dense_297_biasadd_readvariableop_resource:	ú<
(dense_298_matmul_readvariableop_resource:
úú8
)dense_298_biasadd_readvariableop_resource:	ú;
(dense_299_matmul_readvariableop_resource:	ú
7
)dense_299_biasadd_readvariableop_resource:

identity¢ dense_297/BiasAdd/ReadVariableOp¢dense_297/MatMul/ReadVariableOp¢ dense_298/BiasAdd/ReadVariableOp¢dense_298/MatMul/ReadVariableOp¢ dense_299/BiasAdd/ReadVariableOp¢dense_299/MatMul/ReadVariableOpy
dropout_99/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_99/dropout/Const
dropout_99/dropout/MulMulinputs!dropout_99/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_99/dropout/Mulj
dropout_99/dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout_99/dropout/ShapeÖ
/dropout_99/dropout/random_uniform/RandomUniformRandomUniform!dropout_99/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_99/dropout/random_uniform/RandomUniform
!dropout_99/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_99/dropout/GreaterEqual/yë
dropout_99/dropout/GreaterEqualGreaterEqual8dropout_99/dropout/random_uniform/RandomUniform:output:0*dropout_99/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_99/dropout/GreaterEqual¡
dropout_99/dropout/CastCast#dropout_99/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_99/dropout/Cast§
dropout_99/dropout/Mul_1Muldropout_99/dropout/Mul:z:0dropout_99/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_99/dropout/Mul_1­
dense_297/MatMul/ReadVariableOpReadVariableOp(dense_297_matmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02!
dense_297/MatMul/ReadVariableOp¨
dense_297/MatMulMatMuldropout_99/dropout/Mul_1:z:0'dense_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_297/MatMul«
 dense_297/BiasAdd/ReadVariableOpReadVariableOp)dense_297_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_297/BiasAdd/ReadVariableOpª
dense_297/BiasAddBiasAdddense_297/MatMul:product:0(dense_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_297/BiasAddw
re_lu_198/ReluReludense_297/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_198/Relu­
dense_298/MatMul/ReadVariableOpReadVariableOp(dense_298_matmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02!
dense_298/MatMul/ReadVariableOp¨
dense_298/MatMulMatMulre_lu_198/Relu:activations:0'dense_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_298/MatMul«
 dense_298/BiasAdd/ReadVariableOpReadVariableOp)dense_298_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_298/BiasAdd/ReadVariableOpª
dense_298/BiasAddBiasAdddense_298/MatMul:product:0(dense_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_298/BiasAddw
re_lu_199/ReluReludense_298/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_199/Relu¬
dense_299/MatMul/ReadVariableOpReadVariableOp(dense_299_matmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02!
dense_299/MatMul/ReadVariableOp§
dense_299/MatMulMatMulre_lu_199/Relu:activations:0'dense_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_299/MatMulª
 dense_299/BiasAdd/ReadVariableOpReadVariableOp)dense_299_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_299/BiasAdd/ReadVariableOp©
dense_299/BiasAddBiasAdddense_299/MatMul:product:0(dense_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_299/BiasAdd½
IdentityIdentitydense_299/BiasAdd:output:0!^dense_297/BiasAdd/ReadVariableOp ^dense_297/MatMul/ReadVariableOp!^dense_298/BiasAdd/ReadVariableOp ^dense_298/MatMul/ReadVariableOp!^dense_299/BiasAdd/ReadVariableOp ^dense_299/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 dense_297/BiasAdd/ReadVariableOp dense_297/BiasAdd/ReadVariableOp2B
dense_297/MatMul/ReadVariableOpdense_297/MatMul/ReadVariableOp2D
 dense_298/BiasAdd/ReadVariableOp dense_298/BiasAdd/ReadVariableOp2B
dense_298/MatMul/ReadVariableOpdense_298/MatMul/ReadVariableOp2D
 dense_299/BiasAdd/ReadVariableOp dense_299/BiasAdd/ReadVariableOp2B
dense_299/MatMul/ReadVariableOpdense_299/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¿
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567961
dropout_99_input&
dense_297_23567943:
ú!
dense_297_23567945:	ú&
dense_298_23567949:
úú!
dense_298_23567951:	ú%
dense_299_23567955:	ú
 
dense_299_23567957:

identity¢!dense_297/StatefulPartitionedCall¢!dense_298/StatefulPartitionedCall¢!dense_299/StatefulPartitionedCallç
dropout_99/PartitionedCallPartitionedCalldropout_99_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_99_layer_call_and_return_conditional_losses_235677212
dropout_99/PartitionedCall½
!dense_297/StatefulPartitionedCallStatefulPartitionedCall#dropout_99/PartitionedCall:output:0dense_297_23567943dense_297_23567945*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_297_layer_call_and_return_conditional_losses_235677332#
!dense_297/StatefulPartitionedCallþ
re_lu_198/PartitionedCallPartitionedCall*dense_297/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_198_layer_call_and_return_conditional_losses_235677442
re_lu_198/PartitionedCall¼
!dense_298/StatefulPartitionedCallStatefulPartitionedCall"re_lu_198/PartitionedCall:output:0dense_298_23567949dense_298_23567951*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_298_layer_call_and_return_conditional_losses_235677562#
!dense_298/StatefulPartitionedCallþ
re_lu_199/PartitionedCallPartitionedCall*dense_298/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_199_layer_call_and_return_conditional_losses_235677672
re_lu_199/PartitionedCall»
!dense_299/StatefulPartitionedCallStatefulPartitionedCall"re_lu_199/PartitionedCall:output:0dense_299_23567955dense_299_23567957*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_299_layer_call_and_return_conditional_losses_235677792#
!dense_299/StatefulPartitionedCallê
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0"^dense_297/StatefulPartitionedCall"^dense_298/StatefulPartitionedCall"^dense_299/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_297/StatefulPartitionedCall!dense_297/StatefulPartitionedCall2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_99_input
¾
ä
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567983
dropout_99_input&
dense_297_23567965:
ú!
dense_297_23567967:	ú&
dense_298_23567971:
úú!
dense_298_23567973:	ú%
dense_299_23567977:	ú
 
dense_299_23567979:

identity¢!dense_297/StatefulPartitionedCall¢!dense_298/StatefulPartitionedCall¢!dense_299/StatefulPartitionedCall¢"dropout_99/StatefulPartitionedCallÿ
"dropout_99/StatefulPartitionedCallStatefulPartitionedCalldropout_99_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_99_layer_call_and_return_conditional_losses_235678632$
"dropout_99/StatefulPartitionedCallÅ
!dense_297/StatefulPartitionedCallStatefulPartitionedCall+dropout_99/StatefulPartitionedCall:output:0dense_297_23567965dense_297_23567967*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_297_layer_call_and_return_conditional_losses_235677332#
!dense_297/StatefulPartitionedCallþ
re_lu_198/PartitionedCallPartitionedCall*dense_297/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_198_layer_call_and_return_conditional_losses_235677442
re_lu_198/PartitionedCall¼
!dense_298/StatefulPartitionedCallStatefulPartitionedCall"re_lu_198/PartitionedCall:output:0dense_298_23567971dense_298_23567973*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_298_layer_call_and_return_conditional_losses_235677562#
!dense_298/StatefulPartitionedCallþ
re_lu_199/PartitionedCallPartitionedCall*dense_298/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_199_layer_call_and_return_conditional_losses_235677672
re_lu_199/PartitionedCall»
!dense_299/StatefulPartitionedCallStatefulPartitionedCall"re_lu_199/PartitionedCall:output:0dense_299_23567977dense_299_23567979*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_299_layer_call_and_return_conditional_losses_235677792#
!dense_299/StatefulPartitionedCall
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0"^dense_297/StatefulPartitionedCall"^dense_298/StatefulPartitionedCall"^dense_299/StatefulPartitionedCall#^dropout_99/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_297/StatefulPartitionedCall!dense_297/StatefulPartitionedCall2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall2H
"dropout_99/StatefulPartitionedCall"dropout_99/StatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_99_input
Æ

&__inference_signature_wrapper_23568008
dropout_99_input
unknown:
ú
	unknown_0:	ú
	unknown_1:
úú
	unknown_2:	ú
	unknown_3:	ú

	unknown_4:

identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalldropout_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference__wrapped_model_235677092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_99_input
¨

,__inference_dense_298_layer_call_fn_23568164

inputs
unknown:
úú
	unknown_0:	ú
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_298_layer_call_and_return_conditional_losses_235677562
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Þ	
û
G__inference_dense_298_layer_call_and_return_conditional_losses_23567756

inputs2
matmul_readvariableop_resource:
úú.
biasadd_readvariableop_resource:	ú
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
ì
µ
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567786

inputs&
dense_297_23567734:
ú!
dense_297_23567736:	ú&
dense_298_23567757:
úú!
dense_298_23567759:	ú%
dense_299_23567780:	ú
 
dense_299_23567782:

identity¢!dense_297/StatefulPartitionedCall¢!dense_298/StatefulPartitionedCall¢!dense_299/StatefulPartitionedCallÝ
dropout_99/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_dropout_99_layer_call_and_return_conditional_losses_235677212
dropout_99/PartitionedCall½
!dense_297/StatefulPartitionedCallStatefulPartitionedCall#dropout_99/PartitionedCall:output:0dense_297_23567734dense_297_23567736*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_297_layer_call_and_return_conditional_losses_235677332#
!dense_297/StatefulPartitionedCallþ
re_lu_198/PartitionedCallPartitionedCall*dense_297/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_198_layer_call_and_return_conditional_losses_235677442
re_lu_198/PartitionedCall¼
!dense_298/StatefulPartitionedCallStatefulPartitionedCall"re_lu_198/PartitionedCall:output:0dense_298_23567757dense_298_23567759*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_298_layer_call_and_return_conditional_losses_235677562#
!dense_298/StatefulPartitionedCallþ
re_lu_199/PartitionedCallPartitionedCall*dense_298/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_199_layer_call_and_return_conditional_losses_235677672
re_lu_199/PartitionedCall»
!dense_299/StatefulPartitionedCallStatefulPartitionedCall"re_lu_199/PartitionedCall:output:0dense_299_23567780dense_299_23567782*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_299_layer_call_and_return_conditional_losses_235677792#
!dense_299/StatefulPartitionedCallê
IdentityIdentity*dense_299/StatefulPartitionedCall:output:0"^dense_297/StatefulPartitionedCall"^dense_298/StatefulPartitionedCall"^dense_299/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_297/StatefulPartitionedCall!dense_297/StatefulPartitionedCall2F
!dense_298/StatefulPartitionedCall!dense_298/StatefulPartitionedCall2F
!dense_299/StatefulPartitionedCall!dense_299/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤

,__inference_dense_299_layer_call_fn_23568193

inputs
unknown:	ú

	unknown_0:

identity¢StatefulPartitionedCall÷
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dense_299_layer_call_and_return_conditional_losses_235677792
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Ú

0__inference_sequential_99_layer_call_fn_23568042

inputs
unknown:
ú
	unknown_0:	ú
	unknown_1:
úú
	unknown_2:	ú
	unknown_3:	ú

	unknown_4:

identity¢StatefulPartitionedCall¯
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_99_layer_call_and_return_conditional_losses_235679072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ	
û
G__inference_dense_297_layer_call_and_return_conditional_losses_23567733

inputs2
matmul_readvariableop_resource:
ú.
biasadd_readvariableop_resource:	ú
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
c
G__inference_re_lu_198_layer_call_and_return_conditional_losses_23567744

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
º(
©
#__inference__wrapped_model_23567709
dropout_99_inputJ
6sequential_99_dense_297_matmul_readvariableop_resource:
úF
7sequential_99_dense_297_biasadd_readvariableop_resource:	úJ
6sequential_99_dense_298_matmul_readvariableop_resource:
úúF
7sequential_99_dense_298_biasadd_readvariableop_resource:	úI
6sequential_99_dense_299_matmul_readvariableop_resource:	ú
E
7sequential_99_dense_299_biasadd_readvariableop_resource:

identity¢.sequential_99/dense_297/BiasAdd/ReadVariableOp¢-sequential_99/dense_297/MatMul/ReadVariableOp¢.sequential_99/dense_298/BiasAdd/ReadVariableOp¢-sequential_99/dense_298/MatMul/ReadVariableOp¢.sequential_99/dense_299/BiasAdd/ReadVariableOp¢-sequential_99/dense_299/MatMul/ReadVariableOp
!sequential_99/dropout_99/IdentityIdentitydropout_99_input*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_99/dropout_99/Identity×
-sequential_99/dense_297/MatMul/ReadVariableOpReadVariableOp6sequential_99_dense_297_matmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02/
-sequential_99/dense_297/MatMul/ReadVariableOpà
sequential_99/dense_297/MatMulMatMul*sequential_99/dropout_99/Identity:output:05sequential_99/dense_297/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
sequential_99/dense_297/MatMulÕ
.sequential_99/dense_297/BiasAdd/ReadVariableOpReadVariableOp7sequential_99_dense_297_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype020
.sequential_99/dense_297/BiasAdd/ReadVariableOpâ
sequential_99/dense_297/BiasAddBiasAdd(sequential_99/dense_297/MatMul:product:06sequential_99/dense_297/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
sequential_99/dense_297/BiasAdd¡
sequential_99/re_lu_198/ReluRelu(sequential_99/dense_297/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_99/re_lu_198/Relu×
-sequential_99/dense_298/MatMul/ReadVariableOpReadVariableOp6sequential_99_dense_298_matmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02/
-sequential_99/dense_298/MatMul/ReadVariableOpà
sequential_99/dense_298/MatMulMatMul*sequential_99/re_lu_198/Relu:activations:05sequential_99/dense_298/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
sequential_99/dense_298/MatMulÕ
.sequential_99/dense_298/BiasAdd/ReadVariableOpReadVariableOp7sequential_99_dense_298_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype020
.sequential_99/dense_298/BiasAdd/ReadVariableOpâ
sequential_99/dense_298/BiasAddBiasAdd(sequential_99/dense_298/MatMul:product:06sequential_99/dense_298/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
sequential_99/dense_298/BiasAdd¡
sequential_99/re_lu_199/ReluRelu(sequential_99/dense_298/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_99/re_lu_199/ReluÖ
-sequential_99/dense_299/MatMul/ReadVariableOpReadVariableOp6sequential_99_dense_299_matmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02/
-sequential_99/dense_299/MatMul/ReadVariableOpß
sequential_99/dense_299/MatMulMatMul*sequential_99/re_lu_199/Relu:activations:05sequential_99/dense_299/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
sequential_99/dense_299/MatMulÔ
.sequential_99/dense_299/BiasAdd/ReadVariableOpReadVariableOp7sequential_99_dense_299_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_99/dense_299/BiasAdd/ReadVariableOpá
sequential_99/dense_299/BiasAddBiasAdd(sequential_99/dense_299/MatMul:product:06sequential_99/dense_299/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
sequential_99/dense_299/BiasAdd
IdentityIdentity(sequential_99/dense_299/BiasAdd:output:0/^sequential_99/dense_297/BiasAdd/ReadVariableOp.^sequential_99/dense_297/MatMul/ReadVariableOp/^sequential_99/dense_298/BiasAdd/ReadVariableOp.^sequential_99/dense_298/MatMul/ReadVariableOp/^sequential_99/dense_299/BiasAdd/ReadVariableOp.^sequential_99/dense_299/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2`
.sequential_99/dense_297/BiasAdd/ReadVariableOp.sequential_99/dense_297/BiasAdd/ReadVariableOp2^
-sequential_99/dense_297/MatMul/ReadVariableOp-sequential_99/dense_297/MatMul/ReadVariableOp2`
.sequential_99/dense_298/BiasAdd/ReadVariableOp.sequential_99/dense_298/BiasAdd/ReadVariableOp2^
-sequential_99/dense_298/MatMul/ReadVariableOp-sequential_99/dense_298/MatMul/ReadVariableOp2`
.sequential_99/dense_299/BiasAdd/ReadVariableOp.sequential_99/dense_299/BiasAdd/ReadVariableOp2^
-sequential_99/dense_299/MatMul/ReadVariableOp-sequential_99/dense_299/MatMul/ReadVariableOp:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_99_input
×	
ù
G__inference_dense_299_layer_call_and_return_conditional_losses_23568203

inputs1
matmul_readvariableop_resource:	ú
-
biasadd_readvariableop_resource:

identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Æ
H
,__inference_re_lu_198_layer_call_fn_23568150

inputs
identityÆ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_re_lu_198_layer_call_and_return_conditional_losses_235677442
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Þ	
û
G__inference_dense_298_layer_call_and_return_conditional_losses_23568174

inputs2
matmul_readvariableop_resource:
úú.
biasadd_readvariableop_resource:	ú
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿú: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
ø

0__inference_sequential_99_layer_call_fn_23567801
dropout_99_input
unknown:
ú
	unknown_0:	ú
	unknown_1:
úú
	unknown_2:	ú
	unknown_3:	ú

	unknown_4:

identity¢StatefulPartitionedCall¹
StatefulPartitionedCallStatefulPartitionedCalldropout_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_99_layer_call_and_return_conditional_losses_235677862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_99_input
Ú

0__inference_sequential_99_layer_call_fn_23568025

inputs
unknown:
ú
	unknown_0:	ú
	unknown_1:
úú
	unknown_2:	ú
	unknown_3:	ú

	unknown_4:

identity¢StatefulPartitionedCall¯
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_sequential_99_layer_call_and_return_conditional_losses_235677862
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·
g
H__inference_dropout_99_layer_call_and_return_conditional_losses_23568126

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
c
G__inference_re_lu_198_layer_call_and_return_conditional_losses_23568155

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
Relug
IdentityIdentityRelu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿú:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú
 
_user_specified_nameinputs
Ð?
ä
!__inference__traced_save_23568310
file_prefix/
+savev2_dense_297_kernel_read_readvariableop-
)savev2_dense_297_bias_read_readvariableop/
+savev2_dense_298_kernel_read_readvariableop-
)savev2_dense_298_bias_read_readvariableop/
+savev2_dense_299_kernel_read_readvariableop-
)savev2_dense_299_bias_read_readvariableop)
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
3savev2_nadam_dense_297_kernel_m_read_readvariableop5
1savev2_nadam_dense_297_bias_m_read_readvariableop7
3savev2_nadam_dense_298_kernel_m_read_readvariableop5
1savev2_nadam_dense_298_bias_m_read_readvariableop7
3savev2_nadam_dense_299_kernel_m_read_readvariableop5
1savev2_nadam_dense_299_bias_m_read_readvariableop7
3savev2_nadam_dense_297_kernel_v_read_readvariableop5
1savev2_nadam_dense_297_bias_v_read_readvariableop7
3savev2_nadam_dense_298_kernel_v_read_readvariableop5
1savev2_nadam_dense_298_bias_v_read_readvariableop7
3savev2_nadam_dense_299_kernel_v_read_readvariableop5
1savev2_nadam_dense_299_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
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
Const_1
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
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameÁ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ó
valueÉBÆB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÂ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÜ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_297_kernel_read_readvariableop)savev2_dense_297_bias_read_readvariableop+savev2_dense_298_kernel_read_readvariableop)savev2_dense_298_bias_read_readvariableop+savev2_dense_299_kernel_read_readvariableop)savev2_dense_299_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_nadam_dense_297_kernel_m_read_readvariableop1savev2_nadam_dense_297_bias_m_read_readvariableop3savev2_nadam_dense_298_kernel_m_read_readvariableop1savev2_nadam_dense_298_bias_m_read_readvariableop3savev2_nadam_dense_299_kernel_m_read_readvariableop1savev2_nadam_dense_299_bias_m_read_readvariableop3savev2_nadam_dense_297_kernel_v_read_readvariableop1savev2_nadam_dense_297_bias_v_read_readvariableop3savev2_nadam_dense_298_kernel_v_read_readvariableop1savev2_nadam_dense_298_bias_v_read_readvariableop3savev2_nadam_dense_299_kernel_v_read_readvariableop1savev2_nadam_dense_299_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *+
dtypes!
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
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

identity_1Identity_1:output:0*Ò
_input_shapesÀ
½: :
ú:ú:
úú:ú:	ú
:
: : : : : : : : : : :
ú:ú:
úú:ú:	ú
:
:
ú:ú:
úú:ú:	ú
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
ú:!

_output_shapes	
:ú:&"
 
_output_shapes
:
úú:!

_output_shapes	
:ú:%!

_output_shapes
:	ú
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
ú:!

_output_shapes	
:ú:&"
 
_output_shapes
:
úú:!

_output_shapes	
:ú:%!

_output_shapes
:	ú
: 

_output_shapes
:
:&"
 
_output_shapes
:
ú:!

_output_shapes	
:ú:&"
 
_output_shapes
:
úú:!

_output_shapes	
:ú:%!

_output_shapes
:	ú
: 

_output_shapes
:
:

_output_shapes
: "ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
N
dropout_99_input:
"serving_default_dropout_99_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_2990
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:úÄ
õ-
layer-0
layer_with_weights-0
layer-1
layer-2
layer_with_weights-1
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
regularization_losses
		variables

trainable_variables
	keras_api

signatures
k__call__
*l&call_and_return_all_conditional_losses
m_default_save_signature"+
_tf_keras_sequentialï*{"name": "sequential_99", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_99", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_99_input"}}, {"class_name": "Dropout", "config": {"name": "dropout_99", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_297", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_198", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_298", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_199", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_299", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 13, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dropout_99_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_99", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_99_input"}, "shared_object_id": 0}, {"class_name": "Dropout", "config": {"name": "dropout_99", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_297", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "ReLU", "config": {"name": "re_lu_198", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_298", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "ReLU", "config": {"name": "re_lu_199", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_299", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}]}}, "training_config": {"loss": "softmax_cross_entropy_with_logits_v2", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Nadam", "config": {"name": "Nadam", "learning_rate": 0.0010000000474974513, "decay": 0.004, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
ó
regularization_losses
	variables
trainable_variables
	keras_api
n__call__
*o&call_and_return_all_conditional_losses"ä
_tf_keras_layerÊ{"name": "dropout_99", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_99", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 1}
Ö

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
p__call__
*q&call_and_return_all_conditional_losses"±
_tf_keras_layer{"name": "dense_297", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_297", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}

regularization_losses
	variables
trainable_variables
	keras_api
r__call__
*s&call_and_return_all_conditional_losses"÷
_tf_keras_layerÝ{"name": "re_lu_198", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_198", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}
Ö

kernel
bias
regularization_losses
	variables
trainable_variables
 	keras_api
t__call__
*u&call_and_return_all_conditional_losses"±
_tf_keras_layer{"name": "dense_298", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_298", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}

!regularization_losses
"	variables
#trainable_variables
$	keras_api
v__call__
*w&call_and_return_all_conditional_losses"÷
_tf_keras_layerÝ{"name": "re_lu_199", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_199", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}
Ø

%kernel
&bias
'regularization_losses
(	variables
)trainable_variables
*	keras_api
x__call__
*y&call_and_return_all_conditional_losses"³
_tf_keras_layer{"name": "dense_299", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_299", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
Ó
+iter

,beta_1

-beta_2
	.decay
/learning_rate
0momentum_cachem_m`mamb%mc&mdvevfvgvh%vi&vj"
	optimizer
 "
trackable_list_wrapper
J
0
1
2
3
%4
&5"
trackable_list_wrapper
J
0
1
2
3
%4
&5"
trackable_list_wrapper
Ê
regularization_losses
1layer_metrics
2layer_regularization_losses
		variables
3non_trainable_variables

trainable_variables
4metrics

5layers
k__call__
m_default_save_signature
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
,
zserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
regularization_losses
6layer_metrics
7layer_regularization_losses
	variables
8non_trainable_variables
trainable_variables
9metrics

:layers
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
$:"
ú2dense_297/kernel
:ú2dense_297/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
;layer_metrics
<layer_regularization_losses
	variables
=non_trainable_variables
trainable_variables
>metrics

?layers
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
regularization_losses
@layer_metrics
Alayer_regularization_losses
	variables
Bnon_trainable_variables
trainable_variables
Cmetrics

Dlayers
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
$:"
úú2dense_298/kernel
:ú2dense_298/bias
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
regularization_losses
Elayer_metrics
Flayer_regularization_losses
	variables
Gnon_trainable_variables
trainable_variables
Hmetrics

Ilayers
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
!regularization_losses
Jlayer_metrics
Klayer_regularization_losses
"	variables
Lnon_trainable_variables
#trainable_variables
Mmetrics

Nlayers
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
#:!	ú
2dense_299/kernel
:
2dense_299/bias
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
­
'regularization_losses
Olayer_metrics
Player_regularization_losses
(	variables
Qnon_trainable_variables
)trainable_variables
Rmetrics

Slayers
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
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
 "
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
J
0
1
2
3
4
5"
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
Ô
	Vtotal
	Wcount
X	variables
Y	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}

	Ztotal
	[count
\
_fn_kwargs
]	variables
^	keras_api"Ð
_tf_keras_metricµ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}
:  (2total
:  (2count
.
V0
W1"
trackable_list_wrapper
-
X	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Z0
[1"
trackable_list_wrapper
-
]	variables"
_generic_user_object
*:(
ú2Nadam/dense_297/kernel/m
#:!ú2Nadam/dense_297/bias/m
*:(
úú2Nadam/dense_298/kernel/m
#:!ú2Nadam/dense_298/bias/m
):'	ú
2Nadam/dense_299/kernel/m
": 
2Nadam/dense_299/bias/m
*:(
ú2Nadam/dense_297/kernel/v
#:!ú2Nadam/dense_297/bias/v
*:(
úú2Nadam/dense_298/kernel/v
#:!ú2Nadam/dense_298/bias/v
):'	ú
2Nadam/dense_299/kernel/v
": 
2Nadam/dense_299/bias/v
2
0__inference_sequential_99_layer_call_fn_23567801
0__inference_sequential_99_layer_call_fn_23568025
0__inference_sequential_99_layer_call_fn_23568042
0__inference_sequential_99_layer_call_fn_23567939À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ú2÷
K__inference_sequential_99_layer_call_and_return_conditional_losses_23568067
K__inference_sequential_99_layer_call_and_return_conditional_losses_23568099
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567961
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567983À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
#__inference__wrapped_model_23567709À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
dropout_99_inputÿÿÿÿÿÿÿÿÿ
2
-__inference_dropout_99_layer_call_fn_23568104
-__inference_dropout_99_layer_call_fn_23568109´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
H__inference_dropout_99_layer_call_and_return_conditional_losses_23568114
H__inference_dropout_99_layer_call_and_return_conditional_losses_23568126´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
,__inference_dense_297_layer_call_fn_23568135¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_dense_297_layer_call_and_return_conditional_losses_23568145¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_re_lu_198_layer_call_fn_23568150¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_re_lu_198_layer_call_and_return_conditional_losses_23568155¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_dense_298_layer_call_fn_23568164¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_dense_298_layer_call_and_return_conditional_losses_23568174¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_re_lu_199_layer_call_fn_23568179¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_re_lu_199_layer_call_and_return_conditional_losses_23568184¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_dense_299_layer_call_fn_23568193¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_dense_299_layer_call_and_return_conditional_losses_23568203¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÖBÓ
&__inference_signature_wrapper_23568008dropout_99_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ¢
#__inference__wrapped_model_23567709{%&:¢7
0¢-
+(
dropout_99_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_299# 
	dense_299ÿÿÿÿÿÿÿÿÿ
©
G__inference_dense_297_layer_call_and_return_conditional_losses_23568145^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 
,__inference_dense_297_layer_call_fn_23568135Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿú©
G__inference_dense_298_layer_call_and_return_conditional_losses_23568174^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 
,__inference_dense_298_layer_call_fn_23568164Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿú¨
G__inference_dense_299_layer_call_and_return_conditional_losses_23568203]%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
,__inference_dense_299_layer_call_fn_23568193P%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿ
ª
H__inference_dropout_99_layer_call_and_return_conditional_losses_23568114^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ª
H__inference_dropout_99_layer_call_and_return_conditional_losses_23568126^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_99_layer_call_fn_23568104Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_99_layer_call_fn_23568109Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¥
G__inference_re_lu_198_layer_call_and_return_conditional_losses_23568155Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 }
,__inference_re_lu_198_layer_call_fn_23568150M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿú¥
G__inference_re_lu_199_layer_call_and_return_conditional_losses_23568184Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 }
,__inference_re_lu_199_layer_call_fn_23568179M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿúÂ
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567961s%&B¢?
8¢5
+(
dropout_99_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Â
K__inference_sequential_99_layer_call_and_return_conditional_losses_23567983s%&B¢?
8¢5
+(
dropout_99_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¸
K__inference_sequential_99_layer_call_and_return_conditional_losses_23568067i%&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¸
K__inference_sequential_99_layer_call_and_return_conditional_losses_23568099i%&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
0__inference_sequential_99_layer_call_fn_23567801f%&B¢?
8¢5
+(
dropout_99_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_99_layer_call_fn_23567939f%&B¢?
8¢5
+(
dropout_99_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_99_layer_call_fn_23568025\%&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_99_layer_call_fn_23568042\%&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
º
&__inference_signature_wrapper_23568008%&N¢K
¢ 
DªA
?
dropout_99_input+(
dropout_99_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_299# 
	dense_299ÿÿÿÿÿÿÿÿÿ
