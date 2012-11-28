# Citation

If you use this software, please cite the corresponding publication:

```
@article{Berenger2010,
author = {Berenger, Francois and Coti, Camille and Zhang, Kam Y. J.},
title = {{PAR: A PARallel And Distributed Job Crusher}},
doi = {10.1093/bioinformatics/btq542},
year = {2010},
journal = {Bioinformatics}
}
```

# External dependencies

You need to install rfoo: http://code.google.com/p/rfoo/

# Some usage examples:
## Basic examples

Run in parallel commands from test_parallel.input
```
cat test_parallel.input | ./parallel.py -i /dev/stdin
```

Same than before but with a progress bar
```
cat test_parallel.input | ./parallel.py -i /dev/stdin -v
```
Run in parallel commands from test_parallel.input and store output in output.log
```
./parallel.py -i test_parallel.input -o output.log
```

Same than before but with a user defined output printer
```
./parallel.py -i test_parallel.input -o output.log -p post_proc_example
```

## real world usage example
1. server side
```
./parallel.py -v -i many_commands.sh -o par_many_commands.log -s
```
2. client side, on each machine you want to join the computation replace SERVER_NAME by the machine name from where you launched parallel.py using `-s`
```
./parallel.py -c SERVER_NAME
```
3. be thrilled! ;)
