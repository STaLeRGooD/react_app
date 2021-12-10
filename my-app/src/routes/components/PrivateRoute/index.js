import { Route, Routes, Navigate } from "react-router-dom";
import useAuth from "../../../hooks/useAuth";

function PrivateRoute({ children, ...rest }) {
  let auth = useAuth();

  return (
    <Routes>
    <Route
      {...rest}
      render={({ location }) => {
        const url = new URLSearchParams();
        url.set("navigate", location.pathname + location.search);

        return auth.user ? (
          children
        ) : (
          <Navigate
            to={{
              pathname: "/login",
              search: url.toString(),
            }}
          />
        );
      }}
    />
    </Routes>
  );
}

export default PrivateRoute;
