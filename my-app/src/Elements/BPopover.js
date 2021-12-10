import * as React from 'react';
import Popover from '@mui/material/Popover';
import Typography from '@mui/material/Typography';
import Button from '@mui/material/Button';
import { createTheme } from '@material-ui/core';
import { ThemeProvider } from '@material-ui/styles';
import { List, ListItem,ListItemText } from '@material-ui/core';
import { ListItemButton } from '@mui/material';
import Cookies from 'js-cookie';
import { makeStyles } from '@mui/styles';
import { Scrollbar } from "react-scrollbars-custom";

const useStyles = makeStyles((theme) => ({
  root: {

  },
  listItemText:{
    fontSize:'0.8em',
    lineHeight: 1,
  },
  MPopoverPaper: {
    "& .MuiPaper-root": {
      overflow: "overlay",
      overflowX: "overlay",
      overflowY: "overlay",
    },
    },
  }));

export default function BPopover(props) {
 
  const [anchorEl, setAnchorEl] = React.useState(null);
  const classes = useStyles();
  const handleClick = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };
  const theme = createTheme({

    popover: {
          paper: {
              root: {
                overflow: 'hidden'

              },
          },
      },

  });



  const open = Boolean(anchorEl);
  const id = open ? 'simple-popover' : undefined;
  

  const musicTitleList = Object.values(props.music['2']);

  const musicLabelIdList = Object.values(props.music['3']);

  const musicLinkList = Object.values(props.music['4']);
  const musicListTitleOrig = [];
  const musicAlbumIdList = Object.values(props.music['5']);
  const musicArtistIdList = Object.values(props.music['1']);

  const artistId = Object.values(props.artist['0']);
  const artistName = Object.values(props.artist['1']);

  const artistListNameOrigId = [];
  const artistListNameOrig = [];
  var k = 0;
  for (let i = 0; i < musicLabelIdList.length; i++) {
    
    if ((musicAlbumIdList[i] == (props.divKey+1))&(musicLabelIdList[i] == props.divKeyAlb)) {
      musicListTitleOrig[k] = musicTitleList[i];
      artistListNameOrig[k] = artistName[musicArtistIdList[i]-1];
      k = k + 1;
    }
  };

  const listItem = musicListTitleOrig.map((title, index) =>
    <ListItem key = {index} style={{padding: "0px"}}>
        <ListItemButton  onClick={(event) => handleListItemClick('p3')}>
          <ListItemText disableTypography className={classes.listItemText} primary={(index+1) + '. ' + artistListNameOrig[index] + ' - ' + musicListTitleOrig[index]} />
        </ListItemButton>
    </ListItem>
    );

  const handleListItemClick = (index) => {
    
    Cookies.set("AudioList",index);
    console.log(index);
    console.log(Cookies.get("AudioList"));
    window.location.reload();
  };

  return (
   
    <div className={classes.root}>
      <ThemeProvider theme={theme}>
      <Button aria-describedby={id} variant="contained" onClick={handleClick}>
        More
      </Button>
      <Popover className={classes.MPopoverPaper}
        id={id}
        open={open}
        anchorEl={anchorEl}
        onClose={handleClose}
        anchorOrigin={{
          vertical: 'bottom',
          horizontal: 'left',
        }}
        transformOrigin={{
          vertical: 'bottom',
          horizontal: 'right',
        }}
      > 
        <Scrollbar style={{ width: 320, height: 335 }}>
        <Typography sx={{ p: 0 }}> 
        <List >
          {listItem}
        </List>
        </Typography>
        </Scrollbar>
      </Popover>
      </ThemeProvider>
    </div>
  );
}
