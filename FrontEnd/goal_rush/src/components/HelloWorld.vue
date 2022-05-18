<template>
  <div class="hello">
<b-container class="bv-example-row">
  <b-row>
    <b-col id="menu_gauche">1 of 3</b-col>
    <b-col cols="10"><carousel-3d>
  <slide :index="0">
    Match 1
  </slide>
  <slide :index="1">
    Match 2
  </slide>
    <slide :index="2">
    Match 3
  </slide>
  <slide :index="3">
    Match4
  </slide>
</carousel-3d></b-col>
<b-col ></b-col>
  </b-row>
</b-container>

  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  data () {
    return {
      msg: 'Welcome to Your Vue.js App'
    }
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h1, h2 {
  font-weight: normal;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
#menu_gauche{
width:100%;
background-color: black;}

.bv-example-row{
width:100%;}
</style>
