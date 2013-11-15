all:
	lt-comp lr apertium-ckb.ckb.dix ckb.automorf.bin
	lt-comp rl apertium-ckb.ckb.dix ckb.autogen.bin

clean:
	rm *.bin
