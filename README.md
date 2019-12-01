# SO Topics 2019.2

# Blog do Eli Bendersky
> https://eli.thegreenplace.net/2018/measuring-context-switching-and-memory-overheads-for-linux-threads/

# Descrição dos modelos de context-switching
> https://github.com/emb-riscv/specs-markdown/blob/develop/interrupts-use-cases.md#dedicated-context-switch-interrupt

# Dump das instruções RISC-V
> https://github.com/slavaim/riscv-notes/blob/master/magenta/context_switch.md'

# LMBench - Tools for performance analysis
> http://lmbench.sourceforge.net

# Ver as médias de troca da contexto por segundo
- Para isso é preciso instalar:
```
sudo apt install sysstat
```
- Usar o pidstat:
```
pidstat -w 10 1
pidstat -wt
```

# Trocas de contextos houveram na máquina
- Uso do perf, é necessário:
```
sudo apt install linux-tools-generic linux-cloud-tools-generic
ou
sudo apt install linux-tools-4.15.0-65-generic linux-cloud-tools-4.15.0-65-generic

```
- Pode colocar o menos -g no final pra mais informações 
```
sudo perf record -e context-switches -a
```
- Pegar os resultados:
```
sudo perf repost 
```
# Scripts
- Verificar, através dos scripts, os contextos por processos que estão executando (talvez precise do sudo):
```
./ctx_stats.sh
ou
./ctx_v0.sh
```


