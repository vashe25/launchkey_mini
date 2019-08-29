var midi = undefined,
	inputs = new Array(),
	outputs = new Array();

function onMidiMessage(message) {
	console.log(message.data);
}

function onStateChange(state) {
	console.log(state);
}

function iterateControls(iterator, input = true) {
	var array = new Array();
	for (var obj = iterator.next(); obj && !obj.done; obj = iterator.next()) {
		if (input) {
			obj.value.onmidimessage = onMidiMessage;
		}
		obj.value.onstatechange = onStateChange;
		array.push(obj);
	}
	return array;
}

function prepareForUse() {
	var msg = [0x90, 0x0C, 0x7F];
	var outport = midi.outputs.get(1);
	outport.send(msg)
}

function releaseFromeUse() {
	var msg = [0x90, 0x0C, 0x00];
	var outport = midi.outputs.get(1);
	outport.send(msg)
}

navigator.requestMIDIAccess().then(
	function(access) {
		console.log('success');
		midi = access;
		inputs = iterateControls(midi.inputs.values());
		outputs = iterateControls(midi.outputs.values(), false);
	}, function(fail) {
		console.log(fail);
	}
);