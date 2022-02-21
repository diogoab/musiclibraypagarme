# app.py

import os
import boto3
from boto3.dynamodb.conditions import Key

from flask import Flask, jsonify, request
app = Flask(__name__)

AWS_REGION = os.getenv('AWS_REGION')
ENDPOINT_URL = os.getenv('ENDPOINT_URL')

dynamoTableName = 'bestMusic'

if str(ENDPOINT_URL).upper() != 'AWS':
    dynamodb = boto3.resource('dynamodb', region_name=AWS_REGION, endpoint_url=ENDPOINT_URL)
else:
    dynamodb = boto3.resource('dynamodb', region_name=AWS_REGION)

@app.route("/")
def hello():
    table = dynamodb.Table(dynamoTableName)
    resp = table.scan()
    HTML_ARTIST = ''
    for item in resp.get('Items'):
        HTML_ARTIST += '<a href="/v1/yourmusicof/90s/{0}">{0}</a><br>'.format(item.get('artist'))
    return 'Oi, Bem vindo a biblioteca dos anos 90! <a href="/add">[ add ]</a><br><br>{0}'.format(HTML_ARTIST)

@app.route("/add")
def add_page():
    return 'Oi, Bem vindo a biblioteca dos anos 90! <a href="/">[ back ]</a><br><br><form action="/v1/yourmusicof/90s" method="POST"> \
  <label for="artist">Artist:</label> \
  <input type="text" id="artist" name="artist"><br> \
  <label for="song">Song:</label> \
  <input type="text" id="song" name="song"><br> \
  <input type="submit" value="Submit"> \
</form>'


@app.route("/v1/yourmusicof/90s/<string:artist>")
def get_artist(artist):
    table = dynamodb.Table(dynamoTableName)
    resp = table.query(KeyConditionExpression=Key('artist').eq(artist))
    items = resp.get('Items')
    if not items:
        return jsonify({'error': 'Desculpe, mas esse artista não exist'}), 404

    return jsonify({
        'artist': items[0].get('artist'),
        'song': items[0].get('song')
    })


@app.route("/v1/yourmusicof/90s", methods=["POST"])
def create_artist():
    artist = request.form.get('artist')
    song = request.form.get('song')
    if not artist or not song:
        return jsonify({'error': 'Oi, precisa informar sua música da banda preferida...'}), 400

    table = dynamodb.Table(dynamoTableName)
    resp = table.put_item(Item={ 'artist': artist, 'song': song })

    return jsonify({
        'artist': artist,
        'song': song
    })


if __name__ == '__main__':
    app.run(threaded=True,host='0.0.0.0',port=5000)