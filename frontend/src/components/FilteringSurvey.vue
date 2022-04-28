<template>
  <div>
    <ul v-for="survey in surveys" v-bind:key="survey.code">
      <li>{{survey.code}} {{survey.name}}</li>
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
        let response = await fetch("api_url/surveys");
        this.surveys = await response.json();;
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
