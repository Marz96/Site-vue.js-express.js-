<template>
    <div class="main__text">
        <p>
            {{ text }}
        </p>
    </div>
</template>

<script>
    export default {
        props: {
            text: {
                type: String
            }
        }
    }
</script>

<style scoped>

.main__text {
    background-color: #D9D9D9;
    padding: 50px 30px;
    border-radius: 20px;
    border: 3px solid #CCAC7D;
    max-width: 60vw;
    margin-bottom: 100px;
}

.main__text p {
    color: #000;
    font-size: 22px;
    text-align: center;
}

@media screen and (max-width: 1200px) {
    .main__text {
        padding: 70px 50px;
    }

    .main__text p {
        font-size: 18px;
    }
}

@media screen and (max-width: 900px) {
    

    .main__text {
        padding: 40px 25px;
    }

    .main__text p {
        font-size: 14px;
    }

    
}

@media screen and (max-width: 600px) {
    .main__text {
        padding: 35px 25px;
    }

    .main__text p {
        font-size: 12px;
    }    
}

</style>