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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??	
?
conv2d_210/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_210/kernel

%conv2d_210/kernel/Read/ReadVariableOpReadVariableOpconv2d_210/kernel*&
_output_shapes
: *
dtype0
v
conv2d_210/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_210/bias
o
#conv2d_210/bias/Read/ReadVariableOpReadVariableOpconv2d_210/bias*
_output_shapes
: *
dtype0
?
conv2d_211/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*"
shared_nameconv2d_211/kernel

%conv2d_211/kernel/Read/ReadVariableOpReadVariableOpconv2d_211/kernel*&
_output_shapes
: 0*
dtype0
v
conv2d_211/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:0* 
shared_nameconv2d_211/bias
o
#conv2d_211/bias/Read/ReadVariableOpReadVariableOpconv2d_211/bias*
_output_shapes
:0*
dtype0
~
dense_210/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_210/kernel
w
$dense_210/kernel/Read/ReadVariableOpReadVariableOpdense_210/kernel* 
_output_shapes
:
??*
dtype0
u
dense_210/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_210/bias
n
"dense_210/bias/Read/ReadVariableOpReadVariableOpdense_210/bias*
_output_shapes	
:?*
dtype0
}
dense_211/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_211/kernel
v
$dense_211/kernel/Read/ReadVariableOpReadVariableOpdense_211/kernel*
_output_shapes
:	?
*
dtype0
t
dense_211/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_211/bias
m
"dense_211/bias/Read/ReadVariableOpReadVariableOpdense_211/bias*
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
&AdaBeliefOptimizer/conv2d_210/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&AdaBeliefOptimizer/conv2d_210/kernel/m
?
:AdaBeliefOptimizer/conv2d_210/kernel/m/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_210/kernel/m*&
_output_shapes
: *
dtype0
?
$AdaBeliefOptimizer/conv2d_210/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$AdaBeliefOptimizer/conv2d_210/bias/m
?
8AdaBeliefOptimizer/conv2d_210/bias/m/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_210/bias/m*
_output_shapes
: *
dtype0
?
&AdaBeliefOptimizer/conv2d_211/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*7
shared_name(&AdaBeliefOptimizer/conv2d_211/kernel/m
?
:AdaBeliefOptimizer/conv2d_211/kernel/m/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_211/kernel/m*&
_output_shapes
: 0*
dtype0
?
$AdaBeliefOptimizer/conv2d_211/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*5
shared_name&$AdaBeliefOptimizer/conv2d_211/bias/m
?
8AdaBeliefOptimizer/conv2d_211/bias/m/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_211/bias/m*
_output_shapes
:0*
dtype0
?
%AdaBeliefOptimizer/dense_210/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_210/kernel/m
?
9AdaBeliefOptimizer/dense_210/kernel/m/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_210/kernel/m* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_210/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_210/bias/m
?
7AdaBeliefOptimizer/dense_210/bias/m/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_210/bias/m*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_211/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*6
shared_name'%AdaBeliefOptimizer/dense_211/kernel/m
?
9AdaBeliefOptimizer/dense_211/kernel/m/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_211/kernel/m*
_output_shapes
:	?
*
dtype0
?
#AdaBeliefOptimizer/dense_211/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#AdaBeliefOptimizer/dense_211/bias/m
?
7AdaBeliefOptimizer/dense_211/bias/m/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_211/bias/m*
_output_shapes
:
*
dtype0
?
&AdaBeliefOptimizer/conv2d_210/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&AdaBeliefOptimizer/conv2d_210/kernel/v
?
:AdaBeliefOptimizer/conv2d_210/kernel/v/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_210/kernel/v*&
_output_shapes
: *
dtype0
?
$AdaBeliefOptimizer/conv2d_210/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$AdaBeliefOptimizer/conv2d_210/bias/v
?
8AdaBeliefOptimizer/conv2d_210/bias/v/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_210/bias/v*
_output_shapes
: *
dtype0
?
&AdaBeliefOptimizer/conv2d_211/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*7
shared_name(&AdaBeliefOptimizer/conv2d_211/kernel/v
?
:AdaBeliefOptimizer/conv2d_211/kernel/v/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/conv2d_211/kernel/v*&
_output_shapes
: 0*
dtype0
?
$AdaBeliefOptimizer/conv2d_211/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*5
shared_name&$AdaBeliefOptimizer/conv2d_211/bias/v
?
8AdaBeliefOptimizer/conv2d_211/bias/v/Read/ReadVariableOpReadVariableOp$AdaBeliefOptimizer/conv2d_211/bias/v*
_output_shapes
:0*
dtype0
?
%AdaBeliefOptimizer/dense_210/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_210/kernel/v
?
9AdaBeliefOptimizer/dense_210/kernel/v/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_210/kernel/v* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_210/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_210/bias/v
?
7AdaBeliefOptimizer/dense_210/bias/v/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_210/bias/v*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_211/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*6
shared_name'%AdaBeliefOptimizer/dense_211/kernel/v
?
9AdaBeliefOptimizer/dense_211/kernel/v/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_211/kernel/v*
_output_shapes
:	?
*
dtype0
?
#AdaBeliefOptimizer/dense_211/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#AdaBeliefOptimizer/dense_211/bias/v
?
7AdaBeliefOptimizer/dense_211/bias/v/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_211/bias/v*
_output_shapes
:
*
dtype0
?
)AdaBeliefOptimizer/conv2d_210/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape: *:
shared_name+)AdaBeliefOptimizer/conv2d_210/kernel/vhat
?
=AdaBeliefOptimizer/conv2d_210/kernel/vhat/Read/ReadVariableOpReadVariableOp)AdaBeliefOptimizer/conv2d_210/kernel/vhat*&
_output_shapes
: *
dtype0
?
'AdaBeliefOptimizer/conv2d_210/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape: *8
shared_name)'AdaBeliefOptimizer/conv2d_210/bias/vhat
?
;AdaBeliefOptimizer/conv2d_210/bias/vhat/Read/ReadVariableOpReadVariableOp'AdaBeliefOptimizer/conv2d_210/bias/vhat*
_output_shapes
: *
dtype0
?
)AdaBeliefOptimizer/conv2d_211/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape: 0*:
shared_name+)AdaBeliefOptimizer/conv2d_211/kernel/vhat
?
=AdaBeliefOptimizer/conv2d_211/kernel/vhat/Read/ReadVariableOpReadVariableOp)AdaBeliefOptimizer/conv2d_211/kernel/vhat*&
_output_shapes
: 0*
dtype0
?
'AdaBeliefOptimizer/conv2d_211/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:0*8
shared_name)'AdaBeliefOptimizer/conv2d_211/bias/vhat
?
;AdaBeliefOptimizer/conv2d_211/bias/vhat/Read/ReadVariableOpReadVariableOp'AdaBeliefOptimizer/conv2d_211/bias/vhat*
_output_shapes
:0*
dtype0
?
(AdaBeliefOptimizer/dense_210/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*9
shared_name*(AdaBeliefOptimizer/dense_210/kernel/vhat
?
<AdaBeliefOptimizer/dense_210/kernel/vhat/Read/ReadVariableOpReadVariableOp(AdaBeliefOptimizer/dense_210/kernel/vhat* 
_output_shapes
:
??*
dtype0
?
&AdaBeliefOptimizer/dense_210/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&AdaBeliefOptimizer/dense_210/bias/vhat
?
:AdaBeliefOptimizer/dense_210/bias/vhat/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/dense_210/bias/vhat*
_output_shapes	
:?*
dtype0
?
(AdaBeliefOptimizer/dense_211/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*9
shared_name*(AdaBeliefOptimizer/dense_211/kernel/vhat
?
<AdaBeliefOptimizer/dense_211/kernel/vhat/Read/ReadVariableOpReadVariableOp(AdaBeliefOptimizer/dense_211/kernel/vhat*
_output_shapes
:	?
*
dtype0
?
&AdaBeliefOptimizer/dense_211/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&AdaBeliefOptimizer/dense_211/bias/vhat
?
:AdaBeliefOptimizer/dense_211/bias/vhat/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/dense_211/bias/vhat*
_output_shapes
:
*
dtype0

NoOpNoOp
?K
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?J
value?JB?J B?J
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
?
<iter

=beta_1

>beta_2
	?decay
@learning_rate

Amin_lr
Bsma_threshold
Ctotal_steps
Dwarmup_proportion
Eweight_decaym?m?m?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?vhat?vhat?vhat?vhat?,vhat?-vhat?6vhat?7vhat?
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
VARIABLE_VALUEconv2d_210/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_210/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEconv2d_211/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUEconv2d_211/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_210/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_210/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUEdense_211/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_211/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
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
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_210/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_210/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_211/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_211/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_210/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_210/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_211/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_211/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_210/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_210/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/conv2d_211/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE$AdaBeliefOptimizer/conv2d_211/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_210/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_210/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_211/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_211/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)AdaBeliefOptimizer/conv2d_210/kernel/vhatUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'AdaBeliefOptimizer/conv2d_210/bias/vhatSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE)AdaBeliefOptimizer/conv2d_211/kernel/vhatUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE'AdaBeliefOptimizer/conv2d_211/bias/vhatSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(AdaBeliefOptimizer/dense_210/kernel/vhatUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/dense_210/bias/vhatSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(AdaBeliefOptimizer/dense_211/kernel/vhatUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/dense_211/bias/vhatSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_conv2d_210_inputPlaceholder*/
_output_shapes
:?????????*
dtype0*$
shape:?????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_210_inputconv2d_210/kernelconv2d_210/biasconv2d_211/kernelconv2d_211/biasdense_210/kerneldense_210/biasdense_211/kerneldense_211/bias*
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
%__inference_signature_wrapper_2336765
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_210/kernel/Read/ReadVariableOp#conv2d_210/bias/Read/ReadVariableOp%conv2d_211/kernel/Read/ReadVariableOp#conv2d_211/bias/Read/ReadVariableOp$dense_210/kernel/Read/ReadVariableOp"dense_210/bias/Read/ReadVariableOp$dense_211/kernel/Read/ReadVariableOp"dense_211/bias/Read/ReadVariableOp+AdaBeliefOptimizer/iter/Read/ReadVariableOp-AdaBeliefOptimizer/beta_1/Read/ReadVariableOp-AdaBeliefOptimizer/beta_2/Read/ReadVariableOp,AdaBeliefOptimizer/decay/Read/ReadVariableOp4AdaBeliefOptimizer/learning_rate/Read/ReadVariableOp-AdaBeliefOptimizer/min_lr/Read/ReadVariableOp4AdaBeliefOptimizer/sma_threshold/Read/ReadVariableOp2AdaBeliefOptimizer/total_steps/Read/ReadVariableOp8AdaBeliefOptimizer/warmup_proportion/Read/ReadVariableOp3AdaBeliefOptimizer/weight_decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_210/kernel/m/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_210/bias/m/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_211/kernel/m/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_211/bias/m/Read/ReadVariableOp9AdaBeliefOptimizer/dense_210/kernel/m/Read/ReadVariableOp7AdaBeliefOptimizer/dense_210/bias/m/Read/ReadVariableOp9AdaBeliefOptimizer/dense_211/kernel/m/Read/ReadVariableOp7AdaBeliefOptimizer/dense_211/bias/m/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_210/kernel/v/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_210/bias/v/Read/ReadVariableOp:AdaBeliefOptimizer/conv2d_211/kernel/v/Read/ReadVariableOp8AdaBeliefOptimizer/conv2d_211/bias/v/Read/ReadVariableOp9AdaBeliefOptimizer/dense_210/kernel/v/Read/ReadVariableOp7AdaBeliefOptimizer/dense_210/bias/v/Read/ReadVariableOp9AdaBeliefOptimizer/dense_211/kernel/v/Read/ReadVariableOp7AdaBeliefOptimizer/dense_211/bias/v/Read/ReadVariableOp=AdaBeliefOptimizer/conv2d_210/kernel/vhat/Read/ReadVariableOp;AdaBeliefOptimizer/conv2d_210/bias/vhat/Read/ReadVariableOp=AdaBeliefOptimizer/conv2d_211/kernel/vhat/Read/ReadVariableOp;AdaBeliefOptimizer/conv2d_211/bias/vhat/Read/ReadVariableOp<AdaBeliefOptimizer/dense_210/kernel/vhat/Read/ReadVariableOp:AdaBeliefOptimizer/dense_210/bias/vhat/Read/ReadVariableOp<AdaBeliefOptimizer/dense_211/kernel/vhat/Read/ReadVariableOp:AdaBeliefOptimizer/dense_211/bias/vhat/Read/ReadVariableOpConst*;
Tin4
220	*
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
 __inference__traced_save_2337203
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_210/kernelconv2d_210/biasconv2d_211/kernelconv2d_211/biasdense_210/kerneldense_210/biasdense_211/kerneldense_211/biasAdaBeliefOptimizer/iterAdaBeliefOptimizer/beta_1AdaBeliefOptimizer/beta_2AdaBeliefOptimizer/decay AdaBeliefOptimizer/learning_rateAdaBeliefOptimizer/min_lr AdaBeliefOptimizer/sma_thresholdAdaBeliefOptimizer/total_steps$AdaBeliefOptimizer/warmup_proportionAdaBeliefOptimizer/weight_decaytotalcounttotal_1count_1&AdaBeliefOptimizer/conv2d_210/kernel/m$AdaBeliefOptimizer/conv2d_210/bias/m&AdaBeliefOptimizer/conv2d_211/kernel/m$AdaBeliefOptimizer/conv2d_211/bias/m%AdaBeliefOptimizer/dense_210/kernel/m#AdaBeliefOptimizer/dense_210/bias/m%AdaBeliefOptimizer/dense_211/kernel/m#AdaBeliefOptimizer/dense_211/bias/m&AdaBeliefOptimizer/conv2d_210/kernel/v$AdaBeliefOptimizer/conv2d_210/bias/v&AdaBeliefOptimizer/conv2d_211/kernel/v$AdaBeliefOptimizer/conv2d_211/bias/v%AdaBeliefOptimizer/dense_210/kernel/v#AdaBeliefOptimizer/dense_210/bias/v%AdaBeliefOptimizer/dense_211/kernel/v#AdaBeliefOptimizer/dense_211/bias/v)AdaBeliefOptimizer/conv2d_210/kernel/vhat'AdaBeliefOptimizer/conv2d_210/bias/vhat)AdaBeliefOptimizer/conv2d_211/kernel/vhat'AdaBeliefOptimizer/conv2d_211/bias/vhat(AdaBeliefOptimizer/dense_210/kernel/vhat&AdaBeliefOptimizer/dense_210/bias/vhat(AdaBeliefOptimizer/dense_211/kernel/vhat&AdaBeliefOptimizer/dense_211/bias/vhat*:
Tin3
12/*
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
#__inference__traced_restore_2337351??
?
?
G__inference_conv2d_210_layer_call_and_return_conditional_losses_2336917

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
%__inference_signature_wrapper_2336765
conv2d_210_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_210_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_23363392
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
_user_specified_nameconv2d_210_input
?
f
-__inference_dropout_211_layer_call_fn_2337005

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
H__inference_dropout_211_layer_call_and_return_conditional_losses_23365122
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
?
I
-__inference_dropout_210_layer_call_fn_2336942

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
H__inference_dropout_210_layer_call_and_return_conditional_losses_23364112
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
3__inference_max_pooling2d_211_layer_call_fn_2336363

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
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_23363572
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
?+
?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336626

inputs,
conv2d_210_2336600:  
conv2d_210_2336602: ,
conv2d_211_2336606: 0 
conv2d_211_2336608:0%
dense_210_2336614:
?? 
dense_210_2336616:	?$
dense_211_2336620:	?

dense_211_2336622:

identity??"conv2d_210/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?#dropout_210/StatefulPartitionedCall?#dropout_211/StatefulPartitionedCall?
"conv2d_210/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_210_2336600conv2d_210_2336602*
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
G__inference_conv2d_210_layer_call_and_return_conditional_losses_23363812$
"conv2d_210/StatefulPartitionedCall?
!max_pooling2d_210/PartitionedCallPartitionedCall+conv2d_210/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_23363452#
!max_pooling2d_210/PartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_210/PartitionedCall:output:0conv2d_211_2336606conv2d_211_2336608*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_23363992$
"conv2d_211/StatefulPartitionedCall?
!max_pooling2d_211/PartitionedCallPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_23363572#
!max_pooling2d_211/PartitionedCall?
#dropout_210/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_211/PartitionedCall:output:0*
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
H__inference_dropout_210_layer_call_and_return_conditional_losses_23365512%
#dropout_210/StatefulPartitionedCall?
flatten_105/PartitionedCallPartitionedCall,dropout_210/StatefulPartitionedCall:output:0*
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
H__inference_flatten_105_layer_call_and_return_conditional_losses_23364192
flatten_105/PartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall$flatten_105/PartitionedCall:output:0dense_210_2336614dense_210_2336616*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_23364322#
!dense_210/StatefulPartitionedCall?
#dropout_211/StatefulPartitionedCallStatefulPartitionedCall*dense_210/StatefulPartitionedCall:output:0$^dropout_210/StatefulPartitionedCall*
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
H__inference_dropout_211_layer_call_and_return_conditional_losses_23365122%
#dropout_211/StatefulPartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall,dropout_211/StatefulPartitionedCall:output:0dense_211_2336620dense_211_2336622*
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
F__inference_dense_211_layer_call_and_return_conditional_losses_23364562#
!dense_211/StatefulPartitionedCall?
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0#^conv2d_210/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall$^dropout_210/StatefulPartitionedCall$^dropout_211/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_210/StatefulPartitionedCall"conv2d_210/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2J
#dropout_210/StatefulPartitionedCall#dropout_210/StatefulPartitionedCall2J
#dropout_211/StatefulPartitionedCall#dropout_211/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?F
?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336897

inputsC
)conv2d_210_conv2d_readvariableop_resource: 8
*conv2d_210_biasadd_readvariableop_resource: C
)conv2d_211_conv2d_readvariableop_resource: 08
*conv2d_211_biasadd_readvariableop_resource:0<
(dense_210_matmul_readvariableop_resource:
??8
)dense_210_biasadd_readvariableop_resource:	?;
(dense_211_matmul_readvariableop_resource:	?
7
)dense_211_biasadd_readvariableop_resource:

identity??!conv2d_210/BiasAdd/ReadVariableOp? conv2d_210/Conv2D/ReadVariableOp?!conv2d_211/BiasAdd/ReadVariableOp? conv2d_211/Conv2D/ReadVariableOp? dense_210/BiasAdd/ReadVariableOp?dense_210/MatMul/ReadVariableOp? dense_211/BiasAdd/ReadVariableOp?dense_211/MatMul/ReadVariableOp?
 conv2d_210/Conv2D/ReadVariableOpReadVariableOp)conv2d_210_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_210/Conv2D/ReadVariableOp?
conv2d_210/Conv2DConv2Dinputs(conv2d_210/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_210/Conv2D?
!conv2d_210/BiasAdd/ReadVariableOpReadVariableOp*conv2d_210_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_210/BiasAdd/ReadVariableOp?
conv2d_210/BiasAddBiasAddconv2d_210/Conv2D:output:0)conv2d_210/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_210/BiasAdd?
conv2d_210/ReluReluconv2d_210/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_210/Relu?
max_pooling2d_210/MaxPoolMaxPoolconv2d_210/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_210/MaxPool?
 conv2d_211/Conv2D/ReadVariableOpReadVariableOp)conv2d_211_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_211/Conv2D/ReadVariableOp?
conv2d_211/Conv2DConv2D"max_pooling2d_210/MaxPool:output:0(conv2d_211/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_211/Conv2D?
!conv2d_211/BiasAdd/ReadVariableOpReadVariableOp*conv2d_211_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_211/BiasAdd/ReadVariableOp?
conv2d_211/BiasAddBiasAddconv2d_211/Conv2D:output:0)conv2d_211/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_211/BiasAdd?
conv2d_211/ReluReluconv2d_211/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_211/Relu?
max_pooling2d_211/MaxPoolMaxPoolconv2d_211/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_211/MaxPool{
dropout_210/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout_210/dropout/Const?
dropout_210/dropout/MulMul"max_pooling2d_211/MaxPool:output:0"dropout_210/dropout/Const:output:0*
T0*/
_output_shapes
:?????????02
dropout_210/dropout/Mul?
dropout_210/dropout/ShapeShape"max_pooling2d_211/MaxPool:output:0*
T0*
_output_shapes
:2
dropout_210/dropout/Shape?
0dropout_210/dropout/random_uniform/RandomUniformRandomUniform"dropout_210/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????0*
dtype022
0dropout_210/dropout/random_uniform/RandomUniform?
"dropout_210/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"dropout_210/dropout/GreaterEqual/y?
 dropout_210/dropout/GreaterEqualGreaterEqual9dropout_210/dropout/random_uniform/RandomUniform:output:0+dropout_210/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????02"
 dropout_210/dropout/GreaterEqual?
dropout_210/dropout/CastCast$dropout_210/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????02
dropout_210/dropout/Cast?
dropout_210/dropout/Mul_1Muldropout_210/dropout/Mul:z:0dropout_210/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????02
dropout_210/dropout/Mul_1w
flatten_105/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_105/Const?
flatten_105/ReshapeReshapedropout_210/dropout/Mul_1:z:0flatten_105/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_105/Reshape?
dense_210/MatMul/ReadVariableOpReadVariableOp(dense_210_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_210/MatMul/ReadVariableOp?
dense_210/MatMulMatMulflatten_105/Reshape:output:0'dense_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_210/MatMul?
 dense_210/BiasAdd/ReadVariableOpReadVariableOp)dense_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_210/BiasAdd/ReadVariableOp?
dense_210/BiasAddBiasAdddense_210/MatMul:product:0(dense_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_210/BiasAddw
dense_210/ReluReludense_210/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_210/Relu{
dropout_211/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_211/dropout/Const?
dropout_211/dropout/MulMuldense_210/Relu:activations:0"dropout_211/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_211/dropout/Mul?
dropout_211/dropout/ShapeShapedense_210/Relu:activations:0*
T0*
_output_shapes
:2
dropout_211/dropout/Shape?
0dropout_211/dropout/random_uniform/RandomUniformRandomUniform"dropout_211/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype022
0dropout_211/dropout/random_uniform/RandomUniform?
"dropout_211/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2$
"dropout_211/dropout/GreaterEqual/y?
 dropout_211/dropout/GreaterEqualGreaterEqual9dropout_211/dropout/random_uniform/RandomUniform:output:0+dropout_211/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2"
 dropout_211/dropout/GreaterEqual?
dropout_211/dropout/CastCast$dropout_211/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_211/dropout/Cast?
dropout_211/dropout/Mul_1Muldropout_211/dropout/Mul:z:0dropout_211/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_211/dropout/Mul_1?
dense_211/MatMul/ReadVariableOpReadVariableOp(dense_211_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_211/MatMul/ReadVariableOp?
dense_211/MatMulMatMuldropout_211/dropout/Mul_1:z:0'dense_211/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_211/MatMul?
 dense_211/BiasAdd/ReadVariableOpReadVariableOp)dense_211_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_211/BiasAdd/ReadVariableOp?
dense_211/BiasAddBiasAdddense_211/MatMul:product:0(dense_211/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_211/BiasAdd
dense_211/SoftmaxSoftmaxdense_211/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_211/Softmax?
IdentityIdentitydense_211/Softmax:softmax:0"^conv2d_210/BiasAdd/ReadVariableOp!^conv2d_210/Conv2D/ReadVariableOp"^conv2d_211/BiasAdd/ReadVariableOp!^conv2d_211/Conv2D/ReadVariableOp!^dense_210/BiasAdd/ReadVariableOp ^dense_210/MatMul/ReadVariableOp!^dense_211/BiasAdd/ReadVariableOp ^dense_211/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_210/BiasAdd/ReadVariableOp!conv2d_210/BiasAdd/ReadVariableOp2D
 conv2d_210/Conv2D/ReadVariableOp conv2d_210/Conv2D/ReadVariableOp2F
!conv2d_211/BiasAdd/ReadVariableOp!conv2d_211/BiasAdd/ReadVariableOp2D
 conv2d_211/Conv2D/ReadVariableOp conv2d_211/Conv2D/ReadVariableOp2D
 dense_210/BiasAdd/ReadVariableOp dense_210/BiasAdd/ReadVariableOp2B
dense_210/MatMul/ReadVariableOpdense_210/MatMul/ReadVariableOp2D
 dense_211/BiasAdd/ReadVariableOp dense_211/BiasAdd/ReadVariableOp2B
dense_211/MatMul/ReadVariableOpdense_211/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?+
?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336724
conv2d_210_input,
conv2d_210_2336698:  
conv2d_210_2336700: ,
conv2d_211_2336704: 0 
conv2d_211_2336706:0%
dense_210_2336712:
?? 
dense_210_2336714:	?$
dense_211_2336718:	?

dense_211_2336720:

identity??"conv2d_210/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?#dropout_210/StatefulPartitionedCall?#dropout_211/StatefulPartitionedCall?
"conv2d_210/StatefulPartitionedCallStatefulPartitionedCallconv2d_210_inputconv2d_210_2336698conv2d_210_2336700*
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
G__inference_conv2d_210_layer_call_and_return_conditional_losses_23363812$
"conv2d_210/StatefulPartitionedCall?
!max_pooling2d_210/PartitionedCallPartitionedCall+conv2d_210/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_23363452#
!max_pooling2d_210/PartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_210/PartitionedCall:output:0conv2d_211_2336704conv2d_211_2336706*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_23363992$
"conv2d_211/StatefulPartitionedCall?
!max_pooling2d_211/PartitionedCallPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_23363572#
!max_pooling2d_211/PartitionedCall?
#dropout_210/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_211/PartitionedCall:output:0*
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
H__inference_dropout_210_layer_call_and_return_conditional_losses_23365512%
#dropout_210/StatefulPartitionedCall?
flatten_105/PartitionedCallPartitionedCall,dropout_210/StatefulPartitionedCall:output:0*
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
H__inference_flatten_105_layer_call_and_return_conditional_losses_23364192
flatten_105/PartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall$flatten_105/PartitionedCall:output:0dense_210_2336712dense_210_2336714*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_23364322#
!dense_210/StatefulPartitionedCall?
#dropout_211/StatefulPartitionedCallStatefulPartitionedCall*dense_210/StatefulPartitionedCall:output:0$^dropout_210/StatefulPartitionedCall*
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
H__inference_dropout_211_layer_call_and_return_conditional_losses_23365122%
#dropout_211/StatefulPartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall,dropout_211/StatefulPartitionedCall:output:0dense_211_2336718dense_211_2336720*
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
F__inference_dense_211_layer_call_and_return_conditional_losses_23364562#
!dense_211/StatefulPartitionedCall?
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0#^conv2d_210/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall$^dropout_210/StatefulPartitionedCall$^dropout_211/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_210/StatefulPartitionedCall"conv2d_210/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall2J
#dropout_210/StatefulPartitionedCall#dropout_210/StatefulPartitionedCall2J
#dropout_211/StatefulPartitionedCall#dropout_211/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_210_input
?
I
-__inference_dropout_211_layer_call_fn_2337000

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
H__inference_dropout_211_layer_call_and_return_conditional_losses_23364432
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
I
-__inference_flatten_105_layer_call_fn_2336969

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
H__inference_flatten_105_layer_call_and_return_conditional_losses_23364192
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

?
F__inference_dense_211_layer_call_and_return_conditional_losses_2336456

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
j
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_2336345

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
?
f
H__inference_dropout_211_layer_call_and_return_conditional_losses_2336443

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
?
0__inference_sequential_105_layer_call_fn_2336807

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
K__inference_sequential_105_layer_call_and_return_conditional_losses_23366262
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
?
f
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336952

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
F__inference_dense_210_layer_call_and_return_conditional_losses_2336995

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
?g
?
 __inference__traced_save_2337203
file_prefix0
,savev2_conv2d_210_kernel_read_readvariableop.
*savev2_conv2d_210_bias_read_readvariableop0
,savev2_conv2d_211_kernel_read_readvariableop.
*savev2_conv2d_211_bias_read_readvariableop/
+savev2_dense_210_kernel_read_readvariableop-
)savev2_dense_210_bias_read_readvariableop/
+savev2_dense_211_kernel_read_readvariableop-
)savev2_dense_211_bias_read_readvariableop6
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
Asavev2_adabeliefoptimizer_conv2d_210_kernel_m_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_210_bias_m_read_readvariableopE
Asavev2_adabeliefoptimizer_conv2d_211_kernel_m_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_211_bias_m_read_readvariableopD
@savev2_adabeliefoptimizer_dense_210_kernel_m_read_readvariableopB
>savev2_adabeliefoptimizer_dense_210_bias_m_read_readvariableopD
@savev2_adabeliefoptimizer_dense_211_kernel_m_read_readvariableopB
>savev2_adabeliefoptimizer_dense_211_bias_m_read_readvariableopE
Asavev2_adabeliefoptimizer_conv2d_210_kernel_v_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_210_bias_v_read_readvariableopE
Asavev2_adabeliefoptimizer_conv2d_211_kernel_v_read_readvariableopC
?savev2_adabeliefoptimizer_conv2d_211_bias_v_read_readvariableopD
@savev2_adabeliefoptimizer_dense_210_kernel_v_read_readvariableopB
>savev2_adabeliefoptimizer_dense_210_bias_v_read_readvariableopD
@savev2_adabeliefoptimizer_dense_211_kernel_v_read_readvariableopB
>savev2_adabeliefoptimizer_dense_211_bias_v_read_readvariableopH
Dsavev2_adabeliefoptimizer_conv2d_210_kernel_vhat_read_readvariableopF
Bsavev2_adabeliefoptimizer_conv2d_210_bias_vhat_read_readvariableopH
Dsavev2_adabeliefoptimizer_conv2d_211_kernel_vhat_read_readvariableopF
Bsavev2_adabeliefoptimizer_conv2d_211_bias_vhat_read_readvariableopG
Csavev2_adabeliefoptimizer_dense_210_kernel_vhat_read_readvariableopE
Asavev2_adabeliefoptimizer_dense_210_bias_vhat_read_readvariableopG
Csavev2_adabeliefoptimizer_dense_211_kernel_vhat_read_readvariableopE
Asavev2_adabeliefoptimizer_dense_211_bias_vhat_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*?
value?B?/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEB6optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_210_kernel_read_readvariableop*savev2_conv2d_210_bias_read_readvariableop,savev2_conv2d_211_kernel_read_readvariableop*savev2_conv2d_211_bias_read_readvariableop+savev2_dense_210_kernel_read_readvariableop)savev2_dense_210_bias_read_readvariableop+savev2_dense_211_kernel_read_readvariableop)savev2_dense_211_bias_read_readvariableop2savev2_adabeliefoptimizer_iter_read_readvariableop4savev2_adabeliefoptimizer_beta_1_read_readvariableop4savev2_adabeliefoptimizer_beta_2_read_readvariableop3savev2_adabeliefoptimizer_decay_read_readvariableop;savev2_adabeliefoptimizer_learning_rate_read_readvariableop4savev2_adabeliefoptimizer_min_lr_read_readvariableop;savev2_adabeliefoptimizer_sma_threshold_read_readvariableop9savev2_adabeliefoptimizer_total_steps_read_readvariableop?savev2_adabeliefoptimizer_warmup_proportion_read_readvariableop:savev2_adabeliefoptimizer_weight_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_210_kernel_m_read_readvariableop?savev2_adabeliefoptimizer_conv2d_210_bias_m_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_211_kernel_m_read_readvariableop?savev2_adabeliefoptimizer_conv2d_211_bias_m_read_readvariableop@savev2_adabeliefoptimizer_dense_210_kernel_m_read_readvariableop>savev2_adabeliefoptimizer_dense_210_bias_m_read_readvariableop@savev2_adabeliefoptimizer_dense_211_kernel_m_read_readvariableop>savev2_adabeliefoptimizer_dense_211_bias_m_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_210_kernel_v_read_readvariableop?savev2_adabeliefoptimizer_conv2d_210_bias_v_read_readvariableopAsavev2_adabeliefoptimizer_conv2d_211_kernel_v_read_readvariableop?savev2_adabeliefoptimizer_conv2d_211_bias_v_read_readvariableop@savev2_adabeliefoptimizer_dense_210_kernel_v_read_readvariableop>savev2_adabeliefoptimizer_dense_210_bias_v_read_readvariableop@savev2_adabeliefoptimizer_dense_211_kernel_v_read_readvariableop>savev2_adabeliefoptimizer_dense_211_bias_v_read_readvariableopDsavev2_adabeliefoptimizer_conv2d_210_kernel_vhat_read_readvariableopBsavev2_adabeliefoptimizer_conv2d_210_bias_vhat_read_readvariableopDsavev2_adabeliefoptimizer_conv2d_211_kernel_vhat_read_readvariableopBsavev2_adabeliefoptimizer_conv2d_211_bias_vhat_read_readvariableopCsavev2_adabeliefoptimizer_dense_210_kernel_vhat_read_readvariableopAsavev2_adabeliefoptimizer_dense_210_bias_vhat_read_readvariableopCsavev2_adabeliefoptimizer_dense_211_kernel_vhat_read_readvariableopAsavev2_adabeliefoptimizer_dense_211_bias_vhat_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *=
dtypes3
12/	2
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

identity_1Identity_1:output:0*?
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
:,'(
&
_output_shapes
: : (

_output_shapes
: :,)(
&
_output_shapes
: 0: *

_output_shapes
:0:&+"
 
_output_shapes
:
??:!,

_output_shapes	
:?:%-!

_output_shapes
:	?
: .

_output_shapes
:
:/

_output_shapes
: 
?
d
H__inference_flatten_105_layer_call_and_return_conditional_losses_2336975

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
?
j
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_2336357

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
?2
?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336845

inputsC
)conv2d_210_conv2d_readvariableop_resource: 8
*conv2d_210_biasadd_readvariableop_resource: C
)conv2d_211_conv2d_readvariableop_resource: 08
*conv2d_211_biasadd_readvariableop_resource:0<
(dense_210_matmul_readvariableop_resource:
??8
)dense_210_biasadd_readvariableop_resource:	?;
(dense_211_matmul_readvariableop_resource:	?
7
)dense_211_biasadd_readvariableop_resource:

identity??!conv2d_210/BiasAdd/ReadVariableOp? conv2d_210/Conv2D/ReadVariableOp?!conv2d_211/BiasAdd/ReadVariableOp? conv2d_211/Conv2D/ReadVariableOp? dense_210/BiasAdd/ReadVariableOp?dense_210/MatMul/ReadVariableOp? dense_211/BiasAdd/ReadVariableOp?dense_211/MatMul/ReadVariableOp?
 conv2d_210/Conv2D/ReadVariableOpReadVariableOp)conv2d_210_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 conv2d_210/Conv2D/ReadVariableOp?
conv2d_210/Conv2DConv2Dinputs(conv2d_210/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2
conv2d_210/Conv2D?
!conv2d_210/BiasAdd/ReadVariableOpReadVariableOp*conv2d_210_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!conv2d_210/BiasAdd/ReadVariableOp?
conv2d_210/BiasAddBiasAddconv2d_210/Conv2D:output:0)conv2d_210/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2
conv2d_210/BiasAdd?
conv2d_210/ReluReluconv2d_210/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2
conv2d_210/Relu?
max_pooling2d_210/MaxPoolMaxPoolconv2d_210/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2
max_pooling2d_210/MaxPool?
 conv2d_211/Conv2D/ReadVariableOpReadVariableOp)conv2d_211_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype02"
 conv2d_211/Conv2D/ReadVariableOp?
conv2d_211/Conv2DConv2D"max_pooling2d_210/MaxPool:output:0(conv2d_211/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2
conv2d_211/Conv2D?
!conv2d_211/BiasAdd/ReadVariableOpReadVariableOp*conv2d_211_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype02#
!conv2d_211/BiasAdd/ReadVariableOp?
conv2d_211/BiasAddBiasAddconv2d_211/Conv2D:output:0)conv2d_211/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02
conv2d_211/BiasAdd?
conv2d_211/ReluReluconv2d_211/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02
conv2d_211/Relu?
max_pooling2d_211/MaxPoolMaxPoolconv2d_211/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2
max_pooling2d_211/MaxPool?
dropout_210/IdentityIdentity"max_pooling2d_211/MaxPool:output:0*
T0*/
_output_shapes
:?????????02
dropout_210/Identityw
flatten_105/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2
flatten_105/Const?
flatten_105/ReshapeReshapedropout_210/Identity:output:0flatten_105/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_105/Reshape?
dense_210/MatMul/ReadVariableOpReadVariableOp(dense_210_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_210/MatMul/ReadVariableOp?
dense_210/MatMulMatMulflatten_105/Reshape:output:0'dense_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_210/MatMul?
 dense_210/BiasAdd/ReadVariableOpReadVariableOp)dense_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_210/BiasAdd/ReadVariableOp?
dense_210/BiasAddBiasAdddense_210/MatMul:product:0(dense_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_210/BiasAddw
dense_210/ReluReludense_210/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_210/Relu?
dropout_211/IdentityIdentitydense_210/Relu:activations:0*
T0*(
_output_shapes
:??????????2
dropout_211/Identity?
dense_211/MatMul/ReadVariableOpReadVariableOp(dense_211_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_211/MatMul/ReadVariableOp?
dense_211/MatMulMatMuldropout_211/Identity:output:0'dense_211/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_211/MatMul?
 dense_211/BiasAdd/ReadVariableOpReadVariableOp)dense_211_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_211/BiasAdd/ReadVariableOp?
dense_211/BiasAddBiasAdddense_211/MatMul:product:0(dense_211/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_211/BiasAdd
dense_211/SoftmaxSoftmaxdense_211/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_211/Softmax?
IdentityIdentitydense_211/Softmax:softmax:0"^conv2d_210/BiasAdd/ReadVariableOp!^conv2d_210/Conv2D/ReadVariableOp"^conv2d_211/BiasAdd/ReadVariableOp!^conv2d_211/Conv2D/ReadVariableOp!^dense_210/BiasAdd/ReadVariableOp ^dense_210/MatMul/ReadVariableOp!^dense_211/BiasAdd/ReadVariableOp ^dense_211/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2F
!conv2d_210/BiasAdd/ReadVariableOp!conv2d_210/BiasAdd/ReadVariableOp2D
 conv2d_210/Conv2D/ReadVariableOp conv2d_210/Conv2D/ReadVariableOp2F
!conv2d_211/BiasAdd/ReadVariableOp!conv2d_211/BiasAdd/ReadVariableOp2D
 conv2d_211/Conv2D/ReadVariableOp conv2d_211/Conv2D/ReadVariableOp2D
 dense_210/BiasAdd/ReadVariableOp dense_210/BiasAdd/ReadVariableOp2B
dense_210/MatMul/ReadVariableOpdense_210/MatMul/ReadVariableOp2D
 dense_211/BiasAdd/ReadVariableOp dense_211/BiasAdd/ReadVariableOp2B
dense_211/MatMul/ReadVariableOpdense_211/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
+__inference_dense_210_layer_call_fn_2336984

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
F__inference_dense_210_layer_call_and_return_conditional_losses_23364322
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
??
? 
#__inference__traced_restore_2337351
file_prefix<
"assignvariableop_conv2d_210_kernel: 0
"assignvariableop_1_conv2d_210_bias: >
$assignvariableop_2_conv2d_211_kernel: 00
"assignvariableop_3_conv2d_211_bias:07
#assignvariableop_4_dense_210_kernel:
??0
!assignvariableop_5_dense_210_bias:	?6
#assignvariableop_6_dense_211_kernel:	?
/
!assignvariableop_7_dense_211_bias:
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
:assignvariableop_22_adabeliefoptimizer_conv2d_210_kernel_m: F
8assignvariableop_23_adabeliefoptimizer_conv2d_210_bias_m: T
:assignvariableop_24_adabeliefoptimizer_conv2d_211_kernel_m: 0F
8assignvariableop_25_adabeliefoptimizer_conv2d_211_bias_m:0M
9assignvariableop_26_adabeliefoptimizer_dense_210_kernel_m:
??F
7assignvariableop_27_adabeliefoptimizer_dense_210_bias_m:	?L
9assignvariableop_28_adabeliefoptimizer_dense_211_kernel_m:	?
E
7assignvariableop_29_adabeliefoptimizer_dense_211_bias_m:
T
:assignvariableop_30_adabeliefoptimizer_conv2d_210_kernel_v: F
8assignvariableop_31_adabeliefoptimizer_conv2d_210_bias_v: T
:assignvariableop_32_adabeliefoptimizer_conv2d_211_kernel_v: 0F
8assignvariableop_33_adabeliefoptimizer_conv2d_211_bias_v:0M
9assignvariableop_34_adabeliefoptimizer_dense_210_kernel_v:
??F
7assignvariableop_35_adabeliefoptimizer_dense_210_bias_v:	?L
9assignvariableop_36_adabeliefoptimizer_dense_211_kernel_v:	?
E
7assignvariableop_37_adabeliefoptimizer_dense_211_bias_v:
W
=assignvariableop_38_adabeliefoptimizer_conv2d_210_kernel_vhat: I
;assignvariableop_39_adabeliefoptimizer_conv2d_210_bias_vhat: W
=assignvariableop_40_adabeliefoptimizer_conv2d_211_kernel_vhat: 0I
;assignvariableop_41_adabeliefoptimizer_conv2d_211_bias_vhat:0P
<assignvariableop_42_adabeliefoptimizer_dense_210_kernel_vhat:
??I
:assignvariableop_43_adabeliefoptimizer_dense_210_bias_vhat:	?O
<assignvariableop_44_adabeliefoptimizer_dense_211_kernel_vhat:	?
H
:assignvariableop_45_adabeliefoptimizer_dense_211_bias_vhat:

identity_47??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*?
value?B?/B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEB6optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:/*
dtype0*q
valuehBf/B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::*=
dtypes3
12/	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_210_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_210_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_211_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_211_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_210_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_210_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_211_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_211_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_22AssignVariableOp:assignvariableop_22_adabeliefoptimizer_conv2d_210_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adabeliefoptimizer_conv2d_210_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp:assignvariableop_24_adabeliefoptimizer_conv2d_211_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adabeliefoptimizer_conv2d_211_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp9assignvariableop_26_adabeliefoptimizer_dense_210_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adabeliefoptimizer_dense_210_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp9assignvariableop_28_adabeliefoptimizer_dense_211_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adabeliefoptimizer_dense_211_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp:assignvariableop_30_adabeliefoptimizer_conv2d_210_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adabeliefoptimizer_conv2d_210_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp:assignvariableop_32_adabeliefoptimizer_conv2d_211_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp8assignvariableop_33_adabeliefoptimizer_conv2d_211_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp9assignvariableop_34_adabeliefoptimizer_dense_210_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp7assignvariableop_35_adabeliefoptimizer_dense_210_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp9assignvariableop_36_adabeliefoptimizer_dense_211_kernel_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp7assignvariableop_37_adabeliefoptimizer_dense_211_bias_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp=assignvariableop_38_adabeliefoptimizer_conv2d_210_kernel_vhatIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp;assignvariableop_39_adabeliefoptimizer_conv2d_210_bias_vhatIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp=assignvariableop_40_adabeliefoptimizer_conv2d_211_kernel_vhatIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41?
AssignVariableOp_41AssignVariableOp;assignvariableop_41_adabeliefoptimizer_conv2d_211_bias_vhatIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:2
Identity_42?
AssignVariableOp_42AssignVariableOp<assignvariableop_42_adabeliefoptimizer_dense_210_kernel_vhatIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43?
AssignVariableOp_43AssignVariableOp:assignvariableop_43_adabeliefoptimizer_dense_210_bias_vhatIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44?
AssignVariableOp_44AssignVariableOp<assignvariableop_44_adabeliefoptimizer_dense_211_kernel_vhatIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45?
AssignVariableOp_45AssignVariableOp:assignvariableop_45_adabeliefoptimizer_dense_211_bias_vhatIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_459
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_46Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_46?
Identity_47IdentityIdentity_46:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_47"#
identity_47Identity_47:output:0*q
_input_shapes`
^: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452(
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
g
H__inference_dropout_211_layer_call_and_return_conditional_losses_2336512

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
?	
?
0__inference_sequential_105_layer_call_fn_2336786

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
K__inference_sequential_105_layer_call_and_return_conditional_losses_23364632
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
?A
?
"__inference__wrapped_model_2336339
conv2d_210_inputR
8sequential_105_conv2d_210_conv2d_readvariableop_resource: G
9sequential_105_conv2d_210_biasadd_readvariableop_resource: R
8sequential_105_conv2d_211_conv2d_readvariableop_resource: 0G
9sequential_105_conv2d_211_biasadd_readvariableop_resource:0K
7sequential_105_dense_210_matmul_readvariableop_resource:
??G
8sequential_105_dense_210_biasadd_readvariableop_resource:	?J
7sequential_105_dense_211_matmul_readvariableop_resource:	?
F
8sequential_105_dense_211_biasadd_readvariableop_resource:

identity??0sequential_105/conv2d_210/BiasAdd/ReadVariableOp?/sequential_105/conv2d_210/Conv2D/ReadVariableOp?0sequential_105/conv2d_211/BiasAdd/ReadVariableOp?/sequential_105/conv2d_211/Conv2D/ReadVariableOp?/sequential_105/dense_210/BiasAdd/ReadVariableOp?.sequential_105/dense_210/MatMul/ReadVariableOp?/sequential_105/dense_211/BiasAdd/ReadVariableOp?.sequential_105/dense_211/MatMul/ReadVariableOp?
/sequential_105/conv2d_210/Conv2D/ReadVariableOpReadVariableOp8sequential_105_conv2d_210_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype021
/sequential_105/conv2d_210/Conv2D/ReadVariableOp?
 sequential_105/conv2d_210/Conv2DConv2Dconv2d_210_input7sequential_105/conv2d_210/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? *
paddingSAME*
strides
2"
 sequential_105/conv2d_210/Conv2D?
0sequential_105/conv2d_210/BiasAdd/ReadVariableOpReadVariableOp9sequential_105_conv2d_210_biasadd_readvariableop_resource*
_output_shapes
: *
dtype022
0sequential_105/conv2d_210/BiasAdd/ReadVariableOp?
!sequential_105/conv2d_210/BiasAddBiasAdd)sequential_105/conv2d_210/Conv2D:output:08sequential_105/conv2d_210/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:????????? 2#
!sequential_105/conv2d_210/BiasAdd?
sequential_105/conv2d_210/ReluRelu*sequential_105/conv2d_210/BiasAdd:output:0*
T0*/
_output_shapes
:????????? 2 
sequential_105/conv2d_210/Relu?
(sequential_105/max_pooling2d_210/MaxPoolMaxPool,sequential_105/conv2d_210/Relu:activations:0*/
_output_shapes
:????????? *
ksize
*
paddingVALID*
strides
2*
(sequential_105/max_pooling2d_210/MaxPool?
/sequential_105/conv2d_211/Conv2D/ReadVariableOpReadVariableOp8sequential_105_conv2d_211_conv2d_readvariableop_resource*&
_output_shapes
: 0*
dtype021
/sequential_105/conv2d_211/Conv2D/ReadVariableOp?
 sequential_105/conv2d_211/Conv2DConv2D1sequential_105/max_pooling2d_210/MaxPool:output:07sequential_105/conv2d_211/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????0*
paddingSAME*
strides
2"
 sequential_105/conv2d_211/Conv2D?
0sequential_105/conv2d_211/BiasAdd/ReadVariableOpReadVariableOp9sequential_105_conv2d_211_biasadd_readvariableop_resource*
_output_shapes
:0*
dtype022
0sequential_105/conv2d_211/BiasAdd/ReadVariableOp?
!sequential_105/conv2d_211/BiasAddBiasAdd)sequential_105/conv2d_211/Conv2D:output:08sequential_105/conv2d_211/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????02#
!sequential_105/conv2d_211/BiasAdd?
sequential_105/conv2d_211/ReluRelu*sequential_105/conv2d_211/BiasAdd:output:0*
T0*/
_output_shapes
:?????????02 
sequential_105/conv2d_211/Relu?
(sequential_105/max_pooling2d_211/MaxPoolMaxPool,sequential_105/conv2d_211/Relu:activations:0*/
_output_shapes
:?????????0*
ksize
*
paddingVALID*
strides
2*
(sequential_105/max_pooling2d_211/MaxPool?
#sequential_105/dropout_210/IdentityIdentity1sequential_105/max_pooling2d_211/MaxPool:output:0*
T0*/
_output_shapes
:?????????02%
#sequential_105/dropout_210/Identity?
 sequential_105/flatten_105/ConstConst*
_output_shapes
:*
dtype0*
valueB"????0	  2"
 sequential_105/flatten_105/Const?
"sequential_105/flatten_105/ReshapeReshape,sequential_105/dropout_210/Identity:output:0)sequential_105/flatten_105/Const:output:0*
T0*(
_output_shapes
:??????????2$
"sequential_105/flatten_105/Reshape?
.sequential_105/dense_210/MatMul/ReadVariableOpReadVariableOp7sequential_105_dense_210_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype020
.sequential_105/dense_210/MatMul/ReadVariableOp?
sequential_105/dense_210/MatMulMatMul+sequential_105/flatten_105/Reshape:output:06sequential_105/dense_210/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_105/dense_210/MatMul?
/sequential_105/dense_210/BiasAdd/ReadVariableOpReadVariableOp8sequential_105_dense_210_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype021
/sequential_105/dense_210/BiasAdd/ReadVariableOp?
 sequential_105/dense_210/BiasAddBiasAdd)sequential_105/dense_210/MatMul:product:07sequential_105/dense_210/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2"
 sequential_105/dense_210/BiasAdd?
sequential_105/dense_210/ReluRelu)sequential_105/dense_210/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_105/dense_210/Relu?
#sequential_105/dropout_211/IdentityIdentity+sequential_105/dense_210/Relu:activations:0*
T0*(
_output_shapes
:??????????2%
#sequential_105/dropout_211/Identity?
.sequential_105/dense_211/MatMul/ReadVariableOpReadVariableOp7sequential_105_dense_211_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype020
.sequential_105/dense_211/MatMul/ReadVariableOp?
sequential_105/dense_211/MatMulMatMul,sequential_105/dropout_211/Identity:output:06sequential_105/dense_211/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_105/dense_211/MatMul?
/sequential_105/dense_211/BiasAdd/ReadVariableOpReadVariableOp8sequential_105_dense_211_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype021
/sequential_105/dense_211/BiasAdd/ReadVariableOp?
 sequential_105/dense_211/BiasAddBiasAdd)sequential_105/dense_211/MatMul:product:07sequential_105/dense_211/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2"
 sequential_105/dense_211/BiasAdd?
 sequential_105/dense_211/SoftmaxSoftmax)sequential_105/dense_211/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2"
 sequential_105/dense_211/Softmax?
IdentityIdentity*sequential_105/dense_211/Softmax:softmax:01^sequential_105/conv2d_210/BiasAdd/ReadVariableOp0^sequential_105/conv2d_210/Conv2D/ReadVariableOp1^sequential_105/conv2d_211/BiasAdd/ReadVariableOp0^sequential_105/conv2d_211/Conv2D/ReadVariableOp0^sequential_105/dense_210/BiasAdd/ReadVariableOp/^sequential_105/dense_210/MatMul/ReadVariableOp0^sequential_105/dense_211/BiasAdd/ReadVariableOp/^sequential_105/dense_211/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2d
0sequential_105/conv2d_210/BiasAdd/ReadVariableOp0sequential_105/conv2d_210/BiasAdd/ReadVariableOp2b
/sequential_105/conv2d_210/Conv2D/ReadVariableOp/sequential_105/conv2d_210/Conv2D/ReadVariableOp2d
0sequential_105/conv2d_211/BiasAdd/ReadVariableOp0sequential_105/conv2d_211/BiasAdd/ReadVariableOp2b
/sequential_105/conv2d_211/Conv2D/ReadVariableOp/sequential_105/conv2d_211/Conv2D/ReadVariableOp2b
/sequential_105/dense_210/BiasAdd/ReadVariableOp/sequential_105/dense_210/BiasAdd/ReadVariableOp2`
.sequential_105/dense_210/MatMul/ReadVariableOp.sequential_105/dense_210/MatMul/ReadVariableOp2b
/sequential_105/dense_211/BiasAdd/ReadVariableOp/sequential_105/dense_211/BiasAdd/ReadVariableOp2`
.sequential_105/dense_211/MatMul/ReadVariableOp.sequential_105/dense_211/MatMul/ReadVariableOp:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_210_input
?	
?
0__inference_sequential_105_layer_call_fn_2336482
conv2d_210_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_210_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
K__inference_sequential_105_layer_call_and_return_conditional_losses_23364632
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
_user_specified_nameconv2d_210_input
?(
?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336463

inputs,
conv2d_210_2336382:  
conv2d_210_2336384: ,
conv2d_211_2336400: 0 
conv2d_211_2336402:0%
dense_210_2336433:
?? 
dense_210_2336435:	?$
dense_211_2336457:	?

dense_211_2336459:

identity??"conv2d_210/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?
"conv2d_210/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_210_2336382conv2d_210_2336384*
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
G__inference_conv2d_210_layer_call_and_return_conditional_losses_23363812$
"conv2d_210/StatefulPartitionedCall?
!max_pooling2d_210/PartitionedCallPartitionedCall+conv2d_210/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_23363452#
!max_pooling2d_210/PartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_210/PartitionedCall:output:0conv2d_211_2336400conv2d_211_2336402*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_23363992$
"conv2d_211/StatefulPartitionedCall?
!max_pooling2d_211/PartitionedCallPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_23363572#
!max_pooling2d_211/PartitionedCall?
dropout_210/PartitionedCallPartitionedCall*max_pooling2d_211/PartitionedCall:output:0*
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
H__inference_dropout_210_layer_call_and_return_conditional_losses_23364112
dropout_210/PartitionedCall?
flatten_105/PartitionedCallPartitionedCall$dropout_210/PartitionedCall:output:0*
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
H__inference_flatten_105_layer_call_and_return_conditional_losses_23364192
flatten_105/PartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall$flatten_105/PartitionedCall:output:0dense_210_2336433dense_210_2336435*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_23364322#
!dense_210/StatefulPartitionedCall?
dropout_211/PartitionedCallPartitionedCall*dense_210/StatefulPartitionedCall:output:0*
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
H__inference_dropout_211_layer_call_and_return_conditional_losses_23364432
dropout_211/PartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall$dropout_211/PartitionedCall:output:0dense_211_2336457dense_211_2336459*
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
F__inference_dense_211_layer_call_and_return_conditional_losses_23364562#
!dense_211/StatefulPartitionedCall?
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0#^conv2d_210/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_210/StatefulPartitionedCall"conv2d_210/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
d
H__inference_flatten_105_layer_call_and_return_conditional_losses_2336419

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
,__inference_conv2d_211_layer_call_fn_2336926

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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_23363992
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
3__inference_max_pooling2d_210_layer_call_fn_2336351

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
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_23363452
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
?
f
-__inference_dropout_210_layer_call_fn_2336947

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
H__inference_dropout_210_layer_call_and_return_conditional_losses_23365512
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
g
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336551

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
H__inference_dropout_211_layer_call_and_return_conditional_losses_2337010

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
?
G__inference_conv2d_211_layer_call_and_return_conditional_losses_2336399

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
?
?
,__inference_conv2d_210_layer_call_fn_2336906

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
G__inference_conv2d_210_layer_call_and_return_conditional_losses_23363812
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
?
?
G__inference_conv2d_210_layer_call_and_return_conditional_losses_2336381

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
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336964

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
F__inference_dense_210_layer_call_and_return_conditional_losses_2336432

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
+__inference_dense_211_layer_call_fn_2337031

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
F__inference_dense_211_layer_call_and_return_conditional_losses_23364562
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
F__inference_dense_211_layer_call_and_return_conditional_losses_2337042

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
0__inference_sequential_105_layer_call_fn_2336666
conv2d_210_input!
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
StatefulPartitionedCallStatefulPartitionedCallconv2d_210_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
K__inference_sequential_105_layer_call_and_return_conditional_losses_23366262
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
_user_specified_nameconv2d_210_input
?(
?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336695
conv2d_210_input,
conv2d_210_2336669:  
conv2d_210_2336671: ,
conv2d_211_2336675: 0 
conv2d_211_2336677:0%
dense_210_2336683:
?? 
dense_210_2336685:	?$
dense_211_2336689:	?

dense_211_2336691:

identity??"conv2d_210/StatefulPartitionedCall?"conv2d_211/StatefulPartitionedCall?!dense_210/StatefulPartitionedCall?!dense_211/StatefulPartitionedCall?
"conv2d_210/StatefulPartitionedCallStatefulPartitionedCallconv2d_210_inputconv2d_210_2336669conv2d_210_2336671*
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
G__inference_conv2d_210_layer_call_and_return_conditional_losses_23363812$
"conv2d_210/StatefulPartitionedCall?
!max_pooling2d_210/PartitionedCallPartitionedCall+conv2d_210/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_23363452#
!max_pooling2d_210/PartitionedCall?
"conv2d_211/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_210/PartitionedCall:output:0conv2d_211_2336675conv2d_211_2336677*
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_23363992$
"conv2d_211/StatefulPartitionedCall?
!max_pooling2d_211/PartitionedCallPartitionedCall+conv2d_211/StatefulPartitionedCall:output:0*
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
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_23363572#
!max_pooling2d_211/PartitionedCall?
dropout_210/PartitionedCallPartitionedCall*max_pooling2d_211/PartitionedCall:output:0*
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
H__inference_dropout_210_layer_call_and_return_conditional_losses_23364112
dropout_210/PartitionedCall?
flatten_105/PartitionedCallPartitionedCall$dropout_210/PartitionedCall:output:0*
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
H__inference_flatten_105_layer_call_and_return_conditional_losses_23364192
flatten_105/PartitionedCall?
!dense_210/StatefulPartitionedCallStatefulPartitionedCall$flatten_105/PartitionedCall:output:0dense_210_2336683dense_210_2336685*
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
F__inference_dense_210_layer_call_and_return_conditional_losses_23364322#
!dense_210/StatefulPartitionedCall?
dropout_211/PartitionedCallPartitionedCall*dense_210/StatefulPartitionedCall:output:0*
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
H__inference_dropout_211_layer_call_and_return_conditional_losses_23364432
dropout_211/PartitionedCall?
!dense_211/StatefulPartitionedCallStatefulPartitionedCall$dropout_211/PartitionedCall:output:0dense_211_2336689dense_211_2336691*
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
F__inference_dense_211_layer_call_and_return_conditional_losses_23364562#
!dense_211/StatefulPartitionedCall?
IdentityIdentity*dense_211/StatefulPartitionedCall:output:0#^conv2d_210/StatefulPartitionedCall#^conv2d_211/StatefulPartitionedCall"^dense_210/StatefulPartitionedCall"^dense_211/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+:?????????: : : : : : : : 2H
"conv2d_210/StatefulPartitionedCall"conv2d_210/StatefulPartitionedCall2H
"conv2d_211/StatefulPartitionedCall"conv2d_211/StatefulPartitionedCall2F
!dense_210/StatefulPartitionedCall!dense_210/StatefulPartitionedCall2F
!dense_211/StatefulPartitionedCall!dense_211/StatefulPartitionedCall:a ]
/
_output_shapes
:?????????
*
_user_specified_nameconv2d_210_input
?
g
H__inference_dropout_211_layer_call_and_return_conditional_losses_2337022

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
?
?
G__inference_conv2d_211_layer_call_and_return_conditional_losses_2336937

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
?
f
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336411

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
conv2d_210_inputA
"serving_default_conv2d_210_input:0?????????=
	dense_2110
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?I
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
_tf_keras_sequential?E{"name": "sequential_105", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_105", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_210_input"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_210", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_210", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Conv2D", "config": {"name": "conv2d_211", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_211", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}}, {"class_name": "Dropout", "config": {"name": "dropout_210", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}, {"class_name": "Flatten", "config": {"name": "flatten_105", "trainable": true, "dtype": "float32", "data_format": "channels_last"}}, {"class_name": "Dense", "config": {"name": "dense_210", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dropout", "config": {"name": "dropout_211", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_211", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 28, 28, 1]}, "float32", "conv2d_210_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_105", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "conv2d_210_input"}, "shared_object_id": 0}, {"class_name": "Conv2D", "config": {"name": "conv2d_210", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_210", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4}, {"class_name": "Conv2D", "config": {"name": "conv2d_211", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_211", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8}, {"class_name": "Dropout", "config": {"name": "dropout_210", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}, {"class_name": "Flatten", "config": {"name": "flatten_105", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10}, {"class_name": "Dense", "config": {"name": "dense_210", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13}, {"class_name": "Dropout", "config": {"name": "dropout_211", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "dense_211", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 20}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "AdaBeliefOptimizer", "config": {"name": "AdaBeliefOptimizer", "learning_rate": 0.0010000000474974513, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "decay": 0.0, "weight_decay": 0.0, "sma_threshold": 5.0, "epsilon": 1e-14, "amsgrad": true, "rectify": true, "total_steps": 0, "warmup_proportion": 0.10000000149011612, "min_lr": 0.0}}}}
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
{"name": "conv2d_210", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_210", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 28, 28, 1]}, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 28, 28, 1]}}
?
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_210", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_210", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 21}}
?


kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d_211", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_211", "trainable": true, "dtype": "float32", "filters": 48, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 5}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 6}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 7, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 22}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 14, 14, 32]}}
?
 trainable_variables
!regularization_losses
"	variables
#	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "max_pooling2d_211", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_211", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 23}}
?
$trainable_variables
%regularization_losses
&	variables
'	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_210", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_210", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "shared_object_id": 9}
?
(trainable_variables
)regularization_losses
*	variables
+	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_105", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 24}}
?

,kernel
-bias
.trainable_variables
/regularization_losses
0	variables
1	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_210", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_210", "trainable": true, "dtype": "float32", "units": 250, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 11}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 12}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2352}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2352]}}
?
2trainable_variables
3regularization_losses
4	variables
5	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_211", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_211", "trainable": true, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 14}
?

6kernel
7bias
8trainable_variables
9regularization_losses
:	variables
;	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_211", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_211", "trainable": true, "dtype": "float32", "units": 10, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 26}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
<iter

=beta_1

>beta_2
	?decay
@learning_rate

Amin_lr
Bsma_threshold
Ctotal_steps
Dwarmup_proportion
Eweight_decaym?m?m?m?,m?-m?6m?7m?v?v?v?v?,v?-v?6v?7v?vhat?vhat?vhat?vhat?,vhat?-vhat?6vhat?7vhat?"
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
+:) 2conv2d_210/kernel
: 2conv2d_210/bias
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
+:) 02conv2d_211/kernel
:02conv2d_211/bias
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
??2dense_210/kernel
:?2dense_210/bias
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
2dense_211/kernel
:
2dense_211/bias
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
>:< 2&AdaBeliefOptimizer/conv2d_210/kernel/m
0:. 2$AdaBeliefOptimizer/conv2d_210/bias/m
>:< 02&AdaBeliefOptimizer/conv2d_211/kernel/m
0:.02$AdaBeliefOptimizer/conv2d_211/bias/m
7:5
??2%AdaBeliefOptimizer/dense_210/kernel/m
0:.?2#AdaBeliefOptimizer/dense_210/bias/m
6:4	?
2%AdaBeliefOptimizer/dense_211/kernel/m
/:-
2#AdaBeliefOptimizer/dense_211/bias/m
>:< 2&AdaBeliefOptimizer/conv2d_210/kernel/v
0:. 2$AdaBeliefOptimizer/conv2d_210/bias/v
>:< 02&AdaBeliefOptimizer/conv2d_211/kernel/v
0:.02$AdaBeliefOptimizer/conv2d_211/bias/v
7:5
??2%AdaBeliefOptimizer/dense_210/kernel/v
0:.?2#AdaBeliefOptimizer/dense_210/bias/v
6:4	?
2%AdaBeliefOptimizer/dense_211/kernel/v
/:-
2#AdaBeliefOptimizer/dense_211/bias/v
A:? 2)AdaBeliefOptimizer/conv2d_210/kernel/vhat
3:1 2'AdaBeliefOptimizer/conv2d_210/bias/vhat
A:? 02)AdaBeliefOptimizer/conv2d_211/kernel/vhat
3:102'AdaBeliefOptimizer/conv2d_211/bias/vhat
::8
??2(AdaBeliefOptimizer/dense_210/kernel/vhat
3:1?2&AdaBeliefOptimizer/dense_210/bias/vhat
9:7	?
2(AdaBeliefOptimizer/dense_211/kernel/vhat
2:0
2&AdaBeliefOptimizer/dense_211/bias/vhat
?2?
0__inference_sequential_105_layer_call_fn_2336482
0__inference_sequential_105_layer_call_fn_2336786
0__inference_sequential_105_layer_call_fn_2336807
0__inference_sequential_105_layer_call_fn_2336666?
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
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336845
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336897
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336695
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336724?
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
"__inference__wrapped_model_2336339?
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
conv2d_210_input?????????
?2?
,__inference_conv2d_210_layer_call_fn_2336906?
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
G__inference_conv2d_210_layer_call_and_return_conditional_losses_2336917?
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
3__inference_max_pooling2d_210_layer_call_fn_2336351?
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
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_2336345?
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
,__inference_conv2d_211_layer_call_fn_2336926?
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
G__inference_conv2d_211_layer_call_and_return_conditional_losses_2336937?
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
3__inference_max_pooling2d_211_layer_call_fn_2336363?
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
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_2336357?
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
-__inference_dropout_210_layer_call_fn_2336942
-__inference_dropout_210_layer_call_fn_2336947?
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
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336952
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336964?
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
-__inference_flatten_105_layer_call_fn_2336969?
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
H__inference_flatten_105_layer_call_and_return_conditional_losses_2336975?
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
+__inference_dense_210_layer_call_fn_2336984?
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
F__inference_dense_210_layer_call_and_return_conditional_losses_2336995?
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
-__inference_dropout_211_layer_call_fn_2337000
-__inference_dropout_211_layer_call_fn_2337005?
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
H__inference_dropout_211_layer_call_and_return_conditional_losses_2337010
H__inference_dropout_211_layer_call_and_return_conditional_losses_2337022?
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
+__inference_dense_211_layer_call_fn_2337031?
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
F__inference_dense_211_layer_call_and_return_conditional_losses_2337042?
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
%__inference_signature_wrapper_2336765conv2d_210_input"?
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
"__inference__wrapped_model_2336339?,-67A?>
7?4
2?/
conv2d_210_input?????????
? "5?2
0
	dense_211#? 
	dense_211?????????
?
G__inference_conv2d_210_layer_call_and_return_conditional_losses_2336917l7?4
-?*
(?%
inputs?????????
? "-?*
#? 
0????????? 
? ?
,__inference_conv2d_210_layer_call_fn_2336906_7?4
-?*
(?%
inputs?????????
? " ?????????? ?
G__inference_conv2d_211_layer_call_and_return_conditional_losses_2336937l7?4
-?*
(?%
inputs????????? 
? "-?*
#? 
0?????????0
? ?
,__inference_conv2d_211_layer_call_fn_2336926_7?4
-?*
(?%
inputs????????? 
? " ??????????0?
F__inference_dense_210_layer_call_and_return_conditional_losses_2336995^,-0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_210_layer_call_fn_2336984Q,-0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_211_layer_call_and_return_conditional_losses_2337042]670?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? 
+__inference_dense_211_layer_call_fn_2337031P670?-
&?#
!?
inputs??????????
? "??????????
?
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336952l;?8
1?.
(?%
inputs?????????0
p 
? "-?*
#? 
0?????????0
? ?
H__inference_dropout_210_layer_call_and_return_conditional_losses_2336964l;?8
1?.
(?%
inputs?????????0
p
? "-?*
#? 
0?????????0
? ?
-__inference_dropout_210_layer_call_fn_2336942_;?8
1?.
(?%
inputs?????????0
p 
? " ??????????0?
-__inference_dropout_210_layer_call_fn_2336947_;?8
1?.
(?%
inputs?????????0
p
? " ??????????0?
H__inference_dropout_211_layer_call_and_return_conditional_losses_2337010^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_211_layer_call_and_return_conditional_losses_2337022^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_211_layer_call_fn_2337000Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_211_layer_call_fn_2337005Q4?1
*?'
!?
inputs??????????
p
? "????????????
H__inference_flatten_105_layer_call_and_return_conditional_losses_2336975a7?4
-?*
(?%
inputs?????????0
? "&?#
?
0??????????
? ?
-__inference_flatten_105_layer_call_fn_2336969T7?4
-?*
(?%
inputs?????????0
? "????????????
N__inference_max_pooling2d_210_layer_call_and_return_conditional_losses_2336345?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_210_layer_call_fn_2336351?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
N__inference_max_pooling2d_211_layer_call_and_return_conditional_losses_2336357?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
3__inference_max_pooling2d_211_layer_call_fn_2336363?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336695|,-67I?F
??<
2?/
conv2d_210_input?????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336724|,-67I?F
??<
2?/
conv2d_210_input?????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336845r,-67??<
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
K__inference_sequential_105_layer_call_and_return_conditional_losses_2336897r,-67??<
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
0__inference_sequential_105_layer_call_fn_2336482o,-67I?F
??<
2?/
conv2d_210_input?????????
p 

 
? "??????????
?
0__inference_sequential_105_layer_call_fn_2336666o,-67I?F
??<
2?/
conv2d_210_input?????????
p

 
? "??????????
?
0__inference_sequential_105_layer_call_fn_2336786e,-67??<
5?2
(?%
inputs?????????
p 

 
? "??????????
?
0__inference_sequential_105_layer_call_fn_2336807e,-67??<
5?2
(?%
inputs?????????
p

 
? "??????????
?
%__inference_signature_wrapper_2336765?,-67U?R
? 
K?H
F
conv2d_210_input2?/
conv2d_210_input?????????"5?2
0
	dense_211#? 
	dense_211?????????
