import React,{ Component } from 'react'
import './App.css';

class App extends Component {
  constructor(props){
    super(props)
    this.state = {
      player: ""
    }
  }
  
  getPlayerName = () => {
    fetch("https://www.balldontlie.io/api/v1/season_averages?season=2018&player_ids%5B%5D=237&player_ids%5B%5D=192")
    .then(response => {
      return response.json()
    })
    .then(payload => {
      this.setState ({ player: payload.data })
    })
  }
  
  render() {
    console.log(this.state.player)
    return (
    <>
    <h1> Jordan Facts </h1>
    < button onClick = { this.getPlayerName } > Get Jordan Fact </button>
    </>
   )
  }
}
export default App;
 //// <p> { this.state.player[0].pts} </p>