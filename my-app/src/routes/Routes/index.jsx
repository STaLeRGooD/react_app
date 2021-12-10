import { Routes, Route, Navigate } from "react-router-dom";
import Home from "../../pages/Home";
import Login from "../../pages/Login";
import Registration from "../../pages/Registration";
import Profile from "../../pages/Profile";
import NotFound from "../../pages/NotFound";
import useAuth from "../../hooks/useAuth";
import PrivateRoute from "../components/PrivateRoute";
import GuestRoute from "../components/GuestRoute";
import {  CircularProgress,
  Container,
  Grid,
} from "@mui/material";
import { makeStyles } from '@mui/styles';
const useStyles = makeStyles((theme) => ({
  root: {
    padding: 30,
  },
}));

function Routess(props) {
  const classes = useStyles();
  const auth = useAuth();
  
  return auth.isLoaded ? (
    <Routes>
      <Route exact path="/" element={<Home albums = {props.albums} music = {props.music} artist = {props.artist}/>} />

      {/*<Route exact path="/profile" element={<PrivateRoute/>}>*/}
         <Route exact path='/profile' element={<Profile/>}/>
      {/*</Route>*/}

      {/*<Route  exact path="/login" element={<GuestRoute/>}>*/}
          <Route exact path='/login' element={<Login/>}/>
       {/*</Route>*/}
       {/*<Route path="/registration" element={<GuestRoute/>}>*/}
        <Route exact path='/registration' element={<Registration/>}/>
       {/*</Route>*/}

      
      <Route path="/not-found-404" element={<NotFound/>}>
      </Route>
       
    </Routes>
  ) : (
    <Container maxWidth="md" className={classes.root}>
      <Grid container spacing={3} alignItems="center" justify="center">
        <Grid item>
          <CircularProgress color="inherit" />
        </Grid>
      </Grid>
    </Container>
  );
}

export default Routess;
