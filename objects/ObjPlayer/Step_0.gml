// ------------------------------
// MOVIMENTO HORIZONTAL
// ------------------------------
velocidadehorizontal = 0;

if (keyboard_check(vk_right)) {
    velocidadehorizontal = velocidade;
}

if (keyboard_check(vk_left)) {
    velocidadehorizontal = -velocidade;
}

// aplica movimento horizontal
x += velocidadehorizontal;


// ------------------------------
// GRAVIDADE
// ------------------------------
velocidadevertical += gravidade;


// ------------------------------
// PULO
// ------------------------------
if (keyboard_check_pressed(vk_up)) {
    // só pula se estiver no chão
    if (place_meeting(x, y + 1, ObjChao)) {
        velocidadevertical = -tamanhoPulo;
    }
}



// ------------------------------
// COLISÃO COM O CHÃO
// ------------------------------
// COLISÃO COM O CHÃO
if (place_meeting(x, y + velocidadevertical, ObjChao)) {
    
    // QUANDO ESTIVER CAINDO
    if (velocidadevertical > 0) {

        // move para cima até parar de bater no chão
        while (!place_meeting(x, y + 1, ObjChao)) {
            y += 1;
        }

        velocidadevertical = 0; // para queda
    }
}

// ------------------------------
// APLICAR QUEDA
// ------------------------------
y += velocidadevertical;



// ------------------------------
// DASH (simples)
// aperte SHIFT para dar um impulso
// ------------------------------
if (keyboard_check_pressed(vk_shift)) {
    if (keyboard_check(vk_right)) x += velocidadeDash;
    if (keyboard_check(vk_left))  x -= velocidadeDash;
}

// ---------------------------------------------------------
// ANIMAÇÕES DO PLAYER
// ---------------------------------------------------------

// virar para o lado certo
if (velocidadehorizontal > 0) image_xscale = 1;
if (velocidadehorizontal < 0) image_xscale = -1;

// Verificar se está no ar
if (!place_meeting(x, y + 1, ObjChao)) {
    // PULANDO
    sprite_index = SprPlayerPulando;
    image_speed = 0;
}
else {
    // No chão
    if (velocidadehorizontal == 0) {
        // PARADO
        sprite_index = SprPlayer;
        image_speed = 0.1;
    } else {
        // CORRENDO
        sprite_index = SprPlayerCorrendo;
        image_speed = 0.25;
    }
}
