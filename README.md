# Local LLMs with LLamafile




## Commands
- Run a prompt on mistral-7b, no logging
  - `./mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile -p "list 5 pros and cons of python" --log-disable`
- Run the self contained, web server UI for mistral-7b
  - `./mistral-7b-instruct-v0.1-Q4_K_M-server.llamafile`


## Reusable bash function
- Let's build a reusable local llm function to call local LLMs from anywhere
  - `lllm "<prompt>" <model> <temp>`