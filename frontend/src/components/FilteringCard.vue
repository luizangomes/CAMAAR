<template>
  <div class="q-pa-md">
    <q-btn-dropdown color="primary" label="Escolher Turma" @click="fetchData">
      <q-list>
          <q-item-section clickable v-ripple>
            <q-item-label>PROVA 1</q-item-label>
          </q-item-section>
          <q-item-section clickable v-ripple>
            <q-item-label>PROVA 2</q-item-label>
          </q-item-section>
        <q-item v-for="classe in classes" :key=classe clickable v-close-popup @click="getChosenClass">
        </q-item>
      </q-list>
    </q-btn-dropdown>

    <q-btn-dropdown color="primary" label="Escolher Questionário">
      <q-list>
        <q-item v-for="survey in surveys" :key=survey clickable v-close-popup @click="getChosenSurvey">
        </q-item>
      </q-list>
    </q-btn-dropdown>

    <q-btn-dropdown color="primary" label="Escolher Questão">
      <q-list>
        <q-item v-for="question in questions" :key="question.id" clickable v-close-popup @click="getChosenQuestion">
          <q-item-section clickable v-ripple>
            <q-item-label>Questões</q-item-label>
          </q-item-section>
        </q-item>
      </q-list>
    </q-btn-dropdown>
  </div>
</template>

<script>
import api from 'src/services/api.js';


export default {
    props: {
        api_url: String
    },
    data(){
        return {
            codigoclasse: null,               
        }        
    },    
    methods: {
        async fetchData() {
            this.dados = null
            const res = await api.get(this.api_url)
                .then(response => {
                    this.dados = response.data
                    this.codigoclasse = this.dados[0][1]              
                })
                .catch(error => {
                    console.log(error);
                });            
        }
    },
    mounted() {
        this.fetchData()
    },
        
    name: "FilterClass",
    components: {},
  
}
</script>