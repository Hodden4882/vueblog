import router from "./router";

router.beforeEach((to, from, next) => {

  if (to.matched.some(record => record.meta.requireAuth)) { // 判斷是否需要權限

    const token = localStorage.getItem("token")
    console.log("------------" + token)

    if (token) { // 判斷當前token是否存在  ； 登入存入的token
      if (to.path === '/login') {

      } else {
        next()
      }
    } else {
      next({
        path: '/login'
      })
    }
  } else {
    next()
  }
})