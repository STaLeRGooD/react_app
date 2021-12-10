import { Typography,Paper } from "@mui/material";
import React, { Component } from "react";
import Slider from "react-slick";
import BPopover from "./BPopover";

export default function SimpleSliderMc(props) {

  const src_img1 = 'http://server.uas/img/mc/';
  const src_img2 = '_pl.jpg';
  const albumListFr = props.albums['1'];
  const albumList = Object.values(albumListFr);
  const albumIndex = 1;
  const albumLabelFr = props.albums['2'];
  const albumLabel = Object.values(albumLabelFr);

  for (let i = 0; i < albumLabel.length; i++) {
    if (albumLabel[i] != '1') {
      albumLabel.splice(i, 1);
      albumList.splice(i, 1);
      i = i - 1;
    }
  };

  const listItem = albumList.map((album, index) =>
  <div key={index}>
    <img src = {src_img1 + (index + 1) + src_img2} alt = "ничоси" width = "250" height = "250" />
    <Typography>
      {album}
    </Typography>
    <BPopover divKey={index} divKeyAlb={albumIndex} music = {props.music} artist = {props.artist}></BPopover> 
  </div>
);
    const settings = {
      dots: true,
      infinite: false,
      speed: 500,
      slidesToShow: 3,
      slidesToScroll: 3};
      
    return (
      <div style={{    position: "relative",
        top: "-190px"}}>
        <Slider {...settings} style={{left: "22%"}}>
        {listItem}
        </Slider>
      </div>
    );
  }


  