require("xterm/css/xterm.css") 
import { Terminal } from 'xterm'
import { AttachAddon   } from 'xterm-addon-attach';
import { fit } from 'xterm-addon-fit';


require("./labs/app.js")
var term = new Terminal();
const socket = new WebSocket('ws://localhost:5020/containers/fe9e7998d947/attach/ws?stream=1&stdout=1');
const attachAddon = new AttachAddon(socket);
term.loadAddon(attachAddon);

Terminal.applyAddon(fit);
Terminal.applyAddon(fullscreen);


// document.addEventListener("turbolinks:load", () =>{
//   var term = new Terminal();
//   term.open(document.getElementById('terminal'));
//   const socket = new WebSocket('ws://localhost:5020/containers/fe9e7998d947/attach/ws?stream=1&stdout=1');
//   const attachAddon = new AttachAddon(socket);
// 
//   // Attach the socket to term
//   term.loadAddon(attachAddon);
//   term.write("Hello from \x1B[1;3;31mxterm.js\n\x1B[0m $ ");
// })
