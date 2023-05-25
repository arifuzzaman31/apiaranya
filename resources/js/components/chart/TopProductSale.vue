<template>
  <p>Pie Chart</p>
  <div style="max-width: 400px">
    <vue3-chart-js v-bind="{ ...pieChart }" />
  </div>
</template>

<script>
import Vue3ChartJs from "@j-t-mcc/vue3-chartjs";
import { onMounted } from 'vue';

export default {
  name: "TopProductSale",
  components: {
    Vue3ChartJs,
  },
  setup() {
    const pieChart = {
      type: "pie",
      data: {
        labels: ["VueJs", "EmberJs", "ReactJs", "AngularJs"],
        datasets: [
          {
            backgroundColor: ["#41B883", "#E46651", "#00D8FF", "#DD1B16"],
            data: [40, 20, 80, 10],
          },
        ],
      },
    };

    const topProductSale = () => {
          axios.get('top-product-sale').then(
            response => {
              console.log(response.data);
                // const countPeople = response.data.map(item => item.count)
                // const countMonth = response.data.map(item => item.monthname)
                // addData(barChart,[...countMonth],[...countPeople])
                // barChart()
            }
        ).catch(e => {
            console.log(e.response);
        })
    }
    onMounted(() => topProductSale())
    return {
      topProductSale,
      pieChart,
    };
  },
};
</script>