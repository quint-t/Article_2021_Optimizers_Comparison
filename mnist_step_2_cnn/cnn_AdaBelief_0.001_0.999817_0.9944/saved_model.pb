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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
?
conv2d_196/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_196/kernel

%conv2d_196/kernel/Read/ReadVariableOpReadVariableOpconv2d_196/kernel*&
_output_shapes
: *
dtype0
v
conv2d_196/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_196/bias
o
#conv2d_196/bias/Read/ReadVariableOpReadVariableOpconv2d_196/bias*
_output_shapes
: *
dtype0
?
conv2d_197/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*"
shared_nameconv2d_197/kernel

%conv2d_197/kernel/Read/ReadVariableOpReadVariableOpconv2d_197/kernel*&
_output_shapes
: 0*
dtype0
v
conv2d_197/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_197/bias
o
#conv2d_197/bias/Read/ReadVariableOpReadVariableOpconv2d_197/bias*
_output_shapes
:0*
dtype0
~
dense_196/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_196/kernel
w
$dense_196/kernel/Read/ReadVariableOpReadVariableOpdense_196/kernel* 
_output_shapes
:
??*
dtype0
u
dense_196/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_196/bias
n
"dense_196/bias/Read/ReadVariableOpReadVariableOpdense_196/bias*
_output_shapes	
:?*
dtype0
}
dense_197/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_197/kernel
v
$dense_197/kernel/Read/ReadVariableOpReadVariableOpdense_197/kernel*
_output_shapes
:	?
*
dtype0
t
dense_197/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_197/bias
m
"dense_197/bias/Read/ReadVariableOpReadVariableOpdense_197/bias*
_output_shapes
:
*
dtype0
?
AdaBeliefOptimizer/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *(
shared_nameAdaBeliefOptimizer/iter
{
+AdaBeliefOptimizer/iter/Read/ReadVariableOpReadVariableOpAdaBeliefOptimizer/iter*
_output_shapes
: *
dtype0	
?
AdaBeliefOptimizer/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdaBeliefOptimizer/beta_1

-AdaBeliefOptimizer/beta_1/Read/ReadVariableOpReadVariableOpAdaBeliefOptimizer/beta_1*
_output_shapes
: *
dtype0
?
AdaBeliefOptimizer/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdaBeliefOptimizer/beta_2

-AdaBeliefOptimizer/beta_2/Read/ReadVariableOpReadVariableOpAdaBeliefOptimizer/beta_2*
_output_shapes
: *
dtype0
?
AdaBeliefOptimizer/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdaBeliefOptimizer/decay
}
,AdaBeliefOptimizer/decay/Read/ReadVariableOpReadVariableOpAdaBeliefOptimizer/decay*
_output_shapes
: *
dtype0
?
 AdaBeliefOptimizer/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" AdaBeliefOptimizer/learning_rate
?
4AdaBeliefOptimizer/learning_rate/Read/ReadVariableOpReadVariableOp AdaBeliefOptimizer/learning_rate*
_output_shapes
: *
dtype0
?
AdaBeliefOptimizer/min_lrVarHandleOp*
_output_shapes
: *
dtype0*
shape: **
shared_nameAdaBeliefOptimizer/min_lr

-AdaBeliefOptimizer/min_lr/Read/ReadVariableOpReadVariableOpAdaBeliefOptimizer/min_lr*
_output_shapes
: *
dtype0
?
 AdaBeliefOptimizer/sma_thresholdVarHandleOp*
_output_shapes
: *
dtype0*
shape: *1
shared_name" AdaBeliefOptimizer/sma_threshold
?
4AdaBeliefOptimizer/sma_threshold/Read/ReadVariableOpReadVariableOp AdaBeliefOptimizer/sma_threshold*
_output_shapes
: *
dtype0
?
AdaBeliefOptimizer/total_stepsVarHandleOp*
_output_shapes
: *
dtype0*
shape: */
shared_name AdaBeliefOptimizer/total_steps
?
2AdaBeliefOptimizer/total_steps/Read/ReadVariableOpReadVariableOpAdaBeliefOptimizer/total_steps*
_output_shapes
: *
dtype0
?
$AdaBeliefOptimizer/warmup_proportionVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$AdaBeliefOptimizer/warmup_proportion
?
8AdaBeliefOptimizer/warmup_proportion/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/warmup_proportion*
_output_shapes
: *
dtype0
?
AdaBeliefOptimizer/weight_decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *0
shared_name!AdaBeliefOptimizer/weight_decay
?
3AdaBeliefOptimizer/weight_decay/Read/ReadVariableOpReadVariableOpAdaBeliefOptimizer/weight_decay*
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
&AdaBeliefOptimizer/conv2d_196/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&AdaBeliefOptimizer/conv2d_196/kernel/m
?
:AdaBeliefOptimizer/conv2d_196/kernel/m/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_196/kernel/m*&
_output_shapes
: *
dtype0
?
$AdaBeliefOptimizer/conv2d_196/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$AdaBeliefOptimizer/conv2d_196/bias/m
?
8AdaBeliefOptimizer/conv2d_196/bias/m/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_196/bias/m*
_output_shapes
: *
dtype0
?
&AdaBeliefOptimizer/conv2d_197/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*7
shared_name(&AdaBeliefOptimizer/conv2d_197/kernel/m
?
:AdaBeliefOptimizer/conv2d_197/kernel/m/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_197/kernel/m*&
_output_shapes
: 0*
dtype0
?
$AdaBeliefOptimizer/conv2d_197/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*5
shared_name&$AdaBeliefOptimizer/conv2d_197/bias/m
?
8AdaBeliefOptimizer/conv2d_197/bias/m/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_197/bias/m*
_output_shapes
:0*
dtype0
?
%AdaBeliefOptimizer/dense_196/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_196/kernel/m
?
9AdaBeliefOptimizer/dense_196/kernel/m/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_196/kernel/m* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_196/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_196/bias/m
?
7AdaBeliefOptimizer/dense_196/bias/m/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_196/bias/m*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_197/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*6
shared_name'%AdaBeliefOptimizer/dense_197/kernel/m
?
9AdaBeliefOptimizer/dense_197/kernel/m/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_197/kernel/m*
_output_shapes
:	?
*
dtype0
?
#AdaBeliefOptimizer/dense_197/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#AdaBeliefOptimizer/dense_197/bias/m
?
7AdaBeliefOptimizer/dense_197/bias/m/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_197/bias/m*
_output_shapes
:
*
dtype0
?
&AdaBeliefOptimizer/conv2d_196/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&AdaBeliefOptimizer/conv2d_196/kernel/v
?
:AdaBeliefOptimizer/conv2d_196/kernel/v/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_196/kernel/v*&
_output_shapes
: *
dtype0
?
$AdaBeliefOptimizer/conv2d_196/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$AdaBeliefOptimizer/conv2d_196/bias/v
?
8AdaBeliefOptimizer/conv2d_196/bias/v/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_196/bias/v*
_output_shapes
: *
dtype0
?
&AdaBeliefOptimizer/conv2d_197/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*7
shared_name(&AdaBeliefOptimizer/conv2d_197/kernel/v
?
:AdaBeliefOptimizer/conv2d_197/kernel/v/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_197/kernel/v*&
_output_shapes
: 0*
dtype0
?
$AdaBeliefOptimizer/conv2d_197/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*5
shared_name&$AdaBeliefOptimizer/conv2d_197/bias/v
?
8AdaBeliefOptimizer/conv2d_197/bias/v/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_197/bias/v*
_output_shapes
:0*
dtype0
?
%AdaBeliefOptimizer/dense_196/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_196/kernel/v
?
9AdaBeliefOptimizer/dense_196/kernel/v/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_196/kernel/v* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_196/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_196/bias/v
?
7AdaBeliefOptimizer/dense_196/bias/v/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_196/bias/v*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_197/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*6
shared_name'%AdaBeliefOptimizer/dense_197/kernel/v
?
9AdaBeliefOptimizer/dense_197/kernel/v/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_197/kernel/v*
_output_shapes
:	?
*
dtype0
?
#AdaBeliefOptimizer/dense_197/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#AdaBeliefOptimizer/dense_197/bias/v
?
7AdaBeliefOptimizer/dense_197/bias/v/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_197/bias/v*
_output_shapes
:
*
dtype0

NoOpNoOp
?A
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?@
value?@B?@ B?@
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
?
<iter

=beta_1

>beta_2
	?decay
@learning_rate

Amin_lr
Bsma_threshold
Ctotal_steps
Dwarmup_proportion
Eweight_decaym?m?m?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?
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

Flayers
Gnon_trainable_variables
Hmetrics
trainable_variables
Ilayer_metrics
regularization_losses
Jlayer_regularization_losses
	variables
 
][
VARIABLE_VALUEconv2d_196/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_196/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Klayers
Lnon_trainable_variables
Mmetrics
trainable_variables
Nlayer_metrics
regularization_losses
Olayer_regularization_losses
	variables
 
 
 
?

Players
Qnon_trainable_variables
Rmetrics
trainable_variables
Slayer_metrics
regularization_losses
Tlayer_regularization_losses
	variables
][
VARIABLE_VALUEconv2d_197/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_197/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
?

Ulayers
Vnon_trainable_variables
Wmetrics
trainable_variables
Xlayer_metrics
regularization_losses
Ylayer_regularization_losses
	variables
 
 
 
?

Zlayers
[non_trainable_variables
\metrics
 trainable_variables
]layer_metrics
!regularization_losses
^layer_regularization_losses
"	variables
 
 
 
?

_layers
`non_trainable_variables
ametrics
$trainable_variables
blayer_metrics
%regularization_losses
clayer_regularization_losses
&	variables
 
 
 
?

dlayers
enon_trainable_variables
fmetrics
(trainable_variables
glayer_metrics
)regularization_losses
hlayer_regularization_losses
*	variables
\Z
VARIABLE_VALUEdense_196/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_196/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

,0
-1
 

,0
-1
?

ilayers
jnon_trainable_variables
kmetrics
.trainable_variables
llayer_metrics
/regularization_losses
mlayer_regularization_losses
0	variables
 
 
 
?

nlayers
onon_trainable_variables
pmetrics
2trainable_variables
qlayer_metrics
3regularization_losses
rlayer_regularization_losses
4	variables
\Z
VARIABLE_VALUEdense_197/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_197/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE

60
71
 

60
71
?

slayers
tnon_trainable_variables
umetrics
8trainable_variables
vlayer_metrics
9regularization_losses
wlayer_regularization_losses
:	variables
VT
VARIABLE_VALUEAdaBeliefOptimizer/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdaBeliefOptimizer/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdaBeliefOptimizer/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEAdaBeliefOptimizer/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE AdaBeliefOptimizer/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdaBeliefOptimizer/min_lr+optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE AdaBeliefOptimizer/sma_threshold2optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEAdaBeliefOptimizer/total_steps0optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUE$AdaBeliefOptimizer/warmup_proportion6optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUEAdaBeliefOptimizer/weight_decay1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUE
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
x0
y1
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
	ztotal
	{count
|	variables
}	keras_api
G
	~total
	count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

z0
{1

|	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

~0
1

?	variables
??
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_196/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_196/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_197/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_197/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_196/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_196/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_197/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_197/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_196/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_196/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_197/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_197/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_196/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_196/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_197/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_197/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_196_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_196_inputconv2d_196/kernelconv2d_196/biasconv2d_197/kernelconv2d_197/biasdense_196/kerneldense_196/biasdense_197/kerneldense_197/bias*
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
%__inference_signature_wrapper_2115664
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_196/kernel/Read/ReadVariableOp#conv2d_196/bias/Read/ReadVariableOp%conv2d_197/kernel/Read/ReadVariableOp#conv2d_197/bias/Read/ReadVariableOp$dense_196/kernel/Read/ReadVariableOp"dense_196/bias/Read/ReadVariableOp$dense_197/kernel/Read/ReadVariableOp"dense_197/bias/Read/ReadVariableOp+AdaBeliefOptimizer/iter/Read/ReadVariableOp-AdaBeliefOptimizer/beta_1/Read/ReadVariableOp-AdaBeliefOptimizer/beta_2/Read/ReadVariableOp,AdaBeliefOptimizer/decay/Read/ReadVariableOp4AdaBeliefOptimizer/learning_rate/Read/ReadVariableOp-AdaBeliefOptimizer/min_lr/Read/ReadVariableOp4AdaBeliefOptimizer/sma_threshold/Read/ReadVariableOp2AdaBeliefOptimizer/total_steps/Read/ReadVariableOp8AdaBeliefOptimizer/warmup_proportion/Read/ReadVariableOp3AdaBeliefOptimizer/weight_decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_196/kernel/m/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_196/bias/m/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_197/kernel/m/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_197/bias/m/Read/ReadVariableOp9AdaBeliefOptimizer/dense_196/kernel/m/Read/ReadVariableOp7AdaBeliefOptimizer/dense_196/bias/m/Read/ReadVariableOp9AdaBeliefOptimizer/dense_197/kernel/m/Read/ReadVariableOp7AdaBeliefOptimizer/dense_197/bias/m/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_196/kernel/v/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_196/bias/v/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_197/kernel/v/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_197/bias/v/Read/ReadVariableOp9AdaBeliefOptimizer/dense_196/kernel/v/Read/ReadVariableOp7AdaBeliefOptimizer/dense_196/bias/v/Read/ReadVariableOp9AdaBeliefOptimizer/dense_197/kernel/v/Read/ReadVariableOp7AdaBeliefOptimizer/dense_197/bias/v/Read/ReadVariableOpConst*3
Tin,
*2(	*
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
 __inference__traced_save_2116078
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_196/kernelconv2d_196/biasconv2d_197/kernelconv2d_197/biasdense_196/kerneldense_196/biasdense_197/kerneldense_197/biasAdaBeliefOptimizer/iterAdaBeliefOptimizer/beta_1AdaBeliefOptimizer/beta_2AdaBeliefOptimizer/decay AdaBeliefOptimizer/learning_rateAdaBeliefOptimizer/min_lr AdaBeliefOptimizer/sma_thresholdAdaBeliefOptimizer/total_steps$AdaBeliefOptimizer/warmup_proportionAdaBeliefOptimizer/weight_decaytotalcounttotal_1count_1&AdaBeliefOptimizer/conv2d_196/kernel/m$AdaBeliefOptimizer/conv2d_196/bias/m&AdaBeliefOptimizer/conv2d_197/kernel/m$AdaBeliefOptimizer/conv2d_197/bias/m%AdaBeliefOptimizer/dense_196/kernel/m#AdaBeliefOptimizer/dense_196/bias/m%AdaBeliefOptimizer/dense_197/kernel/m#AdaBeliefOptimizer/dense_197/bias/m&AdaBeliefOptimizer/conv2d_196/kernel/v$AdaBeliefOptimizer/conv2d_196/bias/v&AdaBeliefOptimizer/conv2d_197/kernel/v$AdaBeliefOptimizer/conv2d_197/bias/v%AdaBeliefOptimizer/dense_196/kernel/v#AdaBeliefOptimizer/dense_196/bias/v%AdaBeliefOptimizer/dense_197/kernel/v#AdaBeliefOptimizer/dense_197/bias/v*2
Tin+
)2'*
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
#__inference__traced_restore_2116202??
?
f
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115851

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
/__inference_sequential_98_layer_call_fn_2115565
conv2d_196_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_196_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_21155252
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
_user_specified_nameconv2d_196_input
?
f
-__inference_dropout_197_layer_call_fn_2115904

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
H__inference_dropout_197_layer_call_and_return_conditional_losses_21154112
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
?2
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115744

inputsC
)conv2d_196_conv2d_readvariableop_resource: 8
*conv2d_196_biasadd_readvariableop_resource: C
)conv2d_197_conv2d_readvariableop_resource: 08
*conv2d_197_biasadd_readvariableop_resource:0<
(dense_196_matmul_readvariableop_resource:
??8
)dense_196_biasadd_readvariableop_resource:	?;
(dense_197_matmul_readvariableop_resource:	?
7
)dense_197_biasadd_readvariableop_resource:

identity??!conv2d_196/BiasAdd/ReadVariableOp? conv2d_196/Conv2D/ReadVariableOp?!conv2d_197/BiasAdd/ReadVariableOp? conv2d_197/Conv2D/ReadVariableOp? dense_196/BiasAdd/ReadVariableOp?dense_196/MatMul/ReadVariableOp? dense_197/BiasAdd/ReadVariableOp?dense_197/MatMul/ReadVariableOp?
 conv2d_196/Conv2D/ReadVariableOpReadVariableOp)conv2d_196_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_196/Conv2D/ReadVariableOp?
conv2d_196/Conv2DConv2Dinputs(conv2d_196/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_196/Conv2D?
!conv2d_196/BiasAdd/ReadVariableOpReadVariableOp*conv2d_196_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_196/BiasAdd/ReadVariableOp?
conv2d_196/BiasAddBiasAddconv2d_196/Conv2D:output:0)conv2d_196/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_196/BiasAdd?
conv2d_196/ReluReluconv2d_196/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_196/Relu?
max_pooling2d_196/MaxPoolMaxPoolconv2d_196/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_196/MaxPool?
 conv2d_197/Conv2D/ReadVariableOpReadVariableOp)conv2d_197_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_197/Conv2D/ReadVariableOp?
conv2d_197/Conv2DConv2D"max_pooling2d_196/MaxPool:output:0(conv2d_197/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_197/Conv2D?
!conv2d_197/BiasAdd/ReadVariableOpReadVariableOp*conv2d_197_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_197/BiasAdd/ReadVariableOp?
conv2d_197/BiasAddBiasAddconv2d_197/Conv2D:output:0)conv2d_197/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_197/BiasAdd?
conv2d_197/ReluReluconv2d_197/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_197/Relu?
max_pooling2d_197/MaxPoolMaxPoolconv2d_197/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_197/MaxPool?
dropout_196/IdentityIdentity"max_pooling2d_197/MaxPool:output:0*
T0*/
_output_shapes
:?????????02
dropout_196/Identityu
flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_98/Const?
flatten_98/ReshapeReshapedropout_196/Identity:output:0flatten_98/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_98/Reshape?
dense_196/MatMul/ReadVariableOpReadVariableOp(dense_196_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_196/MatMul/ReadVariableOp?
dense_196/MatMulMatMulflatten_98/Reshape:output:0'dense_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_196/MatMul?
 dense_196/BiasAdd/ReadVariableOpReadVariableOp)dense_196_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_196/BiasAdd/ReadVariableOp?
dense_196/BiasAddBiasAdddense_196/MatMul:product:0(dense_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_196/BiasAddw
dense_196/ReluReludense_196/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_196/Relu?
dropout_197/IdentityIdentitydense_196/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_197/Identity?
dense_197/MatMul/ReadVariableOpReadVariableOp(dense_197_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_197/MatMul/ReadVariableOp?
dense_197/MatMulMatMuldropout_197/Identity:output:0'dense_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_197/MatMul?
 dense_197/BiasAdd/ReadVariableOpReadVariableOp)dense_197_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_197/BiasAdd/ReadVariableOp?
dense_197/BiasAddBiasAdddense_197/MatMul:product:0(dense_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_197/BiasAdd
dense_197/SoftmaxSoftmaxdense_197/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_197/Softmax?
IdentityIdentitydense_197/Softmax:softmax:0"^conv2d_196/BiasAdd/ReadVariableOp!^conv2d_196/Conv2D/ReadVariableOp"^conv2d_197/BiasAdd/ReadVariableOp!^conv2d_197/Conv2D/ReadVariableOp!^dense_196/BiasAdd/ReadVariableOp ^dense_196/MatMul/ReadVariableOp!^dense_197/BiasAdd/ReadVariableOp ^dense_197/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_196/BiasAdd/ReadVariableOp!conv2d_196/BiasAdd/ReadVariableOp2D
 conv2d_196/Conv2D/ReadVariableOp conv2d_196/Conv2D/ReadVariableOp2F
!conv2d_197/BiasAdd/ReadVariableOp!conv2d_197/BiasAdd/ReadVariableOp2D
 conv2d_197/Conv2D/ReadVariableOp conv2d_197/Conv2D/ReadVariableOp2D
 dense_196/BiasAdd/ReadVariableOp dense_196/BiasAdd/ReadVariableOp2B
dense_196/MatMul/ReadVariableOpdense_196/MatMul/ReadVariableOp2D
 dense_197/BiasAdd/ReadVariableOp dense_197/BiasAdd/ReadVariableOp2B
dense_197/MatMul/ReadVariableOpdense_197/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
c
G__inference_flatten_98_layer_call_and_return_conditional_losses_2115318

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
?U
?
 __inference__traced_save_2116078
file_prefix0
,savev2_conv2d_196_kernel_read_readvariableop.
*savev2_conv2d_196_bias_read_readvariableop0
,savev2_conv2d_197_kernel_read_readvariableop.
*savev2_conv2d_197_bias_read_readvariableop/
+savev2_dense_196_kernel_read_readvariableop-
)savev2_dense_196_bias_read_readvariableop/
+savev2_dense_197_kernel_read_readvariableop-
)savev2_dense_197_bias_read_readvariableop6
2savev2_adabeliefoptimizer_iter_read_readvariableop	8
4savev2_adabeliefoptimizer_beta_1_read_readvariableop8
4savev2_adabeliefoptimizer_beta_2_read_readvariableop7
3savev2_adabeliefoptimizer_decay_read_readvariableop?
;savev2_adabeliefoptimizer_learning_rate_read_readvariableop8
4savev2_adabeliefoptimizer_min_lr_read_readvariableop?
;savev2_adabeliefoptimizer_sma_threshold_read_readvariableop=
9savev2_adabeliefoptimizer_total_steps_read_readvariableopC
?savev2_adabeliefoptimizer_warmup_proportion_read_readvariableop>
:savev2_adabeliefoptimizer_weight_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopE
Asavev2_adabeliefoptimizer_conv2d_196_kernel_m_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_196_bias_m_read_readvariableopE
Asavev2_adabeliefoptimizer_conv2d_197_kernel_m_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_197_bias_m_read_readvariableopD
@savev2_adabeliefoptimizer_dense_196_kernel_m_read_readvariableopB
>savev2_adabeliefoptimizer_dense_196_bias_m_read_readvariableopD
@savev2_adabeliefoptimizer_dense_197_kernel_m_read_readvariableopB
>savev2_adabeliefoptimizer_dense_197_bias_m_read_readvariableopE
Asavev2_adabeliefoptimizer_conv2d_196_kernel_v_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_196_bias_v_read_readvariableopE
Asavev2_adabeliefoptimizer_conv2d_197_kernel_v_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_197_bias_v_read_readvariableopD
@savev2_adabeliefoptimizer_dense_196_kernel_v_read_readvariableopB
>savev2_adabeliefoptimizer_dense_196_bias_v_read_readvariableopD
@savev2_adabeliefoptimizer_dense_197_kernel_v_read_readvariableopB
>savev2_adabeliefoptimizer_dense_197_bias_v_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEB6optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_196_kernel_read_readvariableop*savev2_conv2d_196_bias_read_readvariableop,savev2_conv2d_197_kernel_read_readvariableop*savev2_conv2d_197_bias_read_readvariableop+savev2_dense_196_kernel_read_readvariableop)savev2_dense_196_bias_read_readvariableop+savev2_dense_197_kernel_read_readvariableop)savev2_dense_197_bias_read_readvariableop2savev2_adabeliefoptimizer_iter_read_readvariableop4savev2_adabeliefoptimizer_beta_1_read_readvariableop4savev2_adabeliefoptimizer_beta_2_read_readvariableop3savev2_adabeliefoptimizer_decay_read_readvariableop;savev2_adabeliefoptimizer_learning_rate_read_readvariableop4savev2_adabeliefoptimizer_min_lr_read_readvariableop;savev2_adabeliefoptimizer_sma_threshold_read_readvariableop9savev2_adabeliefoptimizer_total_steps_read_readvariableop?savev2_adabeliefoptimizer_warmup_proportion_read_readvariableop:savev2_adabeliefoptimizer_weight_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_196_kernel_m_read_readvariableop?savev2_adabeliefoptimizer_conv2d_196_bias_m_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_197_kernel_m_read_readvariableop?savev2_adabeliefoptimizer_conv2d_197_bias_m_read_readvariableop@savev2_adabeliefoptimizer_dense_196_kernel_m_read_readvariableop>savev2_adabeliefoptimizer_dense_196_bias_m_read_readvariableop@savev2_adabeliefoptimizer_dense_197_kernel_m_read_readvariableop>savev2_adabeliefoptimizer_dense_197_bias_m_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_196_kernel_v_read_readvariableop?savev2_adabeliefoptimizer_conv2d_196_bias_v_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_197_kernel_v_read_readvariableop?savev2_adabeliefoptimizer_conv2d_197_bias_v_read_readvariableop@savev2_adabeliefoptimizer_dense_196_kernel_v_read_readvariableop>savev2_adabeliefoptimizer_dense_196_bias_v_read_readvariableop@savev2_adabeliefoptimizer_dense_197_kernel_v_read_readvariableop>savev2_adabeliefoptimizer_dense_197_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'	2
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
: : : : : : : : : : : : : : : : : 0:0:
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
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: 0: 

_output_shapes
:0:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:,(
&
_output_shapes
: :  

_output_shapes
: :,!(
&
_output_shapes
: 0: "

_output_shapes
:0:&#"
 
_output_shapes
:
??:!$

_output_shapes	
:?:%%!

_output_shapes
:	?
: &

_output_shapes
:
:'

_output_shapes
: 
?
f
-__inference_dropout_196_layer_call_fn_2115846

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
H__inference_dropout_196_layer_call_and_return_conditional_losses_21154502
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
G__inference_conv2d_197_layer_call_and_return_conditional_losses_2115836

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
?+
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115623
conv2d_196_input,
conv2d_196_2115597:  
conv2d_196_2115599: ,
conv2d_197_2115603: 0 
conv2d_197_2115605:0%
dense_196_2115611:
?? 
dense_196_2115613:	?$
dense_197_2115617:	?

dense_197_2115619:

identity??"conv2d_196/StatefulPartitionedCall?"conv2d_197/StatefulPartitionedCall?!dense_196/StatefulPartitionedCall?!dense_197/StatefulPartitionedCall?#dropout_196/StatefulPartitionedCall?#dropout_197/StatefulPartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCallconv2d_196_inputconv2d_196_2115597conv2d_196_2115599*
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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_21152802$
"conv2d_196/StatefulPartitionedCall?
!max_pooling2d_196/PartitionedCallPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_21152442#
!max_pooling2d_196/PartitionedCall?
"conv2d_197/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_196/PartitionedCall:output:0conv2d_197_2115603conv2d_197_2115605*
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
G__inference_conv2d_197_layer_call_and_return_conditional_losses_21152982$
"conv2d_197/StatefulPartitionedCall?
!max_pooling2d_197/PartitionedCallPartitionedCall+conv2d_197/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_21152562#
!max_pooling2d_197/PartitionedCall?
#dropout_196/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_197/PartitionedCall:output:0*
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
H__inference_dropout_196_layer_call_and_return_conditional_losses_21154502%
#dropout_196/StatefulPartitionedCall?
flatten_98/PartitionedCallPartitionedCall,dropout_196/StatefulPartitionedCall:output:0*
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
G__inference_flatten_98_layer_call_and_return_conditional_losses_21153182
flatten_98/PartitionedCall?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_196_2115611dense_196_2115613*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_21153312#
!dense_196/StatefulPartitionedCall?
#dropout_197/StatefulPartitionedCallStatefulPartitionedCall*dense_196/StatefulPartitionedCall:output:0$^dropout_196/StatefulPartitionedCall*
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
H__inference_dropout_197_layer_call_and_return_conditional_losses_21154112%
#dropout_197/StatefulPartitionedCall?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall,dropout_197/StatefulPartitionedCall:output:0dense_197_2115617dense_197_2115619*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_21153552#
!dense_197/StatefulPartitionedCall?
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0#^conv2d_196/StatefulPartitionedCall#^conv2d_197/StatefulPartitionedCall"^dense_196/StatefulPartitionedCall"^dense_197/StatefulPartitionedCall$^dropout_196/StatefulPartitionedCall$^dropout_197/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2H
"conv2d_197/StatefulPartitionedCall"conv2d_197/StatefulPartitionedCall2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall2J
#dropout_196/StatefulPartitionedCall#dropout_196/StatefulPartitionedCall2J
#dropout_197/StatefulPartitionedCall#dropout_197/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_196_input
?
I
-__inference_dropout_197_layer_call_fn_2115899

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
H__inference_dropout_197_layer_call_and_return_conditional_losses_21153422
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
?
j
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_2115244

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

?
F__inference_dense_196_layer_call_and_return_conditional_losses_2115331

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
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115450

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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2115816

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
?F
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115796

inputsC
)conv2d_196_conv2d_readvariableop_resource: 8
*conv2d_196_biasadd_readvariableop_resource: C
)conv2d_197_conv2d_readvariableop_resource: 08
*conv2d_197_biasadd_readvariableop_resource:0<
(dense_196_matmul_readvariableop_resource:
??8
)dense_196_biasadd_readvariableop_resource:	?;
(dense_197_matmul_readvariableop_resource:	?
7
)dense_197_biasadd_readvariableop_resource:

identity??!conv2d_196/BiasAdd/ReadVariableOp? conv2d_196/Conv2D/ReadVariableOp?!conv2d_197/BiasAdd/ReadVariableOp? conv2d_197/Conv2D/ReadVariableOp? dense_196/BiasAdd/ReadVariableOp?dense_196/MatMul/ReadVariableOp? dense_197/BiasAdd/ReadVariableOp?dense_197/MatMul/ReadVariableOp?
 conv2d_196/Conv2D/ReadVariableOpReadVariableOp)conv2d_196_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_196/Conv2D/ReadVariableOp?
conv2d_196/Conv2DConv2Dinputs(conv2d_196/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_196/Conv2D?
!conv2d_196/BiasAdd/ReadVariableOpReadVariableOp*conv2d_196_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_196/BiasAdd/ReadVariableOp?
conv2d_196/BiasAddBiasAddconv2d_196/Conv2D:output:0)conv2d_196/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_196/BiasAdd?
conv2d_196/ReluReluconv2d_196/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_196/Relu?
max_pooling2d_196/MaxPoolMaxPoolconv2d_196/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_196/MaxPool?
 conv2d_197/Conv2D/ReadVariableOpReadVariableOp)conv2d_197_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_197/Conv2D/ReadVariableOp?
conv2d_197/Conv2DConv2D"max_pooling2d_196/MaxPool:output:0(conv2d_197/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_197/Conv2D?
!conv2d_197/BiasAdd/ReadVariableOpReadVariableOp*conv2d_197_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_197/BiasAdd/ReadVariableOp?
conv2d_197/BiasAddBiasAddconv2d_197/Conv2D:output:0)conv2d_197/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_197/BiasAdd?
conv2d_197/ReluReluconv2d_197/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_197/Relu?
max_pooling2d_197/MaxPoolMaxPoolconv2d_197/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_197/MaxPool{
dropout_196/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_196/dropout/Const?
dropout_196/dropout/MulMul"max_pooling2d_197/MaxPool:output:0"dropout_196/dropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout_196/dropout/Mul?
dropout_196/dropout/ShapeShape"max_pooling2d_197/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_196/dropout/Shape?
0dropout_196/dropout/random_uniform/RandomUniformRandomUniform"dropout_196/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype022
0dropout_196/dropout/random_uniform/RandomUniform?
"dropout_196/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_196/dropout/GreaterEqual/y?
 dropout_196/dropout/GreaterEqualGreaterEqual9dropout_196/dropout/random_uniform/RandomUniform:output:0+dropout_196/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02"
 dropout_196/dropout/GreaterEqual?
dropout_196/dropout/CastCast$dropout_196/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout_196/dropout/Cast?
dropout_196/dropout/Mul_1Muldropout_196/dropout/Mul:z:0dropout_196/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout_196/dropout/Mul_1u
flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_98/Const?
flatten_98/ReshapeReshapedropout_196/dropout/Mul_1:z:0flatten_98/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_98/Reshape?
dense_196/MatMul/ReadVariableOpReadVariableOp(dense_196_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_196/MatMul/ReadVariableOp?
dense_196/MatMulMatMulflatten_98/Reshape:output:0'dense_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_196/MatMul?
 dense_196/BiasAdd/ReadVariableOpReadVariableOp)dense_196_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_196/BiasAdd/ReadVariableOp?
dense_196/BiasAddBiasAdddense_196/MatMul:product:0(dense_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_196/BiasAddw
dense_196/ReluReludense_196/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_196/Relu{
dropout_197/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_197/dropout/Const?
dropout_197/dropout/MulMuldense_196/Relu:activations:0"dropout_197/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_197/dropout/Mul?
dropout_197/dropout/ShapeShapedense_196/Relu:activations:0*
T0*
_output_shapes
:2
dropout_197/dropout/Shape?
0dropout_197/dropout/random_uniform/RandomUniformRandomUniform"dropout_197/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_197/dropout/random_uniform/RandomUniform?
"dropout_197/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"dropout_197/dropout/GreaterEqual/y?
 dropout_197/dropout/GreaterEqualGreaterEqual9dropout_197/dropout/random_uniform/RandomUniform:output:0+dropout_197/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_197/dropout/GreaterEqual?
dropout_197/dropout/CastCast$dropout_197/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_197/dropout/Cast?
dropout_197/dropout/Mul_1Muldropout_197/dropout/Mul:z:0dropout_197/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_197/dropout/Mul_1?
dense_197/MatMul/ReadVariableOpReadVariableOp(dense_197_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_197/MatMul/ReadVariableOp?
dense_197/MatMulMatMuldropout_197/dropout/Mul_1:z:0'dense_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_197/MatMul?
 dense_197/BiasAdd/ReadVariableOpReadVariableOp)dense_197_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_197/BiasAdd/ReadVariableOp?
dense_197/BiasAddBiasAdddense_197/MatMul:product:0(dense_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_197/BiasAdd
dense_197/SoftmaxSoftmaxdense_197/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_197/Softmax?
IdentityIdentitydense_197/Softmax:softmax:0"^conv2d_196/BiasAdd/ReadVariableOp!^conv2d_196/Conv2D/ReadVariableOp"^conv2d_197/BiasAdd/ReadVariableOp!^conv2d_197/Conv2D/ReadVariableOp!^dense_196/BiasAdd/ReadVariableOp ^dense_196/MatMul/ReadVariableOp!^dense_197/BiasAdd/ReadVariableOp ^dense_197/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_196/BiasAdd/ReadVariableOp!conv2d_196/BiasAdd/ReadVariableOp2D
 conv2d_196/Conv2D/ReadVariableOp conv2d_196/Conv2D/ReadVariableOp2F
!conv2d_197/BiasAdd/ReadVariableOp!conv2d_197/BiasAdd/ReadVariableOp2D
 conv2d_197/Conv2D/ReadVariableOp conv2d_197/Conv2D/ReadVariableOp2D
 dense_196/BiasAdd/ReadVariableOp dense_196/BiasAdd/ReadVariableOp2B
dense_196/MatMul/ReadVariableOpdense_196/MatMul/ReadVariableOp2D
 dense_197/BiasAdd/ReadVariableOp dense_197/BiasAdd/ReadVariableOp2B
dense_197/MatMul/ReadVariableOpdense_197/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?(
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115594
conv2d_196_input,
conv2d_196_2115568:  
conv2d_196_2115570: ,
conv2d_197_2115574: 0 
conv2d_197_2115576:0%
dense_196_2115582:
?? 
dense_196_2115584:	?$
dense_197_2115588:	?

dense_197_2115590:

identity??"conv2d_196/StatefulPartitionedCall?"conv2d_197/StatefulPartitionedCall?!dense_196/StatefulPartitionedCall?!dense_197/StatefulPartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCallconv2d_196_inputconv2d_196_2115568conv2d_196_2115570*
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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_21152802$
"conv2d_196/StatefulPartitionedCall?
!max_pooling2d_196/PartitionedCallPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_21152442#
!max_pooling2d_196/PartitionedCall?
"conv2d_197/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_196/PartitionedCall:output:0conv2d_197_2115574conv2d_197_2115576*
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
G__inference_conv2d_197_layer_call_and_return_conditional_losses_21152982$
"conv2d_197/StatefulPartitionedCall?
!max_pooling2d_197/PartitionedCallPartitionedCall+conv2d_197/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_21152562#
!max_pooling2d_197/PartitionedCall?
dropout_196/PartitionedCallPartitionedCall*max_pooling2d_197/PartitionedCall:output:0*
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
H__inference_dropout_196_layer_call_and_return_conditional_losses_21153102
dropout_196/PartitionedCall?
flatten_98/PartitionedCallPartitionedCall$dropout_196/PartitionedCall:output:0*
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
G__inference_flatten_98_layer_call_and_return_conditional_losses_21153182
flatten_98/PartitionedCall?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_196_2115582dense_196_2115584*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_21153312#
!dense_196/StatefulPartitionedCall?
dropout_197/PartitionedCallPartitionedCall*dense_196/StatefulPartitionedCall:output:0*
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
H__inference_dropout_197_layer_call_and_return_conditional_losses_21153422
dropout_197/PartitionedCall?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall$dropout_197/PartitionedCall:output:0dense_197_2115588dense_197_2115590*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_21153552#
!dense_197/StatefulPartitionedCall?
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0#^conv2d_196/StatefulPartitionedCall#^conv2d_197/StatefulPartitionedCall"^dense_196/StatefulPartitionedCall"^dense_197/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2H
"conv2d_197/StatefulPartitionedCall"conv2d_197/StatefulPartitionedCall2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_196_input
?
c
G__inference_flatten_98_layer_call_and_return_conditional_losses_2115874

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
?
?
+__inference_dense_197_layer_call_fn_2115930

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
F__inference_dense_197_layer_call_and_return_conditional_losses_21153552
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
??
?
#__inference__traced_restore_2116202
file_prefix<
"assignvariableop_conv2d_196_kernel: 0
"assignvariableop_1_conv2d_196_bias: >
$assignvariableop_2_conv2d_197_kernel: 00
"assignvariableop_3_conv2d_197_bias:07
#assignvariableop_4_dense_196_kernel:
??0
!assignvariableop_5_dense_196_bias:	?6
#assignvariableop_6_dense_197_kernel:	?
/
!assignvariableop_7_dense_197_bias:
4
*assignvariableop_8_adabeliefoptimizer_iter:	 6
,assignvariableop_9_adabeliefoptimizer_beta_1: 7
-assignvariableop_10_adabeliefoptimizer_beta_2: 6
,assignvariableop_11_adabeliefoptimizer_decay: >
4assignvariableop_12_adabeliefoptimizer_learning_rate: 7
-assignvariableop_13_adabeliefoptimizer_min_lr: >
4assignvariableop_14_adabeliefoptimizer_sma_threshold: <
2assignvariableop_15_adabeliefoptimizer_total_steps: B
8assignvariableop_16_adabeliefoptimizer_warmup_proportion: =
3assignvariableop_17_adabeliefoptimizer_weight_decay: #
assignvariableop_18_total: #
assignvariableop_19_count: %
assignvariableop_20_total_1: %
assignvariableop_21_count_1: T
:assignvariableop_22_adabeliefoptimizer_conv2d_196_kernel_m: F
8assignvariableop_23_adabeliefoptimizer_conv2d_196_bias_m: T
:assignvariableop_24_adabeliefoptimizer_conv2d_197_kernel_m: 0F
8assignvariableop_25_adabeliefoptimizer_conv2d_197_bias_m:0M
9assignvariableop_26_adabeliefoptimizer_dense_196_kernel_m:
??F
7assignvariableop_27_adabeliefoptimizer_dense_196_bias_m:	?L
9assignvariableop_28_adabeliefoptimizer_dense_197_kernel_m:	?
E
7assignvariableop_29_adabeliefoptimizer_dense_197_bias_m:
T
:assignvariableop_30_adabeliefoptimizer_conv2d_196_kernel_v: F
8assignvariableop_31_adabeliefoptimizer_conv2d_196_bias_v: T
:assignvariableop_32_adabeliefoptimizer_conv2d_197_kernel_v: 0F
8assignvariableop_33_adabeliefoptimizer_conv2d_197_bias_v:0M
9assignvariableop_34_adabeliefoptimizer_dense_196_kernel_v:
??F
7assignvariableop_35_adabeliefoptimizer_dense_196_bias_v:	?L
9assignvariableop_36_adabeliefoptimizer_dense_197_kernel_v:	?
E
7assignvariableop_37_adabeliefoptimizer_dense_197_bias_v:

identity_39??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEB6optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::*5
dtypes+
)2'	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_196_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_196_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_197_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_197_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_196_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_196_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_197_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_197_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp*assignvariableop_8_adabeliefoptimizer_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp,assignvariableop_9_adabeliefoptimizer_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp-assignvariableop_10_adabeliefoptimizer_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp,assignvariableop_11_adabeliefoptimizer_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp4assignvariableop_12_adabeliefoptimizer_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp-assignvariableop_13_adabeliefoptimizer_min_lrIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp4assignvariableop_14_adabeliefoptimizer_sma_thresholdIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp2assignvariableop_15_adabeliefoptimizer_total_stepsIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp8assignvariableop_16_adabeliefoptimizer_warmup_proportionIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp3assignvariableop_17_adabeliefoptimizer_weight_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_totalIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_countIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_1Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_1Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp:assignvariableop_22_adabeliefoptimizer_conv2d_196_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adabeliefoptimizer_conv2d_196_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp:assignvariableop_24_adabeliefoptimizer_conv2d_197_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adabeliefoptimizer_conv2d_197_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp9assignvariableop_26_adabeliefoptimizer_dense_196_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adabeliefoptimizer_dense_196_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp9assignvariableop_28_adabeliefoptimizer_dense_197_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adabeliefoptimizer_dense_197_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp:assignvariableop_30_adabeliefoptimizer_conv2d_196_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adabeliefoptimizer_conv2d_196_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp:assignvariableop_32_adabeliefoptimizer_conv2d_197_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp8assignvariableop_33_adabeliefoptimizer_conv2d_197_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp9assignvariableop_34_adabeliefoptimizer_dense_196_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adabeliefoptimizer_dense_196_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp9assignvariableop_36_adabeliefoptimizer_dense_197_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adabeliefoptimizer_dense_197_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_379
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_38Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_38?
Identity_39IdentityIdentity_38:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_39"#
identity_39Identity_39:output:0*a
_input_shapesP
N: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372(
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
?+
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115525

inputs,
conv2d_196_2115499:  
conv2d_196_2115501: ,
conv2d_197_2115505: 0 
conv2d_197_2115507:0%
dense_196_2115513:
?? 
dense_196_2115515:	?$
dense_197_2115519:	?

dense_197_2115521:

identity??"conv2d_196/StatefulPartitionedCall?"conv2d_197/StatefulPartitionedCall?!dense_196/StatefulPartitionedCall?!dense_197/StatefulPartitionedCall?#dropout_196/StatefulPartitionedCall?#dropout_197/StatefulPartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_196_2115499conv2d_196_2115501*
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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_21152802$
"conv2d_196/StatefulPartitionedCall?
!max_pooling2d_196/PartitionedCallPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_21152442#
!max_pooling2d_196/PartitionedCall?
"conv2d_197/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_196/PartitionedCall:output:0conv2d_197_2115505conv2d_197_2115507*
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
G__inference_conv2d_197_layer_call_and_return_conditional_losses_21152982$
"conv2d_197/StatefulPartitionedCall?
!max_pooling2d_197/PartitionedCallPartitionedCall+conv2d_197/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_21152562#
!max_pooling2d_197/PartitionedCall?
#dropout_196/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_197/PartitionedCall:output:0*
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
H__inference_dropout_196_layer_call_and_return_conditional_losses_21154502%
#dropout_196/StatefulPartitionedCall?
flatten_98/PartitionedCallPartitionedCall,dropout_196/StatefulPartitionedCall:output:0*
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
G__inference_flatten_98_layer_call_and_return_conditional_losses_21153182
flatten_98/PartitionedCall?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_196_2115513dense_196_2115515*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_21153312#
!dense_196/StatefulPartitionedCall?
#dropout_197/StatefulPartitionedCallStatefulPartitionedCall*dense_196/StatefulPartitionedCall:output:0$^dropout_196/StatefulPartitionedCall*
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
H__inference_dropout_197_layer_call_and_return_conditional_losses_21154112%
#dropout_197/StatefulPartitionedCall?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall,dropout_197/StatefulPartitionedCall:output:0dense_197_2115519dense_197_2115521*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_21153552#
!dense_197/StatefulPartitionedCall?
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0#^conv2d_196/StatefulPartitionedCall#^conv2d_197/StatefulPartitionedCall"^dense_196/StatefulPartitionedCall"^dense_197/StatefulPartitionedCall$^dropout_196/StatefulPartitionedCall$^dropout_197/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2H
"conv2d_197/StatefulPartitionedCall"conv2d_197/StatefulPartitionedCall2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall2J
#dropout_196/StatefulPartitionedCall#dropout_196/StatefulPartitionedCall2J
#dropout_197/StatefulPartitionedCall#dropout_197/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?@
?
"__inference__wrapped_model_2115238
conv2d_196_inputQ
7sequential_98_conv2d_196_conv2d_readvariableop_resource: F
8sequential_98_conv2d_196_biasadd_readvariableop_resource: Q
7sequential_98_conv2d_197_conv2d_readvariableop_resource: 0F
8sequential_98_conv2d_197_biasadd_readvariableop_resource:0J
6sequential_98_dense_196_matmul_readvariableop_resource:
??F
7sequential_98_dense_196_biasadd_readvariableop_resource:	?I
6sequential_98_dense_197_matmul_readvariableop_resource:	?
E
7sequential_98_dense_197_biasadd_readvariableop_resource:

identity??/sequential_98/conv2d_196/BiasAdd/ReadVariableOp?.sequential_98/conv2d_196/Conv2D/ReadVariableOp?/sequential_98/conv2d_197/BiasAdd/ReadVariableOp?.sequential_98/conv2d_197/Conv2D/ReadVariableOp?.sequential_98/dense_196/BiasAdd/ReadVariableOp?-sequential_98/dense_196/MatMul/ReadVariableOp?.sequential_98/dense_197/BiasAdd/ReadVariableOp?-sequential_98/dense_197/MatMul/ReadVariableOp?
.sequential_98/conv2d_196/Conv2D/ReadVariableOpReadVariableOp7sequential_98_conv2d_196_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype020
.sequential_98/conv2d_196/Conv2D/ReadVariableOp?
sequential_98/conv2d_196/Conv2DConv2Dconv2d_196_input6sequential_98/conv2d_196/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2!
sequential_98/conv2d_196/Conv2D?
/sequential_98/conv2d_196/BiasAdd/ReadVariableOpReadVariableOp8sequential_98_conv2d_196_biasadd_readvariableop_resource*
_output_shapes
: *
dtype021
/sequential_98/conv2d_196/BiasAdd/ReadVariableOp?
 sequential_98/conv2d_196/BiasAddBiasAdd(sequential_98/conv2d_196/Conv2D:output:07sequential_98/conv2d_196/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2"
 sequential_98/conv2d_196/BiasAdd?
sequential_98/conv2d_196/ReluRelu)sequential_98/conv2d_196/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
sequential_98/conv2d_196/Relu?
'sequential_98/max_pooling2d_196/MaxPoolMaxPool+sequential_98/conv2d_196/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2)
'sequential_98/max_pooling2d_196/MaxPool?
.sequential_98/conv2d_197/Conv2D/ReadVariableOpReadVariableOp7sequential_98_conv2d_197_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype020
.sequential_98/conv2d_197/Conv2D/ReadVariableOp?
sequential_98/conv2d_197/Conv2DConv2D0sequential_98/max_pooling2d_196/MaxPool:output:06sequential_98/conv2d_197/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2!
sequential_98/conv2d_197/Conv2D?
/sequential_98/conv2d_197/BiasAdd/ReadVariableOpReadVariableOp8sequential_98_conv2d_197_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype021
/sequential_98/conv2d_197/BiasAdd/ReadVariableOp?
 sequential_98/conv2d_197/BiasAddBiasAdd(sequential_98/conv2d_197/Conv2D:output:07sequential_98/conv2d_197/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02"
 sequential_98/conv2d_197/BiasAdd?
sequential_98/conv2d_197/ReluRelu)sequential_98/conv2d_197/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
sequential_98/conv2d_197/Relu?
'sequential_98/max_pooling2d_197/MaxPoolMaxPool+sequential_98/conv2d_197/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2)
'sequential_98/max_pooling2d_197/MaxPool?
"sequential_98/dropout_196/IdentityIdentity0sequential_98/max_pooling2d_197/MaxPool:output:0*
T0*/
_output_shapes
:?????????02$
"sequential_98/dropout_196/Identity?
sequential_98/flatten_98/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2 
sequential_98/flatten_98/Const?
 sequential_98/flatten_98/ReshapeReshape+sequential_98/dropout_196/Identity:output:0'sequential_98/flatten_98/Const:output:0*
T0*(
_output_shapes
:??????????2"
 sequential_98/flatten_98/Reshape?
-sequential_98/dense_196/MatMul/ReadVariableOpReadVariableOp6sequential_98_dense_196_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_98/dense_196/MatMul/ReadVariableOp?
sequential_98/dense_196/MatMulMatMul)sequential_98/flatten_98/Reshape:output:05sequential_98/dense_196/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_98/dense_196/MatMul?
.sequential_98/dense_196/BiasAdd/ReadVariableOpReadVariableOp7sequential_98_dense_196_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_98/dense_196/BiasAdd/ReadVariableOp?
sequential_98/dense_196/BiasAddBiasAdd(sequential_98/dense_196/MatMul:product:06sequential_98/dense_196/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_98/dense_196/BiasAdd?
sequential_98/dense_196/ReluRelu(sequential_98/dense_196/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_98/dense_196/Relu?
"sequential_98/dropout_197/IdentityIdentity*sequential_98/dense_196/Relu:activations:0*
T0*(
_output_shapes
:??????????2$
"sequential_98/dropout_197/Identity?
-sequential_98/dense_197/MatMul/ReadVariableOpReadVariableOp6sequential_98_dense_197_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_98/dense_197/MatMul/ReadVariableOp?
sequential_98/dense_197/MatMulMatMul+sequential_98/dropout_197/Identity:output:05sequential_98/dense_197/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_98/dense_197/MatMul?
.sequential_98/dense_197/BiasAdd/ReadVariableOpReadVariableOp7sequential_98_dense_197_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_98/dense_197/BiasAdd/ReadVariableOp?
sequential_98/dense_197/BiasAddBiasAdd(sequential_98/dense_197/MatMul:product:06sequential_98/dense_197/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_98/dense_197/BiasAdd?
sequential_98/dense_197/SoftmaxSoftmax(sequential_98/dense_197/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2!
sequential_98/dense_197/Softmax?
IdentityIdentity)sequential_98/dense_197/Softmax:softmax:00^sequential_98/conv2d_196/BiasAdd/ReadVariableOp/^sequential_98/conv2d_196/Conv2D/ReadVariableOp0^sequential_98/conv2d_197/BiasAdd/ReadVariableOp/^sequential_98/conv2d_197/Conv2D/ReadVariableOp/^sequential_98/dense_196/BiasAdd/ReadVariableOp.^sequential_98/dense_196/MatMul/ReadVariableOp/^sequential_98/dense_197/BiasAdd/ReadVariableOp.^sequential_98/dense_197/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2b
/sequential_98/conv2d_196/BiasAdd/ReadVariableOp/sequential_98/conv2d_196/BiasAdd/ReadVariableOp2`
.sequential_98/conv2d_196/Conv2D/ReadVariableOp.sequential_98/conv2d_196/Conv2D/ReadVariableOp2b
/sequential_98/conv2d_197/BiasAdd/ReadVariableOp/sequential_98/conv2d_197/BiasAdd/ReadVariableOp2`
.sequential_98/conv2d_197/Conv2D/ReadVariableOp.sequential_98/conv2d_197/Conv2D/ReadVariableOp2`
.sequential_98/dense_196/BiasAdd/ReadVariableOp.sequential_98/dense_196/BiasAdd/ReadVariableOp2^
-sequential_98/dense_196/MatMul/ReadVariableOp-sequential_98/dense_196/MatMul/ReadVariableOp2`
.sequential_98/dense_197/BiasAdd/ReadVariableOp.sequential_98/dense_197/BiasAdd/ReadVariableOp2^
-sequential_98/dense_197/MatMul/ReadVariableOp-sequential_98/dense_197/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_196_input
?	
?
/__inference_sequential_98_layer_call_fn_2115381
conv2d_196_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_196_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_21153622
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
_user_specified_nameconv2d_196_input
?

?
F__inference_dense_197_layer_call_and_return_conditional_losses_2115355

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
?	
?
%__inference_signature_wrapper_2115664
conv2d_196_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_196_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_21152382
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
_user_specified_nameconv2d_196_input
?
?
G__inference_conv2d_197_layer_call_and_return_conditional_losses_2115298

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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2115280

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
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115411

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
?
O
3__inference_max_pooling2d_196_layer_call_fn_2115250

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
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_21152442
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
?
H
,__inference_flatten_98_layer_call_fn_2115868

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
G__inference_flatten_98_layer_call_and_return_conditional_losses_21153182
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
?(
?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115362

inputs,
conv2d_196_2115281:  
conv2d_196_2115283: ,
conv2d_197_2115299: 0 
conv2d_197_2115301:0%
dense_196_2115332:
?? 
dense_196_2115334:	?$
dense_197_2115356:	?

dense_197_2115358:

identity??"conv2d_196/StatefulPartitionedCall?"conv2d_197/StatefulPartitionedCall?!dense_196/StatefulPartitionedCall?!dense_197/StatefulPartitionedCall?
"conv2d_196/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_196_2115281conv2d_196_2115283*
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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_21152802$
"conv2d_196/StatefulPartitionedCall?
!max_pooling2d_196/PartitionedCallPartitionedCall+conv2d_196/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_21152442#
!max_pooling2d_196/PartitionedCall?
"conv2d_197/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_196/PartitionedCall:output:0conv2d_197_2115299conv2d_197_2115301*
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
G__inference_conv2d_197_layer_call_and_return_conditional_losses_21152982$
"conv2d_197/StatefulPartitionedCall?
!max_pooling2d_197/PartitionedCallPartitionedCall+conv2d_197/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_21152562#
!max_pooling2d_197/PartitionedCall?
dropout_196/PartitionedCallPartitionedCall*max_pooling2d_197/PartitionedCall:output:0*
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
H__inference_dropout_196_layer_call_and_return_conditional_losses_21153102
dropout_196/PartitionedCall?
flatten_98/PartitionedCallPartitionedCall$dropout_196/PartitionedCall:output:0*
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
G__inference_flatten_98_layer_call_and_return_conditional_losses_21153182
flatten_98/PartitionedCall?
!dense_196/StatefulPartitionedCallStatefulPartitionedCall#flatten_98/PartitionedCall:output:0dense_196_2115332dense_196_2115334*
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
F__inference_dense_196_layer_call_and_return_conditional_losses_21153312#
!dense_196/StatefulPartitionedCall?
dropout_197/PartitionedCallPartitionedCall*dense_196/StatefulPartitionedCall:output:0*
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
H__inference_dropout_197_layer_call_and_return_conditional_losses_21153422
dropout_197/PartitionedCall?
!dense_197/StatefulPartitionedCallStatefulPartitionedCall$dropout_197/PartitionedCall:output:0dense_197_2115356dense_197_2115358*
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
F__inference_dense_197_layer_call_and_return_conditional_losses_21153552#
!dense_197/StatefulPartitionedCall?
IdentityIdentity*dense_197/StatefulPartitionedCall:output:0#^conv2d_196/StatefulPartitionedCall#^conv2d_197/StatefulPartitionedCall"^dense_196/StatefulPartitionedCall"^dense_197/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_196/StatefulPartitionedCall"conv2d_196/StatefulPartitionedCall2H
"conv2d_197/StatefulPartitionedCall"conv2d_197/StatefulPartitionedCall2F
!dense_196/StatefulPartitionedCall!dense_196/StatefulPartitionedCall2F
!dense_197/StatefulPartitionedCall!dense_197/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_196_layer_call_fn_2115883

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
F__inference_dense_196_layer_call_and_return_conditional_losses_21153312
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
?
j
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_2115256

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
/__inference_sequential_98_layer_call_fn_2115706

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
J__inference_sequential_98_layer_call_and_return_conditional_losses_21155252
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
/__inference_sequential_98_layer_call_fn_2115685

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
J__inference_sequential_98_layer_call_and_return_conditional_losses_21153622
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
?
f
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115342

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
?
f
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115909

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
?

?
F__inference_dense_196_layer_call_and_return_conditional_losses_2115894

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
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115921

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
f
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115310

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
g
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115863

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
?
?
,__inference_conv2d_196_layer_call_fn_2115805

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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_21152802
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
?
?
,__inference_conv2d_197_layer_call_fn_2115825

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
G__inference_conv2d_197_layer_call_and_return_conditional_losses_21152982
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

?
F__inference_dense_197_layer_call_and_return_conditional_losses_2115941

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
-__inference_dropout_196_layer_call_fn_2115841

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
H__inference_dropout_196_layer_call_and_return_conditional_losses_21153102
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
O
3__inference_max_pooling2d_197_layer_call_fn_2115262

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
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_21152562
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
conv2d_196_inputA
"serving_default_conv2d_196_input:0?????????=
	dense_1970
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?H
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
?_default_save_signature"?E
_tf_keras_sequential?E{"name": "sequential_98", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_98", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_196_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_196", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_196", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_197", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_197", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_196", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_98", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_196", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_197", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_197", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "conv2d_196_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_98", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_196_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_196", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_196", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_197", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_197", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Dropout", "config": {"name": "dropout_196", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_98", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_196", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Dropout", "config": {"name": "dropout_197", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_197", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "AdaBeliefOptimizer", "config": {"name": "AdaBeliefOptimizer", "learning_rate": 0.0010000000474974513, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "decay": 0.0, "weight_decay": 0.0, "sma_threshold": 5.0, "epsilon": 1e-14, "amsgrad": false, "rectify": true, "total_steps": 0, "warmup_proportion": 0.10000000149011612, "min_lr": 0.0}}}}
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
{"name": "conv2d_196", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_196", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_196", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_196", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_197", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_197", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 32]}}
?
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_197", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_197", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
?
$trainable_variables
%regularization_losses
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_196", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_196", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}
?
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_98", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_98", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 24}}
?

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_196", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_196", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2352}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2352]}}
?
2trainable_variables
3regularization_losses
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_197", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_197", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_197", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_197", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
<iter

=beta_1

>beta_2
	?decay
@learning_rate

Amin_lr
Bsma_threshold
Ctotal_steps
Dwarmup_proportion
Eweight_decaym?m?m?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?"
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

Flayers
Gnon_trainable_variables
Hmetrics
trainable_variables
Ilayer_metrics
regularization_losses
Jlayer_regularization_losses
	variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
+:) 2conv2d_196/kernel
: 2conv2d_196/bias
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

Klayers
Lnon_trainable_variables
Mmetrics
trainable_variables
Nlayer_metrics
regularization_losses
Olayer_regularization_losses
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

Players
Qnon_trainable_variables
Rmetrics
trainable_variables
Slayer_metrics
regularization_losses
Tlayer_regularization_losses
	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
+:) 02conv2d_197/kernel
:02conv2d_197/bias
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

Ulayers
Vnon_trainable_variables
Wmetrics
trainable_variables
Xlayer_metrics
regularization_losses
Ylayer_regularization_losses
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

Zlayers
[non_trainable_variables
\metrics
 trainable_variables
]layer_metrics
!regularization_losses
^layer_regularization_losses
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

_layers
`non_trainable_variables
ametrics
$trainable_variables
blayer_metrics
%regularization_losses
clayer_regularization_losses
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

dlayers
enon_trainable_variables
fmetrics
(trainable_variables
glayer_metrics
)regularization_losses
hlayer_regularization_losses
*	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_196/kernel
:?2dense_196/bias
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

ilayers
jnon_trainable_variables
kmetrics
.trainable_variables
llayer_metrics
/regularization_losses
mlayer_regularization_losses
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

nlayers
onon_trainable_variables
pmetrics
2trainable_variables
qlayer_metrics
3regularization_losses
rlayer_regularization_losses
4	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_197/kernel
:
2dense_197/bias
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

slayers
tnon_trainable_variables
umetrics
8trainable_variables
vlayer_metrics
9regularization_losses
wlayer_regularization_losses
:	variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	 (2AdaBeliefOptimizer/iter
#:! (2AdaBeliefOptimizer/beta_1
#:! (2AdaBeliefOptimizer/beta_2
":  (2AdaBeliefOptimizer/decay
*:( (2 AdaBeliefOptimizer/learning_rate
#:! (2AdaBeliefOptimizer/min_lr
*:( (2 AdaBeliefOptimizer/sma_threshold
(:& (2AdaBeliefOptimizer/total_steps
.:, (2$AdaBeliefOptimizer/warmup_proportion
):' (2AdaBeliefOptimizer/weight_decay
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
x0
y1"
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
	ztotal
	{count
|	variables
}	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 27}
?
	~total
	count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}
:  (2total
:  (2count
.
z0
{1"
trackable_list_wrapper
-
|	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
~0
1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
>:< 2&AdaBeliefOptimizer/conv2d_196/kernel/m
0:. 2$AdaBeliefOptimizer/conv2d_196/bias/m
>:< 02&AdaBeliefOptimizer/conv2d_197/kernel/m
0:.02$AdaBeliefOptimizer/conv2d_197/bias/m
7:5
??2%AdaBeliefOptimizer/dense_196/kernel/m
0:.?2#AdaBeliefOptimizer/dense_196/bias/m
6:4	?
2%AdaBeliefOptimizer/dense_197/kernel/m
/:-
2#AdaBeliefOptimizer/dense_197/bias/m
>:< 2&AdaBeliefOptimizer/conv2d_196/kernel/v
0:. 2$AdaBeliefOptimizer/conv2d_196/bias/v
>:< 02&AdaBeliefOptimizer/conv2d_197/kernel/v
0:.02$AdaBeliefOptimizer/conv2d_197/bias/v
7:5
??2%AdaBeliefOptimizer/dense_196/kernel/v
0:.?2#AdaBeliefOptimizer/dense_196/bias/v
6:4	?
2%AdaBeliefOptimizer/dense_197/kernel/v
/:-
2#AdaBeliefOptimizer/dense_197/bias/v
?2?
/__inference_sequential_98_layer_call_fn_2115381
/__inference_sequential_98_layer_call_fn_2115685
/__inference_sequential_98_layer_call_fn_2115706
/__inference_sequential_98_layer_call_fn_2115565?
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115744
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115796
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115594
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115623?
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
"__inference__wrapped_model_2115238?
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
conv2d_196_input?????????
?2?
,__inference_conv2d_196_layer_call_fn_2115805?
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
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2115816?
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
3__inference_max_pooling2d_196_layer_call_fn_2115250?
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
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_2115244?
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
,__inference_conv2d_197_layer_call_fn_2115825?
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
G__inference_conv2d_197_layer_call_and_return_conditional_losses_2115836?
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
3__inference_max_pooling2d_197_layer_call_fn_2115262?
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
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_2115256?
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
-__inference_dropout_196_layer_call_fn_2115841
-__inference_dropout_196_layer_call_fn_2115846?
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
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115851
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115863?
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
,__inference_flatten_98_layer_call_fn_2115868?
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
G__inference_flatten_98_layer_call_and_return_conditional_losses_2115874?
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
+__inference_dense_196_layer_call_fn_2115883?
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
F__inference_dense_196_layer_call_and_return_conditional_losses_2115894?
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
-__inference_dropout_197_layer_call_fn_2115899
-__inference_dropout_197_layer_call_fn_2115904?
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
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115909
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115921?
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
+__inference_dense_197_layer_call_fn_2115930?
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
F__inference_dense_197_layer_call_and_return_conditional_losses_2115941?
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
%__inference_signature_wrapper_2115664conv2d_196_input"?
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
"__inference__wrapped_model_2115238?,-67A?>
7?4
2?/
conv2d_196_input?????????
? "5?2
0
	dense_197#? 
	dense_197?????????
?
G__inference_conv2d_196_layer_call_and_return_conditional_losses_2115816l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_196_layer_call_fn_2115805_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
G__inference_conv2d_197_layer_call_and_return_conditional_losses_2115836l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_197_layer_call_fn_2115825_7?4
-?*
(?%
inputs????????? 
? " ??????????0?
F__inference_dense_196_layer_call_and_return_conditional_losses_2115894^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_196_layer_call_fn_2115883Q,-0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_197_layer_call_and_return_conditional_losses_2115941]670?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? 
+__inference_dense_197_layer_call_fn_2115930P670?-
&?#
!?
inputs??????????
? "??????????
?
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115851l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_196_layer_call_and_return_conditional_losses_2115863l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_196_layer_call_fn_2115841_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_196_layer_call_fn_2115846_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115909^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_197_layer_call_and_return_conditional_losses_2115921^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_197_layer_call_fn_2115899Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_197_layer_call_fn_2115904Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_flatten_98_layer_call_and_return_conditional_losses_2115874a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
,__inference_flatten_98_layer_call_fn_2115868T7?4
-?*
(?%
inputs?????????0
? "????????????
N__inference_max_pooling2d_196_layer_call_and_return_conditional_losses_2115244?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_196_layer_call_fn_2115250?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_197_layer_call_and_return_conditional_losses_2115256?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_197_layer_call_fn_2115262?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115594|,-67I?F
??<
2?/
conv2d_196_input?????????
p 

 
? "%?"
?
0?????????

? ?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115623|,-67I?F
??<
2?/
conv2d_196_input?????????
p

 
? "%?"
?
0?????????

? ?
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115744r,-67??<
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
J__inference_sequential_98_layer_call_and_return_conditional_losses_2115796r,-67??<
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
/__inference_sequential_98_layer_call_fn_2115381o,-67I?F
??<
2?/
conv2d_196_input?????????
p 

 
? "??????????
?
/__inference_sequential_98_layer_call_fn_2115565o,-67I?F
??<
2?/
conv2d_196_input?????????
p

 
? "??????????
?
/__inference_sequential_98_layer_call_fn_2115685e,-67??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
/__inference_sequential_98_layer_call_fn_2115706e,-67??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
%__inference_signature_wrapper_2115664?,-67U?R
? 
K?H
F
conv2d_196_input2?/
conv2d_196_input?????????"5?2
0
	dense_197#? 
	dense_197?????????
