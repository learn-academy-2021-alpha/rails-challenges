import React,{ Component } from 'react'
import './App.css';

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      ip: ""
    }
  }
  
  getIp = () => {
    fetch("https://ipapi.co/json/")
    .then(response => {
      return response.json()
    })
    .then(payload => {
      this.setState ({ ip: payload })
    })
  }
  
  render() {
    return (
    <>
    <h1> IP Address </h1>
    < button onClick = { this.getIp } > Get IP </button>
    <p> { this.state.ip.ip } </p>
    <p> { this.state.ip.city } </p>
    </>
   )
  }
}
export default App;
