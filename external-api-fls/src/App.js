import { Component } from 'react';
import './App.css';
import nasaData from './mockData.js'


class App extends Component{
  constructor(props){
    super(props)
    this.state= {
      nasa: nasaData,
      pic: null
    }
  }

  getPic = () =>{
    let randomNum = Math.floor(Math.random() * this.state.nasa.length)
    this.setState({pic: this.state.nasa[randomNum].img_src})
  }



  render(){ 
    console.log(this.state.nasa)
    return(
      <>
      <button onClick = {this.getPic}> Click for new pic </button>
      <img src= {this.state.pic} style= {{height: "200px"}} alt= "images of earth" /> 


      </>
    )
  }





}

export default App;



  //   this.state = {
  //     ip:""
  //   }
  // }

  // getIp = () =>{
  //   fetch("https://ipapi.co/json/").then(response => {
  //     return response.json()
  //   })
  //   .then(payload =>{
  //     this.setState({ip:payload})
  //   })
  // }

  // render(){
  // return (
  //   <>
  //   <h1> My IP Address </h1>
  //   <button onClick =  {this.getIp}> Get ip</button>

  //   <p>{this.state.ip.ip}</p>
  //   <p>{this.state.ip.city}</p>
  //   <p>{this.state.ip.country_name}</p>
  //   </>
  // );

