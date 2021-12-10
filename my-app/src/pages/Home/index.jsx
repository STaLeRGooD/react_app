import { makeStyles } from '@mui/styles';
import React from 'react';

import SimpleSliderMc from '../../Elements/SimpleSliderMc';
import SimpleSliderLc from '../../Elements/SimpleSliderLc';
import TwitterIcon from '@mui/icons-material/Twitter';
import InstagramIcon from '@mui/icons-material/Instagram';
import YouTubeIcon from '@mui/icons-material/YouTube';
import FacebookIcon from '@mui/icons-material/Facebook';
import Routess from '../../routes/Routes';
import { AppBar, Container, IconButton, Toolbar, Typography, Box, Button, Paper, Grid, Card, CardActions, CardMedia, CardContent, BottomNavigation, BottomNavigationAction} from '@mui/material';
import MenuIcon from '@mui/icons-material/Menu';

const useStyles = makeStyles((theme) => ({
    
  root: {
    padding: 30,
  },
  mainFeaturesPost: {
    position: "relative",
    color: "white",
    marginBottom: 40, 
    backgroundSize: "cover",
    backgroundRepeat: "no-repeat",
    backgroundPosition: "center",
    marginRight: "-0.43%",
    marginLeft: "-0.43%",
    backgroundImage: 'url(http://server.uas/img/bg/space1.jpg)',
  },
  middle1FeaturesPost: {
    position: "relative",
    color: "white",
    marginBottom: 40, 
    backgroundSize: "cover",
    backgroundRepeat: "no-repeat",
    backgroundPosition: "center",
    marginRight: "-0.43%",
    marginLeft: "-0.43%",

    //backgroundImage: `url(${background3})`,
  
  },
  mainFeaturesPostContent: {
    position: "relative",
    color: "white",
    padding: 50,
    marginTop: 40,

  },
  middle1FeaturesPostContent: {
    position: "relative",
    color: "white",
    padding: 60,
    marginTop: 40,

  },
  overlay: {
    position: "absolute",
    top: 0,
    bottom: 0,
    right: 0,
    left: 0,
    backgroundOverlay: "rgba(0,0,0,0.3)"
  },
  mainContent: {
    marginBottom: 40, 

  },
  middle1Content: {
    position: "relative",
    top: "20px",
    maxHeight: "370px",
    //backgroundImage: `url(${background2})`,
  },

  middle2Content: {
    top: "45px",
    position: "relative",
    maxHeight: "370px",
    //backgroundImage: `url(${background2})`,
  },
  cardGrid: {
   position: "relative",
   top: "30px"
  }
}))

const cards = [1,2,3,4,5,6]


const options = {

 
};


function Home(props) {
  
  const classes = useStyles();
  const [value, setValue] = React.useState("recents");
  return (
    <Container maxwidth="md" className={classes.root}>
      <main>
        <Paper className={classes.mainFeaturesPost}
        >
          <Container fixed>
            <div className={classes.overlay}>
            
            </div>
            <Grid container justifyContent="center">
              <Grid item md={6}>

                <div className={classes.mainFeaturesPostContent} >
                  <Typography component="h1"
                  variant="h3"
                  color="inherit"
                  gutterBottom>
                    Music Sample
                  </Typography>
                  <Typography variant="h5"
                  color="inherit"
                  paragraph
                  >
                    Music Sample Music Sample Music Sample Music Sample Music Sample Music Sample Music Sample Music Sample Music Sample Music Sample Music Sample Music Sample
                  </Typography>
                  <Button variant="contained" color="secondary">
                    Learn more
                  </Button>
                </div>
              </Grid>
            </Grid>
          </Container>
        </Paper>
        <div className={classes.mainContent}>
          <Container maxWidth="md">
            <Typography variant="h2" align="center" color="textPrimary">
              Music Sample
            </Typography>
            <Typography variant="h5" align="center" color="textSecondary" paragraph>
            Music is the beating of our own hearts 
            </Typography>
          
          <div className={classes.mainButtons}>
           <Grid container spacing={5} justifyContent="center">
             <Grid item>
                <Button variant="contained" color="primary">
                  Start Now
                </Button>
               </Grid>
              <Grid item>  
                <Button variant="outlined" color="primary">
                  Learn More
               </Button>
              </Grid>
            </Grid>
          </div>
          </Container>
        </div>

        <div className={classes.middle1Content}>
          <Container maxWidth="md">
          <Typography maxWidth="sm" style={{bottom: "-20px",
             left: "-14%",
              position: "relative",
             maxWidth: "280px"}}> 
              Monstercat Uncaged is one of the three imprints of Canadian music label Monstercat. 
              Contrasting with Monstercat Instinct and Monstercat Silk, 
              and considered by the label as the continuation of its community-driven electronic music movement, 
              Uncaged focuses on "energetic, explosive, and hard-hitting" music. 
            </Typography> 
            <SimpleSliderMc albums = {props.albums} music = {props.music} artist = {props.artist}></SimpleSliderMc>
          </Container>
        </div>

        <div className={classes.middle2Content}>
          <Container maxWidth="md">
            <SimpleSliderLc albums = {props.albums}></SimpleSliderLc>
            <Typography maxWidth="sm" style={{bottom: "300px",
                                
                                right: "-85%",
              
              position: "relative",
             maxWidth: "280px"}}> 
              Liquicity is a Dutch liquid drum and bass record label, YouTube channel and events promoter.
               Drum and Bass universe. Let us take you on a trip through uncharted space to discover new electronic music.
                With musical Influences ranging from acoustic genres as Jazz and Soul to realm of Electronic / "EDM".

 
            </Typography> 
          </Container>
        </div>

        <Container className={classes.cardGrid} maxWidth="md">
          <Grid container spacing={4}>
            {cards.map((card) => (
              <Grid item key={card} xs={12} sm={6} md={4}>
                <Card className={classes.card}>
                  <CardMedia
                    className={classes.CardMedia}
                    image=""
                    title="Image Title"
                    />
                    <CardContent className={classes.CardContent}>
                      <Typography variant="h5" gutterBottom>
                        Music Sample
                      </Typography>
                      <Typography variant="h5" gutterBottom>
                        MonsterCat Uncarged Vol.1
                      </Typography>
                    </CardContent>
                    <CardActions >
                      <Button size="small" color="primary" >
                        More
                      </Button>
                    
                    </CardActions>
                    </Card>
                    </Grid>
                  

            ))}

          </Grid>
        </Container>
      </main>
      <footer maxWidth="md" style={{position: "relative", top: "240px"}}>
      <Typography variant="h6" align="center" gutterBottom>
        Music Sample
      </Typography>
      <BottomNavigation 
      value={value}
      className={classes.root}>
       <BottomNavigationAction 
       label="Twitter"
       value="twitter"
       icon={<TwitterIcon />}
       />
       <BottomNavigationAction 
       label="Instagram"
       value="instagram"
       icon={<InstagramIcon />}
       />
       <BottomNavigationAction 
       label="Facebook"
       value="facebook"
       icon={<FacebookIcon />}
       />
       <BottomNavigationAction 
       label="YouTube"
       value="youtube"
       icon={<YouTubeIcon />}
       />
      </BottomNavigation>
      <Typography align="center" color="textSecondary" component="p" variant="subtitle1">
        Music Sample React.js Material UI site
      </Typography>
      </footer> 
    </Container>
  );
}

export default Home;
