import openai
openai.api_key = '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'
def ask(prompt):
    msg = {'role':'user', 'content':prompt}
    result = openai.ChatCompletion.create(model='gpt-3.5-turbo', messages=[msg])
    answer = result.choices[0].message['content']
    return answer
while True:
    ques = input('用VHDL写一个计数器')
    if not ques:
        break
    print('AI思考中……')
    ans = ask(ques)
    print('回答：', ans)
