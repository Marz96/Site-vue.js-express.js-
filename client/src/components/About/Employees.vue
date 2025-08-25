<template>
    <div class="main__employees-title"><span>Наши сотрудники</span></div>
        <div class="main__employees" >
            <div class="employees__container">
                <div class="employee__item" v-for="person in employees" :key="person.id">
                    <img :src="person.img1" alt="img">
                    <img :src="person.img2" alt="img"> 
                    <div class="employee__text">
                        <span id="name">{{ person.name }}</span>
                        <span id="position">{{ person.position }}</span>
                        <a href="mailto:anna_3945@gmail.com" id="email">{{ person.email }}</a>
                    </div>
            </div>
        </div>
    </div>
</template>

<script>
    import axios from 'axios'; 
    export default{
        mounted() {
            axios
                .get('http://localhost:3000/about')
                .then((response) => {
                    this.employees = response.data
                })
            .catch(error => console.error('Произошла ошибка при получении данных:', error));
        },
        data() {
            return {
                employees: []
            }
        }
    }
</script>

<style scoped>
    .main__employees-title {
    color: #fff;
    text-align: center;
    font-size: 42px;
    margin-bottom: 100px;
}

.employees__container {
    display: grid;
    justify-items: center;
    grid-template-columns: repeat(2, 1fr);
    grid-template-rows: repeat(3, 1fr);
    row-gap: 50px;
    column-gap: 70px;
}

.employee__item {
    background-color: #CCAC7D;
    color: #fff;
    padding: 15px;
    opacity: 0.8;
    width: 30vw;
    border-radius: 20px;
    height: 30vh;
    position: relative;
}

.employee__item img {
    position: absolute;
    width: 10vw;
}

.employee__item img:nth-child(1) {
    top: -5px;
    left: -10px;
}

.employee__item img:nth-child(2) {
    right: -10px;
    bottom: -5px;
}

.employee__text {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    height: 100%;
    row-gap: 20px;
    text-align: center;
}

#name {
    font-size: 36px;
}

#position {
    font-size: 28px;
}

#email {
    font-size: 20px;
    text-decoration: none;
    color: #fff;
}

@media screen and (max-width: 1200px) {
    .main__employees-title {
        font-size: 36px;
    }

    .employee__text {
        row-gap: 20px;
    }

    #name {
        font-size: 26px;
    }
    
    #position {
        font-size: 18px;
    }
    
    #email {
        font-size: 14px;
    }
}

@media screen and (max-width: 900px) {
    .main__employees-title {
        font-size: 30px;
    }

    .employee__text {
        row-gap: 20px;
    }

    #name {
        font-size: 20px;
    }
    
    #position {
        font-size: 16px;
    }
    
    #email {
        font-size: 12px;
    }
}

@media screen and (max-width: 600px) {
    .main__employees-title {
        font-size: 26px;
    }

    .employee__text {
        row-gap: 20px;
    }

    .employees__container {
        grid-template-rows: repeat(6, 1fr);
        grid-template-columns: 1fr;
    }

    #name {
        font-size: 20px;
    }
    
    #position {
        font-size: 14px;
    }
    
    #email {
        font-size: 12px;
    }
}

@media screen and (max-width: 400px) {
    .employee__item {
        width: 40vw;
        height: 30vh;
    }

    #name {
        font-size: 16px;
    }

    #position {
        font-size: 14 px;
    }

    #email {
        font-size: 12px;
    }
}
</style>