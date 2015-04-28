/**
 * Created by desarrollo on 27/04/14.
 */



function test() {
    if (document.getElementById('registro_hospital_general').value == 'false') {
        document.getElementById('div_servicio_id').style.display = 'none';
    } else {
        document.getElementById('div_servicio_id').style.display = '';
    }
}