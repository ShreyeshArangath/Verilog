# Verilog
## What is Verilog? 
Verilog is an Hardware Description Language(HDL). It is used to model electronic systems. A verilog file uses a .v extension. Each verilog file is written with a test bench. The naming convention for the test bench is 
```
<file_name>_tb.v
```
Usually, you are to compile the test bench code rather than the original verilog file. To compile the test bench code use 
```
iverilog -o <file_name>_tb.vpp <file_name>_tb.v
vpp <file_name>_tb.vpp
```
** NOTE: VPP is a C++ class library. A C++ program linked to VPP has the ability to simulate and generate Verilog HDL code. **

## How to install GTKWave 
```
brew tap homebrew/cask
brew cask install gtkwave
```
Now, install Switch using Perl's package manager 
```
cpan install Switch
perl -V:'installsitelib'
```
Copy switch to the right location 
```
sudo cp /usr/local/Cellar/perl/5.*/lib/perl5/site_perl/5.*/Switch.pm /Library/Perl/5.*/
```
Run GTKWave 
```
/Applications/gtkwave.app/Contents/Resources/bin/gtkwave

```


# How to use GTKWave using Verilog
```
initial begin
       $dumpfile("hello_tb.vcd"); // THIS IS THE OUTPUT FILE
       $dumpvars(0, hello_tb); 

       A=0;
       #20;

       A=1;
       #20;

       A=0;
       #20;

       $display("Test complete"); 
end
```

## Technologies used
GTKWave, Icarus Verilog, Homebrew 
