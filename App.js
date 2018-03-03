/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Button,
  Platform,
  StyleSheet,
  Text,
  View
} from 'react-native';
import {NativeModules} from 'react-native';
var CalendarManager = NativeModules.CalendarManager;

const instructions = Platform.select({
  ios: 'Press Cmd+R to reload,\n' +
    'Cmd+D or shake for dev menu',
  android: 'Double tap R on your keyboard to reload,\n' +
    'Shake or press menu button for dev menu',
});

export default class App extends Component {
  async tryTheBridge() {
    console.log(CalendarManager.firstDayOfTheWeek);

    CalendarManager.addEvent("Surprise Party", {
      location: 'Secret Location',
      time: Date.now(),
    });

    try {
      let events = await CalendarManager.findEvents();
      console.log(events);
    } catch(error) {
      console.log(error);
    }
  }

  render() {
    const region = {
      latitude: 37.48,
      longitude: -122.16,
      latitudeDelta: 0.1,
      longitudeDelta: 0.1,
    };
    return (
      <View style={{ flex: 1 }}>
        <Text style={{ height: 50, paddingTop: 20 }}>Native Integration</Text>
        <Button
          title="Try the bridge!"
          style={{ height: 50 }}
          onPress={() => this.tryTheBridge()}
        />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  welcome: {
    fontSize: 20,
    textAlign: 'center',
    margin: 10,
  },
  instructions: {
    textAlign: 'center',
    color: '#333333',
    marginBottom: 5,
  },
});
