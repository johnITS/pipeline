
*
XPlaceholder*
dtype0*
shape: 
-
yhatPlaceholder*
dtype0*
shape: 
A
weight/initial_valueConst*
dtype0*
valueB
 *  �?
P
weightVariable*
	container *
shape: *
dtype0*
shared_name 
�
weight/AssignAssignweightweight/initial_value*
use_locking(*
validate_shape(*
T0*
_class
loc:@weight
C
weight/readIdentityweight*
T0*
_class
loc:@weight
?
bias/initial_valueConst*
dtype0*
valueB
 *  �?
N
biasVariable*
	container *
shape: *
dtype0*
shared_name 
z
bias/AssignAssignbiasbias/initial_value*
use_locking(*
validate_shape(*
T0*
_class
	loc:@bias
=
	bias/readIdentitybias*
T0*
_class
	loc:@bias
#
MulMulXweight/read*
T0

subSubyhatMul*
T0
%
sub_1Subsub	bias/read*
T0
 
SquareSquaresub_1*
T0
9
gradients/ShapeShapeSquare*
out_type0*
T0
<
gradients/ConstConst*
dtype0*
valueB
 *  �?
A
gradients/FillFillgradients/Shapegradients/Const*
T0
Y
gradients/Square_grad/mul/xConst^gradients/Fill*
dtype0*
valueB
 *   @
M
gradients/Square_grad/mulMulgradients/Square_grad/mul/xsub_1*
T0
V
gradients/Square_grad/mul_1Mulgradients/Fillgradients/Square_grad/mul*
T0
A
gradients/sub_1_grad/ShapeShapesub*
out_type0*
T0
E
gradients/sub_1_grad/Shape_1Const*
dtype0*
valueB 
�
*gradients/sub_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_1_grad/Shapegradients/sub_1_grad/Shape_1*
T0
�
gradients/sub_1_grad/SumSumgradients/Square_grad/mul_1*gradients/sub_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
t
gradients/sub_1_grad/ReshapeReshapegradients/sub_1_grad/Sumgradients/sub_1_grad/Shape*
Tshape0*
T0
�
gradients/sub_1_grad/Sum_1Sumgradients/Square_grad/mul_1,gradients/sub_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
D
gradients/sub_1_grad/NegNeggradients/sub_1_grad/Sum_1*
T0
x
gradients/sub_1_grad/Reshape_1Reshapegradients/sub_1_grad/Neggradients/sub_1_grad/Shape_1*
Tshape0*
T0
m
%gradients/sub_1_grad/tuple/group_depsNoOp^gradients/sub_1_grad/Reshape^gradients/sub_1_grad/Reshape_1
�
-gradients/sub_1_grad/tuple/control_dependencyIdentitygradients/sub_1_grad/Reshape&^gradients/sub_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_1_grad/Reshape
�
/gradients/sub_1_grad/tuple/control_dependency_1Identitygradients/sub_1_grad/Reshape_1&^gradients/sub_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/sub_1_grad/Reshape_1
@
gradients/sub_grad/ShapeShapeyhat*
out_type0*
T0
A
gradients/sub_grad/Shape_1ShapeMul*
out_type0*
T0
�
(gradients/sub_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/sub_grad/Shapegradients/sub_grad/Shape_1*
T0
�
gradients/sub_grad/SumSum-gradients/sub_1_grad/tuple/control_dependency(gradients/sub_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/sub_grad/ReshapeReshapegradients/sub_grad/Sumgradients/sub_grad/Shape*
Tshape0*
T0
�
gradients/sub_grad/Sum_1Sum-gradients/sub_1_grad/tuple/control_dependency*gradients/sub_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
@
gradients/sub_grad/NegNeggradients/sub_grad/Sum_1*
T0
r
gradients/sub_grad/Reshape_1Reshapegradients/sub_grad/Neggradients/sub_grad/Shape_1*
Tshape0*
T0
g
#gradients/sub_grad/tuple/group_depsNoOp^gradients/sub_grad/Reshape^gradients/sub_grad/Reshape_1
�
+gradients/sub_grad/tuple/control_dependencyIdentitygradients/sub_grad/Reshape$^gradients/sub_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/sub_grad/Reshape
�
-gradients/sub_grad/tuple/control_dependency_1Identitygradients/sub_grad/Reshape_1$^gradients/sub_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/sub_grad/Reshape_1
=
gradients/Mul_grad/ShapeShapeX*
out_type0*
T0
C
gradients/Mul_grad/Shape_1Const*
dtype0*
valueB 
�
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0
b
gradients/Mul_grad/mulMul-gradients/sub_grad/tuple/control_dependency_1weight/read*
T0
�
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0
n
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*
Tshape0*
T0
Z
gradients/Mul_grad/mul_1MulX-gradients/sub_grad/tuple/control_dependency_1*
T0
�
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0
t
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*
Tshape0*
T0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
�
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Mul_grad/Reshape
�
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1
J
GradientDescent/learning_rateConst*
dtype0*
valueB
 *
�#<
�
2GradientDescent/update_weight/ApplyGradientDescentApplyGradientDescentweightGradientDescent/learning_rate-gradients/Mul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight
�
0GradientDescent/update_bias/ApplyGradientDescentApplyGradientDescentbiasGradientDescent/learning_rate/gradients/sub_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
	loc:@bias

GradientDescentNoOp3^GradientDescent/update_weight/ApplyGradientDescent1^GradientDescent/update_bias/ApplyGradientDescent
%
Mul_1MulXweight/read*
T0
%
addAddMul_1	bias/read*
T0
8

save/ConstConst*
dtype0*
valueB Bmodel
Q
save/SaveV2/tensor_namesConst*
dtype0*!
valueBBbiasBweight
K
save/SaveV2/shape_and_slicesConst*
dtype0*
valueBB B 
y
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbiasweight*
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
L
save/RestoreV2/tensor_namesConst*
dtype0*
valueBBbias
L
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B 
v
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2
v
save/AssignAssignbiassave/RestoreV2*
use_locking(*
validate_shape(*
T0*
_class
	loc:@bias
P
save/RestoreV2_1/tensor_namesConst*
dtype0*
valueBBweight
N
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B 
|
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2
~
save/Assign_1Assignweightsave/RestoreV2_1*
use_locking(*
validate_shape(*
T0*
_class
loc:@weight
6
save/restore_allNoOp^save/Assign^save/Assign_1
*
initNoOp^weight/Assign^bias/Assign"