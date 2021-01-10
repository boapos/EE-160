-- Bruce Oliver Apos
-- EE 160 EXER 2
-- 2 bit full adder - mux implementation
library ieee;
use ieee.std_logic_1164.all;

entity muxAdder is
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

    s1      : out std_logic;
    s0      : out std_logic;
	 cout     : out std_logic);
end muxAdder;

-- Concurrent statement examples. Concurrent statements are not part of a
-- process and are executed anytime one of their inputs changes.

architecture IF_STATEMENT1 of muxAdder is
begin

  process(in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, in32, in33, in34, in35, in36, in37, in38, in39, in40, in41, in42, in43, in44, in45, in46, in47, in48, a1, a0, b1, b0)
  begin
    -- if statement is pretty straightforward.
    if (a1 = '0') and (a0 = '0') and (b1 = '0') and (b0 = '0') then
      s1 <= in1;
      s0 <= in17;
      cout <= in33;
    elsif (a1 = '0') and (a0 = '0') and (b1 = '0') and (b0 = '1') then
      s1 <= in2;
      s0 <= in18;
      cout <= in34;
    elsif (a1 = '0') and (a0 = '0') and (b1 = '1') and (b0 = '0') then
      s1 <= in3;
      s0 <= in19;
      cout <= in35;
    elsif (a1 = '0') and (a0 = '0') and (b1 = '1') and (b0 = '1') then
      s1 <= in4;
      s0 <= in20;
      cout <= in36;
    elsif (a1 = '0') and (a0 = '1') and (b1 = '0') and (b0 = '0') then
      s1 <= in5;
      s0 <= in21;
      cout <= in37;
    elsif (a1 = '0') and (a0 = '1') and (b1 = '0') and (b0 = '1') then
      s1 <= in6;
      s0 <= in22;
      cout <= in38;
    elsif (a1 = '0') and (a0 = '1') and (b1 = '1') and (b0 = '0') then
      s1 <= in7;
      s0 <= in23;
      cout <= in39;
    elsif (a1 = '0') and (a0 = '1') and (b1 = '1') and (b0 = '1') then
      s1 <= in8;
      s0 <= in24;
      cout <= in40;
    elsif (a1 = '1') and (a0 = '0') and (b1 = '0') and (b0 = '0') then
      s1 <= in9;
      s0 <= in25;
      cout <= in41;
    elsif (a1 = '1') and (a0 = '0') and (b1 = '0') and (b0 = '1') then
      s1 <= in10;
      s0 <= in26;
      cout <= in42;
    elsif (a1 = '1') and (a0 = '0') and (b1 = '1') and (b0 = '0') then
      s1 <= in11;
      s0 <= in27;
      cout <= in43;
    elsif (a1 = '1') and (a0 = '0') and (b1 = '1') and (b0 = '1') then
      s1 <= in12;
      s0 <= in28;
      cout <= in44;
    elsif (a1 = '1') and (a0 = '1') and (b1 = '0') and (b0 = '0') then
      s1 <= in13;
      s0 <= in29;
      cout <= in45;
    elsif (a1 = '1') and (a0 = '1') and (b1 = '0') and (b0 = '1') then
      s1 <= in14;
      s0 <= in30;
      cout <= in46;
    elsif (a1 = '1') and (a0 = '1') and (b1 = '1') and (b0 = '0') then
      s1 <= in15;
      s0 <= in31;
      cout <= in47;
    else
      s1 <= in16;
      s0 <= in32;
      cout <= in48;
    end if;
  end process;
end IF_STATEMENT1;



