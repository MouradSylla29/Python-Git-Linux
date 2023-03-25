import pandas as pd
from dash import Dash, dcc, html
from dash.dependencies import Input, Output
import time

name = "/home/admin/monero_prices.csv"
data = pd.read_csv(name)
data.columns = ["date", "price"]

app = Dash(__name__)
server = app.server

app.layout = html.Div(
    children=[
        html.H1(children="Hello Dash"),
        html.Div(
            children="Dash: A web application framework for Python."
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
        html.Hr(),
        html.H3("24-Hour Metrics"),
        html.Table(
            [
                html.Thead(
                    html.Tr(
                        [
                            html.Th("Metric"),
                            html.Th("Value"),
                        ]
                    )
                ),
                html.Tbody(
                    [
                        html.Tr(
                            [
                                html.Td("Average"),
                                html.Td(id="average-value"),
                            ]
                        ),
                        html.Tr(
                            [
                                html.Td("Daily Volatility"),
                                html.Td(id="volatility-value"),
                            ]
                        ),
                        html.Tr(
                            [
                                html.Td("Highest Price"),
                                html.Td(id="highest-value"),
                            ]
                        ),
                        html.Tr(
                            [
                                html.Td("Lowest Price"),
                                html.Td(id="lowest-value"),
                            ]
                        ),
                    ]
                ),
            ]
        ),
        dcc.Interval(
            id='interval-component',
            interval=24*60*60*1000, # in milliseconds
            n_intervals=0
        )
    ]
)

@app.callback(
    [
        Output("average-value", "children"),
        Output("volatility-value", "children"),
        Output("highest-value", "children"),
        Output("lowest-value", "children"),
    ],
    Input("interval-component", "n_intervals"),
)
def update_metrics(n):
    global data
    data = pd.read_csv(name)
    data.columns = ["date", "price"]
    data = data.tail(24*60)

    avg = data["price"].mean()
    vol = data["price"].std()
    highest = data["price"].max()
    lowest = data["price"].min()

    return round(avg, 2), round(vol, 2), round(highest, 2), round(lowest, 2)

@app.callback(Output('example-graph', 'figure'),
              Input('interval-component', 'n_intervals'))
def update_graph(n):
    global data
    data = pd.read_csv(name)
    data.columns = ["date", "price"]

    return {
        "data": [
            {
                "x": data["date"],
                "y": data["price"],
                "type": "line",

            },
        ],
        "layout": {"title": "Monero Price"},
    }

if __name__ == "__main__":
    app.run_server(host="0.0.0.0", port=8085, debug=True)
