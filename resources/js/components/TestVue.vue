<template>
    <div>
        <input type="text" v-model="link">
        <a :href="link" target="_blank">Test Link</a>

        {{showLink()}}
    </div>
</template>

<script>
    export default {
        name: "TestVue",
        data() {
            return {
                link: "Mohammed"
            }
        },
        methods: {
            showLink() {
                return this.link
            }
        },
        mounted() {
        }
    }
</script>
