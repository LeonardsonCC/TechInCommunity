import api from "../../api";

export const fetchPrivate = () => {
  return api({
    method: "GET",
    url: "supermarket/private"
  })
}
