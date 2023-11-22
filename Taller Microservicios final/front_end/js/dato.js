
// let text = "Doasjdh jahd jlakhdjklas hdjkasd jashdjkashdjkashd";
// const m = "j";
// text = text.replaceAll(m, '<span style="color:red;">'+m+'</span>');
// console.log(text);
// document.body.innerHTML += text;

$(document).ready(() => {
    let estudiantes = [];

    document.getElementById('registroBtn').addEventListener('click', () => {
        alert('OK')
        const form = document.forms['pruebaFrom'];
        const nombre = form['nombre'].value;
        $.ajax({
            url: 'http://127.0.0.1:8080/estudiantes',
            method: 'post',
            data: { nombre: nombre, email: 'euben@test.test', telefono: '98765' }
        }).done((response) => {
            console.log(response);
        }).fail((err) => {
            console.error(err);
        });
    });

    function loadEstudiantes() {
        $.ajax({
            url: 'http://127.0.0.1:8080/estudiantes',
            method: 'get'
        }).done((response) => {
            estudiantes = response;
            console.log(estudiantes[0]);
            estudiantes.array.forEach(element => {
                let html = '<h2 onlick="pruebaClick(' + item.id + ')">';
                html += item.nombre;
                html += '</h2>';
                document.body.innerHTML += html;
            });
        }).fail((err) => {
            console.error(err);
        });
    }
    loadEstudiantes();
    
    function onlick(){
        alert('ok');
    }


    // $.ajax({
    //     url: 'http://127.0.0.1:8080/estudiantes/1',
    //     method: 'put',
    //     data: { nombre: 'Ruben', email: 'ruben@test.test', telefono: '98765' }
    // }).done((response) => {
    //     console.log(response);
    // }).fail((err) => {
    //     console.error(err);
    // });

    // $.ajax({
    //     url: 'http://127.0.0.1:8080/estudiantes/1',
    //     method: 'delete',
    // }).done((response) => {
    //     console.log(response);
    // }).fail((err) => {
    //     console.error(err);
    // });

});


function pruebaClick(id) {
    alert('ok: ' + id);
    $.ajax({
        url: 'http://127.0.0.1:8080/estudiantes/' + id,
        method: 'get',
    }).done((response) => {
        console.log(response);
    }).fail((err) => {
        console.error(err);
    });
}