CXXFLAGS=-std=c++17

all: ThreeBody Sun-Earth-Moon Collision

ThreeBody: ThreeBody.cpp screen.h vec2.h curses.h curspriv.h panel.h
	$(CXX) $(CXXFLAGS) ThreeBody.cpp -o $@

Sun-Earth-Moon: Sun-Earth-Moon.cpp screen.h vec2.h curses.h curspriv.h panel.h
	$(CXX) $(CXXFLAGS) Sun-Earth-Moon.cpp -o $@

Collision: Collision.cpp screen.h vec2.h curses.h curspriv.h panel.h
	$(CXX) $(CXXFLAGS) Collision.cpp -o $@

clean:
	rm -f ThreeBody Sun-Earth-Moon Collision

.PHONY: clean
