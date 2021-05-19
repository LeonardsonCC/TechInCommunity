import { BASE_URL } from "../api";

export const toBase64 = file => new Promise((resolve, reject) => {
    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = () => resolve(reader.result);
    reader.onerror = error => reject(error);
});

export const getImageUrl = (imageName) => {
  return `${BASE_URL}public/images/${imageName}`
}
