# Iron Fist Arena

Jogo de luta 3D no estilo Tekken que roda no navegador. É um arquivo HTML único e funciona offline.

**Para jogar:** baixe `tekken-arena.html` e abra com duplo clique (Chrome, Edge ou Firefox).

- Personagens: Lili, King, Paul e Heihachi (modelos low-poly feitos em código, inspirados nos originais)
- Modo 1P contra a CPU com 3 níveis de dificuldade. O King é o oponente padrão.
- Sistemas: juggles, counter hit, wall splat, agarrões com escape, sidestep, Heat Burst/Heat Smash e Rage Art

## Controles

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

## Desenvolvimento

O código-fonte fica em `src/game.html`. O build embute o three.js (r158) para o arquivo final funcionar sem internet:

```bash
npm pack three@0.158.0 && tar xzf three-0.158.0.tgz
./build.sh package/build/three.min.js   # gera tekken-arena.html
```
