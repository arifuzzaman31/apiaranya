<script>
export default {
    props:['item','selecting'],
}
</script>

<template>
<div class="card component-card_9" :class="selecting ? 'active-card' : ''">
    <img :src="item.file_link" class="card-img-top" :alt="item.product_name">
    <div class="card-body">
        <h6 class="card-title">{{ item.product_name }}</h6>
        <p class="card-text">{{ item.extension }}</p>
    </div>
</div>
</template>

<style>
.active-card {
    border:3px solid rgb(152, 252, 152);
    box-shadow: rgb(179 250 164 / 52%) 0px 0px 3px 4px;
}
</style>