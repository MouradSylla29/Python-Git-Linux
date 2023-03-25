import requests

def get_manor_ids(place_id):
    response = requests.get(f'https://opendomesday.org/api/places/{place_id}/manors/')
    data = response.json()
    return [manor['id'] for manor in data['manors']]

if __name__ == '__main__':
    derbyshire_place_id = '635'
    manor_ids = get_manor_ids(derbyshire_place_id)
    print(manor_ids)

def get_manor_ids_2(place_id=None):
    """
    Get the manor IDs for a given place ID or for all places in Derbyshire.

    Parameters:
    place_id (str): The ID of the place to get manor IDs for. If not provided, gets manor IDs for all places in Derbyshire.

    Returns:
    list: A list of manor IDs.
    """
    if place_id:
        response = requests.get(f'https://opendomesday.org/api/places/{place_id}/manors/')
        data = response.json()
        return [manor['id'] for manor in data['manors']]
    else:
        response = requests.get('https://opendomesday.org/api/places/?county=Derbyshire')
        data = response.json()
        manor_ids = []
        for place in data['places']:
            manor_ids.extend(get_manor_ids(place['id']))
        return manor_ids

import pandas as pd

def get_manor_info(manor_ids):
    """
    Get geld paid and total ploughs owned for a list of manor IDs.

    Parameters:
    manor_ids (list): A list of manor IDs.

    Returns:
    pandas.DataFrame: A DataFrame containing the manor ID, geld paid, and total ploughs owned for each manor.
    """
    manor_info = []
    for manor_id in manor_ids:
        response = requests.get(f'https://opendomesday.org/api/manors/{manor_id}/')
        data = response.json()
        geld_paid = data['geld_paid']
        total_ploughs = sum([int(val) for val in data['ploughs'].values()])
        manor_info.append({'id': manor_id, 'geld_paid': geld_paid, 'total_ploughs': total_ploughs})
    df = pd.DataFrame(manor_info)
    return df

if __name__ == '__main__':
    manor_ids = get_manor_ids()
    manor_info = get_manor_info(manor_ids)
    geld_sum = manor_info['geld_paid'].sum()
    ploughs_sum = manor_info['total_ploughs'].sum()
    print(f'Sum of geld paid in Derbyshire: {geld_sum}')
    print(f'Sum of total ploughs owned in Derbyshire: {ploughs_sum}')


