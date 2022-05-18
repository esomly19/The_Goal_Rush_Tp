<template>
  <div id="app">
    <div id="dd">
        <div class="arjelBanner">
            <div class="arjelBanner_time"></div>
            <a class="arjelBanner_link" href="http://www.joueurs-info-service.fr/" target="_blank">
                <img alt="anj" class="arjelBanner_img" id="arjelMessageImg" src="https://betclick.hs.llnwd.net/e1/page/c16/common/arjel-banner.jpg">
            </a>
        </div>
    </div>
      <b-navbar type="dark" variant="dark">
        <b-navbar-nav>
          <b-nav-item href="#">GoalRush</b-nav-item>
            <b-nav-item href="#">Match</b-nav-item>
            <b-nav-item href="#" disabled>Historique</b-nav-item>
        </b-navbar-nav>
      </b-navbar>
    <router-view/>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'App',
  methods: {
    recupevents () {
      axios.get('http://localhost:3000/matchs/').then(res => {
        console.log('Données' + res.data)
      })
        .catch(err => {
          console.log('CASSE')
          console.log(err)
        })
    }},
  mounted () {
    this.recupevents()
  },
  computed: {}
}
</script>

<style>
#app {
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}
#dd {
 background-color: black;
}
</style>
