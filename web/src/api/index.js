import axios from 'axios';
import authorizationToken from "../providers/authorization";

const BASE_URL = "http://localhost:8081/";

// Logged Users
const axiosInstance = axios.create({
  baseURL: BASE_URL,
  timeout: 1000,
  responseType: 'json',
  headers: {
    "Authorization": `Bearer ${authorizationToken}`,
    "Content-Type": `application/json; charset=utf-8`
  }
})

// Not Logged Users (Used in first Sign In or Login)
const axiosNotLoggedInstance = axios.create({
  baseURL: BASE_URL,
  timeout: 1000,
  responseType: 'json',
  headers: {
    "Content-Type": `application/json; charset=utf-8`
  }
})

export { axiosNotLoggedInstance, BASE_URL };
export default axiosInstance;
