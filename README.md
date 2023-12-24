# LLLM - Local LLMs with llamafile

![local llms with llamafile](img/local-llms-with-llamafile.png)

## Quick setup
> Get up and running quickly with these instructions
- Download these files from the [docs](https://github.com/Mozilla-Ocho/llamafile?tab=readme-ov-file#other-example-llamafiles) and place them in this directory
  - [mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile](https://huggingface.co/jartine/mistral-7b.llamafile/resolve/main/mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile?download=true)
  - [mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile](https://huggingface.co/jartine/mistral-7b.llamafile/resolve/main/mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile?download=true)
  - [wizardcoder-python-13b-main.llamafile](https://huggingface.co/jartine/wizardcoder-13b-python/resolve/main/wizardcoder-python-13b-main.llamafile?download=true)
- Run the commands below

## Commands
> Run these commands from this directory
- Run a prompt on mistral-7b, no logging
  - `./mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile -p "list 5 pros and cons of python" --log-disable`
- Run the self contained, web server UI for mistral-7b
  - `./mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile`
- Run wizard coder
  - `./wizardcoder-python-13b-main.llamafile`


## Reusable bash function (local_llm.sh:lllm())
> Let's build a reusable local llm function to call local LLMs from anywhere.
> 
> There are many better ways to do this, but heres a simple, quick way to get local LLMs anywhere in your terminal’
> 
> I recommend checking out [‘LLM’](https://github.com/simonw/llm) for a complete in terminal, LLM solution.
- Test out the lllm() function with `source local_llm.sh`
- Example commands
  - `lllm "Explain LLM architecture"`
  - `lllm "list 5 pros and cons of python" mistral 0.9`
  - `lllm "count items in list that are str and bool types" wizard`
- Move the lllm function into your .bashrc or .zshrc or .bash_profile
- Now you can call lllm() from anywhere in your terminal

## Resources
- watch the devlog where we create this repo
    - https://youtu.be/XnoKvdeZAN8
- llamafile codebase
    - https://github.com/Mozilla-Ocho/llamafile/tree/0.3
- Original llamafile introduction
    - https://hacks.mozilla.org/2023/11/introducing-llamafile/
- Core author - creator of [llamafile](https://github.com/Mozilla-Ocho/llamafile) * [cosmopolitan](https://github.com/jart/cosmopolitan)
    - https://justine.lol/
- Original Blog Post
    - https://justine.lol/oneliners/
- How llamafile works
    - https://github.com/Mozilla-Ocho/llamafile/tree/0.3?tab=readme-ov-file#how-llamafile-works

