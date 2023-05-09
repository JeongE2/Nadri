import Vue from "vue";
import VueRouter from "vue-router";
import AppHome from "@/views/AppHome.vue";
import AppLogin from "@/views/AppLogin.vue";
import AppBoard from "@/views/AppBoard.vue";
import AppMap from "@/views/AppMap.vue";
import AppSignup from "@/views/AppSignup.vue";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "AppHome",
    component: AppHome,
  },
  {
    path: "/login",
    name: "AppLogin",
    component: AppLogin,
  },
  {
    path: "/board",
    name: "AppLBoard",
    component: AppBoard,
  },
  {
    path: "/map",
    name: "AppMap",
    component: AppMap,
  },
  {
    path: "/signup",
    name: "AppSignup",
    component: AppSignup,
  },
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  routes,
});

export default router;
