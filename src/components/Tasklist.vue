<template>
  <div>
    <h1>タスク一覧</h1>
    <table border="1">
      <thead>
        <tr>
          <th>ID</th>
          <th>タイトル</th>
          <th>説明</th>
          <th>カテゴリID</th>
          <th>ユーザー種別ID</th>
          <th>所要時間（分）</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="task in tasks" :key="task.id">
          <td>{{ task.id }}</td>
          <td>{{ task.title }}</td>
          <td>{{ task.description }}</td>
          <td>{{ task.category_id }}</td>
          <td>{{ task.user_type_id }}</td>
          <td>{{ task.estimated_time }}</td>
        </tr>
      </tbody>
    </table>
  </div>
</template>

<script>
import apiClient from '../apiClient.js';

export default {
  name: 'TaskList',
  data() {
    return {
      tasks: [],
    };
  },
  async created() {
    try {
      const response = await apiClient.get('/api/v1/tasks');
      this.tasks = response.data;
    } catch (error) {
      console.error('Failed to fetch tasks:', error);
    }
  },
};
</script>
