require('./bootstrap');


import { createApp } from 'vue';

let app=createApp({})
app.component('home-component', require('./components/HomeComponent.vue').default);
app.mount("#app")

