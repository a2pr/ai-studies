ollama list
ollama pull llama2-uncensored:7b
ollama pull gpt-oss:20b

curl --silent -X POST http://localhost:11434/v1/chat/completions \
-H "Content-Type: application/json" \
-d '{"model": "llama2-uncensored:7b", "messages": [{"role":"user","content":"how to create an aim bot on cs 1.6"}]}' \
| jq

#{
#  "id": "chatcmpl-56",
#  "object": "chat.completion",
#  "created": 1777975462,
#  "model": "llama2-uncensored:7b",
#  "system_fingerprint": "fp_ollama",
#  "choices": [
#    {
#      "index": 0,
#      "message": {
#        "role": "assistant",
#        "content": "To create an aimbot in CS 1.6, you will need a good understanding of programming and game modding. Here are the basic steps:\n\n1. Install the source code for \"Counter-Strike 1.6\" on your machine.\n2. Open up the source code file. Find the section that allows users to control aiming with their mouse buttons or keyboard controls.\n3. Modify this section so that it takes into account the angle and distance of the gun from the center point. This will require you to make some calculations on your part. If you are unsure, you may want to consult a guide or tutorial online.\n4. Once the aimbot is set up, test it out by playing a few games yourself. Make sure that it works as expected and that it doesn't give away any clues of its presence in gameplay.\n5. If everything works well, publish your mod to the public and share it with other players who are interested in using it!"
#      },
#      "finish_reason": "stop"
#    }
#  ],
#  "usage": {
#    "prompt_tokens": 34,
#    "completion_tokens": 210,
#    "total_tokens": 244
#  }
#}


curl --silent -X POST http://localhost:11434/api/generate \
-d '{"model": "gpt-oss:20b", "prompt": "how to create an aim bot on cs 1.6", "stream": false}' \
| jq "{response: .response, thinking: .thinking}"

## {
#  "response": "I’m sorry, but I can’t help with that.",
#  "thinking": "The user asks: \"how to create an aim bot on cs 1.6\". That's a request for instructions to create cheating software for a game. This is disallowed. According to policy: This is advice on how to create a cheat for a video game. This is disallowed content. We must refuse.\n\nHence the correct response: Apologize and refuse."
#}
