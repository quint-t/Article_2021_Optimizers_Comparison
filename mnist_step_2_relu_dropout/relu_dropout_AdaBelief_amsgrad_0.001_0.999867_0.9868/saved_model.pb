ٳ
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
~
dense_102/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_102/kernel
w
$dense_102/kernel/Read/ReadVariableOpReadVariableOpdense_102/kernel* 
_output_shapes
:
??*
dtype0
u
dense_102/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_102/bias
n
"dense_102/bias/Read/ReadVariableOpReadVariableOpdense_102/bias*
_output_shapes	
:?*
dtype0
~
dense_103/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_103/kernel
w
$dense_103/kernel/Read/ReadVariableOpReadVariableOpdense_103/kernel* 
_output_shapes
:
??*
dtype0
u
dense_103/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_103/bias
n
"dense_103/bias/Read/ReadVariableOpReadVariableOpdense_103/bias*
_output_shapes	
:?*
dtype0
}
dense_104/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_104/kernel
v
$dense_104/kernel/Read/ReadVariableOpReadVariableOpdense_104/kernel*
_output_shapes
:	?
*
dtype0
t
dense_104/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_104/bias
m
"dense_104/bias/Read/ReadVariableOpReadVariableOpdense_104/bias*
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
%AdaBeliefOptimizer/dense_102/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_102/kernel/m
?
9AdaBeliefOptimizer/dense_102/kernel/m/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_102/kernel/m* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_102/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_102/bias/m
?
7AdaBeliefOptimizer/dense_102/bias/m/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_102/bias/m*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_103/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_103/kernel/m
?
9AdaBeliefOptimizer/dense_103/kernel/m/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_103/kernel/m* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_103/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_103/bias/m
?
7AdaBeliefOptimizer/dense_103/bias/m/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_103/bias/m*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_104/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*6
shared_name'%AdaBeliefOptimizer/dense_104/kernel/m
?
9AdaBeliefOptimizer/dense_104/kernel/m/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_104/kernel/m*
_output_shapes
:	?
*
dtype0
?
#AdaBeliefOptimizer/dense_104/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#AdaBeliefOptimizer/dense_104/bias/m
?
7AdaBeliefOptimizer/dense_104/bias/m/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_104/bias/m*
_output_shapes
:
*
dtype0
?
%AdaBeliefOptimizer/dense_102/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_102/kernel/v
?
9AdaBeliefOptimizer/dense_102/kernel/v/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_102/kernel/v* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_102/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_102/bias/v
?
7AdaBeliefOptimizer/dense_102/bias/v/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_102/bias/v*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_103/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*6
shared_name'%AdaBeliefOptimizer/dense_103/kernel/v
?
9AdaBeliefOptimizer/dense_103/kernel/v/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_103/kernel/v* 
_output_shapes
:
??*
dtype0
?
#AdaBeliefOptimizer/dense_103/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*4
shared_name%#AdaBeliefOptimizer/dense_103/bias/v
?
7AdaBeliefOptimizer/dense_103/bias/v/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_103/bias/v*
_output_shapes	
:?*
dtype0
?
%AdaBeliefOptimizer/dense_104/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*6
shared_name'%AdaBeliefOptimizer/dense_104/kernel/v
?
9AdaBeliefOptimizer/dense_104/kernel/v/Read/ReadVariableOpReadVariableOp%AdaBeliefOptimizer/dense_104/kernel/v*
_output_shapes
:	?
*
dtype0
?
#AdaBeliefOptimizer/dense_104/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#AdaBeliefOptimizer/dense_104/bias/v
?
7AdaBeliefOptimizer/dense_104/bias/v/Read/ReadVariableOpReadVariableOp#AdaBeliefOptimizer/dense_104/bias/v*
_output_shapes
:
*
dtype0
?
(AdaBeliefOptimizer/dense_102/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*9
shared_name*(AdaBeliefOptimizer/dense_102/kernel/vhat
?
<AdaBeliefOptimizer/dense_102/kernel/vhat/Read/ReadVariableOpReadVariableOp(AdaBeliefOptimizer/dense_102/kernel/vhat* 
_output_shapes
:
??*
dtype0
?
&AdaBeliefOptimizer/dense_102/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&AdaBeliefOptimizer/dense_102/bias/vhat
?
:AdaBeliefOptimizer/dense_102/bias/vhat/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/dense_102/bias/vhat*
_output_shapes	
:?*
dtype0
?
(AdaBeliefOptimizer/dense_103/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*9
shared_name*(AdaBeliefOptimizer/dense_103/kernel/vhat
?
<AdaBeliefOptimizer/dense_103/kernel/vhat/Read/ReadVariableOpReadVariableOp(AdaBeliefOptimizer/dense_103/kernel/vhat* 
_output_shapes
:
??*
dtype0
?
&AdaBeliefOptimizer/dense_103/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&AdaBeliefOptimizer/dense_103/bias/vhat
?
:AdaBeliefOptimizer/dense_103/bias/vhat/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/dense_103/bias/vhat*
_output_shapes	
:?*
dtype0
?
(AdaBeliefOptimizer/dense_104/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*9
shared_name*(AdaBeliefOptimizer/dense_104/kernel/vhat
?
<AdaBeliefOptimizer/dense_104/kernel/vhat/Read/ReadVariableOpReadVariableOp(AdaBeliefOptimizer/dense_104/kernel/vhat*
_output_shapes
:	?
*
dtype0
?
&AdaBeliefOptimizer/dense_104/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*7
shared_name(&AdaBeliefOptimizer/dense_104/bias/vhat
?
:AdaBeliefOptimizer/dense_104/bias/vhat/Read/ReadVariableOpReadVariableOp&AdaBeliefOptimizer/dense_104/bias/vhat*
_output_shapes
:
*
dtype0

NoOpNoOp
?:
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?:
value?:B?9 B?9
?
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
?
+iter

,beta_1

-beta_2
	.decay
/learning_rate

0min_lr
1sma_threshold
2total_steps
3warmup_proportion
4weight_decaymcmdmemf%mg&mhvivjvkvl%vm&vn
vhato
vhatp
vhatq
vhatr
%vhats
&vhatt
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
?
regularization_losses
5layer_metrics
6layer_regularization_losses
		variables
7non_trainable_variables

trainable_variables
8metrics

9layers
 
 
 
 
?
regularization_losses
:layer_metrics
;layer_regularization_losses
	variables
<non_trainable_variables
trainable_variables
=metrics

>layers
\Z
VARIABLE_VALUEdense_102/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_102/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables
trainable_variables
Bmetrics

Clayers
 
 
 
?
regularization_losses
Dlayer_metrics
Elayer_regularization_losses
	variables
Fnon_trainable_variables
trainable_variables
Gmetrics

Hlayers
\Z
VARIABLE_VALUEdense_103/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_103/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
Ilayer_metrics
Jlayer_regularization_losses
	variables
Knon_trainable_variables
trainable_variables
Lmetrics

Mlayers
 
 
 
?
!regularization_losses
Nlayer_metrics
Olayer_regularization_losses
"	variables
Pnon_trainable_variables
#trainable_variables
Qmetrics

Rlayers
\Z
VARIABLE_VALUEdense_104/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_104/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
?
'regularization_losses
Slayer_metrics
Tlayer_regularization_losses
(	variables
Unon_trainable_variables
)trainable_variables
Vmetrics

Wlayers
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
 
 
 

X0
Y1
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
	Ztotal
	[count
\	variables
]	keras_api
D
	^total
	_count
`
_fn_kwargs
a	variables
b	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

Z0
[1

\	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

^0
_1

a	variables
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_102/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_102/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_103/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_103/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_104/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_104/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_102/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_102/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_103/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_103/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE%AdaBeliefOptimizer/dense_104/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE#AdaBeliefOptimizer/dense_104/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(AdaBeliefOptimizer/dense_102/kernel/vhatUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/dense_102/bias/vhatSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(AdaBeliefOptimizer/dense_103/kernel/vhatUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/dense_103/bias/vhatSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE(AdaBeliefOptimizer/dense_104/kernel/vhatUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUE&AdaBeliefOptimizer/dense_104/bias/vhatSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_dropout_34_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_dropout_34_inputdense_102/kerneldense_102/biasdense_103/kerneldense_103/biasdense_104/kerneldense_104/bias*
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
GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_9605024
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_102/kernel/Read/ReadVariableOp"dense_102/bias/Read/ReadVariableOp$dense_103/kernel/Read/ReadVariableOp"dense_103/bias/Read/ReadVariableOp$dense_104/kernel/Read/ReadVariableOp"dense_104/bias/Read/ReadVariableOp+AdaBeliefOptimizer/iter/Read/ReadVariableOp-AdaBeliefOptimizer/beta_1/Read/ReadVariableOp-AdaBeliefOptimizer/beta_2/Read/ReadVariableOp,AdaBeliefOptimizer/decay/Read/ReadVariableOp4AdaBeliefOptimizer/learning_rate/Read/ReadVariableOp-AdaBeliefOptimizer/min_lr/Read/ReadVariableOp4AdaBeliefOptimizer/sma_threshold/Read/ReadVariableOp2AdaBeliefOptimizer/total_steps/Read/ReadVariableOp8AdaBeliefOptimizer/warmup_proportion/Read/ReadVariableOp3AdaBeliefOptimizer/weight_decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp9AdaBeliefOptimizer/dense_102/kernel/m/Read/ReadVariableOp7AdaBeliefOptimizer/dense_102/bias/m/Read/ReadVariableOp9AdaBeliefOptimizer/dense_103/kernel/m/Read/ReadVariableOp7AdaBeliefOptimizer/dense_103/bias/m/Read/ReadVariableOp9AdaBeliefOptimizer/dense_104/kernel/m/Read/ReadVariableOp7AdaBeliefOptimizer/dense_104/bias/m/Read/ReadVariableOp9AdaBeliefOptimizer/dense_102/kernel/v/Read/ReadVariableOp7AdaBeliefOptimizer/dense_102/bias/v/Read/ReadVariableOp9AdaBeliefOptimizer/dense_103/kernel/v/Read/ReadVariableOp7AdaBeliefOptimizer/dense_103/bias/v/Read/ReadVariableOp9AdaBeliefOptimizer/dense_104/kernel/v/Read/ReadVariableOp7AdaBeliefOptimizer/dense_104/bias/v/Read/ReadVariableOp<AdaBeliefOptimizer/dense_102/kernel/vhat/Read/ReadVariableOp:AdaBeliefOptimizer/dense_102/bias/vhat/Read/ReadVariableOp<AdaBeliefOptimizer/dense_103/kernel/vhat/Read/ReadVariableOp:AdaBeliefOptimizer/dense_103/bias/vhat/Read/ReadVariableOp<AdaBeliefOptimizer/dense_104/kernel/vhat/Read/ReadVariableOp:AdaBeliefOptimizer/dense_104/bias/vhat/Read/ReadVariableOpConst*3
Tin,
*2(	*
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
 __inference__traced_save_9605356
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_102/kerneldense_102/biasdense_103/kerneldense_103/biasdense_104/kerneldense_104/biasAdaBeliefOptimizer/iterAdaBeliefOptimizer/beta_1AdaBeliefOptimizer/beta_2AdaBeliefOptimizer/decay AdaBeliefOptimizer/learning_rateAdaBeliefOptimizer/min_lr AdaBeliefOptimizer/sma_thresholdAdaBeliefOptimizer/total_steps$AdaBeliefOptimizer/warmup_proportionAdaBeliefOptimizer/weight_decaytotalcounttotal_1count_1%AdaBeliefOptimizer/dense_102/kernel/m#AdaBeliefOptimizer/dense_102/bias/m%AdaBeliefOptimizer/dense_103/kernel/m#AdaBeliefOptimizer/dense_103/bias/m%AdaBeliefOptimizer/dense_104/kernel/m#AdaBeliefOptimizer/dense_104/bias/m%AdaBeliefOptimizer/dense_102/kernel/v#AdaBeliefOptimizer/dense_102/bias/v%AdaBeliefOptimizer/dense_103/kernel/v#AdaBeliefOptimizer/dense_103/bias/v%AdaBeliefOptimizer/dense_104/kernel/v#AdaBeliefOptimizer/dense_104/bias/v(AdaBeliefOptimizer/dense_102/kernel/vhat&AdaBeliefOptimizer/dense_102/bias/vhat(AdaBeliefOptimizer/dense_103/kernel/vhat&AdaBeliefOptimizer/dense_103/bias/vhat(AdaBeliefOptimizer/dense_104/kernel/vhat&AdaBeliefOptimizer/dense_104/bias/vhat*2
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
#__inference__traced_restore_9605480Ƥ
?	
?
F__inference_dense_103_layer_call_and_return_conditional_losses_9605190

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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
?
a
E__inference_re_lu_69_layer_call_and_return_conditional_losses_9604771

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
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
F__inference_dense_104_layer_call_and_return_conditional_losses_9605219

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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
+__inference_dense_102_layer_call_fn_9605151

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
GPU 2J 8? *O
fJRH
F__inference_dense_102_layer_call_and_return_conditional_losses_96047372
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
?
?
+__inference_dense_104_layer_call_fn_9605209

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
F__inference_dense_104_layer_call_and_return_conditional_losses_96047832
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
e
G__inference_dropout_34_layer_call_and_return_conditional_losses_9604725

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_34_layer_call_fn_9605041

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
GPU 2J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_96047902
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
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9605115

inputs<
(dense_102_matmul_readvariableop_resource:
??8
)dense_102_biasadd_readvariableop_resource:	?<
(dense_103_matmul_readvariableop_resource:
??8
)dense_103_biasadd_readvariableop_resource:	?;
(dense_104_matmul_readvariableop_resource:	?
7
)dense_104_biasadd_readvariableop_resource:

identity?? dense_102/BiasAdd/ReadVariableOp?dense_102/MatMul/ReadVariableOp? dense_103/BiasAdd/ReadVariableOp?dense_103/MatMul/ReadVariableOp? dense_104/BiasAdd/ReadVariableOp?dense_104/MatMul/ReadVariableOpy
dropout_34/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_34/dropout/Const?
dropout_34/dropout/MulMulinputs!dropout_34/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_34/dropout/Mulj
dropout_34/dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout_34/dropout/Shape?
/dropout_34/dropout/random_uniform/RandomUniformRandomUniform!dropout_34/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_34/dropout/random_uniform/RandomUniform?
!dropout_34/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_34/dropout/GreaterEqual/y?
dropout_34/dropout/GreaterEqualGreaterEqual8dropout_34/dropout/random_uniform/RandomUniform:output:0*dropout_34/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_34/dropout/GreaterEqual?
dropout_34/dropout/CastCast#dropout_34/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_34/dropout/Cast?
dropout_34/dropout/Mul_1Muldropout_34/dropout/Mul:z:0dropout_34/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_34/dropout/Mul_1?
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_102/MatMul/ReadVariableOp?
dense_102/MatMulMatMuldropout_34/dropout/Mul_1:z:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_102/MatMul?
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_102/BiasAdd/ReadVariableOp?
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_102/BiasAddu
re_lu_68/ReluReludense_102/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_68/Relu?
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_103/MatMul/ReadVariableOp?
dense_103/MatMulMatMulre_lu_68/Relu:activations:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_103/MatMul?
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_103/BiasAdd/ReadVariableOp?
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_103/BiasAddu
re_lu_69/ReluReludense_103/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_69/Relu?
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_104/MatMul/ReadVariableOp?
dense_104/MatMulMatMulre_lu_69/Relu:activations:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_104/MatMul?
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_104/BiasAdd/ReadVariableOp?
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_104/BiasAdd?
IdentityIdentitydense_104/BiasAdd:output:0!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
#__inference__traced_restore_9605480
file_prefix5
!assignvariableop_dense_102_kernel:
??0
!assignvariableop_1_dense_102_bias:	?7
#assignvariableop_2_dense_103_kernel:
??0
!assignvariableop_3_dense_103_bias:	?6
#assignvariableop_4_dense_104_kernel:	?
/
!assignvariableop_5_dense_104_bias:
4
*assignvariableop_6_adabeliefoptimizer_iter:	 6
,assignvariableop_7_adabeliefoptimizer_beta_1: 6
,assignvariableop_8_adabeliefoptimizer_beta_2: 5
+assignvariableop_9_adabeliefoptimizer_decay: >
4assignvariableop_10_adabeliefoptimizer_learning_rate: 7
-assignvariableop_11_adabeliefoptimizer_min_lr: >
4assignvariableop_12_adabeliefoptimizer_sma_threshold: <
2assignvariableop_13_adabeliefoptimizer_total_steps: B
8assignvariableop_14_adabeliefoptimizer_warmup_proportion: =
3assignvariableop_15_adabeliefoptimizer_weight_decay: #
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: M
9assignvariableop_20_adabeliefoptimizer_dense_102_kernel_m:
??F
7assignvariableop_21_adabeliefoptimizer_dense_102_bias_m:	?M
9assignvariableop_22_adabeliefoptimizer_dense_103_kernel_m:
??F
7assignvariableop_23_adabeliefoptimizer_dense_103_bias_m:	?L
9assignvariableop_24_adabeliefoptimizer_dense_104_kernel_m:	?
E
7assignvariableop_25_adabeliefoptimizer_dense_104_bias_m:
M
9assignvariableop_26_adabeliefoptimizer_dense_102_kernel_v:
??F
7assignvariableop_27_adabeliefoptimizer_dense_102_bias_v:	?M
9assignvariableop_28_adabeliefoptimizer_dense_103_kernel_v:
??F
7assignvariableop_29_adabeliefoptimizer_dense_103_bias_v:	?L
9assignvariableop_30_adabeliefoptimizer_dense_104_kernel_v:	?
E
7assignvariableop_31_adabeliefoptimizer_dense_104_bias_v:
P
<assignvariableop_32_adabeliefoptimizer_dense_102_kernel_vhat:
??I
:assignvariableop_33_adabeliefoptimizer_dense_102_bias_vhat:	?P
<assignvariableop_34_adabeliefoptimizer_dense_103_kernel_vhat:
??I
:assignvariableop_35_adabeliefoptimizer_dense_103_bias_vhat:	?O
<assignvariableop_36_adabeliefoptimizer_dense_104_kernel_vhat:	?
H
:assignvariableop_37_adabeliefoptimizer_dense_104_bias_vhat:

identity_39??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEB6optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
)2'	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_102_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_102_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_103_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_103_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_104_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_104_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp*assignvariableop_6_adabeliefoptimizer_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp,assignvariableop_7_adabeliefoptimizer_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp,assignvariableop_8_adabeliefoptimizer_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp+assignvariableop_9_adabeliefoptimizer_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOp4assignvariableop_10_adabeliefoptimizer_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp-assignvariableop_11_adabeliefoptimizer_min_lrIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOp4assignvariableop_12_adabeliefoptimizer_sma_thresholdIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp2assignvariableop_13_adabeliefoptimizer_total_stepsIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp8assignvariableop_14_adabeliefoptimizer_warmup_proportionIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp3assignvariableop_15_adabeliefoptimizer_weight_decayIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp9assignvariableop_20_adabeliefoptimizer_dense_102_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp7assignvariableop_21_adabeliefoptimizer_dense_102_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp9assignvariableop_22_adabeliefoptimizer_dense_103_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp7assignvariableop_23_adabeliefoptimizer_dense_103_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp9assignvariableop_24_adabeliefoptimizer_dense_104_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp7assignvariableop_25_adabeliefoptimizer_dense_104_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp9assignvariableop_26_adabeliefoptimizer_dense_102_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp7assignvariableop_27_adabeliefoptimizer_dense_102_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp9assignvariableop_28_adabeliefoptimizer_dense_103_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp7assignvariableop_29_adabeliefoptimizer_dense_103_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp9assignvariableop_30_adabeliefoptimizer_dense_104_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp7assignvariableop_31_adabeliefoptimizer_dense_104_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp<assignvariableop_32_adabeliefoptimizer_dense_102_kernel_vhatIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp:assignvariableop_33_adabeliefoptimizer_dense_102_bias_vhatIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp<assignvariableop_34_adabeliefoptimizer_dense_103_kernel_vhatIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp:assignvariableop_35_adabeliefoptimizer_dense_103_bias_vhatIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp<assignvariableop_36_adabeliefoptimizer_dense_104_kernel_vhatIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp:assignvariableop_37_adabeliefoptimizer_dense_104_bias_vhatIdentity_37:output:0"/device:CPU:0*
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
?
?
/__inference_sequential_34_layer_call_fn_9605058

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
GPU 2J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_96049112
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
/__inference_sequential_34_layer_call_fn_9604943
dropout_34_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_96049112
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_34_input
?
?
+__inference_dense_103_layer_call_fn_9605180

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
GPU 2J 8? *O
fJRH
F__inference_dense_103_layer_call_and_return_conditional_losses_96047602
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
F__inference_dense_104_layer_call_and_return_conditional_losses_9604783

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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604987
dropout_34_input%
dense_102_9604969:
?? 
dense_102_9604971:	?%
dense_103_9604975:
?? 
dense_103_9604977:	?$
dense_104_9604981:	?

dense_104_9604983:

identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?"dropout_34/StatefulPartitionedCall?
"dropout_34/StatefulPartitionedCallStatefulPartitionedCalldropout_34_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_96048672$
"dropout_34/StatefulPartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0dense_102_9604969dense_102_9604971*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_96047372#
!dense_102/StatefulPartitionedCall?
re_lu_68/PartitionedCallPartitionedCall*dense_102/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_68_layer_call_and_return_conditional_losses_96047482
re_lu_68/PartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall!re_lu_68/PartitionedCall:output:0dense_103_9604975dense_103_9604977*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_96047602#
!dense_103/StatefulPartitionedCall?
re_lu_69/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_69_layer_call_and_return_conditional_losses_96047712
re_lu_69/PartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall!re_lu_69/PartitionedCall:output:0dense_104_9604981dense_104_9604983*
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
F__inference_dense_104_layer_call_and_return_conditional_losses_96047832#
!dense_104/StatefulPartitionedCall?
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_34_input
?
e
G__inference_dropout_34_layer_call_and_return_conditional_losses_9605130

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????2

Identity_1"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_re_lu_69_layer_call_fn_9605195

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
GPU 2J 8? *N
fIRG
E__inference_re_lu_69_layer_call_and_return_conditional_losses_96047712
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
?
a
E__inference_re_lu_69_layer_call_and_return_conditional_losses_9605200

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
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
F
*__inference_re_lu_68_layer_call_fn_9605166

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
GPU 2J 8? *N
fIRG
E__inference_re_lu_68_layer_call_and_return_conditional_losses_96047482
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
?
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604790

inputs%
dense_102_9604738:
?? 
dense_102_9604740:	?%
dense_103_9604761:
?? 
dense_103_9604763:	?$
dense_104_9604784:	?

dense_104_9604786:

identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?
dropout_34/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_96047252
dropout_34/PartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0dense_102_9604738dense_102_9604740*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_96047372#
!dense_102/StatefulPartitionedCall?
re_lu_68/PartitionedCallPartitionedCall*dense_102/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_68_layer_call_and_return_conditional_losses_96047482
re_lu_68/PartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall!re_lu_68/PartitionedCall:output:0dense_103_9604761dense_103_9604763*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_96047602#
!dense_103/StatefulPartitionedCall?
re_lu_69/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_69_layer_call_and_return_conditional_losses_96047712
re_lu_69/PartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall!re_lu_69/PartitionedCall:output:0dense_104_9604784dense_104_9604786*
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
F__inference_dense_104_layer_call_and_return_conditional_losses_96047832#
!dense_104/StatefulPartitionedCall?
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
a
E__inference_re_lu_68_layer_call_and_return_conditional_losses_9604748

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
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
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9605083

inputs<
(dense_102_matmul_readvariableop_resource:
??8
)dense_102_biasadd_readvariableop_resource:	?<
(dense_103_matmul_readvariableop_resource:
??8
)dense_103_biasadd_readvariableop_resource:	?;
(dense_104_matmul_readvariableop_resource:	?
7
)dense_104_biasadd_readvariableop_resource:

identity?? dense_102/BiasAdd/ReadVariableOp?dense_102/MatMul/ReadVariableOp? dense_103/BiasAdd/ReadVariableOp?dense_103/MatMul/ReadVariableOp? dense_104/BiasAdd/ReadVariableOp?dense_104/MatMul/ReadVariableOpq
dropout_34/IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2
dropout_34/Identity?
dense_102/MatMul/ReadVariableOpReadVariableOp(dense_102_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_102/MatMul/ReadVariableOp?
dense_102/MatMulMatMuldropout_34/Identity:output:0'dense_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_102/MatMul?
 dense_102/BiasAdd/ReadVariableOpReadVariableOp)dense_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_102/BiasAdd/ReadVariableOp?
dense_102/BiasAddBiasAdddense_102/MatMul:product:0(dense_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_102/BiasAddu
re_lu_68/ReluReludense_102/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_68/Relu?
dense_103/MatMul/ReadVariableOpReadVariableOp(dense_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_103/MatMul/ReadVariableOp?
dense_103/MatMulMatMulre_lu_68/Relu:activations:0'dense_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_103/MatMul?
 dense_103/BiasAdd/ReadVariableOpReadVariableOp)dense_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_103/BiasAdd/ReadVariableOp?
dense_103/BiasAddBiasAdddense_103/MatMul:product:0(dense_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_103/BiasAddu
re_lu_69/ReluReludense_103/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_69/Relu?
dense_104/MatMul/ReadVariableOpReadVariableOp(dense_104_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_104/MatMul/ReadVariableOp?
dense_104/MatMulMatMulre_lu_69/Relu:activations:0'dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_104/MatMul?
 dense_104/BiasAdd/ReadVariableOpReadVariableOp)dense_104_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_104/BiasAdd/ReadVariableOp?
dense_104/BiasAddBiasAdddense_104/MatMul:product:0(dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_104/BiasAdd?
IdentityIdentitydense_104/BiasAdd:output:0!^dense_102/BiasAdd/ReadVariableOp ^dense_102/MatMul/ReadVariableOp!^dense_103/BiasAdd/ReadVariableOp ^dense_103/MatMul/ReadVariableOp!^dense_104/BiasAdd/ReadVariableOp ^dense_104/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_102/BiasAdd/ReadVariableOp dense_102/BiasAdd/ReadVariableOp2B
dense_102/MatMul/ReadVariableOpdense_102/MatMul/ReadVariableOp2D
 dense_103/BiasAdd/ReadVariableOp dense_103/BiasAdd/ReadVariableOp2B
dense_103/MatMul/ReadVariableOpdense_103/MatMul/ReadVariableOp2D
 dense_104/BiasAdd/ReadVariableOp dense_104/BiasAdd/ReadVariableOp2B
dense_104/MatMul/ReadVariableOpdense_104/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
G__inference_dropout_34_layer_call_and_return_conditional_losses_9605142

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
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
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
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
/__inference_sequential_34_layer_call_fn_9604805
dropout_34_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU 2J 8? *S
fNRL
J__inference_sequential_34_layer_call_and_return_conditional_losses_96047902
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_34_input
?
f
G__inference_dropout_34_layer_call_and_return_conditional_losses_9604867

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
:??????????2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
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
:??????????2
dropout/GreaterEqual?
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
e
,__inference_dropout_34_layer_call_fn_9605125

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_96048672
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
F__inference_dense_102_layer_call_and_return_conditional_losses_9604737

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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_9605161

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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
?
H
,__inference_dropout_34_layer_call_fn_9605120

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
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_96047252
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
%__inference_signature_wrapper_9605024
dropout_34_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_34_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
GPU 2J 8? *+
f&R$
"__inference__wrapped_model_96047132
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
StatefulPartitionedCallStatefulPartitionedCall:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_34_input
?(
?
"__inference__wrapped_model_9604713
dropout_34_inputJ
6sequential_34_dense_102_matmul_readvariableop_resource:
??F
7sequential_34_dense_102_biasadd_readvariableop_resource:	?J
6sequential_34_dense_103_matmul_readvariableop_resource:
??F
7sequential_34_dense_103_biasadd_readvariableop_resource:	?I
6sequential_34_dense_104_matmul_readvariableop_resource:	?
E
7sequential_34_dense_104_biasadd_readvariableop_resource:

identity??.sequential_34/dense_102/BiasAdd/ReadVariableOp?-sequential_34/dense_102/MatMul/ReadVariableOp?.sequential_34/dense_103/BiasAdd/ReadVariableOp?-sequential_34/dense_103/MatMul/ReadVariableOp?.sequential_34/dense_104/BiasAdd/ReadVariableOp?-sequential_34/dense_104/MatMul/ReadVariableOp?
!sequential_34/dropout_34/IdentityIdentitydropout_34_input*
T0*(
_output_shapes
:??????????2#
!sequential_34/dropout_34/Identity?
-sequential_34/dense_102/MatMul/ReadVariableOpReadVariableOp6sequential_34_dense_102_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_34/dense_102/MatMul/ReadVariableOp?
sequential_34/dense_102/MatMulMatMul*sequential_34/dropout_34/Identity:output:05sequential_34/dense_102/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_34/dense_102/MatMul?
.sequential_34/dense_102/BiasAdd/ReadVariableOpReadVariableOp7sequential_34_dense_102_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_34/dense_102/BiasAdd/ReadVariableOp?
sequential_34/dense_102/BiasAddBiasAdd(sequential_34/dense_102/MatMul:product:06sequential_34/dense_102/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_34/dense_102/BiasAdd?
sequential_34/re_lu_68/ReluRelu(sequential_34/dense_102/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_34/re_lu_68/Relu?
-sequential_34/dense_103/MatMul/ReadVariableOpReadVariableOp6sequential_34_dense_103_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_34/dense_103/MatMul/ReadVariableOp?
sequential_34/dense_103/MatMulMatMul)sequential_34/re_lu_68/Relu:activations:05sequential_34/dense_103/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_34/dense_103/MatMul?
.sequential_34/dense_103/BiasAdd/ReadVariableOpReadVariableOp7sequential_34_dense_103_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_34/dense_103/BiasAdd/ReadVariableOp?
sequential_34/dense_103/BiasAddBiasAdd(sequential_34/dense_103/MatMul:product:06sequential_34/dense_103/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_34/dense_103/BiasAdd?
sequential_34/re_lu_69/ReluRelu(sequential_34/dense_103/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_34/re_lu_69/Relu?
-sequential_34/dense_104/MatMul/ReadVariableOpReadVariableOp6sequential_34_dense_104_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_34/dense_104/MatMul/ReadVariableOp?
sequential_34/dense_104/MatMulMatMul)sequential_34/re_lu_69/Relu:activations:05sequential_34/dense_104/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_34/dense_104/MatMul?
.sequential_34/dense_104/BiasAdd/ReadVariableOpReadVariableOp7sequential_34_dense_104_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_34/dense_104/BiasAdd/ReadVariableOp?
sequential_34/dense_104/BiasAddBiasAdd(sequential_34/dense_104/MatMul:product:06sequential_34/dense_104/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_34/dense_104/BiasAdd?
IdentityIdentity(sequential_34/dense_104/BiasAdd:output:0/^sequential_34/dense_102/BiasAdd/ReadVariableOp.^sequential_34/dense_102/MatMul/ReadVariableOp/^sequential_34/dense_103/BiasAdd/ReadVariableOp.^sequential_34/dense_103/MatMul/ReadVariableOp/^sequential_34/dense_104/BiasAdd/ReadVariableOp.^sequential_34/dense_104/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2`
.sequential_34/dense_102/BiasAdd/ReadVariableOp.sequential_34/dense_102/BiasAdd/ReadVariableOp2^
-sequential_34/dense_102/MatMul/ReadVariableOp-sequential_34/dense_102/MatMul/ReadVariableOp2`
.sequential_34/dense_103/BiasAdd/ReadVariableOp.sequential_34/dense_103/BiasAdd/ReadVariableOp2^
-sequential_34/dense_103/MatMul/ReadVariableOp-sequential_34/dense_103/MatMul/ReadVariableOp2`
.sequential_34/dense_104/BiasAdd/ReadVariableOp.sequential_34/dense_104/BiasAdd/ReadVariableOp2^
-sequential_34/dense_104/MatMul/ReadVariableOp-sequential_34/dense_104/MatMul/ReadVariableOp:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_34_input
?
a
E__inference_re_lu_68_layer_call_and_return_conditional_losses_9605171

inputs
identityO
ReluReluinputs*
T0*(
_output_shapes
:??????????2
Relug
IdentityIdentityRelu:activations:0*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_9604760

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
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
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
?
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604911

inputs%
dense_102_9604893:
?? 
dense_102_9604895:	?%
dense_103_9604899:
?? 
dense_103_9604901:	?$
dense_104_9604905:	?

dense_104_9604907:

identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?"dropout_34/StatefulPartitionedCall?
"dropout_34/StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_96048672$
"dropout_34/StatefulPartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall+dropout_34/StatefulPartitionedCall:output:0dense_102_9604893dense_102_9604895*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_96047372#
!dense_102/StatefulPartitionedCall?
re_lu_68/PartitionedCallPartitionedCall*dense_102/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_68_layer_call_and_return_conditional_losses_96047482
re_lu_68/PartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall!re_lu_68/PartitionedCall:output:0dense_103_9604899dense_103_9604901*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_96047602#
!dense_103/StatefulPartitionedCall?
re_lu_69/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_69_layer_call_and_return_conditional_losses_96047712
re_lu_69/PartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall!re_lu_69/PartitionedCall:output:0dense_104_9604905dense_104_9604907*
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
F__inference_dense_104_layer_call_and_return_conditional_losses_96047832#
!dense_104/StatefulPartitionedCall?
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall#^dropout_34/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall2H
"dropout_34/StatefulPartitionedCall"dropout_34/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604965
dropout_34_input%
dense_102_9604947:
?? 
dense_102_9604949:	?%
dense_103_9604953:
?? 
dense_103_9604955:	?$
dense_104_9604959:	?

dense_104_9604961:

identity??!dense_102/StatefulPartitionedCall?!dense_103/StatefulPartitionedCall?!dense_104/StatefulPartitionedCall?
dropout_34/PartitionedCallPartitionedCalldropout_34_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *P
fKRI
G__inference_dropout_34_layer_call_and_return_conditional_losses_96047252
dropout_34/PartitionedCall?
!dense_102/StatefulPartitionedCallStatefulPartitionedCall#dropout_34/PartitionedCall:output:0dense_102_9604947dense_102_9604949*
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
F__inference_dense_102_layer_call_and_return_conditional_losses_96047372#
!dense_102/StatefulPartitionedCall?
re_lu_68/PartitionedCallPartitionedCall*dense_102/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_68_layer_call_and_return_conditional_losses_96047482
re_lu_68/PartitionedCall?
!dense_103/StatefulPartitionedCallStatefulPartitionedCall!re_lu_68/PartitionedCall:output:0dense_103_9604953dense_103_9604955*
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
F__inference_dense_103_layer_call_and_return_conditional_losses_96047602#
!dense_103/StatefulPartitionedCall?
re_lu_69/PartitionedCallPartitionedCall*dense_103/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *N
fIRG
E__inference_re_lu_69_layer_call_and_return_conditional_losses_96047712
re_lu_69/PartitionedCall?
!dense_104/StatefulPartitionedCallStatefulPartitionedCall!re_lu_69/PartitionedCall:output:0dense_104_9604959dense_104_9604961*
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
F__inference_dense_104_layer_call_and_return_conditional_losses_96047832#
!dense_104/StatefulPartitionedCall?
IdentityIdentity*dense_104/StatefulPartitionedCall:output:0"^dense_102/StatefulPartitionedCall"^dense_103/StatefulPartitionedCall"^dense_104/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_102/StatefulPartitionedCall!dense_102/StatefulPartitionedCall2F
!dense_103/StatefulPartitionedCall!dense_103/StatefulPartitionedCall2F
!dense_104/StatefulPartitionedCall!dense_104/StatefulPartitionedCall:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_34_input
?V
?
 __inference__traced_save_9605356
file_prefix/
+savev2_dense_102_kernel_read_readvariableop-
)savev2_dense_102_bias_read_readvariableop/
+savev2_dense_103_kernel_read_readvariableop-
)savev2_dense_103_bias_read_readvariableop/
+savev2_dense_104_kernel_read_readvariableop-
)savev2_dense_104_bias_read_readvariableop6
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
"savev2_count_1_read_readvariableopD
@savev2_adabeliefoptimizer_dense_102_kernel_m_read_readvariableopB
>savev2_adabeliefoptimizer_dense_102_bias_m_read_readvariableopD
@savev2_adabeliefoptimizer_dense_103_kernel_m_read_readvariableopB
>savev2_adabeliefoptimizer_dense_103_bias_m_read_readvariableopD
@savev2_adabeliefoptimizer_dense_104_kernel_m_read_readvariableopB
>savev2_adabeliefoptimizer_dense_104_bias_m_read_readvariableopD
@savev2_adabeliefoptimizer_dense_102_kernel_v_read_readvariableopB
>savev2_adabeliefoptimizer_dense_102_bias_v_read_readvariableopD
@savev2_adabeliefoptimizer_dense_103_kernel_v_read_readvariableopB
>savev2_adabeliefoptimizer_dense_103_bias_v_read_readvariableopD
@savev2_adabeliefoptimizer_dense_104_kernel_v_read_readvariableopB
>savev2_adabeliefoptimizer_dense_104_bias_v_read_readvariableopG
Csavev2_adabeliefoptimizer_dense_102_kernel_vhat_read_readvariableopE
Asavev2_adabeliefoptimizer_dense_102_bias_vhat_read_readvariableopG
Csavev2_adabeliefoptimizer_dense_103_kernel_vhat_read_readvariableopE
Asavev2_adabeliefoptimizer_dense_103_bias_vhat_read_readvariableopG
Csavev2_adabeliefoptimizer_dense_104_kernel_vhat_read_readvariableopE
Asavev2_adabeliefoptimizer_dense_104_bias_vhat_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*?
value?B?'B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/min_lr/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/sma_threshold/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/total_steps/.ATTRIBUTES/VARIABLE_VALUEB6optimizer/warmup_proportion/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/weight_decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:'*
dtype0*a
valueXBV'B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_102_kernel_read_readvariableop)savev2_dense_102_bias_read_readvariableop+savev2_dense_103_kernel_read_readvariableop)savev2_dense_103_bias_read_readvariableop+savev2_dense_104_kernel_read_readvariableop)savev2_dense_104_bias_read_readvariableop2savev2_adabeliefoptimizer_iter_read_readvariableop4savev2_adabeliefoptimizer_beta_1_read_readvariableop4savev2_adabeliefoptimizer_beta_2_read_readvariableop3savev2_adabeliefoptimizer_decay_read_readvariableop;savev2_adabeliefoptimizer_learning_rate_read_readvariableop4savev2_adabeliefoptimizer_min_lr_read_readvariableop;savev2_adabeliefoptimizer_sma_threshold_read_readvariableop9savev2_adabeliefoptimizer_total_steps_read_readvariableop?savev2_adabeliefoptimizer_warmup_proportion_read_readvariableop:savev2_adabeliefoptimizer_weight_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop@savev2_adabeliefoptimizer_dense_102_kernel_m_read_readvariableop>savev2_adabeliefoptimizer_dense_102_bias_m_read_readvariableop@savev2_adabeliefoptimizer_dense_103_kernel_m_read_readvariableop>savev2_adabeliefoptimizer_dense_103_bias_m_read_readvariableop@savev2_adabeliefoptimizer_dense_104_kernel_m_read_readvariableop>savev2_adabeliefoptimizer_dense_104_bias_m_read_readvariableop@savev2_adabeliefoptimizer_dense_102_kernel_v_read_readvariableop>savev2_adabeliefoptimizer_dense_102_bias_v_read_readvariableop@savev2_adabeliefoptimizer_dense_103_kernel_v_read_readvariableop>savev2_adabeliefoptimizer_dense_103_bias_v_read_readvariableop@savev2_adabeliefoptimizer_dense_104_kernel_v_read_readvariableop>savev2_adabeliefoptimizer_dense_104_bias_v_read_readvariableopCsavev2_adabeliefoptimizer_dense_102_kernel_vhat_read_readvariableopAsavev2_adabeliefoptimizer_dense_102_bias_vhat_read_readvariableopCsavev2_adabeliefoptimizer_dense_103_kernel_vhat_read_readvariableopAsavev2_adabeliefoptimizer_dense_103_bias_vhat_read_readvariableopCsavev2_adabeliefoptimizer_dense_104_kernel_vhat_read_readvariableopAsavev2_adabeliefoptimizer_dense_104_bias_vhat_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *5
dtypes+
)2'	2
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
_input_shapes?
?: :
??:?:
??:?:	?
:
: : : : : : : : : : : : : : :
??:?:
??:?:	?
:
:
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
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
: 

_output_shapes
:
:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?
:  

_output_shapes
:
:&!"
 
_output_shapes
:
??:!"

_output_shapes	
:?:&#"
 
_output_shapes
:
??:!$
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
: "?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
N
dropout_34_input:
"serving_default_dropout_34_input:0??????????=
	dense_1040
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?/
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
u__call__
*v&call_and_return_all_conditional_losses
w_default_save_signature"?,
_tf_keras_sequential?,{"name": "sequential_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_34", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_34_input"}}, {"class_name": "Dropout", "config": {"name": "dropout_34", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_102", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_68", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_103", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_69", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_104", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 13, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dropout_34_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_34", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_34_input"}, "shared_object_id": 0}, {"class_name": "Dropout", "config": {"name": "dropout_34", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_102", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "ReLU", "config": {"name": "re_lu_68", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_103", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "ReLU", "config": {"name": "re_lu_69", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_104", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}]}}, "training_config": {"loss": "softmax_cross_entropy_with_logits_v2", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "AdaBeliefOptimizer", "config": {"name": "AdaBeliefOptimizer", "learning_rate": 0.0010000000474974513, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "decay": 0.0, "weight_decay": 0.0, "sma_threshold": 5.0, "epsilon": 1e-14, "amsgrad": true, "rectify": true, "total_steps": 0, "warmup_proportion": 0.10000000149011612, "min_lr": 0.0}}}}
?
regularization_losses
	variables
trainable_variables
	keras_api
x__call__
*y&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_34", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_34", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 1}
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
z__call__
*{&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_102", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_102", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
|__call__
*}&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_68", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_68", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}
?

kernel
bias
regularization_losses
	variables
trainable_variables
 	keras_api
~__call__
*&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_103", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_103", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
!regularization_losses
"	variables
#trainable_variables
$	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_69", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_69", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}
?

%kernel
&bias
'regularization_losses
(	variables
)trainable_variables
*	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_104", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_104", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
+iter

,beta_1

-beta_2
	.decay
/learning_rate

0min_lr
1sma_threshold
2total_steps
3warmup_proportion
4weight_decaymcmdmemf%mg&mhvivjvkvl%vm&vn
vhato
vhatp
vhatq
vhatr
%vhats
&vhatt"
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
?
regularization_losses
5layer_metrics
6layer_regularization_losses
		variables
7non_trainable_variables

trainable_variables
8metrics

9layers
u__call__
w_default_save_signature
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
:layer_metrics
;layer_regularization_losses
	variables
<non_trainable_variables
trainable_variables
=metrics

>layers
x__call__
*y&call_and_return_all_conditional_losses
&y"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_102/kernel
:?2dense_102/bias
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
?
regularization_losses
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables
trainable_variables
Bmetrics

Clayers
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
Dlayer_metrics
Elayer_regularization_losses
	variables
Fnon_trainable_variables
trainable_variables
Gmetrics

Hlayers
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_103/kernel
:?2dense_103/bias
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
?
regularization_losses
Ilayer_metrics
Jlayer_regularization_losses
	variables
Knon_trainable_variables
trainable_variables
Lmetrics

Mlayers
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
!regularization_losses
Nlayer_metrics
Olayer_regularization_losses
"	variables
Pnon_trainable_variables
#trainable_variables
Qmetrics

Rlayers
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_104/kernel
:
2dense_104/bias
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
?
'regularization_losses
Slayer_metrics
Tlayer_regularization_losses
(	variables
Unon_trainable_variables
)trainable_variables
Vmetrics

Wlayers
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
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
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
?
	Ztotal
	[count
\	variables
]	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}
?
	^total
	_count
`
_fn_kwargs
a	variables
b	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}
:  (2total
:  (2count
.
Z0
[1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
^0
_1"
trackable_list_wrapper
-
a	variables"
_generic_user_object
7:5
??2%AdaBeliefOptimizer/dense_102/kernel/m
0:.?2#AdaBeliefOptimizer/dense_102/bias/m
7:5
??2%AdaBeliefOptimizer/dense_103/kernel/m
0:.?2#AdaBeliefOptimizer/dense_103/bias/m
6:4	?
2%AdaBeliefOptimizer/dense_104/kernel/m
/:-
2#AdaBeliefOptimizer/dense_104/bias/m
7:5
??2%AdaBeliefOptimizer/dense_102/kernel/v
0:.?2#AdaBeliefOptimizer/dense_102/bias/v
7:5
??2%AdaBeliefOptimizer/dense_103/kernel/v
0:.?2#AdaBeliefOptimizer/dense_103/bias/v
6:4	?
2%AdaBeliefOptimizer/dense_104/kernel/v
/:-
2#AdaBeliefOptimizer/dense_104/bias/v
::8
??2(AdaBeliefOptimizer/dense_102/kernel/vhat
3:1?2&AdaBeliefOptimizer/dense_102/bias/vhat
::8
??2(AdaBeliefOptimizer/dense_103/kernel/vhat
3:1?2&AdaBeliefOptimizer/dense_103/bias/vhat
9:7	?
2(AdaBeliefOptimizer/dense_104/kernel/vhat
2:0
2&AdaBeliefOptimizer/dense_104/bias/vhat
?2?
/__inference_sequential_34_layer_call_fn_9604805
/__inference_sequential_34_layer_call_fn_9605041
/__inference_sequential_34_layer_call_fn_9605058
/__inference_sequential_34_layer_call_fn_9604943?
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_9605083
J__inference_sequential_34_layer_call_and_return_conditional_losses_9605115
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604965
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604987?
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
"__inference__wrapped_model_9604713?
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
annotations? *0?-
+?(
dropout_34_input??????????
?2?
,__inference_dropout_34_layer_call_fn_9605120
,__inference_dropout_34_layer_call_fn_9605125?
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
G__inference_dropout_34_layer_call_and_return_conditional_losses_9605130
G__inference_dropout_34_layer_call_and_return_conditional_losses_9605142?
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
+__inference_dense_102_layer_call_fn_9605151?
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
F__inference_dense_102_layer_call_and_return_conditional_losses_9605161?
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
*__inference_re_lu_68_layer_call_fn_9605166?
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
E__inference_re_lu_68_layer_call_and_return_conditional_losses_9605171?
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
+__inference_dense_103_layer_call_fn_9605180?
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
F__inference_dense_103_layer_call_and_return_conditional_losses_9605190?
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
*__inference_re_lu_69_layer_call_fn_9605195?
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
E__inference_re_lu_69_layer_call_and_return_conditional_losses_9605200?
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
+__inference_dense_104_layer_call_fn_9605209?
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
F__inference_dense_104_layer_call_and_return_conditional_losses_9605219?
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
%__inference_signature_wrapper_9605024dropout_34_input"?
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
"__inference__wrapped_model_9604713{%&:?7
0?-
+?(
dropout_34_input??????????
? "5?2
0
	dense_104#? 
	dense_104?????????
?
F__inference_dense_102_layer_call_and_return_conditional_losses_9605161^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_102_layer_call_fn_9605151Q0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_103_layer_call_and_return_conditional_losses_9605190^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_103_layer_call_fn_9605180Q0?-
&?#
!?
inputs??????????
? "????????????
F__inference_dense_104_layer_call_and_return_conditional_losses_9605219]%&0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? 
+__inference_dense_104_layer_call_fn_9605209P%&0?-
&?#
!?
inputs??????????
? "??????????
?
G__inference_dropout_34_layer_call_and_return_conditional_losses_9605130^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
G__inference_dropout_34_layer_call_and_return_conditional_losses_9605142^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
,__inference_dropout_34_layer_call_fn_9605120Q4?1
*?'
!?
inputs??????????
p 
? "????????????
,__inference_dropout_34_layer_call_fn_9605125Q4?1
*?'
!?
inputs??????????
p
? "????????????
E__inference_re_lu_68_layer_call_and_return_conditional_losses_9605171Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
*__inference_re_lu_68_layer_call_fn_9605166M0?-
&?#
!?
inputs??????????
? "????????????
E__inference_re_lu_69_layer_call_and_return_conditional_losses_9605200Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? {
*__inference_re_lu_69_layer_call_fn_9605195M0?-
&?#
!?
inputs??????????
? "????????????
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604965s%&B??
8?5
+?(
dropout_34_input??????????
p 

 
? "%?"
?
0?????????

? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9604987s%&B??
8?5
+?(
dropout_34_input??????????
p

 
? "%?"
?
0?????????

? ?
J__inference_sequential_34_layer_call_and_return_conditional_losses_9605083i%&8?5
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
J__inference_sequential_34_layer_call_and_return_conditional_losses_9605115i%&8?5
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
/__inference_sequential_34_layer_call_fn_9604805f%&B??
8?5
+?(
dropout_34_input??????????
p 

 
? "??????????
?
/__inference_sequential_34_layer_call_fn_9604943f%&B??
8?5
+?(
dropout_34_input??????????
p

 
? "??????????
?
/__inference_sequential_34_layer_call_fn_9605041\%&8?5
.?+
!?
inputs??????????
p 

 
? "??????????
?
/__inference_sequential_34_layer_call_fn_9605058\%&8?5
.?+
!?
inputs??????????
p

 
? "??????????
?
%__inference_signature_wrapper_9605024?%&N?K
? 
D?A
?
dropout_34_input+?(
dropout_34_input??????????"5?2
0
	dense_104#? 
	dense_104?????????
