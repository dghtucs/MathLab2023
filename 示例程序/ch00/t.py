import sys
import tkinter as tk
import openai  # 0.27.0以上
openai.api_key = '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'
class ChatUI:
    def __init__(self):
        self.root = tk.Tk()
        self.root.title('记事本')
        self.text_box = tk.Text(self.root, state=tk.DISABLED)
        self.text_box.pack(padx=10, pady=10, fill=tk.BOTH, expand=True)
        self.input_box = tk.Entry(self.root)
        self.input_box.pack(padx=10, pady=10, fill=tk.X)
        self.input_box.bind("<Return>", self.send_message)
        self.messages = [{"role": "system", "content": "you are a programmer"}]

    def start(self):
        self.root.mainloop()

    def send_message(self, event):
        message = self.input_box.get()
        self.input_box.delete(0, tk.END)
        if message == 'z' or message == '结束':
            sys.exit()
        self.messages.append({"role": "user", "content": message})
        response = 'GPT:' + self.get_response() + '\n'
        message = 'Me: ' + message + '\n' + response
        self.show_message(message)

    def get_response(self):
        completion = openai.ChatCompletion.create(
            model="gpt-3.5-turbo",
            messages=self.messages
        )
        return completion.choices[0].message.content

    def show_message(self, message):
        self.text_box.config(state=tk.NORMAL)
        self.text_box.insert(tk.END, message)
        self.text_box.config(state=tk.DISABLED)
        self.text_box.see(tk.END)

if __name__ == '__main__':
    chat_ui = ChatUI()
    chat_ui.start()