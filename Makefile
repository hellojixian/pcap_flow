OBJS =
OBJS += tcpstream.o
OBJS += udpstream.o
OBJS += main.o

DEF =
DEF += -O2
DEF += --std=c99
DEF += -D_LARGEFILE64_SOURCE
DEF += -D_GNU_SOURCE
DEF += -g

LIBS =
LIBS += -lm
LIBS += -lpthread


all: $(OBJS)
	gcc -g -O2 -o pcap_flows $(OBJS)  $(LIBS)

main.o: main.c
	gcc $(DEF) -c -o $@ -g $<
tcpstream.o: tcpstream.c
		gcc $(DEF) -c -o $@ -g $<
udpstream.o: udpstream.c
				gcc $(DEF) -c -o $@ -g $<


clean:
	rm -f $(OBJS)
	rm -f pcap_flows
