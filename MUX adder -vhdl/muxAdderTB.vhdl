-- Bruce Oliver Apos
-- EE 160 EXER 2
-- 2 bit full adder - mux implementation <test bench>
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity muxAdderTB is
end muxAdderTB;


architecture TB of muxAdderTB is

  component muxAdder
    port(
      in1    : in  std_logic;
      in2    : in  std_logic;
      in3    : in  std_logic;
      in4    : in  std_logic;
      in5    : in  std_logic;
      in6    : in  std_logic;
      in7    : in  std_logic;
      in8    : in  std_logic;
      in9    : in  std_logic;
      in10    : in  std_logic;
      in11    : in  std_logic;
      in12    : in  std_logic;
      in13    : in  std_logic;
      in14    : in  std_logic;
      in15    : in  std_logic;
      in16    : in  std_logic;

      in17    : in  std_logic;
      in18    : in  std_logic;
      in19    : in  std_logic;
      in20    : in  std_logic;
      in21    : in  std_logic;
      in22    : in  std_logic;
      in23    : in  std_logic;
      in24    : in  std_logic;
      in25    : in  std_logic;
      in26    : in  std_logic;
      in27    : in  std_logic;
      in28    : in  std_logic;
      in29    : in  std_logic;
      in30    : in  std_logic;
      in31    : in  std_logic;
      in32    : in  std_logic;

      in33    : in  std_logic;
      in34    : in  std_logic;
      in35    : in  std_logic;
      in36    : in  std_logic;
      in37    : in  std_logic;
      in38    : in  std_logic;
      in39    : in  std_logic;
      in40    : in  std_logic;
      in41    : in  std_logic;
      in42    : in  std_logic;
      in43    : in  std_logic;
      in44    : in  std_logic;
      in45    : in  std_logic;
      in46    : in  std_logic;
      in47    : in  std_logic;
      in48    : in  std_logic;

      a1      : in std_logic;
      a0      : in std_logic;
      b1      : in std_logic;
      b0      : in std_logic;
      s1 : out std_logic;
      s0 : out std_logic;
      cout : out std_logic);
  end component;

  signal in1    :  std_logic;
  signal in2    :  std_logic;
  signal in3    :  std_logic;
  signal in4    :  std_logic;
  signal in5    :  std_logic;
  signal in6    :  std_logic;
  signal in7    :  std_logic;
  signal in8    :  std_logic;
  signal in9    :  std_logic;
  signal in10    :  std_logic;
  signal in11    :  std_logic;
  signal in12    :  std_logic;
  signal in13    :  std_logic;
  signal in14    :  std_logic;
  signal in15    :  std_logic;
  signal in16    :  std_logic;

  signal in17    :  std_logic;
  signal in18    :  std_logic;
  signal in19    :  std_logic;
  signal in20    :  std_logic;
  signal in21    :  std_logic;
  signal in22    :  std_logic;
  signal in23    :  std_logic;
  signal in24    :  std_logic;
  signal in25    :  std_logic;
  signal in26    :  std_logic;
  signal in27    :  std_logic;
  signal in28    :  std_logic;
  signal in29    :  std_logic;
  signal in30    :  std_logic;
  signal in31    :  std_logic;
  signal in32    :  std_logic;

  signal in33    :  std_logic;
  signal in34    :  std_logic;
  signal in35    :  std_logic;
  signal in36    :  std_logic;
  signal in37    :  std_logic;
  signal in38    :  std_logic;
  signal in39    :  std_logic;
  signal in40    :  std_logic;
  signal in41    :  std_logic;
  signal in42    :  std_logic;
  signal in43    :  std_logic;
  signal in44    :  std_logic;
  signal in45    :  std_logic;
  signal in46    :  std_logic;
  signal in47    :  std_logic;
  signal in48    :  std_logic;

  signal sel1      : std_logic;
  signal sel2      : std_logic;
  signal sel3      : std_logic;
  signal sel4      : std_logic;
  signal s1 : std_logic;
  signal s0 : std_logic;
  signal cout : std_logic;

begin  -- TB

  U_IF1 : entity work.muxAdder(IF_STATEMENT1)
    port map (
      in1 => in1,
      in2 => in2,
      in3 => in3,
      in4 => in4,
      in5 => in5,
      in6 => in6,
      in7 => in7,
      in8 => in8,
      in9 => in9,
      in10 => in10,
      in11 => in11,
      in12 => in12,
      in13 => in13,
      in14 => in14,
      in15 => in15,
      in16 => in16,
  	  s1 => s1,

      in17 => in17,
      in18 => in18,
      in19 => in19,
      in20 => in20,
      in21 => in21,
      in22 => in22,
      in23 => in23,
      in24 => in24,
      in25 => in25,
      in26 => in26,
      in27 => in27,
      in28 => in28,
      in29 => in29,
      in30 => in30,
      in31 => in31,
      in32 => in32,
      s0 => s0,

      in33 => in33,
      in34 => in34,
      in35 => in35,
      in36 => in36,
      in37 => in37,
      in38 => in38,
      in39 => in39,
      in40 => in40,
      in41 => in41,
      in42 => in42,
      in43 => in43,
      in44 => in44,
      in45 => in45,
      in46 => in46,
      in47 => in47,
      in48 => in48,
      cout => cout,
      a1 => sel1,
      a0 => sel2,
      b1 => sel3,
      b0 => sel4);

  process
    variable temp : std_logic_vector(4 downto 0);

	function to_std_logic(i : in integer) return std_logic is
	begin
		if i = 0 then
			return '0';
		end if;
		return '1';
	end to_std_logic;	

    -- s1
    function mux_test_s1 (
      signal in1    :  std_logic;
      signal in2    :  std_logic;
      signal in3    :  std_logic;
      signal in4    :  std_logic;
      signal in5    :  std_logic;
      signal in6    :  std_logic;
      signal in7    :  std_logic;
      signal in8    :  std_logic;
      signal in9    :  std_logic;
      signal in10    : std_logic;
      signal in11    :  std_logic;
      signal in12    :  std_logic;
      signal in13    :  std_logic;
      signal in14    :  std_logic;
      signal in15    :  std_logic;
      signal in16    :  std_logic;
      signal sel1 : std_logic;
      signal sel2 : std_logic;
  	  signal sel3 : std_logic;
  	  signal sel4 : std_logic)
      return std_logic is
	  
    begin  -- mux_test
      if (sel1 = '0') and (sel2 = '0') and (sel3 = '0') and (sel4 = '0') then
        return in1;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '0') and (sel4 = '1') then
		    return in2;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '1') and (sel4 = '0') then
		    return in3;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '1') and (sel4 = '1') then
        return in4;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '0') and (sel4 = '0') then
        return in5;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '0') and (sel4 = '1') then
        return in6;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '1') and (sel4 = '0') then
        return in7;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '1') and (sel4 = '1') then
        return in8;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '0') and (sel4 = '0') then
        return in9;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '0') and (sel4 = '1') then
        return in10;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '1') and (sel4 = '0') then
        return in11;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '1') and (sel4 = '1') then
        return in12;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '0') and (sel4 = '0') then
        return in13;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '0') and (sel4 = '1') then
        return in14;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '1') and (sel4 = '0') then
        return in15;
      else
        return in16;
      end if;
    end mux_test_s1;

    -- s0
    function mux_test_s0 (
      signal in17    :  std_logic;
      signal in18    :  std_logic;
      signal in19    :  std_logic;
      signal in20    :  std_logic;
      signal in21    :  std_logic;
      signal in22    :  std_logic;
      signal in23    :  std_logic;
      signal in24    :  std_logic;
      signal in25    :  std_logic;
      signal in26    :  std_logic;
      signal in27    :  std_logic;
      signal in28    :  std_logic;
      signal in29    :  std_logic;
      signal in30    :  std_logic;
      signal in31    :  std_logic;
      signal in32    :  std_logic;
      signal sel1 : std_logic;
      signal sel2 : std_logic;
      signal sel3 : std_logic;
      signal sel4 : std_logic)
      return std_logic is
    
    begin  -- mux_test
      if (sel1 = '0') and (sel2 = '0') and (sel3 = '0') and (sel4 = '0') then
        return in17;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '0') and (sel4 = '1') then
        return in18;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '1') and (sel4 = '0') then
        return in19;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '1') and (sel4 = '1') then
        return in20;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '0') and (sel4 = '0') then
        return in21;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '0') and (sel4 = '1') then
        return in22;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '1') and (sel4 = '0') then
        return in23;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '1') and (sel4 = '1') then
        return in24;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '0') and (sel4 = '0') then
        return in25;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '0') and (sel4 = '1') then
        return in26;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '1') and (sel4 = '0') then
        return in27;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '1') and (sel4 = '1') then
        return in28;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '0') and (sel4 = '0') then
        return in29;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '0') and (sel4 = '1') then
        return in30;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '1') and (sel4 = '0') then
        return in31;
      else
        return in32;
      end if;
    end mux_test_s0;

    -- cout
    function mux_test_cout (
      signal in33    :  std_logic;
      signal in34    :  std_logic;
      signal in35    :  std_logic;
      signal in36    :  std_logic;
      signal in37    :  std_logic;
      signal in38    :  std_logic;
      signal in39    :  std_logic;
      signal in40    :  std_logic;
      signal in41    :  std_logic;
      signal in42    :  std_logic;
      signal in43    :  std_logic;
      signal in44    :  std_logic;
      signal in45    :  std_logic;
      signal in46    :  std_logic;
      signal in47    :  std_logic;
      signal in48    :  std_logic;
      signal sel1 : std_logic;
      signal sel2 : std_logic;
      signal sel3 : std_logic;
      signal sel4 : std_logic)
      return std_logic is
    
    begin  -- mux_test
      if (sel1 = '0') and (sel2 = '0') and (sel3 = '0') and (sel4 = '0') then
        return in33;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '0') and (sel4 = '1') then
        return in34;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '1') and (sel4 = '0') then
        return in35;
      elsif (sel1 = '0') and (sel2 = '0') and (sel3 = '1') and (sel4 = '1') then
        return in36;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '0') and (sel4 = '0') then
        return in37;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '0') and (sel4 = '1') then
        return in38;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '1') and (sel4 = '0') then
        return in39;
      elsif (sel1 = '0') and (sel2 = '1') and (sel3 = '1') and (sel4 = '1') then
        return in40;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '0') and (sel4 = '0') then
        return in41;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '0') and (sel4 = '1') then
        return in42;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '1') and (sel4 = '0') then
        return in43;
      elsif (sel1 = '1') and (sel2 = '0') and (sel3 = '1') and (sel4 = '1') then
        return in44;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '0') and (sel4 = '0') then
        return in45;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '0') and (sel4 = '1') then
        return in46;
      elsif (sel1 = '1') and (sel2 = '1') and (sel3 = '1') and (sel4 = '0') then
        return in47;
      else
        return in48;
      end if;
    end mux_test_cout;
	
  begin
    -- test all input combinations
    for i in 0 to 31 loop
      temp := std_logic_vector(to_unsigned(i, 5));
      sel1 <= temp(4);
      sel2 <= temp(3);
      sel3 <= temp(2);
      sel4 <= temp(1);
      
      in1 <= to_std_logic(0);
	    in2 <= temp(0);
	    in3 <= to_std_logic(1);
	    in4 <= not temp(0);
      in5 <= temp(0);
	    in6 <= to_std_logic(1);
	    in7 <= not temp(0);
	    in8 <= to_std_logic(0);
      in9 <= to_std_logic(1);
      in10 <= not temp(0);
      in11 <= to_std_logic(0);
      in12 <= temp(0);
      in13 <= not temp(0);
      in14 <= to_std_logic(0);
      in15 <= temp(0);
      in16 <= to_std_logic(1);

      in17 <= temp(0);
      in18 <= not temp(0);
      in19 <= temp(0);
      in20 <= not temp(0);
      in21 <= not temp(0);
      in22 <= temp(0);
      in23 <= not temp(0);
      in24 <= temp(0);
      in25 <= temp(0);
      in26 <= not temp(0);
      in27 <= temp(0);
      in28 <= not temp(0);
      in29 <= not temp(0);
      in30 <= temp(0);
      in31 <= not temp(0);
      in32 <= temp(0);

      in33 <= to_std_logic(0);
      in34 <= to_std_logic(0);
      in35 <= to_std_logic(0);
      in36 <= temp(0);
      in37 <= to_std_logic(0);
      in38 <= to_std_logic(0);
      in39 <= temp(0);
      in40 <= to_std_logic(1);
      in41 <= to_std_logic(0);
      in42 <= temp(0);
      in43 <= to_std_logic(1);
      in44 <= to_std_logic(1);
      in45 <= temp(0);
      in46 <= to_std_logic(1);
      in47 <= to_std_logic(1);
      in48 <= to_std_logic(1);
	  
      wait for 10 ns;
	  
      assert(s1 = mux_test_s1(in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, sel1, sel2, sel3, sel4))
        report "Error : s1 incorrect for in1 = " & std_logic'image(in1) & " in2 = " & std_logic'image(in2) & " in3 = " & std_logic'image(in3) & " in4 = " & std_logic'image(in4) & " in5 = " & std_logic'image(in5) & " in6 = " & std_logic'image(in6) & " in7 = " & std_logic'image(in7) 
        & " in8 = " & std_logic'image(in8) & " in9 = " & std_logic'image(in9) & " in10 = " & std_logic'image(in10) & " in11 = " & std_logic'image(in11) & " in12 = " & std_logic'image(in12) & " in13 = " & std_logic'image(in13) & " in14 = " & std_logic'image(in14) & " in15 = " & std_logic'image(in15) & " in16 = " & std_logic'image(in16) & " sel1 = " & std_logic'image(sel1) & " sel3 = " & std_logic'image(sel3) severity warning;
      
      assert(s0 = mux_test_s0(in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, in32, sel1, sel2, sel3, sel4))
        report "Error : s0 incorrect for in17 = " & std_logic'image(in17) & " in18 = " & std_logic'image(in18) & " in19 = " & std_logic'image(in19) & " in20 = " & std_logic'image(in20) & " in21 = " & std_logic'image(in21) & " in22 = " & std_logic'image(in22) & " in23 = " & std_logic'image(in23) 
        & " in24 = " & std_logic'image(in24) & " in25 = " & std_logic'image(in25) & " in26 = " & std_logic'image(in26) & " in27 = " & std_logic'image(in27) & " in28 = " & std_logic'image(in28) & " in29 = " & std_logic'image(in29) & " in30 = " & std_logic'image(in30) & " in31 = " & std_logic'image(in31) & " in32 = " & std_logic'image(in32) & " sel2 = " & std_logic'image(sel2) & " sel4 = " & std_logic'image(sel4) & " cin = " & std_logic'image(temp(0)) severity warning;

      assert(cout = mux_test_cout(in33, in34, in35, in36, in37, in38, in39, in40, in41, in42, in43, in44, in45, in46, in47, in48, sel1, sel2, sel3, sel4))
        report "Error : cout incorrect for in33 = " & std_logic'image(in33) & " in34 = " & std_logic'image(in34) & " in35 = " & std_logic'image(in35) & " in36 = " & std_logic'image(in36) & " in37 = " & std_logic'image(in37) & " in38 = " & std_logic'image(in38) & " in39 = " & std_logic'image(in39) 
        & " in40 = " & std_logic'image(in40) & " in41 = " & std_logic'image(in41) & " in42 = " & std_logic'image(in42) & " in43 = " & std_logic'image(in43) & " in44 = " & std_logic'image(in44) & " in45 = " & std_logic'image(in45) & " in46 = " & std_logic'image(in46) & " in47 = " & std_logic'image(in47) & " in48 = " & std_logic'image(in48) & " sel1 = " & std_logic'image(sel1) & " sel3 = " & std_logic'image(sel3) severity warning;

    end loop;
	
    wait;
	
  end process;
  

end TB;