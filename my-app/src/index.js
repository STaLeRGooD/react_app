import React from 'react';
import ReactDOM from 'react-dom';
import App from './App';
import AuthProvider from "./providers/AuthProvider";
import { BrowserRouter as Router } from "react-router-dom";
import { CookiesProvider } from 'react-cookie'; 
ReactDOM.render(
  <React.StrictMode>
    <CookiesProvider>
    <AuthProvider>
      <Router>
        <App />
      </Router>
    </AuthProvider>
    </CookiesProvider>
  </React.StrictMode>,
  document.getElementById('root')
);
