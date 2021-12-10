import React from "react";
import Main from "./Main";
import Cookies from 'js-cookie';

class App extends React.Component {
constructor() {
var responseData = null;
super();
this.state = {
isLoading: true,
status: "In progression...",
responseDataAlbum: fetch("http://server.uas/include/db_albums.php",{
        method : 'POST', 
        header : {
          'Content-Type' : 'application/json',
        },
        body : JSON.stringify({action : 1})
  })
  .then (response => response.text())
  .then (response => {
       this.responseDataAlbum = JSON.parse(response);     
  }),
responseDataMusic: fetch("http://server.uas/include/db_music.php",{
    method : 'POST', 
    header : {
      'Content-Type' : 'application/json',
    },
    body : JSON.stringify({action : 1})
})
.then (response => response.text())
.then (response => {
   this.responseDataMusic = JSON.parse(response);     
}),
responseDataArtist: fetch("http://server.uas/include/db_artist.php",{
    method : 'POST', 
    header : {
      'Content-Type' : 'application/json',
    },
    body : JSON.stringify({action : 1})
})
.then (response => response.text())
.then (response => {
   this.responseDataArtist = JSON.parse(response);     
}),

};
}

componentDidMount() {
    
    setTimeout(() => {
    this.setState({
    isLoading: false,
    status: "Completed!"
    });
    }, 4000);
    }
render() {
console.log("Status: ", this.state.status);
return (
<div className="App">
{this.state.isLoading ? <h1>Page is Loading.....</h1> : <Main albums = {this.responseDataAlbum} music = {this.responseDataMusic} artist = {this.responseDataArtist}/>}
</div>
);
}
}
export default App;