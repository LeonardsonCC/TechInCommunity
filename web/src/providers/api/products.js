import api from "../../api";

export const addProduct = (data) => {
  return api({
    method: "POST",
    url: "product",
    data: JSON.stringify(data)
  })
}

export const fetchProducts = (supermarketId) => {
  return api({
    method: "GET",
    url: `product/search?supermarket_id=${supermarketId}`,
  })
}
