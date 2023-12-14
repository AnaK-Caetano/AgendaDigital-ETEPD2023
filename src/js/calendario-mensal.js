
document.addEventListener('DOMContentLoaded', function() {
  //seletor do calendário
  var calendarEl = document.getElementById('calendar');

  //instanciar o seletor calendar
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay'
        },
        
        // Idioma
        locale:'pt-br',
      
        navLinks: true, // can click day/week names to navigate views

        //Clicar e arrastar o mouse sobre um evento
        selectable: true,

        //indicar visualmente a área selecionada antes do usuário soltar o botão para confirmar seleção
        selectMirror: true,

        //Arrastar e redimensionar os eventos do calendário
        editable: true,
        dayMaxEvents: true,
      
        events: './config/listar-evento.php'
    });

    calendar.render();
  });