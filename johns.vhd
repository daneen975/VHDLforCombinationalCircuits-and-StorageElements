LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY johns IS
    PORT (
        Clrn, Clk : IN STD_LOGIC;
        W : OUT STD_LOGIC_VECTOR (3 DOWNTO 0);
        Q : OUT STD_LOGIC_VECTOR (0 TO 2)
    );
END johns;

ARCHITECTURE Behavior OF johns IS
    SIGNAL Qreg : STD_LOGIC_VECTOR (0 TO 2);
BEGIN
    PROCESS (Clrn, Clk)
    BEGIN
        IF Clrn = '0' THEN
            Qreg <= "000";
        ELSIF (Clk'EVENT AND Clk = '1') THEN
            Qreg(2) <= Qreg(1);
            Qreg(1) <= Qreg(0);
            Qreg(0) <= NOT Qreg(2);
        END IF;
    END PROCESS;

    PROCESS (Qreg)
    BEGIN
        CASE Qreg IS -- d(i), i=4,…,9
            WHEN "000" => W <= "0001"; -- d4 (1)
            WHEN "100" => W <= "1000"; -- d5 (8)
            WHEN "110" => W <= "1001"; -- d6 (9)
            WHEN "111" => W <= "0011"; -- d7 (3)
            WHEN "011" => W <= "0010"; -- d8 (2)
            WHEN "001" => W <= "0011"; -- d9 (3)
            WHEN OTHERS => W <= "0000"; -- Default case
        END CASE;
    END PROCESS; -- student ID

    Q <= Qreg;
END Behavior; -- 5 0 1 1 8 9 3 2 3
