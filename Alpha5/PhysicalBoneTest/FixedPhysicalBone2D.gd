extends PhysicalBone2D
# 원래 simulate_physics가 true가 될 때
# scene/2d/physical_bone_2d.cpp의 
# PhysicalBone2D::_start_physics_simulation()의
# _apply_body_mode()에 의해 
# 적절한 PhysicsServer2D.BodyMode가 설정되어야 하는데
# 어째서인지 Static으로 고정되는 관계로 일단 이렇게 임시조치 함
class_name FixedPhysicalBone2D

var rid:RID

func _enter_tree():
	rid = get_rid();
	
var correct_body_mode:PhysicsServer2D.BodyMode
func _physics_process(delta):
	correct_body_mode = _get_correct_body_mode()
	if is_simulating_physics() && \
			PhysicsServer2D.body_get_mode(rid) != correct_body_mode:
		PhysicsServer2D.body_set_mode(rid, correct_body_mode)

#  이 함수는 scene/2d/physics_body_2d.cpp의 
# RigidDynamicBody2D::_apply_body_mode()의
#  내용을 따라한 것임
func _get_correct_body_mode():
	if freeze:
		match freeze_mode:
			FREEZE_MODE_STATIC:
				return PhysicsServer2D.BODY_MODE_STATIC
			FREEZE_MODE_KINEMATIC:
				return PhysicsServer2D.BODY_MODE_KINEMATIC
	elif lock_rotation:
		return PhysicsServer2D.BODY_MODE_DYNAMIC_LINEAR
	else:
		return PhysicsServer2D.BODY_MODE_DYNAMIC
	
