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
conv2d_236/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_236/kernel

%conv2d_236/kernel/Read/ReadVariableOpReadVariableOpconv2d_236/kernel*&
_output_shapes
: *
dtype0
v
conv2d_236/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_236/bias
o
#conv2d_236/bias/Read/ReadVariableOpReadVariableOpconv2d_236/bias*
_output_shapes
: *
dtype0
?
conv2d_237/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*"
shared_nameconv2d_237/kernel

%conv2d_237/kernel/Read/ReadVariableOpReadVariableOpconv2d_237/kernel*&
_output_shapes
: 0*
dtype0
v
conv2d_237/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_237/bias
o
#conv2d_237/bias/Read/ReadVariableOpReadVariableOpconv2d_237/bias*
_output_shapes
:0*
dtype0
~
dense_236/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_236/kernel
w
$dense_236/kernel/Read/ReadVariableOpReadVariableOpdense_236/kernel* 
_output_shapes
:
??*
dtype0
u
dense_236/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_236/bias
n
"dense_236/bias/Read/ReadVariableOpReadVariableOpdense_236/bias*
_output_shapes	
:?*
dtype0
}
dense_237/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_237/kernel
v
$dense_237/kernel/Read/ReadVariableOpReadVariableOpdense_237/kernel*
_output_shapes
:	?
*
dtype0
t
dense_237/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_237/bias
m
"dense_237/bias/Read/ReadVariableOpReadVariableOpdense_237/bias*
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
Nadam/conv2d_236/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameNadam/conv2d_236/kernel/m
?
-Nadam/conv2d_236/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_236/kernel/m*&
_output_shapes
: *
dtype0
?
Nadam/conv2d_236/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameNadam/conv2d_236/bias/m

+Nadam/conv2d_236/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_236/bias/m*
_output_shapes
: *
dtype0
?
Nadam/conv2d_237/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0**
shared_nameNadam/conv2d_237/kernel/m
?
-Nadam/conv2d_237/kernel/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_237/kernel/m*&
_output_shapes
: 0*
dtype0
?
Nadam/conv2d_237/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameNadam/conv2d_237/bias/m

+Nadam/conv2d_237/bias/m/Read/ReadVariableOpReadVariableOpNadam/conv2d_237/bias/m*
_output_shapes
:0*
dtype0
?
Nadam/dense_236/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameNadam/dense_236/kernel/m
?
,Nadam/dense_236/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_236/kernel/m* 
_output_shapes
:
??*
dtype0
?
Nadam/dense_236/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameNadam/dense_236/bias/m
~
*Nadam/dense_236/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_236/bias/m*
_output_shapes	
:?*
dtype0
?
Nadam/dense_237/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*)
shared_nameNadam/dense_237/kernel/m
?
,Nadam/dense_237/kernel/m/Read/ReadVariableOpReadVariableOpNadam/dense_237/kernel/m*
_output_shapes
:	?
*
dtype0
?
Nadam/dense_237/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameNadam/dense_237/bias/m
}
*Nadam/dense_237/bias/m/Read/ReadVariableOpReadVariableOpNadam/dense_237/bias/m*
_output_shapes
:
*
dtype0
?
Nadam/conv2d_236/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameNadam/conv2d_236/kernel/v
?
-Nadam/conv2d_236/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_236/kernel/v*&
_output_shapes
: *
dtype0
?
Nadam/conv2d_236/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *(
shared_nameNadam/conv2d_236/bias/v

+Nadam/conv2d_236/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_236/bias/v*
_output_shapes
: *
dtype0
?
Nadam/conv2d_237/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0**
shared_nameNadam/conv2d_237/kernel/v
?
-Nadam/conv2d_237/kernel/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_237/kernel/v*&
_output_shapes
: 0*
dtype0
?
Nadam/conv2d_237/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*(
shared_nameNadam/conv2d_237/bias/v

+Nadam/conv2d_237/bias/v/Read/ReadVariableOpReadVariableOpNadam/conv2d_237/bias/v*
_output_shapes
:0*
dtype0
?
Nadam/dense_236/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*)
shared_nameNadam/dense_236/kernel/v
?
,Nadam/dense_236/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_236/kernel/v* 
_output_shapes
:
??*
dtype0
?
Nadam/dense_236/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*'
shared_nameNadam/dense_236/bias/v
~
*Nadam/dense_236/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_236/bias/v*
_output_shapes	
:?*
dtype0
?
Nadam/dense_237/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*)
shared_nameNadam/dense_237/kernel/v
?
,Nadam/dense_237/kernel/v/Read/ReadVariableOpReadVariableOpNadam/dense_237/kernel/v*
_output_shapes
:	?
*
dtype0
?
Nadam/dense_237/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*'
shared_nameNadam/dense_237/bias/v
}
*Nadam/dense_237/bias/v/Read/ReadVariableOpReadVariableOpNadam/dense_237/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?;
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?:
value?:B?: B?:
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
@learning_rate
Amomentum_cachemm?m?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?
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

Blayers
Cnon_trainable_variables
Dmetrics
trainable_variables
Elayer_metrics
regularization_losses
Flayer_regularization_losses
	variables
 
][
VARIABLE_VALUEconv2d_236/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_236/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Glayers
Hnon_trainable_variables
Imetrics
trainable_variables
Jlayer_metrics
regularization_losses
Klayer_regularization_losses
	variables
 
 
 
?

Llayers
Mnon_trainable_variables
Nmetrics
trainable_variables
Olayer_metrics
regularization_losses
Player_regularization_losses
	variables
][
VARIABLE_VALUEconv2d_237/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_237/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Qlayers
Rnon_trainable_variables
Smetrics
trainable_variables
Tlayer_metrics
regularization_losses
Ulayer_regularization_losses
	variables
 
 
 
?

Vlayers
Wnon_trainable_variables
Xmetrics
 trainable_variables
Ylayer_metrics
!regularization_losses
Zlayer_regularization_losses
"	variables
 
 
 
?

[layers
\non_trainable_variables
]metrics
$trainable_variables
^layer_metrics
%regularization_losses
_layer_regularization_losses
&	variables
 
 
 
?

`layers
anon_trainable_variables
bmetrics
(trainable_variables
clayer_metrics
)regularization_losses
dlayer_regularization_losses
*	variables
\Z
VARIABLE_VALUEdense_236/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_236/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
?

elayers
fnon_trainable_variables
gmetrics
.trainable_variables
hlayer_metrics
/regularization_losses
ilayer_regularization_losses
0	variables
 
 
 
?

jlayers
knon_trainable_variables
lmetrics
2trainable_variables
mlayer_metrics
3regularization_losses
nlayer_regularization_losses
4	variables
\Z
VARIABLE_VALUEdense_237/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_237/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?

olayers
pnon_trainable_variables
qmetrics
8trainable_variables
rlayer_metrics
9regularization_losses
slayer_regularization_losses
:	variables
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
t0
u1
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
	vtotal
	wcount
x	variables
y	keras_api
D
	ztotal
	{count
|
_fn_kwargs
}	variables
~	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

v0
w1

x	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

z0
{1

}	variables
?
VARIABLE_VALUENadam/conv2d_236/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUENadam/conv2d_236/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUENadam/conv2d_237/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUENadam/conv2d_237/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_236/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_236/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_237/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_237/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUENadam/conv2d_236/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUENadam/conv2d_236/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUENadam/conv2d_237/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUENadam/conv2d_237/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_236/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_236/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUENadam/dense_237/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUENadam/dense_237/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_236_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_236_inputconv2d_236/kernelconv2d_236/biasconv2d_237/kernelconv2d_237/biasdense_236/kerneldense_236/biasdense_237/kerneldense_237/bias*
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
%__inference_signature_wrapper_2550254
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_236/kernel/Read/ReadVariableOp#conv2d_236/bias/Read/ReadVariableOp%conv2d_237/kernel/Read/ReadVariableOp#conv2d_237/bias/Read/ReadVariableOp$dense_236/kernel/Read/ReadVariableOp"dense_236/bias/Read/ReadVariableOp$dense_237/kernel/Read/ReadVariableOp"dense_237/bias/Read/ReadVariableOpNadam/iter/Read/ReadVariableOp Nadam/beta_1/Read/ReadVariableOp Nadam/beta_2/Read/ReadVariableOpNadam/decay/Read/ReadVariableOp'Nadam/learning_rate/Read/ReadVariableOp(Nadam/momentum_cache/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp-Nadam/conv2d_236/kernel/m/Read/ReadVariableOp+Nadam/conv2d_236/bias/m/Read/ReadVariableOp-Nadam/conv2d_237/kernel/m/Read/ReadVariableOp+Nadam/conv2d_237/bias/m/Read/ReadVariableOp,Nadam/dense_236/kernel/m/Read/ReadVariableOp*Nadam/dense_236/bias/m/Read/ReadVariableOp,Nadam/dense_237/kernel/m/Read/ReadVariableOp*Nadam/dense_237/bias/m/Read/ReadVariableOp-Nadam/conv2d_236/kernel/v/Read/ReadVariableOp+Nadam/conv2d_236/bias/v/Read/ReadVariableOp-Nadam/conv2d_237/kernel/v/Read/ReadVariableOp+Nadam/conv2d_237/bias/v/Read/ReadVariableOp,Nadam/dense_236/kernel/v/Read/ReadVariableOp*Nadam/dense_236/bias/v/Read/ReadVariableOp,Nadam/dense_237/kernel/v/Read/ReadVariableOp*Nadam/dense_237/bias/v/Read/ReadVariableOpConst*/
Tin(
&2$	*
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
 __inference__traced_save_2550656
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_236/kernelconv2d_236/biasconv2d_237/kernelconv2d_237/biasdense_236/kerneldense_236/biasdense_237/kerneldense_237/bias
Nadam/iterNadam/beta_1Nadam/beta_2Nadam/decayNadam/learning_rateNadam/momentum_cachetotalcounttotal_1count_1Nadam/conv2d_236/kernel/mNadam/conv2d_236/bias/mNadam/conv2d_237/kernel/mNadam/conv2d_237/bias/mNadam/dense_236/kernel/mNadam/dense_236/bias/mNadam/dense_237/kernel/mNadam/dense_237/bias/mNadam/conv2d_236/kernel/vNadam/conv2d_236/bias/vNadam/conv2d_237/kernel/vNadam/conv2d_237/bias/vNadam/dense_236/kernel/vNadam/dense_236/bias/vNadam/dense_237/kernel/vNadam/dense_237/bias/v*.
Tin'
%2#*
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
#__inference__traced_restore_2550768??
?+
?
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550127

inputs,
conv2d_236_2550101:  
conv2d_236_2550103: ,
conv2d_237_2550107: 0 
conv2d_237_2550109:0%
dense_236_2550115:
?? 
dense_236_2550117:	?$
dense_237_2550121:	?

dense_237_2550123:

identity??"conv2d_236/StatefulPartitionedCall?"conv2d_237/StatefulPartitionedCall?!dense_236/StatefulPartitionedCall?!dense_237/StatefulPartitionedCall?#dropout_236/StatefulPartitionedCall?#dropout_237/StatefulPartitionedCall?
"conv2d_236/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_236_2550101conv2d_236_2550103*
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
G__inference_conv2d_236_layer_call_and_return_conditional_losses_25498822$
"conv2d_236/StatefulPartitionedCall?
!max_pooling2d_236/PartitionedCallPartitionedCall+conv2d_236/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_25498462#
!max_pooling2d_236/PartitionedCall?
"conv2d_237/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_236/PartitionedCall:output:0conv2d_237_2550107conv2d_237_2550109*
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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_25499002$
"conv2d_237/StatefulPartitionedCall?
!max_pooling2d_237/PartitionedCallPartitionedCall+conv2d_237/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_25498582#
!max_pooling2d_237/PartitionedCall?
#dropout_236/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_237/PartitionedCall:output:0*
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
H__inference_dropout_236_layer_call_and_return_conditional_losses_25500522%
#dropout_236/StatefulPartitionedCall?
flatten_118/PartitionedCallPartitionedCall,dropout_236/StatefulPartitionedCall:output:0*
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
H__inference_flatten_118_layer_call_and_return_conditional_losses_25499202
flatten_118/PartitionedCall?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$flatten_118/PartitionedCall:output:0dense_236_2550115dense_236_2550117*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_25499332#
!dense_236/StatefulPartitionedCall?
#dropout_237/StatefulPartitionedCallStatefulPartitionedCall*dense_236/StatefulPartitionedCall:output:0$^dropout_236/StatefulPartitionedCall*
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
H__inference_dropout_237_layer_call_and_return_conditional_losses_25500132%
#dropout_237/StatefulPartitionedCall?
!dense_237/StatefulPartitionedCallStatefulPartitionedCall,dropout_237/StatefulPartitionedCall:output:0dense_237_2550121dense_237_2550123*
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
F__inference_dense_237_layer_call_and_return_conditional_losses_25499572#
!dense_237/StatefulPartitionedCall?
IdentityIdentity*dense_237/StatefulPartitionedCall:output:0#^conv2d_236/StatefulPartitionedCall#^conv2d_237/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall$^dropout_236/StatefulPartitionedCall$^dropout_237/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_236/StatefulPartitionedCall"conv2d_236/StatefulPartitionedCall2H
"conv2d_237/StatefulPartitionedCall"conv2d_237/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall2J
#dropout_236/StatefulPartitionedCall#dropout_236/StatefulPartitionedCall2J
#dropout_237/StatefulPartitionedCall#dropout_237/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_236_layer_call_and_return_conditional_losses_2550453

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
?
f
H__inference_dropout_237_layer_call_and_return_conditional_losses_2550499

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
?
?
,__inference_conv2d_237_layer_call_fn_2550415

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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_25499002
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
?	
?
0__inference_sequential_118_layer_call_fn_2550275

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
K__inference_sequential_118_layer_call_and_return_conditional_losses_25499642
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
?
j
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_2549858

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
?
d
H__inference_flatten_118_layer_call_and_return_conditional_losses_2549920

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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_2549900

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
?
G__inference_conv2d_236_layer_call_and_return_conditional_losses_2550406

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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_2550426

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
?J
?
 __inference__traced_save_2550656
file_prefix0
,savev2_conv2d_236_kernel_read_readvariableop.
*savev2_conv2d_236_bias_read_readvariableop0
,savev2_conv2d_237_kernel_read_readvariableop.
*savev2_conv2d_237_bias_read_readvariableop/
+savev2_dense_236_kernel_read_readvariableop-
)savev2_dense_236_bias_read_readvariableop/
+savev2_dense_237_kernel_read_readvariableop-
)savev2_dense_237_bias_read_readvariableop)
%savev2_nadam_iter_read_readvariableop	+
'savev2_nadam_beta_1_read_readvariableop+
'savev2_nadam_beta_2_read_readvariableop*
&savev2_nadam_decay_read_readvariableop2
.savev2_nadam_learning_rate_read_readvariableop3
/savev2_nadam_momentum_cache_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop8
4savev2_nadam_conv2d_236_kernel_m_read_readvariableop6
2savev2_nadam_conv2d_236_bias_m_read_readvariableop8
4savev2_nadam_conv2d_237_kernel_m_read_readvariableop6
2savev2_nadam_conv2d_237_bias_m_read_readvariableop7
3savev2_nadam_dense_236_kernel_m_read_readvariableop5
1savev2_nadam_dense_236_bias_m_read_readvariableop7
3savev2_nadam_dense_237_kernel_m_read_readvariableop5
1savev2_nadam_dense_237_bias_m_read_readvariableop8
4savev2_nadam_conv2d_236_kernel_v_read_readvariableop6
2savev2_nadam_conv2d_236_bias_v_read_readvariableop8
4savev2_nadam_conv2d_237_kernel_v_read_readvariableop6
2savev2_nadam_conv2d_237_bias_v_read_readvariableop7
3savev2_nadam_dense_236_kernel_v_read_readvariableop5
1savev2_nadam_dense_236_bias_v_read_readvariableop7
3savev2_nadam_dense_237_kernel_v_read_readvariableop5
1savev2_nadam_dense_237_bias_v_read_readvariableop
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
:#*
dtype0*?
value?B?#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_236_kernel_read_readvariableop*savev2_conv2d_236_bias_read_readvariableop,savev2_conv2d_237_kernel_read_readvariableop*savev2_conv2d_237_bias_read_readvariableop+savev2_dense_236_kernel_read_readvariableop)savev2_dense_236_bias_read_readvariableop+savev2_dense_237_kernel_read_readvariableop)savev2_dense_237_bias_read_readvariableop%savev2_nadam_iter_read_readvariableop'savev2_nadam_beta_1_read_readvariableop'savev2_nadam_beta_2_read_readvariableop&savev2_nadam_decay_read_readvariableop.savev2_nadam_learning_rate_read_readvariableop/savev2_nadam_momentum_cache_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop4savev2_nadam_conv2d_236_kernel_m_read_readvariableop2savev2_nadam_conv2d_236_bias_m_read_readvariableop4savev2_nadam_conv2d_237_kernel_m_read_readvariableop2savev2_nadam_conv2d_237_bias_m_read_readvariableop3savev2_nadam_dense_236_kernel_m_read_readvariableop1savev2_nadam_dense_236_bias_m_read_readvariableop3savev2_nadam_dense_237_kernel_m_read_readvariableop1savev2_nadam_dense_237_bias_m_read_readvariableop4savev2_nadam_conv2d_236_kernel_v_read_readvariableop2savev2_nadam_conv2d_236_bias_v_read_readvariableop4savev2_nadam_conv2d_237_kernel_v_read_readvariableop2savev2_nadam_conv2d_237_bias_v_read_readvariableop3savev2_nadam_dense_236_kernel_v_read_readvariableop1savev2_nadam_dense_236_bias_v_read_readvariableop3savev2_nadam_dense_237_kernel_v_read_readvariableop1savev2_nadam_dense_237_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *1
dtypes'
%2#	2
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
: : : : : : : : : : : : : 0:0:
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
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:&"
 
_output_shapes
:
??:! 

_output_shapes	
:?:%!!

_output_shapes
:	?
: "

_output_shapes
:
:#

_output_shapes
: 
?
O
3__inference_max_pooling2d_237_layer_call_fn_2549864

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
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_25498582
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
?F
?
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550386

inputsC
)conv2d_236_conv2d_readvariableop_resource: 8
*conv2d_236_biasadd_readvariableop_resource: C
)conv2d_237_conv2d_readvariableop_resource: 08
*conv2d_237_biasadd_readvariableop_resource:0<
(dense_236_matmul_readvariableop_resource:
??8
)dense_236_biasadd_readvariableop_resource:	?;
(dense_237_matmul_readvariableop_resource:	?
7
)dense_237_biasadd_readvariableop_resource:

identity??!conv2d_236/BiasAdd/ReadVariableOp? conv2d_236/Conv2D/ReadVariableOp?!conv2d_237/BiasAdd/ReadVariableOp? conv2d_237/Conv2D/ReadVariableOp? dense_236/BiasAdd/ReadVariableOp?dense_236/MatMul/ReadVariableOp? dense_237/BiasAdd/ReadVariableOp?dense_237/MatMul/ReadVariableOp?
 conv2d_236/Conv2D/ReadVariableOpReadVariableOp)conv2d_236_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_236/Conv2D/ReadVariableOp?
conv2d_236/Conv2DConv2Dinputs(conv2d_236/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_236/Conv2D?
!conv2d_236/BiasAdd/ReadVariableOpReadVariableOp*conv2d_236_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_236/BiasAdd/ReadVariableOp?
conv2d_236/BiasAddBiasAddconv2d_236/Conv2D:output:0)conv2d_236/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_236/BiasAdd?
conv2d_236/ReluReluconv2d_236/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_236/Relu?
max_pooling2d_236/MaxPoolMaxPoolconv2d_236/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_236/MaxPool?
 conv2d_237/Conv2D/ReadVariableOpReadVariableOp)conv2d_237_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_237/Conv2D/ReadVariableOp?
conv2d_237/Conv2DConv2D"max_pooling2d_236/MaxPool:output:0(conv2d_237/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_237/Conv2D?
!conv2d_237/BiasAdd/ReadVariableOpReadVariableOp*conv2d_237_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_237/BiasAdd/ReadVariableOp?
conv2d_237/BiasAddBiasAddconv2d_237/Conv2D:output:0)conv2d_237/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_237/BiasAdd?
conv2d_237/ReluReluconv2d_237/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_237/Relu?
max_pooling2d_237/MaxPoolMaxPoolconv2d_237/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_237/MaxPool{
dropout_236/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_236/dropout/Const?
dropout_236/dropout/MulMul"max_pooling2d_237/MaxPool:output:0"dropout_236/dropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout_236/dropout/Mul?
dropout_236/dropout/ShapeShape"max_pooling2d_237/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_236/dropout/Shape?
0dropout_236/dropout/random_uniform/RandomUniformRandomUniform"dropout_236/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype022
0dropout_236/dropout/random_uniform/RandomUniform?
"dropout_236/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_236/dropout/GreaterEqual/y?
 dropout_236/dropout/GreaterEqualGreaterEqual9dropout_236/dropout/random_uniform/RandomUniform:output:0+dropout_236/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02"
 dropout_236/dropout/GreaterEqual?
dropout_236/dropout/CastCast$dropout_236/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout_236/dropout/Cast?
dropout_236/dropout/Mul_1Muldropout_236/dropout/Mul:z:0dropout_236/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout_236/dropout/Mul_1w
flatten_118/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_118/Const?
flatten_118/ReshapeReshapedropout_236/dropout/Mul_1:z:0flatten_118/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_118/Reshape?
dense_236/MatMul/ReadVariableOpReadVariableOp(dense_236_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_236/MatMul/ReadVariableOp?
dense_236/MatMulMatMulflatten_118/Reshape:output:0'dense_236/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_236/MatMul?
 dense_236/BiasAdd/ReadVariableOpReadVariableOp)dense_236_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_236/BiasAdd/ReadVariableOp?
dense_236/BiasAddBiasAdddense_236/MatMul:product:0(dense_236/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_236/BiasAddw
dense_236/ReluReludense_236/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_236/Relu{
dropout_237/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_237/dropout/Const?
dropout_237/dropout/MulMuldense_236/Relu:activations:0"dropout_237/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_237/dropout/Mul?
dropout_237/dropout/ShapeShapedense_236/Relu:activations:0*
T0*
_output_shapes
:2
dropout_237/dropout/Shape?
0dropout_237/dropout/random_uniform/RandomUniformRandomUniform"dropout_237/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_237/dropout/random_uniform/RandomUniform?
"dropout_237/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"dropout_237/dropout/GreaterEqual/y?
 dropout_237/dropout/GreaterEqualGreaterEqual9dropout_237/dropout/random_uniform/RandomUniform:output:0+dropout_237/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_237/dropout/GreaterEqual?
dropout_237/dropout/CastCast$dropout_237/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_237/dropout/Cast?
dropout_237/dropout/Mul_1Muldropout_237/dropout/Mul:z:0dropout_237/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_237/dropout/Mul_1?
dense_237/MatMul/ReadVariableOpReadVariableOp(dense_237_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_237/MatMul/ReadVariableOp?
dense_237/MatMulMatMuldropout_237/dropout/Mul_1:z:0'dense_237/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_237/MatMul?
 dense_237/BiasAdd/ReadVariableOpReadVariableOp)dense_237_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_237/BiasAdd/ReadVariableOp?
dense_237/BiasAddBiasAdddense_237/MatMul:product:0(dense_237/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_237/BiasAdd
dense_237/SoftmaxSoftmaxdense_237/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_237/Softmax?
IdentityIdentitydense_237/Softmax:softmax:0"^conv2d_236/BiasAdd/ReadVariableOp!^conv2d_236/Conv2D/ReadVariableOp"^conv2d_237/BiasAdd/ReadVariableOp!^conv2d_237/Conv2D/ReadVariableOp!^dense_236/BiasAdd/ReadVariableOp ^dense_236/MatMul/ReadVariableOp!^dense_237/BiasAdd/ReadVariableOp ^dense_237/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_236/BiasAdd/ReadVariableOp!conv2d_236/BiasAdd/ReadVariableOp2D
 conv2d_236/Conv2D/ReadVariableOp conv2d_236/Conv2D/ReadVariableOp2F
!conv2d_237/BiasAdd/ReadVariableOp!conv2d_237/BiasAdd/ReadVariableOp2D
 conv2d_237/Conv2D/ReadVariableOp conv2d_237/Conv2D/ReadVariableOp2D
 dense_236/BiasAdd/ReadVariableOp dense_236/BiasAdd/ReadVariableOp2B
dense_236/MatMul/ReadVariableOpdense_236/MatMul/ReadVariableOp2D
 dense_237/BiasAdd/ReadVariableOp dense_237/BiasAdd/ReadVariableOp2B
dense_237/MatMul/ReadVariableOpdense_237/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550225
conv2d_236_input,
conv2d_236_2550199:  
conv2d_236_2550201: ,
conv2d_237_2550205: 0 
conv2d_237_2550207:0%
dense_236_2550213:
?? 
dense_236_2550215:	?$
dense_237_2550219:	?

dense_237_2550221:

identity??"conv2d_236/StatefulPartitionedCall?"conv2d_237/StatefulPartitionedCall?!dense_236/StatefulPartitionedCall?!dense_237/StatefulPartitionedCall?#dropout_236/StatefulPartitionedCall?#dropout_237/StatefulPartitionedCall?
"conv2d_236/StatefulPartitionedCallStatefulPartitionedCallconv2d_236_inputconv2d_236_2550199conv2d_236_2550201*
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
G__inference_conv2d_236_layer_call_and_return_conditional_losses_25498822$
"conv2d_236/StatefulPartitionedCall?
!max_pooling2d_236/PartitionedCallPartitionedCall+conv2d_236/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_25498462#
!max_pooling2d_236/PartitionedCall?
"conv2d_237/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_236/PartitionedCall:output:0conv2d_237_2550205conv2d_237_2550207*
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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_25499002$
"conv2d_237/StatefulPartitionedCall?
!max_pooling2d_237/PartitionedCallPartitionedCall+conv2d_237/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_25498582#
!max_pooling2d_237/PartitionedCall?
#dropout_236/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_237/PartitionedCall:output:0*
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
H__inference_dropout_236_layer_call_and_return_conditional_losses_25500522%
#dropout_236/StatefulPartitionedCall?
flatten_118/PartitionedCallPartitionedCall,dropout_236/StatefulPartitionedCall:output:0*
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
H__inference_flatten_118_layer_call_and_return_conditional_losses_25499202
flatten_118/PartitionedCall?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$flatten_118/PartitionedCall:output:0dense_236_2550213dense_236_2550215*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_25499332#
!dense_236/StatefulPartitionedCall?
#dropout_237/StatefulPartitionedCallStatefulPartitionedCall*dense_236/StatefulPartitionedCall:output:0$^dropout_236/StatefulPartitionedCall*
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
H__inference_dropout_237_layer_call_and_return_conditional_losses_25500132%
#dropout_237/StatefulPartitionedCall?
!dense_237/StatefulPartitionedCallStatefulPartitionedCall,dropout_237/StatefulPartitionedCall:output:0dense_237_2550219dense_237_2550221*
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
F__inference_dense_237_layer_call_and_return_conditional_losses_25499572#
!dense_237/StatefulPartitionedCall?
IdentityIdentity*dense_237/StatefulPartitionedCall:output:0#^conv2d_236/StatefulPartitionedCall#^conv2d_237/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall$^dropout_236/StatefulPartitionedCall$^dropout_237/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_236/StatefulPartitionedCall"conv2d_236/StatefulPartitionedCall2H
"conv2d_237/StatefulPartitionedCall"conv2d_237/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall2J
#dropout_236/StatefulPartitionedCall#dropout_236/StatefulPartitionedCall2J
#dropout_237/StatefulPartitionedCall#dropout_237/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_236_input
?
I
-__inference_dropout_236_layer_call_fn_2550431

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
H__inference_dropout_236_layer_call_and_return_conditional_losses_25499122
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
?
f
-__inference_dropout_236_layer_call_fn_2550436

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
H__inference_dropout_236_layer_call_and_return_conditional_losses_25500522
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
?	
?
0__inference_sequential_118_layer_call_fn_2550296

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
K__inference_sequential_118_layer_call_and_return_conditional_losses_25501272
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
?
?
+__inference_dense_237_layer_call_fn_2550520

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
F__inference_dense_237_layer_call_and_return_conditional_losses_25499572
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
F__inference_dense_236_layer_call_and_return_conditional_losses_2549933

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
?
O
3__inference_max_pooling2d_236_layer_call_fn_2549852

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
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_25498462
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
+__inference_dense_236_layer_call_fn_2550473

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
F__inference_dense_236_layer_call_and_return_conditional_losses_25499332
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
0__inference_sequential_118_layer_call_fn_2549983
conv2d_236_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_236_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
K__inference_sequential_118_layer_call_and_return_conditional_losses_25499642
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
_user_specified_nameconv2d_236_input
?
?
,__inference_conv2d_236_layer_call_fn_2550395

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
G__inference_conv2d_236_layer_call_and_return_conditional_losses_25498822
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
??
?
#__inference__traced_restore_2550768
file_prefix<
"assignvariableop_conv2d_236_kernel: 0
"assignvariableop_1_conv2d_236_bias: >
$assignvariableop_2_conv2d_237_kernel: 00
"assignvariableop_3_conv2d_237_bias:07
#assignvariableop_4_dense_236_kernel:
??0
!assignvariableop_5_dense_236_bias:	?6
#assignvariableop_6_dense_237_kernel:	?
/
!assignvariableop_7_dense_237_bias:
'
assignvariableop_8_nadam_iter:	 )
assignvariableop_9_nadam_beta_1: *
 assignvariableop_10_nadam_beta_2: )
assignvariableop_11_nadam_decay: 1
'assignvariableop_12_nadam_learning_rate: 2
(assignvariableop_13_nadam_momentum_cache: #
assignvariableop_14_total: #
assignvariableop_15_count: %
assignvariableop_16_total_1: %
assignvariableop_17_count_1: G
-assignvariableop_18_nadam_conv2d_236_kernel_m: 9
+assignvariableop_19_nadam_conv2d_236_bias_m: G
-assignvariableop_20_nadam_conv2d_237_kernel_m: 09
+assignvariableop_21_nadam_conv2d_237_bias_m:0@
,assignvariableop_22_nadam_dense_236_kernel_m:
??9
*assignvariableop_23_nadam_dense_236_bias_m:	??
,assignvariableop_24_nadam_dense_237_kernel_m:	?
8
*assignvariableop_25_nadam_dense_237_bias_m:
G
-assignvariableop_26_nadam_conv2d_236_kernel_v: 9
+assignvariableop_27_nadam_conv2d_236_bias_v: G
-assignvariableop_28_nadam_conv2d_237_kernel_v: 09
+assignvariableop_29_nadam_conv2d_237_bias_v:0@
,assignvariableop_30_nadam_dense_236_kernel_v:
??9
*assignvariableop_31_nadam_dense_236_bias_v:	??
,assignvariableop_32_nadam_dense_237_kernel_v:	?
8
*assignvariableop_33_nadam_dense_237_bias_v:

identity_35??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*?
value?B?#B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/momentum_cache/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:#*
dtype0*Y
valuePBN#B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::*1
dtypes'
%2#	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_236_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_236_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_237_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_237_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_236_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_236_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_237_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_237_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_nadam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_nadam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp assignvariableop_10_nadam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_nadam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp'assignvariableop_12_nadam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp(assignvariableop_13_nadam_momentum_cacheIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpassignvariableop_14_totalIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOpassignvariableop_15_countIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_total_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_count_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp-assignvariableop_18_nadam_conv2d_236_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_nadam_conv2d_236_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp-assignvariableop_20_nadam_conv2d_237_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_nadam_conv2d_237_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp,assignvariableop_22_nadam_dense_236_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp*assignvariableop_23_nadam_dense_236_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp,assignvariableop_24_nadam_dense_237_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp*assignvariableop_25_nadam_dense_237_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp-assignvariableop_26_nadam_conv2d_236_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp+assignvariableop_27_nadam_conv2d_236_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp-assignvariableop_28_nadam_conv2d_237_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp+assignvariableop_29_nadam_conv2d_237_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp,assignvariableop_30_nadam_dense_236_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp*assignvariableop_31_nadam_dense_236_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp,assignvariableop_32_nadam_dense_237_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp*assignvariableop_33_nadam_dense_237_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_339
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_34Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_34?
Identity_35IdentityIdentity_34:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_35"#
identity_35Identity_35:output:0*Y
_input_shapesH
F: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332(
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
0__inference_sequential_118_layer_call_fn_2550167
conv2d_236_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_236_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
K__inference_sequential_118_layer_call_and_return_conditional_losses_25501272
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
_user_specified_nameconv2d_236_input
?2
?
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550334

inputsC
)conv2d_236_conv2d_readvariableop_resource: 8
*conv2d_236_biasadd_readvariableop_resource: C
)conv2d_237_conv2d_readvariableop_resource: 08
*conv2d_237_biasadd_readvariableop_resource:0<
(dense_236_matmul_readvariableop_resource:
??8
)dense_236_biasadd_readvariableop_resource:	?;
(dense_237_matmul_readvariableop_resource:	?
7
)dense_237_biasadd_readvariableop_resource:

identity??!conv2d_236/BiasAdd/ReadVariableOp? conv2d_236/Conv2D/ReadVariableOp?!conv2d_237/BiasAdd/ReadVariableOp? conv2d_237/Conv2D/ReadVariableOp? dense_236/BiasAdd/ReadVariableOp?dense_236/MatMul/ReadVariableOp? dense_237/BiasAdd/ReadVariableOp?dense_237/MatMul/ReadVariableOp?
 conv2d_236/Conv2D/ReadVariableOpReadVariableOp)conv2d_236_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_236/Conv2D/ReadVariableOp?
conv2d_236/Conv2DConv2Dinputs(conv2d_236/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_236/Conv2D?
!conv2d_236/BiasAdd/ReadVariableOpReadVariableOp*conv2d_236_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_236/BiasAdd/ReadVariableOp?
conv2d_236/BiasAddBiasAddconv2d_236/Conv2D:output:0)conv2d_236/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_236/BiasAdd?
conv2d_236/ReluReluconv2d_236/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_236/Relu?
max_pooling2d_236/MaxPoolMaxPoolconv2d_236/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_236/MaxPool?
 conv2d_237/Conv2D/ReadVariableOpReadVariableOp)conv2d_237_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_237/Conv2D/ReadVariableOp?
conv2d_237/Conv2DConv2D"max_pooling2d_236/MaxPool:output:0(conv2d_237/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_237/Conv2D?
!conv2d_237/BiasAdd/ReadVariableOpReadVariableOp*conv2d_237_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_237/BiasAdd/ReadVariableOp?
conv2d_237/BiasAddBiasAddconv2d_237/Conv2D:output:0)conv2d_237/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_237/BiasAdd?
conv2d_237/ReluReluconv2d_237/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_237/Relu?
max_pooling2d_237/MaxPoolMaxPoolconv2d_237/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_237/MaxPool?
dropout_236/IdentityIdentity"max_pooling2d_237/MaxPool:output:0*
T0*/
_output_shapes
:?????????02
dropout_236/Identityw
flatten_118/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_118/Const?
flatten_118/ReshapeReshapedropout_236/Identity:output:0flatten_118/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_118/Reshape?
dense_236/MatMul/ReadVariableOpReadVariableOp(dense_236_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_236/MatMul/ReadVariableOp?
dense_236/MatMulMatMulflatten_118/Reshape:output:0'dense_236/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_236/MatMul?
 dense_236/BiasAdd/ReadVariableOpReadVariableOp)dense_236_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_236/BiasAdd/ReadVariableOp?
dense_236/BiasAddBiasAdddense_236/MatMul:product:0(dense_236/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_236/BiasAddw
dense_236/ReluReludense_236/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_236/Relu?
dropout_237/IdentityIdentitydense_236/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_237/Identity?
dense_237/MatMul/ReadVariableOpReadVariableOp(dense_237_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_237/MatMul/ReadVariableOp?
dense_237/MatMulMatMuldropout_237/Identity:output:0'dense_237/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_237/MatMul?
 dense_237/BiasAdd/ReadVariableOpReadVariableOp)dense_237_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_237/BiasAdd/ReadVariableOp?
dense_237/BiasAddBiasAdddense_237/MatMul:product:0(dense_237/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_237/BiasAdd
dense_237/SoftmaxSoftmaxdense_237/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_237/Softmax?
IdentityIdentitydense_237/Softmax:softmax:0"^conv2d_236/BiasAdd/ReadVariableOp!^conv2d_236/Conv2D/ReadVariableOp"^conv2d_237/BiasAdd/ReadVariableOp!^conv2d_237/Conv2D/ReadVariableOp!^dense_236/BiasAdd/ReadVariableOp ^dense_236/MatMul/ReadVariableOp!^dense_237/BiasAdd/ReadVariableOp ^dense_237/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_236/BiasAdd/ReadVariableOp!conv2d_236/BiasAdd/ReadVariableOp2D
 conv2d_236/Conv2D/ReadVariableOp conv2d_236/Conv2D/ReadVariableOp2F
!conv2d_237/BiasAdd/ReadVariableOp!conv2d_237/BiasAdd/ReadVariableOp2D
 conv2d_237/Conv2D/ReadVariableOp conv2d_237/Conv2D/ReadVariableOp2D
 dense_236/BiasAdd/ReadVariableOp dense_236/BiasAdd/ReadVariableOp2B
dense_236/MatMul/ReadVariableOpdense_236/MatMul/ReadVariableOp2D
 dense_237/BiasAdd/ReadVariableOp dense_237/BiasAdd/ReadVariableOp2B
dense_237/MatMul/ReadVariableOpdense_237/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
g
H__inference_dropout_237_layer_call_and_return_conditional_losses_2550511

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
K__inference_sequential_118_layer_call_and_return_conditional_losses_2549964

inputs,
conv2d_236_2549883:  
conv2d_236_2549885: ,
conv2d_237_2549901: 0 
conv2d_237_2549903:0%
dense_236_2549934:
?? 
dense_236_2549936:	?$
dense_237_2549958:	?

dense_237_2549960:

identity??"conv2d_236/StatefulPartitionedCall?"conv2d_237/StatefulPartitionedCall?!dense_236/StatefulPartitionedCall?!dense_237/StatefulPartitionedCall?
"conv2d_236/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_236_2549883conv2d_236_2549885*
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
G__inference_conv2d_236_layer_call_and_return_conditional_losses_25498822$
"conv2d_236/StatefulPartitionedCall?
!max_pooling2d_236/PartitionedCallPartitionedCall+conv2d_236/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_25498462#
!max_pooling2d_236/PartitionedCall?
"conv2d_237/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_236/PartitionedCall:output:0conv2d_237_2549901conv2d_237_2549903*
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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_25499002$
"conv2d_237/StatefulPartitionedCall?
!max_pooling2d_237/PartitionedCallPartitionedCall+conv2d_237/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_25498582#
!max_pooling2d_237/PartitionedCall?
dropout_236/PartitionedCallPartitionedCall*max_pooling2d_237/PartitionedCall:output:0*
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
H__inference_dropout_236_layer_call_and_return_conditional_losses_25499122
dropout_236/PartitionedCall?
flatten_118/PartitionedCallPartitionedCall$dropout_236/PartitionedCall:output:0*
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
H__inference_flatten_118_layer_call_and_return_conditional_losses_25499202
flatten_118/PartitionedCall?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$flatten_118/PartitionedCall:output:0dense_236_2549934dense_236_2549936*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_25499332#
!dense_236/StatefulPartitionedCall?
dropout_237/PartitionedCallPartitionedCall*dense_236/StatefulPartitionedCall:output:0*
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
H__inference_dropout_237_layer_call_and_return_conditional_losses_25499442
dropout_237/PartitionedCall?
!dense_237/StatefulPartitionedCallStatefulPartitionedCall$dropout_237/PartitionedCall:output:0dense_237_2549958dense_237_2549960*
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
F__inference_dense_237_layer_call_and_return_conditional_losses_25499572#
!dense_237/StatefulPartitionedCall?
IdentityIdentity*dense_237/StatefulPartitionedCall:output:0#^conv2d_236/StatefulPartitionedCall#^conv2d_237/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_236/StatefulPartitionedCall"conv2d_236/StatefulPartitionedCall2H
"conv2d_237/StatefulPartitionedCall"conv2d_237/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?

?
F__inference_dense_237_layer_call_and_return_conditional_losses_2549957

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
-__inference_flatten_118_layer_call_fn_2550458

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
H__inference_flatten_118_layer_call_and_return_conditional_losses_25499202
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
?
f
H__inference_dropout_236_layer_call_and_return_conditional_losses_2550441

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
?
I
-__inference_dropout_237_layer_call_fn_2550489

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
H__inference_dropout_237_layer_call_and_return_conditional_losses_25499442
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
?

?
F__inference_dense_237_layer_call_and_return_conditional_losses_2550531

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
?(
?
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550196
conv2d_236_input,
conv2d_236_2550170:  
conv2d_236_2550172: ,
conv2d_237_2550176: 0 
conv2d_237_2550178:0%
dense_236_2550184:
?? 
dense_236_2550186:	?$
dense_237_2550190:	?

dense_237_2550192:

identity??"conv2d_236/StatefulPartitionedCall?"conv2d_237/StatefulPartitionedCall?!dense_236/StatefulPartitionedCall?!dense_237/StatefulPartitionedCall?
"conv2d_236/StatefulPartitionedCallStatefulPartitionedCallconv2d_236_inputconv2d_236_2550170conv2d_236_2550172*
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
G__inference_conv2d_236_layer_call_and_return_conditional_losses_25498822$
"conv2d_236/StatefulPartitionedCall?
!max_pooling2d_236/PartitionedCallPartitionedCall+conv2d_236/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_25498462#
!max_pooling2d_236/PartitionedCall?
"conv2d_237/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_236/PartitionedCall:output:0conv2d_237_2550176conv2d_237_2550178*
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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_25499002$
"conv2d_237/StatefulPartitionedCall?
!max_pooling2d_237/PartitionedCallPartitionedCall+conv2d_237/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_25498582#
!max_pooling2d_237/PartitionedCall?
dropout_236/PartitionedCallPartitionedCall*max_pooling2d_237/PartitionedCall:output:0*
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
H__inference_dropout_236_layer_call_and_return_conditional_losses_25499122
dropout_236/PartitionedCall?
flatten_118/PartitionedCallPartitionedCall$dropout_236/PartitionedCall:output:0*
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
H__inference_flatten_118_layer_call_and_return_conditional_losses_25499202
flatten_118/PartitionedCall?
!dense_236/StatefulPartitionedCallStatefulPartitionedCall$flatten_118/PartitionedCall:output:0dense_236_2550184dense_236_2550186*
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
F__inference_dense_236_layer_call_and_return_conditional_losses_25499332#
!dense_236/StatefulPartitionedCall?
dropout_237/PartitionedCallPartitionedCall*dense_236/StatefulPartitionedCall:output:0*
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
H__inference_dropout_237_layer_call_and_return_conditional_losses_25499442
dropout_237/PartitionedCall?
!dense_237/StatefulPartitionedCallStatefulPartitionedCall$dropout_237/PartitionedCall:output:0dense_237_2550190dense_237_2550192*
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
F__inference_dense_237_layer_call_and_return_conditional_losses_25499572#
!dense_237/StatefulPartitionedCall?
IdentityIdentity*dense_237/StatefulPartitionedCall:output:0#^conv2d_236/StatefulPartitionedCall#^conv2d_237/StatefulPartitionedCall"^dense_236/StatefulPartitionedCall"^dense_237/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_236/StatefulPartitionedCall"conv2d_236/StatefulPartitionedCall2H
"conv2d_237/StatefulPartitionedCall"conv2d_237/StatefulPartitionedCall2F
!dense_236/StatefulPartitionedCall!dense_236/StatefulPartitionedCall2F
!dense_237/StatefulPartitionedCall!dense_237/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_236_input
?
f
-__inference_dropout_237_layer_call_fn_2550494

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
H__inference_dropout_237_layer_call_and_return_conditional_losses_25500132
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
?

?
F__inference_dense_236_layer_call_and_return_conditional_losses_2550484

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
g
H__inference_dropout_236_layer_call_and_return_conditional_losses_2550052

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
?
f
H__inference_dropout_237_layer_call_and_return_conditional_losses_2549944

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
j
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_2549846

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
?
G__inference_conv2d_236_layer_call_and_return_conditional_losses_2549882

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
H__inference_dropout_237_layer_call_and_return_conditional_losses_2550013

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
H__inference_flatten_118_layer_call_and_return_conditional_losses_2550464

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
%__inference_signature_wrapper_2550254
conv2d_236_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_236_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_25498402
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
_user_specified_nameconv2d_236_input
?A
?
"__inference__wrapped_model_2549840
conv2d_236_inputR
8sequential_118_conv2d_236_conv2d_readvariableop_resource: G
9sequential_118_conv2d_236_biasadd_readvariableop_resource: R
8sequential_118_conv2d_237_conv2d_readvariableop_resource: 0G
9sequential_118_conv2d_237_biasadd_readvariableop_resource:0K
7sequential_118_dense_236_matmul_readvariableop_resource:
??G
8sequential_118_dense_236_biasadd_readvariableop_resource:	?J
7sequential_118_dense_237_matmul_readvariableop_resource:	?
F
8sequential_118_dense_237_biasadd_readvariableop_resource:

identity??0sequential_118/conv2d_236/BiasAdd/ReadVariableOp?/sequential_118/conv2d_236/Conv2D/ReadVariableOp?0sequential_118/conv2d_237/BiasAdd/ReadVariableOp?/sequential_118/conv2d_237/Conv2D/ReadVariableOp?/sequential_118/dense_236/BiasAdd/ReadVariableOp?.sequential_118/dense_236/MatMul/ReadVariableOp?/sequential_118/dense_237/BiasAdd/ReadVariableOp?.sequential_118/dense_237/MatMul/ReadVariableOp?
/sequential_118/conv2d_236/Conv2D/ReadVariableOpReadVariableOp8sequential_118_conv2d_236_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/sequential_118/conv2d_236/Conv2D/ReadVariableOp?
 sequential_118/conv2d_236/Conv2DConv2Dconv2d_236_input7sequential_118/conv2d_236/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 sequential_118/conv2d_236/Conv2D?
0sequential_118/conv2d_236/BiasAdd/ReadVariableOpReadVariableOp9sequential_118_conv2d_236_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_118/conv2d_236/BiasAdd/ReadVariableOp?
!sequential_118/conv2d_236/BiasAddBiasAdd)sequential_118/conv2d_236/Conv2D:output:08sequential_118/conv2d_236/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!sequential_118/conv2d_236/BiasAdd?
sequential_118/conv2d_236/ReluRelu*sequential_118/conv2d_236/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
sequential_118/conv2d_236/Relu?
(sequential_118/max_pooling2d_236/MaxPoolMaxPool,sequential_118/conv2d_236/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(sequential_118/max_pooling2d_236/MaxPool?
/sequential_118/conv2d_237/Conv2D/ReadVariableOpReadVariableOp8sequential_118_conv2d_237_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype021
/sequential_118/conv2d_237/Conv2D/ReadVariableOp?
 sequential_118/conv2d_237/Conv2DConv2D1sequential_118/max_pooling2d_236/MaxPool:output:07sequential_118/conv2d_237/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2"
 sequential_118/conv2d_237/Conv2D?
0sequential_118/conv2d_237/BiasAdd/ReadVariableOpReadVariableOp9sequential_118_conv2d_237_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype022
0sequential_118/conv2d_237/BiasAdd/ReadVariableOp?
!sequential_118/conv2d_237/BiasAddBiasAdd)sequential_118/conv2d_237/Conv2D:output:08sequential_118/conv2d_237/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02#
!sequential_118/conv2d_237/BiasAdd?
sequential_118/conv2d_237/ReluRelu*sequential_118/conv2d_237/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02 
sequential_118/conv2d_237/Relu?
(sequential_118/max_pooling2d_237/MaxPoolMaxPool,sequential_118/conv2d_237/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2*
(sequential_118/max_pooling2d_237/MaxPool?
#sequential_118/dropout_236/IdentityIdentity1sequential_118/max_pooling2d_237/MaxPool:output:0*
T0*/
_output_shapes
:?????????02%
#sequential_118/dropout_236/Identity?
 sequential_118/flatten_118/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2"
 sequential_118/flatten_118/Const?
"sequential_118/flatten_118/ReshapeReshape,sequential_118/dropout_236/Identity:output:0)sequential_118/flatten_118/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_118/flatten_118/Reshape?
.sequential_118/dense_236/MatMul/ReadVariableOpReadVariableOp7sequential_118_dense_236_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.sequential_118/dense_236/MatMul/ReadVariableOp?
sequential_118/dense_236/MatMulMatMul+sequential_118/flatten_118/Reshape:output:06sequential_118/dense_236/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_118/dense_236/MatMul?
/sequential_118/dense_236/BiasAdd/ReadVariableOpReadVariableOp8sequential_118_dense_236_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_118/dense_236/BiasAdd/ReadVariableOp?
 sequential_118/dense_236/BiasAddBiasAdd)sequential_118/dense_236/MatMul:product:07sequential_118/dense_236/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 sequential_118/dense_236/BiasAdd?
sequential_118/dense_236/ReluRelu)sequential_118/dense_236/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_118/dense_236/Relu?
#sequential_118/dropout_237/IdentityIdentity+sequential_118/dense_236/Relu:activations:0*
T0*(
_output_shapes
:??????????2%
#sequential_118/dropout_237/Identity?
.sequential_118/dense_237/MatMul/ReadVariableOpReadVariableOp7sequential_118_dense_237_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.sequential_118/dense_237/MatMul/ReadVariableOp?
sequential_118/dense_237/MatMulMatMul,sequential_118/dropout_237/Identity:output:06sequential_118/dense_237/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_118/dense_237/MatMul?
/sequential_118/dense_237/BiasAdd/ReadVariableOpReadVariableOp8sequential_118_dense_237_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/sequential_118/dense_237/BiasAdd/ReadVariableOp?
 sequential_118/dense_237/BiasAddBiasAdd)sequential_118/dense_237/MatMul:product:07sequential_118/dense_237/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 sequential_118/dense_237/BiasAdd?
 sequential_118/dense_237/SoftmaxSoftmax)sequential_118/dense_237/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 sequential_118/dense_237/Softmax?
IdentityIdentity*sequential_118/dense_237/Softmax:softmax:01^sequential_118/conv2d_236/BiasAdd/ReadVariableOp0^sequential_118/conv2d_236/Conv2D/ReadVariableOp1^sequential_118/conv2d_237/BiasAdd/ReadVariableOp0^sequential_118/conv2d_237/Conv2D/ReadVariableOp0^sequential_118/dense_236/BiasAdd/ReadVariableOp/^sequential_118/dense_236/MatMul/ReadVariableOp0^sequential_118/dense_237/BiasAdd/ReadVariableOp/^sequential_118/dense_237/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2d
0sequential_118/conv2d_236/BiasAdd/ReadVariableOp0sequential_118/conv2d_236/BiasAdd/ReadVariableOp2b
/sequential_118/conv2d_236/Conv2D/ReadVariableOp/sequential_118/conv2d_236/Conv2D/ReadVariableOp2d
0sequential_118/conv2d_237/BiasAdd/ReadVariableOp0sequential_118/conv2d_237/BiasAdd/ReadVariableOp2b
/sequential_118/conv2d_237/Conv2D/ReadVariableOp/sequential_118/conv2d_237/Conv2D/ReadVariableOp2b
/sequential_118/dense_236/BiasAdd/ReadVariableOp/sequential_118/dense_236/BiasAdd/ReadVariableOp2`
.sequential_118/dense_236/MatMul/ReadVariableOp.sequential_118/dense_236/MatMul/ReadVariableOp2b
/sequential_118/dense_237/BiasAdd/ReadVariableOp/sequential_118/dense_237/BiasAdd/ReadVariableOp2`
.sequential_118/dense_237/MatMul/ReadVariableOp.sequential_118/dense_237/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_236_input
?
f
H__inference_dropout_236_layer_call_and_return_conditional_losses_2549912

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
conv2d_236_inputA
"serving_default_conv2d_236_input:0?????????=
	dense_2370
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
?__call__
+?&call_and_return_all_conditional_losses
?_default_save_signature"?D
_tf_keras_sequential?D{"name": "sequential_118", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_118", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_236_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_236", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_236", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_237", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_237", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_236", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_118", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_236", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_237", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_237", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "conv2d_236_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_118", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_236_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_236", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_236", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_237", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_237", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Dropout", "config": {"name": "dropout_236", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_118", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_236", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Dropout", "config": {"name": "dropout_237", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_237", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Nadam", "config": {"name": "Nadam", "learning_rate": 0.0010000000474974513, "decay": 0.004, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07}}}}
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
{"name": "conv2d_236", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_236", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_236", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_236", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_237", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_237", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 32]}}
?
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_237", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_237", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
?
$trainable_variables
%regularization_losses
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_236", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_236", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}
?
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_118", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_118", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 24}}
?

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_236", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_236", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2352}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2352]}}
?
2trainable_variables
3regularization_losses
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_237", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_237", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_237", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_237", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
<iter

=beta_1

>beta_2
	?decay
@learning_rate
Amomentum_cachemm?m?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?"
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

Blayers
Cnon_trainable_variables
Dmetrics
trainable_variables
Elayer_metrics
regularization_losses
Flayer_regularization_losses
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv2d_236/kernel
: 2conv2d_236/bias
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

Glayers
Hnon_trainable_variables
Imetrics
trainable_variables
Jlayer_metrics
regularization_losses
Klayer_regularization_losses
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

Llayers
Mnon_trainable_variables
Nmetrics
trainable_variables
Olayer_metrics
regularization_losses
Player_regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 02conv2d_237/kernel
:02conv2d_237/bias
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

Qlayers
Rnon_trainable_variables
Smetrics
trainable_variables
Tlayer_metrics
regularization_losses
Ulayer_regularization_losses
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

Vlayers
Wnon_trainable_variables
Xmetrics
 trainable_variables
Ylayer_metrics
!regularization_losses
Zlayer_regularization_losses
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

[layers
\non_trainable_variables
]metrics
$trainable_variables
^layer_metrics
%regularization_losses
_layer_regularization_losses
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

`layers
anon_trainable_variables
bmetrics
(trainable_variables
clayer_metrics
)regularization_losses
dlayer_regularization_losses
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_236/kernel
:?2dense_236/bias
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

elayers
fnon_trainable_variables
gmetrics
.trainable_variables
hlayer_metrics
/regularization_losses
ilayer_regularization_losses
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

jlayers
knon_trainable_variables
lmetrics
2trainable_variables
mlayer_metrics
3regularization_losses
nlayer_regularization_losses
4	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_237/kernel
:
2dense_237/bias
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

olayers
pnon_trainable_variables
qmetrics
8trainable_variables
rlayer_metrics
9regularization_losses
slayer_regularization_losses
:	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2
Nadam/iter
: (2Nadam/beta_1
: (2Nadam/beta_2
: (2Nadam/decay
: (2Nadam/learning_rate
: (2Nadam/momentum_cache
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
t0
u1"
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
	vtotal
	wcount
x	variables
y	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 27}
?
	ztotal
	{count
|
_fn_kwargs
}	variables
~	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}
:  (2total
:  (2count
.
v0
w1"
trackable_list_wrapper
-
x	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
z0
{1"
trackable_list_wrapper
-
}	variables"
_generic_user_object
1:/ 2Nadam/conv2d_236/kernel/m
#:! 2Nadam/conv2d_236/bias/m
1:/ 02Nadam/conv2d_237/kernel/m
#:!02Nadam/conv2d_237/bias/m
*:(
??2Nadam/dense_236/kernel/m
#:!?2Nadam/dense_236/bias/m
):'	?
2Nadam/dense_237/kernel/m
": 
2Nadam/dense_237/bias/m
1:/ 2Nadam/conv2d_236/kernel/v
#:! 2Nadam/conv2d_236/bias/v
1:/ 02Nadam/conv2d_237/kernel/v
#:!02Nadam/conv2d_237/bias/v
*:(
??2Nadam/dense_236/kernel/v
#:!?2Nadam/dense_236/bias/v
):'	?
2Nadam/dense_237/kernel/v
": 
2Nadam/dense_237/bias/v
?2?
0__inference_sequential_118_layer_call_fn_2549983
0__inference_sequential_118_layer_call_fn_2550275
0__inference_sequential_118_layer_call_fn_2550296
0__inference_sequential_118_layer_call_fn_2550167?
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
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550334
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550386
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550196
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550225?
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
"__inference__wrapped_model_2549840?
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
conv2d_236_input?????????
?2?
,__inference_conv2d_236_layer_call_fn_2550395?
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
G__inference_conv2d_236_layer_call_and_return_conditional_losses_2550406?
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
3__inference_max_pooling2d_236_layer_call_fn_2549852?
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
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_2549846?
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
,__inference_conv2d_237_layer_call_fn_2550415?
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
G__inference_conv2d_237_layer_call_and_return_conditional_losses_2550426?
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
3__inference_max_pooling2d_237_layer_call_fn_2549864?
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
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_2549858?
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
-__inference_dropout_236_layer_call_fn_2550431
-__inference_dropout_236_layer_call_fn_2550436?
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
H__inference_dropout_236_layer_call_and_return_conditional_losses_2550441
H__inference_dropout_236_layer_call_and_return_conditional_losses_2550453?
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
-__inference_flatten_118_layer_call_fn_2550458?
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
H__inference_flatten_118_layer_call_and_return_conditional_losses_2550464?
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
+__inference_dense_236_layer_call_fn_2550473?
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
F__inference_dense_236_layer_call_and_return_conditional_losses_2550484?
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
-__inference_dropout_237_layer_call_fn_2550489
-__inference_dropout_237_layer_call_fn_2550494?
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
H__inference_dropout_237_layer_call_and_return_conditional_losses_2550499
H__inference_dropout_237_layer_call_and_return_conditional_losses_2550511?
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
+__inference_dense_237_layer_call_fn_2550520?
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
F__inference_dense_237_layer_call_and_return_conditional_losses_2550531?
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
%__inference_signature_wrapper_2550254conv2d_236_input"?
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
"__inference__wrapped_model_2549840?,-67A?>
7?4
2?/
conv2d_236_input?????????
? "5?2
0
	dense_237#? 
	dense_237?????????
?
G__inference_conv2d_236_layer_call_and_return_conditional_losses_2550406l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_236_layer_call_fn_2550395_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
G__inference_conv2d_237_layer_call_and_return_conditional_losses_2550426l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_237_layer_call_fn_2550415_7?4
-?*
(?%
inputs????????? 
? " ??????????0?
F__inference_dense_236_layer_call_and_return_conditional_losses_2550484^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_236_layer_call_fn_2550473Q,-0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_237_layer_call_and_return_conditional_losses_2550531]670?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? 
+__inference_dense_237_layer_call_fn_2550520P670?-
&?#
!?
inputs??????????
? "??????????
?
H__inference_dropout_236_layer_call_and_return_conditional_losses_2550441l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_236_layer_call_and_return_conditional_losses_2550453l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_236_layer_call_fn_2550431_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_236_layer_call_fn_2550436_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
H__inference_dropout_237_layer_call_and_return_conditional_losses_2550499^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_237_layer_call_and_return_conditional_losses_2550511^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_237_layer_call_fn_2550489Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_237_layer_call_fn_2550494Q4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_flatten_118_layer_call_and_return_conditional_losses_2550464a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
-__inference_flatten_118_layer_call_fn_2550458T7?4
-?*
(?%
inputs?????????0
? "????????????
N__inference_max_pooling2d_236_layer_call_and_return_conditional_losses_2549846?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_236_layer_call_fn_2549852?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_237_layer_call_and_return_conditional_losses_2549858?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_237_layer_call_fn_2549864?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550196|,-67I?F
??<
2?/
conv2d_236_input?????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550225|,-67I?F
??<
2?/
conv2d_236_input?????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550334r,-67??<
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
K__inference_sequential_118_layer_call_and_return_conditional_losses_2550386r,-67??<
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
0__inference_sequential_118_layer_call_fn_2549983o,-67I?F
??<
2?/
conv2d_236_input?????????
p 

 
? "??????????
?
0__inference_sequential_118_layer_call_fn_2550167o,-67I?F
??<
2?/
conv2d_236_input?????????
p

 
? "??????????
?
0__inference_sequential_118_layer_call_fn_2550275e,-67??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
0__inference_sequential_118_layer_call_fn_2550296e,-67??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
%__inference_signature_wrapper_2550254?,-67U?R
? 
K?H
F
conv2d_236_input2?/
conv2d_236_input?????????"5?2
0
	dense_237#? 
	dense_237?????????
