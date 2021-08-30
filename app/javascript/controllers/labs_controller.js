require("xterm/css/xterm.css") 
import { Terminal } from 'xterm'
import { AttachAddon   } from 'xterm-addon-attach';
import { FitAddon } from 'xterm-addon-fit';
import { Toast} from 'bootstrap';



document.addEventListener("turbolinks:load", () =>{
 var term = new Terminal();
 const fitAddon = new FitAddon();

 const socket = new WebSocket('ws://localhost:5020/containers/fe9e7998d947/attach/ws?stream=1&stdout=1');
 const attachAddon = new AttachAddon(socket);

 term.loadAddon(fitAddon);
 term.loadAddon(attachAddon);

 term.open(document.getElementById('terminal'));
 fitAddon.fit()

 // Attach the socket to term
 term.writeln("Hello from \x1B[1;3;31mxterm.js\n\x1B[0m");
 term.write("$ ");
 
 

 // var toastTrigger = document.getElementById('liveToastBtn')
 // var toastLiveExample = document.getElementById('liveToast')
 // if (toastTrigger) {
 //   toastTrigger.addEventListener('click', function () {
 //       var toast = new Toast(toastLiveExample)

 //       toast.show()
 //    })
 // }
})
