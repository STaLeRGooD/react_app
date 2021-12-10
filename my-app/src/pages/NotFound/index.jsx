import { Grid, Container, Typography } from "@mui/material";
import { makeStyles } from '@mui/styles';
const useStyles = makeStyles((theme) => ({
  root: {
    padding: 30,
    position: "relative",
    top: "150px"
  },

}));

function NotFound() {
  const classes = useStyles();

  return (
    <Container maxWidth="sm" className={classes.root}>
      <Grid container spacing={3}>
        <Grid item xs={12}>
          <Typography variant="h2" gutterBottom>
            404
          </Typography>
          <Typography variant="h3" gutterBottom>
            Page not found.
          </Typography>
        </Grid>
      </Grid>
    </Container>
  );
}

export default NotFound;
