# LLM Buildingblocks

## Input Embeddings:

Token Embeddings: Each input token (word or sub-word) is converted into a numerical vector using token embeddings. This process transforms discrete textual input into a continuous space where similar words have similar embeddings.
Positional Encodings: Since Transformer models do not inherently process sequential data in order, positional encodings are added to the token embeddings to provide information about the relative or absolute position of the tokens in the sequence.

## Transformer Architecture:

### Multi-Head Self-Attention Mechanism: 

This is the core component of the Transformer. It allows the model to weigh the importance of different words in a sentence, regardless of their position. Each 'head' in the multi-head attention mechanism can focus on different parts of the input sentence, capturing various aspects of the context.

### Scaled Dot-Product Attention: 
This function calculates attention scores by measuring how much focus to put on other parts of the input data for each token in the sequence. It scales the dot products by the dimensionality of the tokens to stabilize gradients during training.

### Layer Normalization: 
Each sub-layer (like self-attention and feed-forward networks) within each Transformer block has a normalization step that stabilizes the learning process by normalizing the data within a layer.

## Feed-Forward Neural Networks:
In each Transformer block, after the multi-head attention mechanism, the data passes through a position-wise feed-forward neural network. This network is applied to each position separately and identically, allowing the model to enhance its representations of the input data.

## Residual Connections:
Each sub-layer (attention and feed-forward) in the Transformer includes a shortcut that adds the input of the sub-layer to its output before passing it to the next layer. This helps in mitigating the vanishing gradient problem as the network depth increases.

## Output Layer:

### Linear Layer: 
The output from the final Transformer block is passed through a linear layer, which projects the high-dimensional token representations down to a vocabulary-sized space.

### Softmax Layer: 
The linear layer’s output is then transformed into a probability distribution over all possible output tokens using a softmax function. This distribution indicates the likelihood of each token being the next token in the sequence.

## Pre-training and Fine-tuning:

### Pre-training: 
LLMs are typically pre-trained on a massive scale using unsupervised learning tasks, such as predicting the next word in a sequence (autoregressive models) or masked word prediction (masked language models).

### Fine-tuning: 
After pre-training, LLMs can be fine-tuned on specific downstream tasks using smaller, task-specific datasets. This phase adjusts the model weights slightly to optimize performance on particular tasks.

## Optimization and Regularization Techniques:

### Optimizers: 
Advanced optimization algorithms like Adam are used to improve training efficiency and convergence rates.

### Regularization: 
Techniques like dropout are applied within Transformer layers to prevent overfitting by randomly omitting units during training.

## Scaling:
LLMs often scale by increasing the number of layers (depth), the size of each layer (width), and the size of the training datasets. This scaling is crucial for improving their capacity to handle diverse and complex language tasks.



# Using an LLM - When I ask a question

## 1. Input Processing

### Tokenization: 
The question you ask is first broken down into tokens. Tokens can be words, parts of words, or even punctuation, depending on the tokenization process used by the model.

### Embedding: 
Each token is then converted into a numerical vector using a pre-trained embedding layer. This embedding represents the token in a way that captures semantic meanings and relationships to other words.

### Positional Encoding: 
Since LLMs like the Transformer model do not inherently process tokens in order, positional encodings are added to the embeddings to provide information about the order of tokens in your question.

## 2. Passing Through the Transformer Layers

### Attention Mechanism: 
The embedded and encoded tokens are passed through multiple layers of the Transformer model. Each layer consists of multi-head self-attention mechanisms that allow the model to focus on different parts of the input sequence and understand the context around each word.

### Contextual Representation: 
As tokens pass through each Transformer layer, the model updates their representations by aggregating information from other relevant parts of the input. This means that each token's representation becomes a reflection not just of the token itself, but also of its surrounding context.

## 3. Decoding the answer

### Output Generation: 
After the final Transformer layer, the token representations are passed through a linear layer followed by a softmax layer to produce a probability distribution over possible output tokens. The model selects tokens one at a time, typically using techniques like beam search to generate the most probable sequence of words as the answer.

### Autoregressive Generation: 
For models like GPT-4, the generation is autoregressive, meaning that the model uses the tokens it has already predicted as additional context for predicting the next token. This continues until the model generates a token indicating the end of the sequence (like a period or a special end-of-sequence token).

## 4. Response Output - Format the outout
Once the sequence of output tokens is generated, they are converted back into human-readable text. This text is presented as the answer to your question.


====
- size of traning, validation and test datasets?
80,10,10 %

- LLM Traning batch sizses



