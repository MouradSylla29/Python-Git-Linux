import pandas as pd
from dash import Dash, dcc, html
from dash.dependencies import Input, Output
import dash_bootstrap_components as dbc
import time

name = "/home/admin/monero_prices.csv"
data = pd.read_csv(name)
data.columns = ["date", "price"]

app = Dash(__name__, external_stylesheets=[dbc.themes.BOOTSTRAP])

server = app.server

app.layout = html.Div(
    children=[
        html.H1(children="ESILV - Python/Git/Linux"),
        html.Div(
            children="From Mourad Sylla"
        ),
        dcc.Graph(
            id="example-graph"
        ),
        html.Hr(),
        html.H3("24-Hour Metrics"),
        dbc.Table(
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
            ],
            bordered=True,
            hover=True,
            responsive=True,
            striped=True,
            dark=True
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

    current_price = data["price"].iloc[-1]

    return {
        "data": [
            {
                "x": data["date"],
                "y": data["price"],
                "type": "line",
            },
        ],
        "layout": {
            "title": f"Monero (XMR) Price - Current Price: ${current_price:.2f}",
            "title_font": {"size": 24}
        },
    }

if __name__ == "__main__":
    app.run_server(host="0.0.0.0", port=8085, debug=True)
