import { AppBar, Container, IconButton, Toolbar, Typography, Box, Button} from '@mui/material';
import React from 'react';
import MenuIcon from '@mui/icons-material/Menu';
import { makeStyles } from '@mui/styles';
import useAuth from "./hooks/useAuth";
import { Link, useNavigate } from "react-router-dom";
import Routes from "./routes/Routes";
import { createMuiTheme, ThemeProvider } from '@material-ui/core';
import AudioPlayer from 'material-ui-audio-player';
import { withCookies, useCookies } from 'react-cookie';
import Cookies from 'js-cookie';

const useStyles = makeStyles((theme) => ({
  root: {
    flexGrow: 1
  },
  menuButton: {
    marginRight: 20
  },
  title: {
    flexGrow: 1
  },
  MusicPlayer: {
      

  }
}))



const muiTheme = createMuiTheme({});



function Main(props) {


  console.log(props.music);
  var audio = Cookies.get("AudioList");
  const classes = useStyles();
  const [value, setValue] = React.useState("recents");
  const auth = useAuth();
  const navigate = useNavigate();

  const onLogOut = () => {
    auth.logOut();
    navigate("/login");
  };
  const handleChange = (event, newValue) => {
      setValue(newValue);

  };
  const test = () => {
    console.log(Cookies.get("AudioList"))
    
  };
  
  return (
    <div className={classes.root}>
      <AppBar position="fixed" style={{backgroundColor: '#222629'}}>
        <Container fixed>
          <Toolbar >
          <IconButton  component={Link} to="/" edge="start" position="right"
              color="inherit" aria-label="menu" className={classes.menuButton}>
                <MenuIcon />
            </IconButton>
            <Typography variant="h5" className={classes.title}>
              Music Sample
            </Typography>

            {auth.isLoaded &&
            (auth.user ? (
              <>
              <Box mr ={3} style={{width: "250px"}}>
              <ThemeProvider theme={muiTheme}>
               <AudioPlayer
               elevation={1}
               width="100%"
               variation="primary"
               spacing={1}
               download={false}
               autoplay={false}
               order="reverse"
               preload="auto"
               loop={false}
               src={audio}
               />
              </ThemeProvider>
              </Box>
                <Box mr ={3}>
              <Button color="inherit" variant="outlined" component={Link} to="/profile">
              {auth.user.firstName} {auth.user.lastName}
              </Button>
            </Box>
            <Button color="secondary" variant="contained"  onClick={onLogOut}>
               Log out
              </Button>
              </>
            ) : (
              <>
              
                <Box mr ={3}>
              <Button color="inherit" variant="outlined" component={Link} to="/login">
                Log In
              </Button>
            </Box>
            <Button color="secondary" variant="contained" component={Link} to="/registration">
                Sing Up
              </Button>
              </>
            ))}
            
          </Toolbar>

        </Container>
      </AppBar> 
      <Routes albums = {props.albums} music = {props.music} artist = {props.artist}/>  
    </div>
  );}
       

export default Main;
