??
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
|
dense_99/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??* 
shared_namedense_99/kernel
u
#dense_99/kernel/Read/ReadVariableOpReadVariableOpdense_99/kernel* 
_output_shapes
:
??*
dtype0
s
dense_99/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_99/bias
l
!dense_99/bias/Read/ReadVariableOpReadVariableOpdense_99/bias*
_output_shapes	
:?*
dtype0
~
dense_100/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*!
shared_namedense_100/kernel
w
$dense_100/kernel/Read/ReadVariableOpReadVariableOpdense_100/kernel* 
_output_shapes
:
??*
dtype0
u
dense_100/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_100/bias
n
"dense_100/bias/Read/ReadVariableOpReadVariableOpdense_100/bias*
_output_shapes	
:?*
dtype0
}
dense_101/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?
*!
shared_namedense_101/kernel
v
$dense_101/kernel/Read/ReadVariableOpReadVariableOpdense_101/kernel*
_output_shapes
:	?
*
dtype0
t
dense_101/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_101/bias
m
"dense_101/bias/Read/ReadVariableOpReadVariableOpdense_101/bias*
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
?
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
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
6
iter
	decay
learning_rate
momentum
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
 layer_metrics
!layer_regularization_losses
"metrics
trainable_variables
	variables
regularization_losses

#layers
$non_trainable_variables
 
[Y
VARIABLE_VALUEdense_99/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_99/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
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
%layer_metrics
&layer_regularization_losses
'metrics
trainable_variables
	variables
regularization_losses

(layers
)non_trainable_variables
\Z
VARIABLE_VALUEdense_100/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_100/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
*layer_metrics
+layer_regularization_losses
,metrics
trainable_variables
	variables
regularization_losses

-layers
.non_trainable_variables
\Z
VARIABLE_VALUEdense_101/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
XV
VARIABLE_VALUEdense_101/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1

0
1
 
?
/layer_metrics
0layer_regularization_losses
1metrics
trainable_variables
	variables
regularization_losses

2layers
3non_trainable_variables
GE
VARIABLE_VALUESGD/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
IG
VARIABLE_VALUE	SGD/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUESGD/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUESGD/momentum-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUE
 
 

40
51
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
	6total
	7count
8	variables
9	keras_api
D
	:total
	;count
<
_fn_kwargs
=	variables
>	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

60
71

8	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

:0
;1

=	variables
?
serving_default_dense_99_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_99_inputdense_99/kerneldense_99/biasdense_100/kerneldense_100/biasdense_101/kerneldense_101/bias*
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
&__inference_signature_wrapper_12393559
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_99/kernel/Read/ReadVariableOp!dense_99/bias/Read/ReadVariableOp$dense_100/kernel/Read/ReadVariableOp"dense_100/bias/Read/ReadVariableOp$dense_101/kernel/Read/ReadVariableOp"dense_101/bias/Read/ReadVariableOpSGD/iter/Read/ReadVariableOpSGD/decay/Read/ReadVariableOp%SGD/learning_rate/Read/ReadVariableOp SGD/momentum/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOpConst*
Tin
2	*
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
!__inference__traced_save_12393768
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_99/kerneldense_99/biasdense_100/kerneldense_100/biasdense_101/kerneldense_101/biasSGD/iter	SGD/decaySGD/learning_rateSGD/momentumtotalcounttotal_1count_1*
Tin
2*
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
$__inference__traced_restore_12393820??
?
?
0__inference_sequential_33_layer_call_fn_12393498
dense_99_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_33_layer_call_and_return_conditional_losses_123934662
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
StatefulPartitionedCallStatefulPartitionedCall:X T
(
_output_shapes
:??????????
(
_user_specified_namedense_99_input
?
?
+__inference_dense_99_layer_call_fn_12393663

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
F__inference_dense_99_layer_call_and_return_conditional_losses_123933422
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
?

?
G__inference_dense_101_layer_call_and_return_conditional_losses_12393694

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
0__inference_sequential_33_layer_call_fn_12393643

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
K__inference_sequential_33_layer_call_and_return_conditional_losses_123934662
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
?
#__inference__wrapped_model_12393324
dense_99_inputI
5sequential_33_dense_99_matmul_readvariableop_resource:
??E
6sequential_33_dense_99_biasadd_readvariableop_resource:	?J
6sequential_33_dense_100_matmul_readvariableop_resource:
??F
7sequential_33_dense_100_biasadd_readvariableop_resource:	?I
6sequential_33_dense_101_matmul_readvariableop_resource:	?
E
7sequential_33_dense_101_biasadd_readvariableop_resource:

identity??.sequential_33/dense_100/BiasAdd/ReadVariableOp?-sequential_33/dense_100/MatMul/ReadVariableOp?.sequential_33/dense_101/BiasAdd/ReadVariableOp?-sequential_33/dense_101/MatMul/ReadVariableOp?-sequential_33/dense_99/BiasAdd/ReadVariableOp?,sequential_33/dense_99/MatMul/ReadVariableOp?
,sequential_33/dense_99/MatMul/ReadVariableOpReadVariableOp5sequential_33_dense_99_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02.
,sequential_33/dense_99/MatMul/ReadVariableOp?
sequential_33/dense_99/MatMulMatMuldense_99_input4sequential_33/dense_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
sequential_33/dense_99/MatMul?
-sequential_33/dense_99/BiasAdd/ReadVariableOpReadVariableOp6sequential_33_dense_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02/
-sequential_33/dense_99/BiasAdd/ReadVariableOp?
sequential_33/dense_99/BiasAddBiasAdd'sequential_33/dense_99/MatMul:product:05sequential_33/dense_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_33/dense_99/BiasAdd?
sequential_33/dense_99/SigmoidSigmoid'sequential_33/dense_99/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2 
sequential_33/dense_99/Sigmoid?
-sequential_33/dense_100/MatMul/ReadVariableOpReadVariableOp6sequential_33_dense_100_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02/
-sequential_33/dense_100/MatMul/ReadVariableOp?
sequential_33/dense_100/MatMulMatMul"sequential_33/dense_99/Sigmoid:y:05sequential_33/dense_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2 
sequential_33/dense_100/MatMul?
.sequential_33/dense_100/BiasAdd/ReadVariableOpReadVariableOp7sequential_33_dense_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype020
.sequential_33/dense_100/BiasAdd/ReadVariableOp?
sequential_33/dense_100/BiasAddBiasAdd(sequential_33/dense_100/MatMul:product:06sequential_33/dense_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2!
sequential_33/dense_100/BiasAdd?
sequential_33/dense_100/SigmoidSigmoid(sequential_33/dense_100/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2!
sequential_33/dense_100/Sigmoid?
-sequential_33/dense_101/MatMul/ReadVariableOpReadVariableOp6sequential_33_dense_101_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02/
-sequential_33/dense_101/MatMul/ReadVariableOp?
sequential_33/dense_101/MatMulMatMul#sequential_33/dense_100/Sigmoid:y:05sequential_33/dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2 
sequential_33/dense_101/MatMul?
.sequential_33/dense_101/BiasAdd/ReadVariableOpReadVariableOp7sequential_33_dense_101_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype020
.sequential_33/dense_101/BiasAdd/ReadVariableOp?
sequential_33/dense_101/BiasAddBiasAdd(sequential_33/dense_101/MatMul:product:06sequential_33/dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2!
sequential_33/dense_101/BiasAdd?
sequential_33/dense_101/SigmoidSigmoid(sequential_33/dense_101/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2!
sequential_33/dense_101/Sigmoid?
IdentityIdentity#sequential_33/dense_101/Sigmoid:y:0/^sequential_33/dense_100/BiasAdd/ReadVariableOp.^sequential_33/dense_100/MatMul/ReadVariableOp/^sequential_33/dense_101/BiasAdd/ReadVariableOp.^sequential_33/dense_101/MatMul/ReadVariableOp.^sequential_33/dense_99/BiasAdd/ReadVariableOp-^sequential_33/dense_99/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2`
.sequential_33/dense_100/BiasAdd/ReadVariableOp.sequential_33/dense_100/BiasAdd/ReadVariableOp2^
-sequential_33/dense_100/MatMul/ReadVariableOp-sequential_33/dense_100/MatMul/ReadVariableOp2`
.sequential_33/dense_101/BiasAdd/ReadVariableOp.sequential_33/dense_101/BiasAdd/ReadVariableOp2^
-sequential_33/dense_101/MatMul/ReadVariableOp-sequential_33/dense_101/MatMul/ReadVariableOp2^
-sequential_33/dense_99/BiasAdd/ReadVariableOp-sequential_33/dense_99/BiasAdd/ReadVariableOp2\
,sequential_33/dense_99/MatMul/ReadVariableOp,sequential_33/dense_99/MatMul/ReadVariableOp:X T
(
_output_shapes
:??????????
(
_user_specified_namedense_99_input
?
?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393536
dense_99_input%
dense_99_12393520:
?? 
dense_99_12393522:	?&
dense_100_12393525:
??!
dense_100_12393527:	?%
dense_101_12393530:	?
 
dense_101_12393532:

identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall? dense_99/StatefulPartitionedCall?
 dense_99/StatefulPartitionedCallStatefulPartitionedCalldense_99_inputdense_99_12393520dense_99_12393522*
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
F__inference_dense_99_layer_call_and_return_conditional_losses_123933422"
 dense_99/StatefulPartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_12393525dense_100_12393527*
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
G__inference_dense_100_layer_call_and_return_conditional_losses_123933592#
!dense_100/StatefulPartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_12393530dense_101_12393532*
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
G__inference_dense_101_layer_call_and_return_conditional_losses_123933762#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_99/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:X T
(
_output_shapes
:??????????
(
_user_specified_namedense_99_input
?
?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393383

inputs%
dense_99_12393343:
?? 
dense_99_12393345:	?&
dense_100_12393360:
??!
dense_100_12393362:	?%
dense_101_12393377:	?
 
dense_101_12393379:

identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall? dense_99/StatefulPartitionedCall?
 dense_99/StatefulPartitionedCallStatefulPartitionedCallinputsdense_99_12393343dense_99_12393345*
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
F__inference_dense_99_layer_call_and_return_conditional_losses_123933422"
 dense_99/StatefulPartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_12393360dense_100_12393362*
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
G__inference_dense_100_layer_call_and_return_conditional_losses_123933592#
!dense_100/StatefulPartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_12393377dense_101_12393379*
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
G__inference_dense_101_layer_call_and_return_conditional_losses_123933762#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_99/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
,__inference_dense_100_layer_call_fn_12393683

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
G__inference_dense_100_layer_call_and_return_conditional_losses_123933592
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
?
?
0__inference_sequential_33_layer_call_fn_12393626

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
K__inference_sequential_33_layer_call_and_return_conditional_losses_123933832
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

?
G__inference_dense_100_layer_call_and_return_conditional_losses_12393359

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
?

?
G__inference_dense_100_layer_call_and_return_conditional_losses_12393674

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
?

?
G__inference_dense_101_layer_call_and_return_conditional_losses_12393376

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
?
?
,__inference_dense_101_layer_call_fn_12393703

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
G__inference_dense_101_layer_call_and_return_conditional_losses_123933762
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
F__inference_dense_99_layer_call_and_return_conditional_losses_12393654

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
?&
?
!__inference__traced_save_12393768
file_prefix.
*savev2_dense_99_kernel_read_readvariableop,
(savev2_dense_99_bias_read_readvariableop/
+savev2_dense_100_kernel_read_readvariableop-
)savev2_dense_100_bias_read_readvariableop/
+savev2_dense_101_kernel_read_readvariableop-
)savev2_dense_101_bias_read_readvariableop'
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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_99_kernel_read_readvariableop(savev2_dense_99_bias_read_readvariableop+savev2_dense_100_kernel_read_readvariableop)savev2_dense_100_bias_read_readvariableop+savev2_dense_101_kernel_read_readvariableop)savev2_dense_101_bias_read_readvariableop#savev2_sgd_iter_read_readvariableop$savev2_sgd_decay_read_readvariableop,savev2_sgd_learning_rate_read_readvariableop'savev2_sgd_momentum_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2	2
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

identity_1Identity_1:output:0*^
_input_shapesM
K: :
??:?:
??:?:	?
:
: : : : : : : : : 2(
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
: 
?
?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393466

inputs%
dense_99_12393450:
?? 
dense_99_12393452:	?&
dense_100_12393455:
??!
dense_100_12393457:	?%
dense_101_12393460:	?
 
dense_101_12393462:

identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall? dense_99/StatefulPartitionedCall?
 dense_99/StatefulPartitionedCallStatefulPartitionedCallinputsdense_99_12393450dense_99_12393452*
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
F__inference_dense_99_layer_call_and_return_conditional_losses_123933422"
 dense_99/StatefulPartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_12393455dense_100_12393457*
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
G__inference_dense_100_layer_call_and_return_conditional_losses_123933592#
!dense_100/StatefulPartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_12393460dense_101_12393462*
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
G__inference_dense_101_layer_call_and_return_conditional_losses_123933762#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_99/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_signature_wrapper_12393559
dense_99_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
#__inference__wrapped_model_123933242
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
StatefulPartitionedCallStatefulPartitionedCall:X T
(
_output_shapes
:??????????
(
_user_specified_namedense_99_input
?=
?
$__inference__traced_restore_12393820
file_prefix4
 assignvariableop_dense_99_kernel:
??/
 assignvariableop_1_dense_99_bias:	?7
#assignvariableop_2_dense_100_kernel:
??0
!assignvariableop_3_dense_100_bias:	?6
#assignvariableop_4_dense_101_kernel:	?
/
!assignvariableop_5_dense_101_bias:
%
assignvariableop_6_sgd_iter:	 &
assignvariableop_7_sgd_decay: .
$assignvariableop_8_sgd_learning_rate: )
assignvariableop_9_sgd_momentum: #
assignvariableop_10_total: #
assignvariableop_11_count: %
assignvariableop_12_total_1: %
assignvariableop_13_count_1: 
identity_15??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB-optimizer/momentum/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*1
value(B&B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*P
_output_shapes>
<:::::::::::::::*
dtypes
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp assignvariableop_dense_99_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_99_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_100_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_100_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_101_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_101_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_sgd_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_sgd_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOp$assignvariableop_8_sgd_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_sgd_momentumIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_totalIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_countIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_total_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_count_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_139
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_14Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_14?
Identity_15IdentityIdentity_14:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_15"#
identity_15Identity_15:output:0*1
_input_shapes 
: : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132(
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
?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393584

inputs;
'dense_99_matmul_readvariableop_resource:
??7
(dense_99_biasadd_readvariableop_resource:	?<
(dense_100_matmul_readvariableop_resource:
??8
)dense_100_biasadd_readvariableop_resource:	?;
(dense_101_matmul_readvariableop_resource:	?
7
)dense_101_biasadd_readvariableop_resource:

identity?? dense_100/BiasAdd/ReadVariableOp?dense_100/MatMul/ReadVariableOp? dense_101/BiasAdd/ReadVariableOp?dense_101/MatMul/ReadVariableOp?dense_99/BiasAdd/ReadVariableOp?dense_99/MatMul/ReadVariableOp?
dense_99/MatMul/ReadVariableOpReadVariableOp'dense_99_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_99/MatMul/ReadVariableOp?
dense_99/MatMulMatMulinputs&dense_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_99/MatMul?
dense_99/BiasAdd/ReadVariableOpReadVariableOp(dense_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_99/BiasAdd/ReadVariableOp?
dense_99/BiasAddBiasAdddense_99/MatMul:product:0'dense_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_99/BiasAdd}
dense_99/SigmoidSigmoiddense_99/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_99/Sigmoid?
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_100/MatMul/ReadVariableOp?
dense_100/MatMulMatMuldense_99/Sigmoid:y:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_100/MatMul?
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_100/BiasAdd/ReadVariableOp?
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_100/BiasAdd?
dense_100/SigmoidSigmoiddense_100/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_100/Sigmoid?
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_101/MatMul/ReadVariableOp?
dense_101/MatMulMatMuldense_100/Sigmoid:y:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_101/MatMul?
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_101/BiasAdd/ReadVariableOp?
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_101/BiasAdd
dense_101/SigmoidSigmoiddense_101/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_101/Sigmoid?
IdentityIdentitydense_101/Sigmoid:y:0!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp ^dense_99/BiasAdd/ReadVariableOp^dense_99/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2B
dense_99/BiasAdd/ReadVariableOpdense_99/BiasAdd/ReadVariableOp2@
dense_99/MatMul/ReadVariableOpdense_99/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
F__inference_dense_99_layer_call_and_return_conditional_losses_12393342

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
?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393609

inputs;
'dense_99_matmul_readvariableop_resource:
??7
(dense_99_biasadd_readvariableop_resource:	?<
(dense_100_matmul_readvariableop_resource:
??8
)dense_100_biasadd_readvariableop_resource:	?;
(dense_101_matmul_readvariableop_resource:	?
7
)dense_101_biasadd_readvariableop_resource:

identity?? dense_100/BiasAdd/ReadVariableOp?dense_100/MatMul/ReadVariableOp? dense_101/BiasAdd/ReadVariableOp?dense_101/MatMul/ReadVariableOp?dense_99/BiasAdd/ReadVariableOp?dense_99/MatMul/ReadVariableOp?
dense_99/MatMul/ReadVariableOpReadVariableOp'dense_99_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense_99/MatMul/ReadVariableOp?
dense_99/MatMulMatMulinputs&dense_99/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_99/MatMul?
dense_99/BiasAdd/ReadVariableOpReadVariableOp(dense_99_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02!
dense_99/BiasAdd/ReadVariableOp?
dense_99/BiasAddBiasAdddense_99/MatMul:product:0'dense_99/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_99/BiasAdd}
dense_99/SigmoidSigmoiddense_99/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_99/Sigmoid?
dense_100/MatMul/ReadVariableOpReadVariableOp(dense_100_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02!
dense_100/MatMul/ReadVariableOp?
dense_100/MatMulMatMuldense_99/Sigmoid:y:0'dense_100/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_100/MatMul?
 dense_100/BiasAdd/ReadVariableOpReadVariableOp)dense_100_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02"
 dense_100/BiasAdd/ReadVariableOp?
dense_100/BiasAddBiasAdddense_100/MatMul:product:0(dense_100/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_100/BiasAdd?
dense_100/SigmoidSigmoiddense_100/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
dense_100/Sigmoid?
dense_101/MatMul/ReadVariableOpReadVariableOp(dense_101_matmul_readvariableop_resource*
_output_shapes
:	?
*
dtype02!
dense_101/MatMul/ReadVariableOp?
dense_101/MatMulMatMuldense_100/Sigmoid:y:0'dense_101/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_101/MatMul?
 dense_101/BiasAdd/ReadVariableOpReadVariableOp)dense_101_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype02"
 dense_101/BiasAdd/ReadVariableOp?
dense_101/BiasAddBiasAdddense_101/MatMul:product:0(dense_101/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
2
dense_101/BiasAdd
dense_101/SigmoidSigmoiddense_101/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
2
dense_101/Sigmoid?
IdentityIdentitydense_101/Sigmoid:y:0!^dense_100/BiasAdd/ReadVariableOp ^dense_100/MatMul/ReadVariableOp!^dense_101/BiasAdd/ReadVariableOp ^dense_101/MatMul/ReadVariableOp ^dense_99/BiasAdd/ReadVariableOp^dense_99/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2D
 dense_100/BiasAdd/ReadVariableOp dense_100/BiasAdd/ReadVariableOp2B
dense_100/MatMul/ReadVariableOpdense_100/MatMul/ReadVariableOp2D
 dense_101/BiasAdd/ReadVariableOp dense_101/BiasAdd/ReadVariableOp2B
dense_101/MatMul/ReadVariableOpdense_101/MatMul/ReadVariableOp2B
dense_99/BiasAdd/ReadVariableOpdense_99/BiasAdd/ReadVariableOp2@
dense_99/MatMul/ReadVariableOpdense_99/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
0__inference_sequential_33_layer_call_fn_12393398
dense_99_input
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
StatefulPartitionedCallStatefulPartitionedCalldense_99_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
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
K__inference_sequential_33_layer_call_and_return_conditional_losses_123933832
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
StatefulPartitionedCallStatefulPartitionedCall:X T
(
_output_shapes
:??????????
(
_user_specified_namedense_99_input
?
?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393517
dense_99_input%
dense_99_12393501:
?? 
dense_99_12393503:	?&
dense_100_12393506:
??!
dense_100_12393508:	?%
dense_101_12393511:	?
 
dense_101_12393513:

identity??!dense_100/StatefulPartitionedCall?!dense_101/StatefulPartitionedCall? dense_99/StatefulPartitionedCall?
 dense_99/StatefulPartitionedCallStatefulPartitionedCalldense_99_inputdense_99_12393501dense_99_12393503*
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
F__inference_dense_99_layer_call_and_return_conditional_losses_123933422"
 dense_99/StatefulPartitionedCall?
!dense_100/StatefulPartitionedCallStatefulPartitionedCall)dense_99/StatefulPartitionedCall:output:0dense_100_12393506dense_100_12393508*
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
G__inference_dense_100_layer_call_and_return_conditional_losses_123933592#
!dense_100/StatefulPartitionedCall?
!dense_101/StatefulPartitionedCallStatefulPartitionedCall*dense_100/StatefulPartitionedCall:output:0dense_101_12393511dense_101_12393513*
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
G__inference_dense_101_layer_call_and_return_conditional_losses_123933762#
!dense_101/StatefulPartitionedCall?
IdentityIdentity*dense_101/StatefulPartitionedCall:output:0"^dense_100/StatefulPartitionedCall"^dense_101/StatefulPartitionedCall!^dense_99/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????
2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : : : 2F
!dense_100/StatefulPartitionedCall!dense_100/StatefulPartitionedCall2F
!dense_101/StatefulPartitionedCall!dense_101/StatefulPartitionedCall2D
 dense_99/StatefulPartitionedCall dense_99/StatefulPartitionedCall:X T
(
_output_shapes
:??????????
(
_user_specified_namedense_99_input"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
J
dense_99_input8
 serving_default_dense_99_input:0??????????=
	dense_1010
StatefulPartitionedCall:0?????????
tensorflow/serving/predict:??
?&
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
*?&call_and_return_all_conditional_losses
@_default_save_signature
A__call__"?$
_tf_keras_sequential?#{"name": "sequential_33", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Sequential", "config": {"name": "sequential_33", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_99_input"}}, {"class_name": "Dense", "config": {"name": "dense_99", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_100", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}, {"class_name": "Dense", "config": {"name": "dense_101", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 784]}, "float32", "dense_99_input"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_33", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "dense_99_input"}, "shared_object_id": 0}, {"class_name": "Dense", "config": {"name": "dense_99", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3}, {"class_name": "Dense", "config": {"name": "dense_100", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6}, {"class_name": "Dense", "config": {"name": "dense_101", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "SGD", "config": {"name": "SGD", "learning_rate": 1.0, "decay": 0.0, "momentum": 0.0, "nesterov": false}}}}
?	


kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*B&call_and_return_all_conditional_losses
C__call__"?
_tf_keras_layer?{"name": "dense_99", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_99", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 784]}, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 1}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 2}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 3, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 784}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 784]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*D&call_and_return_all_conditional_losses
E__call__"?
_tf_keras_layer?{"name": "dense_100", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_100", "trainable": true, "dtype": "float32", "units": 250, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 4}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 5}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 6, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
?

kernel
bias
trainable_variables
	variables
regularization_losses
	keras_api
*F&call_and_return_all_conditional_losses
G__call__"?
_tf_keras_layer?{"name": "dense_101", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_101", "trainable": true, "dtype": "float32", "units": 10, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 7}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 8}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 250}}, "shared_object_id": 14}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 250]}}
I
iter
	decay
learning_rate
momentum"
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
 layer_metrics
!layer_regularization_losses
"metrics
trainable_variables
	variables
regularization_losses

#layers
$non_trainable_variables
A__call__
@_default_save_signature
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
,
Hserving_default"
signature_map
#:!
??2dense_99/kernel
:?2dense_99/bias
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
%layer_metrics
&layer_regularization_losses
'metrics
trainable_variables
	variables
regularization_losses

(layers
)non_trainable_variables
C__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
$:"
??2dense_100/kernel
:?2dense_100/bias
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
*layer_metrics
+layer_regularization_losses
,metrics
trainable_variables
	variables
regularization_losses

-layers
.non_trainable_variables
E__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
#:!	?
2dense_101/kernel
:
2dense_101/bias
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
/layer_metrics
0layer_regularization_losses
1metrics
trainable_variables
	variables
regularization_losses

2layers
3non_trainable_variables
G__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
:	 (2SGD/iter
: (2	SGD/decay
: (2SGD/learning_rate
: (2SGD/momentum
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
40
51"
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
	6total
	7count
8	variables
9	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 15}
?
	:total
	;count
<
_fn_kwargs
=	variables
>	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 12}
:  (2total
:  (2count
.
60
71"
trackable_list_wrapper
-
8	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
:0
;1"
trackable_list_wrapper
-
=	variables"
_generic_user_object
?2?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393584
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393609
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393517
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393536?
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
#__inference__wrapped_model_12393324?
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
annotations? *.?+
)?&
dense_99_input??????????
?2?
0__inference_sequential_33_layer_call_fn_12393398
0__inference_sequential_33_layer_call_fn_12393626
0__inference_sequential_33_layer_call_fn_12393643
0__inference_sequential_33_layer_call_fn_12393498?
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
F__inference_dense_99_layer_call_and_return_conditional_losses_12393654?
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
+__inference_dense_99_layer_call_fn_12393663?
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
G__inference_dense_100_layer_call_and_return_conditional_losses_12393674?
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
,__inference_dense_100_layer_call_fn_12393683?
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
G__inference_dense_101_layer_call_and_return_conditional_losses_12393694?
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
,__inference_dense_101_layer_call_fn_12393703?
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
&__inference_signature_wrapper_12393559dense_99_input"?
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
#__inference__wrapped_model_12393324y
8?5
.?+
)?&
dense_99_input??????????
? "5?2
0
	dense_101#? 
	dense_101?????????
?
G__inference_dense_100_layer_call_and_return_conditional_losses_12393674^0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
,__inference_dense_100_layer_call_fn_12393683Q0?-
&?#
!?
inputs??????????
? "????????????
G__inference_dense_101_layer_call_and_return_conditional_losses_12393694]0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????

? ?
,__inference_dense_101_layer_call_fn_12393703P0?-
&?#
!?
inputs??????????
? "??????????
?
F__inference_dense_99_layer_call_and_return_conditional_losses_12393654^
0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????
? ?
+__inference_dense_99_layer_call_fn_12393663Q
0?-
&?#
!?
inputs??????????
? "????????????
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393517q
@?=
6?3
)?&
dense_99_input??????????
p 

 
? "%?"
?
0?????????

? ?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393536q
@?=
6?3
)?&
dense_99_input??????????
p

 
? "%?"
?
0?????????

? ?
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393584i
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
K__inference_sequential_33_layer_call_and_return_conditional_losses_12393609i
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
0__inference_sequential_33_layer_call_fn_12393398d
@?=
6?3
)?&
dense_99_input??????????
p 

 
? "??????????
?
0__inference_sequential_33_layer_call_fn_12393498d
@?=
6?3
)?&
dense_99_input??????????
p

 
? "??????????
?
0__inference_sequential_33_layer_call_fn_12393626\
8?5
.?+
!?
inputs??????????
p 

 
? "??????????
?
0__inference_sequential_33_layer_call_fn_12393643\
8?5
.?+
!?
inputs??????????
p

 
? "??????????
?
&__inference_signature_wrapper_12393559?
J?G
? 
@?=
;
dense_99_input)?&
dense_99_input??????????"5?2
0
	dense_101#? 
	dense_101?????????
