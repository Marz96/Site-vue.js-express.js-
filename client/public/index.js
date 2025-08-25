ymaps.ready(init); 
var myMap;

function init() {

    myMap = new ymaps.Map("map", {
        center: [41.644721936067945,41.64036404232778], // Координаты центра карты
        zoom: 17 // Маштаб карты
    }); 

    myMap.controls.add(
        new ymaps.control.ZoomControl()  // Добавление элемента управления картой
    ); 

    myPlacemark = new ymaps.Placemark([41.644721936067945,41.64036404232778], { // Координаты метки объекта
        balloonContent: "<div class='ya_map'>Мы здесь!</div>" // Подсказка метки
    }, {
        preset: 'twirl#blueIcon' // Тип метки
    });
    
    myMap.geoObjects.add(myPlacemark); // Добавление метки
    myPlacemark.balloon.open(); // Открытие подсказки метки
    
};
