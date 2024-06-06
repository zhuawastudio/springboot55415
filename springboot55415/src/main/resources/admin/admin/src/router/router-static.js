import Vue from 'vue';
//配置路由
import VueRouter from 'vue-router'
Vue.use(VueRouter);
//1.创建组件
import Index from '@/views/index'
import Home from '@/views/home'
import Login from '@/views/login'
import NotFound from '@/views/404'
import UpdatePassword from '@/views/update-password'
import pay from '@/views/pay'
import register from '@/views/register'
import center from '@/views/center'
    import news from '@/views/modules/news/list'
    import wodejuanzeng from '@/views/modules/wodejuanzeng/list'
    import xiaoyouxinxi from '@/views/modules/xiaoyouxinxi/list'
    import jiaruxiaoyouhui from '@/views/modules/jiaruxiaoyouhui/list'
    import gangwei from '@/views/modules/gangwei/list'
    import forum from '@/views/modules/forum/list'
    import zhaopinxinxi from '@/views/modules/zhaopinxinxi/list'
    import xiangmu from '@/views/modules/xiangmu/list'
    import xiaoyouhuixinxi from '@/views/modules/xiaoyouhuixinxi/list'
    import xiaoyouhuodong from '@/views/modules/xiaoyouhuodong/list'
    import yonghu from '@/views/modules/yonghu/list'
    import xiaoyuanjuanzeng from '@/views/modules/xiaoyuanjuanzeng/list'
    import xiaoyouxiangqin from '@/views/modules/xiaoyouxiangqin/list'
    import config from '@/views/modules/config/list'
    import huodongleixing from '@/views/modules/huodongleixing/list'
    import baomingshenqing from '@/views/modules/baomingshenqing/list'


//2.配置路由   注意：名字
const routes = [{
    path: '/index',
    name: '首页',
    component: Index,
    children: [{
      // 这里不设置值，是把main作为默认页面
      path: '/',
      name: '首页',
      component: Home,
      meta: {icon:'', title:'center'}
    }, {
      path: '/updatePassword',
      name: '修改密码',
      component: UpdatePassword,
      meta: {icon:'', title:'updatePassword'}
    }, {
      path: '/pay',
      name: '支付',
      component: pay,
      meta: {icon:'', title:'pay'}
    }, {
      path: '/center',
      name: '个人信息',
      component: center,
      meta: {icon:'', title:'center'}
    }
      ,{
	path: '/news',
        name: '新闻资讯',
        component: news
      }
      ,{
	path: '/wodejuanzeng',
        name: '我的捐赠',
        component: wodejuanzeng
      }
      ,{
	path: '/xiaoyouxinxi',
        name: '校友信息',
        component: xiaoyouxinxi
      }
      ,{
	path: '/jiaruxiaoyouhui',
        name: '加入校友会',
        component: jiaruxiaoyouhui
      }
      ,{
	path: '/gangwei',
        name: '岗位',
        component: gangwei
      }
      ,{
	path: '/forum',
        name: '论坛中心',
        component: forum
      }
      ,{
	path: '/zhaopinxinxi',
        name: '招聘信息',
        component: zhaopinxinxi
      }
      ,{
	path: '/xiangmu',
        name: '项目',
        component: xiangmu
      }
      ,{
	path: '/xiaoyouhuixinxi',
        name: '校友会信息',
        component: xiaoyouhuixinxi
      }
      ,{
	path: '/xiaoyouhuodong',
        name: '校友活动',
        component: xiaoyouhuodong
      }
      ,{
	path: '/yonghu',
        name: '用户',
        component: yonghu
      }
      ,{
	path: '/xiaoyuanjuanzeng',
        name: '校园捐赠',
        component: xiaoyuanjuanzeng
      }
      ,{
	path: '/xiaoyouxiangqin',
        name: '校友相亲',
        component: xiaoyouxiangqin
      }
      ,{
	path: '/config',
        name: '轮播图管理',
        component: config
      }
      ,{
	path: '/huodongleixing',
        name: '活动类型',
        component: huodongleixing
      }
      ,{
	path: '/baomingshenqing',
        name: '报名申请',
        component: baomingshenqing
      }
    ]
  },
  {
    path: '/login',
    name: 'login',
    component: Login,
    meta: {icon:'', title:'login'}
  },
  {
    path: '/register',
    name: 'register',
    component: register,
    meta: {icon:'', title:'register'}
  },
  {
    path: '/',
    name: '首页',
    redirect: '/index'
  }, /*默认跳转路由*/
  {
    path: '*',
    component: NotFound
  }
]
//3.实例化VueRouter  注意：名字
const router = new VueRouter({
  mode: 'hash',
  /*hash模式改为history*/
  routes // （缩写）相当于 routes: routes
})

export default router;
