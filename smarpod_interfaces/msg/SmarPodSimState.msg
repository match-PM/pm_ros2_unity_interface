# State of the simulated SmarPod, published by Unity and read by
# smaract_hexapod_unity_hw_interface in place of the SmarPod SDK.

# Values of move_status, identical to the SDK's Smarpod_GetMoveStatus.
uint8 STOPPED = 0
uint8 HOLDING = 1
uint8 MOVING = 2
uint8 CALIBRATING = 3
uint8 REFERENCING = 4
uint8 STANDBY = 5

builtin_interfaces/Time stamp

# Platform pose X, Y, Z [m] and A, B, C [rad] (rotation about X, Y, Z).
float64[6] pose
float64[6] velocity

# Hardware pivot [m] currently applied by the simulation.
geometry_msgs/Point pivot

uint8 move_status
# Maximum translational speed [m/s] used for moves.
float64 speed
bool is_referenced
