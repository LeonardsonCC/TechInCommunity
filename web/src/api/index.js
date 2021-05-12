import axios from 'axios';
import authorizationToken from "../providers/authorization";

// Logged Users
const axiosInstance = axios.create({
  baseURL: "http://localhost:8081/",
  timeout: 1000,
  responseType: 'json',
  headers: {
    "Authorization": `Bearer ${authorizationToken}`
  }
})
export default axiosInstance;

// Not Logged Users (Used in first Sign In or Login)
const axiosNotLoggedInstance = axios.create({
  baseURL: "http://localhost:8081/",
  timeout: 1000,
  responseType: 'json'
})
export { axiosNotLoggedInstance };
