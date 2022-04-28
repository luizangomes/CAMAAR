<template>
  <div>
    <ul v-for="cclass in cclasses" v-bind:key="cclass.code">
      <li>{{cclass.code}} {{cclass.name}}</li>
    </ul>
  </div>
</template>

<script>
import api from 'src/services/api.js';

export default {
  props: {
        api_url: String
    },

  data() {
    return {
      surveys: [],
    };
  },

  methods: {
    async getData() {
      try {
        let response = await fetch("api_url/cclass");
        this.cclass = await response.json();;
      } catch (error) {
        console.log(error);
      }
    },
  },

  created() {
    this.getData();
  },
};
</script>
