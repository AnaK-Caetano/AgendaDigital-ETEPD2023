
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
      
        //impedir o aluno de criar eventos
        navLinks: true, // can click day/week names to navigate views
        selectable: false,
        selectMirror: false,
      select: function(arg) {
        var title = prompt('Event Title:');
        if (title) {
          calendar.addEvent({
            title: title,
            start: arg.start,
            end: arg.end,
            allDay: arg.allDay
          })
        }
        calendar.unselect()
      },
      eventClick: function(arg) {
        if (confirm('Are you sure you want to delete this event?')) {
          arg.event.remove()
        }
      },
      editable: true,
        dayMaxEvents: true, // allow "more" link when too many events
      
        events: 'listar_evento.php'
    });

    calendar.render();
  });