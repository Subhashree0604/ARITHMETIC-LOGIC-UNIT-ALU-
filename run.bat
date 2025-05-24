@echo off
iverilog -o alu_test alu.v tb_alu.v
vvp alu_test
pause
