<!-- src/components/TaskList.vue -->
<template>
  <div>
    <h1>Task List</h1>
    <ul>
      <li v-for="task in tasks" :key="task.id">
        {{ task.title }} (ID: {{ task.id }})
      </li>
    </ul>
  </div>
</template>

<script>
import apiClient from '@/apiClient.js';

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
      this.tasks = response.data; // Rails APIから返ってきたタスク一覧を代入
    } catch (error) {
      console.error('Failed to fetch tasks:', error);
    }
  },
};
</script>
