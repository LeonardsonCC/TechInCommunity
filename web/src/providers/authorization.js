export default sessionStorage.getItem("auth_token");

export const setAuthToken = (authToken) => {
  if (authToken)
    window.sessionStorage.setItem("auth_token", authToken);
  else
    throw new Error("Token not valid");
}

export const isAuthorized = () => {
  if (getAuthToken()) {
    return true;
  }
  return false;
}

export const getAuthToken = () => {
  if (window.sessionStorage.getItem("auth_token")) {
    return window.sessionStorage.getItem("auth_token");
  }
  return false;
}

export const getInfo = () => {
  if (isAuthorized) {
    return JSON.parse(atob(getAuthToken().split(".")[1]));
  }
  throw new Error("Nao esta logado para isso");
}
