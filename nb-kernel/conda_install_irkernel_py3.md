<!--- Jupyter Install IRkernel and Python 3 kernel on Windows -->

R and python3 will be installed in separated enviroment using [Anaconda distribution][1].

## Install IRkernel
###In Anaconda Command Prompt.

Create r-env a new environment just for "R essentials"

    > conda create -n r-env
Activate r-env

    C:\Users\USER\Anaconda> activate r-env
    Activating environment "C:\Users\USER\Anaconda\envs\r-env"...`

Install R

    [r-env] C:\Users\USER\Anaconda> conda install -c r r-essentials

Update R env

    [r-env] C:\Users\USER\Anaconda> conda update -c r --all

Open an R console

    [r-env] C:\Users\USER\Anaconda> R

### In an R console

    > install.packages(c('rzmq','repr','IRkernel','IRdisplay'),
                 repos = c('http://irkernel.github.io/', getOption('repos')))

Two alternatives to install IRkernel
1) To install only User

    > IRkernel::installspec()
    Installed kernelspec R in C:\Users\USER\AppData\Roaming\jupyter\kernels\ir

2) To install system-wide

    > IRkernel::installspec(user = FALSE)

## Install Python 3 Kernel

### In Anaconda Command Prompt

    > conda create -n py34 python=3.4
    > activate py34
    > conda install notebook ipykernel

Two alternatives to install python3 kernel

1) To install only User

    [py35] C:\Users\USER\Anaconda> ipython3 kernel install --user
    [InstallNativeKernelSpec] Installed kernelspec python3 in C:\Users\USER\AppData\Roaming\jupyter\kernels\python3

2) To install system-wide

    [py35] C:\Users\USER\Anaconda> ipython3 kernel install
    Installed kernelspec python3 in C:\ProgramData\jupyter\kernels\python3

Check Available kernels

    > jupyter kernelspec list

Now on jupyter notebook


## Reference

- [Jupyter and Conda R](https://www.continuum.io/blog/developer/jupyter-and-conda-r)
- [Irkernel Installation](http://irkernel.github.io/installation/)
- [Pyton 3 kernel](http://stackoverflow.com/questions/28831854/how-do-i-add-python3-kernel-to-jupyter-ipython)
- [Ipython kernel](http://ipython.readthedocs.org/en/stable/install/kernel_install.html)

[1]: https://www.continuum.io/downloads "Download Anaconda"