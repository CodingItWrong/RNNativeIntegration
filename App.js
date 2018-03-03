/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Button,
  Text,
  View
} from 'react-native';
import {NativeModules} from 'react-native';
var CalendarManager = NativeModules.CalendarManager;

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
