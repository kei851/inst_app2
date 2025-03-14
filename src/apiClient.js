// src/apiClient.js
import axios from 'axios';

const apiClient = axios.create({
  // Railsサーバーが localhost:3000 で動いている場合の例
  baseURL: 'http://localhost:3000',
  headers: {
    'Content-Type': 'application/json',
    // 認証トークンを利用する場合はここにAuthorizationを追加することもある
  },
});

export default apiClient;
