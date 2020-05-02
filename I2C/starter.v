`timescale 1ns/1ns

// Similar to MOSI, MISO, SCLK
module master_device(ADDR, TX, RX, CLK);
    input RX;
    input [7:0] ADDR;
    output TX, CLK;
    reg [7:0] DATA; //Stores data

    integer i=0;

    always@(ADDR)
        begin
            for(i=0; i<8; i+=1)
                begin 
                    CLK = 0; #10; //Set clock to 0
                    TX = ADDR[i] //Set TX to ADDR[i]
                    CLK = 1; #10; //Create a posedge
                end
            
            for(i=0; i<8; i+=1) //Create a rising edge and read RX
                begin
                    CLK =0; #10;
                    CLK =1; #10;
                    DATA[i] = RX; //Read Data
                end
        end

endmodule 

module slave_device(TX, RX, CLK);
    input RX, CLK; // Master outputs clock and the slave device receives the clock  
    output reg TX; //Since it is an always at block

    reg [7:0] ADDR; //Address - Set in the Test Bench
    reg [7:0] DATA; //Data  - Set in the Test Bench
    reg [7:0] ADDR_COMPARE = 8'd0; //Store input from Master to compare with the ADDR   

    //Counter to keep track of the clock pulses
    reg[3:0] counter = 0; 

    always@(posedge CLK)
    begin
        if(counter < 8)
            begin
                //Load the value at RX into the ADDR
                ADDR_COMPARE[counter] = RX;
            end
        else
            begin
                if(ADDR_COMPARE == ADDR) //Device knows its the one its being spoken to
                begin
                    TX = DATA[counter-8]; //Start pushing out data 
                end
            end
        //Increment the counter 
        counter+=1;
    end

endmodule