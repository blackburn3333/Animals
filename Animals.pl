animal_kind(fish,skin).
animal_kind(bird,skin).
animal_kind(mammal,skin).

animal_species(shark,fish,live_birth,dangerous).
animal_species(salmon,fish,ley_eggs,not_dangerous).
animal_species(canary,bird,lay_eggs,not_dangerous).
animal_species(ostrich,bird,lay_eggs,dangerous).

species_properties(shark,fins,swim,delicacy).
species_properties(salmon,fins,swim,delicacy).
species_properties(canary,wings,fly,not_delicacy).
species_properties(ostrich,wings,walk,not_delicacy).

species_background(shark,black,large).
species_background(salmon,gray,small).
species_background(canary,yellow,small).
species_background(ostrich,black,tall).

color:-
    write('What is the color of '),
    read(Name),
    species_background(Name,Color,_),
    write(Name),write(' is '),write(Color).

can:-
    write('Enter animal Name '),
    read(Name),
    write('Enter thing can '),
    read(Do),
    species_properties(Name,_,Do,_),
    write('Yes'),nl,
    write(Name),write(' can '),write(Do);
    write('No ').

have:-
     write('Enter animal Name '),
     read(Name),
     write('What is the thing thet need to have ?'),
     read(Have),
     animal_species(Name,Kind,_,_),
     animal_kind(Kind,Have),
     write('Yes'),nl,
     write(Name),write(' have '),write(Have);
     write('No').

animal_is:-
    write('Enter animal Name '),
    read(Name),
    write('Enter animal Type '),
    read(Type),
    animal_species(Name,_,_,Type),
    write('Yes'),nl,
    write(Name),write(' is '),write(Type);
    write('No').






