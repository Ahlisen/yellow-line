player = argument0;

gamepad_set_axis_deadzone(player, .25);
inputHorizontal = gamepad_axis_value(player, gp_axislh);
inputVertical = gamepad_axis_value(player, gp_axislv);
inputHorizontalAim = gamepad_axis_value(player, gp_axisrh);
inputVerticalAim = gamepad_axis_value(player, gp_axisrv);
inputA = gamepad_button_check_pressed(player,gp_face1);
inputB = gamepad_button_check_pressed(player,gp_face2);
inputX = gamepad_button_check_pressed(player,gp_face3);
inputY = gamepad_button_check_pressed(player,gp_face4);
inputShoulderR = gamepad_button_check_pressed(player,gp_shoulderr);
inputShoulderL = gamepad_button_check_pressed(player,gp_shoulderl);
inputShoulderTriggerValueRight = gamepad_button_value(player, gp_shoulderrb);
inputShoulderTriggerValueLeft = gamepad_button_value(player, gp_shoulderlb);
