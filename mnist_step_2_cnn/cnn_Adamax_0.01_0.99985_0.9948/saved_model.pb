??

??
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
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
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
conv2d_130/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_130/kernel

%conv2d_130/kernel/Read/ReadVariableOpReadVariableOpconv2d_130/kernel*&
_output_shapes
: *
dtype0
v
conv2d_130/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_130/bias
o
#conv2d_130/bias/Read/ReadVariableOpReadVariableOpconv2d_130/bias*
_output_shapes
: *
dtype0
?
conv2d_131/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*"
shared_nameconv2d_131/kernel

%conv2d_131/kernel/Read/ReadVariableOpReadVariableOpconv2d_131/kernel*&
_output_shapes
: 0*
dtype0
v
conv2d_131/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_131/bias
o
#conv2d_131/bias/Read/ReadVariableOpReadVariableOpconv2d_131/bias*
_output_shapes
:0*
dtype0
~
dense_130/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_130/kernel
w
$dense_130/kernel/Read/ReadVariableOpReadVariableOpdense_130/kernel* 
_output_shapes
:
??*
dtype0
u
dense_130/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_130/bias
n
"dense_130/bias/Read/ReadVariableOpReadVariableOpdense_130/bias*
_output_shapes	
:?*
dtype0
}
dense_131/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_131/kernel
v
$dense_131/kernel/Read/ReadVariableOpReadVariableOpdense_131/kernel*
_output_shapes
:	?
*
dtype0
t
dense_131/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_131/bias
m
"dense_131/bias/Read/ReadVariableOpReadVariableOpdense_131/bias*
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
Adamax/conv2d_130/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdamax/conv2d_130/kernel/m
?
.Adamax/conv2d_130/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_130/kernel/m*&
_output_shapes
: *
dtype0
?
Adamax/conv2d_130/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdamax/conv2d_130/bias/m
?
,Adamax/conv2d_130/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_130/bias/m*
_output_shapes
: *
dtype0
?
Adamax/conv2d_131/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*+
shared_nameAdamax/conv2d_131/kernel/m
?
.Adamax/conv2d_131/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_131/kernel/m*&
_output_shapes
: 0*
dtype0
?
Adamax/conv2d_131/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdamax/conv2d_131/bias/m
?
,Adamax/conv2d_131/bias/m/Read/ReadVariableOpReadVariableOpAdamax/conv2d_131/bias/m*
_output_shapes
:0*
dtype0
?
Adamax/dense_130/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdamax/dense_130/kernel/m
?
-Adamax/dense_130/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_130/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_130/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/dense_130/bias/m
?
+Adamax/dense_130/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_130/bias/m*
_output_shapes	
:?*
dtype0
?
Adamax/dense_131/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
**
shared_nameAdamax/dense_131/kernel/m
?
-Adamax/dense_131/kernel/m/Read/ReadVariableOpReadVariableOpAdamax/dense_131/kernel/m*
_output_shapes
:	?
*
dtype0
?
Adamax/dense_131/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdamax/dense_131/bias/m

+Adamax/dense_131/bias/m/Read/ReadVariableOpReadVariableOpAdamax/dense_131/bias/m*
_output_shapes
:
*
dtype0
?
Adamax/conv2d_130/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameAdamax/conv2d_130/kernel/v
?
.Adamax/conv2d_130/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_130/kernel/v*&
_output_shapes
: *
dtype0
?
Adamax/conv2d_130/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdamax/conv2d_130/bias/v
?
,Adamax/conv2d_130/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_130/bias/v*
_output_shapes
: *
dtype0
?
Adamax/conv2d_131/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*+
shared_nameAdamax/conv2d_131/kernel/v
?
.Adamax/conv2d_131/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_131/kernel/v*&
_output_shapes
: 0*
dtype0
?
Adamax/conv2d_131/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*)
shared_nameAdamax/conv2d_131/bias/v
?
,Adamax/conv2d_131/bias/v/Read/ReadVariableOpReadVariableOpAdamax/conv2d_131/bias/v*
_output_shapes
:0*
dtype0
?
Adamax/dense_130/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_nameAdamax/dense_130/kernel/v
?
-Adamax/dense_130/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_130/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adamax/dense_130/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_nameAdamax/dense_130/bias/v
?
+Adamax/dense_130/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_130/bias/v*
_output_shapes	
:?*
dtype0
?
Adamax/dense_131/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
**
shared_nameAdamax/dense_131/kernel/v
?
-Adamax/dense_131/kernel/v/Read/ReadVariableOpReadVariableOpAdamax/dense_131/kernel/v*
_output_shapes
:	?
*
dtype0
?
Adamax/dense_131/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*(
shared_nameAdamax/dense_131/bias/v

+Adamax/dense_131/bias/v/Read/ReadVariableOpReadVariableOpAdamax/dense_131/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?9
value?9B?9 B?9
?
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
trainable_variables
regularization_losses
	variables
	keras_api
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
R
 trainable_variables
!regularization_losses
"	variables
#	keras_api
R
$trainable_variables
%regularization_losses
&	variables
'	keras_api
R
(trainable_variables
)regularization_losses
*	variables
+	keras_api
h

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
R
2trainable_variables
3regularization_losses
4	variables
5	keras_api
h

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratem~mm?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?
8
0
1
2
3
,4
-5
66
77
 
8
0
1
2
3
,4
-5
66
77
?

Alayers
Bnon_trainable_variables
Cmetrics
trainable_variables
Dlayer_metrics
regularization_losses
Elayer_regularization_losses
	variables
 
][
VARIABLE_VALUEconv2d_130/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_130/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Flayers
Gnon_trainable_variables
Hmetrics
trainable_variables
Ilayer_metrics
regularization_losses
Jlayer_regularization_losses
	variables
 
 
 
?

Klayers
Lnon_trainable_variables
Mmetrics
trainable_variables
Nlayer_metrics
regularization_losses
Olayer_regularization_losses
	variables
][
VARIABLE_VALUEconv2d_131/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_131/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Players
Qnon_trainable_variables
Rmetrics
trainable_variables
Slayer_metrics
regularization_losses
Tlayer_regularization_losses
	variables
 
 
 
?

Ulayers
Vnon_trainable_variables
Wmetrics
 trainable_variables
Xlayer_metrics
!regularization_losses
Ylayer_regularization_losses
"	variables
 
 
 
?

Zlayers
[non_trainable_variables
\metrics
$trainable_variables
]layer_metrics
%regularization_losses
^layer_regularization_losses
&	variables
 
 
 
?

_layers
`non_trainable_variables
ametrics
(trainable_variables
blayer_metrics
)regularization_losses
clayer_regularization_losses
*	variables
\Z
VARIABLE_VALUEdense_130/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_130/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
?

dlayers
enon_trainable_variables
fmetrics
.trainable_variables
glayer_metrics
/regularization_losses
hlayer_regularization_losses
0	variables
 
 
 
?

ilayers
jnon_trainable_variables
kmetrics
2trainable_variables
llayer_metrics
3regularization_losses
mlayer_regularization_losses
4	variables
\Z
VARIABLE_VALUEdense_131/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_131/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?

nlayers
onon_trainable_variables
pmetrics
8trainable_variables
qlayer_metrics
9regularization_losses
rlayer_regularization_losses
:	variables
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
?
0
1
2
3
4
5
6
7
	8
 

s0
t1
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
	utotal
	vcount
w	variables
x	keras_api
D
	ytotal
	zcount
{
_fn_kwargs
|	variables
}	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

u0
v1

w	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

y0
z1

|	variables
??
VARIABLE_VALUEAdamax/conv2d_130/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdamax/conv2d_130/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdamax/conv2d_131/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdamax/conv2d_131/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_130/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_130/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_131/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_131/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdamax/conv2d_130/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdamax/conv2d_130/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdamax/conv2d_131/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdamax/conv2d_131/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_130/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_130/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdamax/dense_131/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdamax/dense_131/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_130_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_130_inputconv2d_130/kernelconv2d_130/biasconv2d_131/kernelconv2d_131/biasdense_130/kerneldense_130/biasdense_131/kerneldense_131/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_1465471
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_130/kernel/Read/ReadVariableOp#conv2d_130/bias/Read/ReadVariableOp%conv2d_131/kernel/Read/ReadVariableOp#conv2d_131/bias/Read/ReadVariableOp$dense_130/kernel/Read/ReadVariableOp"dense_130/bias/Read/ReadVariableOp$dense_131/kernel/Read/ReadVariableOp"dense_131/bias/Read/ReadVariableOpAdamax/iter/Read/ReadVariableOp!Adamax/beta_1/Read/ReadVariableOp!Adamax/beta_2/Read/ReadVariableOp Adamax/decay/Read/ReadVariableOp(Adamax/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp.Adamax/conv2d_130/kernel/m/Read/ReadVariableOp,Adamax/conv2d_130/bias/m/Read/ReadVariableOp.Adamax/conv2d_131/kernel/m/Read/ReadVariableOp,Adamax/conv2d_131/bias/m/Read/ReadVariableOp-Adamax/dense_130/kernel/m/Read/ReadVariableOp+Adamax/dense_130/bias/m/Read/ReadVariableOp-Adamax/dense_131/kernel/m/Read/ReadVariableOp+Adamax/dense_131/bias/m/Read/ReadVariableOp.Adamax/conv2d_130/kernel/v/Read/ReadVariableOp,Adamax/conv2d_130/bias/v/Read/ReadVariableOp.Adamax/conv2d_131/kernel/v/Read/ReadVariableOp,Adamax/conv2d_131/bias/v/Read/ReadVariableOp-Adamax/dense_130/kernel/v/Read/ReadVariableOp+Adamax/dense_130/bias/v/Read/ReadVariableOp-Adamax/dense_131/kernel/v/Read/ReadVariableOp+Adamax/dense_131/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
GPU 2J 8? *)
f$R"
 __inference__traced_save_1465870
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_130/kernelconv2d_130/biasconv2d_131/kernelconv2d_131/biasdense_130/kerneldense_130/biasdense_131/kerneldense_131/biasAdamax/iterAdamax/beta_1Adamax/beta_2Adamax/decayAdamax/learning_ratetotalcounttotal_1count_1Adamax/conv2d_130/kernel/mAdamax/conv2d_130/bias/mAdamax/conv2d_131/kernel/mAdamax/conv2d_131/bias/mAdamax/dense_130/kernel/mAdamax/dense_130/bias/mAdamax/dense_131/kernel/mAdamax/dense_131/bias/mAdamax/conv2d_130/kernel/vAdamax/conv2d_130/bias/vAdamax/conv2d_131/kernel/vAdamax/conv2d_131/bias/vAdamax/dense_130/kernel/vAdamax/dense_130/bias/vAdamax/dense_131/kernel/vAdamax/dense_131/bias/v*-
Tin&
$2"*
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
GPU 2J 8? *,
f'R%
#__inference__traced_restore_1465979??
?

?
F__inference_dense_130_layer_call_and_return_conditional_losses_1465150

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_1465063

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
H
,__inference_flatten_65_layer_call_fn_1465675

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_65_layer_call_and_return_conditional_losses_14651372
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?	
?
/__inference_sequential_65_layer_call_fn_1465492

inputs!
unknown: 
	unknown_0: #
	unknown_1: 0
	unknown_2:0
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?

	unknown_6:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_65_layer_call_and_return_conditional_losses_14651812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
-__inference_dropout_130_layer_call_fn_1465653

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_130_layer_call_and_return_conditional_losses_14652692
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????022
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?+
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465442
conv2d_130_input,
conv2d_130_1465416:  
conv2d_130_1465418: ,
conv2d_131_1465422: 0 
conv2d_131_1465424:0%
dense_130_1465430:
?? 
dense_130_1465432:	?$
dense_131_1465436:	?

dense_131_1465438:

identity??"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?!dense_130/StatefulPartitionedCall?!dense_131/StatefulPartitionedCall?#dropout_130/StatefulPartitionedCall?#dropout_131/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputconv2d_130_1465416conv2d_130_1465418*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_130_layer_call_and_return_conditional_losses_14650992$
"conv2d_130/StatefulPartitionedCall?
!max_pooling2d_130/PartitionedCallPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_14650632#
!max_pooling2d_130/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_130/PartitionedCall:output:0conv2d_131_1465422conv2d_131_1465424*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_131_layer_call_and_return_conditional_losses_14651172$
"conv2d_131/StatefulPartitionedCall?
!max_pooling2d_131/PartitionedCallPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_14650752#
!max_pooling2d_131/PartitionedCall?
#dropout_130/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_131/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_130_layer_call_and_return_conditional_losses_14652692%
#dropout_130/StatefulPartitionedCall?
flatten_65/PartitionedCallPartitionedCall,dropout_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_65_layer_call_and_return_conditional_losses_14651372
flatten_65/PartitionedCall?
!dense_130/StatefulPartitionedCallStatefulPartitionedCall#flatten_65/PartitionedCall:output:0dense_130_1465430dense_130_1465432*
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
GPU 2J 8? *O
fJRH
F__inference_dense_130_layer_call_and_return_conditional_losses_14651502#
!dense_130/StatefulPartitionedCall?
#dropout_131/StatefulPartitionedCallStatefulPartitionedCall*dense_130/StatefulPartitionedCall:output:0$^dropout_130/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_131_layer_call_and_return_conditional_losses_14652302%
#dropout_131/StatefulPartitionedCall?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall,dropout_131/StatefulPartitionedCall:output:0dense_131_1465436dense_131_1465438*
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
GPU 2J 8? *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14651742#
!dense_131/StatefulPartitionedCall?
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall"^dense_130/StatefulPartitionedCall"^dense_131/StatefulPartitionedCall$^dropout_130/StatefulPartitionedCall$^dropout_131/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2F
!dense_130/StatefulPartitionedCall!dense_130/StatefulPartitionedCall2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2J
#dropout_130/StatefulPartitionedCall#dropout_130/StatefulPartitionedCall2J
#dropout_131/StatefulPartitionedCall#dropout_131/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_130_input
?
c
G__inference_flatten_65_layer_call_and_return_conditional_losses_1465681

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
F__inference_dense_131_layer_call_and_return_conditional_losses_1465174

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
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
+__inference_dense_130_layer_call_fn_1465690

inputs
unknown:
??
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
GPU 2J 8? *O
fJRH
F__inference_dense_130_layer_call_and_return_conditional_losses_14651502
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465230

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_1465075

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?+
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465344

inputs,
conv2d_130_1465318:  
conv2d_130_1465320: ,
conv2d_131_1465324: 0 
conv2d_131_1465326:0%
dense_130_1465332:
?? 
dense_130_1465334:	?$
dense_131_1465338:	?

dense_131_1465340:

identity??"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?!dense_130/StatefulPartitionedCall?!dense_131/StatefulPartitionedCall?#dropout_130/StatefulPartitionedCall?#dropout_131/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_130_1465318conv2d_130_1465320*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_130_layer_call_and_return_conditional_losses_14650992$
"conv2d_130/StatefulPartitionedCall?
!max_pooling2d_130/PartitionedCallPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_14650632#
!max_pooling2d_130/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_130/PartitionedCall:output:0conv2d_131_1465324conv2d_131_1465326*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_131_layer_call_and_return_conditional_losses_14651172$
"conv2d_131/StatefulPartitionedCall?
!max_pooling2d_131/PartitionedCallPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_14650752#
!max_pooling2d_131/PartitionedCall?
#dropout_130/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_131/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_130_layer_call_and_return_conditional_losses_14652692%
#dropout_130/StatefulPartitionedCall?
flatten_65/PartitionedCallPartitionedCall,dropout_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_65_layer_call_and_return_conditional_losses_14651372
flatten_65/PartitionedCall?
!dense_130/StatefulPartitionedCallStatefulPartitionedCall#flatten_65/PartitionedCall:output:0dense_130_1465332dense_130_1465334*
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
GPU 2J 8? *O
fJRH
F__inference_dense_130_layer_call_and_return_conditional_losses_14651502#
!dense_130/StatefulPartitionedCall?
#dropout_131/StatefulPartitionedCallStatefulPartitionedCall*dense_130/StatefulPartitionedCall:output:0$^dropout_130/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_131_layer_call_and_return_conditional_losses_14652302%
#dropout_131/StatefulPartitionedCall?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall,dropout_131/StatefulPartitionedCall:output:0dense_131_1465338dense_131_1465340*
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
GPU 2J 8? *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14651742#
!dense_131/StatefulPartitionedCall?
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall"^dense_130/StatefulPartitionedCall"^dense_131/StatefulPartitionedCall$^dropout_130/StatefulPartitionedCall$^dropout_131/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2F
!dense_130/StatefulPartitionedCall!dense_130/StatefulPartitionedCall2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall2J
#dropout_130/StatefulPartitionedCall#dropout_130/StatefulPartitionedCall2J
#dropout_131/StatefulPartitionedCall#dropout_131/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
%__inference_signature_wrapper_1465471
conv2d_130_input!
unknown: 
	unknown_0: #
	unknown_1: 0
	unknown_2:0
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?

	unknown_6:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_14650572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_130_input
?
?
,__inference_conv2d_131_layer_call_fn_1465632

inputs!
unknown: 0
	unknown_0:0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_131_layer_call_and_return_conditional_losses_14651172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_130_layer_call_fn_1465069

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_14650632
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?I
?
 __inference__traced_save_1465870
file_prefix0
,savev2_conv2d_130_kernel_read_readvariableop.
*savev2_conv2d_130_bias_read_readvariableop0
,savev2_conv2d_131_kernel_read_readvariableop.
*savev2_conv2d_131_bias_read_readvariableop/
+savev2_dense_130_kernel_read_readvariableop-
)savev2_dense_130_bias_read_readvariableop/
+savev2_dense_131_kernel_read_readvariableop-
)savev2_dense_131_bias_read_readvariableop*
&savev2_adamax_iter_read_readvariableop	,
(savev2_adamax_beta_1_read_readvariableop,
(savev2_adamax_beta_2_read_readvariableop+
'savev2_adamax_decay_read_readvariableop3
/savev2_adamax_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop9
5savev2_adamax_conv2d_130_kernel_m_read_readvariableop7
3savev2_adamax_conv2d_130_bias_m_read_readvariableop9
5savev2_adamax_conv2d_131_kernel_m_read_readvariableop7
3savev2_adamax_conv2d_131_bias_m_read_readvariableop8
4savev2_adamax_dense_130_kernel_m_read_readvariableop6
2savev2_adamax_dense_130_bias_m_read_readvariableop8
4savev2_adamax_dense_131_kernel_m_read_readvariableop6
2savev2_adamax_dense_131_bias_m_read_readvariableop9
5savev2_adamax_conv2d_130_kernel_v_read_readvariableop7
3savev2_adamax_conv2d_130_bias_v_read_readvariableop9
5savev2_adamax_conv2d_131_kernel_v_read_readvariableop7
3savev2_adamax_conv2d_131_bias_v_read_readvariableop8
4savev2_adamax_dense_130_kernel_v_read_readvariableop6
2savev2_adamax_dense_130_bias_v_read_readvariableop8
4savev2_adamax_dense_131_kernel_v_read_readvariableop6
2savev2_adamax_dense_131_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_130_kernel_read_readvariableop*savev2_conv2d_130_bias_read_readvariableop,savev2_conv2d_131_kernel_read_readvariableop*savev2_conv2d_131_bias_read_readvariableop+savev2_dense_130_kernel_read_readvariableop)savev2_dense_130_bias_read_readvariableop+savev2_dense_131_kernel_read_readvariableop)savev2_dense_131_bias_read_readvariableop&savev2_adamax_iter_read_readvariableop(savev2_adamax_beta_1_read_readvariableop(savev2_adamax_beta_2_read_readvariableop'savev2_adamax_decay_read_readvariableop/savev2_adamax_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop5savev2_adamax_conv2d_130_kernel_m_read_readvariableop3savev2_adamax_conv2d_130_bias_m_read_readvariableop5savev2_adamax_conv2d_131_kernel_m_read_readvariableop3savev2_adamax_conv2d_131_bias_m_read_readvariableop4savev2_adamax_dense_130_kernel_m_read_readvariableop2savev2_adamax_dense_130_bias_m_read_readvariableop4savev2_adamax_dense_131_kernel_m_read_readvariableop2savev2_adamax_dense_131_bias_m_read_readvariableop5savev2_adamax_conv2d_130_kernel_v_read_readvariableop3savev2_adamax_conv2d_130_bias_v_read_readvariableop5savev2_adamax_conv2d_131_kernel_v_read_readvariableop3savev2_adamax_conv2d_131_bias_v_read_readvariableop4savev2_adamax_dense_130_kernel_v_read_readvariableop2savev2_adamax_dense_130_bias_v_read_readvariableop4savev2_adamax_dense_131_kernel_v_read_readvariableop2savev2_adamax_dense_131_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
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

identity_1Identity_1:output:0*?
_input_shapes?
?: : : : 0:0:
??:?:	?
:
: : : : : : : : : : : : 0:0:
??:?:	?
:
: : : 0:0:
??:?:	?
:
: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:	
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
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:% !

_output_shapes
:	?
: !

_output_shapes
:
:"

_output_shapes
: 
?
g
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465670

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
G__inference_conv2d_130_layer_call_and_return_conditional_losses_1465099

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_dropout_131_layer_call_fn_1465706

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_131_layer_call_and_return_conditional_losses_14651612
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
O
3__inference_max_pooling2d_131_layer_call_fn_1465081

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_14650752
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
+__inference_dense_131_layer_call_fn_1465737

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
GPU 2J 8? *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14651742
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
?
f
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465161

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
I
-__inference_dropout_130_layer_call_fn_1465648

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_130_layer_call_and_return_conditional_losses_14651292
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?F
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465603

inputsC
)conv2d_130_conv2d_readvariableop_resource: 8
*conv2d_130_biasadd_readvariableop_resource: C
)conv2d_131_conv2d_readvariableop_resource: 08
*conv2d_131_biasadd_readvariableop_resource:0<
(dense_130_matmul_readvariableop_resource:
??8
)dense_130_biasadd_readvariableop_resource:	?;
(dense_131_matmul_readvariableop_resource:	?
7
)dense_131_biasadd_readvariableop_resource:

identity??!conv2d_130/BiasAdd/ReadVariableOp? conv2d_130/Conv2D/ReadVariableOp?!conv2d_131/BiasAdd/ReadVariableOp? conv2d_131/Conv2D/ReadVariableOp? dense_130/BiasAdd/ReadVariableOp?dense_130/MatMul/ReadVariableOp? dense_131/BiasAdd/ReadVariableOp?dense_131/MatMul/ReadVariableOp?
 conv2d_130/Conv2D/ReadVariableOpReadVariableOp)conv2d_130_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_130/Conv2D/ReadVariableOp?
conv2d_130/Conv2DConv2Dinputs(conv2d_130/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_130/Conv2D?
!conv2d_130/BiasAdd/ReadVariableOpReadVariableOp*conv2d_130_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_130/BiasAdd/ReadVariableOp?
conv2d_130/BiasAddBiasAddconv2d_130/Conv2D:output:0)conv2d_130/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_130/BiasAdd?
conv2d_130/ReluReluconv2d_130/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_130/Relu?
max_pooling2d_130/MaxPoolMaxPoolconv2d_130/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_130/MaxPool?
 conv2d_131/Conv2D/ReadVariableOpReadVariableOp)conv2d_131_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_131/Conv2D/ReadVariableOp?
conv2d_131/Conv2DConv2D"max_pooling2d_130/MaxPool:output:0(conv2d_131/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_131/Conv2D?
!conv2d_131/BiasAdd/ReadVariableOpReadVariableOp*conv2d_131_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_131/BiasAdd/ReadVariableOp?
conv2d_131/BiasAddBiasAddconv2d_131/Conv2D:output:0)conv2d_131/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_131/BiasAdd?
conv2d_131/ReluReluconv2d_131/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_131/Relu?
max_pooling2d_131/MaxPoolMaxPoolconv2d_131/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_131/MaxPool{
dropout_130/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_130/dropout/Const?
dropout_130/dropout/MulMul"max_pooling2d_131/MaxPool:output:0"dropout_130/dropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout_130/dropout/Mul?
dropout_130/dropout/ShapeShape"max_pooling2d_131/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_130/dropout/Shape?
0dropout_130/dropout/random_uniform/RandomUniformRandomUniform"dropout_130/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype022
0dropout_130/dropout/random_uniform/RandomUniform?
"dropout_130/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_130/dropout/GreaterEqual/y?
 dropout_130/dropout/GreaterEqualGreaterEqual9dropout_130/dropout/random_uniform/RandomUniform:output:0+dropout_130/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02"
 dropout_130/dropout/GreaterEqual?
dropout_130/dropout/CastCast$dropout_130/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout_130/dropout/Cast?
dropout_130/dropout/Mul_1Muldropout_130/dropout/Mul:z:0dropout_130/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout_130/dropout/Mul_1u
flatten_65/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_65/Const?
flatten_65/ReshapeReshapedropout_130/dropout/Mul_1:z:0flatten_65/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_65/Reshape?
dense_130/MatMul/ReadVariableOpReadVariableOp(dense_130_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_130/MatMul/ReadVariableOp?
dense_130/MatMulMatMulflatten_65/Reshape:output:0'dense_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_130/MatMul?
 dense_130/BiasAdd/ReadVariableOpReadVariableOp)dense_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_130/BiasAdd/ReadVariableOp?
dense_130/BiasAddBiasAdddense_130/MatMul:product:0(dense_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_130/BiasAddw
dense_130/ReluReludense_130/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_130/Relu{
dropout_131/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_131/dropout/Const?
dropout_131/dropout/MulMuldense_130/Relu:activations:0"dropout_131/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_131/dropout/Mul?
dropout_131/dropout/ShapeShapedense_130/Relu:activations:0*
T0*
_output_shapes
:2
dropout_131/dropout/Shape?
0dropout_131/dropout/random_uniform/RandomUniformRandomUniform"dropout_131/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_131/dropout/random_uniform/RandomUniform?
"dropout_131/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"dropout_131/dropout/GreaterEqual/y?
 dropout_131/dropout/GreaterEqualGreaterEqual9dropout_131/dropout/random_uniform/RandomUniform:output:0+dropout_131/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_131/dropout/GreaterEqual?
dropout_131/dropout/CastCast$dropout_131/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_131/dropout/Cast?
dropout_131/dropout/Mul_1Muldropout_131/dropout/Mul:z:0dropout_131/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_131/dropout/Mul_1?
dense_131/MatMul/ReadVariableOpReadVariableOp(dense_131_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_131/MatMul/ReadVariableOp?
dense_131/MatMulMatMuldropout_131/dropout/Mul_1:z:0'dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_131/MatMul?
 dense_131/BiasAdd/ReadVariableOpReadVariableOp)dense_131_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_131/BiasAdd/ReadVariableOp?
dense_131/BiasAddBiasAdddense_131/MatMul:product:0(dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_131/BiasAdd
dense_131/SoftmaxSoftmaxdense_131/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_131/Softmax?
IdentityIdentitydense_131/Softmax:softmax:0"^conv2d_130/BiasAdd/ReadVariableOp!^conv2d_130/Conv2D/ReadVariableOp"^conv2d_131/BiasAdd/ReadVariableOp!^conv2d_131/Conv2D/ReadVariableOp!^dense_130/BiasAdd/ReadVariableOp ^dense_130/MatMul/ReadVariableOp!^dense_131/BiasAdd/ReadVariableOp ^dense_131/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_130/BiasAdd/ReadVariableOp!conv2d_130/BiasAdd/ReadVariableOp2D
 conv2d_130/Conv2D/ReadVariableOp conv2d_130/Conv2D/ReadVariableOp2F
!conv2d_131/BiasAdd/ReadVariableOp!conv2d_131/BiasAdd/ReadVariableOp2D
 conv2d_131/Conv2D/ReadVariableOp conv2d_131/Conv2D/ReadVariableOp2D
 dense_130/BiasAdd/ReadVariableOp dense_130/BiasAdd/ReadVariableOp2B
dense_130/MatMul/ReadVariableOpdense_130/MatMul/ReadVariableOp2D
 dense_131/BiasAdd/ReadVariableOp dense_131/BiasAdd/ReadVariableOp2B
dense_131/MatMul/ReadVariableOpdense_131/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465728

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?(
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465181

inputs,
conv2d_130_1465100:  
conv2d_130_1465102: ,
conv2d_131_1465118: 0 
conv2d_131_1465120:0%
dense_130_1465151:
?? 
dense_130_1465153:	?$
dense_131_1465175:	?

dense_131_1465177:

identity??"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?!dense_130/StatefulPartitionedCall?!dense_131/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_130_1465100conv2d_130_1465102*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_130_layer_call_and_return_conditional_losses_14650992$
"conv2d_130/StatefulPartitionedCall?
!max_pooling2d_130/PartitionedCallPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_14650632#
!max_pooling2d_130/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_130/PartitionedCall:output:0conv2d_131_1465118conv2d_131_1465120*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_131_layer_call_and_return_conditional_losses_14651172$
"conv2d_131/StatefulPartitionedCall?
!max_pooling2d_131/PartitionedCallPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_14650752#
!max_pooling2d_131/PartitionedCall?
dropout_130/PartitionedCallPartitionedCall*max_pooling2d_131/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_130_layer_call_and_return_conditional_losses_14651292
dropout_130/PartitionedCall?
flatten_65/PartitionedCallPartitionedCall$dropout_130/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_65_layer_call_and_return_conditional_losses_14651372
flatten_65/PartitionedCall?
!dense_130/StatefulPartitionedCallStatefulPartitionedCall#flatten_65/PartitionedCall:output:0dense_130_1465151dense_130_1465153*
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
GPU 2J 8? *O
fJRH
F__inference_dense_130_layer_call_and_return_conditional_losses_14651502#
!dense_130/StatefulPartitionedCall?
dropout_131/PartitionedCallPartitionedCall*dense_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_131_layer_call_and_return_conditional_losses_14651612
dropout_131/PartitionedCall?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall$dropout_131/PartitionedCall:output:0dense_131_1465175dense_131_1465177*
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
GPU 2J 8? *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14651742#
!dense_131/StatefulPartitionedCall?
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall"^dense_130/StatefulPartitionedCall"^dense_131/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2F
!dense_130/StatefulPartitionedCall!dense_130/StatefulPartitionedCall2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_131_layer_call_and_return_conditional_losses_1465643

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????02
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
ȏ
?
#__inference__traced_restore_1465979
file_prefix<
"assignvariableop_conv2d_130_kernel: 0
"assignvariableop_1_conv2d_130_bias: >
$assignvariableop_2_conv2d_131_kernel: 00
"assignvariableop_3_conv2d_131_bias:07
#assignvariableop_4_dense_130_kernel:
??0
!assignvariableop_5_dense_130_bias:	?6
#assignvariableop_6_dense_131_kernel:	?
/
!assignvariableop_7_dense_131_bias:
(
assignvariableop_8_adamax_iter:	 *
 assignvariableop_9_adamax_beta_1: +
!assignvariableop_10_adamax_beta_2: *
 assignvariableop_11_adamax_decay: 2
(assignvariableop_12_adamax_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: H
.assignvariableop_17_adamax_conv2d_130_kernel_m: :
,assignvariableop_18_adamax_conv2d_130_bias_m: H
.assignvariableop_19_adamax_conv2d_131_kernel_m: 0:
,assignvariableop_20_adamax_conv2d_131_bias_m:0A
-assignvariableop_21_adamax_dense_130_kernel_m:
??:
+assignvariableop_22_adamax_dense_130_bias_m:	?@
-assignvariableop_23_adamax_dense_131_kernel_m:	?
9
+assignvariableop_24_adamax_dense_131_bias_m:
H
.assignvariableop_25_adamax_conv2d_130_kernel_v: :
,assignvariableop_26_adamax_conv2d_130_bias_v: H
.assignvariableop_27_adamax_conv2d_131_kernel_v: 0:
,assignvariableop_28_adamax_conv2d_131_bias_v:0A
-assignvariableop_29_adamax_dense_130_kernel_v:
??:
+assignvariableop_30_adamax_dense_130_bias_v:	?@
-assignvariableop_31_adamax_dense_131_kernel_v:	?
9
+assignvariableop_32_adamax_dense_131_bias_v:

identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_130_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_130_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_131_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_131_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_130_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_130_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_131_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_131_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_adamax_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp assignvariableop_9_adamax_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp!assignvariableop_10_adamax_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp assignvariableop_11_adamax_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adamax_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp.assignvariableop_17_adamax_conv2d_130_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp,assignvariableop_18_adamax_conv2d_130_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp.assignvariableop_19_adamax_conv2d_131_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp,assignvariableop_20_adamax_conv2d_131_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp-assignvariableop_21_adamax_dense_130_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp+assignvariableop_22_adamax_dense_130_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp-assignvariableop_23_adamax_dense_131_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp+assignvariableop_24_adamax_dense_131_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp.assignvariableop_25_adamax_conv2d_130_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp,assignvariableop_26_adamax_conv2d_130_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adamax_conv2d_131_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adamax_conv2d_131_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp-assignvariableop_29_adamax_dense_130_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp+assignvariableop_30_adamax_dense_130_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp-assignvariableop_31_adamax_dense_131_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp+assignvariableop_32_adamax_dense_131_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_329
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_33?
Identity_34IdentityIdentity_33:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_34"#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
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
?
/__inference_sequential_65_layer_call_fn_1465200
conv2d_130_input!
unknown: 
	unknown_0: #
	unknown_1: 0
	unknown_2:0
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?

	unknown_6:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_65_layer_call_and_return_conditional_losses_14651812
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_130_input
?
?
,__inference_conv2d_130_layer_call_fn_1465612

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_130_layer_call_and_return_conditional_losses_14650992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465129

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????02

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
F__inference_dense_130_layer_call_and_return_conditional_losses_1465701

inputs2
matmul_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??*
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
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465658

inputs

identity_1b
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????02

Identityq

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????02

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?
?
G__inference_conv2d_131_layer_call_and_return_conditional_losses_1465117

inputs8
conv2d_readvariableop_resource: 0-
biasadd_readvariableop_resource:0
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:0*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????02
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:????????? 
 
_user_specified_nameinputs
?(
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465413
conv2d_130_input,
conv2d_130_1465387:  
conv2d_130_1465389: ,
conv2d_131_1465393: 0 
conv2d_131_1465395:0%
dense_130_1465401:
?? 
dense_130_1465403:	?$
dense_131_1465407:	?

dense_131_1465409:

identity??"conv2d_130/StatefulPartitionedCall?"conv2d_131/StatefulPartitionedCall?!dense_130/StatefulPartitionedCall?!dense_131/StatefulPartitionedCall?
"conv2d_130/StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputconv2d_130_1465387conv2d_130_1465389*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_130_layer_call_and_return_conditional_losses_14650992$
"conv2d_130/StatefulPartitionedCall?
!max_pooling2d_130/PartitionedCallPartitionedCall+conv2d_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:????????? * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_14650632#
!max_pooling2d_130/PartitionedCall?
"conv2d_131/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_130/PartitionedCall:output:0conv2d_131_1465393conv2d_131_1465395*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_conv2d_131_layer_call_and_return_conditional_losses_14651172$
"conv2d_131/StatefulPartitionedCall?
!max_pooling2d_131/PartitionedCallPartitionedCall+conv2d_131/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_14650752#
!max_pooling2d_131/PartitionedCall?
dropout_130/PartitionedCallPartitionedCall*max_pooling2d_131/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????0* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_130_layer_call_and_return_conditional_losses_14651292
dropout_130/PartitionedCall?
flatten_65/PartitionedCallPartitionedCall$dropout_130/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_flatten_65_layer_call_and_return_conditional_losses_14651372
flatten_65/PartitionedCall?
!dense_130/StatefulPartitionedCallStatefulPartitionedCall#flatten_65/PartitionedCall:output:0dense_130_1465401dense_130_1465403*
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
GPU 2J 8? *O
fJRH
F__inference_dense_130_layer_call_and_return_conditional_losses_14651502#
!dense_130/StatefulPartitionedCall?
dropout_131/PartitionedCallPartitionedCall*dense_130/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_131_layer_call_and_return_conditional_losses_14651612
dropout_131/PartitionedCall?
!dense_131/StatefulPartitionedCallStatefulPartitionedCall$dropout_131/PartitionedCall:output:0dense_131_1465407dense_131_1465409*
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
GPU 2J 8? *O
fJRH
F__inference_dense_131_layer_call_and_return_conditional_losses_14651742#
!dense_131/StatefulPartitionedCall?
IdentityIdentity*dense_131/StatefulPartitionedCall:output:0#^conv2d_130/StatefulPartitionedCall#^conv2d_131/StatefulPartitionedCall"^dense_130/StatefulPartitionedCall"^dense_131/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_130/StatefulPartitionedCall"conv2d_130/StatefulPartitionedCall2H
"conv2d_131/StatefulPartitionedCall"conv2d_131/StatefulPartitionedCall2F
!dense_130/StatefulPartitionedCall!dense_130/StatefulPartitionedCall2F
!dense_131/StatefulPartitionedCall!dense_131/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_130_input
?
g
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465269

inputs
identity?c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Const{
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout/Cast?
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout/Mul_1m
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????02

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?

?
F__inference_dense_131_layer_call_and_return_conditional_losses_1465748

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
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????
2	
Softmax?
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
?
f
-__inference_dropout_131_layer_call_fn_1465711

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *Q
fLRJ
H__inference_dropout_131_layer_call_and_return_conditional_losses_14652302
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465716

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_65_layer_call_and_return_conditional_losses_1465137

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:??????????2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????0:W S
/
_output_shapes
:?????????0
 
_user_specified_nameinputs
?	
?
/__inference_sequential_65_layer_call_fn_1465513

inputs!
unknown: 
	unknown_0: #
	unknown_1: 0
	unknown_2:0
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?

	unknown_6:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_65_layer_call_and_return_conditional_losses_14653442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?
"__inference__wrapped_model_1465057
conv2d_130_inputQ
7sequential_65_conv2d_130_conv2d_readvariableop_resource: F
8sequential_65_conv2d_130_biasadd_readvariableop_resource: Q
7sequential_65_conv2d_131_conv2d_readvariableop_resource: 0F
8sequential_65_conv2d_131_biasadd_readvariableop_resource:0J
6sequential_65_dense_130_matmul_readvariableop_resource:
??F
7sequential_65_dense_130_biasadd_readvariableop_resource:	?I
6sequential_65_dense_131_matmul_readvariableop_resource:	?
E
7sequential_65_dense_131_biasadd_readvariableop_resource:

identity??/sequential_65/conv2d_130/BiasAdd/ReadVariableOp?.sequential_65/conv2d_130/Conv2D/ReadVariableOp?/sequential_65/conv2d_131/BiasAdd/ReadVariableOp?.sequential_65/conv2d_131/Conv2D/ReadVariableOp?.sequential_65/dense_130/BiasAdd/ReadVariableOp?-sequential_65/dense_130/MatMul/ReadVariableOp?.sequential_65/dense_131/BiasAdd/ReadVariableOp?-sequential_65/dense_131/MatMul/ReadVariableOp?
.sequential_65/conv2d_130/Conv2D/ReadVariableOpReadVariableOp7sequential_65_conv2d_130_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_65/conv2d_130/Conv2D/ReadVariableOp?
sequential_65/conv2d_130/Conv2DConv2Dconv2d_130_input6sequential_65/conv2d_130/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2!
sequential_65/conv2d_130/Conv2D?
/sequential_65/conv2d_130/BiasAdd/ReadVariableOpReadVariableOp8sequential_65_conv2d_130_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_65/conv2d_130/BiasAdd/ReadVariableOp?
 sequential_65/conv2d_130/BiasAddBiasAdd(sequential_65/conv2d_130/Conv2D:output:07sequential_65/conv2d_130/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2"
 sequential_65/conv2d_130/BiasAdd?
sequential_65/conv2d_130/ReluRelu)sequential_65/conv2d_130/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_65/conv2d_130/Relu?
'sequential_65/max_pooling2d_130/MaxPoolMaxPool+sequential_65/conv2d_130/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2)
'sequential_65/max_pooling2d_130/MaxPool?
.sequential_65/conv2d_131/Conv2D/ReadVariableOpReadVariableOp7sequential_65_conv2d_131_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype020
.sequential_65/conv2d_131/Conv2D/ReadVariableOp?
sequential_65/conv2d_131/Conv2DConv2D0sequential_65/max_pooling2d_130/MaxPool:output:06sequential_65/conv2d_131/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2!
sequential_65/conv2d_131/Conv2D?
/sequential_65/conv2d_131/BiasAdd/ReadVariableOpReadVariableOp8sequential_65_conv2d_131_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype021
/sequential_65/conv2d_131/BiasAdd/ReadVariableOp?
 sequential_65/conv2d_131/BiasAddBiasAdd(sequential_65/conv2d_131/Conv2D:output:07sequential_65/conv2d_131/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02"
 sequential_65/conv2d_131/BiasAdd?
sequential_65/conv2d_131/ReluRelu)sequential_65/conv2d_131/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
sequential_65/conv2d_131/Relu?
'sequential_65/max_pooling2d_131/MaxPoolMaxPool+sequential_65/conv2d_131/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2)
'sequential_65/max_pooling2d_131/MaxPool?
"sequential_65/dropout_130/IdentityIdentity0sequential_65/max_pooling2d_131/MaxPool:output:0*
T0*/
_output_shapes
:?????????02$
"sequential_65/dropout_130/Identity?
sequential_65/flatten_65/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2 
sequential_65/flatten_65/Const?
 sequential_65/flatten_65/ReshapeReshape+sequential_65/dropout_130/Identity:output:0'sequential_65/flatten_65/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_65/flatten_65/Reshape?
-sequential_65/dense_130/MatMul/ReadVariableOpReadVariableOp6sequential_65_dense_130_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_65/dense_130/MatMul/ReadVariableOp?
sequential_65/dense_130/MatMulMatMul)sequential_65/flatten_65/Reshape:output:05sequential_65/dense_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_65/dense_130/MatMul?
.sequential_65/dense_130/BiasAdd/ReadVariableOpReadVariableOp7sequential_65_dense_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_65/dense_130/BiasAdd/ReadVariableOp?
sequential_65/dense_130/BiasAddBiasAdd(sequential_65/dense_130/MatMul:product:06sequential_65/dense_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_65/dense_130/BiasAdd?
sequential_65/dense_130/ReluRelu(sequential_65/dense_130/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_65/dense_130/Relu?
"sequential_65/dropout_131/IdentityIdentity*sequential_65/dense_130/Relu:activations:0*
T0*(
_output_shapes
:??????????2$
"sequential_65/dropout_131/Identity?
-sequential_65/dense_131/MatMul/ReadVariableOpReadVariableOp6sequential_65_dense_131_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_65/dense_131/MatMul/ReadVariableOp?
sequential_65/dense_131/MatMulMatMul+sequential_65/dropout_131/Identity:output:05sequential_65/dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_65/dense_131/MatMul?
.sequential_65/dense_131/BiasAdd/ReadVariableOpReadVariableOp7sequential_65_dense_131_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_65/dense_131/BiasAdd/ReadVariableOp?
sequential_65/dense_131/BiasAddBiasAdd(sequential_65/dense_131/MatMul:product:06sequential_65/dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_65/dense_131/BiasAdd?
sequential_65/dense_131/SoftmaxSoftmax(sequential_65/dense_131/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2!
sequential_65/dense_131/Softmax?
IdentityIdentity)sequential_65/dense_131/Softmax:softmax:00^sequential_65/conv2d_130/BiasAdd/ReadVariableOp/^sequential_65/conv2d_130/Conv2D/ReadVariableOp0^sequential_65/conv2d_131/BiasAdd/ReadVariableOp/^sequential_65/conv2d_131/Conv2D/ReadVariableOp/^sequential_65/dense_130/BiasAdd/ReadVariableOp.^sequential_65/dense_130/MatMul/ReadVariableOp/^sequential_65/dense_131/BiasAdd/ReadVariableOp.^sequential_65/dense_131/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2b
/sequential_65/conv2d_130/BiasAdd/ReadVariableOp/sequential_65/conv2d_130/BiasAdd/ReadVariableOp2`
.sequential_65/conv2d_130/Conv2D/ReadVariableOp.sequential_65/conv2d_130/Conv2D/ReadVariableOp2b
/sequential_65/conv2d_131/BiasAdd/ReadVariableOp/sequential_65/conv2d_131/BiasAdd/ReadVariableOp2`
.sequential_65/conv2d_131/Conv2D/ReadVariableOp.sequential_65/conv2d_131/Conv2D/ReadVariableOp2`
.sequential_65/dense_130/BiasAdd/ReadVariableOp.sequential_65/dense_130/BiasAdd/ReadVariableOp2^
-sequential_65/dense_130/MatMul/ReadVariableOp-sequential_65/dense_130/MatMul/ReadVariableOp2`
.sequential_65/dense_131/BiasAdd/ReadVariableOp.sequential_65/dense_131/BiasAdd/ReadVariableOp2^
-sequential_65/dense_131/MatMul/ReadVariableOp-sequential_65/dense_131/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_130_input
?2
?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465551

inputsC
)conv2d_130_conv2d_readvariableop_resource: 8
*conv2d_130_biasadd_readvariableop_resource: C
)conv2d_131_conv2d_readvariableop_resource: 08
*conv2d_131_biasadd_readvariableop_resource:0<
(dense_130_matmul_readvariableop_resource:
??8
)dense_130_biasadd_readvariableop_resource:	?;
(dense_131_matmul_readvariableop_resource:	?
7
)dense_131_biasadd_readvariableop_resource:

identity??!conv2d_130/BiasAdd/ReadVariableOp? conv2d_130/Conv2D/ReadVariableOp?!conv2d_131/BiasAdd/ReadVariableOp? conv2d_131/Conv2D/ReadVariableOp? dense_130/BiasAdd/ReadVariableOp?dense_130/MatMul/ReadVariableOp? dense_131/BiasAdd/ReadVariableOp?dense_131/MatMul/ReadVariableOp?
 conv2d_130/Conv2D/ReadVariableOpReadVariableOp)conv2d_130_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_130/Conv2D/ReadVariableOp?
conv2d_130/Conv2DConv2Dinputs(conv2d_130/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_130/Conv2D?
!conv2d_130/BiasAdd/ReadVariableOpReadVariableOp*conv2d_130_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_130/BiasAdd/ReadVariableOp?
conv2d_130/BiasAddBiasAddconv2d_130/Conv2D:output:0)conv2d_130/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_130/BiasAdd?
conv2d_130/ReluReluconv2d_130/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_130/Relu?
max_pooling2d_130/MaxPoolMaxPoolconv2d_130/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_130/MaxPool?
 conv2d_131/Conv2D/ReadVariableOpReadVariableOp)conv2d_131_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_131/Conv2D/ReadVariableOp?
conv2d_131/Conv2DConv2D"max_pooling2d_130/MaxPool:output:0(conv2d_131/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_131/Conv2D?
!conv2d_131/BiasAdd/ReadVariableOpReadVariableOp*conv2d_131_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_131/BiasAdd/ReadVariableOp?
conv2d_131/BiasAddBiasAddconv2d_131/Conv2D:output:0)conv2d_131/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_131/BiasAdd?
conv2d_131/ReluReluconv2d_131/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_131/Relu?
max_pooling2d_131/MaxPoolMaxPoolconv2d_131/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_131/MaxPool?
dropout_130/IdentityIdentity"max_pooling2d_131/MaxPool:output:0*
T0*/
_output_shapes
:?????????02
dropout_130/Identityu
flatten_65/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_65/Const?
flatten_65/ReshapeReshapedropout_130/Identity:output:0flatten_65/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_65/Reshape?
dense_130/MatMul/ReadVariableOpReadVariableOp(dense_130_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_130/MatMul/ReadVariableOp?
dense_130/MatMulMatMulflatten_65/Reshape:output:0'dense_130/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_130/MatMul?
 dense_130/BiasAdd/ReadVariableOpReadVariableOp)dense_130_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_130/BiasAdd/ReadVariableOp?
dense_130/BiasAddBiasAdddense_130/MatMul:product:0(dense_130/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_130/BiasAddw
dense_130/ReluReludense_130/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_130/Relu?
dropout_131/IdentityIdentitydense_130/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_131/Identity?
dense_131/MatMul/ReadVariableOpReadVariableOp(dense_131_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_131/MatMul/ReadVariableOp?
dense_131/MatMulMatMuldropout_131/Identity:output:0'dense_131/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_131/MatMul?
 dense_131/BiasAdd/ReadVariableOpReadVariableOp)dense_131_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_131/BiasAdd/ReadVariableOp?
dense_131/BiasAddBiasAdddense_131/MatMul:product:0(dense_131/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_131/BiasAdd
dense_131/SoftmaxSoftmaxdense_131/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_131/Softmax?
IdentityIdentitydense_131/Softmax:softmax:0"^conv2d_130/BiasAdd/ReadVariableOp!^conv2d_130/Conv2D/ReadVariableOp"^conv2d_131/BiasAdd/ReadVariableOp!^conv2d_131/Conv2D/ReadVariableOp!^dense_130/BiasAdd/ReadVariableOp ^dense_130/MatMul/ReadVariableOp!^dense_131/BiasAdd/ReadVariableOp ^dense_131/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_130/BiasAdd/ReadVariableOp!conv2d_130/BiasAdd/ReadVariableOp2D
 conv2d_130/Conv2D/ReadVariableOp conv2d_130/Conv2D/ReadVariableOp2F
!conv2d_131/BiasAdd/ReadVariableOp!conv2d_131/BiasAdd/ReadVariableOp2D
 conv2d_131/Conv2D/ReadVariableOp conv2d_131/Conv2D/ReadVariableOp2D
 dense_130/BiasAdd/ReadVariableOp dense_130/BiasAdd/ReadVariableOp2B
dense_130/MatMul/ReadVariableOpdense_130/MatMul/ReadVariableOp2D
 dense_131/BiasAdd/ReadVariableOp dense_131/BiasAdd/ReadVariableOp2B
dense_131/MatMul/ReadVariableOpdense_131/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
G__inference_conv2d_130_layer_call_and_return_conditional_losses_1465623

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?	
?
/__inference_sequential_65_layer_call_fn_1465384
conv2d_130_input!
unknown: 
	unknown_0: #
	unknown_1: 0
	unknown_2:0
	unknown_3:
??
	unknown_4:	?
	unknown_5:	?

	unknown_6:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallconv2d_130_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_sequential_65_layer_call_and_return_conditional_losses_14653442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_130_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_130_inputA
"serving_default_conv2d_130_input:0?????????=
	dense_1310
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:إ
?G
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
trainable_variables
regularization_losses
	variables
	keras_api

signatures
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?D
_tf_keras_sequential?D{"name": "sequential_65", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_65", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_130_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_130", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_130", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_131", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_131", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_130", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_65", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_130", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_131", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_131", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "conv2d_130_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_65", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_130_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_130", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_130", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_131", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_131", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Dropout", "config": {"name": "dropout_130", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_65", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_130", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Dropout", "config": {"name": "dropout_131", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_131", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adamax", "config": {"name": "Adamax", "learning_rate": 0.009999999776482582, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
?

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?

_tf_keras_layer?
{"name": "conv2d_130", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_130", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_130", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_130", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_131", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_131", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 32]}}
?
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_131", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_131", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
?
$trainable_variables
%regularization_losses
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_130", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_130", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}
?
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_65", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_65", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 24}}
?

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_130", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_130", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2352}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2352]}}
?
2trainable_variables
3regularization_losses
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_131", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_131", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_131", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_131", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
<iter

=beta_1

>beta_2
	?decay
@learning_ratem~mm?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?"
	optimizer
X
0
1
2
3
,4
-5
66
77"
trackable_list_wrapper
 "
trackable_list_wrapper
X
0
1
2
3
,4
-5
66
77"
trackable_list_wrapper
?

Alayers
Bnon_trainable_variables
Cmetrics
trainable_variables
Dlayer_metrics
regularization_losses
Elayer_regularization_losses
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv2d_130/kernel
: 2conv2d_130/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

Flayers
Gnon_trainable_variables
Hmetrics
trainable_variables
Ilayer_metrics
regularization_losses
Jlayer_regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Klayers
Lnon_trainable_variables
Mmetrics
trainable_variables
Nlayer_metrics
regularization_losses
Olayer_regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 02conv2d_131/kernel
:02conv2d_131/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?

Players
Qnon_trainable_variables
Rmetrics
trainable_variables
Slayer_metrics
regularization_losses
Tlayer_regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Ulayers
Vnon_trainable_variables
Wmetrics
 trainable_variables
Xlayer_metrics
!regularization_losses
Ylayer_regularization_losses
"	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

Zlayers
[non_trainable_variables
\metrics
$trainable_variables
]layer_metrics
%regularization_losses
^layer_regularization_losses
&	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

_layers
`non_trainable_variables
ametrics
(trainable_variables
blayer_metrics
)regularization_losses
clayer_regularization_losses
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_130/kernel
:?2dense_130/bias
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
?

dlayers
enon_trainable_variables
fmetrics
.trainable_variables
glayer_metrics
/regularization_losses
hlayer_regularization_losses
0	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?

ilayers
jnon_trainable_variables
kmetrics
2trainable_variables
llayer_metrics
3regularization_losses
mlayer_regularization_losses
4	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_131/kernel
:
2dense_131/bias
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
?

nlayers
onon_trainable_variables
pmetrics
8trainable_variables
qlayer_metrics
9regularization_losses
rlayer_regularization_losses
:	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adamax/iter
: (2Adamax/beta_1
: (2Adamax/beta_2
: (2Adamax/decay
: (2Adamax/learning_rate
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
 "
trackable_list_wrapper
.
s0
t1"
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
?
	utotal
	vcount
w	variables
x	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 27}
?
	ytotal
	zcount
{
_fn_kwargs
|	variables
}	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}
:  (2total
:  (2count
.
u0
v1"
trackable_list_wrapper
-
w	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
y0
z1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
2:0 2Adamax/conv2d_130/kernel/m
$:" 2Adamax/conv2d_130/bias/m
2:0 02Adamax/conv2d_131/kernel/m
$:"02Adamax/conv2d_131/bias/m
+:)
??2Adamax/dense_130/kernel/m
$:"?2Adamax/dense_130/bias/m
*:(	?
2Adamax/dense_131/kernel/m
#:!
2Adamax/dense_131/bias/m
2:0 2Adamax/conv2d_130/kernel/v
$:" 2Adamax/conv2d_130/bias/v
2:0 02Adamax/conv2d_131/kernel/v
$:"02Adamax/conv2d_131/bias/v
+:)
??2Adamax/dense_130/kernel/v
$:"?2Adamax/dense_130/bias/v
*:(	?
2Adamax/dense_131/kernel/v
#:!
2Adamax/dense_131/bias/v
?2?
/__inference_sequential_65_layer_call_fn_1465200
/__inference_sequential_65_layer_call_fn_1465492
/__inference_sequential_65_layer_call_fn_1465513
/__inference_sequential_65_layer_call_fn_1465384?
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
?2?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465551
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465603
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465413
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465442?
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
"__inference__wrapped_model_1465057?
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
annotations? *7?4
2?/
conv2d_130_input?????????
?2?
,__inference_conv2d_130_layer_call_fn_1465612?
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
G__inference_conv2d_130_layer_call_and_return_conditional_losses_1465623?
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
?2?
3__inference_max_pooling2d_130_layer_call_fn_1465069?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_1465063?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
,__inference_conv2d_131_layer_call_fn_1465632?
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
G__inference_conv2d_131_layer_call_and_return_conditional_losses_1465643?
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
?2?
3__inference_max_pooling2d_131_layer_call_fn_1465081?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_1465075?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
-__inference_dropout_130_layer_call_fn_1465648
-__inference_dropout_130_layer_call_fn_1465653?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465658
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465670?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
,__inference_flatten_65_layer_call_fn_1465675?
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
G__inference_flatten_65_layer_call_and_return_conditional_losses_1465681?
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
+__inference_dense_130_layer_call_fn_1465690?
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
F__inference_dense_130_layer_call_and_return_conditional_losses_1465701?
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
?2?
-__inference_dropout_131_layer_call_fn_1465706
-__inference_dropout_131_layer_call_fn_1465711?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465716
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465728?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
+__inference_dense_131_layer_call_fn_1465737?
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
F__inference_dense_131_layer_call_and_return_conditional_losses_1465748?
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
%__inference_signature_wrapper_1465471conv2d_130_input"?
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
"__inference__wrapped_model_1465057?,-67A?>
7?4
2?/
conv2d_130_input?????????
? "5?2
0
	dense_131#? 
	dense_131?????????
?
G__inference_conv2d_130_layer_call_and_return_conditional_losses_1465623l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_130_layer_call_fn_1465612_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
G__inference_conv2d_131_layer_call_and_return_conditional_losses_1465643l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_131_layer_call_fn_1465632_7?4
-?*
(?%
inputs????????? 
? " ??????????0?
F__inference_dense_130_layer_call_and_return_conditional_losses_1465701^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_130_layer_call_fn_1465690Q,-0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_131_layer_call_and_return_conditional_losses_1465748]670?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? 
+__inference_dense_131_layer_call_fn_1465737P670?-
&?#
!?
inputs??????????
? "??????????
?
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465658l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_130_layer_call_and_return_conditional_losses_1465670l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_130_layer_call_fn_1465648_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_130_layer_call_fn_1465653_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465716^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_131_layer_call_and_return_conditional_losses_1465728^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_131_layer_call_fn_1465706Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_131_layer_call_fn_1465711Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_flatten_65_layer_call_and_return_conditional_losses_1465681a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
,__inference_flatten_65_layer_call_fn_1465675T7?4
-?*
(?%
inputs?????????0
? "????????????
N__inference_max_pooling2d_130_layer_call_and_return_conditional_losses_1465063?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_130_layer_call_fn_1465069?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_131_layer_call_and_return_conditional_losses_1465075?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_131_layer_call_fn_1465081?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465413|,-67I?F
??<
2?/
conv2d_130_input?????????
p 

 
? "%?"
?
0?????????

? ?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465442|,-67I?F
??<
2?/
conv2d_130_input?????????
p

 
? "%?"
?
0?????????

? ?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465551r,-67??<
5?2
(?%
inputs?????????
p 

 
? "%?"
?
0?????????

? ?
J__inference_sequential_65_layer_call_and_return_conditional_losses_1465603r,-67??<
5?2
(?%
inputs?????????
p

 
? "%?"
?
0?????????

? ?
/__inference_sequential_65_layer_call_fn_1465200o,-67I?F
??<
2?/
conv2d_130_input?????????
p 

 
? "??????????
?
/__inference_sequential_65_layer_call_fn_1465384o,-67I?F
??<
2?/
conv2d_130_input?????????
p

 
? "??????????
?
/__inference_sequential_65_layer_call_fn_1465492e,-67??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
/__inference_sequential_65_layer_call_fn_1465513e,-67??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
%__inference_signature_wrapper_1465471?,-67U?R
? 
K?H
F
conv2d_130_input2?/
conv2d_130_input?????????"5?2
0
	dense_131#? 
	dense_131?????????
