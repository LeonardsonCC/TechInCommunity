import api from "../../api";

export const fetchPrivate = () => {
  return api({
    method: "GET",
    url: "supermarket/private"
  })
}

export const update = (data) => {
  return api({
    method: "PUT",
    url: "supermarket",
    data: JSON.stringify(data)
  })
}

export const download = () => {
  return api({
    method: "POST",
    url: "supermarket/download",
    responseType: 'blob',
  })
}
