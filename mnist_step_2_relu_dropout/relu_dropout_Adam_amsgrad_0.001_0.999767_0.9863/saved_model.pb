??
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
dense_204/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_204/kernel
w
$dense_204/kernel/Read/ReadVariableOpReadVariableOpdense_204/kernel* 
_output_shapes
:
??*
dtype0
u
dense_204/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_204/bias
n
"dense_204/bias/Read/ReadVariableOpReadVariableOpdense_204/bias*
_output_shapes	
:?*
dtype0
~
dense_205/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_205/kernel
w
$dense_205/kernel/Read/ReadVariableOpReadVariableOpdense_205/kernel* 
_output_shapes
:
??*
dtype0
u
dense_205/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_205/bias
n
"dense_205/bias/Read/ReadVariableOpReadVariableOpdense_205/bias*
_output_shapes	
:?*
dtype0
}
dense_206/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_206/kernel
v
$dense_206/kernel/Read/ReadVariableOpReadVariableOpdense_206/kernel*
_output_shapes
:	?
*
dtype0
t
dense_206/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_206/bias
m
"dense_206/bias/Read/ReadVariableOpReadVariableOpdense_206/bias*
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
Adam/dense_204/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_204/kernel/m
?
+Adam/dense_204/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_204/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_204/bias/m
|
)Adam/dense_204/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_205/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_205/kernel/m
?
+Adam/dense_205/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_205/kernel/m* 
_output_shapes
:
??*
dtype0
?
Adam/dense_205/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_205/bias/m
|
)Adam/dense_205/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_205/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_206/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_nameAdam/dense_206/kernel/m
?
+Adam/dense_206/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_206/kernel/m*
_output_shapes
:	?
*
dtype0
?
Adam/dense_206/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_206/bias/m
{
)Adam/dense_206/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_206/bias/m*
_output_shapes
:
*
dtype0
?
Adam/dense_204/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_204/kernel/v
?
+Adam/dense_204/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_204/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_204/bias/v
|
)Adam/dense_204/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_205/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*(
shared_nameAdam/dense_205/kernel/v
?
+Adam/dense_205/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_205/kernel/v* 
_output_shapes
:
??*
dtype0
?
Adam/dense_205/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameAdam/dense_205/bias/v
|
)Adam/dense_205/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_205/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_206/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*(
shared_nameAdam/dense_206/kernel/v
?
+Adam/dense_206/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_206/kernel/v*
_output_shapes
:	?
*
dtype0
?
Adam/dense_206/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_206/bias/v
{
)Adam/dense_206/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_206/bias/v*
_output_shapes
:
*
dtype0
?
Adam/dense_204/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameAdam/dense_204/kernel/vhat
?
.Adam/dense_204/kernel/vhat/Read/ReadVariableOpReadVariableOpAdam/dense_204/kernel/vhat* 
_output_shapes
:
??*
dtype0
?
Adam/dense_204/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/dense_204/bias/vhat
?
,Adam/dense_204/bias/vhat/Read/ReadVariableOpReadVariableOpAdam/dense_204/bias/vhat*
_output_shapes	
:?*
dtype0
?
Adam/dense_205/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*+
shared_nameAdam/dense_205/kernel/vhat
?
.Adam/dense_205/kernel/vhat/Read/ReadVariableOpReadVariableOpAdam/dense_205/kernel/vhat* 
_output_shapes
:
??*
dtype0
?
Adam/dense_205/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*)
shared_nameAdam/dense_205/bias/vhat
?
,Adam/dense_205/bias/vhat/Read/ReadVariableOpReadVariableOpAdam/dense_205/bias/vhat*
_output_shapes	
:?*
dtype0
?
Adam/dense_206/kernel/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*+
shared_nameAdam/dense_206/kernel/vhat
?
.Adam/dense_206/kernel/vhat/Read/ReadVariableOpReadVariableOpAdam/dense_206/kernel/vhat*
_output_shapes
:	?
*
dtype0
?
Adam/dense_206/bias/vhatVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*)
shared_nameAdam/dense_206/bias/vhat
?
,Adam/dense_206/bias/vhat/Read/ReadVariableOpReadVariableOpAdam/dense_206/bias/vhat*
_output_shapes
:
*
dtype0

NoOpNoOp
?3
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?2
value?2B?2 B?2
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
?
+iter

,beta_1

-beta_2
	.decay
/learning_ratem^m_m`ma%mb&mcvdvevfvg%vh&vi
vhatj
vhatk
vhatl
vhatm
%vhatn
&vhato
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
0layer_metrics
1layer_regularization_losses
		variables
2non_trainable_variables

trainable_variables
3metrics

4layers
 
 
 
 
?
regularization_losses
5layer_metrics
6layer_regularization_losses
	variables
7non_trainable_variables
trainable_variables
8metrics

9layers
\Z
VARIABLE_VALUEdense_204/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_204/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
:layer_metrics
;layer_regularization_losses
	variables
<non_trainable_variables
trainable_variables
=metrics

>layers
 
 
 
?
regularization_losses
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables
trainable_variables
Bmetrics

Clayers
\Z
VARIABLE_VALUEdense_205/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_205/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
?
regularization_losses
Dlayer_metrics
Elayer_regularization_losses
	variables
Fnon_trainable_variables
trainable_variables
Gmetrics

Hlayers
 
 
 
?
!regularization_losses
Ilayer_metrics
Jlayer_regularization_losses
"	variables
Knon_trainable_variables
#trainable_variables
Lmetrics

Mlayers
\Z
VARIABLE_VALUEdense_206/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_206/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
?
'regularization_losses
Nlayer_metrics
Olayer_regularization_losses
(	variables
Pnon_trainable_variables
)trainable_variables
Qmetrics

Rlayers
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
 

S0
T1
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
	Utotal
	Vcount
W	variables
X	keras_api
D
	Ytotal
	Zcount
[
_fn_kwargs
\	variables
]	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

U0
V1

W	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Y0
Z1

\	variables
}
VARIABLE_VALUEAdam/dense_204/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_205/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_205/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_206/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_206/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_204/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_204/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_205/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_205/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}
VARIABLE_VALUEAdam/dense_206/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense_206/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_204/kernel/vhatUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/dense_204/bias/vhatSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_205/kernel/vhatUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/dense_205/bias/vhatSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEAdam/dense_206/kernel/vhatUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
?
VARIABLE_VALUEAdam/dense_206/bias/vhatSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUE
?
 serving_default_dropout_68_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCall serving_default_dropout_68_inputdense_204/kerneldense_204/biasdense_205/kerneldense_205/biasdense_206/kerneldense_206/bias*
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
&__inference_signature_wrapper_17855707
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_204/kernel/Read/ReadVariableOp"dense_204/bias/Read/ReadVariableOp$dense_205/kernel/Read/ReadVariableOp"dense_205/bias/Read/ReadVariableOp$dense_206/kernel/Read/ReadVariableOp"dense_206/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp+Adam/dense_204/kernel/m/Read/ReadVariableOp)Adam/dense_204/bias/m/Read/ReadVariableOp+Adam/dense_205/kernel/m/Read/ReadVariableOp)Adam/dense_205/bias/m/Read/ReadVariableOp+Adam/dense_206/kernel/m/Read/ReadVariableOp)Adam/dense_206/bias/m/Read/ReadVariableOp+Adam/dense_204/kernel/v/Read/ReadVariableOp)Adam/dense_204/bias/v/Read/ReadVariableOp+Adam/dense_205/kernel/v/Read/ReadVariableOp)Adam/dense_205/bias/v/Read/ReadVariableOp+Adam/dense_206/kernel/v/Read/ReadVariableOp)Adam/dense_206/bias/v/Read/ReadVariableOp.Adam/dense_204/kernel/vhat/Read/ReadVariableOp,Adam/dense_204/bias/vhat/Read/ReadVariableOp.Adam/dense_205/kernel/vhat/Read/ReadVariableOp,Adam/dense_205/bias/vhat/Read/ReadVariableOp.Adam/dense_206/kernel/vhat/Read/ReadVariableOp,Adam/dense_206/bias/vhat/Read/ReadVariableOpConst*.
Tin'
%2#	*
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
!__inference__traced_save_17856024
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_204/kerneldense_204/biasdense_205/kerneldense_205/biasdense_206/kerneldense_206/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/dense_204/kernel/mAdam/dense_204/bias/mAdam/dense_205/kernel/mAdam/dense_205/bias/mAdam/dense_206/kernel/mAdam/dense_206/bias/mAdam/dense_204/kernel/vAdam/dense_204/bias/vAdam/dense_205/kernel/vAdam/dense_205/bias/vAdam/dense_206/kernel/vAdam/dense_206/bias/vAdam/dense_204/kernel/vhatAdam/dense_204/bias/vhatAdam/dense_205/kernel/vhatAdam/dense_205/bias/vhatAdam/dense_206/kernel/vhatAdam/dense_206/bias/vhat*-
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
GPU 2J 8? *-
f(R&
$__inference__traced_restore_17856133??
?
?
,__inference_dense_206_layer_call_fn_17855892

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
G__inference_dense_206_layer_call_and_return_conditional_losses_178554782
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
?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855606

inputs&
dense_204_17855588:
??!
dense_204_17855590:	?&
dense_205_17855594:
??!
dense_205_17855596:	?%
dense_206_17855600:	?
 
dense_206_17855602:

identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall?!dense_206/StatefulPartitionedCall?"dropout_68/StatefulPartitionedCall?
"dropout_68/StatefulPartitionedCallStatefulPartitionedCallinputs*
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
GPU 2J 8? *Q
fLRJ
H__inference_dropout_68_layer_call_and_return_conditional_losses_178555622$
"dropout_68/StatefulPartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall+dropout_68/StatefulPartitionedCall:output:0dense_204_17855588dense_204_17855590*
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
G__inference_dense_204_layer_call_and_return_conditional_losses_178554322#
!dense_204/StatefulPartitionedCall?
re_lu_136/PartitionedCallPartitionedCall*dense_204/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_136_layer_call_and_return_conditional_losses_178554432
re_lu_136/PartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall"re_lu_136/PartitionedCall:output:0dense_205_17855594dense_205_17855596*
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
G__inference_dense_205_layer_call_and_return_conditional_losses_178554552#
!dense_205/StatefulPartitionedCall?
re_lu_137/PartitionedCallPartitionedCall*dense_205/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_137_layer_call_and_return_conditional_losses_178554662
re_lu_137/PartitionedCall?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall"re_lu_137/PartitionedCall:output:0dense_206_17855600dense_206_17855602*
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
G__inference_dense_206_layer_call_and_return_conditional_losses_178554782#
!dense_206/StatefulPartitionedCall?
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall"^dense_206/StatefulPartitionedCall#^dropout_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2H
"dropout_68/StatefulPartitionedCall"dropout_68/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855420

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
H
,__inference_re_lu_137_layer_call_fn_17855878

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
GPU 2J 8? *P
fKRI
G__inference_re_lu_137_layer_call_and_return_conditional_losses_178554662
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
?
?
,__inference_dense_205_layer_call_fn_17855863

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
G__inference_dense_205_layer_call_and_return_conditional_losses_178554552
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
G__inference_dense_206_layer_call_and_return_conditional_losses_17855478

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
,__inference_dense_204_layer_call_fn_17855834

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
G__inference_dense_204_layer_call_and_return_conditional_losses_178554322
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
?
?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855485

inputs&
dense_204_17855433:
??!
dense_204_17855435:	?&
dense_205_17855456:
??!
dense_205_17855458:	?%
dense_206_17855479:	?
 
dense_206_17855481:

identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall?!dense_206/StatefulPartitionedCall?
dropout_68/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8? *Q
fLRJ
H__inference_dropout_68_layer_call_and_return_conditional_losses_178554202
dropout_68/PartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall#dropout_68/PartitionedCall:output:0dense_204_17855433dense_204_17855435*
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
G__inference_dense_204_layer_call_and_return_conditional_losses_178554322#
!dense_204/StatefulPartitionedCall?
re_lu_136/PartitionedCallPartitionedCall*dense_204/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_136_layer_call_and_return_conditional_losses_178554432
re_lu_136/PartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall"re_lu_136/PartitionedCall:output:0dense_205_17855456dense_205_17855458*
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
G__inference_dense_205_layer_call_and_return_conditional_losses_178554552#
!dense_205/StatefulPartitionedCall?
re_lu_137/PartitionedCallPartitionedCall*dense_205/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_137_layer_call_and_return_conditional_losses_178554662
re_lu_137/PartitionedCall?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall"re_lu_137/PartitionedCall:output:0dense_206_17855479dense_206_17855481*
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
G__inference_dense_206_layer_call_and_return_conditional_losses_178554782#
!dense_206/StatefulPartitionedCall?
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall"^dense_206/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_17855707
dropout_68_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_68_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_178554082
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
_user_specified_namedropout_68_input
?
?
0__inference_sequential_68_layer_call_fn_17855741

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
K__inference_sequential_68_layer_call_and_return_conditional_losses_178556062
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
?
f
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855813

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
?(
?
#__inference__wrapped_model_17855408
dropout_68_inputJ
6sequential_68_dense_204_matmul_readvariableop_resource:
??F
7sequential_68_dense_204_biasadd_readvariableop_resource:	?J
6sequential_68_dense_205_matmul_readvariableop_resource:
??F
7sequential_68_dense_205_biasadd_readvariableop_resource:	?I
6sequential_68_dense_206_matmul_readvariableop_resource:	?
E
7sequential_68_dense_206_biasadd_readvariableop_resource:

identity??.sequential_68/dense_204/BiasAdd/ReadVariableOp?-sequential_68/dense_204/MatMul/ReadVariableOp?.sequential_68/dense_205/BiasAdd/ReadVariableOp?-sequential_68/dense_205/MatMul/ReadVariableOp?.sequential_68/dense_206/BiasAdd/ReadVariableOp?-sequential_68/dense_206/MatMul/ReadVariableOp?
!sequential_68/dropout_68/IdentityIdentitydropout_68_input*
T0*(
_output_shapes
:??????????2#
!sequential_68/dropout_68/Identity?
-sequential_68/dense_204/MatMul/ReadVariableOpReadVariableOp6sequential_68_dense_204_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_68/dense_204/MatMul/ReadVariableOp?
sequential_68/dense_204/MatMulMatMul*sequential_68/dropout_68/Identity:output:05sequential_68/dense_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_68/dense_204/MatMul?
.sequential_68/dense_204/BiasAdd/ReadVariableOpReadVariableOp7sequential_68_dense_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_68/dense_204/BiasAdd/ReadVariableOp?
sequential_68/dense_204/BiasAddBiasAdd(sequential_68/dense_204/MatMul:product:06sequential_68/dense_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_68/dense_204/BiasAdd?
sequential_68/re_lu_136/ReluRelu(sequential_68/dense_204/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_68/re_lu_136/Relu?
-sequential_68/dense_205/MatMul/ReadVariableOpReadVariableOp6sequential_68_dense_205_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_68/dense_205/MatMul/ReadVariableOp?
sequential_68/dense_205/MatMulMatMul*sequential_68/re_lu_136/Relu:activations:05sequential_68/dense_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_68/dense_205/MatMul?
.sequential_68/dense_205/BiasAdd/ReadVariableOpReadVariableOp7sequential_68_dense_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_68/dense_205/BiasAdd/ReadVariableOp?
sequential_68/dense_205/BiasAddBiasAdd(sequential_68/dense_205/MatMul:product:06sequential_68/dense_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_68/dense_205/BiasAdd?
sequential_68/re_lu_137/ReluRelu(sequential_68/dense_205/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
sequential_68/re_lu_137/Relu?
-sequential_68/dense_206/MatMul/ReadVariableOpReadVariableOp6sequential_68_dense_206_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_68/dense_206/MatMul/ReadVariableOp?
sequential_68/dense_206/MatMulMatMul*sequential_68/re_lu_137/Relu:activations:05sequential_68/dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_68/dense_206/MatMul?
.sequential_68/dense_206/BiasAdd/ReadVariableOpReadVariableOp7sequential_68_dense_206_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_68/dense_206/BiasAdd/ReadVariableOp?
sequential_68/dense_206/BiasAddBiasAdd(sequential_68/dense_206/MatMul:product:06sequential_68/dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_68/dense_206/BiasAdd?
IdentityIdentity(sequential_68/dense_206/BiasAdd:output:0/^sequential_68/dense_204/BiasAdd/ReadVariableOp.^sequential_68/dense_204/MatMul/ReadVariableOp/^sequential_68/dense_205/BiasAdd/ReadVariableOp.^sequential_68/dense_205/MatMul/ReadVariableOp/^sequential_68/dense_206/BiasAdd/ReadVariableOp.^sequential_68/dense_206/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2`
.sequential_68/dense_204/BiasAdd/ReadVariableOp.sequential_68/dense_204/BiasAdd/ReadVariableOp2^
-sequential_68/dense_204/MatMul/ReadVariableOp-sequential_68/dense_204/MatMul/ReadVariableOp2`
.sequential_68/dense_205/BiasAdd/ReadVariableOp.sequential_68/dense_205/BiasAdd/ReadVariableOp2^
-sequential_68/dense_205/MatMul/ReadVariableOp-sequential_68/dense_205/MatMul/ReadVariableOp2`
.sequential_68/dense_206/BiasAdd/ReadVariableOp.sequential_68/dense_206/BiasAdd/ReadVariableOp2^
-sequential_68/dense_206/MatMul/ReadVariableOp-sequential_68/dense_206/MatMul/ReadVariableOp:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_68_input
?	
?
G__inference_dense_206_layer_call_and_return_conditional_losses_17855902

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
?
G__inference_dense_205_layer_call_and_return_conditional_losses_17855455

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
g
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855562

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
?
c
G__inference_re_lu_137_layer_call_and_return_conditional_losses_17855883

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
?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855660
dropout_68_input&
dense_204_17855642:
??!
dense_204_17855644:	?&
dense_205_17855648:
??!
dense_205_17855650:	?%
dense_206_17855654:	?
 
dense_206_17855656:

identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall?!dense_206/StatefulPartitionedCall?
dropout_68/PartitionedCallPartitionedCalldropout_68_input*
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
GPU 2J 8? *Q
fLRJ
H__inference_dropout_68_layer_call_and_return_conditional_losses_178554202
dropout_68/PartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall#dropout_68/PartitionedCall:output:0dense_204_17855642dense_204_17855644*
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
G__inference_dense_204_layer_call_and_return_conditional_losses_178554322#
!dense_204/StatefulPartitionedCall?
re_lu_136/PartitionedCallPartitionedCall*dense_204/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_136_layer_call_and_return_conditional_losses_178554432
re_lu_136/PartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall"re_lu_136/PartitionedCall:output:0dense_205_17855648dense_205_17855650*
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
G__inference_dense_205_layer_call_and_return_conditional_losses_178554552#
!dense_205/StatefulPartitionedCall?
re_lu_137/PartitionedCallPartitionedCall*dense_205/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_137_layer_call_and_return_conditional_losses_178554662
re_lu_137/PartitionedCall?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall"re_lu_137/PartitionedCall:output:0dense_206_17855654dense_206_17855656*
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
G__inference_dense_206_layer_call_and_return_conditional_losses_178554782#
!dense_206/StatefulPartitionedCall?
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall"^dense_206/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_68_input
?
I
-__inference_dropout_68_layer_call_fn_17855803

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
GPU 2J 8? *Q
fLRJ
H__inference_dropout_68_layer_call_and_return_conditional_losses_178554202
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
0__inference_sequential_68_layer_call_fn_17855500
dropout_68_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_68_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_68_layer_call_and_return_conditional_losses_178554852
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
_user_specified_namedropout_68_input
?
?
0__inference_sequential_68_layer_call_fn_17855724

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
K__inference_sequential_68_layer_call_and_return_conditional_losses_178554852
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
?
g
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855825

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
?
?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855682
dropout_68_input&
dense_204_17855664:
??!
dense_204_17855666:	?&
dense_205_17855670:
??!
dense_205_17855672:	?%
dense_206_17855676:	?
 
dense_206_17855678:

identity??!dense_204/StatefulPartitionedCall?!dense_205/StatefulPartitionedCall?!dense_206/StatefulPartitionedCall?"dropout_68/StatefulPartitionedCall?
"dropout_68/StatefulPartitionedCallStatefulPartitionedCalldropout_68_input*
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
GPU 2J 8? *Q
fLRJ
H__inference_dropout_68_layer_call_and_return_conditional_losses_178555622$
"dropout_68/StatefulPartitionedCall?
!dense_204/StatefulPartitionedCallStatefulPartitionedCall+dropout_68/StatefulPartitionedCall:output:0dense_204_17855664dense_204_17855666*
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
G__inference_dense_204_layer_call_and_return_conditional_losses_178554322#
!dense_204/StatefulPartitionedCall?
re_lu_136/PartitionedCallPartitionedCall*dense_204/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_136_layer_call_and_return_conditional_losses_178554432
re_lu_136/PartitionedCall?
!dense_205/StatefulPartitionedCallStatefulPartitionedCall"re_lu_136/PartitionedCall:output:0dense_205_17855670dense_205_17855672*
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
G__inference_dense_205_layer_call_and_return_conditional_losses_178554552#
!dense_205/StatefulPartitionedCall?
re_lu_137/PartitionedCallPartitionedCall*dense_205/StatefulPartitionedCall:output:0*
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
GPU 2J 8? *P
fKRI
G__inference_re_lu_137_layer_call_and_return_conditional_losses_178554662
re_lu_137/PartitionedCall?
!dense_206/StatefulPartitionedCallStatefulPartitionedCall"re_lu_137/PartitionedCall:output:0dense_206_17855676dense_206_17855678*
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
G__inference_dense_206_layer_call_and_return_conditional_losses_178554782#
!dense_206/StatefulPartitionedCall?
IdentityIdentity*dense_206/StatefulPartitionedCall:output:0"^dense_204/StatefulPartitionedCall"^dense_205/StatefulPartitionedCall"^dense_206/StatefulPartitionedCall#^dropout_68/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_204/StatefulPartitionedCall!dense_204/StatefulPartitionedCall2F
!dense_205/StatefulPartitionedCall!dense_205/StatefulPartitionedCall2F
!dense_206/StatefulPartitionedCall!dense_206/StatefulPartitionedCall2H
"dropout_68/StatefulPartitionedCall"dropout_68/StatefulPartitionedCall:Z V
(
_output_shapes
:??????????
*
_user_specified_namedropout_68_input
?
c
G__inference_re_lu_136_layer_call_and_return_conditional_losses_17855854

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
Ǐ
?
$__inference__traced_restore_17856133
file_prefix5
!assignvariableop_dense_204_kernel:
??0
!assignvariableop_1_dense_204_bias:	?7
#assignvariableop_2_dense_205_kernel:
??0
!assignvariableop_3_dense_205_bias:	?6
#assignvariableop_4_dense_206_kernel:	?
/
!assignvariableop_5_dense_206_bias:
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
+assignvariableop_15_adam_dense_204_kernel_m:
??8
)assignvariableop_16_adam_dense_204_bias_m:	??
+assignvariableop_17_adam_dense_205_kernel_m:
??8
)assignvariableop_18_adam_dense_205_bias_m:	?>
+assignvariableop_19_adam_dense_206_kernel_m:	?
7
)assignvariableop_20_adam_dense_206_bias_m:
?
+assignvariableop_21_adam_dense_204_kernel_v:
??8
)assignvariableop_22_adam_dense_204_bias_v:	??
+assignvariableop_23_adam_dense_205_kernel_v:
??8
)assignvariableop_24_adam_dense_205_bias_v:	?>
+assignvariableop_25_adam_dense_206_kernel_v:	?
7
)assignvariableop_26_adam_dense_206_bias_v:
B
.assignvariableop_27_adam_dense_204_kernel_vhat:
??;
,assignvariableop_28_adam_dense_204_bias_vhat:	?B
.assignvariableop_29_adam_dense_205_kernel_vhat:
??;
,assignvariableop_30_adam_dense_205_bias_vhat:	?A
.assignvariableop_31_adam_dense_206_kernel_vhat:	?
:
,assignvariableop_32_adam_dense_206_bias_vhat:

identity_34??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
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
$2"	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp!assignvariableop_dense_204_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_204_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_205_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_205_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_206_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_206_biasIdentity_5:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp+assignvariableop_15_adam_dense_204_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_204_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp+assignvariableop_17_adam_dense_205_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_205_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_adam_dense_206_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_dense_206_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOp+assignvariableop_21_adam_dense_204_kernel_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_204_bias_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOp+assignvariableop_23_adam_dense_205_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOp)assignvariableop_24_adam_dense_205_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_206_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_206_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOp.assignvariableop_27_adam_dense_204_kernel_vhatIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOp,assignvariableop_28_adam_dense_204_bias_vhatIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOp.assignvariableop_29_adam_dense_205_kernel_vhatIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOp,assignvariableop_30_adam_dense_205_bias_vhatIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOp.assignvariableop_31_adam_dense_206_kernel_vhatIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOp,assignvariableop_32_adam_dense_206_bias_vhatIdentity_32:output:0"/device:CPU:0*
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
?
c
G__inference_re_lu_137_layer_call_and_return_conditional_losses_17855466

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
H
,__inference_re_lu_136_layer_call_fn_17855849

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
GPU 2J 8? *P
fKRI
G__inference_re_lu_136_layer_call_and_return_conditional_losses_178554432
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
?
?
0__inference_sequential_68_layer_call_fn_17855638
dropout_68_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_68_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_68_layer_call_and_return_conditional_losses_178556062
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
_user_specified_namedropout_68_input
?
?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855766

inputs<
(dense_204_matmul_readvariableop_resource:
??8
)dense_204_biasadd_readvariableop_resource:	?<
(dense_205_matmul_readvariableop_resource:
??8
)dense_205_biasadd_readvariableop_resource:	?;
(dense_206_matmul_readvariableop_resource:	?
7
)dense_206_biasadd_readvariableop_resource:

identity?? dense_204/BiasAdd/ReadVariableOp?dense_204/MatMul/ReadVariableOp? dense_205/BiasAdd/ReadVariableOp?dense_205/MatMul/ReadVariableOp? dense_206/BiasAdd/ReadVariableOp?dense_206/MatMul/ReadVariableOpq
dropout_68/IdentityIdentityinputs*
T0*(
_output_shapes
:??????????2
dropout_68/Identity?
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_204/MatMul/ReadVariableOp?
dense_204/MatMulMatMuldropout_68/Identity:output:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_204/MatMul?
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_204/BiasAdd/ReadVariableOp?
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_204/BiasAddw
re_lu_136/ReluReludense_204/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_136/Relu?
dense_205/MatMul/ReadVariableOpReadVariableOp(dense_205_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_205/MatMul/ReadVariableOp?
dense_205/MatMulMatMulre_lu_136/Relu:activations:0'dense_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_205/MatMul?
 dense_205/BiasAdd/ReadVariableOpReadVariableOp)dense_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_205/BiasAdd/ReadVariableOp?
dense_205/BiasAddBiasAdddense_205/MatMul:product:0(dense_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_205/BiasAddw
re_lu_137/ReluReludense_205/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_137/Relu?
dense_206/MatMul/ReadVariableOpReadVariableOp(dense_206_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_206/MatMul/ReadVariableOp?
dense_206/MatMulMatMulre_lu_137/Relu:activations:0'dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_206/MatMul?
 dense_206/BiasAdd/ReadVariableOpReadVariableOp)dense_206_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_206/BiasAdd/ReadVariableOp?
dense_206/BiasAddBiasAdddense_206/MatMul:product:0(dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_206/BiasAdd?
IdentityIdentitydense_206/BiasAdd:output:0!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp!^dense_205/BiasAdd/ReadVariableOp ^dense_205/MatMul/ReadVariableOp!^dense_206/BiasAdd/ReadVariableOp ^dense_206/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2D
 dense_205/BiasAdd/ReadVariableOp dense_205/BiasAdd/ReadVariableOp2B
dense_205/MatMul/ReadVariableOpdense_205/MatMul/ReadVariableOp2D
 dense_206/BiasAdd/ReadVariableOp dense_206/BiasAdd/ReadVariableOp2B
dense_206/MatMul/ReadVariableOpdense_206/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
f
-__inference_dropout_68_layer_call_fn_17855808

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
GPU 2J 8? *Q
fLRJ
H__inference_dropout_68_layer_call_and_return_conditional_losses_178555622
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
?I
?
!__inference__traced_save_17856024
file_prefix/
+savev2_dense_204_kernel_read_readvariableop-
)savev2_dense_204_bias_read_readvariableop/
+savev2_dense_205_kernel_read_readvariableop-
)savev2_dense_205_bias_read_readvariableop/
+savev2_dense_206_kernel_read_readvariableop-
)savev2_dense_206_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop6
2savev2_adam_dense_204_kernel_m_read_readvariableop4
0savev2_adam_dense_204_bias_m_read_readvariableop6
2savev2_adam_dense_205_kernel_m_read_readvariableop4
0savev2_adam_dense_205_bias_m_read_readvariableop6
2savev2_adam_dense_206_kernel_m_read_readvariableop4
0savev2_adam_dense_206_bias_m_read_readvariableop6
2savev2_adam_dense_204_kernel_v_read_readvariableop4
0savev2_adam_dense_204_bias_v_read_readvariableop6
2savev2_adam_dense_205_kernel_v_read_readvariableop4
0savev2_adam_dense_205_bias_v_read_readvariableop6
2savev2_adam_dense_206_kernel_v_read_readvariableop4
0savev2_adam_dense_206_bias_v_read_readvariableop9
5savev2_adam_dense_204_kernel_vhat_read_readvariableop7
3savev2_adam_dense_204_bias_vhat_read_readvariableop9
5savev2_adam_dense_205_kernel_vhat_read_readvariableop7
3savev2_adam_dense_205_bias_vhat_read_readvariableop9
5savev2_adam_dense_206_kernel_vhat_read_readvariableop7
3savev2_adam_dense_206_bias_vhat_read_readvariableop
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*?
value?B?"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEBSlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/vhat/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_204_kernel_read_readvariableop)savev2_dense_204_bias_read_readvariableop+savev2_dense_205_kernel_read_readvariableop)savev2_dense_205_bias_read_readvariableop+savev2_dense_206_kernel_read_readvariableop)savev2_dense_206_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop2savev2_adam_dense_204_kernel_m_read_readvariableop0savev2_adam_dense_204_bias_m_read_readvariableop2savev2_adam_dense_205_kernel_m_read_readvariableop0savev2_adam_dense_205_bias_m_read_readvariableop2savev2_adam_dense_206_kernel_m_read_readvariableop0savev2_adam_dense_206_bias_m_read_readvariableop2savev2_adam_dense_204_kernel_v_read_readvariableop0savev2_adam_dense_204_bias_v_read_readvariableop2savev2_adam_dense_205_kernel_v_read_readvariableop0savev2_adam_dense_205_bias_v_read_readvariableop2savev2_adam_dense_206_kernel_v_read_readvariableop0savev2_adam_dense_206_bias_v_read_readvariableop5savev2_adam_dense_204_kernel_vhat_read_readvariableop3savev2_adam_dense_204_bias_vhat_read_readvariableop5savev2_adam_dense_205_kernel_vhat_read_readvariableop3savev2_adam_dense_205_bias_vhat_read_readvariableop5savev2_adam_dense_206_kernel_vhat_read_readvariableop3savev2_adam_dense_206_bias_vhat_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	2
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
: : : : : : : : : :
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
:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!
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
?
G__inference_dense_204_layer_call_and_return_conditional_losses_17855844

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
G__inference_dense_205_layer_call_and_return_conditional_losses_17855873

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
?)
?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855798

inputs<
(dense_204_matmul_readvariableop_resource:
??8
)dense_204_biasadd_readvariableop_resource:	?<
(dense_205_matmul_readvariableop_resource:
??8
)dense_205_biasadd_readvariableop_resource:	?;
(dense_206_matmul_readvariableop_resource:	?
7
)dense_206_biasadd_readvariableop_resource:

identity?? dense_204/BiasAdd/ReadVariableOp?dense_204/MatMul/ReadVariableOp? dense_205/BiasAdd/ReadVariableOp?dense_205/MatMul/ReadVariableOp? dense_206/BiasAdd/ReadVariableOp?dense_206/MatMul/ReadVariableOpy
dropout_68/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *n۶?2
dropout_68/dropout/Const?
dropout_68/dropout/MulMulinputs!dropout_68/dropout/Const:output:0*
T0*(
_output_shapes
:??????????2
dropout_68/dropout/Mulj
dropout_68/dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout_68/dropout/Shape?
/dropout_68/dropout/random_uniform/RandomUniformRandomUniform!dropout_68/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype021
/dropout_68/dropout/random_uniform/RandomUniform?
!dropout_68/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>2#
!dropout_68/dropout/GreaterEqual/y?
dropout_68/dropout/GreaterEqualGreaterEqual8dropout_68/dropout/random_uniform/RandomUniform:output:0*dropout_68/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????2!
dropout_68/dropout/GreaterEqual?
dropout_68/dropout/CastCast#dropout_68/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????2
dropout_68/dropout/Cast?
dropout_68/dropout/Mul_1Muldropout_68/dropout/Mul:z:0dropout_68/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????2
dropout_68/dropout/Mul_1?
dense_204/MatMul/ReadVariableOpReadVariableOp(dense_204_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_204/MatMul/ReadVariableOp?
dense_204/MatMulMatMuldropout_68/dropout/Mul_1:z:0'dense_204/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_204/MatMul?
 dense_204/BiasAdd/ReadVariableOpReadVariableOp)dense_204_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_204/BiasAdd/ReadVariableOp?
dense_204/BiasAddBiasAdddense_204/MatMul:product:0(dense_204/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_204/BiasAddw
re_lu_136/ReluReludense_204/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_136/Relu?
dense_205/MatMul/ReadVariableOpReadVariableOp(dense_205_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_205/MatMul/ReadVariableOp?
dense_205/MatMulMatMulre_lu_136/Relu:activations:0'dense_205/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_205/MatMul?
 dense_205/BiasAdd/ReadVariableOpReadVariableOp)dense_205_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_205/BiasAdd/ReadVariableOp?
dense_205/BiasAddBiasAdddense_205/MatMul:product:0(dense_205/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_205/BiasAddw
re_lu_137/ReluReludense_205/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
re_lu_137/Relu?
dense_206/MatMul/ReadVariableOpReadVariableOp(dense_206_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_206/MatMul/ReadVariableOp?
dense_206/MatMulMatMulre_lu_137/Relu:activations:0'dense_206/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_206/MatMul?
 dense_206/BiasAdd/ReadVariableOpReadVariableOp)dense_206_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_206/BiasAdd/ReadVariableOp?
dense_206/BiasAddBiasAdddense_206/MatMul:product:0(dense_206/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_206/BiasAdd?
IdentityIdentitydense_206/BiasAdd:output:0!^dense_204/BiasAdd/ReadVariableOp ^dense_204/MatMul/ReadVariableOp!^dense_205/BiasAdd/ReadVariableOp ^dense_205/MatMul/ReadVariableOp!^dense_206/BiasAdd/ReadVariableOp ^dense_206/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_204/BiasAdd/ReadVariableOp dense_204/BiasAdd/ReadVariableOp2B
dense_204/MatMul/ReadVariableOpdense_204/MatMul/ReadVariableOp2D
 dense_205/BiasAdd/ReadVariableOp dense_205/BiasAdd/ReadVariableOp2B
dense_205/MatMul/ReadVariableOpdense_205/MatMul/ReadVariableOp2D
 dense_206/BiasAdd/ReadVariableOp dense_206/BiasAdd/ReadVariableOp2B
dense_206/MatMul/ReadVariableOpdense_206/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
G__inference_re_lu_136_layer_call_and_return_conditional_losses_17855443

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
G__inference_dense_204_layer_call_and_return_conditional_losses_17855432

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
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
N
dropout_68_input:
"serving_default_dropout_68_input:0??????????=
	dense_2060
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?.
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
p__call__
*q&call_and_return_all_conditional_losses
r_default_save_signature"?+
_tf_keras_sequential?*{"name": "sequential_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_68_input"}}, {"class_name": "Dropout", "config": {"name": "dropout_68", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_136", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_137", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_206", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 13, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dropout_68_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_68", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_68_input"}, "shared_object_id": 0}, {"class_name": "Dropout", "config": {"name": "dropout_68", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "ReLU", "config": {"name": "re_lu_136", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "ReLU", "config": {"name": "re_lu_137", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_206", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}]}}, "training_config": {"loss": "softmax_cross_entropy_with_logits_v2", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": true}}}}
?
regularization_losses
	variables
trainable_variables
	keras_api
s__call__
*t&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dropout_68", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_68", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.3, "noise_shape": null, "seed": null}, "shared_object_id": 1}
?

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
u__call__
*v&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_204", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_204", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
?
regularization_losses
	variables
trainable_variables
	keras_api
w__call__
*x&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_136", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_136", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}
?

kernel
bias
regularization_losses
	variables
trainable_variables
 	keras_api
y__call__
*z&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_205", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_205", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
!regularization_losses
"	variables
#trainable_variables
$	keras_api
{__call__
*|&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "re_lu_137", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_137", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}
?

%kernel
&bias
'regularization_losses
(	variables
)trainable_variables
*	keras_api
}__call__
*~&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_206", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_206", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?
+iter

,beta_1

-beta_2
	.decay
/learning_ratem^m_m`ma%mb&mcvdvevfvg%vh&vi
vhatj
vhatk
vhatl
vhatm
%vhatn
&vhato"
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
0layer_metrics
1layer_regularization_losses
		variables
2non_trainable_variables

trainable_variables
3metrics

4layers
p__call__
r_default_save_signature
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
,
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
5layer_metrics
6layer_regularization_losses
	variables
7non_trainable_variables
trainable_variables
8metrics

9layers
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_204/kernel
:?2dense_204/bias
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
:layer_metrics
;layer_regularization_losses
	variables
<non_trainable_variables
trainable_variables
=metrics

>layers
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
regularization_losses
?layer_metrics
@layer_regularization_losses
	variables
Anon_trainable_variables
trainable_variables
Bmetrics

Clayers
w__call__
*x&call_and_return_all_conditional_losses
&x"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_205/kernel
:?2dense_205/bias
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
Dlayer_metrics
Elayer_regularization_losses
	variables
Fnon_trainable_variables
trainable_variables
Gmetrics

Hlayers
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
!regularization_losses
Ilayer_metrics
Jlayer_regularization_losses
"	variables
Knon_trainable_variables
#trainable_variables
Lmetrics

Mlayers
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_206/kernel
:
2dense_206/bias
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
Nlayer_metrics
Olayer_regularization_losses
(	variables
Pnon_trainable_variables
)trainable_variables
Qmetrics

Rlayers
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
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
 "
trackable_list_wrapper
.
S0
T1"
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
	Utotal
	Vcount
W	variables
X	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}
?
	Ytotal
	Zcount
[
_fn_kwargs
\	variables
]	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}
:  (2total
:  (2count
.
U0
V1"
trackable_list_wrapper
-
W	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Y0
Z1"
trackable_list_wrapper
-
\	variables"
_generic_user_object
):'
??2Adam/dense_204/kernel/m
": ?2Adam/dense_204/bias/m
):'
??2Adam/dense_205/kernel/m
": ?2Adam/dense_205/bias/m
(:&	?
2Adam/dense_206/kernel/m
!:
2Adam/dense_206/bias/m
):'
??2Adam/dense_204/kernel/v
": ?2Adam/dense_204/bias/v
):'
??2Adam/dense_205/kernel/v
": ?2Adam/dense_205/bias/v
(:&	?
2Adam/dense_206/kernel/v
!:
2Adam/dense_206/bias/v
,:*
??2Adam/dense_204/kernel/vhat
%:#?2Adam/dense_204/bias/vhat
,:*
??2Adam/dense_205/kernel/vhat
%:#?2Adam/dense_205/bias/vhat
+:)	?
2Adam/dense_206/kernel/vhat
$:"
2Adam/dense_206/bias/vhat
?2?
0__inference_sequential_68_layer_call_fn_17855500
0__inference_sequential_68_layer_call_fn_17855724
0__inference_sequential_68_layer_call_fn_17855741
0__inference_sequential_68_layer_call_fn_17855638?
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
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855766
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855798
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855660
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855682?
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
#__inference__wrapped_model_17855408?
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
dropout_68_input??????????
?2?
-__inference_dropout_68_layer_call_fn_17855803
-__inference_dropout_68_layer_call_fn_17855808?
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
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855813
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855825?
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
,__inference_dense_204_layer_call_fn_17855834?
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
G__inference_dense_204_layer_call_and_return_conditional_losses_17855844?
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
,__inference_re_lu_136_layer_call_fn_17855849?
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
G__inference_re_lu_136_layer_call_and_return_conditional_losses_17855854?
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
,__inference_dense_205_layer_call_fn_17855863?
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
G__inference_dense_205_layer_call_and_return_conditional_losses_17855873?
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
,__inference_re_lu_137_layer_call_fn_17855878?
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
G__inference_re_lu_137_layer_call_and_return_conditional_losses_17855883?
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
,__inference_dense_206_layer_call_fn_17855892?
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
G__inference_dense_206_layer_call_and_return_conditional_losses_17855902?
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
&__inference_signature_wrapper_17855707dropout_68_input"?
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
#__inference__wrapped_model_17855408{%&:?7
0?-
+?(
dropout_68_input??????????
? "5?2
0
	dense_206#? 
	dense_206?????????
?
G__inference_dense_204_layer_call_and_return_conditional_losses_17855844^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_204_layer_call_fn_17855834Q0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_205_layer_call_and_return_conditional_losses_17855873^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_205_layer_call_fn_17855863Q0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_206_layer_call_and_return_conditional_losses_17855902]%&0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
,__inference_dense_206_layer_call_fn_17855892P%&0?-
&?#
!?
inputs??????????
? "??????????
?
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855813^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
H__inference_dropout_68_layer_call_and_return_conditional_losses_17855825^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? ?
-__inference_dropout_68_layer_call_fn_17855803Q4?1
*?'
!?
inputs??????????
p 
? "????????????
-__inference_dropout_68_layer_call_fn_17855808Q4?1
*?'
!?
inputs??????????
p
? "????????????
G__inference_re_lu_136_layer_call_and_return_conditional_losses_17855854Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
,__inference_re_lu_136_layer_call_fn_17855849M0?-
&?#
!?
inputs??????????
? "????????????
G__inference_re_lu_137_layer_call_and_return_conditional_losses_17855883Z0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? }
,__inference_re_lu_137_layer_call_fn_17855878M0?-
&?#
!?
inputs??????????
? "????????????
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855660s%&B??
8?5
+?(
dropout_68_input??????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855682s%&B??
8?5
+?(
dropout_68_input??????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855766i%&8?5
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
K__inference_sequential_68_layer_call_and_return_conditional_losses_17855798i%&8?5
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
0__inference_sequential_68_layer_call_fn_17855500f%&B??
8?5
+?(
dropout_68_input??????????
p 

 
? "??????????
?
0__inference_sequential_68_layer_call_fn_17855638f%&B??
8?5
+?(
dropout_68_input??????????
p

 
? "??????????
?
0__inference_sequential_68_layer_call_fn_17855724\%&8?5
.?+
!?
inputs??????????
p 

 
? "??????????
?
0__inference_sequential_68_layer_call_fn_17855741\%&8?5
.?+
!?
inputs??????????
p

 
? "??????????
?
&__inference_signature_wrapper_17855707?%&N?K
? 
D?A
?
dropout_68_input+?(
dropout_68_input??????????"5?2
0
	dense_206#? 
	dense_206?????????
