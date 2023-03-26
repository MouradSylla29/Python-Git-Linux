import pandas as pd
from dash import Dash, dcc, html
from dash.dependencies import Input, Output
import time

data = pd.read_csv("/home/admin/price_data.csv")
data.columns = ["date", "price"]

app = Dash(__name__)
server = app.server

app.layout = html.Div(
    children=[
        html.H1(children="ESILV - Python/Git/Linux (Dashboard test)"),
        html.Div(
            children="From Mourad Sylla"
        ),
        dcc.Graph(
            id="example-graph",
            figure={
                "data": [
                    {
                        "x": data["date"],
                        "y": data["price"],
                        "type": "line",

                    },
                ],
                "layout": {"title": "Apple Stock Price"},
            },
        ),
        dcc.Interval(
            id='interval-component',
            interval=60*1000, # in milliseconds
            n_intervals=0
        )
    ]
)

@app.callback(Output('example-graph', 'figure'),
              Input('interval-component', 'n_intervals'))
def update_graph(n):
    global data
    data = pd.read_csv("price_data.csv")
    data.columns = ["date", "price"]
    
    return {
        "data": [
            {
                "x": data["date"],
                "y": data["price"],
                "type": "line",

            },
        ],
        "layout": {"title": "Apple Stock Price"},
    }

if __name__ == "__main__":
    app.run_server(host="0.0.0.0", port=8050, debug=True)
