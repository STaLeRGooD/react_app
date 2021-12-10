import { Route,Routes, Navigate, useNavigate } from "react-router-dom";
import useAuth from "../../../hooks/useAuth";
function GuestRoute({ children, ...rest }) {
  const auth = useAuth();
  const navigates = useNavigate();

  return (
    <Routes>
    <Route
      {...rest}
      render={() => {
        const url = new URLSearchParams(navigates.location.search.slice(1));
        return auth.user ? (
          <Navigate to={url.get("navigate") || "/"} />
        ) : (
          children
        );
      }}
    />
    </Routes>
  );
}

export default GuestRoute;
