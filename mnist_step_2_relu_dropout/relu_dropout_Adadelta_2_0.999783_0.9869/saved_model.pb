²­
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
 "serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718×
~
dense_153/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ú*!
shared_namedense_153/kernel
w
$dense_153/kernel/Read/ReadVariableOpReadVariableOpdense_153/kernel* 
_output_shapes
:
ú*
dtype0
u
dense_153/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*
shared_namedense_153/bias
n
"dense_153/bias/Read/ReadVariableOpReadVariableOpdense_153/bias*
_output_shapes	
:ú*
dtype0
~
dense_154/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úú*!
shared_namedense_154/kernel
w
$dense_154/kernel/Read/ReadVariableOpReadVariableOpdense_154/kernel* 
_output_shapes
:
úú*
dtype0
u
dense_154/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*
shared_namedense_154/bias
n
"dense_154/bias/Read/ReadVariableOpReadVariableOpdense_154/bias*
_output_shapes	
:ú*
dtype0
}
dense_155/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú
*!
shared_namedense_155/kernel
v
$dense_155/kernel/Read/ReadVariableOpReadVariableOpdense_155/kernel*
_output_shapes
:	ú
*
dtype0
t
dense_155/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_155/bias
m
"dense_155/bias/Read/ReadVariableOpReadVariableOpdense_155/bias*
_output_shapes
:
*
dtype0
n
Adadelta/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_nameAdadelta/iter
g
!Adadelta/iter/Read/ReadVariableOpReadVariableOpAdadelta/iter*
_output_shapes
: *
dtype0	
p
Adadelta/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/decay
i
"Adadelta/decay/Read/ReadVariableOpReadVariableOpAdadelta/decay*
_output_shapes
: *
dtype0

Adadelta/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdadelta/learning_rate
y
*Adadelta/learning_rate/Read/ReadVariableOpReadVariableOpAdadelta/learning_rate*
_output_shapes
: *
dtype0
l
Adadelta/rhoVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdadelta/rho
e
 Adadelta/rho/Read/ReadVariableOpReadVariableOpAdadelta/rho*
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
¦
$Adadelta/dense_153/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ú*5
shared_name&$Adadelta/dense_153/kernel/accum_grad

8Adadelta/dense_153/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/dense_153/kernel/accum_grad* 
_output_shapes
:
ú*
dtype0

"Adadelta/dense_153/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*3
shared_name$"Adadelta/dense_153/bias/accum_grad

6Adadelta/dense_153/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_153/bias/accum_grad*
_output_shapes	
:ú*
dtype0
¦
$Adadelta/dense_154/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úú*5
shared_name&$Adadelta/dense_154/kernel/accum_grad

8Adadelta/dense_154/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/dense_154/kernel/accum_grad* 
_output_shapes
:
úú*
dtype0

"Adadelta/dense_154/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*3
shared_name$"Adadelta/dense_154/bias/accum_grad

6Adadelta/dense_154/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_154/bias/accum_grad*
_output_shapes	
:ú*
dtype0
¥
$Adadelta/dense_155/kernel/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú
*5
shared_name&$Adadelta/dense_155/kernel/accum_grad

8Adadelta/dense_155/kernel/accum_grad/Read/ReadVariableOpReadVariableOp$Adadelta/dense_155/kernel/accum_grad*
_output_shapes
:	ú
*
dtype0

"Adadelta/dense_155/bias/accum_gradVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*3
shared_name$"Adadelta/dense_155/bias/accum_grad

6Adadelta/dense_155/bias/accum_grad/Read/ReadVariableOpReadVariableOp"Adadelta/dense_155/bias/accum_grad*
_output_shapes
:
*
dtype0
¤
#Adadelta/dense_153/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ú*4
shared_name%#Adadelta/dense_153/kernel/accum_var

7Adadelta/dense_153/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/dense_153/kernel/accum_var* 
_output_shapes
:
ú*
dtype0

!Adadelta/dense_153/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*2
shared_name#!Adadelta/dense_153/bias/accum_var

5Adadelta/dense_153/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_153/bias/accum_var*
_output_shapes	
:ú*
dtype0
¤
#Adadelta/dense_154/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:
úú*4
shared_name%#Adadelta/dense_154/kernel/accum_var

7Adadelta/dense_154/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/dense_154/kernel/accum_var* 
_output_shapes
:
úú*
dtype0

!Adadelta/dense_154/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:ú*2
shared_name#!Adadelta/dense_154/bias/accum_var

5Adadelta/dense_154/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_154/bias/accum_var*
_output_shapes	
:ú*
dtype0
£
#Adadelta/dense_155/kernel/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:	ú
*4
shared_name%#Adadelta/dense_155/kernel/accum_var

7Adadelta/dense_155/kernel/accum_var/Read/ReadVariableOpReadVariableOp#Adadelta/dense_155/kernel/accum_var*
_output_shapes
:	ú
*
dtype0

!Adadelta/dense_155/bias/accum_varVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*2
shared_name#!Adadelta/dense_155/bias/accum_var

5Adadelta/dense_155/bias/accum_var/Read/ReadVariableOpReadVariableOp!Adadelta/dense_155/bias/accum_var*
_output_shapes
:
*
dtype0

NoOpNoOp
Í.
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*.
valueþ-Bû- Bô-
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

+iter
	,decay
-learning_rate
.rho
accum_grad]
accum_grad^
accum_grad_
accum_grad`%
accum_grada&
accum_gradb	accum_varc	accum_vard	accum_vare	accum_varf%	accum_varg&	accum_varh
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
/layer_metrics
0layer_regularization_losses
		variables
1non_trainable_variables

trainable_variables
2metrics

3layers
 
 
 
 
­
regularization_losses
4layer_metrics
5layer_regularization_losses
	variables
6non_trainable_variables
trainable_variables
7metrics

8layers
\Z
VARIABLE_VALUEdense_153/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_153/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
9layer_metrics
:layer_regularization_losses
	variables
;non_trainable_variables
trainable_variables
<metrics

=layers
 
 
 
­
regularization_losses
>layer_metrics
?layer_regularization_losses
	variables
@non_trainable_variables
trainable_variables
Ametrics

Blayers
\Z
VARIABLE_VALUEdense_154/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_154/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1

0
1
­
regularization_losses
Clayer_metrics
Dlayer_regularization_losses
	variables
Enon_trainable_variables
trainable_variables
Fmetrics

Glayers
 
 
 
­
!regularization_losses
Hlayer_metrics
Ilayer_regularization_losses
"	variables
Jnon_trainable_variables
#trainable_variables
Kmetrics

Llayers
\Z
VARIABLE_VALUEdense_155/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_155/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

%0
&1

%0
&1
­
'regularization_losses
Mlayer_metrics
Nlayer_regularization_losses
(	variables
Onon_trainable_variables
)trainable_variables
Pmetrics

Qlayers
LJ
VARIABLE_VALUEAdadelta/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
NL
VARIABLE_VALUEAdadelta/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
^\
VARIABLE_VALUEAdadelta/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUEAdadelta/rho(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUE
 
 
 

R0
S1
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
	Ttotal
	Ucount
V	variables
W	keras_api
D
	Xtotal
	Ycount
Z
_fn_kwargs
[	variables
\	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

T0
U1

V	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

X0
Y1

[	variables

VARIABLE_VALUE$Adadelta/dense_153/kernel/accum_grad[layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/dense_153/bias/accum_gradYlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adadelta/dense_154/kernel/accum_grad[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/dense_154/bias/accum_gradYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE$Adadelta/dense_155/kernel/accum_grad[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adadelta/dense_155/bias/accum_gradYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/dense_153/kernel/accum_varZlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/dense_153/bias/accum_varXlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/dense_154/kernel/accum_varZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/dense_154/bias/accum_varXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE#Adadelta/dense_155/kernel/accum_varZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adadelta/dense_155/bias/accum_varXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUE

 serving_default_dropout_51_inputPlaceholder*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿ
¯
StatefulPartitionedCallStatefulPartitionedCall serving_default_dropout_51_inputdense_153/kerneldense_153/biasdense_154/kerneldense_154/biasdense_155/kerneldense_155/bias*
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
&__inference_signature_wrapper_14988416
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
À
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_153/kernel/Read/ReadVariableOp"dense_153/bias/Read/ReadVariableOp$dense_154/kernel/Read/ReadVariableOp"dense_154/bias/Read/ReadVariableOp$dense_155/kernel/Read/ReadVariableOp"dense_155/bias/Read/ReadVariableOp!Adadelta/iter/Read/ReadVariableOp"Adadelta/decay/Read/ReadVariableOp*Adadelta/learning_rate/Read/ReadVariableOp Adadelta/rho/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp8Adadelta/dense_153/kernel/accum_grad/Read/ReadVariableOp6Adadelta/dense_153/bias/accum_grad/Read/ReadVariableOp8Adadelta/dense_154/kernel/accum_grad/Read/ReadVariableOp6Adadelta/dense_154/bias/accum_grad/Read/ReadVariableOp8Adadelta/dense_155/kernel/accum_grad/Read/ReadVariableOp6Adadelta/dense_155/bias/accum_grad/Read/ReadVariableOp7Adadelta/dense_153/kernel/accum_var/Read/ReadVariableOp5Adadelta/dense_153/bias/accum_var/Read/ReadVariableOp7Adadelta/dense_154/kernel/accum_var/Read/ReadVariableOp5Adadelta/dense_154/bias/accum_var/Read/ReadVariableOp7Adadelta/dense_155/kernel/accum_var/Read/ReadVariableOp5Adadelta/dense_155/bias/accum_var/Read/ReadVariableOpConst*'
Tin 
2	*
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
!__inference__traced_save_14988712
³
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_153/kerneldense_153/biasdense_154/kerneldense_154/biasdense_155/kerneldense_155/biasAdadelta/iterAdadelta/decayAdadelta/learning_rateAdadelta/rhototalcounttotal_1count_1$Adadelta/dense_153/kernel/accum_grad"Adadelta/dense_153/bias/accum_grad$Adadelta/dense_154/kernel/accum_grad"Adadelta/dense_154/bias/accum_grad$Adadelta/dense_155/kernel/accum_grad"Adadelta/dense_155/bias/accum_grad#Adadelta/dense_153/kernel/accum_var!Adadelta/dense_153/bias/accum_var#Adadelta/dense_154/kernel/accum_var!Adadelta/dense_154/bias/accum_var#Adadelta/dense_155/kernel/accum_var!Adadelta/dense_155/bias/accum_var*&
Tin
2*
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
$__inference__traced_restore_14988800Ú
ã
c
G__inference_re_lu_103_layer_call_and_return_conditional_losses_14988592

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
Æ
H
,__inference_re_lu_102_layer_call_fn_14988558

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
G__inference_re_lu_102_layer_call_and_return_conditional_losses_149881542
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
·
g
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988273

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
ù
f
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988522

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
È
I
-__inference_dropout_51_layer_call_fn_14988512

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
H__inference_dropout_51_layer_call_and_return_conditional_losses_149881312
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
Æ
H
,__inference_re_lu_103_layer_call_fn_14988587

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
G__inference_re_lu_103_layer_call_and_return_conditional_losses_149881772
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
 
Ú
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988317

inputs&
dense_153_14988299:
ú!
dense_153_14988301:	ú&
dense_154_14988305:
úú!
dense_154_14988307:	ú%
dense_155_14988311:	ú
 
dense_155_14988313:

identity¢!dense_153/StatefulPartitionedCall¢!dense_154/StatefulPartitionedCall¢!dense_155/StatefulPartitionedCall¢"dropout_51/StatefulPartitionedCallõ
"dropout_51/StatefulPartitionedCallStatefulPartitionedCallinputs*
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
H__inference_dropout_51_layer_call_and_return_conditional_losses_149882732$
"dropout_51/StatefulPartitionedCallÅ
!dense_153/StatefulPartitionedCallStatefulPartitionedCall+dropout_51/StatefulPartitionedCall:output:0dense_153_14988299dense_153_14988301*
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
G__inference_dense_153_layer_call_and_return_conditional_losses_149881432#
!dense_153/StatefulPartitionedCallþ
re_lu_102/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_102_layer_call_and_return_conditional_losses_149881542
re_lu_102/PartitionedCall¼
!dense_154/StatefulPartitionedCallStatefulPartitionedCall"re_lu_102/PartitionedCall:output:0dense_154_14988305dense_154_14988307*
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
G__inference_dense_154_layer_call_and_return_conditional_losses_149881662#
!dense_154/StatefulPartitionedCallþ
re_lu_103/PartitionedCallPartitionedCall*dense_154/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_103_layer_call_and_return_conditional_losses_149881772
re_lu_103/PartitionedCall»
!dense_155/StatefulPartitionedCallStatefulPartitionedCall"re_lu_103/PartitionedCall:output:0dense_155_14988311dense_155_14988313*
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
G__inference_dense_155_layer_call_and_return_conditional_losses_149881892#
!dense_155/StatefulPartitionedCall
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0"^dense_153/StatefulPartitionedCall"^dense_154/StatefulPartitionedCall"^dense_155/StatefulPartitionedCall#^dropout_51/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall2H
"dropout_51/StatefulPartitionedCall"dropout_51/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
×	
ù
G__inference_dense_155_layer_call_and_return_conditional_losses_14988611

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
Þ	
û
G__inference_dense_154_layer_call_and_return_conditional_losses_14988166

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
Ô
f
-__inference_dropout_51_layer_call_fn_14988517

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
H__inference_dropout_51_layer_call_and_return_conditional_losses_149882732
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

¿
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988371
dropout_51_input&
dense_153_14988353:
ú!
dense_153_14988355:	ú&
dense_154_14988359:
úú!
dense_154_14988361:	ú%
dense_155_14988365:	ú
 
dense_155_14988367:

identity¢!dense_153/StatefulPartitionedCall¢!dense_154/StatefulPartitionedCall¢!dense_155/StatefulPartitionedCallç
dropout_51/PartitionedCallPartitionedCalldropout_51_input*
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
H__inference_dropout_51_layer_call_and_return_conditional_losses_149881312
dropout_51/PartitionedCall½
!dense_153/StatefulPartitionedCallStatefulPartitionedCall#dropout_51/PartitionedCall:output:0dense_153_14988353dense_153_14988355*
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
G__inference_dense_153_layer_call_and_return_conditional_losses_149881432#
!dense_153/StatefulPartitionedCallþ
re_lu_102/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_102_layer_call_and_return_conditional_losses_149881542
re_lu_102/PartitionedCall¼
!dense_154/StatefulPartitionedCallStatefulPartitionedCall"re_lu_102/PartitionedCall:output:0dense_154_14988359dense_154_14988361*
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
G__inference_dense_154_layer_call_and_return_conditional_losses_149881662#
!dense_154/StatefulPartitionedCallþ
re_lu_103/PartitionedCallPartitionedCall*dense_154/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_103_layer_call_and_return_conditional_losses_149881772
re_lu_103/PartitionedCall»
!dense_155/StatefulPartitionedCallStatefulPartitionedCall"re_lu_103/PartitionedCall:output:0dense_155_14988365dense_155_14988367*
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
G__inference_dense_155_layer_call_and_return_conditional_losses_149881892#
!dense_155/StatefulPartitionedCallê
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0"^dense_153/StatefulPartitionedCall"^dense_154/StatefulPartitionedCall"^dense_155/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_51_input
ø

0__inference_sequential_51_layer_call_fn_14988211
dropout_51_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_51_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_51_layer_call_and_return_conditional_losses_149881962
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
_user_specified_namedropout_51_input
º(
©
#__inference__wrapped_model_14988119
dropout_51_inputJ
6sequential_51_dense_153_matmul_readvariableop_resource:
úF
7sequential_51_dense_153_biasadd_readvariableop_resource:	úJ
6sequential_51_dense_154_matmul_readvariableop_resource:
úúF
7sequential_51_dense_154_biasadd_readvariableop_resource:	úI
6sequential_51_dense_155_matmul_readvariableop_resource:	ú
E
7sequential_51_dense_155_biasadd_readvariableop_resource:

identity¢.sequential_51/dense_153/BiasAdd/ReadVariableOp¢-sequential_51/dense_153/MatMul/ReadVariableOp¢.sequential_51/dense_154/BiasAdd/ReadVariableOp¢-sequential_51/dense_154/MatMul/ReadVariableOp¢.sequential_51/dense_155/BiasAdd/ReadVariableOp¢-sequential_51/dense_155/MatMul/ReadVariableOp
!sequential_51/dropout_51/IdentityIdentitydropout_51_input*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!sequential_51/dropout_51/Identity×
-sequential_51/dense_153/MatMul/ReadVariableOpReadVariableOp6sequential_51_dense_153_matmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02/
-sequential_51/dense_153/MatMul/ReadVariableOpà
sequential_51/dense_153/MatMulMatMul*sequential_51/dropout_51/Identity:output:05sequential_51/dense_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
sequential_51/dense_153/MatMulÕ
.sequential_51/dense_153/BiasAdd/ReadVariableOpReadVariableOp7sequential_51_dense_153_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype020
.sequential_51/dense_153/BiasAdd/ReadVariableOpâ
sequential_51/dense_153/BiasAddBiasAdd(sequential_51/dense_153/MatMul:product:06sequential_51/dense_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
sequential_51/dense_153/BiasAdd¡
sequential_51/re_lu_102/ReluRelu(sequential_51/dense_153/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_51/re_lu_102/Relu×
-sequential_51/dense_154/MatMul/ReadVariableOpReadVariableOp6sequential_51_dense_154_matmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02/
-sequential_51/dense_154/MatMul/ReadVariableOpà
sequential_51/dense_154/MatMulMatMul*sequential_51/re_lu_102/Relu:activations:05sequential_51/dense_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2 
sequential_51/dense_154/MatMulÕ
.sequential_51/dense_154/BiasAdd/ReadVariableOpReadVariableOp7sequential_51_dense_154_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype020
.sequential_51/dense_154/BiasAdd/ReadVariableOpâ
sequential_51/dense_154/BiasAddBiasAdd(sequential_51/dense_154/MatMul:product:06sequential_51/dense_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2!
sequential_51/dense_154/BiasAdd¡
sequential_51/re_lu_103/ReluRelu(sequential_51/dense_154/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
sequential_51/re_lu_103/ReluÖ
-sequential_51/dense_155/MatMul/ReadVariableOpReadVariableOp6sequential_51_dense_155_matmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02/
-sequential_51/dense_155/MatMul/ReadVariableOpß
sequential_51/dense_155/MatMulMatMul*sequential_51/re_lu_103/Relu:activations:05sequential_51/dense_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2 
sequential_51/dense_155/MatMulÔ
.sequential_51/dense_155/BiasAdd/ReadVariableOpReadVariableOp7sequential_51_dense_155_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_51/dense_155/BiasAdd/ReadVariableOpá
sequential_51/dense_155/BiasAddBiasAdd(sequential_51/dense_155/MatMul:product:06sequential_51/dense_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2!
sequential_51/dense_155/BiasAdd
IdentityIdentity(sequential_51/dense_155/BiasAdd:output:0/^sequential_51/dense_153/BiasAdd/ReadVariableOp.^sequential_51/dense_153/MatMul/ReadVariableOp/^sequential_51/dense_154/BiasAdd/ReadVariableOp.^sequential_51/dense_154/MatMul/ReadVariableOp/^sequential_51/dense_155/BiasAdd/ReadVariableOp.^sequential_51/dense_155/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2`
.sequential_51/dense_153/BiasAdd/ReadVariableOp.sequential_51/dense_153/BiasAdd/ReadVariableOp2^
-sequential_51/dense_153/MatMul/ReadVariableOp-sequential_51/dense_153/MatMul/ReadVariableOp2`
.sequential_51/dense_154/BiasAdd/ReadVariableOp.sequential_51/dense_154/BiasAdd/ReadVariableOp2^
-sequential_51/dense_154/MatMul/ReadVariableOp-sequential_51/dense_154/MatMul/ReadVariableOp2`
.sequential_51/dense_155/BiasAdd/ReadVariableOp.sequential_51/dense_155/BiasAdd/ReadVariableOp2^
-sequential_51/dense_155/MatMul/ReadVariableOp-sequential_51/dense_155/MatMul/ReadVariableOp:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_51_input
Ú

0__inference_sequential_51_layer_call_fn_14988433

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
K__inference_sequential_51_layer_call_and_return_conditional_losses_149881962
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
)

K__inference_sequential_51_layer_call_and_return_conditional_losses_14988507

inputs<
(dense_153_matmul_readvariableop_resource:
ú8
)dense_153_biasadd_readvariableop_resource:	ú<
(dense_154_matmul_readvariableop_resource:
úú8
)dense_154_biasadd_readvariableop_resource:	ú;
(dense_155_matmul_readvariableop_resource:	ú
7
)dense_155_biasadd_readvariableop_resource:

identity¢ dense_153/BiasAdd/ReadVariableOp¢dense_153/MatMul/ReadVariableOp¢ dense_154/BiasAdd/ReadVariableOp¢dense_154/MatMul/ReadVariableOp¢ dense_155/BiasAdd/ReadVariableOp¢dense_155/MatMul/ReadVariableOpy
dropout_51/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_51/dropout/Const
dropout_51/dropout/MulMulinputs!dropout_51/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_51/dropout/Mulj
dropout_51/dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout_51/dropout/ShapeÖ
/dropout_51/dropout/random_uniform/RandomUniformRandomUniform!dropout_51/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype021
/dropout_51/dropout/random_uniform/RandomUniform
!dropout_51/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2#
!dropout_51/dropout/GreaterEqual/yë
dropout_51/dropout/GreaterEqualGreaterEqual8dropout_51/dropout/random_uniform/RandomUniform:output:0*dropout_51/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
dropout_51/dropout/GreaterEqual¡
dropout_51/dropout/CastCast#dropout_51/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_51/dropout/Cast§
dropout_51/dropout/Mul_1Muldropout_51/dropout/Mul:z:0dropout_51/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_51/dropout/Mul_1­
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02!
dense_153/MatMul/ReadVariableOp¨
dense_153/MatMulMatMuldropout_51/dropout/Mul_1:z:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_153/MatMul«
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_153/BiasAdd/ReadVariableOpª
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_153/BiasAddw
re_lu_102/ReluReludense_153/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_102/Relu­
dense_154/MatMul/ReadVariableOpReadVariableOp(dense_154_matmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02!
dense_154/MatMul/ReadVariableOp¨
dense_154/MatMulMatMulre_lu_102/Relu:activations:0'dense_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_154/MatMul«
 dense_154/BiasAdd/ReadVariableOpReadVariableOp)dense_154_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_154/BiasAdd/ReadVariableOpª
dense_154/BiasAddBiasAdddense_154/MatMul:product:0(dense_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_154/BiasAddw
re_lu_103/ReluReludense_154/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_103/Relu¬
dense_155/MatMul/ReadVariableOpReadVariableOp(dense_155_matmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02!
dense_155/MatMul/ReadVariableOp§
dense_155/MatMulMatMulre_lu_103/Relu:activations:0'dense_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_155/MatMulª
 dense_155/BiasAdd/ReadVariableOpReadVariableOp)dense_155_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_155/BiasAdd/ReadVariableOp©
dense_155/BiasAddBiasAdddense_155/MatMul:product:0(dense_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_155/BiasAdd½
IdentityIdentitydense_155/BiasAdd:output:0!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp!^dense_154/BiasAdd/ReadVariableOp ^dense_154/MatMul/ReadVariableOp!^dense_155/BiasAdd/ReadVariableOp ^dense_155/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp2D
 dense_154/BiasAdd/ReadVariableOp dense_154/BiasAdd/ReadVariableOp2B
dense_154/MatMul/ReadVariableOpdense_154/MatMul/ReadVariableOp2D
 dense_155/BiasAdd/ReadVariableOp dense_155/BiasAdd/ReadVariableOp2B
dense_155/MatMul/ReadVariableOpdense_155/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¨

,__inference_dense_153_layer_call_fn_14988543

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
G__inference_dense_153_layer_call_and_return_conditional_losses_149881432
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
Ú

0__inference_sequential_51_layer_call_fn_14988450

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
K__inference_sequential_51_layer_call_and_return_conditional_losses_149883172
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
Ó

K__inference_sequential_51_layer_call_and_return_conditional_losses_14988475

inputs<
(dense_153_matmul_readvariableop_resource:
ú8
)dense_153_biasadd_readvariableop_resource:	ú<
(dense_154_matmul_readvariableop_resource:
úú8
)dense_154_biasadd_readvariableop_resource:	ú;
(dense_155_matmul_readvariableop_resource:	ú
7
)dense_155_biasadd_readvariableop_resource:

identity¢ dense_153/BiasAdd/ReadVariableOp¢dense_153/MatMul/ReadVariableOp¢ dense_154/BiasAdd/ReadVariableOp¢dense_154/MatMul/ReadVariableOp¢ dense_155/BiasAdd/ReadVariableOp¢dense_155/MatMul/ReadVariableOpq
dropout_51/IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_51/Identity­
dense_153/MatMul/ReadVariableOpReadVariableOp(dense_153_matmul_readvariableop_resource* 
_output_shapes
:
ú*
dtype02!
dense_153/MatMul/ReadVariableOp¨
dense_153/MatMulMatMuldropout_51/Identity:output:0'dense_153/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_153/MatMul«
 dense_153/BiasAdd/ReadVariableOpReadVariableOp)dense_153_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_153/BiasAdd/ReadVariableOpª
dense_153/BiasAddBiasAdddense_153/MatMul:product:0(dense_153/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_153/BiasAddw
re_lu_102/ReluReludense_153/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_102/Relu­
dense_154/MatMul/ReadVariableOpReadVariableOp(dense_154_matmul_readvariableop_resource* 
_output_shapes
:
úú*
dtype02!
dense_154/MatMul/ReadVariableOp¨
dense_154/MatMulMatMulre_lu_102/Relu:activations:0'dense_154/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_154/MatMul«
 dense_154/BiasAdd/ReadVariableOpReadVariableOp)dense_154_biasadd_readvariableop_resource*
_output_shapes	
:ú*
dtype02"
 dense_154/BiasAdd/ReadVariableOpª
dense_154/BiasAddBiasAdddense_154/MatMul:product:0(dense_154/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
dense_154/BiasAddw
re_lu_103/ReluReludense_154/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿú2
re_lu_103/Relu¬
dense_155/MatMul/ReadVariableOpReadVariableOp(dense_155_matmul_readvariableop_resource*
_output_shapes
:	ú
*
dtype02!
dense_155/MatMul/ReadVariableOp§
dense_155/MatMulMatMulre_lu_103/Relu:activations:0'dense_155/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_155/MatMulª
 dense_155/BiasAdd/ReadVariableOpReadVariableOp)dense_155_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_155/BiasAdd/ReadVariableOp©
dense_155/BiasAddBiasAdddense_155/MatMul:product:0(dense_155/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
dense_155/BiasAdd½
IdentityIdentitydense_155/BiasAdd:output:0!^dense_153/BiasAdd/ReadVariableOp ^dense_153/MatMul/ReadVariableOp!^dense_154/BiasAdd/ReadVariableOp ^dense_154/MatMul/ReadVariableOp!^dense_155/BiasAdd/ReadVariableOp ^dense_155/MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2D
 dense_153/BiasAdd/ReadVariableOp dense_153/BiasAdd/ReadVariableOp2B
dense_153/MatMul/ReadVariableOpdense_153/MatMul/ReadVariableOp2D
 dense_154/BiasAdd/ReadVariableOp dense_154/BiasAdd/ReadVariableOp2B
dense_154/MatMul/ReadVariableOpdense_154/MatMul/ReadVariableOp2D
 dense_155/BiasAdd/ReadVariableOp dense_155/BiasAdd/ReadVariableOp2B
dense_155/MatMul/ReadVariableOpdense_155/MatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Þ	
û
G__inference_dense_153_layer_call_and_return_conditional_losses_14988143

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
G__inference_re_lu_102_layer_call_and_return_conditional_losses_14988154

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
ã
c
G__inference_re_lu_103_layer_call_and_return_conditional_losses_14988177

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
ø

0__inference_sequential_51_layer_call_fn_14988349
dropout_51_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_51_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_51_layer_call_and_return_conditional_losses_149883172
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
_user_specified_namedropout_51_input
Þ	
û
G__inference_dense_153_layer_call_and_return_conditional_losses_14988553

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
¤

,__inference_dense_155_layer_call_fn_14988601

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
G__inference_dense_155_layer_call_and_return_conditional_losses_149881892
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
Æt
ý
$__inference__traced_restore_14988800
file_prefix5
!assignvariableop_dense_153_kernel:
ú0
!assignvariableop_1_dense_153_bias:	ú7
#assignvariableop_2_dense_154_kernel:
úú0
!assignvariableop_3_dense_154_bias:	ú6
#assignvariableop_4_dense_155_kernel:	ú
/
!assignvariableop_5_dense_155_bias:
*
 assignvariableop_6_adadelta_iter:	 +
!assignvariableop_7_adadelta_decay: 3
)assignvariableop_8_adadelta_learning_rate: )
assignvariableop_9_adadelta_rho: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: L
8assignvariableop_14_adadelta_dense_153_kernel_accum_grad:
úE
6assignvariableop_15_adadelta_dense_153_bias_accum_grad:	úL
8assignvariableop_16_adadelta_dense_154_kernel_accum_grad:
úúE
6assignvariableop_17_adadelta_dense_154_bias_accum_grad:	úK
8assignvariableop_18_adadelta_dense_155_kernel_accum_grad:	ú
D
6assignvariableop_19_adadelta_dense_155_bias_accum_grad:
K
7assignvariableop_20_adadelta_dense_153_kernel_accum_var:
úD
5assignvariableop_21_adadelta_dense_153_bias_accum_var:	úK
7assignvariableop_22_adadelta_dense_154_kernel_accum_var:
úúD
5assignvariableop_23_adadelta_dense_154_bias_accum_var:	úJ
7assignvariableop_24_adadelta_dense_155_kernel_accum_var:	ú
C
5assignvariableop_25_adadelta_dense_155_bias_accum_var:

identity_27¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9È
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ô
valueÊBÇB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÄ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices³
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity 
AssignVariableOpAssignVariableOp!assignvariableop_dense_153_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_153_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¨
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_154_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¦
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_154_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¨
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_155_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¦
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_155_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6¥
AssignVariableOp_6AssignVariableOp assignvariableop_6_adadelta_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¦
AssignVariableOp_7AssignVariableOp!assignvariableop_7_adadelta_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8®
AssignVariableOp_8AssignVariableOp)assignvariableop_8_adadelta_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¤
AssignVariableOp_9AssignVariableOpassignvariableop_9_adadelta_rhoIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10¡
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12£
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14À
AssignVariableOp_14AssignVariableOp8assignvariableop_14_adadelta_dense_153_kernel_accum_gradIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¾
AssignVariableOp_15AssignVariableOp6assignvariableop_15_adadelta_dense_153_bias_accum_gradIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16À
AssignVariableOp_16AssignVariableOp8assignvariableop_16_adadelta_dense_154_kernel_accum_gradIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¾
AssignVariableOp_17AssignVariableOp6assignvariableop_17_adadelta_dense_154_bias_accum_gradIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18À
AssignVariableOp_18AssignVariableOp8assignvariableop_18_adadelta_dense_155_kernel_accum_gradIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19¾
AssignVariableOp_19AssignVariableOp6assignvariableop_19_adadelta_dense_155_bias_accum_gradIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20¿
AssignVariableOp_20AssignVariableOp7assignvariableop_20_adadelta_dense_153_kernel_accum_varIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21½
AssignVariableOp_21AssignVariableOp5assignvariableop_21_adadelta_dense_153_bias_accum_varIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22¿
AssignVariableOp_22AssignVariableOp7assignvariableop_22_adadelta_dense_154_kernel_accum_varIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23½
AssignVariableOp_23AssignVariableOp5assignvariableop_23_adadelta_dense_154_bias_accum_varIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¿
AssignVariableOp_24AssignVariableOp7assignvariableop_24_adadelta_dense_155_kernel_accum_varIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25½
AssignVariableOp_25AssignVariableOp5assignvariableop_25_adadelta_dense_155_bias_accum_varIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_259
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_26
Identity_27IdentityIdentity_26:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_27"#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_25AssignVariableOp_252(
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
·
g
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988534

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
ì
µ
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988196

inputs&
dense_153_14988144:
ú!
dense_153_14988146:	ú&
dense_154_14988167:
úú!
dense_154_14988169:	ú%
dense_155_14988190:	ú
 
dense_155_14988192:

identity¢!dense_153/StatefulPartitionedCall¢!dense_154/StatefulPartitionedCall¢!dense_155/StatefulPartitionedCallÝ
dropout_51/PartitionedCallPartitionedCallinputs*
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
H__inference_dropout_51_layer_call_and_return_conditional_losses_149881312
dropout_51/PartitionedCall½
!dense_153/StatefulPartitionedCallStatefulPartitionedCall#dropout_51/PartitionedCall:output:0dense_153_14988144dense_153_14988146*
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
G__inference_dense_153_layer_call_and_return_conditional_losses_149881432#
!dense_153/StatefulPartitionedCallþ
re_lu_102/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_102_layer_call_and_return_conditional_losses_149881542
re_lu_102/PartitionedCall¼
!dense_154/StatefulPartitionedCallStatefulPartitionedCall"re_lu_102/PartitionedCall:output:0dense_154_14988167dense_154_14988169*
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
G__inference_dense_154_layer_call_and_return_conditional_losses_149881662#
!dense_154/StatefulPartitionedCallþ
re_lu_103/PartitionedCallPartitionedCall*dense_154/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_103_layer_call_and_return_conditional_losses_149881772
re_lu_103/PartitionedCall»
!dense_155/StatefulPartitionedCallStatefulPartitionedCall"re_lu_103/PartitionedCall:output:0dense_155_14988190dense_155_14988192*
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
G__inference_dense_155_layer_call_and_return_conditional_losses_149881892#
!dense_155/StatefulPartitionedCallê
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0"^dense_153/StatefulPartitionedCall"^dense_154/StatefulPartitionedCall"^dense_155/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¾
ä
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988393
dropout_51_input&
dense_153_14988375:
ú!
dense_153_14988377:	ú&
dense_154_14988381:
úú!
dense_154_14988383:	ú%
dense_155_14988387:	ú
 
dense_155_14988389:

identity¢!dense_153/StatefulPartitionedCall¢!dense_154/StatefulPartitionedCall¢!dense_155/StatefulPartitionedCall¢"dropout_51/StatefulPartitionedCallÿ
"dropout_51/StatefulPartitionedCallStatefulPartitionedCalldropout_51_input*
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
H__inference_dropout_51_layer_call_and_return_conditional_losses_149882732$
"dropout_51/StatefulPartitionedCallÅ
!dense_153/StatefulPartitionedCallStatefulPartitionedCall+dropout_51/StatefulPartitionedCall:output:0dense_153_14988375dense_153_14988377*
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
G__inference_dense_153_layer_call_and_return_conditional_losses_149881432#
!dense_153/StatefulPartitionedCallþ
re_lu_102/PartitionedCallPartitionedCall*dense_153/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_102_layer_call_and_return_conditional_losses_149881542
re_lu_102/PartitionedCall¼
!dense_154/StatefulPartitionedCallStatefulPartitionedCall"re_lu_102/PartitionedCall:output:0dense_154_14988381dense_154_14988383*
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
G__inference_dense_154_layer_call_and_return_conditional_losses_149881662#
!dense_154/StatefulPartitionedCallþ
re_lu_103/PartitionedCallPartitionedCall*dense_154/StatefulPartitionedCall:output:0*
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
G__inference_re_lu_103_layer_call_and_return_conditional_losses_149881772
re_lu_103/PartitionedCall»
!dense_155/StatefulPartitionedCallStatefulPartitionedCall"re_lu_103/PartitionedCall:output:0dense_155_14988387dense_155_14988389*
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
G__inference_dense_155_layer_call_and_return_conditional_losses_149881892#
!dense_155/StatefulPartitionedCall
IdentityIdentity*dense_155/StatefulPartitionedCall:output:0"^dense_153/StatefulPartitionedCall"^dense_154/StatefulPartitionedCall"^dense_155/StatefulPartitionedCall#^dropout_51/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿ: : : : : : 2F
!dense_153/StatefulPartitionedCall!dense_153/StatefulPartitionedCall2F
!dense_154/StatefulPartitionedCall!dense_154/StatefulPartitionedCall2F
!dense_155/StatefulPartitionedCall!dense_155/StatefulPartitionedCall2H
"dropout_51/StatefulPartitionedCall"dropout_51/StatefulPartitionedCall:Z V
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
_user_specified_namedropout_51_input
õ?

!__inference__traced_save_14988712
file_prefix/
+savev2_dense_153_kernel_read_readvariableop-
)savev2_dense_153_bias_read_readvariableop/
+savev2_dense_154_kernel_read_readvariableop-
)savev2_dense_154_bias_read_readvariableop/
+savev2_dense_155_kernel_read_readvariableop-
)savev2_dense_155_bias_read_readvariableop,
(savev2_adadelta_iter_read_readvariableop	-
)savev2_adadelta_decay_read_readvariableop5
1savev2_adadelta_learning_rate_read_readvariableop+
'savev2_adadelta_rho_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopC
?savev2_adadelta_dense_153_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_dense_153_bias_accum_grad_read_readvariableopC
?savev2_adadelta_dense_154_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_dense_154_bias_accum_grad_read_readvariableopC
?savev2_adadelta_dense_155_kernel_accum_grad_read_readvariableopA
=savev2_adadelta_dense_155_bias_accum_grad_read_readvariableopB
>savev2_adadelta_dense_153_kernel_accum_var_read_readvariableop@
<savev2_adadelta_dense_153_bias_accum_var_read_readvariableopB
>savev2_adadelta_dense_154_kernel_accum_var_read_readvariableop@
<savev2_adadelta_dense_154_bias_accum_var_read_readvariableopB
>savev2_adadelta_dense_155_kernel_accum_var_read_readvariableop@
<savev2_adadelta_dense_155_bias_accum_var_read_readvariableop
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
ShardedFilenameÂ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Ô
valueÊBÇB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB(optimizer/rho/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEB[layer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBYlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_grad/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBZlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEBXlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/accum_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names¾
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_153_kernel_read_readvariableop)savev2_dense_153_bias_read_readvariableop+savev2_dense_154_kernel_read_readvariableop)savev2_dense_154_bias_read_readvariableop+savev2_dense_155_kernel_read_readvariableop)savev2_dense_155_bias_read_readvariableop(savev2_adadelta_iter_read_readvariableop)savev2_adadelta_decay_read_readvariableop1savev2_adadelta_learning_rate_read_readvariableop'savev2_adadelta_rho_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop?savev2_adadelta_dense_153_kernel_accum_grad_read_readvariableop=savev2_adadelta_dense_153_bias_accum_grad_read_readvariableop?savev2_adadelta_dense_154_kernel_accum_grad_read_readvariableop=savev2_adadelta_dense_154_bias_accum_grad_read_readvariableop?savev2_adadelta_dense_155_kernel_accum_grad_read_readvariableop=savev2_adadelta_dense_155_bias_accum_grad_read_readvariableop>savev2_adadelta_dense_153_kernel_accum_var_read_readvariableop<savev2_adadelta_dense_153_bias_accum_var_read_readvariableop>savev2_adadelta_dense_154_kernel_accum_var_read_readvariableop<savev2_adadelta_dense_154_bias_accum_var_read_readvariableop>savev2_adadelta_dense_155_kernel_accum_var_read_readvariableop<savev2_adadelta_dense_155_bias_accum_var_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *)
dtypes
2	2
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

identity_1Identity_1:output:0*Î
_input_shapes¼
¹: :
ú:ú:
úú:ú:	ú
:
: : : : : : : : :
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
: :&"
 
_output_shapes
:
ú:!

_output_shapes	
:ú:&"
 
_output_shapes
:
úú:!

_output_shapes	
:ú:%!

_output_shapes
:	ú
: 

_output_shapes
:
:&"
 
_output_shapes
:
ú:!

_output_shapes	
:ú:&"
 
_output_shapes
:
úú:!

_output_shapes	
:ú:%!

_output_shapes
:	ú
: 

_output_shapes
:
:

_output_shapes
: 
¨

,__inference_dense_154_layer_call_fn_14988572

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
G__inference_dense_154_layer_call_and_return_conditional_losses_149881662
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
×	
ù
G__inference_dense_155_layer_call_and_return_conditional_losses_14988189

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
ã
c
G__inference_re_lu_102_layer_call_and_return_conditional_losses_14988563

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
Þ	
û
G__inference_dense_154_layer_call_and_return_conditional_losses_14988582

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
ù
f
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988131

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
Æ

&__inference_signature_wrapper_14988416
dropout_51_input
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
StatefulPartitionedCallStatefulPartitionedCalldropout_51_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_149881192
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
_user_specified_namedropout_51_input"ÌL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¿
serving_default«
N
dropout_51_input:
"serving_default_dropout_51_input:0ÿÿÿÿÿÿÿÿÿ=
	dense_1550
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿ
tensorflow/serving/predict:æÅ
Ã-
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
i__call__
*j&call_and_return_all_conditional_losses
k_default_save_signature"Ü*
_tf_keras_sequential½*{"name": "sequential_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_51", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_51_input"}}, {"class_name": "Dropout", "config": {"name": "dropout_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}}, {"class_name": "Dense", "config": {"name": "dense_153", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_102", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_154", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "ReLU", "config": {"name": "re_lu_103", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}}, {"class_name": "Dense", "config": {"name": "dense_155", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 13, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dropout_51_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_51", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dropout_51_input"}, "shared_object_id": 0}, {"class_name": "Dropout", "config": {"name": "dropout_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 1}, {"class_name": "Dense", "config": {"name": "dense_153", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4}, {"class_name": "ReLU", "config": {"name": "re_lu_102", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}, {"class_name": "Dense", "config": {"name": "dense_154", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8}, {"class_name": "ReLU", "config": {"name": "re_lu_103", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}, {"class_name": "Dense", "config": {"name": "dense_155", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12}]}}, "training_config": {"loss": "softmax_cross_entropy_with_logits_v2", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adadelta", "config": {"name": "Adadelta", "learning_rate": 2, "decay": 0.0, "rho": 0.949999988079071, "epsilon": 1e-07}}}}
ó
regularization_losses
	variables
trainable_variables
	keras_api
l__call__
*m&call_and_return_all_conditional_losses"ä
_tf_keras_layerÊ{"name": "dropout_51", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dropout", "config": {"name": "dropout_51", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "rate": 0.2, "noise_shape": null, "seed": null}, "shared_object_id": 1}
Ö

kernel
bias
regularization_losses
	variables
trainable_variables
	keras_api
n__call__
*o&call_and_return_all_conditional_losses"±
_tf_keras_layer{"name": "dense_153", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_153", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}

regularization_losses
	variables
trainable_variables
	keras_api
p__call__
*q&call_and_return_all_conditional_losses"÷
_tf_keras_layerÝ{"name": "re_lu_102", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_102", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 5}
Ö

kernel
bias
regularization_losses
	variables
trainable_variables
 	keras_api
r__call__
*s&call_and_return_all_conditional_losses"±
_tf_keras_layer{"name": "dense_154", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_154", "trainable": true, "dtype": "float32", "units": 250, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 16}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}

!regularization_losses
"	variables
#trainable_variables
$	keras_api
t__call__
*u&call_and_return_all_conditional_losses"÷
_tf_keras_layerÝ{"name": "re_lu_103", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "ReLU", "config": {"name": "re_lu_103", "trainable": true, "dtype": "float32", "max_value": null, "negative_slope": 0.0, "threshold": 0.0}, "shared_object_id": 9}
Ø

%kernel
&bias
'regularization_losses
(	variables
)trainable_variables
*	keras_api
v__call__
*w&call_and_return_all_conditional_losses"³
_tf_keras_layer{"name": "dense_155", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_155", "trainable": true, "dtype": "float32", "units": 10, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}

+iter
	,decay
-learning_rate
.rho
accum_grad]
accum_grad^
accum_grad_
accum_grad`%
accum_grada&
accum_gradb	accum_varc	accum_vard	accum_vare	accum_varf%	accum_varg&	accum_varh"
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
/layer_metrics
0layer_regularization_losses
		variables
1non_trainable_variables

trainable_variables
2metrics

3layers
i__call__
k_default_save_signature
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
,
xserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
regularization_losses
4layer_metrics
5layer_regularization_losses
	variables
6non_trainable_variables
trainable_variables
7metrics

8layers
l__call__
*m&call_and_return_all_conditional_losses
&m"call_and_return_conditional_losses"
_generic_user_object
$:"
ú2dense_153/kernel
:ú2dense_153/bias
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
9layer_metrics
:layer_regularization_losses
	variables
;non_trainable_variables
trainable_variables
<metrics

=layers
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
regularization_losses
>layer_metrics
?layer_regularization_losses
	variables
@non_trainable_variables
trainable_variables
Ametrics

Blayers
p__call__
*q&call_and_return_all_conditional_losses
&q"call_and_return_conditional_losses"
_generic_user_object
$:"
úú2dense_154/kernel
:ú2dense_154/bias
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
Clayer_metrics
Dlayer_regularization_losses
	variables
Enon_trainable_variables
trainable_variables
Fmetrics

Glayers
r__call__
*s&call_and_return_all_conditional_losses
&s"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
!regularization_losses
Hlayer_metrics
Ilayer_regularization_losses
"	variables
Jnon_trainable_variables
#trainable_variables
Kmetrics

Llayers
t__call__
*u&call_and_return_all_conditional_losses
&u"call_and_return_conditional_losses"
_generic_user_object
#:!	ú
2dense_155/kernel
:
2dense_155/bias
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
Mlayer_metrics
Nlayer_regularization_losses
(	variables
Onon_trainable_variables
)trainable_variables
Pmetrics

Qlayers
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
:	 (2Adadelta/iter
: (2Adadelta/decay
 : (2Adadelta/learning_rate
: (2Adadelta/rho
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
R0
S1"
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
	Ttotal
	Ucount
V	variables
W	keras_api"
_tf_keras_metric{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 18}

	Xtotal
	Ycount
Z
_fn_kwargs
[	variables
\	keras_api"Ð
_tf_keras_metricµ{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 14}
:  (2total
:  (2count
.
T0
U1"
trackable_list_wrapper
-
V	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
X0
Y1"
trackable_list_wrapper
-
[	variables"
_generic_user_object
6:4
ú2$Adadelta/dense_153/kernel/accum_grad
/:-ú2"Adadelta/dense_153/bias/accum_grad
6:4
úú2$Adadelta/dense_154/kernel/accum_grad
/:-ú2"Adadelta/dense_154/bias/accum_grad
5:3	ú
2$Adadelta/dense_155/kernel/accum_grad
.:,
2"Adadelta/dense_155/bias/accum_grad
5:3
ú2#Adadelta/dense_153/kernel/accum_var
.:,ú2!Adadelta/dense_153/bias/accum_var
5:3
úú2#Adadelta/dense_154/kernel/accum_var
.:,ú2!Adadelta/dense_154/bias/accum_var
4:2	ú
2#Adadelta/dense_155/kernel/accum_var
-:+
2!Adadelta/dense_155/bias/accum_var
2
0__inference_sequential_51_layer_call_fn_14988211
0__inference_sequential_51_layer_call_fn_14988433
0__inference_sequential_51_layer_call_fn_14988450
0__inference_sequential_51_layer_call_fn_14988349À
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
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988475
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988507
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988371
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988393À
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
#__inference__wrapped_model_14988119À
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
dropout_51_inputÿÿÿÿÿÿÿÿÿ
2
-__inference_dropout_51_layer_call_fn_14988512
-__inference_dropout_51_layer_call_fn_14988517´
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
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988522
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988534´
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
,__inference_dense_153_layer_call_fn_14988543¢
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
G__inference_dense_153_layer_call_and_return_conditional_losses_14988553¢
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
,__inference_re_lu_102_layer_call_fn_14988558¢
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
G__inference_re_lu_102_layer_call_and_return_conditional_losses_14988563¢
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
,__inference_dense_154_layer_call_fn_14988572¢
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
G__inference_dense_154_layer_call_and_return_conditional_losses_14988582¢
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
,__inference_re_lu_103_layer_call_fn_14988587¢
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
G__inference_re_lu_103_layer_call_and_return_conditional_losses_14988592¢
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
,__inference_dense_155_layer_call_fn_14988601¢
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
G__inference_dense_155_layer_call_and_return_conditional_losses_14988611¢
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
&__inference_signature_wrapper_14988416dropout_51_input"
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
#__inference__wrapped_model_14988119{%&:¢7
0¢-
+(
dropout_51_inputÿÿÿÿÿÿÿÿÿ
ª "5ª2
0
	dense_155# 
	dense_155ÿÿÿÿÿÿÿÿÿ
©
G__inference_dense_153_layer_call_and_return_conditional_losses_14988553^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 
,__inference_dense_153_layer_call_fn_14988543Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿú©
G__inference_dense_154_layer_call_and_return_conditional_losses_14988582^0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 
,__inference_dense_154_layer_call_fn_14988572Q0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿú¨
G__inference_dense_155_layer_call_and_return_conditional_losses_14988611]%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 
,__inference_dense_155_layer_call_fn_14988601P%&0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿ
ª
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988522^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ª
H__inference_dropout_51_layer_call_and_return_conditional_losses_14988534^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_dropout_51_layer_call_fn_14988512Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_dropout_51_layer_call_fn_14988517Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¥
G__inference_re_lu_102_layer_call_and_return_conditional_losses_14988563Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 }
,__inference_re_lu_102_layer_call_fn_14988558M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿú¥
G__inference_re_lu_103_layer_call_and_return_conditional_losses_14988592Z0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "&¢#

0ÿÿÿÿÿÿÿÿÿú
 }
,__inference_re_lu_103_layer_call_fn_14988587M0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿú
ª "ÿÿÿÿÿÿÿÿÿúÂ
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988371s%&B¢?
8¢5
+(
dropout_51_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 Â
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988393s%&B¢?
8¢5
+(
dropout_51_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ

 ¸
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988475i%&8¢5
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
K__inference_sequential_51_layer_call_and_return_conditional_losses_14988507i%&8¢5
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
0__inference_sequential_51_layer_call_fn_14988211f%&B¢?
8¢5
+(
dropout_51_inputÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_51_layer_call_fn_14988349f%&B¢?
8¢5
+(
dropout_51_inputÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_51_layer_call_fn_14988433\%&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ

0__inference_sequential_51_layer_call_fn_14988450\%&8¢5
.¢+
!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
º
&__inference_signature_wrapper_14988416%&N¢K
¢ 
DªA
?
dropout_51_input+(
dropout_51_inputÿÿÿÿÿÿÿÿÿ"5ª2
0
	dense_155# 
	dense_155ÿÿÿÿÿÿÿÿÿ
