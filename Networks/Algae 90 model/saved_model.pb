??
??
?
ArgMax

input"T
	dimension"Tidx
output"output_type"!
Ttype:
2	
"
Tidxtype0:
2	"
output_typetype0	:
2	
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
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
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
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
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
0
Sigmoid
x"T
y"T"
Ttype:

2
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
 ?"serve*2.5.02v2.5.0-rc3-213-ga4dfb8d1a718??
o

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	5664554*
value_dtype0
?
Htraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Y
shared_nameJHtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernel
?
\training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernel/Read/ReadVariableOpReadVariableOpHtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernel*&
_output_shapes
:*
dtype0
?
Ftraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/bias
?
Ztraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/bias/Read/ReadVariableOpReadVariableOpFtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/bias*
_output_shapes
:*
dtype0
?
Jtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*[
shared_nameLJtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernel
?
^training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpJtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernel*&
_output_shapes
:*
dtype0
?
Htraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Y
shared_nameJHtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias
?
\training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias/Read/ReadVariableOpReadVariableOpHtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias*
_output_shapes
:*
dtype0
?
?training_model_1/deep_learning_fc__dense_1_keras_7/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*P
shared_nameA?training_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel
?
Straining_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel/Read/ReadVariableOpReadVariableOp?training_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel* 
_output_shapes
:
??*
dtype0
?
=training_model_1/deep_learning_fc__dense_1_keras_7/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*N
shared_name?=training_model_1/deep_learning_fc__dense_1_keras_7/dense/bias
?
Qtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/bias/Read/ReadVariableOpReadVariableOp=training_model_1/deep_learning_fc__dense_1_keras_7/dense/bias*
_output_shapes	
:?*
dtype0
?
Atraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*R
shared_nameCAtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel
?
Utraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel/Read/ReadVariableOpReadVariableOpAtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel* 
_output_shapes
:
??*
dtype0
?
?training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/bias
?
Straining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/bias/Read/ReadVariableOpReadVariableOp?training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/bias*
_output_shapes	
:?*
dtype0
?
Btraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*S
shared_nameDBtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel
?
Vtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel/Read/ReadVariableOpReadVariableOpBtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel*
_output_shapes
:	?*
dtype0
?
@training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*Q
shared_nameB@training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias
?
Ttraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias/Read/ReadVariableOpReadVariableOp@training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias*
_output_shapes
:*
dtype0
O
ConstConst*
_output_shapes
: *
dtype0*
valueB B	<unknown>
`
Const_1Const*
_output_shapes
:*
dtype0*%
valueB"             
k
Const_2Const*
_output_shapes
:*
dtype0*0
value'B%BalgaeBcontrolBcystBspore
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_1Const_2*
Tin
2*
Tout
2*
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
GPU 2J 8? *%
f R
__inference_<lambda>_5666878
&
NoOpNoOp^StatefulPartitionedCall
?;
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?;
value?:B?: B?:
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
 
`

metadata
	variables
regularization_losses
trainable_variables
	keras_api
e
_layers_by_id
	variables
regularization_losses
trainable_variables
	keras_api
s
metadata
_lookup_table
	variables
regularization_losses
trainable_variables
	keras_api
F
0
1
2
3
4
5
 6
!7
"8
#9
 
F
0
1
2
3
4
5
 6
!7
"8
#9
?
	variables

$layers
%layer_metrics
regularization_losses
&layer_regularization_losses
'non_trainable_variables
trainable_variables
(metrics
 

)image_shape
 
 
 
?
	variables

*layers
+layer_metrics
regularization_losses
,layer_regularization_losses
-non_trainable_variables
trainable_variables
.metrics
G
/1
01632768966244
11632769061089
21632769076032
33
F
0
1
2
3
4
5
 6
!7
"8
#9
 
F
0
1
2
3
4
5
 6
!7
"8
#9
?
	variables

4layers
5layer_metrics
regularization_losses
6layer_regularization_losses
7non_trainable_variables
trainable_variables
8metrics

9mapping

:_initializer
 
 
 
?
	variables

;layers
<layer_metrics
regularization_losses
=layer_regularization_losses
>non_trainable_variables
trainable_variables
?metrics
??
VARIABLE_VALUEHtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEFtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEJtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
??
VARIABLE_VALUEHtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE?training_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=training_model_1/deep_learning_fc__dense_1_keras_7/dense/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE?training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEBtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUE@training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE

0
1
2
3
 
 
 
 
 
 
 
 
 
 
?
@
_variables
Aconv

kernel
bias
B_outputs
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
?
G
_variables
Hconv

kernel
bias
I_outputs
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
?
N
_variables
Oflatten
	Pdense

kernel
bias
Q_outputs
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
?
V
_variables
Wflatten
	Xdense

 kernel
!bias
Y_outputs
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
?
^
_variables
_flatten
	`dense

"kernel
#bias
a_outputs
b	variables
cregularization_losses
dtrainable_variables
e	keras_api
#
/0
01
12
23
34
 
 
 
 
 
 
 
 
 
 
 
 
h

kernel
bias
f	variables
gregularization_losses
htrainable_variables
i	keras_api
 

0
1
 

0
1
?
C	variables

jlayers
klayer_metrics
Dregularization_losses
llayer_regularization_losses
mnon_trainable_variables
Etrainable_variables
nmetrics
 
h

kernel
bias
o	variables
pregularization_losses
qtrainable_variables
r	keras_api
 

0
1
 

0
1
?
J	variables

slayers
tlayer_metrics
Kregularization_losses
ulayer_regularization_losses
vnon_trainable_variables
Ltrainable_variables
wmetrics
 
R
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
h

kernel
bias
|	variables
}regularization_losses
~trainable_variables
	keras_api
 

0
1
 

0
1
?
R	variables
?layers
?layer_metrics
Sregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
Ttrainable_variables
?metrics
 
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

 kernel
!bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
 

 0
!1
 

 0
!1
?
Z	variables
?layers
?layer_metrics
[regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
\trainable_variables
?metrics
 
V
?	variables
?regularization_losses
?trainable_variables
?	keras_api
l

"kernel
#bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
 

"0
#1
 

"0
#1
?
b	variables
?layers
?layer_metrics
cregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
dtrainable_variables
?metrics

0
1
 

0
1
?
f	variables
?layers
?layer_metrics
gregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
htrainable_variables
?metrics

A0
 
 
 
 

0
1
 

0
1
?
o	variables
?layers
?layer_metrics
pregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
qtrainable_variables
?metrics

H0
 
 
 
 
 
 
 
?
x	variables
?layers
?layer_metrics
yregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
ztrainable_variables
?metrics

0
1
 

0
1
?
|	variables
?layers
?layer_metrics
}regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
~trainable_variables
?metrics

O0
P1
 
 
 
 
 
 
 
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics

 0
!1
 

 0
!1
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics

W0
X1
 
 
 
 
 
 
 
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics

"0
#1
 

"0
#1
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics

_0
`1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
?
serving_default_imagesPlaceholder*/
_output_shapes
:?????????  *
dtype0*$
shape:?????????  
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_imagesHtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernelFtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/biasJtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernelHtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias?training_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel=training_model_1/deep_learning_fc__dense_1_keras_7/dense/biasAtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel?training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/biasBtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel@training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias
hash_tableConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *.
f)R'
%__inference_signature_wrapper_5665944
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename\training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernel/Read/ReadVariableOpZtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/bias/Read/ReadVariableOp^training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernel/Read/ReadVariableOp\training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias/Read/ReadVariableOpStraining_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel/Read/ReadVariableOpQtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/bias/Read/ReadVariableOpUtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel/Read/ReadVariableOpStraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/bias/Read/ReadVariableOpVtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel/Read/ReadVariableOpTtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias/Read/ReadVariableOpConst_3*
Tin
2*
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
 __inference__traced_save_5666936
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameHtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernelFtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/biasJtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernelHtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias?training_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel=training_model_1/deep_learning_fc__dense_1_keras_7/dense/biasAtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel?training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/biasBtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel@training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias*
Tin
2*
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
#__inference__traced_restore_5666976??
?
?
K__inference_deep_learning_conv__convolution_1_keras_4_layer_call_fn_5666563
inputs_input!
unknown:
	unknown_0:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_56646912
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????  
&
_user_specified_nameinputs/input
??
?
D__inference_model_1_layer_call_and_return_conditional_losses_5666106
inputs_imagesz
`training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource:o
atraining_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource:|
btraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource:q
ctraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource:k
Wtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource:
??g
Xtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource:	?m
Ytraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource:
??i
Ztraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource:	?m
Ztraining_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource:	?i
[training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource:F
Bpostprocessing_step_105_none_lookup_lookuptablefindv2_table_handleG
Cpostprocessing_step_105_none_lookup_lookuptablefindv2_default_value
identity??5postprocessing_step_105/None_Lookup/LookupTableFindV2?Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpReadVariableOp`training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?
Htraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2DConv2Dinputs_images_training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2J
Htraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D?
Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpReadVariableOpatraining_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02Z
Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAddBiasAddQtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D:output:0`training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2K
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd?
Btraining_model_1/deep_learning_conv__convolution_1_keras_4/SigmoidSigmoidRtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2D
Btraining_model_1/deep_learning_conv__convolution_1_keras_4/Sigmoid?
Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpReadVariableOp`training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02V
Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dim?
Etraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims
ExpandDims\training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp:value:0Rtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dim:output:0*
T0**
_output_shapes
:2G
Etraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims?
Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpReadVariableOpatraining_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?
Ktraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2M
Ktraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim?
Gtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1
ExpandDims^training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp:value:0Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2I
Gtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1?
Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpbtraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02[
Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?
Jtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2DConv2DFtraining_model_1/deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0atraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2L
Jtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D?
Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpctraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02\
Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAddBiasAddStraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D:output:0btraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2M
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd?
Btraining_model_1/deep_learning_conv__convolution_2_keras_3/SigmoidSigmoidTtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2D
Btraining_model_1/deep_learning_conv__convolution_2_keras_3/Sigmoid?
Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpbtraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02V
Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?
Itraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Itraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dim?
Etraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims
ExpandDims\training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp:value:0Rtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dim:output:0*
T0**
_output_shapes
:2G
Etraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims?
Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpctraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2M
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim?
Gtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1
ExpandDims^training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp:value:0Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2I
Gtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1?
@training_model_1/deep_learning_fc__dense_1_keras_7/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2B
@training_model_1/deep_learning_fc__dense_1_keras_7/flatten/Const?
Btraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/ReshapeReshapeFtraining_model_1/deep_learning_conv__convolution_2_keras_3/Sigmoid:y:0Itraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2D
Btraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/Reshape?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpReadVariableOpWtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02P
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?
?training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMulMatMulKtraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/Reshape:output:0Vtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2A
?training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul?
Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?
@training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAddBiasAddItraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul:product:0Wtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2B
@training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd?
7training_model_1/deep_learning_fc__dense_1_keras_7/ReluReluItraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????29
7training_model_1/deep_learning_fc__dense_1_keras_7/Relu?
Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02N
Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?
Atraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dim?
=training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims
ExpandDimsTtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp:value:0Jtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2?
=training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?
Ctraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim?
?training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1
ExpandDimsVtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp:value:0Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2A
?training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1?
Btraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2D
Btraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Const?
Dtraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/ReshapeReshapeEtraining_model_1/deep_learning_fc__dense_1_keras_7/Relu:activations:0Ktraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2F
Dtraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Reshape?
Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpReadVariableOpYtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
Atraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMulMatMulMtraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Reshape:output:0Xtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2C
Atraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul?
Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02S
Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?
Btraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAddBiasAddKtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul:product:0Ytraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2D
Btraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd?
7training_model_1/deep_learning_fc__dense_3_keras_9/ReluReluKtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????29
7training_model_1/deep_learning_fc__dense_3_keras_9/Relu?
Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpReadVariableOpYtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02N
Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?
Atraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dim?
=training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims
ExpandDimsTtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp:value:0Jtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2?
=training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims?
Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?
Ctraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim?
?training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1
ExpandDimsVtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp:value:0Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2A
?training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1?
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2E
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Const?
Etraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/ReshapeReshapeEtraining_model_1/deep_learning_fc__dense_3_keras_9/Relu:activations:0Ltraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2G
Etraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Reshape?
Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02S
Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?
Btraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMulMatMulNtraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Reshape:output:0Ytraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2D
Btraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul?
Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpReadVariableOp[training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02T
Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAddBiasAddLtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul:product:0Ztraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2E
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd?
;training_model_1/deep_learning_fc__dense_2_keras_10/SoftmaxSoftmaxLtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2=
;training_model_1/deep_learning_fc__dense_2_keras_10/Softmax?
Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02O
Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?
Btraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dim?
>training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims
ExpandDimsUtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp:value:0Ktraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2@
>training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims?
Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpReadVariableOp[training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02Q
Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?
Dtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2F
Dtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim?
@training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1
ExpandDimsWtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp:value:0Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2B
@training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1?
(postprocessing_step_105/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(postprocessing_step_105/ArgMax/dimension?
postprocessing_step_105/ArgMaxArgMaxEtraining_model_1/deep_learning_fc__dense_2_keras_10/Softmax:softmax:01postprocessing_step_105/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2 
postprocessing_step_105/ArgMax?
postprocessing_step_105/CastCast'postprocessing_step_105/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2
postprocessing_step_105/Cast?
5postprocessing_step_105/None_Lookup/LookupTableFindV2LookupTableFindV2Bpostprocessing_step_105_none_lookup_lookuptablefindv2_table_handle postprocessing_step_105/Cast:y:0Cpostprocessing_step_105_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????27
5postprocessing_step_105/None_Lookup/LookupTableFindV2?
IdentityIdentity>postprocessing_step_105/None_Lookup/LookupTableFindV2:values:06^postprocessing_step_105/None_Lookup/LookupTableFindV2U^training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpW^training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpY^training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpX^training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpU^training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpW^training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp[^training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpZ^training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpM^training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpO^training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpP^training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpO^training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpN^training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpP^training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpS^training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpR^training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpM^training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpO^training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpR^training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpQ^training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2n
5postprocessing_step_105/None_Lookup/LookupTableFindV25postprocessing_step_105/None_Lookup/LookupTableFindV22?
Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpTtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp2?
Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpVtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp2?
Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpXtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp2?
Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpWtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp2?
Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpTtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp2?
Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpVtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp2?
Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpZtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp2?
Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpYtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp2?
Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpLtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp2?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpNtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp2?
Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpOtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp2?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpNtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp2?
Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpMtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp2?
Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpOtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp2?
Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpRtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp2?
Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpQtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp2?
Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpLtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp2?
Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpNtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp2?
Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpQtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp2?
Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpPtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images:

_output_shapes
: 
?

?
)__inference_model_1_layer_call_fn_5665809

images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_56657532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?5
?

#__inference__traced_restore_5666976
file_prefixs
Yassignvariableop_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_kernel:g
Yassignvariableop_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_bias:w
]assignvariableop_2_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_kernel:i
[assignvariableop_3_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_bias:f
Rassignvariableop_4_training_model_1_deep_learning_fc__dense_1_keras_7_dense_kernel:
??_
Passignvariableop_5_training_model_1_deep_learning_fc__dense_1_keras_7_dense_bias:	?h
Tassignvariableop_6_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_kernel:
??a
Rassignvariableop_7_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_bias:	?h
Uassignvariableop_8_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_kernel:	?a
Sassignvariableop_9_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_bias:
identity_11??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*@
_output_shapes.
,:::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpYassignvariableop_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpYassignvariableop_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp]assignvariableop_2_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp[assignvariableop_3_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpRassignvariableop_4_training_model_1_deep_learning_fc__dense_1_keras_7_dense_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpPassignvariableop_5_training_model_1_deep_learning_fc__dense_1_keras_7_dense_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpTassignvariableop_6_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpRassignvariableop_7_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpUassignvariableop_8_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpSassignvariableop_9_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_10Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_10?
Identity_11IdentityIdentity_10:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_11"#
identity_11Identity_11:output:0*)
_input_shapes
: : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12(
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
??
?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5665501

imagesK
1deep_learning_conv__convolution_1_keras_4_5665439:?
1deep_learning_conv__convolution_1_keras_4_5665441:K
1deep_learning_conv__convolution_2_keras_3_5665447:?
1deep_learning_conv__convolution_2_keras_3_5665449:=
)deep_learning_fc__dense_1_keras_7_5665455:
??8
)deep_learning_fc__dense_1_keras_7_5665457:	?=
)deep_learning_fc__dense_3_keras_9_5665463:
??8
)deep_learning_fc__dense_3_keras_9_5665465:	?=
*deep_learning_fc__dense_2_keras_10_5665471:	?8
*deep_learning_fc__dense_2_keras_10_5665473:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallStatefulPartitionedCallimages1deep_learning_conv__convolution_1_keras_4_56654391deep_learning_conv__convolution_1_keras_4_5665441*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_56646912C
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:21deep_learning_conv__convolution_2_keras_3_56654471deep_learning_conv__convolution_2_keras_3_5665449*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_56647202C
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_7_5665455)deep_learning_fc__dense_1_keras_7_5665457*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_56647512;
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_9_5665463)deep_learning_fc__dense_3_keras_9_5665465*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_56647822;
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2*deep_learning_fc__dense_2_keras_10_5665471*deep_learning_fc__dense_2_keras_10_5665473*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *h
fcRa
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_56648132<
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?
IdentityIdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityimagesB^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 2?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall2?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallAdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall2x
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages
?
?
C__inference_deep_learning_fc__dense_3_keras_9_layer_call_fn_5666781
inputs_input
unknown:
??
	unknown_0:	?
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_56647822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*$
_output_shapes
:??2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
??
?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5665304

inputsK
1deep_learning_conv__convolution_1_keras_4_5665242:?
1deep_learning_conv__convolution_1_keras_4_5665244:K
1deep_learning_conv__convolution_2_keras_3_5665250:?
1deep_learning_conv__convolution_2_keras_3_5665252:=
)deep_learning_fc__dense_1_keras_7_5665258:
??8
)deep_learning_fc__dense_1_keras_7_5665260:	?=
)deep_learning_fc__dense_3_keras_9_5665266:
??8
)deep_learning_fc__dense_3_keras_9_5665268:	?=
*deep_learning_fc__dense_2_keras_10_5665274:	?8
*deep_learning_fc__dense_2_keras_10_5665276:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallStatefulPartitionedCallinputs1deep_learning_conv__convolution_1_keras_4_56652421deep_learning_conv__convolution_1_keras_4_5665244*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_56651572C
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:21deep_learning_conv__convolution_2_keras_3_56652501deep_learning_conv__convolution_2_keras_3_5665252*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_56651062C
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_7_5665258)deep_learning_fc__dense_1_keras_7_5665260*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_56650552;
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_9_5665266)deep_learning_fc__dense_3_keras_9_5665268*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_56650022;
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2*deep_learning_fc__dense_2_keras_10_5665274*deep_learning_fc__dense_2_keras_10_5665276*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *h
fcRa
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_56649492<
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?
IdentityIdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityinputsB^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 2?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall2?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallAdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall2x
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
C__inference_deep_learning_fc__dense_1_keras_7_layer_call_fn_5666707
inputs_input
unknown:
??
	unknown_0:	?
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_56647512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*$
_output_shapes
:??2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?
?
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5664720

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAddr
SigmoidSigmoidconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
D__inference_model_1_layer_call_and_return_conditional_losses_5665861

images2
training_model_1_5665813:&
training_model_1_5665815:2
training_model_1_5665817:&
training_model_1_5665819:,
training_model_1_5665821:
??'
training_model_1_5665823:	?,
training_model_1_5665825:
??'
training_model_1_5665827:	?+
training_model_1_5665829:	?&
training_model_1_5665831:#
postprocessing_step_105_5665855#
postprocessing_step_105_5665857
identity??/postprocessing_step_105/StatefulPartitionedCall?(training_model_1/StatefulPartitionedCall?
!preprocessing_105/PartitionedCallPartitionedCallimages*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_56646582#
!preprocessing_105/PartitionedCall?
(training_model_1/StatefulPartitionedCallStatefulPartitionedCall*preprocessing_105/PartitionedCall:output:0training_model_1_5665813training_model_1_5665815training_model_1_5665817training_model_1_5665819training_model_1_5665821training_model_1_5665823training_model_1_5665825training_model_1_5665827training_model_1_5665829training_model_1_5665831*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56648442*
(training_model_1/StatefulPartitionedCall?
/postprocessing_step_105/StatefulPartitionedCallStatefulPartitionedCall1training_model_1/StatefulPartitionedCall:output:0postprocessing_step_105_5665855postprocessing_step_105_5665857*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_566557721
/postprocessing_step_105/StatefulPartitionedCall?
IdentityIdentity8postprocessing_step_105/StatefulPartitionedCall:output:00^postprocessing_step_105/StatefulPartitionedCall)^training_model_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2b
/postprocessing_step_105/StatefulPartitionedCall/postprocessing_step_105/StatefulPartitionedCall2T
(training_model_1/StatefulPartitionedCall(training_model_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
?
K__inference_deep_learning_conv__convolution_1_keras_4_layer_call_fn_5666578
inputs_input!
unknown:
	unknown_0:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_56651572
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????  
&
_user_specified_nameinputs/input
?
?
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5665106

inputsA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dinputs&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAddr
SigmoidSigmoidconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5665055

inputs8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5664949

inputs9
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?.
?
2__inference_training_model_1_layer_call_fn_5665436

images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56653042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity StatefulPartitionedCall:output:4^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity StatefulPartitionedCall:output:5^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity StatefulPartitionedCall:output:6^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19Identity!StatefulPartitionedCall:output:19^StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity!StatefulPartitionedCall:output:20^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity!StatefulPartitionedCall:output:21^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages
?

?
)__inference_model_1_layer_call_fn_5666135
inputs_images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_imagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_56656432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images:

_output_shapes
: 
?
?
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5666818
inputs_input9
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputs_inputflatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?
?
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5666840
inputs_input9
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputs_inputflatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?
?
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5664751

inputs8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
??
?
"__inference__wrapped_model_5664653

images?
hmodel_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource:w
imodel_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource:?
jmodel_1_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource:y
kmodel_1_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource:s
_model_1_training_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource:
??o
`model_1_training_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource:	?u
amodel_1_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource:
??q
bmodel_1_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource:	?u
bmodel_1_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource:	?q
cmodel_1_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource:N
Jmodel_1_postprocessing_step_105_none_lookup_lookuptablefindv2_table_handleO
Kmodel_1_postprocessing_step_105_none_lookup_lookuptablefindv2_default_value
identity??=model_1/postprocessing_step_105/None_Lookup/LookupTableFindV2?\model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?`model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?_model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?\model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?bmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?amodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?Tmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?Wmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?Umodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?Wmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?Zmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?Ymodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?Tmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?Vmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?Ymodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?Xmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
_model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpReadVariableOphmodel_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02a
_model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?
Pmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2DConv2Dimagesgmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2R
Pmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D?
`model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpReadVariableOpimodel_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02b
`model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?
Qmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAddBiasAddYmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D:output:0hmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2S
Qmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd?
Jmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/SigmoidSigmoidZmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2L
Jmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/Sigmoid?
\model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpReadVariableOphmodel_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02^
\model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?
Qmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2S
Qmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dim?
Mmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims
ExpandDimsdmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp:value:0Zmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dim:output:0*
T0**
_output_shapes
:2O
Mmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims?
^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpReadVariableOpimodel_1_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?
Smodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2U
Smodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim?
Omodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1
ExpandDimsfmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp:value:0\model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2Q
Omodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1?
amodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpjmodel_1_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02c
amodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?
Rmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2DConv2DNmodel_1/training_model_1/deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0imodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2T
Rmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D?
bmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpkmodel_1_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02d
bmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?
Smodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAddBiasAdd[model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D:output:0jmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2U
Smodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd?
Jmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/SigmoidSigmoid\model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2L
Jmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/Sigmoid?
\model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpjmodel_1_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02^
\model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?
Qmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2S
Qmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dim?
Mmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims
ExpandDimsdmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp:value:0Zmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dim:output:0*
T0**
_output_shapes
:2O
Mmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims?
^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpkmodel_1_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02`
^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?
Smodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2U
Smodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim?
Omodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1
ExpandDimsfmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp:value:0\model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2Q
Omodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1?
Hmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2J
Hmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/flatten/Const?
Jmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/flatten/ReshapeReshapeNmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/Sigmoid:y:0Qmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2L
Jmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/flatten/Reshape?
Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpReadVariableOp_model_1_training_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02X
Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?
Gmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMulMatMulSmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/flatten/Reshape:output:0^model_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2I
Gmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul?
Wmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpReadVariableOp`model_1_training_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02Y
Wmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?
Hmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAddBiasAddQmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul:product:0_model_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2J
Hmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd?
?model_1/training_model_1/deep_learning_fc__dense_1_keras_7/ReluReluQmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2A
?model_1/training_model_1/deep_learning_fc__dense_1_keras_7/Relu?
Tmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpReadVariableOp_model_1_training_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02V
Tmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?
Imodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dim?
Emodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims
ExpandDims\model_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp:value:0Rmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2G
Emodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims?
Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpReadVariableOp`model_1_training_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02X
Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?
Kmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim?
Gmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1
ExpandDims^model_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp:value:0Tmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2I
Gmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1?
Jmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2L
Jmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Const?
Lmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/ReshapeReshapeMmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/Relu:activations:0Smodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2N
Lmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Reshape?
Xmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpReadVariableOpamodel_1_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02Z
Xmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
Imodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMulMatMulUmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Reshape:output:0`model_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2K
Imodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul?
Ymodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpReadVariableOpbmodel_1_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02[
Ymodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?
Jmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAddBiasAddSmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul:product:0amodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2L
Jmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd?
?model_1/training_model_1/deep_learning_fc__dense_3_keras_9/ReluReluSmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2A
?model_1/training_model_1/deep_learning_fc__dense_3_keras_9/Relu?
Tmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpReadVariableOpamodel_1_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02V
Tmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?
Imodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Imodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dim?
Emodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims
ExpandDims\model_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp:value:0Rmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2G
Emodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims?
Vmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpReadVariableOpbmodel_1_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02X
Vmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?
Kmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2M
Kmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim?
Gmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1
ExpandDims^model_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp:value:0Tmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2I
Gmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1?
Kmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2M
Kmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Const?
Mmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/ReshapeReshapeMmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/Relu:activations:0Tmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2O
Mmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Reshape?
Ymodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpReadVariableOpbmodel_1_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02[
Ymodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?
Jmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMulMatMulVmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Reshape:output:0amodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2L
Jmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul?
Zmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpReadVariableOpcmodel_1_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02\
Zmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?
Kmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAddBiasAddTmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul:product:0bmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2M
Kmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd?
Cmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/SoftmaxSoftmaxTmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2E
Cmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/Softmax?
Umodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpReadVariableOpbmodel_1_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02W
Umodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?
Jmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2L
Jmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dim?
Fmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims
ExpandDims]model_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp:value:0Smodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2H
Fmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims?
Wmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpReadVariableOpcmodel_1_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02Y
Wmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?
Lmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2N
Lmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim?
Hmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1
ExpandDims_model_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp:value:0Umodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2J
Hmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1?
0model_1/postprocessing_step_105/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????22
0model_1/postprocessing_step_105/ArgMax/dimension?
&model_1/postprocessing_step_105/ArgMaxArgMaxMmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/Softmax:softmax:09model_1/postprocessing_step_105/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2(
&model_1/postprocessing_step_105/ArgMax?
$model_1/postprocessing_step_105/CastCast/model_1/postprocessing_step_105/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2&
$model_1/postprocessing_step_105/Cast?
=model_1/postprocessing_step_105/None_Lookup/LookupTableFindV2LookupTableFindV2Jmodel_1_postprocessing_step_105_none_lookup_lookuptablefindv2_table_handle(model_1/postprocessing_step_105/Cast:y:0Kmodel_1_postprocessing_step_105_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????2?
=model_1/postprocessing_step_105/None_Lookup/LookupTableFindV2?
IdentityIdentityFmodel_1/postprocessing_step_105/None_Lookup/LookupTableFindV2:values:0>^model_1/postprocessing_step_105/None_Lookup/LookupTableFindV2]^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp_^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpa^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp`^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp]^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp_^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpc^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpb^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpU^model_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpW^model_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpX^model_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpW^model_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpV^model_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpX^model_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp[^model_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpZ^model_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpU^model_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpW^model_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpZ^model_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpY^model_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2~
=model_1/postprocessing_step_105/None_Lookup/LookupTableFindV2=model_1/postprocessing_step_105/None_Lookup/LookupTableFindV22?
\model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp\model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp2?
^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp^model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp2?
`model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp`model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp2?
_model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp_model_1/training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp2?
\model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp\model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp2?
^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp^model_1/training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp2?
bmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpbmodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp2?
amodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpamodel_1/training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp2?
Tmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpTmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp2?
Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpVmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp2?
Wmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpWmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp2?
Vmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpVmodel_1/training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp2?
Umodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpUmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp2?
Wmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpWmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp2?
Zmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpZmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp2?
Ymodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpYmodel_1/training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp2?
Tmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpTmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp2?
Vmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpVmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp2?
Ymodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpYmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp2?
Xmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpXmodel_1/training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
.
__inference__destroyer_5666508
identityP
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
ConstQ
IdentityIdentityConst:output:0*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5664813

inputs9
&dense_2_matmul_readvariableop_resource:	?5
'dense_2_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_2/BiasAddi
SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Softmax?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySoftmax:softmax:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5666356
inputs_imagesi
Odeep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource:^
Pdeep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource:k
Qdeep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource:`
Rdeep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource:Z
Fdeep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource:
??V
Gdeep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource:	?\
Hdeep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource:
??X
Ideep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource:	?\
Ideep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource:	?X
Jdeep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp??deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02H
Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?
7deep_learning_conv__convolution_1_keras_4/conv2d/Conv2DConv2Dinputs_imagesNdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
29
7deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D?
Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02I
Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_4/conv2d/BiasAddBiasAdd@deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D:output:0Odeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2:
8deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd?
1deep_learning_conv__convolution_1_keras_4/SigmoidSigmoidAdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????23
1deep_learning_conv__convolution_1_keras_4/Sigmoid?
Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8deep_learning_conv__convolution_1_keras_4/ExpandDims/dim?
4deep_learning_conv__convolution_1_keras_4/ExpandDims
ExpandDimsKdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp:value:0Adeep_learning_conv__convolution_1_keras_4/ExpandDims/dim:output:0*
T0**
_output_shapes
:26
4deep_learning_conv__convolution_1_keras_4/ExpandDims?
Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?
:deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim?
6deep_learning_conv__convolution_1_keras_4/ExpandDims_1
ExpandDimsMdeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp:value:0Cdeep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:28
6deep_learning_conv__convolution_1_keras_4/ExpandDims_1?
Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpQdeep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02J
Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?
9deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2DConv2D5deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0Pdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2;
9deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D?
Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpRdeep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02K
Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?
:deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAddBiasAddBdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D:output:0Qdeep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2<
:deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd?
1deep_learning_conv__convolution_2_keras_3/SigmoidSigmoidCdeep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????23
1deep_learning_conv__convolution_2_keras_3/Sigmoid?
Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpQdeep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?
8deep_learning_conv__convolution_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8deep_learning_conv__convolution_2_keras_3/ExpandDims/dim?
4deep_learning_conv__convolution_2_keras_3/ExpandDims
ExpandDimsKdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp:value:0Adeep_learning_conv__convolution_2_keras_3/ExpandDims/dim:output:0*
T0**
_output_shapes
:26
4deep_learning_conv__convolution_2_keras_3/ExpandDims?
Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpRdeep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?
:deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim?
6deep_learning_conv__convolution_2_keras_3/ExpandDims_1
ExpandDimsMdeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp:value:0Cdeep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:28
6deep_learning_conv__convolution_2_keras_3/ExpandDims_1?
/deep_learning_fc__dense_1_keras_7/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   21
/deep_learning_fc__dense_1_keras_7/flatten/Const?
1deep_learning_fc__dense_1_keras_7/flatten/ReshapeReshape5deep_learning_conv__convolution_2_keras_3/Sigmoid:y:08deep_learning_fc__dense_1_keras_7/flatten/Const:output:0*
T0*(
_output_shapes
:??????????23
1deep_learning_fc__dense_1_keras_7/flatten/Reshape?
=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02?
=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?
.deep_learning_fc__dense_1_keras_7/dense/MatMulMatMul:deep_learning_fc__dense_1_keras_7/flatten/Reshape:output:0Edeep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.deep_learning_fc__dense_1_keras_7/dense/MatMul?
>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?
/deep_learning_fc__dense_1_keras_7/dense/BiasAddBiasAdd8deep_learning_fc__dense_1_keras_7/dense/MatMul:product:0Fdeep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/deep_learning_fc__dense_1_keras_7/dense/BiasAdd?
&deep_learning_fc__dense_1_keras_7/ReluRelu8deep_learning_fc__dense_1_keras_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&deep_learning_fc__dense_1_keras_7/Relu?
;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_1_keras_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_1_keras_7/ExpandDims/dim?
,deep_learning_fc__dense_1_keras_7/ExpandDims
ExpandDimsCdeep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_1_keras_7/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2.
,deep_learning_fc__dense_1_keras_7/ExpandDims?
=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_1_keras_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim?
.deep_learning_fc__dense_1_keras_7/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?20
.deep_learning_fc__dense_1_keras_7/ExpandDims_1?
1deep_learning_fc__dense_3_keras_9/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   23
1deep_learning_fc__dense_3_keras_9/flatten_1/Const?
3deep_learning_fc__dense_3_keras_9/flatten_1/ReshapeReshape4deep_learning_fc__dense_1_keras_7/Relu:activations:0:deep_learning_fc__dense_3_keras_9/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????25
3deep_learning_fc__dense_3_keras_9/flatten_1/Reshape?
?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02A
?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
0deep_learning_fc__dense_3_keras_9/dense_1/MatMulMatMul<deep_learning_fc__dense_3_keras_9/flatten_1/Reshape:output:0Gdeep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0deep_learning_fc__dense_3_keras_9/dense_1/MatMul?
@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_3_keras_9/dense_1/BiasAddBiasAdd:deep_learning_fc__dense_3_keras_9/dense_1/MatMul:product:0Hdeep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd?
&deep_learning_fc__dense_3_keras_9/ReluRelu:deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&deep_learning_fc__dense_3_keras_9/Relu?
;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_3_keras_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_3_keras_9/ExpandDims/dim?
,deep_learning_fc__dense_3_keras_9/ExpandDims
ExpandDimsCdeep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_3_keras_9/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2.
,deep_learning_fc__dense_3_keras_9/ExpandDims?
=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_3_keras_9/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim?
.deep_learning_fc__dense_3_keras_9/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?20
.deep_learning_fc__dense_3_keras_9/ExpandDims_1?
2deep_learning_fc__dense_2_keras_10/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   24
2deep_learning_fc__dense_2_keras_10/flatten_2/Const?
4deep_learning_fc__dense_2_keras_10/flatten_2/ReshapeReshape4deep_learning_fc__dense_3_keras_9/Relu:activations:0;deep_learning_fc__dense_2_keras_10/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????26
4deep_learning_fc__dense_2_keras_10/flatten_2/Reshape?
@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02B
@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?
1deep_learning_fc__dense_2_keras_10/dense_2/MatMulMatMul=deep_learning_fc__dense_2_keras_10/flatten_2/Reshape:output:0Hdeep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????23
1deep_learning_fc__dense_2_keras_10/dense_2/MatMul?
Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpReadVariableOpJdeep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02C
Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?
2deep_learning_fc__dense_2_keras_10/dense_2/BiasAddBiasAdd;deep_learning_fc__dense_2_keras_10/dense_2/MatMul:product:0Ideep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????24
2deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd?
*deep_learning_fc__dense_2_keras_10/SoftmaxSoftmax;deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2,
*deep_learning_fc__dense_2_keras_10/Softmax?
<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02>
<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?
1deep_learning_fc__dense_2_keras_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1deep_learning_fc__dense_2_keras_10/ExpandDims/dim?
-deep_learning_fc__dense_2_keras_10/ExpandDims
ExpandDimsDdeep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp:value:0:deep_learning_fc__dense_2_keras_10/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2/
-deep_learning_fc__dense_2_keras_10/ExpandDims?
>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpReadVariableOpJdeep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?
3deep_learning_fc__dense_2_keras_10/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 25
3deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim?
/deep_learning_fc__dense_2_keras_10/ExpandDims_1
ExpandDimsFdeep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp:value:0<deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:21
/deep_learning_fc__dense_2_keras_10/ExpandDims_1?
IdentityIdentity4deep_learning_fc__dense_2_keras_10/Softmax:softmax:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identityinputs_imagesD^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity=deep_learning_conv__convolution_1_keras_4/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity?deep_learning_conv__convolution_1_keras_4/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity5deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity5deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity=deep_learning_conv__convolution_2_keras_3/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0**
_output_shapes
:2

Identity_6?

Identity_7Identity?deep_learning_conv__convolution_2_keras_3/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_7?

Identity_8Identity5deep_learning_conv__convolution_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9Identity5deep_learning_conv__convolution_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10Identity5deep_learning_fc__dense_1_keras_7/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11Identity7deep_learning_fc__dense_1_keras_7/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12Identity4deep_learning_fc__dense_1_keras_7/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13Identity4deep_learning_fc__dense_1_keras_7/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14Identity5deep_learning_fc__dense_3_keras_9/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity7deep_learning_fc__dense_3_keras_9/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity4deep_learning_fc__dense_3_keras_9/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity4deep_learning_fc__dense_3_keras_9/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity6deep_learning_fc__dense_2_keras_10/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19Identity8deep_learning_fc__dense_2_keras_10/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity4deep_learning_fc__dense_2_keras_10/Softmax:softmax:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity4deep_learning_fc__dense_2_keras_10/Softmax:softmax:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 2?
Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpCdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp2?
Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpEdeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp2?
Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpGdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp2?
Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpFdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp2?
Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpCdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp2?
Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpEdeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp2?
Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpIdeep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp2?
Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpHdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp2z
;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp2?
>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp2|
<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp2?
>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp2?
Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpAdeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp2?
@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images
?
?
D__inference_model_1_layer_call_and_return_conditional_losses_5665913

images2
training_model_1_5665865:&
training_model_1_5665867:2
training_model_1_5665869:&
training_model_1_5665871:,
training_model_1_5665873:
??'
training_model_1_5665875:	?,
training_model_1_5665877:
??'
training_model_1_5665879:	?+
training_model_1_5665881:	?&
training_model_1_5665883:#
postprocessing_step_105_5665907#
postprocessing_step_105_5665909
identity??/postprocessing_step_105/StatefulPartitionedCall?(training_model_1/StatefulPartitionedCall?
!preprocessing_105/PartitionedCallPartitionedCallimages*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_56646582#
!preprocessing_105/PartitionedCall?
(training_model_1/StatefulPartitionedCallStatefulPartitionedCall*preprocessing_105/PartitionedCall:output:0training_model_1_5665865training_model_1_5665867training_model_1_5665869training_model_1_5665871training_model_1_5665873training_model_1_5665875training_model_1_5665877training_model_1_5665879training_model_1_5665881training_model_1_5665883*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56653042*
(training_model_1/StatefulPartitionedCall?
/postprocessing_step_105/StatefulPartitionedCallStatefulPartitionedCall1training_model_1/StatefulPartitionedCall:output:0postprocessing_step_105_5665907postprocessing_step_105_5665909*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_566557721
/postprocessing_step_105/StatefulPartitionedCall?
IdentityIdentity8postprocessing_step_105/StatefulPartitionedCall:output:00^postprocessing_step_105/StatefulPartitionedCall)^training_model_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2b
/postprocessing_step_105/StatefulPartitionedCall/postprocessing_step_105/StatefulPartitionedCall2T
(training_model_1/StatefulPartitionedCall(training_model_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
?
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5666766
inputs_input:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputs_inputflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAdda
ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?
?
9__inference_postprocessing_step_105_layer_call_fn_5665587
input_1
unknown
	unknown_0
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_56655772
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
D__inference_deep_learning_fc__dense_2_keras_10_layer_call_fn_5666855
inputs_input
unknown:	?
	unknown_0:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *h
fcRa
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_56648132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?

?
)__inference_model_1_layer_call_fn_5665670

images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_56656432
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
?
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5666548
inputs_input?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs_input$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddp
SigmoidSigmoidconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????  
&
_user_specified_nameinputs/input
?
?
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5666744
inputs_input:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputs_inputflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAdda
ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?
?
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5666670
inputs_input8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeinputs_inputflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?/
?
2__inference_training_model_1_layer_call_fn_5666490
inputs_images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_imagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56653042
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity StatefulPartitionedCall:output:4^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity StatefulPartitionedCall:output:5^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity StatefulPartitionedCall:output:6^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19Identity!StatefulPartitionedCall:output:19^StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity!StatefulPartitionedCall:output:20^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity!StatefulPartitionedCall:output:21^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images
?
?
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5665157

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddp
SigmoidSigmoidconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5666618
inputs_inputA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dinputs_input&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAddr
SigmoidSigmoidconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?
?
__inference_<lambda>_5666878:
6key_value_init5664553_lookuptableimportv2_table_handle2
.key_value_init5664553_lookuptableimportv2_keys4
0key_value_init5664553_lookuptableimportv2_values
identity??)key_value_init5664553/LookupTableImportV2?
)key_value_init5664553/LookupTableImportV2LookupTableImportV26key_value_init5664553_lookuptableimportv2_table_handle.key_value_init5664553_lookuptableimportv2_keys0key_value_init5664553_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2+
)key_value_init5664553/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Const}
IdentityIdentityConst:output:0*^key_value_init5664553/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init5664553/LookupTableImportV2)key_value_init5664553/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
 __inference__initializer_5666503:
6key_value_init5664553_lookuptableimportv2_table_handle2
.key_value_init5664553_lookuptableimportv2_keys4
0key_value_init5664553_lookuptableimportv2_values
identity??)key_value_init5664553/LookupTableImportV2?
)key_value_init5664553/LookupTableImportV2LookupTableImportV26key_value_init5664553_lookuptableimportv2_table_handle.key_value_init5664553_lookuptableimportv2_keys0key_value_init5664553_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2+
)key_value_init5664553/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const}
IdentityIdentityConst:output:0*^key_value_init5664553/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init5664553/LookupTableImportV2)key_value_init5664553/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
C__inference_deep_learning_fc__dense_3_keras_9_layer_call_fn_5666796
inputs_input
unknown:
??
	unknown_0:	?
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_56650022
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*$
_output_shapes
:??2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?
?
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5665002

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputsflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAdda
ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
D__inference_deep_learning_fc__dense_2_keras_10_layer_call_fn_5666870
inputs_input
unknown:	?
	unknown_0:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *h
fcRa
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_56649492
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?	
?
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_5665577
input_1.
*none_lookup_lookuptablefindv2_table_handle/
+none_lookup_lookuptablefindv2_default_value
identity??None_Lookup/LookupTableFindV2o
ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ArgMax/dimensionl
ArgMaxArgMaxinput_1ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
ArgMaxb
CastCastArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2
Cast?
None_Lookup/LookupTableFindV2LookupTableFindV2*none_lookup_lookuptablefindv2_table_handleCast:y:0+none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????2
None_Lookup/LookupTableFindV2?
IdentityIdentity&None_Lookup/LookupTableFindV2:values:0^None_Lookup/LookupTableFindV2*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????: : 2>
None_Lookup/LookupTableFindV2None_Lookup/LookupTableFindV2:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:

_output_shapes
: 
?
?
C__inference_deep_learning_fc__dense_1_keras_7_layer_call_fn_5666722
inputs_input
unknown:
??
	unknown_0:	?
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_56650552
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*$
_output_shapes
:??2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?
?
K__inference_deep_learning_conv__convolution_2_keras_3_layer_call_fn_5666648
inputs_input!
unknown:
	unknown_0:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_56651062
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?/
?
2__inference_training_model_1_layer_call_fn_5666423
inputs_images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_imagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56648442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity StatefulPartitionedCall:output:4^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity StatefulPartitionedCall:output:5^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity StatefulPartitionedCall:output:6^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19Identity!StatefulPartitionedCall:output:19^StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity!StatefulPartitionedCall:output:20^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity!StatefulPartitionedCall:output:21^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images
??
?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5664844

inputsK
1deep_learning_conv__convolution_1_keras_4_5664692:?
1deep_learning_conv__convolution_1_keras_4_5664694:K
1deep_learning_conv__convolution_2_keras_3_5664721:?
1deep_learning_conv__convolution_2_keras_3_5664723:=
)deep_learning_fc__dense_1_keras_7_5664752:
??8
)deep_learning_fc__dense_1_keras_7_5664754:	?=
)deep_learning_fc__dense_3_keras_9_5664783:
??8
)deep_learning_fc__dense_3_keras_9_5664785:	?=
*deep_learning_fc__dense_2_keras_10_5664814:	?8
*deep_learning_fc__dense_2_keras_10_5664816:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallStatefulPartitionedCallinputs1deep_learning_conv__convolution_1_keras_4_56646921deep_learning_conv__convolution_1_keras_4_5664694*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_56646912C
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:21deep_learning_conv__convolution_2_keras_3_56647211deep_learning_conv__convolution_2_keras_3_5664723*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_56647202C
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_7_5664752)deep_learning_fc__dense_1_keras_7_5664754*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_56647512;
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_9_5664783)deep_learning_fc__dense_3_keras_9_5664785*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_56647822;
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2*deep_learning_fc__dense_2_keras_10_5664814*deep_learning_fc__dense_2_keras_10_5664816*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *h
fcRa
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_56648132<
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?
IdentityIdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityinputsB^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 2?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall2?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallAdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall2x
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
<
__inference__creator_5666495
identity??
hash_table}

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	5664554*
value_dtype02

hash_tablei
IdentityIdentityhash_table:table_handle:0^hash_table*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
??
?
D__inference_model_1_layer_call_and_return_conditional_losses_5666025
inputs_imagesz
`training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource:o
atraining_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource:|
btraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource:q
ctraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource:k
Wtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource:
??g
Xtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource:	?m
Ytraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource:
??i
Ztraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource:	?m
Ztraining_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource:	?i
[training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource:F
Bpostprocessing_step_105_none_lookup_lookuptablefindv2_table_handleG
Cpostprocessing_step_105_none_lookup_lookuptablefindv2_default_value
identity??5postprocessing_step_105/None_Lookup/LookupTableFindV2?Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpReadVariableOp`training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Y
Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?
Htraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2DConv2Dinputs_images_training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2J
Htraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D?
Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpReadVariableOpatraining_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02Z
Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAddBiasAddQtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D:output:0`training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2K
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd?
Btraining_model_1/deep_learning_conv__convolution_1_keras_4/SigmoidSigmoidRtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2D
Btraining_model_1/deep_learning_conv__convolution_1_keras_4/Sigmoid?
Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpReadVariableOp`training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02V
Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Itraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dim?
Etraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims
ExpandDims\training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp:value:0Rtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/dim:output:0*
T0**
_output_shapes
:2G
Etraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims?
Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpReadVariableOpatraining_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?
Ktraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2M
Ktraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim?
Gtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1
ExpandDims^training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp:value:0Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2I
Gtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1?
Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpbtraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02[
Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?
Jtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2DConv2DFtraining_model_1/deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0atraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2L
Jtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D?
Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpctraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02\
Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAddBiasAddStraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D:output:0btraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2M
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd?
Btraining_model_1/deep_learning_conv__convolution_2_keras_3/SigmoidSigmoidTtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2D
Btraining_model_1/deep_learning_conv__convolution_2_keras_3/Sigmoid?
Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpbtraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02V
Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?
Itraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Itraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dim?
Etraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims
ExpandDims\training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp:value:0Rtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/dim:output:0*
T0**
_output_shapes
:2G
Etraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims?
Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpctraining_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2M
Ktraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim?
Gtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1
ExpandDims^training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp:value:0Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2I
Gtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1?
@training_model_1/deep_learning_fc__dense_1_keras_7/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2B
@training_model_1/deep_learning_fc__dense_1_keras_7/flatten/Const?
Btraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/ReshapeReshapeFtraining_model_1/deep_learning_conv__convolution_2_keras_3/Sigmoid:y:0Itraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2D
Btraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/Reshape?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpReadVariableOpWtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02P
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?
?training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMulMatMulKtraining_model_1/deep_learning_fc__dense_1_keras_7/flatten/Reshape:output:0Vtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2A
?training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul?
Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02Q
Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?
@training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAddBiasAddItraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul:product:0Wtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2B
@training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd?
7training_model_1/deep_learning_fc__dense_1_keras_7/ReluReluItraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????29
7training_model_1/deep_learning_fc__dense_1_keras_7/Relu?
Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02N
Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?
Atraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dim?
=training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims
ExpandDimsTtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp:value:0Jtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2?
=training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_1_deep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?
Ctraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim?
?training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1
ExpandDimsVtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp:value:0Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2A
?training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1?
Btraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2D
Btraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Const?
Dtraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/ReshapeReshapeEtraining_model_1/deep_learning_fc__dense_1_keras_7/Relu:activations:0Ktraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2F
Dtraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Reshape?
Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpReadVariableOpYtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
Atraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMulMatMulMtraining_model_1/deep_learning_fc__dense_3_keras_9/flatten_1/Reshape:output:0Xtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2C
Atraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul?
Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02S
Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?
Btraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAddBiasAddKtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul:product:0Ytraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2D
Btraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd?
7training_model_1/deep_learning_fc__dense_3_keras_9/ReluReluKtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????29
7training_model_1/deep_learning_fc__dense_3_keras_9/Relu?
Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpReadVariableOpYtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02N
Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?
Atraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dim?
=training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims
ExpandDimsTtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp:value:0Jtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2?
=training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims?
Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02P
Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?
Ctraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2E
Ctraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim?
?training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1
ExpandDimsVtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp:value:0Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2A
?training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1?
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2E
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Const?
Etraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/ReshapeReshapeEtraining_model_1/deep_learning_fc__dense_3_keras_9/Relu:activations:0Ltraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????2G
Etraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Reshape?
Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02S
Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?
Btraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMulMatMulNtraining_model_1/deep_learning_fc__dense_2_keras_10/flatten_2/Reshape:output:0Ytraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2D
Btraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul?
Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpReadVariableOp[training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02T
Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAddBiasAddLtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul:product:0Ztraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2E
Ctraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd?
;training_model_1/deep_learning_fc__dense_2_keras_10/SoftmaxSoftmaxLtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2=
;training_model_1/deep_learning_fc__dense_2_keras_10/Softmax?
Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpReadVariableOpZtraining_model_1_deep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02O
Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?
Btraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2D
Btraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dim?
>training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims
ExpandDimsUtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp:value:0Ktraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2@
>training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims?
Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpReadVariableOp[training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02Q
Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?
Dtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2F
Dtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim?
@training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1
ExpandDimsWtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp:value:0Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2B
@training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1?
(postprocessing_step_105/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2*
(postprocessing_step_105/ArgMax/dimension?
postprocessing_step_105/ArgMaxArgMaxEtraining_model_1/deep_learning_fc__dense_2_keras_10/Softmax:softmax:01postprocessing_step_105/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2 
postprocessing_step_105/ArgMax?
postprocessing_step_105/CastCast'postprocessing_step_105/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2
postprocessing_step_105/Cast?
5postprocessing_step_105/None_Lookup/LookupTableFindV2LookupTableFindV2Bpostprocessing_step_105_none_lookup_lookuptablefindv2_table_handle postprocessing_step_105/Cast:y:0Cpostprocessing_step_105_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????27
5postprocessing_step_105/None_Lookup/LookupTableFindV2?
IdentityIdentity>postprocessing_step_105/None_Lookup/LookupTableFindV2:values:06^postprocessing_step_105/None_Lookup/LookupTableFindV2U^training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpW^training_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpY^training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpX^training_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpU^training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpW^training_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp[^training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpZ^training_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpM^training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpO^training_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpP^training_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpO^training_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpN^training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpP^training_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpS^training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpR^training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpM^training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpO^training_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpR^training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpQ^training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2n
5postprocessing_step_105/None_Lookup/LookupTableFindV25postprocessing_step_105/None_Lookup/LookupTableFindV22?
Ttraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpTtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp2?
Vtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpVtraining_model_1/deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp2?
Xtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpXtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp2?
Wtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpWtraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp2?
Ttraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpTtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp2?
Vtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpVtraining_model_1/deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp2?
Ztraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpZtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp2?
Ytraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpYtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp2?
Ltraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpLtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp2?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpNtraining_model_1/deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp2?
Otraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpOtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp2?
Ntraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpNtraining_model_1/deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp2?
Mtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpMtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp2?
Otraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpOtraining_model_1/deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp2?
Rtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpRtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp2?
Qtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpQtraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp2?
Ltraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpLtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp2?
Ntraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpNtraining_model_1/deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp2?
Qtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpQtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp2?
Ptraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpPtraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images:

_output_shapes
: 
??
?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5665566

imagesK
1deep_learning_conv__convolution_1_keras_4_5665504:?
1deep_learning_conv__convolution_1_keras_4_5665506:K
1deep_learning_conv__convolution_2_keras_3_5665512:?
1deep_learning_conv__convolution_2_keras_3_5665514:=
)deep_learning_fc__dense_1_keras_7_5665520:
??8
)deep_learning_fc__dense_1_keras_7_5665522:	?=
)deep_learning_fc__dense_3_keras_9_5665528:
??8
)deep_learning_fc__dense_3_keras_9_5665530:	?=
*deep_learning_fc__dense_2_keras_10_5665536:	?8
*deep_learning_fc__dense_2_keras_10_5665538:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallStatefulPartitionedCallimages1deep_learning_conv__convolution_1_keras_4_56655041deep_learning_conv__convolution_1_keras_4_5665506*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_56651572C
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:21deep_learning_conv__convolution_2_keras_3_56655121deep_learning_conv__convolution_2_keras_3_5665514*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_56651062C
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_7_5665520)deep_learning_fc__dense_1_keras_7_5665522*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_56650552;
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_9_5665528)deep_learning_fc__dense_3_keras_9_5665530*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_56650022;
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall?
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2*deep_learning_fc__dense_2_keras_10_5665536*deep_learning_fc__dense_2_keras_10_5665538*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *h
fcRa
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_56649492<
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall?
IdentityIdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityimagesB^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9IdentityJdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_1_keras_7/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityCdeep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallB^deep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall;^deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 2?
Adeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_4/StatefulPartitionedCall2?
Adeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCallAdeep_learning_conv__convolution_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_7/StatefulPartitionedCall2x
:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall:deep_learning_fc__dense_2_keras_10/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_9/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages
?

?
)__inference_model_1_layer_call_fn_5666164
inputs_images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_imagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *M
fHRF
D__inference_model_1_layer_call_and_return_conditional_losses_56657532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images:

_output_shapes
: 
?)
?
 __inference__traced_save_5666936
file_prefixg
csavev2_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_kernel_read_readvariableope
asavev2_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_bias_read_readvariableopi
esavev2_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_kernel_read_readvariableopg
csavev2_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_bias_read_readvariableop^
Zsavev2_training_model_1_deep_learning_fc__dense_1_keras_7_dense_kernel_read_readvariableop\
Xsavev2_training_model_1_deep_learning_fc__dense_1_keras_7_dense_bias_read_readvariableop`
\savev2_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_kernel_read_readvariableop^
Zsavev2_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_bias_read_readvariableopa
]savev2_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_kernel_read_readvariableop_
[savev2_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_bias_read_readvariableop
savev2_const_3

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
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*)
value BB B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0csavev2_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_kernel_read_readvariableopasavev2_training_model_1_deep_learning_conv__convolution_1_keras_4_conv2d_bias_read_readvariableopesavev2_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_kernel_read_readvariableopcsavev2_training_model_1_deep_learning_conv__convolution_2_keras_3_conv2d_1_bias_read_readvariableopZsavev2_training_model_1_deep_learning_fc__dense_1_keras_7_dense_kernel_read_readvariableopXsavev2_training_model_1_deep_learning_fc__dense_1_keras_7_dense_bias_read_readvariableop\savev2_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_kernel_read_readvariableopZsavev2_training_model_1_deep_learning_fc__dense_3_keras_9_dense_1_bias_read_readvariableop]savev2_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_kernel_read_readvariableop[savev2_training_model_1_deep_learning_fc__dense_2_keras_10_dense_2_bias_read_readvariableopsavev2_const_3"/device:CPU:0*
_output_shapes
 *
dtypes
22
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

identity_1Identity_1:output:0*~
_input_shapesm
k: :::::
??:?:
??:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%	!

_output_shapes
:	?: 


_output_shapes
::

_output_shapes
: 
?
?
D__inference_model_1_layer_call_and_return_conditional_losses_5665643

inputs2
training_model_1_5665595:&
training_model_1_5665597:2
training_model_1_5665599:&
training_model_1_5665601:,
training_model_1_5665603:
??'
training_model_1_5665605:	?,
training_model_1_5665607:
??'
training_model_1_5665609:	?+
training_model_1_5665611:	?&
training_model_1_5665613:#
postprocessing_step_105_5665637#
postprocessing_step_105_5665639
identity??/postprocessing_step_105/StatefulPartitionedCall?(training_model_1/StatefulPartitionedCall?
!preprocessing_105/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_56646582#
!preprocessing_105/PartitionedCall?
(training_model_1/StatefulPartitionedCallStatefulPartitionedCall*preprocessing_105/PartitionedCall:output:0training_model_1_5665595training_model_1_5665597training_model_1_5665599training_model_1_5665601training_model_1_5665603training_model_1_5665605training_model_1_5665607training_model_1_5665609training_model_1_5665611training_model_1_5665613*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56648442*
(training_model_1/StatefulPartitionedCall?
/postprocessing_step_105/StatefulPartitionedCallStatefulPartitionedCall1training_model_1/StatefulPartitionedCall:output:0postprocessing_step_105_5665637postprocessing_step_105_5665639*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_566557721
/postprocessing_step_105/StatefulPartitionedCall?
IdentityIdentity8postprocessing_step_105/StatefulPartitionedCall:output:00^postprocessing_step_105/StatefulPartitionedCall)^training_model_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2b
/postprocessing_step_105/StatefulPartitionedCall/postprocessing_step_105/StatefulPartitionedCall2T
(training_model_1/StatefulPartitionedCall(training_model_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
D__inference_model_1_layer_call_and_return_conditional_losses_5665753

inputs2
training_model_1_5665705:&
training_model_1_5665707:2
training_model_1_5665709:&
training_model_1_5665711:,
training_model_1_5665713:
??'
training_model_1_5665715:	?,
training_model_1_5665717:
??'
training_model_1_5665719:	?+
training_model_1_5665721:	?&
training_model_1_5665723:#
postprocessing_step_105_5665747#
postprocessing_step_105_5665749
identity??/postprocessing_step_105/StatefulPartitionedCall?(training_model_1/StatefulPartitionedCall?
!preprocessing_105/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_56646582#
!preprocessing_105/PartitionedCall?
(training_model_1/StatefulPartitionedCallStatefulPartitionedCall*preprocessing_105/PartitionedCall:output:0training_model_1_5665705training_model_1_5665707training_model_1_5665709training_model_1_5665711training_model_1_5665713training_model_1_5665715training_model_1_5665717training_model_1_5665719training_model_1_5665721training_model_1_5665723*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56653042*
(training_model_1/StatefulPartitionedCall?
/postprocessing_step_105/StatefulPartitionedCallStatefulPartitionedCall1training_model_1/StatefulPartitionedCall:output:0postprocessing_step_105_5665747postprocessing_step_105_5665749*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *]
fXRV
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_566557721
/postprocessing_step_105/StatefulPartitionedCall?
IdentityIdentity8postprocessing_step_105/StatefulPartitionedCall:output:00^postprocessing_step_105/StatefulPartitionedCall)^training_model_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2b
/postprocessing_step_105/StatefulPartitionedCall/postprocessing_step_105/StatefulPartitionedCall2T
(training_model_1/StatefulPartitionedCall(training_model_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5664691

inputs?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddp
SigmoidSigmoidconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
K__inference_deep_learning_conv__convolution_2_keras_3_layer_call_fn_5666633
inputs_input!
unknown:
	unknown_0:
identity

identity_1

identity_2

identity_3??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_inputunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *j
_output_shapesX
V:::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *o
fjRh
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_56647202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?
P
3__inference_preprocessing_105_layer_call_fn_5664664
input_1
identity?
PartitionedCallPartitionedCallinput_1*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *W
fRRP
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_56646582
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1
?
?
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5666692
inputs_input8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten/Const?
flatten/ReshapeReshapeinputs_inputflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?
?
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5666598
inputs_inputA
'conv2d_1_conv2d_readvariableop_resource:6
(conv2d_1_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d_1/BiasAdd/ReadVariableOp?conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOp?
conv2d_1/Conv2DConv2Dinputs_input&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d_1/Conv2D?
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp?
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d_1/BiasAddr
SigmoidSigmoidconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?.
?
2__inference_training_model_1_layer_call_fn_5664909

images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:::?????????:?????????:??:	?:??????????:??????????:??:	?:??????????:??????????:?::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *V
fQRO
M__inference_training_model_1_layer_call_and_return_conditional_losses_56648442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity StatefulPartitionedCall:output:4^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity StatefulPartitionedCall:output:5^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity StatefulPartitionedCall:output:6^StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19Identity!StatefulPartitionedCall:output:19^StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity!StatefulPartitionedCall:output:20^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity!StatefulPartitionedCall:output:21^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages
??
?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5666260
inputs_imagesi
Odeep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource:^
Pdeep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource:k
Qdeep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource:`
Rdeep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource:Z
Fdeep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource:
??V
Gdeep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource:	?\
Hdeep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource:
??X
Ideep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource:	?\
Ideep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource:	?X
Jdeep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11
identity_12
identity_13
identity_14
identity_15
identity_16
identity_17
identity_18
identity_19
identity_20
identity_21??Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp??deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02H
Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp?
7deep_learning_conv__convolution_1_keras_4/conv2d/Conv2DConv2Dinputs_imagesNdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
29
7deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D?
Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02I
Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_4/conv2d/BiasAddBiasAdd@deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D:output:0Odeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2:
8deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd?
1deep_learning_conv__convolution_1_keras_4/SigmoidSigmoidAdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????23
1deep_learning_conv__convolution_1_keras_4/Sigmoid?
Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_4_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_4/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8deep_learning_conv__convolution_1_keras_4/ExpandDims/dim?
4deep_learning_conv__convolution_1_keras_4/ExpandDims
ExpandDimsKdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp:value:0Adeep_learning_conv__convolution_1_keras_4/ExpandDims/dim:output:0*
T0**
_output_shapes
:26
4deep_learning_conv__convolution_1_keras_4/ExpandDims?
Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_4_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp?
:deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:deep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim?
6deep_learning_conv__convolution_1_keras_4/ExpandDims_1
ExpandDimsMdeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp:value:0Cdeep_learning_conv__convolution_1_keras_4/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:28
6deep_learning_conv__convolution_1_keras_4/ExpandDims_1?
Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpReadVariableOpQdeep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02J
Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp?
9deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2DConv2D5deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0Pdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2;
9deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D?
Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpReadVariableOpRdeep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02K
Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp?
:deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAddBiasAddBdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D:output:0Qdeep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2<
:deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd?
1deep_learning_conv__convolution_2_keras_3/SigmoidSigmoidCdeep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????23
1deep_learning_conv__convolution_2_keras_3/Sigmoid?
Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpQdeep_learning_conv__convolution_2_keras_3_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp?
8deep_learning_conv__convolution_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8deep_learning_conv__convolution_2_keras_3/ExpandDims/dim?
4deep_learning_conv__convolution_2_keras_3/ExpandDims
ExpandDimsKdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp:value:0Adeep_learning_conv__convolution_2_keras_3/ExpandDims/dim:output:0*
T0**
_output_shapes
:26
4deep_learning_conv__convolution_2_keras_3/ExpandDims?
Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpRdeep_learning_conv__convolution_2_keras_3_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp?
:deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:deep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim?
6deep_learning_conv__convolution_2_keras_3/ExpandDims_1
ExpandDimsMdeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp:value:0Cdeep_learning_conv__convolution_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:28
6deep_learning_conv__convolution_2_keras_3/ExpandDims_1?
/deep_learning_fc__dense_1_keras_7/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   21
/deep_learning_fc__dense_1_keras_7/flatten/Const?
1deep_learning_fc__dense_1_keras_7/flatten/ReshapeReshape5deep_learning_conv__convolution_2_keras_3/Sigmoid:y:08deep_learning_fc__dense_1_keras_7/flatten/Const:output:0*
T0*(
_output_shapes
:??????????23
1deep_learning_fc__dense_1_keras_7/flatten/Reshape?
=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02?
=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp?
.deep_learning_fc__dense_1_keras_7/dense/MatMulMatMul:deep_learning_fc__dense_1_keras_7/flatten/Reshape:output:0Edeep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.deep_learning_fc__dense_1_keras_7/dense/MatMul?
>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp?
/deep_learning_fc__dense_1_keras_7/dense/BiasAddBiasAdd8deep_learning_fc__dense_1_keras_7/dense/MatMul:product:0Fdeep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/deep_learning_fc__dense_1_keras_7/dense/BiasAdd?
&deep_learning_fc__dense_1_keras_7/ReluRelu8deep_learning_fc__dense_1_keras_7/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&deep_learning_fc__dense_1_keras_7/Relu?
;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_7_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_1_keras_7/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_1_keras_7/ExpandDims/dim?
,deep_learning_fc__dense_1_keras_7/ExpandDims
ExpandDimsCdeep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_1_keras_7/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2.
,deep_learning_fc__dense_1_keras_7/ExpandDims?
=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_7_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_1_keras_7/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim?
.deep_learning_fc__dense_1_keras_7/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_1_keras_7/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?20
.deep_learning_fc__dense_1_keras_7/ExpandDims_1?
1deep_learning_fc__dense_3_keras_9/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   23
1deep_learning_fc__dense_3_keras_9/flatten_1/Const?
3deep_learning_fc__dense_3_keras_9/flatten_1/ReshapeReshape4deep_learning_fc__dense_1_keras_7/Relu:activations:0:deep_learning_fc__dense_3_keras_9/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????25
3deep_learning_fc__dense_3_keras_9/flatten_1/Reshape?
?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02A
?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?
0deep_learning_fc__dense_3_keras_9/dense_1/MatMulMatMul<deep_learning_fc__dense_3_keras_9/flatten_1/Reshape:output:0Gdeep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????22
0deep_learning_fc__dense_3_keras_9/dense_1/MatMul?
@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02B
@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_3_keras_9/dense_1/BiasAddBiasAdd:deep_learning_fc__dense_3_keras_9/dense_1/MatMul:product:0Hdeep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????23
1deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd?
&deep_learning_fc__dense_3_keras_9/ReluRelu:deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&deep_learning_fc__dense_3_keras_9/Relu?
;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_9_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_3_keras_9/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_3_keras_9/ExpandDims/dim?
,deep_learning_fc__dense_3_keras_9/ExpandDims
ExpandDimsCdeep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_3_keras_9/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2.
,deep_learning_fc__dense_3_keras_9/ExpandDims?
=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_9_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_3_keras_9/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim?
.deep_learning_fc__dense_3_keras_9/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_3_keras_9/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?20
.deep_learning_fc__dense_3_keras_9/ExpandDims_1?
2deep_learning_fc__dense_2_keras_10/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   24
2deep_learning_fc__dense_2_keras_10/flatten_2/Const?
4deep_learning_fc__dense_2_keras_10/flatten_2/ReshapeReshape4deep_learning_fc__dense_3_keras_9/Relu:activations:0;deep_learning_fc__dense_2_keras_10/flatten_2/Const:output:0*
T0*(
_output_shapes
:??????????26
4deep_learning_fc__dense_2_keras_10/flatten_2/Reshape?
@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02B
@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp?
1deep_learning_fc__dense_2_keras_10/dense_2/MatMulMatMul=deep_learning_fc__dense_2_keras_10/flatten_2/Reshape:output:0Hdeep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????23
1deep_learning_fc__dense_2_keras_10/dense_2/MatMul?
Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpReadVariableOpJdeep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02C
Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp?
2deep_learning_fc__dense_2_keras_10/dense_2/BiasAddBiasAdd;deep_learning_fc__dense_2_keras_10/dense_2/MatMul:product:0Ideep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????24
2deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd?
*deep_learning_fc__dense_2_keras_10/SoftmaxSoftmax;deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2,
*deep_learning_fc__dense_2_keras_10/Softmax?
<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_10_dense_2_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02>
<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?
1deep_learning_fc__dense_2_keras_10/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1deep_learning_fc__dense_2_keras_10/ExpandDims/dim?
-deep_learning_fc__dense_2_keras_10/ExpandDims
ExpandDimsDdeep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp:value:0:deep_learning_fc__dense_2_keras_10/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?2/
-deep_learning_fc__dense_2_keras_10/ExpandDims?
>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpReadVariableOpJdeep_learning_fc__dense_2_keras_10_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02@
>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp?
3deep_learning_fc__dense_2_keras_10/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 25
3deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim?
/deep_learning_fc__dense_2_keras_10/ExpandDims_1
ExpandDimsFdeep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp:value:0<deep_learning_fc__dense_2_keras_10/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:21
/deep_learning_fc__dense_2_keras_10/ExpandDims_1?
IdentityIdentity4deep_learning_fc__dense_2_keras_10/Softmax:softmax:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identityinputs_imagesD^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity=deep_learning_conv__convolution_1_keras_4/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity?deep_learning_conv__convolution_1_keras_4/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity5deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity5deep_learning_conv__convolution_1_keras_4/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity=deep_learning_conv__convolution_2_keras_3/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0**
_output_shapes
:2

Identity_6?

Identity_7Identity?deep_learning_conv__convolution_2_keras_3/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_7?

Identity_8Identity5deep_learning_conv__convolution_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_8?

Identity_9Identity5deep_learning_conv__convolution_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_9?
Identity_10Identity5deep_learning_fc__dense_1_keras_7/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2
Identity_10?
Identity_11Identity7deep_learning_fc__dense_1_keras_7/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2
Identity_11?
Identity_12Identity4deep_learning_fc__dense_1_keras_7/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_12?
Identity_13Identity4deep_learning_fc__dense_1_keras_7/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_13?
Identity_14Identity5deep_learning_fc__dense_3_keras_9/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity7deep_learning_fc__dense_3_keras_9/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity4deep_learning_fc__dense_3_keras_9/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity4deep_learning_fc__dense_3_keras_9/Relu:activations:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity6deep_learning_fc__dense_2_keras_10/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?2
Identity_18?
Identity_19Identity8deep_learning_fc__dense_2_keras_10/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity4deep_learning_fc__dense_2_keras_10/Softmax:softmax:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity4deep_learning_fc__dense_2_keras_10/Softmax:softmax:0D^deep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpD^deep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpJ^deep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpI^deep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=^deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp?^deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOpB^deep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpA^deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2
Identity_21"
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"#
identity_12Identity_12:output:0"#
identity_13Identity_13:output:0"#
identity_14Identity_14:output:0"#
identity_15Identity_15:output:0"#
identity_16Identity_16:output:0"#
identity_17Identity_17:output:0"#
identity_18Identity_18:output:0"#
identity_19Identity_19:output:0"!

identity_2Identity_2:output:0"#
identity_20Identity_20:output:0"#
identity_21Identity_21:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:?????????  : : : : : : : : : : 2?
Cdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOpCdeep_learning_conv__convolution_1_keras_4/ExpandDims/ReadVariableOp2?
Edeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOpEdeep_learning_conv__convolution_1_keras_4/ExpandDims_1/ReadVariableOp2?
Gdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOpGdeep_learning_conv__convolution_1_keras_4/conv2d/BiasAdd/ReadVariableOp2?
Fdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOpFdeep_learning_conv__convolution_1_keras_4/conv2d/Conv2D/ReadVariableOp2?
Cdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOpCdeep_learning_conv__convolution_2_keras_3/ExpandDims/ReadVariableOp2?
Edeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOpEdeep_learning_conv__convolution_2_keras_3/ExpandDims_1/ReadVariableOp2?
Ideep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOpIdeep_learning_conv__convolution_2_keras_3/conv2d_1/BiasAdd/ReadVariableOp2?
Hdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOpHdeep_learning_conv__convolution_2_keras_3/conv2d_1/Conv2D/ReadVariableOp2z
;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp;deep_learning_fc__dense_1_keras_7/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_1_keras_7/ExpandDims_1/ReadVariableOp2?
>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp>deep_learning_fc__dense_1_keras_7/dense/BiasAdd/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp=deep_learning_fc__dense_1_keras_7/dense/MatMul/ReadVariableOp2|
<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp<deep_learning_fc__dense_2_keras_10/ExpandDims/ReadVariableOp2?
>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp>deep_learning_fc__dense_2_keras_10/ExpandDims_1/ReadVariableOp2?
Adeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOpAdeep_learning_fc__dense_2_keras_10/dense_2/BiasAdd/ReadVariableOp2?
@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp@deep_learning_fc__dense_2_keras_10/dense_2/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp;deep_learning_fc__dense_3_keras_9/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_3_keras_9/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp@deep_learning_fc__dense_3_keras_9/dense_1/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp?deep_learning_fc__dense_3_keras_9/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images
?
?
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5664782

inputs:
&dense_1_matmul_readvariableop_resource:
??6
'dense_1_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputsflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense_1/BiasAdda
ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
k
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_5664658
input_1
identityc
IdentityIdentityinput_1*
T0*/
_output_shapes
:?????????  2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :X T
/
_output_shapes
:?????????  
!
_user_specified_name	input_1
?

?
%__inference_signature_wrapper_5665944

images!
unknown:
	unknown_0:#
	unknown_1:
	unknown_2:
	unknown_3:
??
	unknown_4:	?
	unknown_5:
??
	unknown_6:	?
	unknown_7:	?
	unknown_8:
	unknown_9

unknown_10
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*
Tin
2*
Tout
2*
_collective_manager_ids
 *#
_output_shapes
:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__wrapped_model_56646532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
?
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5666528
inputs_input?
%conv2d_conv2d_readvariableop_resource:4
&conv2d_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?conv2d/BiasAdd/ReadVariableOp?conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOp?
conv2d/Conv2DConv2Dinputs_input$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2
conv2d/Conv2D?
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp?
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2
conv2d/BiasAddp
SigmoidSigmoidconv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
ExpandDims/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDims!ExpandDims/ReadVariableOp:value:0ExpandDims/dim:output:0*
T0**
_output_shapes
:2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
ExpandDims_1/ReadVariableOpf
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims_1/dim?
ExpandDims_1
ExpandDims#ExpandDims_1/ReadVariableOp:value:0ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0**
_output_shapes
:2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????  : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp:] Y
/
_output_shapes
:?????????  
&
_user_specified_nameinputs/input"?L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
A
images7
serving_default_images:0?????????  I
postprocessing_step_105.
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
	variables
regularization_losses
trainable_variables
	keras_api
	
signatures
+?&call_and_return_all_conditional_losses
?_default_save_signature
?__call__"?
_tf_keras_network?{"name": "model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model_1", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "images"}, "name": "images", "inbound_nodes": []}, {"class_name": "Preprocessing", "config": {"preprocessing": "gASVNQIAAAAAAACMGnBlcmNlcHRpbGFicy5kYXRhLnNldHRpbmdzlIwWSW1hZ2VQcmVwcm9jZXNz\naW5nU3BlY5STlCmBlH2UKIwIX19kaWN0X1+UfZQojAZyZXNpemWUiIwLcmVzaXplX21vZGWUjAlh\ndXRvbWF0aWOUjA1yZXNpemVfaGVpZ2h0lE6MDHJlc2l6ZV93aWR0aJROjBVyZXNpemVfYXV0b21h\ndGljX21vZGWUjARtb2RllIwLcmFuZG9tX2ZsaXCUiYwQcmFuZG9tX2ZsaXBfbW9kZZROjBByYW5k\nb21fZmxpcF9zZWVklE6MD3JhbmRvbV9yb3RhdGlvbpSJjBRyYW5kb21fcm90YXRpb25fc2VlZJRO\njBZyYW5kb21fcm90YXRpb25fZmFjdG9ylE6MGXJhbmRvbV9yb3RhdGlvbl9maWxsX21vZGWUTowa\ncmFuZG9tX3JvdGF0aW9uX2ZpbGxfdmFsdWWUTowdcmFuZG9tX3JvdGF0aW9uX2ludGVycG9sYXRp\nb26UTowLcmFuZG9tX2Nyb3CUiYwQcmFuZG9tX2Nyb3Bfc2VlZJROjBJyYW5kb21fY3JvcF9oZWln\naHSUTowRcmFuZG9tX2Nyb3Bfd2lkdGiUTowJbm9ybWFsaXpllImMDm5vcm1hbGl6ZV9tb2RllE51\njA5fX2ZpZWxkc19zZXRfX5SPlChoB2gMaAiQjBxfX3ByaXZhdGVfYXR0cmlidXRlX3ZhbHVlc19f\nlH2UdWIu\n", "metadata": "gASVfgAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UjAtpbWFnZV9zaGFwZZSMM3RlbnNvcmZs\nb3cucHl0aG9uLnRyYWluaW5nLnRyYWNraW5nLmRhdGFfc3RydWN0dXJlc5SMC0xpc3RXcmFwcGVy\nlJOUXZQoSyBLIEsDZYWUUpRzhZRSlC4=\n"}, "name": "preprocessing_105", "inbound_nodes": [[["images", 0, 0, {}]]]}, {"class_name": "TrainingModel", "config": {"layer was saved without config": true}, "name": "training_model_1", "inbound_nodes": [{"images": ["preprocessing_105", 0, 0, {}]}]}, {"class_name": "PostprocessingStep", "config": {"preprocessing": "gAROLg==\n", "metadata": "gASVbAAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UKIwHbWFwcGluZ5RoAn2UKIwFYWxnYWWU\nSwCMB2NvbnRyb2yUSwGMBGN5c3SUSwKMBXNwb3JllEsDdYWUUpSMBWR0eXBllGgAjANzdHKUk5R1\nhZRSlC4=\n"}, "name": "postprocessing_step_105", "inbound_nodes": [[["training_model_1", 0, 0, {}]]]}], "input_layers": {"images": ["images", 0, 0]}, "output_layers": {"labels": ["postprocessing_step_105", 0, 0]}}, "shared_object_id": 3, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"images": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}, "is_graph_network": true, "save_spec": {"images": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "images"]}}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "images", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "images"}}
?

metadata
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_model?{"name": "preprocessing_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Preprocessing", "config": {"preprocessing": "gASVNQIAAAAAAACMGnBlcmNlcHRpbGFicy5kYXRhLnNldHRpbmdzlIwWSW1hZ2VQcmVwcm9jZXNz\naW5nU3BlY5STlCmBlH2UKIwIX19kaWN0X1+UfZQojAZyZXNpemWUiIwLcmVzaXplX21vZGWUjAlh\ndXRvbWF0aWOUjA1yZXNpemVfaGVpZ2h0lE6MDHJlc2l6ZV93aWR0aJROjBVyZXNpemVfYXV0b21h\ndGljX21vZGWUjARtb2RllIwLcmFuZG9tX2ZsaXCUiYwQcmFuZG9tX2ZsaXBfbW9kZZROjBByYW5k\nb21fZmxpcF9zZWVklE6MD3JhbmRvbV9yb3RhdGlvbpSJjBRyYW5kb21fcm90YXRpb25fc2VlZJRO\njBZyYW5kb21fcm90YXRpb25fZmFjdG9ylE6MGXJhbmRvbV9yb3RhdGlvbl9maWxsX21vZGWUTowa\ncmFuZG9tX3JvdGF0aW9uX2ZpbGxfdmFsdWWUTowdcmFuZG9tX3JvdGF0aW9uX2ludGVycG9sYXRp\nb26UTowLcmFuZG9tX2Nyb3CUiYwQcmFuZG9tX2Nyb3Bfc2VlZJROjBJyYW5kb21fY3JvcF9oZWln\naHSUTowRcmFuZG9tX2Nyb3Bfd2lkdGiUTowJbm9ybWFsaXpllImMDm5vcm1hbGl6ZV9tb2RllE51\njA5fX2ZpZWxkc19zZXRfX5SPlChoB2gMaAiQjBxfX3ByaXZhdGVfYXR0cmlidXRlX3ZhbHVlc19f\nlH2UdWIu\n", "metadata": "gASVfgAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UjAtpbWFnZV9zaGFwZZSMM3RlbnNvcmZs\nb3cucHl0aG9uLnRyYWluaW5nLnRyYWNraW5nLmRhdGFfc3RydWN0dXJlc5SMC0xpc3RXcmFwcGVy\nlJOUXZQoSyBLIEsDZYWUUpRzhZRSlC4=\n"}, "inbound_nodes": [[["images", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Preprocessing", "config": {"preprocessing": "gASVNQIAAAAAAACMGnBlcmNlcHRpbGFicy5kYXRhLnNldHRpbmdzlIwWSW1hZ2VQcmVwcm9jZXNz\naW5nU3BlY5STlCmBlH2UKIwIX19kaWN0X1+UfZQojAZyZXNpemWUiIwLcmVzaXplX21vZGWUjAlh\ndXRvbWF0aWOUjA1yZXNpemVfaGVpZ2h0lE6MDHJlc2l6ZV93aWR0aJROjBVyZXNpemVfYXV0b21h\ndGljX21vZGWUjARtb2RllIwLcmFuZG9tX2ZsaXCUiYwQcmFuZG9tX2ZsaXBfbW9kZZROjBByYW5k\nb21fZmxpcF9zZWVklE6MD3JhbmRvbV9yb3RhdGlvbpSJjBRyYW5kb21fcm90YXRpb25fc2VlZJRO\njBZyYW5kb21fcm90YXRpb25fZmFjdG9ylE6MGXJhbmRvbV9yb3RhdGlvbl9maWxsX21vZGWUTowa\ncmFuZG9tX3JvdGF0aW9uX2ZpbGxfdmFsdWWUTowdcmFuZG9tX3JvdGF0aW9uX2ludGVycG9sYXRp\nb26UTowLcmFuZG9tX2Nyb3CUiYwQcmFuZG9tX2Nyb3Bfc2VlZJROjBJyYW5kb21fY3JvcF9oZWln\naHSUTowRcmFuZG9tX2Nyb3Bfd2lkdGiUTowJbm9ybWFsaXpllImMDm5vcm1hbGl6ZV9tb2RllE51\njA5fX2ZpZWxkc19zZXRfX5SPlChoB2gMaAiQjBxfX3ByaXZhdGVfYXR0cmlidXRlX3ZhbHVlc19f\nlH2UdWIu\n", "metadata": "gASVfgAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UjAtpbWFnZV9zaGFwZZSMM3RlbnNvcmZs\nb3cucHl0aG9uLnRyYWluaW5nLnRyYWNraW5nLmRhdGFfc3RydWN0dXJlc5SMC0xpc3RXcmFwcGVy\nlJOUXZQoSyBLIEsDZYWUUpRzhZRSlC4=\n"}}}
?
_layers_by_id
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_model?{"name": "training_model_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "TrainingModel", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"images": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "images"]}}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "TrainingModel"}}
?

metadata
_lookup_table
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_model?{"name": "postprocessing_step_105", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "PostprocessingStep", "config": {"preprocessing": "gAROLg==\n", "metadata": "gASVbAAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UKIwHbWFwcGluZ5RoAn2UKIwFYWxnYWWU\nSwCMB2NvbnRyb2yUSwGMBGN5c3SUSwKMBXNwb3JllEsDdYWUUpSMBWR0eXBllGgAjANzdHKUk5R1\nhZRSlC4=\n"}, "inbound_nodes": [[["training_model_1", 0, 0, {}]]], "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "PostprocessingStep", "config": {"preprocessing": "gAROLg==\n", "metadata": "gASVbAAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UKIwHbWFwcGluZ5RoAn2UKIwFYWxnYWWU\nSwCMB2NvbnRyb2yUSwGMBGN5c3SUSwKMBXNwb3JllEsDdYWUUpSMBWR0eXBllGgAjANzdHKUk5R1\nhZRSlC4=\n"}}}
f
0
1
2
3
4
5
 6
!7
"8
#9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
4
5
 6
!7
"8
#9"
trackable_list_wrapper
?
	variables

$layers
%layer_metrics
regularization_losses
&layer_regularization_losses
'non_trainable_variables
trainable_variables
(metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
?serving_default"
signature_map
1
)image_shape"
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables

*layers
+layer_metrics
regularization_losses
,layer_regularization_losses
-non_trainable_variables
trainable_variables
.metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
g
/1
01632768966244
11632769061089
21632769076032
33"
trackable_dict_wrapper
f
0
1
2
3
4
5
 6
!7
"8
#9"
trackable_list_wrapper
 "
trackable_list_wrapper
f
0
1
2
3
4
5
 6
!7
"8
#9"
trackable_list_wrapper
?
	variables

4layers
5layer_metrics
regularization_losses
6layer_regularization_losses
7non_trainable_variables
trainable_variables
8metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-
9mapping"
trackable_dict_wrapper
U
:_initializer
?_create_resource
?_initialize
?_destroy_resourceR 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
	variables

;layers
<layer_metrics
regularization_losses
=layer_regularization_losses
>non_trainable_variables
trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
b:`2Htraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/kernel
T:R2Ftraining_model_1/deep_learning_conv__convolution_1_keras_4/conv2d/bias
d:b2Jtraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/kernel
V:T2Htraining_model_1/deep_learning_conv__convolution_2_keras_3/conv2d_1/bias
S:Q
??2?training_model_1/deep_learning_fc__dense_1_keras_7/dense/kernel
L:J?2=training_model_1/deep_learning_fc__dense_1_keras_7/dense/bias
U:S
??2Atraining_model_1/deep_learning_fc__dense_3_keras_9/dense_1/kernel
N:L?2?training_model_1/deep_learning_fc__dense_3_keras_9/dense_1/bias
U:S	?2Btraining_model_1/deep_learning_fc__dense_2_keras_10/dense_2/kernel
N:L2@training_model_1/deep_learning_fc__dense_2_keras_10/dense_2/bias
<
0
1
2
3"
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
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
@
_variables
Aconv

kernel
bias
B_outputs
C	variables
Dregularization_losses
Etrainable_variables
F	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "deep_learning_conv__convolution_1_keras_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningConv_Convolution_1Keras", "config": {"training": true}, "shared_object_id": 5, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}}
?
G
_variables
Hconv

kernel
bias
I_outputs
J	variables
Kregularization_losses
Ltrainable_variables
M	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "deep_learning_conv__convolution_2_keras_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningConv_Convolution_2Keras", "config": {"training": true}, "shared_object_id": 6, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 16, 16, 8]}}}
?
N
_variables
Oflatten
	Pdense

kernel
bias
Q_outputs
R	variables
Sregularization_losses
Ttrainable_variables
U	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "deep_learning_fc__dense_1_keras_7", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningFC_Dense_1Keras", "config": {"training": true}, "shared_object_id": 7, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 8, 8, 3]}}}
?
V
_variables
Wflatten
	Xdense

 kernel
!bias
Y_outputs
Z	variables
[regularization_losses
\trainable_variables
]	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "deep_learning_fc__dense_3_keras_9", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningFC_Dense_3Keras", "config": {"training": true}, "shared_object_id": 8, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 2048]}}}
?
^
_variables
_flatten
	`dense

"kernel
#bias
a_outputs
b	variables
cregularization_losses
dtrainable_variables
e	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "deep_learning_fc__dense_2_keras_10", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningFC_Dense_2Keras", "config": {"training": true}, "shared_object_id": 9, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 2048]}}}
C
/0
01
12
23
34"
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
trackable_dict_wrapper
"
_generic_user_object
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
trackable_dict_wrapper
?


kernel
bias
f	variables
gregularization_losses
htrainable_variables
i	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
 "
trackable_dict_wrapper
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
C	variables

jlayers
klayer_metrics
Dregularization_losses
llayer_regularization_losses
mnon_trainable_variables
Etrainable_variables
nmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?


kernel
bias
o	variables
pregularization_losses
qtrainable_variables
r	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 14}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 15}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 16, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 8}}, "shared_object_id": 17}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 8]}}
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
J	variables

slayers
tlayer_metrics
Kregularization_losses
ulayer_regularization_losses
vnon_trainable_variables
Ltrainable_variables
wmetrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
x	variables
yregularization_losses
ztrainable_variables
{	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 19}}
?

kernel
bias
|	variables
}regularization_losses
~trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 2048, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 20}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 21}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 22, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 192}}, "shared_object_id": 23}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 192]}}
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
R	variables
?layers
?layer_metrics
Sregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
Ttrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 25}}
?

 kernel
!bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 2048, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 28, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2048}}, "shared_object_id": 29}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
 "
trackable_dict_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
Z	variables
?layers
?layer_metrics
[regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
\trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 31}}
?

"kernel
#bias
?	variables
?regularization_losses
?trainable_variables
?	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 32}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 33}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2048}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
b	variables
?layers
?layer_metrics
cregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
dtrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
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
f	variables
?layers
?layer_metrics
gregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
htrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
A0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
o	variables
?layers
?layer_metrics
pregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
qtrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
'
H0"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
x	variables
?layers
?layer_metrics
yregularization_losses
 ?layer_regularization_losses
?non_trainable_variables
ztrainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
|	variables
?layers
?layer_metrics
}regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
~trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
O0
P1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
W0
X1"
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
trackable_list_wrapper
 "
trackable_list_wrapper
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
?	variables
?layers
?layer_metrics
?regularization_losses
 ?layer_regularization_losses
?non_trainable_variables
?trainable_variables
?metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.
_0
`1"
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
?2?
D__inference_model_1_layer_call_and_return_conditional_losses_5666025
D__inference_model_1_layer_call_and_return_conditional_losses_5666106
D__inference_model_1_layer_call_and_return_conditional_losses_5665861
D__inference_model_1_layer_call_and_return_conditional_losses_5665913?
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
"__inference__wrapped_model_5664653?
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
annotations? *<?9
7?4
2
images(?%
images?????????  
?2?
)__inference_model_1_layer_call_fn_5665670
)__inference_model_1_layer_call_fn_5666135
)__inference_model_1_layer_call_fn_5666164
)__inference_model_1_layer_call_fn_5665809?
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
?2?
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_5664658?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????  
?2?
3__inference_preprocessing_105_layer_call_fn_5664664?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *.?+
)?&
input_1?????????  
?2?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5666260
M__inference_training_model_1_layer_call_and_return_conditional_losses_5666356
M__inference_training_model_1_layer_call_and_return_conditional_losses_5665501
M__inference_training_model_1_layer_call_and_return_conditional_losses_5665566?
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
?2?
2__inference_training_model_1_layer_call_fn_5664909
2__inference_training_model_1_layer_call_fn_5666423
2__inference_training_model_1_layer_call_fn_5666490
2__inference_training_model_1_layer_call_fn_5665436?
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
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_5665577?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????
?2?
9__inference_postprocessing_step_105_layer_call_fn_5665587?
???
FullArgSpec
args?
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *&?#
!?
input_1?????????
?B?
%__inference_signature_wrapper_5665944images"?
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
 
?2?
__inference__creator_5666495?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
 __inference__initializer_5666503?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_5666508?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5666528
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5666548?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_deep_learning_conv__convolution_1_keras_4_layer_call_fn_5666563
K__inference_deep_learning_conv__convolution_1_keras_4_layer_call_fn_5666578?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5666598
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5666618?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
K__inference_deep_learning_conv__convolution_2_keras_3_layer_call_fn_5666633
K__inference_deep_learning_conv__convolution_2_keras_3_layer_call_fn_5666648?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5666670
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5666692?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_deep_learning_fc__dense_1_keras_7_layer_call_fn_5666707
C__inference_deep_learning_fc__dense_1_keras_7_layer_call_fn_5666722?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5666744
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5666766?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
C__inference_deep_learning_fc__dense_3_keras_9_layer_call_fn_5666781
C__inference_deep_learning_fc__dense_3_keras_9_layer_call_fn_5666796?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5666818
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5666840?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
D__inference_deep_learning_fc__dense_2_keras_10_layer_call_fn_5666855
D__inference_deep_learning_fc__dense_2_keras_10_layer_call_fn_5666870?
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
p

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
?2??
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
	J
Const
J	
Const_1
J	
Const_28
__inference__creator_5666495?

? 
? "? :
__inference__destroyer_5666508?

? 
? "? C
 __inference__initializer_5666503???

? 
? "? ?
"__inference__wrapped_model_5664653? !"#?F?C
<?9
7?4
2
images(?%
images?????????  
? "M?J
H
postprocessing_step_105-?*
postprocessing_step_105??????????
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5666528?O?L
E?B
<?9
7
input.?+
inputs/input?????????  
p 
? "???
???
%
W ?
0/W

b?
0/b
4
output*?'
0/output?????????
6
preview+?(
	0/preview?????????
? ?
f__inference_deep_learning_conv__convolution_1_keras_4_layer_call_and_return_conditional_losses_5666548?O?L
E?B
<?9
7
input.?+
inputs/input?????????  
p
? "???
???
%
W ?
0/W

b?
0/b
4
output*?'
0/output?????????
6
preview+?(
	0/preview?????????
? ?
K__inference_deep_learning_conv__convolution_1_keras_4_layer_call_fn_5666563?O?L
E?B
<?9
7
input.?+
inputs/input?????????  
p 
? "???
#
W?
W

b?
b
2
output(?%
output?????????
4
preview)?&
preview??????????
K__inference_deep_learning_conv__convolution_1_keras_4_layer_call_fn_5666578?O?L
E?B
<?9
7
input.?+
inputs/input?????????  
p
? "???
#
W?
W

b?
b
2
output(?%
output?????????
4
preview)?&
preview??????????
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5666598?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p 
? "???
???
%
W ?
0/W

b?
0/b
4
output*?'
0/output?????????
6
preview+?(
	0/preview?????????
? ?
f__inference_deep_learning_conv__convolution_2_keras_3_layer_call_and_return_conditional_losses_5666618?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p
? "???
???
%
W ?
0/W

b?
0/b
4
output*?'
0/output?????????
6
preview+?(
	0/preview?????????
? ?
K__inference_deep_learning_conv__convolution_2_keras_3_layer_call_fn_5666633?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p 
? "???
#
W?
W

b?
b
2
output(?%
output?????????
4
preview)?&
preview??????????
K__inference_deep_learning_conv__convolution_2_keras_3_layer_call_fn_5666648?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p
? "???
#
W?
W

b?
b
2
output(?%
output?????????
4
preview)?&
preview??????????
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5666670?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p 
? "???
???

W?
0/W??

b?
0/b	?
-
output#? 
0/output??????????
/
preview$?!
	0/preview??????????
? ?
^__inference_deep_learning_fc__dense_1_keras_7_layer_call_and_return_conditional_losses_5666692?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p
? "???
???

W?
0/W??

b?
0/b	?
-
output#? 
0/output??????????
/
preview$?!
	0/preview??????????
? ?
C__inference_deep_learning_fc__dense_1_keras_7_layer_call_fn_5666707?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p 
? "???

W?
W??

b?
b	?
+
output!?
output??????????
-
preview"?
preview???????????
C__inference_deep_learning_fc__dense_1_keras_7_layer_call_fn_5666722?O?L
E?B
<?9
7
input.?+
inputs/input?????????
p
? "???

W?
W??

b?
b	?
+
output!?
output??????????
-
preview"?
preview???????????
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5666818?"#H?E
>?;
5?2
0
input'?$
inputs/input??????????
p 
? "???
???

W?
0/W?

b?
0/b
,
output"?
0/output?????????
.
preview#? 
	0/preview?????????
? ?
___inference_deep_learning_fc__dense_2_keras_10_layer_call_and_return_conditional_losses_5666840?"#H?E
>?;
5?2
0
input'?$
inputs/input??????????
p
? "???
???

W?
0/W?

b?
0/b
,
output"?
0/output?????????
.
preview#? 
	0/preview?????????
? ?
D__inference_deep_learning_fc__dense_2_keras_10_layer_call_fn_5666855?"#H?E
>?;
5?2
0
input'?$
inputs/input??????????
p 
? "???

W?
W?

b?
b
*
output ?
output?????????
,
preview!?
preview??????????
D__inference_deep_learning_fc__dense_2_keras_10_layer_call_fn_5666870?"#H?E
>?;
5?2
0
input'?$
inputs/input??????????
p
? "???

W?
W?

b?
b
*
output ?
output?????????
,
preview!?
preview??????????
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5666744? !H?E
>?;
5?2
0
input'?$
inputs/input??????????
p 
? "???
???

W?
0/W??

b?
0/b	?
-
output#? 
0/output??????????
/
preview$?!
	0/preview??????????
? ?
^__inference_deep_learning_fc__dense_3_keras_9_layer_call_and_return_conditional_losses_5666766? !H?E
>?;
5?2
0
input'?$
inputs/input??????????
p
? "???
???

W?
0/W??

b?
0/b	?
-
output#? 
0/output??????????
/
preview$?!
	0/preview??????????
? ?
C__inference_deep_learning_fc__dense_3_keras_9_layer_call_fn_5666781? !H?E
>?;
5?2
0
input'?$
inputs/input??????????
p 
? "???

W?
W??

b?
b	?
+
output!?
output??????????
-
preview"?
preview???????????
C__inference_deep_learning_fc__dense_3_keras_9_layer_call_fn_5666796? !H?E
>?;
5?2
0
input'?$
inputs/input??????????
p
? "???

W?
W??

b?
b	?
+
output!?
output??????????
-
preview"?
preview???????????
D__inference_model_1_layer_call_and_return_conditional_losses_5665861? !"#?N?K
D?A
7?4
2
images(?%
images?????????  
p 

 
? "7?4
-?*
(
labels?
0/labels?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5665913? !"#?N?K
D?A
7?4
2
images(?%
images?????????  
p

 
? "7?4
-?*
(
labels?
0/labels?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5666025? !"#?U?R
K?H
>?;
9
images/?,
inputs/images?????????  
p 

 
? "7?4
-?*
(
labels?
0/labels?????????
? ?
D__inference_model_1_layer_call_and_return_conditional_losses_5666106? !"#?U?R
K?H
>?;
9
images/?,
inputs/images?????????  
p

 
? "7?4
-?*
(
labels?
0/labels?????????
? ?
)__inference_model_1_layer_call_fn_5665670? !"#?N?K
D?A
7?4
2
images(?%
images?????????  
p 

 
? "+?(
&
labels?
labels??????????
)__inference_model_1_layer_call_fn_5665809? !"#?N?K
D?A
7?4
2
images(?%
images?????????  
p

 
? "+?(
&
labels?
labels??????????
)__inference_model_1_layer_call_fn_5666135? !"#?U?R
K?H
>?;
9
images/?,
inputs/images?????????  
p 

 
? "+?(
&
labels?
labels??????????
)__inference_model_1_layer_call_fn_5666164? !"#?U?R
K?H
>?;
9
images/?,
inputs/images?????????  
p

 
? "+?(
&
labels?
labels??????????
T__inference_postprocessing_step_105_layer_call_and_return_conditional_losses_5665577Z?0?-
&?#
!?
input_1?????????
? "!?
?
0?????????
? ?
9__inference_postprocessing_step_105_layer_call_fn_5665587M?0?-
&?#
!?
input_1?????????
? "???????????
N__inference_preprocessing_105_layer_call_and_return_conditional_losses_5664658i8?5
.?+
)?&
input_1?????????  
? "-?*
#? 
0?????????  
? ?
3__inference_preprocessing_105_layer_call_fn_5664664\8?5
.?+
)?&
input_1?????????  
? " ??????????  ?
%__inference_signature_wrapper_5665944? !"#?A?>
? 
7?4
2
images(?%
images?????????  "M?J
H
postprocessing_step_105-?*
postprocessing_step_105??????????
M__inference_training_model_1_layer_call_and_return_conditional_losses_5665501?

 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p 
? "?
??

?	??	
3?0
.
labels$?!

0/0/labels?????????
?	??	
B
0=?:
8
output.?+
0/1/0/output?????????  
?
1???
)
W$?!
0/1/1/W

b?
0/1/1/b
8
output.?+
0/1/1/output?????????
:
preview/?,
0/1/1/preview?????????
?
1632768966244???
5
W0?-
0/1/1632768966244/W
)
b$?!
0/1/1632768966244/b
D
output:?7
0/1/1632768966244/output?????????
F
preview;?8
0/1/1632768966244/preview?????????
?
1632769061089???
/
W*?'
0/1/1632769061089/W??
*
b%?"
0/1/1632769061089/b	?
=
output3?0
0/1/1632769061089/output??????????
?
preview4?1
0/1/1632769061089/preview??????????
?
1632769076032???
/
W*?'
0/1/1632769076032/W??
*
b%?"
0/1/1632769076032/b	?
=
output3?0
0/1/1632769076032/output??????????
?
preview4?1
0/1/1632769076032/preview??????????
?
3???
"
W?
0/1/3/W?

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5665566?

 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p
? "?
??

?	??	
3?0
.
labels$?!

0/0/labels?????????
?	??	
B
0=?:
8
output.?+
0/1/0/output?????????  
?
1???
)
W$?!
0/1/1/W

b?
0/1/1/b
8
output.?+
0/1/1/output?????????
:
preview/?,
0/1/1/preview?????????
?
1632768966244???
5
W0?-
0/1/1632768966244/W
)
b$?!
0/1/1632768966244/b
D
output:?7
0/1/1632768966244/output?????????
F
preview;?8
0/1/1632768966244/preview?????????
?
1632769061089???
/
W*?'
0/1/1632769061089/W??
*
b%?"
0/1/1632769061089/b	?
=
output3?0
0/1/1632769061089/output??????????
?
preview4?1
0/1/1632769061089/preview??????????
?
1632769076032???
/
W*?'
0/1/1632769076032/W??
*
b%?"
0/1/1632769076032/b	?
=
output3?0
0/1/1632769076032/output??????????
?
preview4?1
0/1/1632769076032/preview??????????
?
3???
"
W?
0/1/3/W?

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5666260?

 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p 
? "?
??

?	??	
3?0
.
labels$?!

0/0/labels?????????
?	??	
B
0=?:
8
output.?+
0/1/0/output?????????  
?
1???
)
W$?!
0/1/1/W

b?
0/1/1/b
8
output.?+
0/1/1/output?????????
:
preview/?,
0/1/1/preview?????????
?
1632768966244???
5
W0?-
0/1/1632768966244/W
)
b$?!
0/1/1632768966244/b
D
output:?7
0/1/1632768966244/output?????????
F
preview;?8
0/1/1632768966244/preview?????????
?
1632769061089???
/
W*?'
0/1/1632769061089/W??
*
b%?"
0/1/1632769061089/b	?
=
output3?0
0/1/1632769061089/output??????????
?
preview4?1
0/1/1632769061089/preview??????????
?
1632769076032???
/
W*?'
0/1/1632769076032/W??
*
b%?"
0/1/1632769076032/b	?
=
output3?0
0/1/1632769076032/output??????????
?
preview4?1
0/1/1632769076032/preview??????????
?
3???
"
W?
0/1/3/W?

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?
M__inference_training_model_1_layer_call_and_return_conditional_losses_5666356?

 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p
? "?
??

?	??	
3?0
.
labels$?!

0/0/labels?????????
?	??	
B
0=?:
8
output.?+
0/1/0/output?????????  
?
1???
)
W$?!
0/1/1/W

b?
0/1/1/b
8
output.?+
0/1/1/output?????????
:
preview/?,
0/1/1/preview?????????
?
1632768966244???
5
W0?-
0/1/1632768966244/W
)
b$?!
0/1/1632768966244/b
D
output:?7
0/1/1632768966244/output?????????
F
preview;?8
0/1/1632768966244/preview?????????
?
1632769061089???
/
W*?'
0/1/1632769061089/W??
*
b%?"
0/1/1632769061089/b	?
=
output3?0
0/1/1632769061089/output??????????
?
preview4?1
0/1/1632769061089/preview??????????
?
1632769076032???
/
W*?'
0/1/1632769076032/W??
*
b%?"
0/1/1632769076032/b	?
=
output3?0
0/1/1632769076032/output??????????
?
preview4?1
0/1/1632769076032/preview??????????
?
3???
"
W?
0/1/3/W?

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?

2__inference_training_model_1_layer_call_fn_5664909?

 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p 
? "?	??	
1?.
,
labels"?
0/labels?????????
?	??	
@
0;?8
6
output,?)

1/0/output?????????  
?
1???
'
W"?
1/1/W

b?
1/1/b
6
output,?)

1/1/output?????????
8
preview-?*
1/1/preview?????????
?
1632768966244???
3
W.?+
1/1632768966244/W
'
b"?
1/1632768966244/b
B
output8?5
1/1632768966244/output?????????
D
preview9?6
1/1632768966244/preview?????????
?
1632769061089???
-
W(?%
1/1632769061089/W??
(
b#? 
1/1632769061089/b	?
;
output1?.
1/1632769061089/output??????????
=
preview2?/
1/1632769061089/preview??????????
?
1632769076032???
-
W(?%
1/1632769076032/W??
(
b#? 
1/1632769076032/b	?
;
output1?.
1/1632769076032/output??????????
=
preview2?/
1/1632769076032/preview??????????
?
3???
 
W?
1/3/W?

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview??????????

2__inference_training_model_1_layer_call_fn_5665436?

 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p
? "?	??	
1?.
,
labels"?
0/labels?????????
?	??	
@
0;?8
6
output,?)

1/0/output?????????  
?
1???
'
W"?
1/1/W

b?
1/1/b
6
output,?)

1/1/output?????????
8
preview-?*
1/1/preview?????????
?
1632768966244???
3
W.?+
1/1632768966244/W
'
b"?
1/1632768966244/b
B
output8?5
1/1632768966244/output?????????
D
preview9?6
1/1632768966244/preview?????????
?
1632769061089???
-
W(?%
1/1632769061089/W??
(
b#? 
1/1632769061089/b	?
;
output1?.
1/1632769061089/output??????????
=
preview2?/
1/1632769061089/preview??????????
?
1632769076032???
-
W(?%
1/1632769076032/W??
(
b#? 
1/1632769076032/b	?
;
output1?.
1/1632769076032/output??????????
=
preview2?/
1/1632769076032/preview??????????
?
3???
 
W?
1/3/W?

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview??????????

2__inference_training_model_1_layer_call_fn_5666423?

 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p 
? "?	??	
1?.
,
labels"?
0/labels?????????
?	??	
@
0;?8
6
output,?)

1/0/output?????????  
?
1???
'
W"?
1/1/W

b?
1/1/b
6
output,?)

1/1/output?????????
8
preview-?*
1/1/preview?????????
?
1632768966244???
3
W.?+
1/1632768966244/W
'
b"?
1/1632768966244/b
B
output8?5
1/1632768966244/output?????????
D
preview9?6
1/1632768966244/preview?????????
?
1632769061089???
-
W(?%
1/1632769061089/W??
(
b#? 
1/1632769061089/b	?
;
output1?.
1/1632769061089/output??????????
=
preview2?/
1/1632769061089/preview??????????
?
1632769076032???
-
W(?%
1/1632769076032/W??
(
b#? 
1/1632769076032/b	?
;
output1?.
1/1632769076032/output??????????
=
preview2?/
1/1632769076032/preview??????????
?
3???
 
W?
1/3/W?

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview??????????

2__inference_training_model_1_layer_call_fn_5666490?

 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p
? "?	??	
1?.
,
labels"?
0/labels?????????
?	??	
@
0;?8
6
output,?)

1/0/output?????????  
?
1???
'
W"?
1/1/W

b?
1/1/b
6
output,?)

1/1/output?????????
8
preview-?*
1/1/preview?????????
?
1632768966244???
3
W.?+
1/1632768966244/W
'
b"?
1/1632768966244/b
B
output8?5
1/1632768966244/output?????????
D
preview9?6
1/1632768966244/preview?????????
?
1632769061089???
-
W(?%
1/1632769061089/W??
(
b#? 
1/1632769061089/b	?
;
output1?.
1/1632769061089/output??????????
=
preview2?/
1/1632769061089/preview??????????
?
1632769076032???
-
W(?%
1/1632769076032/W??
(
b#? 
1/1632769076032/b	?
;
output1?.
1/1632769076032/output??????????
=
preview2?/
1/1632769076032/preview??????????
?
3???
 
W?
1/3/W?

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview?????????