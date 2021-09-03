require("xterm/css/xterm.css") 
import { Terminal } from 'xterm'
import { AttachAddon   } from 'xterm-addon-attach';
import { FitAddon } from 'xterm-addon-fit';

function trigerTerminal(websock_url){
 var term = new Terminal();
 const fitAddon = new FitAddon();
 // ws://localhost:5020/containers/fe9e7998d947/attach/ws?stream=1&stdout=1
 const socket = new WebSocket(websock_url);
 const attachAddon = new AttachAddon(socket);

 term.loadAddon(fitAddon);
 term.loadAddon(attachAddon);

 term.open(document.getElementById('terminal'));
 fitAddon.fit()

 // Attach the socket to term
 term.writeln("Hello from \x1B[1;3;31mtgeek.cn\n\x1B[0m");
 term.write("$ ");
}
