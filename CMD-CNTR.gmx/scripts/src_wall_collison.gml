if global.hit_num == destruct_1 {
    src_set_building(1);
}
else if global.hit_num == destruct_2 {
    src_set_building(2);
}
else if global.hit_num == destruct_3 {
    src_set_building(3);
}
else if global.hit_num == destruct_4 {
    src_set_building(4);
}

if global.hit_num == jen_text2 {
    jen.message = "I got it!"
}

if global.hit_num == virus_text1 {
    virus = instance_create(50, 50, obj_puzzle2_text);
    virus.color = c_red;
    virus.height = 50;
    virus.message = "HA HA HA. IT'S A GAS.#WATCHING YOUR FRIEND SCRAMBLE WHILE YOU TRY NOT TO KILL THEM."
    move_text = true;
}
else if global.hit_num == virus_text2 {
    virus.message = "ONE WRONG MOVE AND YOUR FRIEND IS DEAD."
}
else if global.hit_num == virus_text3 {
    virus.message = "ONE WRONG MOVE AND AN ENTIRE WORLD IS DELETED FROM EXISTENCE.#THOUSANDS OF PEOPLE."
}
else if global.hit_num == virus_text4 {
    virus.message = "HA HA HA HA HA HA HA HA HA HA HA!"
}
