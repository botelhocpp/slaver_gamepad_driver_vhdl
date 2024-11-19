LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Testbench IS
PORT (
    i_Clk : IN STD_LOGIC;
    
    -- Gamepad Connections
    i_Gamepad_Up : IN STD_LOGIC;
    i_Gamepad_Down : IN STD_LOGIC;
    i_Gamepad_Left_A : IN STD_LOGIC;
    i_Gamepad_Right_B : IN STD_LOGIC;
    o_Gamepad_Action_Com : OUT STD_LOGIC;
    o_Gamepad_Arrows_Com : OUT STD_LOGIC;
    
    -- LED Connections
    o_Led_0 : OUT STD_LOGIC;
    o_Led_1 : OUT STD_LOGIC;
    o_Led_2 : OUT STD_LOGIC;
    o_Led_3 : OUT STD_LOGIC
);
END ENTITY;

ARCHITECTURE Rtl OF Testbench IS
BEGIN
    SLAVER_DRIVER_UUT: ENTITY WORK.SlaverDriver
    PORT MAP (
        i_Clk => i_Clk,
        i_Gamepad_Up => i_Gamepad_Up,
        i_Gamepad_Down => i_Gamepad_Down,
        i_Gamepad_Left_A => i_Gamepad_Left_A,
        i_Gamepad_Right_B => i_Gamepad_Right_B,
        o_Gamepad_Action_Com => o_Gamepad_Action_Com,
        o_Gamepad_Arrows_Com => o_Gamepad_Arrows_Com,
        o_Pressed_Up => OPEN,
        o_Pressed_Down => OPEN,
        o_Pressed_Left => o_Led_0,
        o_Pressed_Right => o_Led_1,
        o_Pressed_A => o_Led_2,
        o_Pressed_B => o_Led_3
    );
END ARCHITECTURE;