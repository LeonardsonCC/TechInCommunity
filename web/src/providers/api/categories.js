import api from "../../api";

export const addCategory = (data) => {
  return api({
    method: "POST",
    url: "category",
    data: JSON.stringify(data)
  })
}

export const updateCategory = (data) => {
  return api({
    method: "PUT",
    url: "category",
    data: JSON.stringify(data)
  })
}

export const fetchCategories = (supermarketId) => {
  return api({
    method: "GET",
    url: `category?supermarket_id=${supermarketId}`,
  })
}
