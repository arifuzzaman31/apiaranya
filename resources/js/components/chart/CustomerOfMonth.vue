<template>
    <div style="height:600px;width: 600px; display: flex;flex-direction:column;">
      <vue3-chart-js v-bind="{ ...barChart }" />
    </div>
  </template>
  
  <script>
import { onMounted } from 'vue';
import Vue3ChartJs from "@j-t-mcc/vue3-chartjs";
  
  export default {
    name: "CustomerOfMonth",
    components: {
      Vue3ChartJs,
    },
    setup() {
      const barChart = {
        type: "bar",
        options: {
          min: 0,
          max: 100,
          responsive: true,
          plugins: {
            legend: {
              position: "top",
            },
          }
        },
        data: {
          labels: [],
          datasets: [
            {
              label: "Customer Of This Month",
              backgroundColor: ["#1abc9c", "#f1c40f", "#2980b9", "#34495e","#f1c40e", "#2960b9", "#33495e"],
              data: [],
            }
          ],
        },
      };

      const getCustomerOfMonth = () => {
           axios.get('customer-of-this-month').then(
              response => {
                  const countPeople = response.data.map(item => item.count)
                  const countMonth = response.data.map(item => item.monthname)
                  addData(barChart,[...countMonth],[...countPeople])
                  barChart()
              }
          ).catch(e => {
              console.log(e.response);
          })
      }
      const addData = (chart, label, data) => {
          chart.data.labels.push(...label);
          chart.data.datasets.forEach((dataset) => {
              dataset.data.push(...data);
          });
          chart.update();
      }
   
      onMounted(getCustomerOfMonth());

      return {
        getCustomerOfMonth,
        addData,barChart
      };
    },
  };
  </script>
  