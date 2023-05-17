require('./vue-assets');

import { createApp } from 'vue';
import ViewRole from './components/auth/ViewRole.vue';
import CreateRole from './components/auth/CreateRole.vue';
import VeiwEmployee from './components/employee/VeiwEmployee.vue';

const app = createApp({})

app.component('view-role', ViewRole)
app.component('create-role', CreateRole)
app.component('view-employee', VeiwEmployee)

app.mount('#app')