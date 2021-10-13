window.addEventListener("load", () => {
  const links = document.querySelectorAll("a[data-remote]");
  links.forEach((element) => {
    element.addEventListener("ajax:success", (event) => {
      const [data, status, xhr] = event.detail;
      $("#task_text").html(data.text);
      $("#task_subtext").html(data.subtext);
      $("#task_hint").html(data.hint);
      $("#task_solution").html(data.solution);
      $("#next-task").attr("href", data.next_task_link);
    });
  });
});

