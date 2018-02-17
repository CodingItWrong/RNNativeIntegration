import PropTypes from 'prop-types';
import React, { Component } from 'react';
import { requireNativeComponent } from 'react-native';

class MapView extends Component {
  _onRegionChange(event) {
    if (!this.props.onRegionChange) {
      return;
    }

    this.props.onRegionChange(event.nativeEvent);
  }

  render() {
    return (
      <RNTMap
        {...this.props}
        onRegionChange={e => this._onRegionChange(e)}
      />
    );
  }
}

MapView.propTypes = {
  zoomEnabled: PropTypes.bool,
  region: PropTypes.shape({
    latitude: PropTypes.number.isRequired,
    longitude: PropTypes.number.isRequired,
    latitudeDelta: PropTypes.number.isRequired,
    longitudeDelta: PropTypes.number.isRequired,
  }),
  onRegionChange: PropTypes.func,
};

var RNTMap = requireNativeComponent('RNTMap', null);

module.exports = MapView;
