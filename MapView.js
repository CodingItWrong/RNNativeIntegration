import PropTypes from 'prop-types';
import React, { Component } from 'react';
import { requireNativeComponent } from 'react-native';

class MapView extends Component {
  render() {
    return <RNTMap {...this.props} />
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
};

var RNTMap = requireNativeComponent('RNTMap', null);

module.exports = MapView;
