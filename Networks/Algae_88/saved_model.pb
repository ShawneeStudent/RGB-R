??
??
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
shared_name	5419781*
value_dtype0
?
Ftraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*W
shared_nameHFtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernel
?
Ztraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernel/Read/ReadVariableOpReadVariableOpFtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernel*&
_output_shapes
:*
dtype0
?
Dtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*U
shared_nameFDtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias
?
Xtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias/Read/ReadVariableOpReadVariableOpDtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias*
_output_shapes
:*
dtype0
?
?training_model/deep_learning_fc__dense_3_keras_2/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *P
shared_nameA?training_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel
?
Straining_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel/Read/ReadVariableOpReadVariableOp?training_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel*
_output_shapes

:@ *
dtype0
?
=training_model/deep_learning_fc__dense_3_keras_2/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *N
shared_name?=training_model/deep_learning_fc__dense_3_keras_2/dense_2/bias
?
Qtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/bias/Read/ReadVariableOpReadVariableOp=training_model/deep_learning_fc__dense_3_keras_2/dense_2/bias*
_output_shapes
: *
dtype0
?
?training_model/deep_learning_fc__dense_4_keras_1/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*P
shared_nameA?training_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel
?
Straining_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel/Read/ReadVariableOpReadVariableOp?training_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel*
_output_shapes
:	?@*
dtype0
?
=training_model/deep_learning_fc__dense_4_keras_1/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*N
shared_name?=training_model/deep_learning_fc__dense_4_keras_1/dense_1/bias
?
Qtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/bias/Read/ReadVariableOpReadVariableOp=training_model/deep_learning_fc__dense_4_keras_1/dense_1/bias*
_output_shapes
:@*
dtype0
?
=training_model/deep_learning_fc__dense_1_keras_1/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*N
shared_name?=training_model/deep_learning_fc__dense_1_keras_1/dense/kernel
?
Qtraining_model/deep_learning_fc__dense_1_keras_1/dense/kernel/Read/ReadVariableOpReadVariableOp=training_model/deep_learning_fc__dense_1_keras_1/dense/kernel* 
_output_shapes
:
??*
dtype0
?
;training_model/deep_learning_fc__dense_1_keras_1/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*L
shared_name=;training_model/deep_learning_fc__dense_1_keras_1/dense/bias
?
Otraining_model/deep_learning_fc__dense_1_keras_1/dense/bias/Read/ReadVariableOpReadVariableOp;training_model/deep_learning_fc__dense_1_keras_1/dense/bias*
_output_shapes	
:?*
dtype0
?
?training_model/deep_learning_fc__dense_2_keras_3/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *P
shared_nameA?training_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel
?
Straining_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel/Read/ReadVariableOpReadVariableOp?training_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel*
_output_shapes

: *
dtype0
?
=training_model/deep_learning_fc__dense_2_keras_3/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*N
shared_name?=training_model/deep_learning_fc__dense_2_keras_3/dense_3/bias
?
Qtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/bias/Read/ReadVariableOpReadVariableOp=training_model/deep_learning_fc__dense_2_keras_3/dense_3/bias*
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
__inference_<lambda>_5422123
&
NoOpNoOp^StatefulPartitionedCall
?=
Const_3Const"/device:CPU:0*
_output_shapes
: *
dtype0*?=
value?<B?< B?<
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
 
`

metadata
regularization_losses
	variables
trainable_variables
	keras_api
e
_layers_by_id
regularization_losses
	variables
trainable_variables
	keras_api
s
metadata
_lookup_table
regularization_losses
	variables
trainable_variables
	keras_api
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
regularization_losses
$metrics
	variables
%non_trainable_variables

&layers
'layer_metrics
trainable_variables
(layer_regularization_losses
 

)image_shape
 
 
 
?
regularization_losses
*metrics
	variables
+non_trainable_variables

,layers
-layer_metrics
trainable_variables
.layer_regularization_losses
;
/1
02
11632609604090
21632592784093
33
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
regularization_losses
4metrics
	variables
5non_trainable_variables

6layers
7layer_metrics
trainable_variables
8layer_regularization_losses

9mapping

:_initializer
 
 
 
?
regularization_losses
;metrics
	variables
<non_trainable_variables

=layers
>layer_metrics
trainable_variables
?layer_regularization_losses
??
VARIABLE_VALUEFtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE
?~
VARIABLE_VALUEDtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE?training_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=training_model/deep_learning_fc__dense_3_keras_2/dense_2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE?training_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=training_model/deep_learning_fc__dense_4_keras_1/dense_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=training_model/deep_learning_fc__dense_1_keras_1/dense/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUE;training_model/deep_learning_fc__dense_1_keras_1/dense/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE?training_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUE=training_model/deep_learning_fc__dense_2_keras_3/dense_3/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
 
 

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
?
@
_variables
Aconv

kernel
bias
B_outputs
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
?
G
_variables
Hflatten
	Idense

 kernel
!bias
J_outputs
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
?
O
_variables
Pflatten
	Qdense

kernel
bias
R_outputs
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
?
W
_variables
Xflatten
	Ydense

kernel
bias
Z_outputs
[regularization_losses
\	variables
]trainable_variables
^	keras_api
?
_
_variables
`flatten
	adense

"kernel
#bias
b_outputs
cregularization_losses
d	variables
etrainable_variables
f	keras_api
 
 
#
/0
21
12
03
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
h

kernel
bias
gregularization_losses
h	variables
itrainable_variables
j	keras_api
 
 

0
1

0
1
?
Cregularization_losses
kmetrics
D	variables
lnon_trainable_variables

mlayers
nlayer_metrics
Etrainable_variables
olayer_regularization_losses
 
R
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
h

 kernel
!bias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
 
 

 0
!1

 0
!1
?
Kregularization_losses
xmetrics
L	variables
ynon_trainable_variables

zlayers
{layer_metrics
Mtrainable_variables
|layer_regularization_losses
 
S
}regularization_losses
~	variables
trainable_variables
?	keras_api
l

kernel
bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 

0
1

0
1
?
Sregularization_losses
?metrics
T	variables
?non_trainable_variables
?layers
?layer_metrics
Utrainable_variables
 ?layer_regularization_losses
 
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

kernel
bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 

0
1

0
1
?
[regularization_losses
?metrics
\	variables
?non_trainable_variables
?layers
?layer_metrics
]trainable_variables
 ?layer_regularization_losses
 
V
?regularization_losses
?	variables
?trainable_variables
?	keras_api
l

"kernel
#bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
 
 

"0
#1

"0
#1
?
cregularization_losses
?metrics
d	variables
?non_trainable_variables
?layers
?layer_metrics
etrainable_variables
 ?layer_regularization_losses
 

0
1

0
1
?
gregularization_losses
?metrics
h	variables
?non_trainable_variables
?layers
?layer_metrics
itrainable_variables
 ?layer_regularization_losses
 
 

A0
 
 
 
 
 
?
pregularization_losses
?metrics
q	variables
?non_trainable_variables
?layers
?layer_metrics
rtrainable_variables
 ?layer_regularization_losses
 

 0
!1

 0
!1
?
tregularization_losses
?metrics
u	variables
?non_trainable_variables
?layers
?layer_metrics
vtrainable_variables
 ?layer_regularization_losses
 
 

H0
I1
 
 
 
 
 
?
}regularization_losses
?metrics
~	variables
?non_trainable_variables
?layers
?layer_metrics
trainable_variables
 ?layer_regularization_losses
 

0
1

0
1
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
 
 

P0
Q1
 
 
 
 
 
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
 

0
1

0
1
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
 
 

X0
Y1
 
 
 
 
 
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
 

"0
#1

"0
#1
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
 
 

`0
a1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
?
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_imagesFtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernelDtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias=training_model/deep_learning_fc__dense_1_keras_1/dense/kernel;training_model/deep_learning_fc__dense_1_keras_1/dense/bias?training_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel=training_model/deep_learning_fc__dense_4_keras_1/dense_1/bias?training_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel=training_model/deep_learning_fc__dense_3_keras_2/dense_2/bias?training_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel=training_model/deep_learning_fc__dense_2_keras_3/dense_3/bias
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
%__inference_signature_wrapper_5421177
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameZtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernel/Read/ReadVariableOpXtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias/Read/ReadVariableOpStraining_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel/Read/ReadVariableOpQtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/bias/Read/ReadVariableOpStraining_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel/Read/ReadVariableOpQtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/bias/Read/ReadVariableOpQtraining_model/deep_learning_fc__dense_1_keras_1/dense/kernel/Read/ReadVariableOpOtraining_model/deep_learning_fc__dense_1_keras_1/dense/bias/Read/ReadVariableOpStraining_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel/Read/ReadVariableOpQtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/bias/Read/ReadVariableOpConst_3*
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
 __inference__traced_save_5422181
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filenameFtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernelDtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias?training_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel=training_model/deep_learning_fc__dense_3_keras_2/dense_2/bias?training_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel=training_model/deep_learning_fc__dense_4_keras_1/dense_1/bias=training_model/deep_learning_fc__dense_1_keras_1/dense/kernel;training_model/deep_learning_fc__dense_1_keras_1/dense/bias?training_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel=training_model/deep_learning_fc__dense_2_keras_3/dense_3/bias*
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
#__inference__traced_restore_5422221ס
?
O
2__inference_preprocessing_35_layer_call_fn_5419893
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
GPU 2J 8? *V
fQRO
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_54198872
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
??
?
B__inference_model_layer_call_and_return_conditional_losses_5421401
inputs_imagesx
^training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource:m
_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource:i
Utraining_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource:
??e
Vtraining_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource:	?j
Wtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource:	?@f
Xtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource:@i
Wtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource:@ f
Xtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource: i
Wtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource: f
Xtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource:E
Apostprocessing_step_35_none_lookup_lookuptablefindv2_table_handleF
Bpostprocessing_step_35_none_lookup_lookuptablefindv2_default_value
identity??4postprocessing_step_35/None_Lookup/LookupTableFindV2?Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpReadVariableOp^training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02W
Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?
Ftraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2DConv2Dinputs_images]training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2H
Ftraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D?
Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpReadVariableOp_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?
Gtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAddBiasAddOtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D:output:0^training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2I
Gtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd?
@training_model/deep_learning_conv__convolution_1_keras_2/SigmoidSigmoidPtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2B
@training_model/deep_learning_conv__convolution_1_keras_2/Sigmoid?
Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpReadVariableOp^training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02T
Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?
Gtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dim?
Ctraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims
ExpandDimsZtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp:value:0Ptraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dim:output:0*
T0**
_output_shapes
:2E
Ctraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims?
Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpReadVariableOp_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02V
Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?
Itraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Itraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim?
Etraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1
ExpandDims\training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp:value:0Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2G
Etraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1?
>training_model/deep_learning_fc__dense_1_keras_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>training_model/deep_learning_fc__dense_1_keras_1/flatten/Const?
@training_model/deep_learning_fc__dense_1_keras_1/flatten/ReshapeReshapeDtraining_model/deep_learning_conv__convolution_1_keras_2/Sigmoid:y:0Gtraining_model/deep_learning_fc__dense_1_keras_1/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2B
@training_model/deep_learning_fc__dense_1_keras_1/flatten/Reshape?
Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpReadVariableOpUtraining_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02N
Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?
=training_model/deep_learning_fc__dense_1_keras_1/dense/MatMulMatMulItraining_model/deep_learning_fc__dense_1_keras_1/flatten/Reshape:output:0Ttraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2?
=training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul?
Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpReadVariableOpVtraining_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02O
Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?
>training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAddBiasAddGtraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul:product:0Utraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2@
>training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd?
5training_model/deep_learning_fc__dense_1_keras_1/ReluReluGtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????27
5training_model/deep_learning_fc__dense_1_keras_1/Relu?
Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpReadVariableOpUtraining_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02L
Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dim?
;training_model/deep_learning_fc__dense_1_keras_1/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2=
;training_model/deep_learning_fc__dense_1_keras_1/ExpandDims?
Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpVtraining_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02N
Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2?
=training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1?
@training_model/deep_learning_fc__dense_4_keras_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2B
@training_model/deep_learning_fc__dense_4_keras_1/flatten_1/Const?
Btraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/ReshapeReshapeCtraining_model/deep_learning_fc__dense_1_keras_1/Relu:activations:0Itraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2D
Btraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/Reshape?
Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02P
Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
?training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMulMatMulKtraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/Reshape:output:0Vtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2A
?training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul?
Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Q
Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?
@training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAddBiasAddItraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul:product:0Wtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2B
@training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd?
5training_model/deep_learning_fc__dense_4_keras_1/ReluReluItraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@27
5training_model/deep_learning_fc__dense_4_keras_1/Relu?
Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02L
Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dim?
;training_model/deep_learning_fc__dense_4_keras_1/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?@2=
;training_model/deep_learning_fc__dense_4_keras_1/ExpandDims?
Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02N
Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:@2?
=training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1?
@training_model/deep_learning_fc__dense_3_keras_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   2B
@training_model/deep_learning_fc__dense_3_keras_2/flatten_2/Const?
Btraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/ReshapeReshapeCtraining_model/deep_learning_fc__dense_4_keras_1/Relu:activations:0Itraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@2D
Btraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/Reshape?
Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02P
Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?
?training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMulMatMulKtraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/Reshape:output:0Vtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2A
?training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul?
Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02Q
Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?
@training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAddBiasAddItraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul:product:0Wtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2B
@training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd?
5training_model/deep_learning_fc__dense_3_keras_2/ReluReluItraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 27
5training_model/deep_learning_fc__dense_3_keras_2/Relu?
Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02L
Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dim?
;training_model/deep_learning_fc__dense_3_keras_2/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
:@ 2=
;training_model/deep_learning_fc__dense_3_keras_2/ExpandDims?
Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02N
Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

: 2?
=training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1?
@training_model/deep_learning_fc__dense_2_keras_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2B
@training_model/deep_learning_fc__dense_2_keras_3/flatten_3/Const?
Btraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/ReshapeReshapeCtraining_model/deep_learning_fc__dense_3_keras_2/Relu:activations:0Itraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 2D
Btraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/Reshape?
Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02P
Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?
?training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMulMatMulKtraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/Reshape:output:0Vtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2A
?training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul?
Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02Q
Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?
@training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAddBiasAddItraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul:product:0Wtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2B
@training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd?
8training_model/deep_learning_fc__dense_2_keras_3/SigmoidSigmoidItraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2:
8training_model/deep_learning_fc__dense_2_keras_3/Sigmoid?
Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02L
Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dim?
;training_model/deep_learning_fc__dense_2_keras_3/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: 2=
;training_model/deep_learning_fc__dense_2_keras_3/ExpandDims?
Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02N
Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2?
=training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1?
'postprocessing_step_35/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'postprocessing_step_35/ArgMax/dimension?
postprocessing_step_35/ArgMaxArgMax<training_model/deep_learning_fc__dense_2_keras_3/Sigmoid:y:00postprocessing_step_35/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
postprocessing_step_35/ArgMax?
postprocessing_step_35/CastCast&postprocessing_step_35/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2
postprocessing_step_35/Cast?
4postprocessing_step_35/None_Lookup/LookupTableFindV2LookupTableFindV2Apostprocessing_step_35_none_lookup_lookuptablefindv2_table_handlepostprocessing_step_35/Cast:y:0Bpostprocessing_step_35_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????26
4postprocessing_step_35/None_Lookup/LookupTableFindV2?
IdentityIdentity=postprocessing_step_35/None_Lookup/LookupTableFindV2:values:05^postprocessing_step_35/None_Lookup/LookupTableFindV2S^training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpU^training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpW^training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpV^training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpK^training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpN^training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpM^training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpK^training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpP^training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpO^training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpK^training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpP^training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpO^training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpK^training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpP^training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpO^training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2l
4postprocessing_step_35/None_Lookup/LookupTableFindV24postprocessing_step_35/None_Lookup/LookupTableFindV22?
Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpRtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp2?
Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpTtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp2?
Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpVtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp2?
Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpUtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp2?
Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpMtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpLtraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp2?
Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpOtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp2?
Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpNtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp2?
Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpOtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp2?
Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpNtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp2?
Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpOtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp2?
Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpNtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:^ Z
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
%__inference_signature_wrapper_5421177

images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
"__inference__wrapped_model_54198822
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
?
?
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5420233

inputs8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAdd`
ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
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
T0*"
_output_shapes
:@ 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
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

: 2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*"
_output_shapes
:@ 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5420286

inputs9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputsflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAdd`
ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
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
:?@2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
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

:@2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?@2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:@2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5422093
inputs_input8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOps
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
flatten_3/Const?
flatten_3/ReshapeReshapeinputs_inputflatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
flatten_3/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddi
SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
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
T0*"
_output_shapes
: 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
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
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*"
_output_shapes
: 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:U Q
'
_output_shapes
:????????? 
&
_user_specified_nameinputs/input
??
?
K__inference_training_model_layer_call_and_return_conditional_losses_5421633
inputs_imagesi
Odeep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource:^
Pdeep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource:Z
Fdeep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource:
??V
Gdeep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource:	?[
Hdeep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource:	?@W
Ideep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource:@Z
Hdeep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource:@ W
Ideep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource: Z
Hdeep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource: W
Ideep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource:
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
identity_21??Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp??deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp??deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp??deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02H
Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?
7deep_learning_conv__convolution_1_keras_2/conv2d/Conv2DConv2Dinputs_imagesNdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
29
7deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D?
Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02I
Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_2/conv2d/BiasAddBiasAdd@deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D:output:0Odeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2:
8deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd?
1deep_learning_conv__convolution_1_keras_2/SigmoidSigmoidAdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????23
1deep_learning_conv__convolution_1_keras_2/Sigmoid?
Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8deep_learning_conv__convolution_1_keras_2/ExpandDims/dim?
4deep_learning_conv__convolution_1_keras_2/ExpandDims
ExpandDimsKdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp:value:0Adeep_learning_conv__convolution_1_keras_2/ExpandDims/dim:output:0*
T0**
_output_shapes
:26
4deep_learning_conv__convolution_1_keras_2/ExpandDims?
Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?
:deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim?
6deep_learning_conv__convolution_1_keras_2/ExpandDims_1
ExpandDimsMdeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp:value:0Cdeep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:28
6deep_learning_conv__convolution_1_keras_2/ExpandDims_1?
/deep_learning_fc__dense_1_keras_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   21
/deep_learning_fc__dense_1_keras_1/flatten/Const?
1deep_learning_fc__dense_1_keras_1/flatten/ReshapeReshape5deep_learning_conv__convolution_1_keras_2/Sigmoid:y:08deep_learning_fc__dense_1_keras_1/flatten/Const:output:0*
T0*(
_output_shapes
:??????????23
1deep_learning_fc__dense_1_keras_1/flatten/Reshape?
=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02?
=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?
.deep_learning_fc__dense_1_keras_1/dense/MatMulMatMul:deep_learning_fc__dense_1_keras_1/flatten/Reshape:output:0Edeep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.deep_learning_fc__dense_1_keras_1/dense/MatMul?
>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?
/deep_learning_fc__dense_1_keras_1/dense/BiasAddBiasAdd8deep_learning_fc__dense_1_keras_1/dense/MatMul:product:0Fdeep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/deep_learning_fc__dense_1_keras_1/dense/BiasAdd?
&deep_learning_fc__dense_1_keras_1/ReluRelu8deep_learning_fc__dense_1_keras_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&deep_learning_fc__dense_1_keras_1/Relu?
;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_1_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_1_keras_1/ExpandDims/dim?
,deep_learning_fc__dense_1_keras_1/ExpandDims
ExpandDimsCdeep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_1_keras_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2.
,deep_learning_fc__dense_1_keras_1/ExpandDims?
=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_1_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim?
.deep_learning_fc__dense_1_keras_1/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?20
.deep_learning_fc__dense_1_keras_1/ExpandDims_1?
1deep_learning_fc__dense_4_keras_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1deep_learning_fc__dense_4_keras_1/flatten_1/Const?
3deep_learning_fc__dense_4_keras_1/flatten_1/ReshapeReshape4deep_learning_fc__dense_1_keras_1/Relu:activations:0:deep_learning_fc__dense_4_keras_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????25
3deep_learning_fc__dense_4_keras_1/flatten_1/Reshape?
?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02A
?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
0deep_learning_fc__dense_4_keras_1/dense_1/MatMulMatMul<deep_learning_fc__dense_4_keras_1/flatten_1/Reshape:output:0Gdeep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@22
0deep_learning_fc__dense_4_keras_1/dense_1/MatMul?
@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_4_keras_1/dense_1/BiasAddBiasAdd:deep_learning_fc__dense_4_keras_1/dense_1/MatMul:product:0Hdeep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@23
1deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd?
&deep_learning_fc__dense_4_keras_1/ReluRelu:deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2(
&deep_learning_fc__dense_4_keras_1/Relu?
;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02=
;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_4_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_4_keras_1/ExpandDims/dim?
,deep_learning_fc__dense_4_keras_1/ExpandDims
ExpandDimsCdeep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_4_keras_1/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?@2.
,deep_learning_fc__dense_4_keras_1/ExpandDims?
=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02?
=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_4_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim?
.deep_learning_fc__dense_4_keras_1/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:@20
.deep_learning_fc__dense_4_keras_1/ExpandDims_1?
1deep_learning_fc__dense_3_keras_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   23
1deep_learning_fc__dense_3_keras_2/flatten_2/Const?
3deep_learning_fc__dense_3_keras_2/flatten_2/ReshapeReshape4deep_learning_fc__dense_4_keras_1/Relu:activations:0:deep_learning_fc__dense_3_keras_2/flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@25
3deep_learning_fc__dense_3_keras_2/flatten_2/Reshape?
?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02A
?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?
0deep_learning_fc__dense_3_keras_2/dense_2/MatMulMatMul<deep_learning_fc__dense_3_keras_2/flatten_2/Reshape:output:0Gdeep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 22
0deep_learning_fc__dense_3_keras_2/dense_2/MatMul?
@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02B
@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_3_keras_2/dense_2/BiasAddBiasAdd:deep_learning_fc__dense_3_keras_2/dense_2/MatMul:product:0Hdeep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 23
1deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd?
&deep_learning_fc__dense_3_keras_2/ReluRelu:deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2(
&deep_learning_fc__dense_3_keras_2/Relu?
;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02=
;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_3_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_3_keras_2/ExpandDims/dim?
,deep_learning_fc__dense_3_keras_2/ExpandDims
ExpandDimsCdeep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_3_keras_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
:@ 2.
,deep_learning_fc__dense_3_keras_2/ExpandDims?
=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02?
=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_3_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim?
.deep_learning_fc__dense_3_keras_2/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

: 20
.deep_learning_fc__dense_3_keras_2/ExpandDims_1?
1deep_learning_fc__dense_2_keras_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    23
1deep_learning_fc__dense_2_keras_3/flatten_3/Const?
3deep_learning_fc__dense_2_keras_3/flatten_3/ReshapeReshape4deep_learning_fc__dense_3_keras_2/Relu:activations:0:deep_learning_fc__dense_2_keras_3/flatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 25
3deep_learning_fc__dense_2_keras_3/flatten_3/Reshape?
?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02A
?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?
0deep_learning_fc__dense_2_keras_3/dense_3/MatMulMatMul<deep_learning_fc__dense_2_keras_3/flatten_3/Reshape:output:0Gdeep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
0deep_learning_fc__dense_2_keras_3/dense_3/MatMul?
@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02B
@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_2_keras_3/dense_3/BiasAddBiasAdd:deep_learning_fc__dense_2_keras_3/dense_3/MatMul:product:0Hdeep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????23
1deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd?
)deep_learning_fc__dense_2_keras_3/SigmoidSigmoid:deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2+
)deep_learning_fc__dense_2_keras_3/Sigmoid?
;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02=
;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_2_keras_3/ExpandDims/dim?
,deep_learning_fc__dense_2_keras_3/ExpandDims
ExpandDimsCdeep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_2_keras_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: 2.
,deep_learning_fc__dense_2_keras_3/ExpandDims?
=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim?
.deep_learning_fc__dense_2_keras_3/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:20
.deep_learning_fc__dense_2_keras_3/ExpandDims_1?
IdentityIdentity-deep_learning_fc__dense_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identityinputs_imagesD^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity=deep_learning_conv__convolution_1_keras_2/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity?deep_learning_conv__convolution_1_keras_2/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity5deep_learning_conv__convolution_1_keras_2/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity5deep_learning_conv__convolution_1_keras_2/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity5deep_learning_fc__dense_3_keras_2/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7Identity7deep_learning_fc__dense_3_keras_2/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_7?

Identity_8Identity4deep_learning_fc__dense_3_keras_2/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9Identity4deep_learning_fc__dense_3_keras_2/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10Identity5deep_learning_fc__dense_4_keras_1/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11Identity7deep_learning_fc__dense_4_keras_1/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:@2
Identity_11?
Identity_12Identity4deep_learning_fc__dense_4_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13Identity4deep_learning_fc__dense_4_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14Identity5deep_learning_fc__dense_1_keras_1/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity7deep_learning_fc__dense_1_keras_1/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity4deep_learning_fc__dense_1_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity4deep_learning_fc__dense_1_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity5deep_learning_fc__dense_2_keras_3/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*"
_output_shapes
: 2
Identity_18?
Identity_19Identity7deep_learning_fc__dense_2_keras_3/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity-deep_learning_fc__dense_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity-deep_learning_fc__dense_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
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
Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpCdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp2?
Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpEdeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp2?
Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpGdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp2?
Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpFdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp2z
;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp2?
>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images
?
?
B__inference_model_layer_call_and_return_conditional_losses_5421094

images0
training_model_5421046:$
training_model_5421048:*
training_model_5421050:
??%
training_model_5421052:	?)
training_model_5421054:	?@$
training_model_5421056:@(
training_model_5421058:@ $
training_model_5421060: (
training_model_5421062: $
training_model_5421064:"
postprocessing_step_35_5421088"
postprocessing_step_35_5421090
identity??.postprocessing_step_35/StatefulPartitionedCall?&training_model/StatefulPartitionedCall?
 preprocessing_35/PartitionedCallPartitionedCallimages*
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
GPU 2J 8? *V
fQRO
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_54198872"
 preprocessing_35/PartitionedCall?
&training_model/StatefulPartitionedCallStatefulPartitionedCall)preprocessing_35/PartitionedCall:output:0training_model_5421046training_model_5421048training_model_5421050training_model_5421052training_model_5421054training_model_5421056training_model_5421058training_model_5421060training_model_5421062training_model_5421064*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54200752(
&training_model/StatefulPartitionedCall?
.postprocessing_step_35/StatefulPartitionedCallStatefulPartitionedCall/training_model/StatefulPartitionedCall:output:0postprocessing_step_35_5421088postprocessing_step_35_5421090*
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
GPU 2J 8? *\
fWRU
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_542081020
.postprocessing_step_35/StatefulPartitionedCall?
IdentityIdentity7postprocessing_step_35/StatefulPartitionedCall:output:0/^postprocessing_step_35/StatefulPartitionedCall'^training_model/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2`
.postprocessing_step_35/StatefulPartitionedCall.postprocessing_step_35/StatefulPartitionedCall2P
&training_model/StatefulPartitionedCall&training_model/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
?
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5421893
inputs_input8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeinputs_inputflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
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
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?
?
C__inference_deep_learning_fc__dense_2_keras_3_layer_call_fn_5422056
inputs_input
unknown: 
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
 *R
_output_shapes@
>: ::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_54200442
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
: 2

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
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:????????? 
&
_user_specified_nameinputs/input
?
?
C__inference_deep_learning_fc__dense_3_keras_2_layer_call_fn_5421982
inputs_input
unknown:@ 
	unknown_0: 
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
 *R
_output_shapes@
>:@ : :????????? :????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_54200132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
:@ 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????@
&
_user_specified_nameinputs/input
?
?
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5421799
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
?
C__inference_deep_learning_fc__dense_4_keras_1_layer_call_fn_5421908
inputs_input
unknown:	?@
	unknown_0:@
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
?:?@:@:?????????@:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_54199822
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?
?
__inference_<lambda>_5422123:
6key_value_init5419780_lookuptableimportv2_table_handle2
.key_value_init5419780_lookuptableimportv2_keys4
0key_value_init5419780_lookuptableimportv2_values
identity??)key_value_init5419780/LookupTableImportV2?
)key_value_init5419780/LookupTableImportV2LookupTableImportV26key_value_init5419780_lookuptableimportv2_table_handle.key_value_init5419780_lookuptableimportv2_keys0key_value_init5419780_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2+
)key_value_init5419780/LookupTableImportV2S
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
Const}
IdentityIdentityConst:output:0*^key_value_init5419780/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init5419780/LookupTableImportV2)key_value_init5419780/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?(
?
 __inference__traced_save_5422181
file_prefixe
asavev2_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_kernel_read_readvariableopc
_savev2_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_bias_read_readvariableop^
Zsavev2_training_model_deep_learning_fc__dense_3_keras_2_dense_2_kernel_read_readvariableop\
Xsavev2_training_model_deep_learning_fc__dense_3_keras_2_dense_2_bias_read_readvariableop^
Zsavev2_training_model_deep_learning_fc__dense_4_keras_1_dense_1_kernel_read_readvariableop\
Xsavev2_training_model_deep_learning_fc__dense_4_keras_1_dense_1_bias_read_readvariableop\
Xsavev2_training_model_deep_learning_fc__dense_1_keras_1_dense_kernel_read_readvariableopZ
Vsavev2_training_model_deep_learning_fc__dense_1_keras_1_dense_bias_read_readvariableop^
Zsavev2_training_model_deep_learning_fc__dense_2_keras_3_dense_3_kernel_read_readvariableop\
Xsavev2_training_model_deep_learning_fc__dense_2_keras_3_dense_3_bias_read_readvariableop
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
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0asavev2_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_kernel_read_readvariableop_savev2_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_bias_read_readvariableopZsavev2_training_model_deep_learning_fc__dense_3_keras_2_dense_2_kernel_read_readvariableopXsavev2_training_model_deep_learning_fc__dense_3_keras_2_dense_2_bias_read_readvariableopZsavev2_training_model_deep_learning_fc__dense_4_keras_1_dense_1_kernel_read_readvariableopXsavev2_training_model_deep_learning_fc__dense_4_keras_1_dense_1_bias_read_readvariableopXsavev2_training_model_deep_learning_fc__dense_1_keras_1_dense_kernel_read_readvariableopVsavev2_training_model_deep_learning_fc__dense_1_keras_1_dense_bias_read_readvariableopZsavev2_training_model_deep_learning_fc__dense_2_keras_3_dense_3_kernel_read_readvariableopXsavev2_training_model_deep_learning_fc__dense_2_keras_3_dense_3_bias_read_readvariableopsavev2_const_3"/device:CPU:0*
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

identity_1Identity_1:output:0*s
_input_shapesb
`: :::@ : :	?@:@:
??:?: :: 2(
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
::$ 

_output_shapes

:@ : 

_output_shapes
: :%!

_output_shapes
:	?@: 

_output_shapes
:@:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:$	 

_output_shapes

: : 


_output_shapes
::

_output_shapes
: 
?
?
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5421945
inputs_input9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputs_inputflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAdd`
ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
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
:?@2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
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

:@2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?@2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:@2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?

?
'__inference_model_layer_call_fn_5421206
inputs_images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_54208762
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
?
K__inference_deep_learning_conv__convolution_1_keras_2_layer_call_fn_5421764
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_54199202
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
'__inference_model_layer_call_fn_5421042

images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_54209862
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
??
?

K__inference_training_model_layer_call_and_return_conditional_losses_5420734

imagesK
1deep_learning_conv__convolution_1_keras_2_5420672:?
1deep_learning_conv__convolution_1_keras_2_5420674:=
)deep_learning_fc__dense_1_keras_1_5420680:
??8
)deep_learning_fc__dense_1_keras_1_5420682:	?<
)deep_learning_fc__dense_4_keras_1_5420688:	?@7
)deep_learning_fc__dense_4_keras_1_5420690:@;
)deep_learning_fc__dense_3_keras_2_5420696:@ 7
)deep_learning_fc__dense_3_keras_2_5420698: ;
)deep_learning_fc__dense_2_keras_3_5420704: 7
)deep_learning_fc__dense_2_keras_3_5420706:
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
identity_21??Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallStatefulPartitionedCallimages1deep_learning_conv__convolution_1_keras_2_54206721deep_learning_conv__convolution_1_keras_2_5420674*
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_54199202C
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_1_5420680)deep_learning_fc__dense_1_keras_1_5420682*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_54199512;
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_4_keras_1_5420688)deep_learning_fc__dense_4_keras_1_5420690*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?@:@:?????????@:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_54199822;
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_2_5420696)deep_learning_fc__dense_3_keras_2_5420698*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>:@ : :????????? :????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_54200132;
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_2_keras_3_5420704)deep_learning_fc__dense_2_keras_3_5420706*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>: ::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_54200442;
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?
IdentityIdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityimagesB^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
: 2
Identity_18?
Identity_19IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
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
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall2v
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages
?
?
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5422019
inputs_input8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputs_inputflatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAdd`
ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
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
T0*"
_output_shapes
:@ 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
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

: 2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*"
_output_shapes
:@ 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:U Q
'
_output_shapes
:?????????@
&
_user_specified_nameinputs/input
?
?
 __inference__initializer_5421744:
6key_value_init5419780_lookuptableimportv2_table_handle2
.key_value_init5419780_lookuptableimportv2_keys4
0key_value_init5419780_lookuptableimportv2_values
identity??)key_value_init5419780/LookupTableImportV2?
)key_value_init5419780/LookupTableImportV2LookupTableImportV26key_value_init5419780_lookuptableimportv2_table_handle.key_value_init5419780_lookuptableimportv2_keys0key_value_init5419780_lookuptableimportv2_values*	
Tin0*

Tout0*
_output_shapes
 2+
)key_value_init5419780/LookupTableImportV2P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Const}
IdentityIdentityConst:output:0*^key_value_init5419780/LookupTableImportV2*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2V
)key_value_init5419780/LookupTableImportV2)key_value_init5419780/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
??
?
K__inference_training_model_layer_call_and_return_conditional_losses_5421731
inputs_imagesi
Odeep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource:^
Pdeep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource:Z
Fdeep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource:
??V
Gdeep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource:	?[
Hdeep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource:	?@W
Ideep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource:@Z
Hdeep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource:@ W
Ideep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource: Z
Hdeep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource: W
Ideep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource:
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
identity_21??Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp??deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp??deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp??deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02H
Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?
7deep_learning_conv__convolution_1_keras_2/conv2d/Conv2DConv2Dinputs_imagesNdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
29
7deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D?
Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02I
Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_2/conv2d/BiasAddBiasAdd@deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D:output:0Odeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2:
8deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd?
1deep_learning_conv__convolution_1_keras_2/SigmoidSigmoidAdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????23
1deep_learning_conv__convolution_1_keras_2/Sigmoid?
Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpReadVariableOpOdeep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02E
Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?
8deep_learning_conv__convolution_1_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2:
8deep_learning_conv__convolution_1_keras_2/ExpandDims/dim?
4deep_learning_conv__convolution_1_keras_2/ExpandDims
ExpandDimsKdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp:value:0Adeep_learning_conv__convolution_1_keras_2/ExpandDims/dim:output:0*
T0**
_output_shapes
:26
4deep_learning_conv__convolution_1_keras_2/ExpandDims?
Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpReadVariableOpPdeep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02G
Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?
:deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2<
:deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim?
6deep_learning_conv__convolution_1_keras_2/ExpandDims_1
ExpandDimsMdeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp:value:0Cdeep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:28
6deep_learning_conv__convolution_1_keras_2/ExpandDims_1?
/deep_learning_fc__dense_1_keras_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   21
/deep_learning_fc__dense_1_keras_1/flatten/Const?
1deep_learning_fc__dense_1_keras_1/flatten/ReshapeReshape5deep_learning_conv__convolution_1_keras_2/Sigmoid:y:08deep_learning_fc__dense_1_keras_1/flatten/Const:output:0*
T0*(
_output_shapes
:??????????23
1deep_learning_fc__dense_1_keras_1/flatten/Reshape?
=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02?
=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?
.deep_learning_fc__dense_1_keras_1/dense/MatMulMatMul:deep_learning_fc__dense_1_keras_1/flatten/Reshape:output:0Edeep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????20
.deep_learning_fc__dense_1_keras_1/dense/MatMul?
>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02@
>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?
/deep_learning_fc__dense_1_keras_1/dense/BiasAddBiasAdd8deep_learning_fc__dense_1_keras_1/dense/MatMul:product:0Fdeep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????21
/deep_learning_fc__dense_1_keras_1/dense/BiasAdd?
&deep_learning_fc__dense_1_keras_1/ReluRelu8deep_learning_fc__dense_1_keras_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2(
&deep_learning_fc__dense_1_keras_1/Relu?
;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpReadVariableOpFdeep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02=
;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_1_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_1_keras_1/ExpandDims/dim?
,deep_learning_fc__dense_1_keras_1/ExpandDims
ExpandDimsCdeep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_1_keras_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2.
,deep_learning_fc__dense_1_keras_1/ExpandDims?
=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpGdeep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02?
=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_1_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim?
.deep_learning_fc__dense_1_keras_1/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?20
.deep_learning_fc__dense_1_keras_1/ExpandDims_1?
1deep_learning_fc__dense_4_keras_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   23
1deep_learning_fc__dense_4_keras_1/flatten_1/Const?
3deep_learning_fc__dense_4_keras_1/flatten_1/ReshapeReshape4deep_learning_fc__dense_1_keras_1/Relu:activations:0:deep_learning_fc__dense_4_keras_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????25
3deep_learning_fc__dense_4_keras_1/flatten_1/Reshape?
?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02A
?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
0deep_learning_fc__dense_4_keras_1/dense_1/MatMulMatMul<deep_learning_fc__dense_4_keras_1/flatten_1/Reshape:output:0Gdeep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@22
0deep_learning_fc__dense_4_keras_1/dense_1/MatMul?
@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02B
@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_4_keras_1/dense_1/BiasAddBiasAdd:deep_learning_fc__dense_4_keras_1/dense_1/MatMul:product:0Hdeep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@23
1deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd?
&deep_learning_fc__dense_4_keras_1/ReluRelu:deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2(
&deep_learning_fc__dense_4_keras_1/Relu?
;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02=
;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_4_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_4_keras_1/ExpandDims/dim?
,deep_learning_fc__dense_4_keras_1/ExpandDims
ExpandDimsCdeep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_4_keras_1/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?@2.
,deep_learning_fc__dense_4_keras_1/ExpandDims?
=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02?
=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_4_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim?
.deep_learning_fc__dense_4_keras_1/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:@20
.deep_learning_fc__dense_4_keras_1/ExpandDims_1?
1deep_learning_fc__dense_3_keras_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   23
1deep_learning_fc__dense_3_keras_2/flatten_2/Const?
3deep_learning_fc__dense_3_keras_2/flatten_2/ReshapeReshape4deep_learning_fc__dense_4_keras_1/Relu:activations:0:deep_learning_fc__dense_3_keras_2/flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@25
3deep_learning_fc__dense_3_keras_2/flatten_2/Reshape?
?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02A
?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?
0deep_learning_fc__dense_3_keras_2/dense_2/MatMulMatMul<deep_learning_fc__dense_3_keras_2/flatten_2/Reshape:output:0Gdeep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 22
0deep_learning_fc__dense_3_keras_2/dense_2/MatMul?
@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02B
@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_3_keras_2/dense_2/BiasAddBiasAdd:deep_learning_fc__dense_3_keras_2/dense_2/MatMul:product:0Hdeep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 23
1deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd?
&deep_learning_fc__dense_3_keras_2/ReluRelu:deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2(
&deep_learning_fc__dense_3_keras_2/Relu?
;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02=
;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_3_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_3_keras_2/ExpandDims/dim?
,deep_learning_fc__dense_3_keras_2/ExpandDims
ExpandDimsCdeep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_3_keras_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
:@ 2.
,deep_learning_fc__dense_3_keras_2/ExpandDims?
=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02?
=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_3_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim?
.deep_learning_fc__dense_3_keras_2/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

: 20
.deep_learning_fc__dense_3_keras_2/ExpandDims_1?
1deep_learning_fc__dense_2_keras_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    23
1deep_learning_fc__dense_2_keras_3/flatten_3/Const?
3deep_learning_fc__dense_2_keras_3/flatten_3/ReshapeReshape4deep_learning_fc__dense_3_keras_2/Relu:activations:0:deep_learning_fc__dense_2_keras_3/flatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 25
3deep_learning_fc__dense_2_keras_3/flatten_3/Reshape?
?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02A
?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?
0deep_learning_fc__dense_2_keras_3/dense_3/MatMulMatMul<deep_learning_fc__dense_2_keras_3/flatten_3/Reshape:output:0Gdeep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????22
0deep_learning_fc__dense_2_keras_3/dense_3/MatMul?
@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02B
@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?
1deep_learning_fc__dense_2_keras_3/dense_3/BiasAddBiasAdd:deep_learning_fc__dense_2_keras_3/dense_3/MatMul:product:0Hdeep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????23
1deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd?
)deep_learning_fc__dense_2_keras_3/SigmoidSigmoid:deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2+
)deep_learning_fc__dense_2_keras_3/Sigmoid?
;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpHdeep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02=
;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?
0deep_learning_fc__dense_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 22
0deep_learning_fc__dense_2_keras_3/ExpandDims/dim?
,deep_learning_fc__dense_2_keras_3/ExpandDims
ExpandDimsCdeep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp:value:09deep_learning_fc__dense_2_keras_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: 2.
,deep_learning_fc__dense_2_keras_3/ExpandDims?
=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpIdeep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02?
=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?
2deep_learning_fc__dense_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 24
2deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim?
.deep_learning_fc__dense_2_keras_3/ExpandDims_1
ExpandDimsEdeep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp:value:0;deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:20
.deep_learning_fc__dense_2_keras_3/ExpandDims_1?
IdentityIdentity-deep_learning_fc__dense_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identityinputs_imagesD^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2Identity=deep_learning_conv__convolution_1_keras_2/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0**
_output_shapes
:2

Identity_2?

Identity_3Identity?deep_learning_conv__convolution_1_keras_2/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_3?

Identity_4Identity5deep_learning_conv__convolution_1_keras_2/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5Identity5deep_learning_conv__convolution_1_keras_2/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6Identity5deep_learning_fc__dense_3_keras_2/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7Identity7deep_learning_fc__dense_3_keras_2/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_7?

Identity_8Identity4deep_learning_fc__dense_3_keras_2/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9Identity4deep_learning_fc__dense_3_keras_2/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10Identity5deep_learning_fc__dense_4_keras_1/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11Identity7deep_learning_fc__dense_4_keras_1/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:@2
Identity_11?
Identity_12Identity4deep_learning_fc__dense_4_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13Identity4deep_learning_fc__dense_4_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14Identity5deep_learning_fc__dense_1_keras_1/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity7deep_learning_fc__dense_1_keras_1/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity4deep_learning_fc__dense_1_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity4deep_learning_fc__dense_1_keras_1/Relu:activations:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity5deep_learning_fc__dense_2_keras_3/ExpandDims:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*"
_output_shapes
: 2
Identity_18?
Identity_19Identity7deep_learning_fc__dense_2_keras_3/ExpandDims_1:output:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:2
Identity_19?
Identity_20Identity-deep_learning_fc__dense_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21Identity-deep_learning_fc__dense_2_keras_3/Sigmoid:y:0D^deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpF^deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpH^deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpG^deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp<^deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?^deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>^deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp<^deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp<^deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp<^deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp>^deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpA^deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@^deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
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
Cdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpCdeep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp2?
Edeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpEdeep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp2?
Gdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpGdeep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp2?
Fdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpFdeep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp2z
;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp;deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp2?
>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp>deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp2~
=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp=deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp;deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp@deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp;deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp@deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp2z
;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp;deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp2~
=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp=deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp2?
@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp@deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp2?
?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images
?
?
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5420339

inputs8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
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
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
C__inference_deep_learning_fc__dense_3_keras_2_layer_call_fn_5421997
inputs_input
unknown:@ 
	unknown_0: 
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
 *R
_output_shapes@
>:@ : :????????? :????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_54202332
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
:@ 2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:?????????@
&
_user_specified_nameinputs/input
?
?
C__inference_deep_learning_fc__dense_2_keras_3_layer_call_fn_5422071
inputs_input
unknown: 
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
 *R
_output_shapes@
>: ::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_54201802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*"
_output_shapes
: 2

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
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
'
_output_shapes
:????????? 
&
_user_specified_nameinputs/input
?
j
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_5419887
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
?
?
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5421819
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
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5419951

inputs8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeinputsflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
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
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5420013

inputs8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputsflatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAdd`
ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
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
T0*"
_output_shapes
:@ 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
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

: 2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*"
_output_shapes
:@ 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5420390

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
?.
?
0__inference_training_model_layer_call_fn_5420669

images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54205372
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
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*"
_output_shapes
: 2
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
?4
?

#__inference__traced_restore_5422221
file_prefixq
Wassignvariableop_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_kernel:e
Wassignvariableop_1_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_bias:d
Rassignvariableop_2_training_model_deep_learning_fc__dense_3_keras_2_dense_2_kernel:@ ^
Passignvariableop_3_training_model_deep_learning_fc__dense_3_keras_2_dense_2_bias: e
Rassignvariableop_4_training_model_deep_learning_fc__dense_4_keras_1_dense_1_kernel:	?@^
Passignvariableop_5_training_model_deep_learning_fc__dense_4_keras_1_dense_1_bias:@d
Passignvariableop_6_training_model_deep_learning_fc__dense_1_keras_1_dense_kernel:
??]
Nassignvariableop_7_training_model_deep_learning_fc__dense_1_keras_1_dense_bias:	?d
Rassignvariableop_8_training_model_deep_learning_fc__dense_2_keras_3_dense_3_kernel: ^
Passignvariableop_9_training_model_deep_learning_fc__dense_2_keras_3_dense_3_bias:
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
AssignVariableOpAssignVariableOpWassignvariableop_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpWassignvariableop_1_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpRassignvariableop_2_training_model_deep_learning_fc__dense_3_keras_2_dense_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpPassignvariableop_3_training_model_deep_learning_fc__dense_3_keras_2_dense_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpRassignvariableop_4_training_model_deep_learning_fc__dense_4_keras_1_dense_1_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpPassignvariableop_5_training_model_deep_learning_fc__dense_4_keras_1_dense_1_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpPassignvariableop_6_training_model_deep_learning_fc__dense_1_keras_1_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpNassignvariableop_7_training_model_deep_learning_fc__dense_1_keras_1_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpRassignvariableop_8_training_model_deep_learning_fc__dense_2_keras_3_dense_3_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpPassignvariableop_9_training_model_deep_learning_fc__dense_2_keras_3_dense_3_biasIdentity_9:output:0"/device:CPU:0*
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
?.
?
0__inference_training_model_layer_call_fn_5420140

images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallimagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54200752
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
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*"
_output_shapes
: 2
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
?
C__inference_deep_learning_fc__dense_1_keras_1_layer_call_fn_5421834
inputs_input
unknown:
??
	unknown_0:	?
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
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_54199512
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*$
_output_shapes
:??2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

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
??
?

K__inference_training_model_layer_call_and_return_conditional_losses_5420799

imagesK
1deep_learning_conv__convolution_1_keras_2_5420737:?
1deep_learning_conv__convolution_1_keras_2_5420739:=
)deep_learning_fc__dense_1_keras_1_5420745:
??8
)deep_learning_fc__dense_1_keras_1_5420747:	?<
)deep_learning_fc__dense_4_keras_1_5420753:	?@7
)deep_learning_fc__dense_4_keras_1_5420755:@;
)deep_learning_fc__dense_3_keras_2_5420761:@ 7
)deep_learning_fc__dense_3_keras_2_5420763: ;
)deep_learning_fc__dense_2_keras_3_5420769: 7
)deep_learning_fc__dense_2_keras_3_5420771:
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
identity_21??Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallStatefulPartitionedCallimages1deep_learning_conv__convolution_1_keras_2_54207371deep_learning_conv__convolution_1_keras_2_5420739*
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_54203902C
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_1_5420745)deep_learning_fc__dense_1_keras_1_5420747*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_54203392;
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_4_keras_1_5420753)deep_learning_fc__dense_4_keras_1_5420755*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?@:@:?????????@:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_54202862;
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_2_5420761)deep_learning_fc__dense_3_keras_2_5420763*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>:@ : :????????? :????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_54202332;
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_2_keras_3_5420769)deep_learning_fc__dense_2_keras_3_5420771*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>: ::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_54201802;
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?
IdentityIdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityimagesB^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
: 2
Identity_18?
Identity_19IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
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
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall2v
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages
?
<
__inference__creator_5421736
identity??
hash_table}

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name	5419781*
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
?
.
__inference__destroyer_5421749
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
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5420044

inputs8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOps
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
flatten_3/Const?
flatten_3/ReshapeReshapeinputsflatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
flatten_3/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddi
SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
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
T0*"
_output_shapes
: 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
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
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*"
_output_shapes
: 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5422115
inputs_input8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOps
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
flatten_3/Const?
flatten_3/ReshapeReshapeinputs_inputflatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
flatten_3/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddi
SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
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
T0*"
_output_shapes
: 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
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
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*"
_output_shapes
: 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:U Q
'
_output_shapes
:????????? 
&
_user_specified_nameinputs/input
??
?

K__inference_training_model_layer_call_and_return_conditional_losses_5420537

inputsK
1deep_learning_conv__convolution_1_keras_2_5420475:?
1deep_learning_conv__convolution_1_keras_2_5420477:=
)deep_learning_fc__dense_1_keras_1_5420483:
??8
)deep_learning_fc__dense_1_keras_1_5420485:	?<
)deep_learning_fc__dense_4_keras_1_5420491:	?@7
)deep_learning_fc__dense_4_keras_1_5420493:@;
)deep_learning_fc__dense_3_keras_2_5420499:@ 7
)deep_learning_fc__dense_3_keras_2_5420501: ;
)deep_learning_fc__dense_2_keras_3_5420507: 7
)deep_learning_fc__dense_2_keras_3_5420509:
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
identity_21??Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallStatefulPartitionedCallinputs1deep_learning_conv__convolution_1_keras_2_54204751deep_learning_conv__convolution_1_keras_2_5420477*
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_54203902C
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_1_5420483)deep_learning_fc__dense_1_keras_1_5420485*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_54203392;
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_4_keras_1_5420491)deep_learning_fc__dense_4_keras_1_5420493*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?@:@:?????????@:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_54202862;
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_2_5420499)deep_learning_fc__dense_3_keras_2_5420501*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>:@ : :????????? :????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_54202332;
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_2_keras_3_5420507)deep_learning_fc__dense_2_keras_3_5420509*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>: ::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_54201802;
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?
IdentityIdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityinputsB^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
: 2
Identity_18?
Identity_19IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
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
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall2v
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
K__inference_deep_learning_conv__convolution_1_keras_2_layer_call_fn_5421779
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_54203902
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
?
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_5420810
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
?
?
B__inference_model_layer_call_and_return_conditional_losses_5420876

inputs0
training_model_5420828:$
training_model_5420830:*
training_model_5420832:
??%
training_model_5420834:	?)
training_model_5420836:	?@$
training_model_5420838:@(
training_model_5420840:@ $
training_model_5420842: (
training_model_5420844: $
training_model_5420846:"
postprocessing_step_35_5420870"
postprocessing_step_35_5420872
identity??.postprocessing_step_35/StatefulPartitionedCall?&training_model/StatefulPartitionedCall?
 preprocessing_35/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8? *V
fQRO
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_54198872"
 preprocessing_35/PartitionedCall?
&training_model/StatefulPartitionedCallStatefulPartitionedCall)preprocessing_35/PartitionedCall:output:0training_model_5420828training_model_5420830training_model_5420832training_model_5420834training_model_5420836training_model_5420838training_model_5420840training_model_5420842training_model_5420844training_model_5420846*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54200752(
&training_model/StatefulPartitionedCall?
.postprocessing_step_35/StatefulPartitionedCallStatefulPartitionedCall/training_model/StatefulPartitionedCall:output:0postprocessing_step_35_5420870postprocessing_step_35_5420872*
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
GPU 2J 8? *\
fWRU
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_542081020
.postprocessing_step_35/StatefulPartitionedCall?
IdentityIdentity7postprocessing_step_35/StatefulPartitionedCall:output:0/^postprocessing_step_35/StatefulPartitionedCall'^training_model/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2`
.postprocessing_step_35/StatefulPartitionedCall.postprocessing_step_35/StatefulPartitionedCall2P
&training_model/StatefulPartitionedCall&training_model/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs:

_output_shapes
: 
??
?
B__inference_model_layer_call_and_return_conditional_losses_5421318
inputs_imagesx
^training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource:m
_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource:i
Utraining_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource:
??e
Vtraining_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource:	?j
Wtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource:	?@f
Xtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource:@i
Wtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource:@ f
Xtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource: i
Wtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource: f
Xtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource:E
Apostprocessing_step_35_none_lookup_lookuptablefindv2_table_handleF
Bpostprocessing_step_35_none_lookup_lookuptablefindv2_default_value
identity??4postprocessing_step_35/None_Lookup/LookupTableFindV2?Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpReadVariableOp^training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02W
Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?
Ftraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2DConv2Dinputs_images]training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2H
Ftraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D?
Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpReadVariableOp_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02X
Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?
Gtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAddBiasAddOtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D:output:0^training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2I
Gtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd?
@training_model/deep_learning_conv__convolution_1_keras_2/SigmoidSigmoidPtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2B
@training_model/deep_learning_conv__convolution_1_keras_2/Sigmoid?
Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpReadVariableOp^training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02T
Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?
Gtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dim?
Ctraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims
ExpandDimsZtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp:value:0Ptraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dim:output:0*
T0**
_output_shapes
:2E
Ctraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims?
Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpReadVariableOp_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02V
Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?
Itraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2K
Itraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim?
Etraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1
ExpandDims\training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp:value:0Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2G
Etraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1?
>training_model/deep_learning_fc__dense_1_keras_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2@
>training_model/deep_learning_fc__dense_1_keras_1/flatten/Const?
@training_model/deep_learning_fc__dense_1_keras_1/flatten/ReshapeReshapeDtraining_model/deep_learning_conv__convolution_1_keras_2/Sigmoid:y:0Gtraining_model/deep_learning_fc__dense_1_keras_1/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2B
@training_model/deep_learning_fc__dense_1_keras_1/flatten/Reshape?
Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpReadVariableOpUtraining_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02N
Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?
=training_model/deep_learning_fc__dense_1_keras_1/dense/MatMulMatMulItraining_model/deep_learning_fc__dense_1_keras_1/flatten/Reshape:output:0Ttraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2?
=training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul?
Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpReadVariableOpVtraining_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02O
Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?
>training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAddBiasAddGtraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul:product:0Utraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2@
>training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd?
5training_model/deep_learning_fc__dense_1_keras_1/ReluReluGtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????27
5training_model/deep_learning_fc__dense_1_keras_1/Relu?
Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpReadVariableOpUtraining_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02L
Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dim?
;training_model/deep_learning_fc__dense_1_keras_1/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2=
;training_model/deep_learning_fc__dense_1_keras_1/ExpandDims?
Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpVtraining_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02N
Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2?
=training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1?
@training_model/deep_learning_fc__dense_4_keras_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2B
@training_model/deep_learning_fc__dense_4_keras_1/flatten_1/Const?
Btraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/ReshapeReshapeCtraining_model/deep_learning_fc__dense_1_keras_1/Relu:activations:0Itraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2D
Btraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/Reshape?
Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02P
Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
?training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMulMatMulKtraining_model/deep_learning_fc__dense_4_keras_1/flatten_1/Reshape:output:0Vtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2A
?training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul?
Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02Q
Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?
@training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAddBiasAddItraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul:product:0Wtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2B
@training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd?
5training_model/deep_learning_fc__dense_4_keras_1/ReluReluItraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@27
5training_model/deep_learning_fc__dense_4_keras_1/Relu?
Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02L
Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dim?
;training_model/deep_learning_fc__dense_4_keras_1/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?@2=
;training_model/deep_learning_fc__dense_4_keras_1/ExpandDims?
Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02N
Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:@2?
=training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1?
@training_model/deep_learning_fc__dense_3_keras_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   2B
@training_model/deep_learning_fc__dense_3_keras_2/flatten_2/Const?
Btraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/ReshapeReshapeCtraining_model/deep_learning_fc__dense_4_keras_1/Relu:activations:0Itraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@2D
Btraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/Reshape?
Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02P
Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?
?training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMulMatMulKtraining_model/deep_learning_fc__dense_3_keras_2/flatten_2/Reshape:output:0Vtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2A
?training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul?
Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02Q
Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?
@training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAddBiasAddItraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul:product:0Wtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2B
@training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd?
5training_model/deep_learning_fc__dense_3_keras_2/ReluReluItraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 27
5training_model/deep_learning_fc__dense_3_keras_2/Relu?
Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02L
Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dim?
;training_model/deep_learning_fc__dense_3_keras_2/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
:@ 2=
;training_model/deep_learning_fc__dense_3_keras_2/ExpandDims?
Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02N
Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

: 2?
=training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1?
@training_model/deep_learning_fc__dense_2_keras_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2B
@training_model/deep_learning_fc__dense_2_keras_3/flatten_3/Const?
Btraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/ReshapeReshapeCtraining_model/deep_learning_fc__dense_3_keras_2/Relu:activations:0Itraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 2D
Btraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/Reshape?
Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02P
Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?
?training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMulMatMulKtraining_model/deep_learning_fc__dense_2_keras_3/flatten_3/Reshape:output:0Vtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2A
?training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul?
Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02Q
Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?
@training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAddBiasAddItraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul:product:0Wtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2B
@training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd?
8training_model/deep_learning_fc__dense_2_keras_3/SigmoidSigmoidItraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2:
8training_model/deep_learning_fc__dense_2_keras_3/Sigmoid?
Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpReadVariableOpWtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02L
Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?
?training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2A
?training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dim?
;training_model/deep_learning_fc__dense_2_keras_3/ExpandDims
ExpandDimsRtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp:value:0Htraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: 2=
;training_model/deep_learning_fc__dense_2_keras_3/ExpandDims?
Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOpXtraining_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02N
Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?
Atraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2C
Atraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim?
=training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1
ExpandDimsTtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp:value:0Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2?
=training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1?
'postprocessing_step_35/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2)
'postprocessing_step_35/ArgMax/dimension?
postprocessing_step_35/ArgMaxArgMax<training_model/deep_learning_fc__dense_2_keras_3/Sigmoid:y:00postprocessing_step_35/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2
postprocessing_step_35/ArgMax?
postprocessing_step_35/CastCast&postprocessing_step_35/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2
postprocessing_step_35/Cast?
4postprocessing_step_35/None_Lookup/LookupTableFindV2LookupTableFindV2Apostprocessing_step_35_none_lookup_lookuptablefindv2_table_handlepostprocessing_step_35/Cast:y:0Bpostprocessing_step_35_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????26
4postprocessing_step_35/None_Lookup/LookupTableFindV2?
IdentityIdentity=postprocessing_step_35/None_Lookup/LookupTableFindV2:values:05^postprocessing_step_35/None_Lookup/LookupTableFindV2S^training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpU^training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpW^training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpV^training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpK^training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpN^training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpM^training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpK^training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpP^training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpO^training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpK^training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpP^training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpO^training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpK^training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpM^training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpP^training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpO^training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2l
4postprocessing_step_35/None_Lookup/LookupTableFindV24postprocessing_step_35/None_Lookup/LookupTableFindV22?
Rtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpRtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp2?
Ttraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpTtraining_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp2?
Vtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpVtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp2?
Utraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpUtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp2?
Mtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpMtraining_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpLtraining_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp2?
Otraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpOtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp2?
Ntraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpNtraining_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp2?
Otraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpOtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp2?
Ntraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpNtraining_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp2?
Jtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpJtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp2?
Ltraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpLtraining_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp2?
Otraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpOtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp2?
Ntraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpNtraining_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:^ Z
/
_output_shapes
:?????????  
'
_user_specified_nameinputs/images:

_output_shapes
: 
?
?
B__inference_model_layer_call_and_return_conditional_losses_5421146

images0
training_model_5421098:$
training_model_5421100:*
training_model_5421102:
??%
training_model_5421104:	?)
training_model_5421106:	?@$
training_model_5421108:@(
training_model_5421110:@ $
training_model_5421112: (
training_model_5421114: $
training_model_5421116:"
postprocessing_step_35_5421140"
postprocessing_step_35_5421142
identity??.postprocessing_step_35/StatefulPartitionedCall?&training_model/StatefulPartitionedCall?
 preprocessing_35/PartitionedCallPartitionedCallimages*
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
GPU 2J 8? *V
fQRO
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_54198872"
 preprocessing_35/PartitionedCall?
&training_model/StatefulPartitionedCallStatefulPartitionedCall)preprocessing_35/PartitionedCall:output:0training_model_5421098training_model_5421100training_model_5421102training_model_5421104training_model_5421106training_model_5421108training_model_5421110training_model_5421112training_model_5421114training_model_5421116*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54205372(
&training_model/StatefulPartitionedCall?
.postprocessing_step_35/StatefulPartitionedCallStatefulPartitionedCall/training_model/StatefulPartitionedCall:output:0postprocessing_step_35_5421140postprocessing_step_35_5421142*
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
GPU 2J 8? *\
fWRU
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_542081020
.postprocessing_step_35/StatefulPartitionedCall?
IdentityIdentity7postprocessing_step_35/StatefulPartitionedCall:output:0/^postprocessing_step_35/StatefulPartitionedCall'^training_model/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2`
.postprocessing_step_35/StatefulPartitionedCall.postprocessing_step_35/StatefulPartitionedCall2P
&training_model/StatefulPartitionedCall&training_model/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
?
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5420180

inputs8
&dense_3_matmul_readvariableop_resource: 5
'dense_3_biasadd_readvariableop_resource:
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_3/BiasAdd/ReadVariableOp?dense_3/MatMul/ReadVariableOps
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2
flatten_3/Const?
flatten_3/ReshapeReshapeinputsflatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 2
flatten_3/Reshape?
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
dense_3/MatMul/ReadVariableOp?
dense_3/MatMulMatMulflatten_3/Reshape:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/MatMul?
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_3/BiasAdd/ReadVariableOp?
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
dense_3/BiasAddi
SigmoidSigmoiddense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
ExpandDims/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes

: *
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
T0*"
_output_shapes
: 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
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
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*"
_output_shapes
: 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*
_output_shapes

:2

Identity_1?

Identity_2IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_2?

Identity_3IdentitySigmoid:y:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5421967
inputs_input9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputs_inputflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAdd`
ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
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
:?@2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
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

:@2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?@2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:@2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?.
?
0__inference_training_model_layer_call_fn_5421468
inputs_images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_imagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54200752
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
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*"
_output_shapes
: 2
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

K__inference_training_model_layer_call_and_return_conditional_losses_5420075

inputsK
1deep_learning_conv__convolution_1_keras_2_5419921:?
1deep_learning_conv__convolution_1_keras_2_5419923:=
)deep_learning_fc__dense_1_keras_1_5419952:
??8
)deep_learning_fc__dense_1_keras_1_5419954:	?<
)deep_learning_fc__dense_4_keras_1_5419983:	?@7
)deep_learning_fc__dense_4_keras_1_5419985:@;
)deep_learning_fc__dense_3_keras_2_5420014:@ 7
)deep_learning_fc__dense_3_keras_2_5420016: ;
)deep_learning_fc__dense_2_keras_3_5420045: 7
)deep_learning_fc__dense_2_keras_3_5420047:
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
identity_21??Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallStatefulPartitionedCallinputs1deep_learning_conv__convolution_1_keras_2_54199211deep_learning_conv__convolution_1_keras_2_5419923*
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_54199202C
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCallStatefulPartitionedCallJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_1_keras_1_5419952)deep_learning_fc__dense_1_keras_1_5419954*
Tin
2*
Tout
2*
_collective_manager_ids
 *W
_output_shapesE
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_54199512;
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_4_keras_1_5419983)deep_learning_fc__dense_4_keras_1_5419985*
Tin
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:?@:@:?????????@:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_54199822;
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall?
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2)deep_learning_fc__dense_3_keras_2_5420014)deep_learning_fc__dense_3_keras_2_5420016*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>:@ : :????????? :????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_54200132;
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall?
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCallStatefulPartitionedCallBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2)deep_learning_fc__dense_2_keras_3_5420045)deep_learning_fc__dense_2_keras_3_5420047*
Tin
2*
Tout
2*
_collective_manager_ids
 *R
_output_shapes@
>: ::?????????:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_54200442;
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall?
IdentityIdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1IdentityinputsB^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????  2

Identity_1?

Identity_2IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0**
_output_shapes
:2

Identity_2?

Identity_3IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2

Identity_3?

Identity_4IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_4?

Identity_5IdentityJdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*/
_output_shapes
:?????????2

Identity_5?

Identity_6IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9IdentityBdeep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13IdentityBdeep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17IdentityBdeep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:0B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*"
_output_shapes
: 2
Identity_18?
Identity_19IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:1B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*
_output_shapes

:2
Identity_19?
Identity_20IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:2B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2
Identity_20?
Identity_21IdentityBdeep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:output:3B^deep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall:^deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall:^deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall:^deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall*
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
Adeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCallAdeep_learning_conv__convolution_1_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_1_keras_1/StatefulPartitionedCall2v
9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall9deep_learning_fc__dense_2_keras_3/StatefulPartitionedCall2v
9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall9deep_learning_fc__dense_3_keras_2/StatefulPartitionedCall2v
9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall9deep_learning_fc__dense_4_keras_1/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?

?
'__inference_model_layer_call_fn_5421235
inputs_images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_54209862
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
?
C__inference_deep_learning_fc__dense_1_keras_1_layer_call_fn_5421849
inputs_input
unknown:
??
	unknown_0:	?
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
C:??:	?:??????????:??????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_54203392
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*$
_output_shapes
:??2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

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
?
?
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5419920

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
?
?
8__inference_postprocessing_step_35_layer_call_fn_5420820
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
GPU 2J 8? *\
fWRU
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_54208102
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
?.
?
0__inference_training_model_layer_call_fn_5421535
inputs_images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
identity_21??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_imagesunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54205372
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
T0*"
_output_shapes
:@ 2

Identity_6?

Identity_7Identity StatefulPartitionedCall:output:7^StatefulPartitionedCall*
T0*
_output_shapes

: 2

Identity_7?

Identity_8Identity StatefulPartitionedCall:output:8^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_8?

Identity_9Identity StatefulPartitionedCall:output:9^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity_9?
Identity_10Identity!StatefulPartitionedCall:output:10^StatefulPartitionedCall*
T0*#
_output_shapes
:?@2
Identity_10?
Identity_11Identity!StatefulPartitionedCall:output:11^StatefulPartitionedCall*
T0*
_output_shapes

:@2
Identity_11?
Identity_12Identity!StatefulPartitionedCall:output:12^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_12?
Identity_13Identity!StatefulPartitionedCall:output:13^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2
Identity_13?
Identity_14Identity!StatefulPartitionedCall:output:14^StatefulPartitionedCall*
T0*$
_output_shapes
:??2
Identity_14?
Identity_15Identity!StatefulPartitionedCall:output:15^StatefulPartitionedCall*
T0*
_output_shapes
:	?2
Identity_15?
Identity_16Identity!StatefulPartitionedCall:output:16^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_16?
Identity_17Identity!StatefulPartitionedCall:output:17^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2
Identity_17?
Identity_18Identity!StatefulPartitionedCall:output:18^StatefulPartitionedCall*
T0*"
_output_shapes
: 2
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
?
?
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5421871
inputs_input8
$dense_matmul_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOpo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2
flatten/Const?
flatten/ReshapeReshapeinputs_inputflatten/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten/Reshape?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02
dense/MatMul/ReadVariableOp?
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/MatMul?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/BiasAdd_
ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
ExpandDims/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
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
:??2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
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
:	?2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*$
_output_shapes
:??2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*
_output_shapes
:	?2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp:] Y
/
_output_shapes
:?????????
&
_user_specified_nameinputs/input
?
?
B__inference_model_layer_call_and_return_conditional_losses_5420986

inputs0
training_model_5420938:$
training_model_5420940:*
training_model_5420942:
??%
training_model_5420944:	?)
training_model_5420946:	?@$
training_model_5420948:@(
training_model_5420950:@ $
training_model_5420952: (
training_model_5420954: $
training_model_5420956:"
postprocessing_step_35_5420980"
postprocessing_step_35_5420982
identity??.postprocessing_step_35/StatefulPartitionedCall?&training_model/StatefulPartitionedCall?
 preprocessing_35/PartitionedCallPartitionedCallinputs*
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
GPU 2J 8? *V
fQRO
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_54198872"
 preprocessing_35/PartitionedCall?
&training_model/StatefulPartitionedCallStatefulPartitionedCall)preprocessing_35/PartitionedCall:output:0training_model_5420938training_model_5420940training_model_5420942training_model_5420944training_model_5420946training_model_5420948training_model_5420950training_model_5420952training_model_5420954training_model_5420956*
Tin
2*"
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:?????????:?????????  :::?????????:?????????:@ : :????????? :????????? :?@:@:?????????@:?????????@:??:	?:??????????:??????????: ::?????????:?????????*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8? *T
fORM
K__inference_training_model_layer_call_and_return_conditional_losses_54205372(
&training_model/StatefulPartitionedCall?
.postprocessing_step_35/StatefulPartitionedCallStatefulPartitionedCall/training_model/StatefulPartitionedCall:output:0postprocessing_step_35_5420980postprocessing_step_35_5420982*
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
GPU 2J 8? *\
fWRU
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_542081020
.postprocessing_step_35/StatefulPartitionedCall?
IdentityIdentity7postprocessing_step_35/StatefulPartitionedCall:output:0/^postprocessing_step_35/StatefulPartitionedCall'^training_model/StatefulPartitionedCall*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2`
.postprocessing_step_35/StatefulPartitionedCall.postprocessing_step_35/StatefulPartitionedCall2P
&training_model/StatefulPartitionedCall&training_model/StatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs:

_output_shapes
: 
?
?
C__inference_deep_learning_fc__dense_4_keras_1_layer_call_fn_5421923
inputs_input
unknown:	?@
	unknown_0:@
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
?:?@:@:?????????@:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *g
fbR`
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_54202862
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*#
_output_shapes
:?@2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*
_output_shapes

:@2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3Identity StatefulPartitionedCall:output:3^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
(
_output_shapes
:??????????
&
_user_specified_nameinputs/input
?
?
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5422041
inputs_input8
&dense_2_matmul_readvariableop_resource:@ 5
'dense_2_biasadd_readvariableop_resource: 
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_2/BiasAdd/ReadVariableOp?dense_2/MatMul/ReadVariableOps
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   2
flatten_2/Const?
flatten_2/ReshapeReshapeinputs_inputflatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@2
flatten_2/Reshape?
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
dense_2/MatMul/ReadVariableOp?
dense_2/MatMulMatMulflatten_2/Reshape:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/MatMul?
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02 
dense_2/BiasAdd/ReadVariableOp?
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
dense_2/BiasAdd`
ReluReludense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
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
T0*"
_output_shapes
:@ 2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
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

: 2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*"
_output_shapes
:@ 2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*
_output_shapes

: 2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp:U Q
'
_output_shapes
:?????????@
&
_user_specified_nameinputs/input
?

?
'__inference_model_layer_call_fn_5420903

images!
unknown:
	unknown_0:
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?@
	unknown_4:@
	unknown_5:@ 
	unknown_6: 
	unknown_7: 
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
GPU 2J 8? *K
fFRD
B__inference_model_layer_call_and_return_conditional_losses_54208762
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
??
?
"__inference__wrapped_model_5419882

images~
dmodel_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource:s
emodel_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource:o
[model_training_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource:
??k
\model_training_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource:	?p
]model_training_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource:	?@l
^model_training_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource:@o
]model_training_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource:@ l
^model_training_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource: o
]model_training_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource: l
^model_training_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource:K
Gmodel_postprocessing_step_35_none_lookup_lookuptablefindv2_table_handleL
Hmodel_postprocessing_step_35_none_lookup_lookuptablefindv2_default_value
identity??:model/postprocessing_step_35/None_Lookup/LookupTableFindV2?Xmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?Zmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?\model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?[model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?Pmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?Rmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?Smodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?Rmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?Pmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?Rmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?Umodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?Tmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?Pmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?Rmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?Umodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?Tmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?Pmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?Rmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?Umodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?Tmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
[model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpReadVariableOpdmodel_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02]
[model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp?
Lmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2DConv2Dimagescmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????*
paddingSAME*
strides
2N
Lmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D?
\model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOpReadVariableOpemodel_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02^
\model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp?
Mmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAddBiasAddUmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D:output:0dmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????2O
Mmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd?
Fmodel/training_model/deep_learning_conv__convolution_1_keras_2/SigmoidSigmoidVmodel/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd:output:0*
T0*/
_output_shapes
:?????????2H
Fmodel/training_model/deep_learning_conv__convolution_1_keras_2/Sigmoid?
Xmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpReadVariableOpdmodel_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02Z
Xmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp?
Mmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2O
Mmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dim?
Imodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims
ExpandDims`model/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp:value:0Vmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/dim:output:0*
T0**
_output_shapes
:2K
Imodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims?
Zmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpReadVariableOpemodel_training_model_deep_learning_conv__convolution_1_keras_2_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02\
Zmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp?
Omodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2Q
Omodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim?
Kmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1
ExpandDimsbmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp:value:0Xmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2M
Kmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1?
Dmodel/training_model/deep_learning_fc__dense_1_keras_1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"????   2F
Dmodel/training_model/deep_learning_fc__dense_1_keras_1/flatten/Const?
Fmodel/training_model/deep_learning_fc__dense_1_keras_1/flatten/ReshapeReshapeJmodel/training_model/deep_learning_conv__convolution_1_keras_2/Sigmoid:y:0Mmodel/training_model/deep_learning_fc__dense_1_keras_1/flatten/Const:output:0*
T0*(
_output_shapes
:??????????2H
Fmodel/training_model/deep_learning_fc__dense_1_keras_1/flatten/Reshape?
Rmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpReadVariableOp[model_training_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02T
Rmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp?
Cmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMulMatMulOmodel/training_model/deep_learning_fc__dense_1_keras_1/flatten/Reshape:output:0Zmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2E
Cmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul?
Smodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpReadVariableOp\model_training_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02U
Smodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp?
Dmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAddBiasAddMmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul:product:0[model/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2F
Dmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd?
;model/training_model/deep_learning_fc__dense_1_keras_1/ReluReluMmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2=
;model/training_model/deep_learning_fc__dense_1_keras_1/Relu?
Pmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpReadVariableOp[model_training_model_deep_learning_fc__dense_1_keras_1_dense_matmul_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Pmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp?
Emodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2G
Emodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dim?
Amodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims
ExpandDimsXmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp:value:0Nmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/dim:output:0*
T0*$
_output_shapes
:??2C
Amodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims?
Rmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpReadVariableOp\model_training_model_deep_learning_fc__dense_1_keras_1_dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02T
Rmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp?
Gmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim?
Cmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1
ExpandDimsZmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp:value:0Pmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes
:	?2E
Cmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1?
Fmodel/training_model/deep_learning_fc__dense_4_keras_1/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2H
Fmodel/training_model/deep_learning_fc__dense_4_keras_1/flatten_1/Const?
Hmodel/training_model/deep_learning_fc__dense_4_keras_1/flatten_1/ReshapeReshapeImodel/training_model/deep_learning_fc__dense_1_keras_1/Relu:activations:0Omodel/training_model/deep_learning_fc__dense_4_keras_1/flatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2J
Hmodel/training_model/deep_learning_fc__dense_4_keras_1/flatten_1/Reshape?
Tmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpReadVariableOp]model_training_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02V
Tmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp?
Emodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMulMatMulQmodel/training_model/deep_learning_fc__dense_4_keras_1/flatten_1/Reshape:output:0\model/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2G
Emodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul?
Umodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpReadVariableOp^model_training_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02W
Umodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp?
Fmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAddBiasAddOmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul:product:0]model/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2H
Fmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd?
;model/training_model/deep_learning_fc__dense_4_keras_1/ReluReluOmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2=
;model/training_model/deep_learning_fc__dense_4_keras_1/Relu?
Pmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpReadVariableOp]model_training_model_deep_learning_fc__dense_4_keras_1_dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02R
Pmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp?
Emodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2G
Emodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dim?
Amodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims
ExpandDimsXmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp:value:0Nmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/dim:output:0*
T0*#
_output_shapes
:?@2C
Amodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims?
Rmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpReadVariableOp^model_training_model_deep_learning_fc__dense_4_keras_1_dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02T
Rmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp?
Gmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim?
Cmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1
ExpandDimsZmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp:value:0Pmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:@2E
Cmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1?
Fmodel/training_model/deep_learning_fc__dense_3_keras_2/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@   2H
Fmodel/training_model/deep_learning_fc__dense_3_keras_2/flatten_2/Const?
Hmodel/training_model/deep_learning_fc__dense_3_keras_2/flatten_2/ReshapeReshapeImodel/training_model/deep_learning_fc__dense_4_keras_1/Relu:activations:0Omodel/training_model/deep_learning_fc__dense_3_keras_2/flatten_2/Const:output:0*
T0*'
_output_shapes
:?????????@2J
Hmodel/training_model/deep_learning_fc__dense_3_keras_2/flatten_2/Reshape?
Tmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpReadVariableOp]model_training_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02V
Tmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp?
Emodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMulMatMulQmodel/training_model/deep_learning_fc__dense_3_keras_2/flatten_2/Reshape:output:0\model/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2G
Emodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul?
Umodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpReadVariableOp^model_training_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02W
Umodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp?
Fmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAddBiasAddOmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul:product:0]model/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2H
Fmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd?
;model/training_model/deep_learning_fc__dense_3_keras_2/ReluReluOmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2=
;model/training_model/deep_learning_fc__dense_3_keras_2/Relu?
Pmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpReadVariableOp]model_training_model_deep_learning_fc__dense_3_keras_2_dense_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02R
Pmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp?
Emodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2G
Emodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dim?
Amodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims
ExpandDimsXmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp:value:0Nmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/dim:output:0*
T0*"
_output_shapes
:@ 2C
Amodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims?
Rmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpReadVariableOp^model_training_model_deep_learning_fc__dense_3_keras_2_dense_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02T
Rmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp?
Gmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim?
Cmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1
ExpandDimsZmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp:value:0Pmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/dim:output:0*
T0*
_output_shapes

: 2E
Cmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1?
Fmodel/training_model/deep_learning_fc__dense_2_keras_3/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"????    2H
Fmodel/training_model/deep_learning_fc__dense_2_keras_3/flatten_3/Const?
Hmodel/training_model/deep_learning_fc__dense_2_keras_3/flatten_3/ReshapeReshapeImodel/training_model/deep_learning_fc__dense_3_keras_2/Relu:activations:0Omodel/training_model/deep_learning_fc__dense_2_keras_3/flatten_3/Const:output:0*
T0*'
_output_shapes
:????????? 2J
Hmodel/training_model/deep_learning_fc__dense_2_keras_3/flatten_3/Reshape?
Tmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpReadVariableOp]model_training_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02V
Tmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp?
Emodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMulMatMulQmodel/training_model/deep_learning_fc__dense_2_keras_3/flatten_3/Reshape:output:0\model/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2G
Emodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul?
Umodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpReadVariableOp^model_training_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02W
Umodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp?
Fmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAddBiasAddOmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul:product:0]model/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2H
Fmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd?
>model/training_model/deep_learning_fc__dense_2_keras_3/SigmoidSigmoidOmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2@
>model/training_model/deep_learning_fc__dense_2_keras_3/Sigmoid?
Pmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpReadVariableOp]model_training_model_deep_learning_fc__dense_2_keras_3_dense_3_matmul_readvariableop_resource*
_output_shapes

: *
dtype02R
Pmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp?
Emodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2G
Emodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dim?
Amodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims
ExpandDimsXmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp:value:0Nmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/dim:output:0*
T0*"
_output_shapes
: 2C
Amodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims?
Rmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpReadVariableOp^model_training_model_deep_learning_fc__dense_2_keras_3_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02T
Rmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp?
Gmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : 2I
Gmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim?
Cmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1
ExpandDimsZmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp:value:0Pmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/dim:output:0*
T0*
_output_shapes

:2E
Cmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1?
-model/postprocessing_step_35/ArgMax/dimensionConst*
_output_shapes
: *
dtype0*
valueB :
?????????2/
-model/postprocessing_step_35/ArgMax/dimension?
#model/postprocessing_step_35/ArgMaxArgMaxBmodel/training_model/deep_learning_fc__dense_2_keras_3/Sigmoid:y:06model/postprocessing_step_35/ArgMax/dimension:output:0*
T0*#
_output_shapes
:?????????2%
#model/postprocessing_step_35/ArgMax?
!model/postprocessing_step_35/CastCast,model/postprocessing_step_35/ArgMax:output:0*

DstT0*

SrcT0	*#
_output_shapes
:?????????2#
!model/postprocessing_step_35/Cast?
:model/postprocessing_step_35/None_Lookup/LookupTableFindV2LookupTableFindV2Gmodel_postprocessing_step_35_none_lookup_lookuptablefindv2_table_handle%model/postprocessing_step_35/Cast:y:0Hmodel_postprocessing_step_35_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0*#
_output_shapes
:?????????2<
:model/postprocessing_step_35/None_Lookup/LookupTableFindV2?
IdentityIdentityCmodel/postprocessing_step_35/None_Lookup/LookupTableFindV2:values:0;^model/postprocessing_step_35/None_Lookup/LookupTableFindV2Y^model/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp[^model/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp]^model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp\^model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOpQ^model/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpS^model/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpT^model/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpS^model/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpQ^model/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpS^model/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpV^model/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpU^model/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpQ^model/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpS^model/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpV^model/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpU^model/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpQ^model/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpS^model/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpV^model/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpU^model/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*F
_input_shapes5
3:?????????  : : : : : : : : : : : : 2x
:model/postprocessing_step_35/None_Lookup/LookupTableFindV2:model/postprocessing_step_35/None_Lookup/LookupTableFindV22?
Xmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOpXmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims/ReadVariableOp2?
Zmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOpZmodel/training_model/deep_learning_conv__convolution_1_keras_2/ExpandDims_1/ReadVariableOp2?
\model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp\model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/BiasAdd/ReadVariableOp2?
[model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp[model/training_model/deep_learning_conv__convolution_1_keras_2/conv2d/Conv2D/ReadVariableOp2?
Pmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOpPmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims/ReadVariableOp2?
Rmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOpRmodel/training_model/deep_learning_fc__dense_1_keras_1/ExpandDims_1/ReadVariableOp2?
Smodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOpSmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/BiasAdd/ReadVariableOp2?
Rmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOpRmodel/training_model/deep_learning_fc__dense_1_keras_1/dense/MatMul/ReadVariableOp2?
Pmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOpPmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims/ReadVariableOp2?
Rmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOpRmodel/training_model/deep_learning_fc__dense_2_keras_3/ExpandDims_1/ReadVariableOp2?
Umodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOpUmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/BiasAdd/ReadVariableOp2?
Tmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOpTmodel/training_model/deep_learning_fc__dense_2_keras_3/dense_3/MatMul/ReadVariableOp2?
Pmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOpPmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims/ReadVariableOp2?
Rmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOpRmodel/training_model/deep_learning_fc__dense_3_keras_2/ExpandDims_1/ReadVariableOp2?
Umodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOpUmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/BiasAdd/ReadVariableOp2?
Tmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOpTmodel/training_model/deep_learning_fc__dense_3_keras_2/dense_2/MatMul/ReadVariableOp2?
Pmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOpPmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims/ReadVariableOp2?
Rmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOpRmodel/training_model/deep_learning_fc__dense_4_keras_1/ExpandDims_1/ReadVariableOp2?
Umodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOpUmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/BiasAdd/ReadVariableOp2?
Tmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOpTmodel/training_model/deep_learning_fc__dense_4_keras_1/dense_1/MatMul/ReadVariableOp:W S
/
_output_shapes
:?????????  
 
_user_specified_nameimages:

_output_shapes
: 
?
?
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5419982

inputs9
&dense_1_matmul_readvariableop_resource:	?@5
'dense_1_biasadd_readvariableop_resource:@
identity

identity_1

identity_2

identity_3??ExpandDims/ReadVariableOp?ExpandDims_1/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOps
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"?????   2
flatten_1/Const?
flatten_1/ReshapeReshapeinputsflatten_1/Const:output:0*
T0*(
_output_shapes
:??????????2
flatten_1/Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulflatten_1/Reshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
dense_1/BiasAdd`
ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
ExpandDims/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?@*
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
:?@2

ExpandDims?
ExpandDims_1/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:@*
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

:@2
ExpandDims_1?
IdentityIdentityExpandDims:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*#
_output_shapes
:?@2

Identity?

Identity_1IdentityExpandDims_1:output:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*
_output_shapes

:@2

Identity_1?

Identity_2IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_2?

Identity_3IdentityRelu:activations:0^ExpandDims/ReadVariableOp^ExpandDims_1/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 26
ExpandDims/ReadVariableOpExpandDims/ReadVariableOp2:
ExpandDims_1/ReadVariableOpExpandDims_1/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
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
serving_default_images:0?????????  H
postprocessing_step_35.
StatefulPartitionedCall_1:0?????????tensorflow/serving/predict:??
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
regularization_losses
	variables
trainable_variables
	keras_api
	
signatures
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses"?
_tf_keras_network?{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "images"}, "name": "images", "inbound_nodes": []}, {"class_name": "Preprocessing", "config": {"preprocessing": "gASVNQIAAAAAAACMGnBlcmNlcHRpbGFicy5kYXRhLnNldHRpbmdzlIwWSW1hZ2VQcmVwcm9jZXNz\naW5nU3BlY5STlCmBlH2UKIwIX19kaWN0X1+UfZQojAZyZXNpemWUiIwLcmVzaXplX21vZGWUjAlh\ndXRvbWF0aWOUjA1yZXNpemVfaGVpZ2h0lE6MDHJlc2l6ZV93aWR0aJROjBVyZXNpemVfYXV0b21h\ndGljX21vZGWUjARtb2RllIwLcmFuZG9tX2ZsaXCUiYwQcmFuZG9tX2ZsaXBfbW9kZZROjBByYW5k\nb21fZmxpcF9zZWVklE6MD3JhbmRvbV9yb3RhdGlvbpSJjBRyYW5kb21fcm90YXRpb25fc2VlZJRO\njBZyYW5kb21fcm90YXRpb25fZmFjdG9ylE6MGXJhbmRvbV9yb3RhdGlvbl9maWxsX21vZGWUTowa\ncmFuZG9tX3JvdGF0aW9uX2ZpbGxfdmFsdWWUTowdcmFuZG9tX3JvdGF0aW9uX2ludGVycG9sYXRp\nb26UTowLcmFuZG9tX2Nyb3CUiYwQcmFuZG9tX2Nyb3Bfc2VlZJROjBJyYW5kb21fY3JvcF9oZWln\naHSUTowRcmFuZG9tX2Nyb3Bfd2lkdGiUTowJbm9ybWFsaXpllImMDm5vcm1hbGl6ZV9tb2RllE51\njA5fX2ZpZWxkc19zZXRfX5SPlChoDGgHaAiQjBxfX3ByaXZhdGVfYXR0cmlidXRlX3ZhbHVlc19f\nlH2UdWIu\n", "metadata": "gASVfgAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UjAtpbWFnZV9zaGFwZZSMM3RlbnNvcmZs\nb3cucHl0aG9uLnRyYWluaW5nLnRyYWNraW5nLmRhdGFfc3RydWN0dXJlc5SMC0xpc3RXcmFwcGVy\nlJOUXZQoSyBLIEsDZYWUUpRzhZRSlC4=\n"}, "name": "preprocessing_35", "inbound_nodes": [[["images", 0, 0, {}]]]}, {"class_name": "TrainingModel", "config": {"layer was saved without config": true}, "name": "training_model", "inbound_nodes": [{"images": ["preprocessing_35", 0, 0, {}]}]}, {"class_name": "PostprocessingStep", "config": {"preprocessing": "gAROLg==\n", "metadata": "gASVbAAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UKIwHbWFwcGluZ5RoAn2UKIwFYWxnYWWU\nSwCMB2NvbnRyb2yUSwGMBGN5c3SUSwKMBXNwb3JllEsDdYWUUpSMBWR0eXBllGgAjANzdHKUk5R1\nhZRSlC4=\n"}, "name": "postprocessing_step_35", "inbound_nodes": [[["training_model", 0, 0, {}]]]}], "input_layers": {"images": ["images", 0, 0]}, "output_layers": {"labels": ["postprocessing_step_35", 0, 0]}}, "shared_object_id": 3, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"images": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}, "is_graph_network": true, "save_spec": {"images": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "images"]}}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional"}}
?"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "images", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 32, 32, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "images"}}
?

metadata
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_model?{"name": "preprocessing_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Preprocessing", "config": {"preprocessing": "gASVNQIAAAAAAACMGnBlcmNlcHRpbGFicy5kYXRhLnNldHRpbmdzlIwWSW1hZ2VQcmVwcm9jZXNz\naW5nU3BlY5STlCmBlH2UKIwIX19kaWN0X1+UfZQojAZyZXNpemWUiIwLcmVzaXplX21vZGWUjAlh\ndXRvbWF0aWOUjA1yZXNpemVfaGVpZ2h0lE6MDHJlc2l6ZV93aWR0aJROjBVyZXNpemVfYXV0b21h\ndGljX21vZGWUjARtb2RllIwLcmFuZG9tX2ZsaXCUiYwQcmFuZG9tX2ZsaXBfbW9kZZROjBByYW5k\nb21fZmxpcF9zZWVklE6MD3JhbmRvbV9yb3RhdGlvbpSJjBRyYW5kb21fcm90YXRpb25fc2VlZJRO\njBZyYW5kb21fcm90YXRpb25fZmFjdG9ylE6MGXJhbmRvbV9yb3RhdGlvbl9maWxsX21vZGWUTowa\ncmFuZG9tX3JvdGF0aW9uX2ZpbGxfdmFsdWWUTowdcmFuZG9tX3JvdGF0aW9uX2ludGVycG9sYXRp\nb26UTowLcmFuZG9tX2Nyb3CUiYwQcmFuZG9tX2Nyb3Bfc2VlZJROjBJyYW5kb21fY3JvcF9oZWln\naHSUTowRcmFuZG9tX2Nyb3Bfd2lkdGiUTowJbm9ybWFsaXpllImMDm5vcm1hbGl6ZV9tb2RllE51\njA5fX2ZpZWxkc19zZXRfX5SPlChoDGgHaAiQjBxfX3ByaXZhdGVfYXR0cmlidXRlX3ZhbHVlc19f\nlH2UdWIu\n", "metadata": "gASVfgAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UjAtpbWFnZV9zaGFwZZSMM3RlbnNvcmZs\nb3cucHl0aG9uLnRyYWluaW5nLnRyYWNraW5nLmRhdGFfc3RydWN0dXJlc5SMC0xpc3RXcmFwcGVy\nlJOUXZQoSyBLIEsDZYWUUpRzhZRSlC4=\n"}, "inbound_nodes": [[["images", 0, 0, {}]]], "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Preprocessing", "config": {"preprocessing": "gASVNQIAAAAAAACMGnBlcmNlcHRpbGFicy5kYXRhLnNldHRpbmdzlIwWSW1hZ2VQcmVwcm9jZXNz\naW5nU3BlY5STlCmBlH2UKIwIX19kaWN0X1+UfZQojAZyZXNpemWUiIwLcmVzaXplX21vZGWUjAlh\ndXRvbWF0aWOUjA1yZXNpemVfaGVpZ2h0lE6MDHJlc2l6ZV93aWR0aJROjBVyZXNpemVfYXV0b21h\ndGljX21vZGWUjARtb2RllIwLcmFuZG9tX2ZsaXCUiYwQcmFuZG9tX2ZsaXBfbW9kZZROjBByYW5k\nb21fZmxpcF9zZWVklE6MD3JhbmRvbV9yb3RhdGlvbpSJjBRyYW5kb21fcm90YXRpb25fc2VlZJRO\njBZyYW5kb21fcm90YXRpb25fZmFjdG9ylE6MGXJhbmRvbV9yb3RhdGlvbl9maWxsX21vZGWUTowa\ncmFuZG9tX3JvdGF0aW9uX2ZpbGxfdmFsdWWUTowdcmFuZG9tX3JvdGF0aW9uX2ludGVycG9sYXRp\nb26UTowLcmFuZG9tX2Nyb3CUiYwQcmFuZG9tX2Nyb3Bfc2VlZJROjBJyYW5kb21fY3JvcF9oZWln\naHSUTowRcmFuZG9tX2Nyb3Bfd2lkdGiUTowJbm9ybWFsaXpllImMDm5vcm1hbGl6ZV9tb2RllE51\njA5fX2ZpZWxkc19zZXRfX5SPlChoDGgHaAiQjBxfX3ByaXZhdGVfYXR0cmlidXRlX3ZhbHVlc19f\nlH2UdWIu\n", "metadata": "gASVfgAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UjAtpbWFnZV9zaGFwZZSMM3RlbnNvcmZs\nb3cucHl0aG9uLnRyYWluaW5nLnRyYWNraW5nLmRhdGFfc3RydWN0dXJlc5SMC0xpc3RXcmFwcGVy\nlJOUXZQoSyBLIEsDZYWUUpRzhZRSlC4=\n"}}}
?
_layers_by_id
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_model?{"name": "training_model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "TrainingModel", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": {"images": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 32, 32, 3]}, "float32", "images"]}}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "TrainingModel"}}
?

metadata
_lookup_table
regularization_losses
	variables
trainable_variables
	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_model?{"name": "postprocessing_step_35", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "PostprocessingStep", "config": {"preprocessing": "gAROLg==\n", "metadata": "gASVbAAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UKIwHbWFwcGluZ5RoAn2UKIwFYWxnYWWU\nSwCMB2NvbnRyb2yUSwGMBGN5c3SUSwKMBXNwb3JllEsDdYWUUpSMBWR0eXBllGgAjANzdHKUk5R1\nhZRSlC4=\n"}, "inbound_nodes": [[["training_model", 0, 0, {}]]], "shared_object_id": 2, "build_input_shape": {"class_name": "TensorShape", "items": [null, 4]}, "is_graph_network": false, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 4]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "PostprocessingStep", "config": {"preprocessing": "gAROLg==\n", "metadata": "gASVbAAAAAAAAACMCGJ1aWx0aW5zlIwEZGljdJSTlH2UKIwHbWFwcGluZ5RoAn2UKIwFYWxnYWWU\nSwCMB2NvbnRyb2yUSwGMBGN5c3SUSwKMBXNwb3JllEsDdYWUUpSMBWR0eXBllGgAjANzdHKUk5R1\nhZRSlC4=\n"}}}
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
regularization_losses
$metrics
	variables
%non_trainable_variables

&layers
'layer_metrics
trainable_variables
(layer_regularization_losses
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
regularization_losses
*metrics
	variables
+non_trainable_variables

,layers
-layer_metrics
trainable_variables
.layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
[
/1
02
11632609604090
21632592784093
33"
trackable_dict_wrapper
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
regularization_losses
4metrics
	variables
5non_trainable_variables

6layers
7layer_metrics
trainable_variables
8layer_regularization_losses
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
regularization_losses
;metrics
	variables
<non_trainable_variables

=layers
>layer_metrics
trainable_variables
?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
`:^2Ftraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/kernel
R:P2Dtraining_model/deep_learning_conv__convolution_1_keras_2/conv2d/bias
Q:O@ 2?training_model/deep_learning_fc__dense_3_keras_2/dense_2/kernel
K:I 2=training_model/deep_learning_fc__dense_3_keras_2/dense_2/bias
R:P	?@2?training_model/deep_learning_fc__dense_4_keras_1/dense_1/kernel
K:I@2=training_model/deep_learning_fc__dense_4_keras_1/dense_1/bias
Q:O
??2=training_model/deep_learning_fc__dense_1_keras_1/dense/kernel
J:H?2;training_model/deep_learning_fc__dense_1_keras_1/dense/bias
Q:O 2?training_model/deep_learning_fc__dense_2_keras_3/dense_3/kernel
K:I2=training_model/deep_learning_fc__dense_2_keras_3/dense_3/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
?
@
_variables
Aconv

kernel
bias
B_outputs
Cregularization_losses
D	variables
Etrainable_variables
F	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "deep_learning_conv__convolution_1_keras_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningConv_Convolution_1Keras", "config": {"training": true}, "shared_object_id": 5, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}}
?
G
_variables
Hflatten
	Idense

 kernel
!bias
J_outputs
Kregularization_losses
L	variables
Mtrainable_variables
N	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "deep_learning_fc__dense_1_keras_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningFC_Dense_1Keras", "config": {"training": true}, "shared_object_id": 6, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 16, 16, 8]}}}
?
O
_variables
Pflatten
	Qdense

kernel
bias
R_outputs
Sregularization_losses
T	variables
Utrainable_variables
V	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "deep_learning_fc__dense_4_keras_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningFC_Dense_4Keras", "config": {"training": true}, "shared_object_id": 7, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 128]}}}
?
W
_variables
Xflatten
	Ydense

kernel
bias
Z_outputs
[regularization_losses
\	variables
]trainable_variables
^	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "deep_learning_fc__dense_3_keras_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningFC_Dense_3Keras", "config": {"training": true}, "shared_object_id": 8, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 64]}}}
?
_
_variables
`flatten
	adense

"kernel
#bias
b_outputs
cregularization_losses
d	variables
etrainable_variables
f	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "deep_learning_fc__dense_2_keras_3", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "DeepLearningFC_Dense_2Keras", "config": {"training": true}, "shared_object_id": 9, "build_input_shape": {"input": {"class_name": "TensorShape", "items": [null, 32]}}}
 "
trackable_list_wrapper
 "
trackable_list_wrapper
C
/0
21
12
03
34"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
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
trackable_dict_wrapper
?


kernel
bias
gregularization_losses
h	variables
itrainable_variables
j	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?	
_tf_keras_layer?	{"name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 8, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 13}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 3]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Cregularization_losses
kmetrics
D	variables
lnon_trainable_variables

mlayers
nlayer_metrics
Etrainable_variables
olayer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
pregularization_losses
q	variables
rtrainable_variables
s	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 15}}
?

 kernel
!bias
tregularization_losses
u	variables
vtrainable_variables
w	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 128, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 18, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 2048}}, "shared_object_id": 19}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
Kregularization_losses
xmetrics
L	variables
ynon_trainable_variables

zlayers
{layer_metrics
Mtrainable_variables
|layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
}regularization_losses
~	variables
trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 21}}
?

kernel
bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 64, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 22}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 23}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Sregularization_losses
?metrics
T	variables
?non_trainable_variables
?layers
?layer_metrics
Utrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 27}}
?

kernel
bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 32, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 28}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 29}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 30, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 31}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
[regularization_losses
?metrics
\	variables
?non_trainable_variables
?layers
?layer_metrics
]trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
?
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 33}}
?

"kernel
#bias
?regularization_losses
?	variables
?trainable_variables
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 4, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 34}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 35}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 36, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 37}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
cregularization_losses
?metrics
d	variables
?non_trainable_variables
?layers
?layer_metrics
etrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
gregularization_losses
?metrics
h	variables
?non_trainable_variables
?layers
?layer_metrics
itrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
 "
trackable_list_wrapper
?
pregularization_losses
?metrics
q	variables
?non_trainable_variables
?layers
?layer_metrics
rtrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
tregularization_losses
?metrics
u	variables
?non_trainable_variables
?layers
?layer_metrics
vtrainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
H0
I1"
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
?
}regularization_losses
?metrics
~	variables
?non_trainable_variables
?layers
?layer_metrics
trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
P0
Q1"
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
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
X0
Y1"
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
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
?
?regularization_losses
?metrics
?	variables
?non_trainable_variables
?layers
?layer_metrics
?trainable_variables
 ?layer_regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
`0
a1"
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
?2?
'__inference_model_layer_call_fn_5420903
'__inference_model_layer_call_fn_5421206
'__inference_model_layer_call_fn_5421235
'__inference_model_layer_call_fn_5421042?
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
"__inference__wrapped_model_5419882?
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
?2?
B__inference_model_layer_call_and_return_conditional_losses_5421318
B__inference_model_layer_call_and_return_conditional_losses_5421401
B__inference_model_layer_call_and_return_conditional_losses_5421094
B__inference_model_layer_call_and_return_conditional_losses_5421146?
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
2__inference_preprocessing_35_layer_call_fn_5419893?
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
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_5419887?
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
?2?
0__inference_training_model_layer_call_fn_5420140
0__inference_training_model_layer_call_fn_5421468
0__inference_training_model_layer_call_fn_5421535
0__inference_training_model_layer_call_fn_5420669?
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
K__inference_training_model_layer_call_and_return_conditional_losses_5421633
K__inference_training_model_layer_call_and_return_conditional_losses_5421731
K__inference_training_model_layer_call_and_return_conditional_losses_5420734
K__inference_training_model_layer_call_and_return_conditional_losses_5420799?
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
?2?
8__inference_postprocessing_step_35_layer_call_fn_5420820?
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
?2?
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_5420810?
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
%__inference_signature_wrapper_5421177images"?
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
__inference__creator_5421736?
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
 __inference__initializer_5421744?
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
__inference__destroyer_5421749?
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
?2?
K__inference_deep_learning_conv__convolution_1_keras_2_layer_call_fn_5421764
K__inference_deep_learning_conv__convolution_1_keras_2_layer_call_fn_5421779?
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5421799
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5421819?
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
C__inference_deep_learning_fc__dense_1_keras_1_layer_call_fn_5421834
C__inference_deep_learning_fc__dense_1_keras_1_layer_call_fn_5421849?
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
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5421871
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5421893?
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
C__inference_deep_learning_fc__dense_4_keras_1_layer_call_fn_5421908
C__inference_deep_learning_fc__dense_4_keras_1_layer_call_fn_5421923?
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
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5421945
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5421967?
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
C__inference_deep_learning_fc__dense_3_keras_2_layer_call_fn_5421982
C__inference_deep_learning_fc__dense_3_keras_2_layer_call_fn_5421997?
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
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5422019
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5422041?
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
C__inference_deep_learning_fc__dense_2_keras_3_layer_call_fn_5422056
C__inference_deep_learning_fc__dense_2_keras_3_layer_call_fn_5422071?
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
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5422093
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5422115?
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
__inference__creator_5421736?

? 
? "? :
__inference__destroyer_5421749?

? 
? "? C
 __inference__initializer_5421744???

? 
? "? ?
"__inference__wrapped_model_5419882? !"#?F?C
<?9
7?4
2
images(?%
images?????????  
? "K?H
F
postprocessing_step_35,?)
postprocessing_step_35??????????
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5421799?O?L
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
f__inference_deep_learning_conv__convolution_1_keras_2_layer_call_and_return_conditional_losses_5421819?O?L
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
K__inference_deep_learning_conv__convolution_1_keras_2_layer_call_fn_5421764?O?L
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
K__inference_deep_learning_conv__convolution_1_keras_2_layer_call_fn_5421779?O?L
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
preview??????????
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5421871? !O?L
E?B
<?9
7
input.?+
inputs/input?????????
p 
? "???
???

W?
0/W??

b?
0/b	?
-
output#? 
0/output??????????
/
preview$?!
	0/preview??????????
? ?
^__inference_deep_learning_fc__dense_1_keras_1_layer_call_and_return_conditional_losses_5421893? !O?L
E?B
<?9
7
input.?+
inputs/input?????????
p
? "???
???

W?
0/W??

b?
0/b	?
-
output#? 
0/output??????????
/
preview$?!
	0/preview??????????
? ?
C__inference_deep_learning_fc__dense_1_keras_1_layer_call_fn_5421834? !O?L
E?B
<?9
7
input.?+
inputs/input?????????
p 
? "???

W?
W??

b?
b	?
+
output!?
output??????????
-
preview"?
preview???????????
C__inference_deep_learning_fc__dense_1_keras_1_layer_call_fn_5421849? !O?L
E?B
<?9
7
input.?+
inputs/input?????????
p
? "???

W?
W??

b?
b	?
+
output!?
output??????????
-
preview"?
preview???????????
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5422093?"#G?D
=?:
4?1
/
input&?#
inputs/input????????? 
p 
? "???
???

W?
0/W 
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
^__inference_deep_learning_fc__dense_2_keras_3_layer_call_and_return_conditional_losses_5422115?"#G?D
=?:
4?1
/
input&?#
inputs/input????????? 
p
? "???
???

W?
0/W 
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
C__inference_deep_learning_fc__dense_2_keras_3_layer_call_fn_5422056?"#G?D
=?:
4?1
/
input&?#
inputs/input????????? 
p 
? "???

W?
W 

b?
b
*
output ?
output?????????
,
preview!?
preview??????????
C__inference_deep_learning_fc__dense_2_keras_3_layer_call_fn_5422071?"#G?D
=?:
4?1
/
input&?#
inputs/input????????? 
p
? "???

W?
W 

b?
b
*
output ?
output?????????
,
preview!?
preview??????????
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5422019?G?D
=?:
4?1
/
input&?#
inputs/input?????????@
p 
? "???
???

W?
0/W@ 

b?
0/b 
,
output"?
0/output????????? 
.
preview#? 
	0/preview????????? 
? ?
^__inference_deep_learning_fc__dense_3_keras_2_layer_call_and_return_conditional_losses_5422041?G?D
=?:
4?1
/
input&?#
inputs/input?????????@
p
? "???
???

W?
0/W@ 

b?
0/b 
,
output"?
0/output????????? 
.
preview#? 
	0/preview????????? 
? ?
C__inference_deep_learning_fc__dense_3_keras_2_layer_call_fn_5421982?G?D
=?:
4?1
/
input&?#
inputs/input?????????@
p 
? "???

W?
W@ 

b?
b 
*
output ?
output????????? 
,
preview!?
preview????????? ?
C__inference_deep_learning_fc__dense_3_keras_2_layer_call_fn_5421997?G?D
=?:
4?1
/
input&?#
inputs/input?????????@
p
? "???

W?
W@ 

b?
b 
*
output ?
output????????? 
,
preview!?
preview????????? ?
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5421945?H?E
>?;
5?2
0
input'?$
inputs/input??????????
p 
? "???
???

W?
0/W?@

b?
0/b@
,
output"?
0/output?????????@
.
preview#? 
	0/preview?????????@
? ?
^__inference_deep_learning_fc__dense_4_keras_1_layer_call_and_return_conditional_losses_5421967?H?E
>?;
5?2
0
input'?$
inputs/input??????????
p
? "???
???

W?
0/W?@

b?
0/b@
,
output"?
0/output?????????@
.
preview#? 
	0/preview?????????@
? ?
C__inference_deep_learning_fc__dense_4_keras_1_layer_call_fn_5421908?H?E
>?;
5?2
0
input'?$
inputs/input??????????
p 
? "???

W?
W?@

b?
b@
*
output ?
output?????????@
,
preview!?
preview?????????@?
C__inference_deep_learning_fc__dense_4_keras_1_layer_call_fn_5421923?H?E
>?;
5?2
0
input'?$
inputs/input??????????
p
? "???

W?
W?@

b?
b@
*
output ?
output?????????@
,
preview!?
preview?????????@?
B__inference_model_layer_call_and_return_conditional_losses_5421094? !"#?N?K
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
B__inference_model_layer_call_and_return_conditional_losses_5421146? !"#?N?K
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
B__inference_model_layer_call_and_return_conditional_losses_5421318? !"#?U?R
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
B__inference_model_layer_call_and_return_conditional_losses_5421401? !"#?U?R
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
'__inference_model_layer_call_fn_5420903? !"#?N?K
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
'__inference_model_layer_call_fn_5421042? !"#?N?K
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
'__inference_model_layer_call_fn_5421206? !"#?U?R
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
'__inference_model_layer_call_fn_5421235? !"#?U?R
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
S__inference_postprocessing_step_35_layer_call_and_return_conditional_losses_5420810Z?0?-
&?#
!?
input_1?????????
? "!?
?
0?????????
? ?
8__inference_postprocessing_step_35_layer_call_fn_5420820M?0?-
&?#
!?
input_1?????????
? "???????????
M__inference_preprocessing_35_layer_call_and_return_conditional_losses_5419887i8?5
.?+
)?&
input_1?????????  
? "-?*
#? 
0?????????  
? ?
2__inference_preprocessing_35_layer_call_fn_5419893\8?5
.?+
)?&
input_1?????????  
? " ??????????  ?
%__inference_signature_wrapper_5421177? !"#?A?>
? 
7?4
2
images(?%
images?????????  "K?H
F
postprocessing_step_35,?)
postprocessing_step_35??????????

K__inference_training_model_layer_call_and_return_conditional_losses_5420734?

 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p 
? "?	??	
?	??	
3?0
.
labels$?!

0/0/labels?????????
???
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
?
1632592784093???
-
W(?%
0/1/1632592784093/W@ 
)
b$?!
0/1/1632592784093/b 
<
output2?/
0/1/1632592784093/output????????? 
>
preview3?0
0/1/1632592784093/preview????????? 
?
1632609604090???
.
W)?&
0/1/1632609604090/W?@
)
b$?!
0/1/1632609604090/b@
<
output2?/
0/1/1632609604090/output?????????@
>
preview3?0
0/1/1632609604090/preview?????????@
?
2???
#
W?
0/1/2/W??

b?
0/1/2/b	?
1
output'?$
0/1/2/output??????????
3
preview(?%
0/1/2/preview??????????
?
3???
!
W?
0/1/3/W 

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?

K__inference_training_model_layer_call_and_return_conditional_losses_5420799?

 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p
? "?	??	
?	??	
3?0
.
labels$?!

0/0/labels?????????
???
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
?
1632592784093???
-
W(?%
0/1/1632592784093/W@ 
)
b$?!
0/1/1632592784093/b 
<
output2?/
0/1/1632592784093/output????????? 
>
preview3?0
0/1/1632592784093/preview????????? 
?
1632609604090???
.
W)?&
0/1/1632609604090/W?@
)
b$?!
0/1/1632609604090/b@
<
output2?/
0/1/1632609604090/output?????????@
>
preview3?0
0/1/1632609604090/preview?????????@
?
2???
#
W?
0/1/2/W??

b?
0/1/2/b	?
1
output'?$
0/1/2/output??????????
3
preview(?%
0/1/2/preview??????????
?
3???
!
W?
0/1/3/W 

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?

K__inference_training_model_layer_call_and_return_conditional_losses_5421633?

 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p 
? "?	??	
?	??	
3?0
.
labels$?!

0/0/labels?????????
???
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
?
1632592784093???
-
W(?%
0/1/1632592784093/W@ 
)
b$?!
0/1/1632592784093/b 
<
output2?/
0/1/1632592784093/output????????? 
>
preview3?0
0/1/1632592784093/preview????????? 
?
1632609604090???
.
W)?&
0/1/1632609604090/W?@
)
b$?!
0/1/1632609604090/b@
<
output2?/
0/1/1632609604090/output?????????@
>
preview3?0
0/1/1632609604090/preview?????????@
?
2???
#
W?
0/1/2/W??

b?
0/1/2/b	?
1
output'?$
0/1/2/output??????????
3
preview(?%
0/1/2/preview??????????
?
3???
!
W?
0/1/3/W 

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?

K__inference_training_model_layer_call_and_return_conditional_losses_5421731?

 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p
? "?	??	
?	??	
3?0
.
labels$?!

0/0/labels?????????
???
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
?
1632592784093???
-
W(?%
0/1/1632592784093/W@ 
)
b$?!
0/1/1632592784093/b 
<
output2?/
0/1/1632592784093/output????????? 
>
preview3?0
0/1/1632592784093/preview????????? 
?
1632609604090???
.
W)?&
0/1/1632609604090/W?@
)
b$?!
0/1/1632609604090/b@
<
output2?/
0/1/1632609604090/output?????????@
>
preview3?0
0/1/1632609604090/preview?????????@
?
2???
#
W?
0/1/2/W??

b?
0/1/2/b	?
1
output'?$
0/1/2/output??????????
3
preview(?%
0/1/2/preview??????????
?
3???
!
W?
0/1/3/W 

b?
0/1/3/b
0
output&?#
0/1/3/output?????????
2
preview'?$
0/1/3/preview?????????
? ?

0__inference_training_model_layer_call_fn_5420140?	
 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p 
? "???
1?.
,
labels"?
0/labels?????????
???
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
1632592784093???
+
W&?#
1/1632592784093/W@ 
'
b"?
1/1632592784093/b 
:
output0?-
1/1632592784093/output????????? 
<
preview1?.
1/1632592784093/preview????????? 
?
1632609604090???
,
W'?$
1/1632609604090/W?@
'
b"?
1/1632609604090/b@
:
output0?-
1/1632609604090/output?????????@
<
preview1?.
1/1632609604090/preview?????????@
?
2???
!
W?
1/2/W??

b?
1/2/b	?
/
output%?"

1/2/output??????????
1
preview&?#
1/2/preview??????????
?
3???

W?
1/3/W 

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview??????????

0__inference_training_model_layer_call_fn_5420669?	
 !"#J?G
@?=
7?4
2
images(?%
images?????????  
p
? "???
1?.
,
labels"?
0/labels?????????
???
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
1632592784093???
+
W&?#
1/1632592784093/W@ 
'
b"?
1/1632592784093/b 
:
output0?-
1/1632592784093/output????????? 
<
preview1?.
1/1632592784093/preview????????? 
?
1632609604090???
,
W'?$
1/1632609604090/W?@
'
b"?
1/1632609604090/b@
:
output0?-
1/1632609604090/output?????????@
<
preview1?.
1/1632609604090/preview?????????@
?
2???
!
W?
1/2/W??

b?
1/2/b	?
/
output%?"

1/2/output??????????
1
preview&?#
1/2/preview??????????
?
3???

W?
1/3/W 

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview??????????

0__inference_training_model_layer_call_fn_5421468?	
 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p 
? "???
1?.
,
labels"?
0/labels?????????
???
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
1632592784093???
+
W&?#
1/1632592784093/W@ 
'
b"?
1/1632592784093/b 
:
output0?-
1/1632592784093/output????????? 
<
preview1?.
1/1632592784093/preview????????? 
?
1632609604090???
,
W'?$
1/1632609604090/W?@
'
b"?
1/1632609604090/b@
:
output0?-
1/1632609604090/output?????????@
<
preview1?.
1/1632609604090/preview?????????@
?
2???
!
W?
1/2/W??

b?
1/2/b	?
/
output%?"

1/2/output??????????
1
preview&?#
1/2/preview??????????
?
3???

W?
1/3/W 

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview??????????

0__inference_training_model_layer_call_fn_5421535?	
 !"#Q?N
G?D
>?;
9
images/?,
inputs/images?????????  
p
? "???
1?.
,
labels"?
0/labels?????????
???
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
1632592784093???
+
W&?#
1/1632592784093/W@ 
'
b"?
1/1632592784093/b 
:
output0?-
1/1632592784093/output????????? 
<
preview1?.
1/1632592784093/preview????????? 
?
1632609604090???
,
W'?$
1/1632609604090/W?@
'
b"?
1/1632609604090/b@
:
output0?-
1/1632609604090/output?????????@
<
preview1?.
1/1632609604090/preview?????????@
?
2???
!
W?
1/2/W??

b?
1/2/b	?
/
output%?"

1/2/output??????????
1
preview&?#
1/2/preview??????????
?
3???

W?
1/3/W 

b?
1/3/b
.
output$?!

1/3/output?????????
0
preview%?"
1/3/preview?????????