# Iron Fist Arena

Jogo de luta 3D no estilo Tekken que roda no navegador. É um arquivo HTML único e funciona offline.

**Para jogar:** baixe `tekken-arena.html` e abra com duplo clique (Chrome, Edge ou Firefox).

- Personagens: Lili, King, Paul e Heihachi (modelos low-poly feitos em código, inspirados nos originais)
- Modo 1P contra a CPU com 3 níveis de dificuldade (o King é o oponente padrão)
- Modo 2 jogadores no mesmo teclado. Se os dois escolherem o mesmo lutador, o 2P usa roupa alternativa.
- Sistemas: juggles, counter hit, wall splat, agarrões com escape, sidestep, Heat Burst/Heat Smash e Rage Art

## Controles (1 jogador)

| Ação | Tecla |
|---|---|
| Mover / agachar / pular | `A` `D` `S` `W` ou setas |
| 1 · 2 · 3 · 4 (soco E/D, chute E/D) | `U` `I` `J` `K` |
| Agarrão | `U`+`I` |
| Heat | `I`+`J` ou `O` |
| Rage Art (vida ≤ 25%) | ↘+`U`+`I` ou `P` |
| Defesa | segurar trás ou ficar parado (↓/↙ defende golpes baixos) |
| Sidestep / pulo | tocar / segurar ↑ |
| Pausa e lista de golpes | `Esc` |

## Controles (2 jogadores no mesmo teclado)

| | 1P | 2P |
|---|---|---|
| Mover | `WASD` | setas (ou `I` `J` `K` `L`) |
| 1 · 2 · 3 · 4 | `R` `T` `F` `G` | `Num4` `Num5` `Num1` `Num2` (ou `P` `´` `Ç` `~`) |
| Heat / Rage Art | `Y` / `H` | `Num6` / `Num3` (ou `[` / `]`) |

## Desenvolvimento

O código-fonte fica em `src/game.html`. O build embute o three.js (r158) para o arquivo final funcionar sem internet:

```bash
npm pack three@0.158.0 && tar xzf three-0.158.0.tgz
./build.sh package/build/three.min.js   # gera tekken-arena.html
```
