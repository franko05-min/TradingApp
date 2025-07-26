from kivy.app import App
from kivy.uix.label import Label

class TradingApp(App):
    def build(self):
        return Label(text='Hello Trading World!')

if __name__ == '__main__':
    TradingApp().run()
