CPPFLAGS=`pkg-config --cflags --libs gtk+-3.0 webkit2gtk-4.0` -lstdc++

CC=cc
V=v
GPP=g++

main: webview.o vwk
	$(GPP) vwk webview.o $(CPPFLAGS) -o main

vwk: vwk.v
	$(V) -cc $(CC) vwk.v -o vwk

webview.o: webview.h
	$(GPP) -c webview.cc $(CPPFLAGS) -o webview.o

clean:
	rm -rf *.o main vwk