import dash
import dash as dcc
import dash as html
from dash.dependencies import Output, Input
from dash import Div
import plotly.graph_objs as go
import time

# Define the app
app = dash.Dash(__name__)

# Define the layout of the app
app.layout = html.Div([
    html.H1("Stock Price Dashboard"),
    dcc.Graph(id="live-graph", animate=True),
    dcc.Interval(id="update-interval", interval=5*60*1000, n_intervals=0),
    html.Div(id="current-price")
])

# Define the callback for the graph
@app.callback(Output("live-graph", "figure"), Input("update-interval", "n_intervals"))
def update_graph(n):
    # Retrieve the data
    x = [time.time()]
    y = [float(get_price())]
    # Update the graph
    fig = go.Figure(
        data=[go.Scatter(x=x, y=y)],
        layout=go.Layout(
            xaxis=dict(range=[min(x), max(x)]),
            yaxis=dict(range=[min(y), max(y)]),
            title=dict(text="Stock Price")
        )
    )
    return fig

# Define the callback for the current price
@app.callback(Output("current-price", "children"), Input("update-interval", "n_intervals"))
def update_price(n):
    return "Current Price: $" + str(get_price())

# Define the function to retrieve the price using the scraper
def get_price():
    return float(subprocess.check_output(["bash", "scraper.sh"]).decode().strip())

# Run the app
if __name__ == "__main__":
    app.run_server(debug=False)
