import json

class ApiLibrary(object):
    def get_id_for_station(self, jsonstring, station):
        """Loops through the given JSON to retrieve the id for the given station name"""
        id = ""
        output_json = json.loads(jsonstring)

        for item in output_json['fuel_stations']:
            tempid = item['id']
            temp_station_name = item['station_name']
            if temp_station_name == station:
                id = tempid
                print id
                break
        return id

    def get_station_address(self, jsonstring, id):
        """Loops through the given JSON to retrieve the address for the given id"""
        address = ""
        output_json = json.loads(jsonstring)
        for item in output_json['fuel_stations']:
            tempaddress = item['street_address']
            tempid = item['id']
            if tempid == id:
                address = tempaddress
                print address
                break
        return address
