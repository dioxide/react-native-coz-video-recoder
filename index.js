import {NativeModules} from 'react-native';
var AwesomeVideoRecoder = NativeModules.AwesomeVideoRecoder;
AwesomeVideoRecoder.addEvent(
  'Birthday Party',
  '4 Privet Drive, Surrey',
  date.getTime()
); // passing date as number of milliseconds since Unix epoch



async function updateEvents() {
  try {
    var events = await AwesomeVideoRecoder.findEvents();

    //this.setState({events});
  } catch (e) {
    console.error(e);
  }
}



updateEvents();