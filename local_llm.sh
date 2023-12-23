#!/bin/bash

# Place this script in your .bashrc or .bash_profile file

# Constant for the model directory
MODEL_DIR="/Users/ravix/Documents/projects/yt/local_llm_w_llama_file"

# Function to run the language model
lllm() {
    local prompt=$1
    local model_alias=${2:-mistral}
    local temp=${3:-0.5}
    local model_name

    # Switch to select the correct model file based on the alias
    case "$model_alias" in
        mistral)
            model_name="mistral-7b-instruct-v0.1-Q4_K_M-main.llamafile"
            ;;
        wizard)
            model_name="wizardcoder-python-13b-main.llamafile"
            ;;
        # Add other model aliases and their corresponding file names here
        *)
            echo "Unknown model alias: $model_alias"
            return 1
            ;;
    esac

    # Run the model command
    $MODEL_DIR/$model_name --prompt "$prompt" --temp $temp --log-disable
}

# Example usage:
# lllm "list 5 pros and cons of python" mistral 0.2
