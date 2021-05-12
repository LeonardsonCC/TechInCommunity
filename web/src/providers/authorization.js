export default window.sessionStorage.getItem("auth_token");

export const setAuthToken = (authToken) => {
  if (authToken) 
    window.sessionStorage.setItem("auth_token", authToken);
  else
    throw new Error("Token not valid");
}
