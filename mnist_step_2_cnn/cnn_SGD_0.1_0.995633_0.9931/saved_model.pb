??
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
conv2d_422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_422/kernel

%conv2d_422/kernel/Read/ReadVariableOpReadVariableOpconv2d_422/kernel*&
_output_shapes
: *
dtype0
v
conv2d_422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_422/bias
o
#conv2d_422/bias/Read/ReadVariableOpReadVariableOpconv2d_422/bias*
_output_shapes
: *
dtype0
?
conv2d_423/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*"
shared_nameconv2d_423/kernel

%conv2d_423/kernel/Read/ReadVariableOpReadVariableOpconv2d_423/kernel*&
_output_shapes
: 0*
dtype0
v
conv2d_423/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_423/bias
o
#conv2d_423/bias/Read/ReadVariableOpReadVariableOpconv2d_423/bias*
_output_shapes
:0*
dtype0
~
dense_422/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_422/kernel
w
$dense_422/kernel/Read/ReadVariableOpReadVariableOpdense_422/kernel* 
_output_shapes
:
??*
dtype0
u
dense_422/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_422/bias
n
"dense_422/bias/Read/ReadVariableOpReadVariableOpdense_422/bias*
_output_shapes	
:?*
dtype0
}
dense_423/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_423/kernel
v
$dense_423/kernel/Read/ReadVariableOpReadVariableOpdense_423/kernel*
_output_shapes
:	?
*
dtype0
t
dense_423/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_423/bias
m
"dense_423/bias/Read/ReadVariableOpReadVariableOpdense_423/bias*
_output_shapes
:
*
dtype0
d
SGD/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name
SGD/iter
]
SGD/iter/Read/ReadVariableOpReadVariableOpSGD/iter*
_output_shapes
: *
dtype0	
f
	SGD/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	SGD/decay
_
SGD/decay/Read/ReadVariableOpReadVariableOp	SGD/decay*
_output_shapes
: *
dtype0
v
SGD/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameSGD/learning_rate
o
%SGD/learning_rate/Read/ReadVariableOpReadVariableOpSGD/learning_rate*
_output_shapes
: *
dtype0
l
SGD/momentumVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameSGD/momentum
e
 SGD/momentum/Read/ReadVariableOpReadVariableOpSGD/momentum*
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

NoOpNoOp
?(
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?'
value?'B?' B?'
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
6
<iter
	=decay
>learning_rate
?momentum
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

@layers
Anon_trainable_variables
Bmetrics
trainable_variables
Clayer_metrics
regularization_losses
Dlayer_regularization_losses
	variables
 
][
VARIABLE_VALUEconv2d_422/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_422/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Elayers
Fnon_trainable_variables
Gmetrics
trainable_variables
Hlayer_metrics
regularization_losses
Ilayer_regularization_losses
	variables
 
 
 
?

Jlayers
Knon_trainable_variables
Lmetrics
trainable_variables
Mlayer_metrics
regularization_losses
Nlayer_regularization_losses
	variables
][
VARIABLE_VALUEconv2d_423/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_423/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Olayers
Pnon_trainable_variables
Qmetrics
trainable_variables
Rlayer_metrics
regularization_losses
Slayer_regularization_losses
	variables
 
 
 
?

Tlayers
Unon_trainable_variables
Vmetrics
 trainable_variables
Wlayer_metrics
!regularization_losses
Xlayer_regularization_losses
"	variables
 
 
 
?

Ylayers
Znon_trainable_variables
[metrics
$trainable_variables
\layer_metrics
%regularization_losses
]layer_regularization_losses
&	variables
 
 
 
?

^layers
_non_trainable_variables
`metrics
(trainable_variables
alayer_metrics
)regularization_losses
blayer_regularization_losses
*	variables
\Z
VARIABLE_VALUEdense_422/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_422/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
?

clayers
dnon_trainable_variables
emetrics
.trainable_variables
flayer_metrics
/regularization_losses
glayer_regularization_losses
0	variables
 
 
 
?

hlayers
inon_trainable_variables
jmetrics
2trainable_variables
klayer_metrics
3regularization_losses
llayer_regularization_losses
4	variables
\Z
VARIABLE_VALUEdense_423/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_423/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?

mlayers
nnon_trainable_variables
ometrics
8trainable_variables
player_metrics
9regularization_losses
qlayer_regularization_losses
:	variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
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
r0
s1
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
	ttotal
	ucount
v	variables
w	keras_api
D
	xtotal
	ycount
z
_fn_kwargs
{	variables
|	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

t0
u1

v	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

x0
y1

{	variables
?
 serving_default_conv2d_422_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_422_inputconv2d_422/kernelconv2d_422/biasconv2d_423/kernelconv2d_423/biasdense_422/kerneldense_422/biasdense_423/kerneldense_423/bias*
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
%__inference_signature_wrapper_4655700
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_422/kernel/Read/ReadVariableOp#conv2d_422/bias/Read/ReadVariableOp%conv2d_423/kernel/Read/ReadVariableOp#conv2d_423/bias/Read/ReadVariableOp$dense_422/kernel/Read/ReadVariableOp"dense_422/bias/Read/ReadVariableOp$dense_423/kernel/Read/ReadVariableOp"dense_423/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
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
 __inference__traced_save_4656048
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_422/kernelconv2d_422/biasconv2d_423/kernelconv2d_423/biasdense_422/kerneldense_422/biasdense_423/kerneldense_423/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
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
#__inference__traced_restore_4656106??
?A
?
"__inference__wrapped_model_4655288
conv2d_422_inputR
8sequential_211_conv2d_422_conv2d_readvariableop_resource: G
9sequential_211_conv2d_422_biasadd_readvariableop_resource: R
8sequential_211_conv2d_423_conv2d_readvariableop_resource: 0G
9sequential_211_conv2d_423_biasadd_readvariableop_resource:0K
7sequential_211_dense_422_matmul_readvariableop_resource:
??G
8sequential_211_dense_422_biasadd_readvariableop_resource:	?J
7sequential_211_dense_423_matmul_readvariableop_resource:	?
F
8sequential_211_dense_423_biasadd_readvariableop_resource:

identity??0sequential_211/conv2d_422/BiasAdd/ReadVariableOp?/sequential_211/conv2d_422/Conv2D/ReadVariableOp?0sequential_211/conv2d_423/BiasAdd/ReadVariableOp?/sequential_211/conv2d_423/Conv2D/ReadVariableOp?/sequential_211/dense_422/BiasAdd/ReadVariableOp?.sequential_211/dense_422/MatMul/ReadVariableOp?/sequential_211/dense_423/BiasAdd/ReadVariableOp?.sequential_211/dense_423/MatMul/ReadVariableOp?
/sequential_211/conv2d_422/Conv2D/ReadVariableOpReadVariableOp8sequential_211_conv2d_422_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/sequential_211/conv2d_422/Conv2D/ReadVariableOp?
 sequential_211/conv2d_422/Conv2DConv2Dconv2d_422_input7sequential_211/conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 sequential_211/conv2d_422/Conv2D?
0sequential_211/conv2d_422/BiasAdd/ReadVariableOpReadVariableOp9sequential_211_conv2d_422_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_211/conv2d_422/BiasAdd/ReadVariableOp?
!sequential_211/conv2d_422/BiasAddBiasAdd)sequential_211/conv2d_422/Conv2D:output:08sequential_211/conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!sequential_211/conv2d_422/BiasAdd?
sequential_211/conv2d_422/ReluRelu*sequential_211/conv2d_422/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
sequential_211/conv2d_422/Relu?
(sequential_211/max_pooling2d_422/MaxPoolMaxPool,sequential_211/conv2d_422/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(sequential_211/max_pooling2d_422/MaxPool?
/sequential_211/conv2d_423/Conv2D/ReadVariableOpReadVariableOp8sequential_211_conv2d_423_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype021
/sequential_211/conv2d_423/Conv2D/ReadVariableOp?
 sequential_211/conv2d_423/Conv2DConv2D1sequential_211/max_pooling2d_422/MaxPool:output:07sequential_211/conv2d_423/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2"
 sequential_211/conv2d_423/Conv2D?
0sequential_211/conv2d_423/BiasAdd/ReadVariableOpReadVariableOp9sequential_211_conv2d_423_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype022
0sequential_211/conv2d_423/BiasAdd/ReadVariableOp?
!sequential_211/conv2d_423/BiasAddBiasAdd)sequential_211/conv2d_423/Conv2D:output:08sequential_211/conv2d_423/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02#
!sequential_211/conv2d_423/BiasAdd?
sequential_211/conv2d_423/ReluRelu*sequential_211/conv2d_423/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02 
sequential_211/conv2d_423/Relu?
(sequential_211/max_pooling2d_423/MaxPoolMaxPool,sequential_211/conv2d_423/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2*
(sequential_211/max_pooling2d_423/MaxPool?
#sequential_211/dropout_422/IdentityIdentity1sequential_211/max_pooling2d_423/MaxPool:output:0*
T0*/
_output_shapes
:?????????02%
#sequential_211/dropout_422/Identity?
 sequential_211/flatten_211/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2"
 sequential_211/flatten_211/Const?
"sequential_211/flatten_211/ReshapeReshape,sequential_211/dropout_422/Identity:output:0)sequential_211/flatten_211/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_211/flatten_211/Reshape?
.sequential_211/dense_422/MatMul/ReadVariableOpReadVariableOp7sequential_211_dense_422_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.sequential_211/dense_422/MatMul/ReadVariableOp?
sequential_211/dense_422/MatMulMatMul+sequential_211/flatten_211/Reshape:output:06sequential_211/dense_422/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_211/dense_422/MatMul?
/sequential_211/dense_422/BiasAdd/ReadVariableOpReadVariableOp8sequential_211_dense_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_211/dense_422/BiasAdd/ReadVariableOp?
 sequential_211/dense_422/BiasAddBiasAdd)sequential_211/dense_422/MatMul:product:07sequential_211/dense_422/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 sequential_211/dense_422/BiasAdd?
sequential_211/dense_422/ReluRelu)sequential_211/dense_422/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_211/dense_422/Relu?
#sequential_211/dropout_423/IdentityIdentity+sequential_211/dense_422/Relu:activations:0*
T0*(
_output_shapes
:??????????2%
#sequential_211/dropout_423/Identity?
.sequential_211/dense_423/MatMul/ReadVariableOpReadVariableOp7sequential_211_dense_423_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.sequential_211/dense_423/MatMul/ReadVariableOp?
sequential_211/dense_423/MatMulMatMul,sequential_211/dropout_423/Identity:output:06sequential_211/dense_423/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_211/dense_423/MatMul?
/sequential_211/dense_423/BiasAdd/ReadVariableOpReadVariableOp8sequential_211_dense_423_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/sequential_211/dense_423/BiasAdd/ReadVariableOp?
 sequential_211/dense_423/BiasAddBiasAdd)sequential_211/dense_423/MatMul:product:07sequential_211/dense_423/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 sequential_211/dense_423/BiasAdd?
 sequential_211/dense_423/SoftmaxSoftmax)sequential_211/dense_423/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 sequential_211/dense_423/Softmax?
IdentityIdentity*sequential_211/dense_423/Softmax:softmax:01^sequential_211/conv2d_422/BiasAdd/ReadVariableOp0^sequential_211/conv2d_422/Conv2D/ReadVariableOp1^sequential_211/conv2d_423/BiasAdd/ReadVariableOp0^sequential_211/conv2d_423/Conv2D/ReadVariableOp0^sequential_211/dense_422/BiasAdd/ReadVariableOp/^sequential_211/dense_422/MatMul/ReadVariableOp0^sequential_211/dense_423/BiasAdd/ReadVariableOp/^sequential_211/dense_423/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2d
0sequential_211/conv2d_422/BiasAdd/ReadVariableOp0sequential_211/conv2d_422/BiasAdd/ReadVariableOp2b
/sequential_211/conv2d_422/Conv2D/ReadVariableOp/sequential_211/conv2d_422/Conv2D/ReadVariableOp2d
0sequential_211/conv2d_423/BiasAdd/ReadVariableOp0sequential_211/conv2d_423/BiasAdd/ReadVariableOp2b
/sequential_211/conv2d_423/Conv2D/ReadVariableOp/sequential_211/conv2d_423/Conv2D/ReadVariableOp2b
/sequential_211/dense_422/BiasAdd/ReadVariableOp/sequential_211/dense_422/BiasAdd/ReadVariableOp2`
.sequential_211/dense_422/MatMul/ReadVariableOp.sequential_211/dense_422/MatMul/ReadVariableOp2b
/sequential_211/dense_423/BiasAdd/ReadVariableOp/sequential_211/dense_423/BiasAdd/ReadVariableOp2`
.sequential_211/dense_423/MatMul/ReadVariableOp.sequential_211/dense_423/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_422_input
?

?
F__inference_dense_423_layer_call_and_return_conditional_losses_4655977

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
?E
?	
#__inference__traced_restore_4656106
file_prefix<
"assignvariableop_conv2d_422_kernel: 0
"assignvariableop_1_conv2d_422_bias: >
$assignvariableop_2_conv2d_423_kernel: 00
"assignvariableop_3_conv2d_423_bias:07
#assignvariableop_4_dense_422_kernel:
??0
!assignvariableop_5_dense_422_bias:	?6
#assignvariableop_6_dense_423_kernel:	?
/
!assignvariableop_7_dense_423_bias:
%
assignvariableop_8_sgd_iter:	 &
assignvariableop_9_sgd_decay: /
%assignvariableop_10_sgd_learning_rate: *
 assignvariableop_11_sgd_momentum: #
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: 
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_422_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_422_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_423_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_423_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_422_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_422_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_423_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_423_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_sgd_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp%assignvariableop_10_sgd_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp assignvariableop_11_sgd_momentumIdentity_11:output:0"/device:CPU:0*
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
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
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
?
G__inference_conv2d_422_layer_call_and_return_conditional_losses_4655330

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
?
f
-__inference_dropout_422_layer_call_fn_4655882

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
H__inference_dropout_422_layer_call_and_return_conditional_losses_46555002
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
?
I
-__inference_flatten_211_layer_call_fn_4655904

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
GPU 2J 8? *Q
fLRJ
H__inference_flatten_211_layer_call_and_return_conditional_losses_46553682
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
?F
?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655832

inputsC
)conv2d_422_conv2d_readvariableop_resource: 8
*conv2d_422_biasadd_readvariableop_resource: C
)conv2d_423_conv2d_readvariableop_resource: 08
*conv2d_423_biasadd_readvariableop_resource:0<
(dense_422_matmul_readvariableop_resource:
??8
)dense_422_biasadd_readvariableop_resource:	?;
(dense_423_matmul_readvariableop_resource:	?
7
)dense_423_biasadd_readvariableop_resource:

identity??!conv2d_422/BiasAdd/ReadVariableOp? conv2d_422/Conv2D/ReadVariableOp?!conv2d_423/BiasAdd/ReadVariableOp? conv2d_423/Conv2D/ReadVariableOp? dense_422/BiasAdd/ReadVariableOp?dense_422/MatMul/ReadVariableOp? dense_423/BiasAdd/ReadVariableOp?dense_423/MatMul/ReadVariableOp?
 conv2d_422/Conv2D/ReadVariableOpReadVariableOp)conv2d_422_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_422/Conv2D/ReadVariableOp?
conv2d_422/Conv2DConv2Dinputs(conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_422/Conv2D?
!conv2d_422/BiasAdd/ReadVariableOpReadVariableOp*conv2d_422_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_422/BiasAdd/ReadVariableOp?
conv2d_422/BiasAddBiasAddconv2d_422/Conv2D:output:0)conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_422/BiasAdd?
conv2d_422/ReluReluconv2d_422/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_422/Relu?
max_pooling2d_422/MaxPoolMaxPoolconv2d_422/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_422/MaxPool?
 conv2d_423/Conv2D/ReadVariableOpReadVariableOp)conv2d_423_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_423/Conv2D/ReadVariableOp?
conv2d_423/Conv2DConv2D"max_pooling2d_422/MaxPool:output:0(conv2d_423/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_423/Conv2D?
!conv2d_423/BiasAdd/ReadVariableOpReadVariableOp*conv2d_423_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_423/BiasAdd/ReadVariableOp?
conv2d_423/BiasAddBiasAddconv2d_423/Conv2D:output:0)conv2d_423/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_423/BiasAdd?
conv2d_423/ReluReluconv2d_423/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_423/Relu?
max_pooling2d_423/MaxPoolMaxPoolconv2d_423/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_423/MaxPool{
dropout_422/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_422/dropout/Const?
dropout_422/dropout/MulMul"max_pooling2d_423/MaxPool:output:0"dropout_422/dropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout_422/dropout/Mul?
dropout_422/dropout/ShapeShape"max_pooling2d_423/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_422/dropout/Shape?
0dropout_422/dropout/random_uniform/RandomUniformRandomUniform"dropout_422/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype022
0dropout_422/dropout/random_uniform/RandomUniform?
"dropout_422/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_422/dropout/GreaterEqual/y?
 dropout_422/dropout/GreaterEqualGreaterEqual9dropout_422/dropout/random_uniform/RandomUniform:output:0+dropout_422/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02"
 dropout_422/dropout/GreaterEqual?
dropout_422/dropout/CastCast$dropout_422/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout_422/dropout/Cast?
dropout_422/dropout/Mul_1Muldropout_422/dropout/Mul:z:0dropout_422/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout_422/dropout/Mul_1w
flatten_211/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_211/Const?
flatten_211/ReshapeReshapedropout_422/dropout/Mul_1:z:0flatten_211/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_211/Reshape?
dense_422/MatMul/ReadVariableOpReadVariableOp(dense_422_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_422/MatMul/ReadVariableOp?
dense_422/MatMulMatMulflatten_211/Reshape:output:0'dense_422/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_422/MatMul?
 dense_422/BiasAdd/ReadVariableOpReadVariableOp)dense_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_422/BiasAdd/ReadVariableOp?
dense_422/BiasAddBiasAdddense_422/MatMul:product:0(dense_422/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_422/BiasAddw
dense_422/ReluReludense_422/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_422/Relu{
dropout_423/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_423/dropout/Const?
dropout_423/dropout/MulMuldense_422/Relu:activations:0"dropout_423/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_423/dropout/Mul?
dropout_423/dropout/ShapeShapedense_422/Relu:activations:0*
T0*
_output_shapes
:2
dropout_423/dropout/Shape?
0dropout_423/dropout/random_uniform/RandomUniformRandomUniform"dropout_423/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_423/dropout/random_uniform/RandomUniform?
"dropout_423/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"dropout_423/dropout/GreaterEqual/y?
 dropout_423/dropout/GreaterEqualGreaterEqual9dropout_423/dropout/random_uniform/RandomUniform:output:0+dropout_423/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_423/dropout/GreaterEqual?
dropout_423/dropout/CastCast$dropout_423/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_423/dropout/Cast?
dropout_423/dropout/Mul_1Muldropout_423/dropout/Mul:z:0dropout_423/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_423/dropout/Mul_1?
dense_423/MatMul/ReadVariableOpReadVariableOp(dense_423_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_423/MatMul/ReadVariableOp?
dense_423/MatMulMatMuldropout_423/dropout/Mul_1:z:0'dense_423/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_423/MatMul?
 dense_423/BiasAdd/ReadVariableOpReadVariableOp)dense_423_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_423/BiasAdd/ReadVariableOp?
dense_423/BiasAddBiasAdddense_423/MatMul:product:0(dense_423/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_423/BiasAdd
dense_423/SoftmaxSoftmaxdense_423/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_423/Softmax?
IdentityIdentitydense_423/Softmax:softmax:0"^conv2d_422/BiasAdd/ReadVariableOp!^conv2d_422/Conv2D/ReadVariableOp"^conv2d_423/BiasAdd/ReadVariableOp!^conv2d_423/Conv2D/ReadVariableOp!^dense_422/BiasAdd/ReadVariableOp ^dense_422/MatMul/ReadVariableOp!^dense_423/BiasAdd/ReadVariableOp ^dense_423/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_422/BiasAdd/ReadVariableOp!conv2d_422/BiasAdd/ReadVariableOp2D
 conv2d_422/Conv2D/ReadVariableOp conv2d_422/Conv2D/ReadVariableOp2F
!conv2d_423/BiasAdd/ReadVariableOp!conv2d_423/BiasAdd/ReadVariableOp2D
 conv2d_423/Conv2D/ReadVariableOp conv2d_423/Conv2D/ReadVariableOp2D
 dense_422/BiasAdd/ReadVariableOp dense_422/BiasAdd/ReadVariableOp2B
dense_422/MatMul/ReadVariableOpdense_422/MatMul/ReadVariableOp2D
 dense_423/BiasAdd/ReadVariableOp dense_423/BiasAdd/ReadVariableOp2B
dense_423/MatMul/ReadVariableOpdense_423/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
j
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_4655294

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
?
g
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655500

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
?
O
3__inference_max_pooling2d_422_layer_call_fn_4655300

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
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_46552942
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
?
g
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655461

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
?
d
H__inference_flatten_211_layer_call_and_return_conditional_losses_4655368

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
?
f
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655392

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
?+
?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655673
conv2d_422_input,
conv2d_422_4655647:  
conv2d_422_4655649: ,
conv2d_423_4655653: 0 
conv2d_423_4655655:0%
dense_422_4655661:
?? 
dense_422_4655663:	?$
dense_423_4655667:	?

dense_423_4655669:

identity??"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?!dense_423/StatefulPartitionedCall?#dropout_422/StatefulPartitionedCall?#dropout_423/StatefulPartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCallconv2d_422_inputconv2d_422_4655647conv2d_422_4655649*
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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_46553302$
"conv2d_422/StatefulPartitionedCall?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_46552942#
!max_pooling2d_422/PartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_422/PartitionedCall:output:0conv2d_423_4655653conv2d_423_4655655*
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
G__inference_conv2d_423_layer_call_and_return_conditional_losses_46553482$
"conv2d_423/StatefulPartitionedCall?
!max_pooling2d_423/PartitionedCallPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_46553062#
!max_pooling2d_423/PartitionedCall?
#dropout_422/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_423/PartitionedCall:output:0*
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
H__inference_dropout_422_layer_call_and_return_conditional_losses_46555002%
#dropout_422/StatefulPartitionedCall?
flatten_211/PartitionedCallPartitionedCall,dropout_422/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *Q
fLRJ
H__inference_flatten_211_layer_call_and_return_conditional_losses_46553682
flatten_211/PartitionedCall?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall$flatten_211/PartitionedCall:output:0dense_422_4655661dense_422_4655663*
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
F__inference_dense_422_layer_call_and_return_conditional_losses_46553812#
!dense_422/StatefulPartitionedCall?
#dropout_423/StatefulPartitionedCallStatefulPartitionedCall*dense_422/StatefulPartitionedCall:output:0$^dropout_422/StatefulPartitionedCall*
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
H__inference_dropout_423_layer_call_and_return_conditional_losses_46554612%
#dropout_423/StatefulPartitionedCall?
!dense_423/StatefulPartitionedCallStatefulPartitionedCall,dropout_423/StatefulPartitionedCall:output:0dense_423_4655667dense_423_4655669*
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
F__inference_dense_423_layer_call_and_return_conditional_losses_46554052#
!dense_423/StatefulPartitionedCall?
IdentityIdentity*dense_423/StatefulPartitionedCall:output:0#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall"^dense_423/StatefulPartitionedCall$^dropout_422/StatefulPartitionedCall$^dropout_423/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall2F
!dense_423/StatefulPartitionedCall!dense_423/StatefulPartitionedCall2J
#dropout_422/StatefulPartitionedCall#dropout_422/StatefulPartitionedCall2J
#dropout_423/StatefulPartitionedCall#dropout_423/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_422_input
?
d
H__inference_flatten_211_layer_call_and_return_conditional_losses_4655910

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
?
f
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655360

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
0__inference_sequential_211_layer_call_fn_4655721

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
GPU 2J 8? *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_46554122
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
?
?
G__inference_conv2d_423_layer_call_and_return_conditional_losses_4655872

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
?
g
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655957

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
?
?
,__inference_conv2d_422_layer_call_fn_4655841

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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_46553302
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
?
j
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_4655306

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
?(
?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655644
conv2d_422_input,
conv2d_422_4655618:  
conv2d_422_4655620: ,
conv2d_423_4655624: 0 
conv2d_423_4655626:0%
dense_422_4655632:
?? 
dense_422_4655634:	?$
dense_423_4655638:	?

dense_423_4655640:

identity??"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?!dense_423/StatefulPartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCallconv2d_422_inputconv2d_422_4655618conv2d_422_4655620*
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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_46553302$
"conv2d_422/StatefulPartitionedCall?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_46552942#
!max_pooling2d_422/PartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_422/PartitionedCall:output:0conv2d_423_4655624conv2d_423_4655626*
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
G__inference_conv2d_423_layer_call_and_return_conditional_losses_46553482$
"conv2d_423/StatefulPartitionedCall?
!max_pooling2d_423/PartitionedCallPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_46553062#
!max_pooling2d_423/PartitionedCall?
dropout_422/PartitionedCallPartitionedCall*max_pooling2d_423/PartitionedCall:output:0*
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
H__inference_dropout_422_layer_call_and_return_conditional_losses_46553602
dropout_422/PartitionedCall?
flatten_211/PartitionedCallPartitionedCall$dropout_422/PartitionedCall:output:0*
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
GPU 2J 8? *Q
fLRJ
H__inference_flatten_211_layer_call_and_return_conditional_losses_46553682
flatten_211/PartitionedCall?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall$flatten_211/PartitionedCall:output:0dense_422_4655632dense_422_4655634*
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
F__inference_dense_422_layer_call_and_return_conditional_losses_46553812#
!dense_422/StatefulPartitionedCall?
dropout_423/PartitionedCallPartitionedCall*dense_422/StatefulPartitionedCall:output:0*
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
H__inference_dropout_423_layer_call_and_return_conditional_losses_46553922
dropout_423/PartitionedCall?
!dense_423/StatefulPartitionedCallStatefulPartitionedCall$dropout_423/PartitionedCall:output:0dense_423_4655638dense_423_4655640*
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
F__inference_dense_423_layer_call_and_return_conditional_losses_46554052#
!dense_423/StatefulPartitionedCall?
IdentityIdentity*dense_423/StatefulPartitionedCall:output:0#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall"^dense_423/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall2F
!dense_423/StatefulPartitionedCall!dense_423/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_422_input
?
?
+__inference_dense_422_layer_call_fn_4655919

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
F__inference_dense_422_layer_call_and_return_conditional_losses_46553812
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
?
G__inference_conv2d_422_layer_call_and_return_conditional_losses_4655852

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
g
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655899

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
0__inference_sequential_211_layer_call_fn_4655615
conv2d_422_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_422_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8? *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_46555752
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
_user_specified_nameconv2d_422_input
?	
?
0__inference_sequential_211_layer_call_fn_4655431
conv2d_422_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_422_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU 2J 8? *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_46554122
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
_user_specified_nameconv2d_422_input
?	
?
0__inference_sequential_211_layer_call_fn_4655742

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
GPU 2J 8? *T
fORM
K__inference_sequential_211_layer_call_and_return_conditional_losses_46555752
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
?2
?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655780

inputsC
)conv2d_422_conv2d_readvariableop_resource: 8
*conv2d_422_biasadd_readvariableop_resource: C
)conv2d_423_conv2d_readvariableop_resource: 08
*conv2d_423_biasadd_readvariableop_resource:0<
(dense_422_matmul_readvariableop_resource:
??8
)dense_422_biasadd_readvariableop_resource:	?;
(dense_423_matmul_readvariableop_resource:	?
7
)dense_423_biasadd_readvariableop_resource:

identity??!conv2d_422/BiasAdd/ReadVariableOp? conv2d_422/Conv2D/ReadVariableOp?!conv2d_423/BiasAdd/ReadVariableOp? conv2d_423/Conv2D/ReadVariableOp? dense_422/BiasAdd/ReadVariableOp?dense_422/MatMul/ReadVariableOp? dense_423/BiasAdd/ReadVariableOp?dense_423/MatMul/ReadVariableOp?
 conv2d_422/Conv2D/ReadVariableOpReadVariableOp)conv2d_422_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_422/Conv2D/ReadVariableOp?
conv2d_422/Conv2DConv2Dinputs(conv2d_422/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_422/Conv2D?
!conv2d_422/BiasAdd/ReadVariableOpReadVariableOp*conv2d_422_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_422/BiasAdd/ReadVariableOp?
conv2d_422/BiasAddBiasAddconv2d_422/Conv2D:output:0)conv2d_422/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_422/BiasAdd?
conv2d_422/ReluReluconv2d_422/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_422/Relu?
max_pooling2d_422/MaxPoolMaxPoolconv2d_422/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_422/MaxPool?
 conv2d_423/Conv2D/ReadVariableOpReadVariableOp)conv2d_423_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_423/Conv2D/ReadVariableOp?
conv2d_423/Conv2DConv2D"max_pooling2d_422/MaxPool:output:0(conv2d_423/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_423/Conv2D?
!conv2d_423/BiasAdd/ReadVariableOpReadVariableOp*conv2d_423_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_423/BiasAdd/ReadVariableOp?
conv2d_423/BiasAddBiasAddconv2d_423/Conv2D:output:0)conv2d_423/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_423/BiasAdd?
conv2d_423/ReluReluconv2d_423/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_423/Relu?
max_pooling2d_423/MaxPoolMaxPoolconv2d_423/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_423/MaxPool?
dropout_422/IdentityIdentity"max_pooling2d_423/MaxPool:output:0*
T0*/
_output_shapes
:?????????02
dropout_422/Identityw
flatten_211/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_211/Const?
flatten_211/ReshapeReshapedropout_422/Identity:output:0flatten_211/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_211/Reshape?
dense_422/MatMul/ReadVariableOpReadVariableOp(dense_422_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_422/MatMul/ReadVariableOp?
dense_422/MatMulMatMulflatten_211/Reshape:output:0'dense_422/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_422/MatMul?
 dense_422/BiasAdd/ReadVariableOpReadVariableOp)dense_422_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_422/BiasAdd/ReadVariableOp?
dense_422/BiasAddBiasAdddense_422/MatMul:product:0(dense_422/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_422/BiasAddw
dense_422/ReluReludense_422/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_422/Relu?
dropout_423/IdentityIdentitydense_422/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_423/Identity?
dense_423/MatMul/ReadVariableOpReadVariableOp(dense_423_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_423/MatMul/ReadVariableOp?
dense_423/MatMulMatMuldropout_423/Identity:output:0'dense_423/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_423/MatMul?
 dense_423/BiasAdd/ReadVariableOpReadVariableOp)dense_423_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_423/BiasAdd/ReadVariableOp?
dense_423/BiasAddBiasAdddense_423/MatMul:product:0(dense_423/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_423/BiasAdd
dense_423/SoftmaxSoftmaxdense_423/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_423/Softmax?
IdentityIdentitydense_423/Softmax:softmax:0"^conv2d_422/BiasAdd/ReadVariableOp!^conv2d_422/Conv2D/ReadVariableOp"^conv2d_423/BiasAdd/ReadVariableOp!^conv2d_423/Conv2D/ReadVariableOp!^dense_422/BiasAdd/ReadVariableOp ^dense_422/MatMul/ReadVariableOp!^dense_423/BiasAdd/ReadVariableOp ^dense_423/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_422/BiasAdd/ReadVariableOp!conv2d_422/BiasAdd/ReadVariableOp2D
 conv2d_422/Conv2D/ReadVariableOp conv2d_422/Conv2D/ReadVariableOp2F
!conv2d_423/BiasAdd/ReadVariableOp!conv2d_423/BiasAdd/ReadVariableOp2D
 conv2d_423/Conv2D/ReadVariableOp conv2d_423/Conv2D/ReadVariableOp2D
 dense_422/BiasAdd/ReadVariableOp dense_422/BiasAdd/ReadVariableOp2B
dense_422/MatMul/ReadVariableOpdense_422/MatMul/ReadVariableOp2D
 dense_423/BiasAdd/ReadVariableOp dense_423/BiasAdd/ReadVariableOp2B
dense_423/MatMul/ReadVariableOpdense_423/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
f
-__inference_dropout_423_layer_call_fn_4655940

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
H__inference_dropout_423_layer_call_and_return_conditional_losses_46554612
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
?(
?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655412

inputs,
conv2d_422_4655331:  
conv2d_422_4655333: ,
conv2d_423_4655349: 0 
conv2d_423_4655351:0%
dense_422_4655382:
?? 
dense_422_4655384:	?$
dense_423_4655406:	?

dense_423_4655408:

identity??"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?!dense_423/StatefulPartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_422_4655331conv2d_422_4655333*
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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_46553302$
"conv2d_422/StatefulPartitionedCall?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_46552942#
!max_pooling2d_422/PartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_422/PartitionedCall:output:0conv2d_423_4655349conv2d_423_4655351*
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
G__inference_conv2d_423_layer_call_and_return_conditional_losses_46553482$
"conv2d_423/StatefulPartitionedCall?
!max_pooling2d_423/PartitionedCallPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_46553062#
!max_pooling2d_423/PartitionedCall?
dropout_422/PartitionedCallPartitionedCall*max_pooling2d_423/PartitionedCall:output:0*
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
H__inference_dropout_422_layer_call_and_return_conditional_losses_46553602
dropout_422/PartitionedCall?
flatten_211/PartitionedCallPartitionedCall$dropout_422/PartitionedCall:output:0*
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
GPU 2J 8? *Q
fLRJ
H__inference_flatten_211_layer_call_and_return_conditional_losses_46553682
flatten_211/PartitionedCall?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall$flatten_211/PartitionedCall:output:0dense_422_4655382dense_422_4655384*
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
F__inference_dense_422_layer_call_and_return_conditional_losses_46553812#
!dense_422/StatefulPartitionedCall?
dropout_423/PartitionedCallPartitionedCall*dense_422/StatefulPartitionedCall:output:0*
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
H__inference_dropout_423_layer_call_and_return_conditional_losses_46553922
dropout_423/PartitionedCall?
!dense_423/StatefulPartitionedCallStatefulPartitionedCall$dropout_423/PartitionedCall:output:0dense_423_4655406dense_423_4655408*
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
F__inference_dense_423_layer_call_and_return_conditional_losses_46554052#
!dense_423/StatefulPartitionedCall?
IdentityIdentity*dense_423/StatefulPartitionedCall:output:0#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall"^dense_423/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall2F
!dense_423/StatefulPartitionedCall!dense_423/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655575

inputs,
conv2d_422_4655549:  
conv2d_422_4655551: ,
conv2d_423_4655555: 0 
conv2d_423_4655557:0%
dense_422_4655563:
?? 
dense_422_4655565:	?$
dense_423_4655569:	?

dense_423_4655571:

identity??"conv2d_422/StatefulPartitionedCall?"conv2d_423/StatefulPartitionedCall?!dense_422/StatefulPartitionedCall?!dense_423/StatefulPartitionedCall?#dropout_422/StatefulPartitionedCall?#dropout_423/StatefulPartitionedCall?
"conv2d_422/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_422_4655549conv2d_422_4655551*
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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_46553302$
"conv2d_422/StatefulPartitionedCall?
!max_pooling2d_422/PartitionedCallPartitionedCall+conv2d_422/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_46552942#
!max_pooling2d_422/PartitionedCall?
"conv2d_423/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_422/PartitionedCall:output:0conv2d_423_4655555conv2d_423_4655557*
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
G__inference_conv2d_423_layer_call_and_return_conditional_losses_46553482$
"conv2d_423/StatefulPartitionedCall?
!max_pooling2d_423/PartitionedCallPartitionedCall+conv2d_423/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_46553062#
!max_pooling2d_423/PartitionedCall?
#dropout_422/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_423/PartitionedCall:output:0*
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
H__inference_dropout_422_layer_call_and_return_conditional_losses_46555002%
#dropout_422/StatefulPartitionedCall?
flatten_211/PartitionedCallPartitionedCall,dropout_422/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *Q
fLRJ
H__inference_flatten_211_layer_call_and_return_conditional_losses_46553682
flatten_211/PartitionedCall?
!dense_422/StatefulPartitionedCallStatefulPartitionedCall$flatten_211/PartitionedCall:output:0dense_422_4655563dense_422_4655565*
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
F__inference_dense_422_layer_call_and_return_conditional_losses_46553812#
!dense_422/StatefulPartitionedCall?
#dropout_423/StatefulPartitionedCallStatefulPartitionedCall*dense_422/StatefulPartitionedCall:output:0$^dropout_422/StatefulPartitionedCall*
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
H__inference_dropout_423_layer_call_and_return_conditional_losses_46554612%
#dropout_423/StatefulPartitionedCall?
!dense_423/StatefulPartitionedCallStatefulPartitionedCall,dropout_423/StatefulPartitionedCall:output:0dense_423_4655569dense_423_4655571*
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
F__inference_dense_423_layer_call_and_return_conditional_losses_46554052#
!dense_423/StatefulPartitionedCall?
IdentityIdentity*dense_423/StatefulPartitionedCall:output:0#^conv2d_422/StatefulPartitionedCall#^conv2d_423/StatefulPartitionedCall"^dense_422/StatefulPartitionedCall"^dense_423/StatefulPartitionedCall$^dropout_422/StatefulPartitionedCall$^dropout_423/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_422/StatefulPartitionedCall"conv2d_422/StatefulPartitionedCall2H
"conv2d_423/StatefulPartitionedCall"conv2d_423/StatefulPartitionedCall2F
!dense_422/StatefulPartitionedCall!dense_422/StatefulPartitionedCall2F
!dense_423/StatefulPartitionedCall!dense_423/StatefulPartitionedCall2J
#dropout_422/StatefulPartitionedCall#dropout_422/StatefulPartitionedCall2J
#dropout_423/StatefulPartitionedCall#dropout_423/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
I
-__inference_dropout_422_layer_call_fn_4655877

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
H__inference_dropout_422_layer_call_and_return_conditional_losses_46553602
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
?
f
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655945

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
?)
?
 __inference__traced_save_4656048
file_prefix0
,savev2_conv2d_422_kernel_read_readvariableop.
*savev2_conv2d_422_bias_read_readvariableop0
,savev2_conv2d_423_kernel_read_readvariableop.
*savev2_conv2d_423_bias_read_readvariableop/
+savev2_dense_422_kernel_read_readvariableop-
)savev2_dense_422_bias_read_readvariableop/
+savev2_dense_423_kernel_read_readvariableop-
)savev2_dense_423_bias_read_readvariableop'
#savev2_sgd_iter_read_readvariableop	(
$savev2_sgd_decay_read_readvariableop0
,savev2_sgd_learning_rate_read_readvariableop+
'savev2_sgd_momentum_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_422_kernel_read_readvariableop*savev2_conv2d_422_bias_read_readvariableop,savev2_conv2d_423_kernel_read_readvariableop*savev2_conv2d_423_bias_read_readvariableop+savev2_dense_422_kernel_read_readvariableop)savev2_dense_422_bias_read_readvariableop+savev2_dense_423_kernel_read_readvariableop)savev2_dense_423_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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

identity_1Identity_1:output:0*{
_input_shapesj
h: : : : 0:0:
??:?:	?
:
: : : : : : : : : 2(
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
: 
?	
?
%__inference_signature_wrapper_4655700
conv2d_422_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_422_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_46552882
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
_user_specified_nameconv2d_422_input
?
O
3__inference_max_pooling2d_423_layer_call_fn_4655312

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
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_46553062
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
+__inference_dense_423_layer_call_fn_4655966

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
F__inference_dense_423_layer_call_and_return_conditional_losses_46554052
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

?
F__inference_dense_422_layer_call_and_return_conditional_losses_4655381

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
?
?
G__inference_conv2d_423_layer_call_and_return_conditional_losses_4655348

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
?

?
F__inference_dense_422_layer_call_and_return_conditional_losses_4655930

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
?
?
,__inference_conv2d_423_layer_call_fn_4655861

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
G__inference_conv2d_423_layer_call_and_return_conditional_losses_46553482
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
?
f
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655887

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
F__inference_dense_423_layer_call_and_return_conditional_losses_4655405

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
?
I
-__inference_dropout_423_layer_call_fn_4655935

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
H__inference_dropout_423_layer_call_and_return_conditional_losses_46553922
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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
U
conv2d_422_inputA
"serving_default_conv2d_422_input:0?????????=
	dense_4230
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
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
}__call__
*~&call_and_return_all_conditional_losses
_default_save_signature"?C
_tf_keras_sequential?C{"name": "sequential_211", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_211", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_422_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_422", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_422", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_423", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_423", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_422", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_211", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_422", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_423", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_423", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "conv2d_422_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_211", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_422_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_422", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_422", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_423", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_423", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Dropout", "config": {"name": "dropout_422", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_211", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_422", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Dropout", "config": {"name": "dropout_423", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_423", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 0.10000000149011612, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
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
{"name": "conv2d_422", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_422", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_422", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_422", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_423", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_423", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 32]}}
?
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_423", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_423", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
?
$trainable_variables
%regularization_losses
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_422", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_422", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}
?
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_211", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_211", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 24}}
?

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_422", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_422", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2352}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2352]}}
?
2trainable_variables
3regularization_losses
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_423", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_423", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_423", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_423", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
I
<iter
	=decay
>learning_rate
?momentum"
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

@layers
Anon_trainable_variables
Bmetrics
trainable_variables
Clayer_metrics
regularization_losses
Dlayer_regularization_losses
	variables
}__call__
_default_save_signature
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv2d_422/kernel
: 2conv2d_422/bias
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

Elayers
Fnon_trainable_variables
Gmetrics
trainable_variables
Hlayer_metrics
regularization_losses
Ilayer_regularization_losses
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

Jlayers
Knon_trainable_variables
Lmetrics
trainable_variables
Mlayer_metrics
regularization_losses
Nlayer_regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 02conv2d_423/kernel
:02conv2d_423/bias
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

Olayers
Pnon_trainable_variables
Qmetrics
trainable_variables
Rlayer_metrics
regularization_losses
Slayer_regularization_losses
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

Tlayers
Unon_trainable_variables
Vmetrics
 trainable_variables
Wlayer_metrics
!regularization_losses
Xlayer_regularization_losses
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

Ylayers
Znon_trainable_variables
[metrics
$trainable_variables
\layer_metrics
%regularization_losses
]layer_regularization_losses
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

^layers
_non_trainable_variables
`metrics
(trainable_variables
alayer_metrics
)regularization_losses
blayer_regularization_losses
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_422/kernel
:?2dense_422/bias
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

clayers
dnon_trainable_variables
emetrics
.trainable_variables
flayer_metrics
/regularization_losses
glayer_regularization_losses
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

hlayers
inon_trainable_variables
jmetrics
2trainable_variables
klayer_metrics
3regularization_losses
llayer_regularization_losses
4	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_423/kernel
:
2dense_423/bias
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

mlayers
nnon_trainable_variables
ometrics
8trainable_variables
player_metrics
9regularization_losses
qlayer_regularization_losses
:	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
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
r0
s1"
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
	ttotal
	ucount
v	variables
w	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 27}
?
	xtotal
	ycount
z
_fn_kwargs
{	variables
|	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}
:  (2total
:  (2count
.
t0
u1"
trackable_list_wrapper
-
v	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
x0
y1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
?2?
0__inference_sequential_211_layer_call_fn_4655431
0__inference_sequential_211_layer_call_fn_4655721
0__inference_sequential_211_layer_call_fn_4655742
0__inference_sequential_211_layer_call_fn_4655615?
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
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655780
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655832
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655644
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655673?
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
"__inference__wrapped_model_4655288?
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
conv2d_422_input?????????
?2?
,__inference_conv2d_422_layer_call_fn_4655841?
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
G__inference_conv2d_422_layer_call_and_return_conditional_losses_4655852?
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
3__inference_max_pooling2d_422_layer_call_fn_4655300?
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
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_4655294?
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
,__inference_conv2d_423_layer_call_fn_4655861?
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
G__inference_conv2d_423_layer_call_and_return_conditional_losses_4655872?
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
3__inference_max_pooling2d_423_layer_call_fn_4655312?
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
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_4655306?
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
-__inference_dropout_422_layer_call_fn_4655877
-__inference_dropout_422_layer_call_fn_4655882?
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
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655887
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655899?
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
-__inference_flatten_211_layer_call_fn_4655904?
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
H__inference_flatten_211_layer_call_and_return_conditional_losses_4655910?
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
+__inference_dense_422_layer_call_fn_4655919?
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
F__inference_dense_422_layer_call_and_return_conditional_losses_4655930?
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
-__inference_dropout_423_layer_call_fn_4655935
-__inference_dropout_423_layer_call_fn_4655940?
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
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655945
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655957?
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
+__inference_dense_423_layer_call_fn_4655966?
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
F__inference_dense_423_layer_call_and_return_conditional_losses_4655977?
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
%__inference_signature_wrapper_4655700conv2d_422_input"?
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
"__inference__wrapped_model_4655288?,-67A?>
7?4
2?/
conv2d_422_input?????????
? "5?2
0
	dense_423#? 
	dense_423?????????
?
G__inference_conv2d_422_layer_call_and_return_conditional_losses_4655852l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_422_layer_call_fn_4655841_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
G__inference_conv2d_423_layer_call_and_return_conditional_losses_4655872l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_423_layer_call_fn_4655861_7?4
-?*
(?%
inputs????????? 
? " ??????????0?
F__inference_dense_422_layer_call_and_return_conditional_losses_4655930^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_422_layer_call_fn_4655919Q,-0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_423_layer_call_and_return_conditional_losses_4655977]670?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? 
+__inference_dense_423_layer_call_fn_4655966P670?-
&?#
!?
inputs??????????
? "??????????
?
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655887l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_422_layer_call_and_return_conditional_losses_4655899l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_422_layer_call_fn_4655877_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_422_layer_call_fn_4655882_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655945^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_423_layer_call_and_return_conditional_losses_4655957^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_423_layer_call_fn_4655935Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_423_layer_call_fn_4655940Q4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_flatten_211_layer_call_and_return_conditional_losses_4655910a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
-__inference_flatten_211_layer_call_fn_4655904T7?4
-?*
(?%
inputs?????????0
? "????????????
N__inference_max_pooling2d_422_layer_call_and_return_conditional_losses_4655294?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_422_layer_call_fn_4655300?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_423_layer_call_and_return_conditional_losses_4655306?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_423_layer_call_fn_4655312?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655644|,-67I?F
??<
2?/
conv2d_422_input?????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655673|,-67I?F
??<
2?/
conv2d_422_input?????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655780r,-67??<
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
K__inference_sequential_211_layer_call_and_return_conditional_losses_4655832r,-67??<
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
0__inference_sequential_211_layer_call_fn_4655431o,-67I?F
??<
2?/
conv2d_422_input?????????
p 

 
? "??????????
?
0__inference_sequential_211_layer_call_fn_4655615o,-67I?F
??<
2?/
conv2d_422_input?????????
p

 
? "??????????
?
0__inference_sequential_211_layer_call_fn_4655721e,-67??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
0__inference_sequential_211_layer_call_fn_4655742e,-67??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
%__inference_signature_wrapper_4655700?,-67U?R
? 
K?H
F
conv2d_422_input2?/
conv2d_422_input?????????"5?2
0
	dense_423#? 
	dense_423?????????
