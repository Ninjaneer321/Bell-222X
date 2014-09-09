# =====
# Doors
# =====

Doors = {};

Doors.new = func {
   obj = { parents : [Doors],
           crew : aircraft.door.new("instrumentation/doors/crew", 8.0),
           guns : aircraft.door.new("instrumentation/doors/guns", 3.0)
         };
   return obj;
};

Doors.crewexport = func {
   me.crew.toggle();
}

Doors.gunsexport = func {
   me.guns.toggle();
}

# ==============
# Initialization
# ==============

# objects must be here, otherwise local to init()
doorsystem = Doors.new();
