<template>
  <div class="q-pa-md">
    <q-btn-dropdown color="primary" label="Escolher Questionário">
      <q-list>
        <q-item v-for="survey in surveys" :key=survey clickable v-close-popup @click="getChosenSurvey">
          <q-item-section>
            <q-item-label>Questionário</q-item-label>
          </q-item-section>
        </q-item>
      </q-list>
    </q-btn-dropdown>

    <q-btn-dropdown color="primary" label="Escolher Questão">
      <q-list>
        <q-item v-for="question in questions" :key="question.id" clickable v-close-popup @click="getChosenQuestion">
          <q-item-section>
            <q-item-label>Questões</q-item-label>
          </q-item-section>
        </q-item>
      </q-list>
    </q-btn-dropdown>
  </div>
</template>

<script>
function getChosenSurvey(){
  return survey.code;
};

import api from "src/services/api.js";
export default {
  setup() {
    return {
      getChosenSurvey() {
        // console.log('Clicked on an Item')
      },
    };
  },
mounted() {
    api.get("/surveys", {
        params: {
          // class_id: 1
        },
      })
      .then((response) => {
        console.log('>>>', response.data);
      })
      .catch((error) => {
        console.log(error);
      });
    api.get("/questions", {
        params: {
          survey_id: getChosenSurvey
        },
      })
      .then((response) => {
        console.log('>>>', response.data);
      })
      .catch((error) => {
        console.log(error);
      })
  },
};
</script>

