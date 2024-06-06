const base = {
    get() {
        return {
            url : "http://localhost:8080/springboot55415/",
            name: "springboot55415",
            // 退出到首页链接
            indexUrl: 'http://localhost:8080/springboot55415/front/index.html'
        };
    },
    getProjectName(){
        return {
            projectName: "校友社交系统"
        } 
    }
}
export default base
