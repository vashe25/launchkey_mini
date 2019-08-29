function remote_init(manufacturer, model)

	local items={
		{name="Keyboard", input="keyboard"},
		{name="Knob 1", input="value", output="value", min=0, max=127},
		{name="Knob 2", input="value", output="value", min=0, max=127},
		{name="Knob 3", input="value", output="value", min=0, max=127},
		{name="Knob 4", input="value", output="value", min=0, max=127},
		{name="Knob 5", input="value", output="value", min=0, max=127},
		{name="Knob 6", input="value", output="value", min=0, max=127},
		{name="Knob 7", input="value", output="value", min=0, max=127},
		{name="Knob 8", input="value", output="value", min=0, max=127},
		{name="REWIND", input="button"},
		{name="FORWARD", input="button"},
		{name="Pad 1", input="button", output="value"},
		{name="Pad 2", input="button", output="value"},
		{name="Pad 3", input="button", output="value"},
		{name="Pad 4", input="button", output="value"},
		{name="Pad 5", input="button", output="value"},
		{name="Pad 6", input="button", output="value"},
		{name="Pad 7", input="button", output="value"},
		{name="Pad 8", input="button", output="value"},
		{name="Pad 9", input="button", output="value"},
		{name="Pad 10", input="button", output="value"},
		{name="Pad 11", input="button", output="value"},
		{name="Pad 12", input="button", output="value"},
		{name="Pad 13", input="button", output="value"},
		{name="Pad 14", input="button", output="value"},
		{name="Pad 15", input="button", output="value"},
		{name="Pad 16", input="button", output="value"},
		{name="Cliplaunch 1", input="button"},
		{name="Cliplaunch 2", input="button"},
		{name="Track Up", input="button"},
		{name="Track Down", input="button"},
		{name="Intelligent", input="button"},
	}

	remote.define_items(items)

	g_knob_1 = 1
	g_knob_2 = 2
	g_knob_3 = 3
	g_knob_4 = 4
	g_knob_5 = 5
	g_knob_6 = 6
	g_knob_7 = 7
	g_knob_8 = 8

	g_rewind = 9
	g_forward = 10

	g_pad_1 = 11
	g_pad_2 = 12
	g_pad_3 = 13
	g_pad_4 = 14
	g_pad_5 = 15
	g_pad_6 = 16
	g_pad_7 = 17
	g_pad_8 = 18
	g_pad_9 = 19
	g_pad_10 = 20
	g_pad_11 = 21
	g_pad_12 = 22
	g_pad_13 = 23
	g_pad_14 = 24
	g_pad_15 = 25
	g_pad_16 = 26

	g_cliplaunch_1 = 27
	g_cliplaunch_2 = 28

	g_track_up = 29
	g_track_down = 30

	g_intelligent = 31

	local inputs={
		{pattern="9? xx 00", name="Keyboard", value="0", note="x", velocity="64", port=1},
		{pattern="<100x>? yy zz", name="Keyboard", port=1},
		{pattern="b0 15 xx", name="Knob 1", port=1},
		{pattern="b0 16 xx", name="Knob 2", port=1},
		{pattern="b0 17 xx", name="Knob 3", port=1},
		{pattern="b0 18 xx", name="Knob 4", port=1},
		{pattern="b0 19 xx", name="Knob 5", port=1},
		{pattern="b0 1A xx", name="Knob 6", port=1},
		{pattern="b0 1B xx", name="Knob 7", port=1},
		{pattern="b0 1C xx", name="Knob 8", port=1},
		{pattern="b0 68 ?<???x>", name="REWIND", port=1},
		{pattern="b0 69 ?<???x>", name="FORWARD", port=1},
		{pattern="90 60 ?<???x>", name="Pad 1", port=1},
		{pattern="90 61 ?<???x>", name="Pad 2", port=1},
		{pattern="90 62 ?<???x>", name="Pad 3", port=1},
		{pattern="90 63 ?<???x>", name="Pad 4", port=1},
		{pattern="90 64 ?<???x>", name="Pad 5", port=1},
		{pattern="90 65 ?<???x>", name="Pad 6", port=1},
		{pattern="90 66 ?<???x>", name="Pad 7", port=1},
		{pattern="90 67 ?<???x>", name="Pad 8", port=1},
		{pattern="90 70 ?<???x>", name="Pad 9", port=1},
		{pattern="90 71 ?<???x>", name="Pad 10", port=1},
		{pattern="90 72 ?<???x>", name="Pad 11", port=1},
		{pattern="90 73 ?<???x>", name="Pad 12", port=1},
		{pattern="90 74 ?<???x>", name="Pad 13", port=1},
		{pattern="90 75 ?<???x>", name="Pad 14", port=1},
		{pattern="90 76 ?<???x>", name="Pad 15", port=1},
		{pattern="90 77 ?<???x>", name="Pad 16", port=1},
		{pattern="90 68 ?<???x>", name="Cliplaunch 1", port=1},
		{pattern="90 78 ?<???x>", name="Cliplaunch 2", port=1},
		{pattern="b0 6B ?<???x>", name="Track Up", port=1},
		{pattern="b0 6A ?<???x>", name="Track Down", port=1},
		{pattern="b0 0e ?<???x>", name="Intelligent", port=1},
	}

	remote.define_auto_inputs(inputs)

	local outputs={
		{name="Pad 1", pattern="90 60 0<00xx>", x="value*3"},
		{name="Pad 2", pattern="90 61 0<00xx>", x="value*3"},
		{name="Pad 3", pattern="90 62 0<00xx>", x="value*3"},
		{name="Pad 4", pattern="90 63 0<00xx>", x="value*3"},
		{name="Pad 5", pattern="90 64 0<00xx>", x="value*3"},
		{name="Pad 6", pattern="90 65 0<00xx>", x="value*3"},
		{name="Pad 7", pattern="90 66 0<00xx>", x="value*3"},
		{name="Pad 8", pattern="90 67 0<00xx>", x="value*3"},
		{name="Pad 9", pattern="90 70 0<00xx>", x="value*3"},
		{name="Pad 10", pattern="90 71 0<00xx>", x="value*3"},
		{name="Pad 11", pattern="90 72 0<00xx>", x="value*3"},
		{name="Pad 12", pattern="90 73 0<00xx>", x="value*3"},
		{name="Pad 13", pattern="90 74 0<00xx>", x="value*3"},
		{name="Pad 14", pattern="90 75 0<00xx>", x="value*3"},
		{name="Pad 15", pattern="90 76 0<00xx>", x="value*3"},
		{name="Pad 16", pattern="90 77 0<00xx>", x="value*3"},
	}

	remote.define_auto_outputs(outputs)

end

function remote_probe(manufacturer, model, prober)

	local request_events = {}
	local response = {}

	request_events = {remote.make_midi("F0 7E 7F 06 01 F7")}
	response = "F0 7E 7F 06 02 00 20 29 35 00 00 00 ?? ?? ?? ?? F7"

	local function match_events(mask, events)
		for i,event in ipairs(events) do
			local res = remote.match_midi(mask, event)
			if res ~= nil then
				return true
			end
		end
		return false
	end

	local results = {}
	local port_out = 0
	local ins = {}
	local received_ports = {}

	for outPortIndex = 1, prober.out_ports do
		prober.midi_send_function(outPortIndex,request_events)
		prober.wait_function(50)

		for inPortIndex = 1,prober.in_ports do
			local events=prober.midi_receive_function(inPortIndex)

			if match_events(response,events) then
				prober.midi_send_function(outPortIndex,request_events)
				prober.wait_function(50)

				for inPortIndex = 1, prober.in_ports do
					local events=prober.midi_receive_function(inPortIndex)

					if match_events(response,events) then
						port_out = outPortIndex
						table.insert(ins, outPortIndex)
					end
				end
			end
		end
	end

	for outPortIndex = 1, prober.out_ports do
		if outPortIndex ~= port_out then
			prober.midi_send_function(outPortIndex, request_events)
			prober.wait_function(50)

			for inPortIndex = 1, prober.in_ports do
				local events=prober.midi_receive_function(inPortIndex)

				if match_events(response, events) then
					table.insert(received_ports, inPortIndex)
				end
			end
		end
	end

	if received_ports[1] ~= nil then
		table.insert(ins, received_ports[1])
		local one_result={ in_ports=ins, out_ports={port_out}}
		table.insert(results, one_result)
	end

	return results
end

function remote_prepare_for_use()
	return {
		remote.make_midi("90 0C 7F"),
	}
end

function remote_release_from_use()
	return {
		remote.make_midi("90 0C 00"),
	}
end

g_knob_1_last_value = 0
g_knob_2_last_value = 0
g_knob_3_last_value = 0
g_knob_4_last_value = 0
g_knob_5_last_value = 0
g_knob_6_last_value = 0
g_knob_7_last_value = 0
g_knob_8_last_value = 0

g_knob_1_current_value = 0
g_knob_2_current_value = 0
g_knob_3_current_value = 0
g_knob_4_current_value = 0
g_knob_5_current_value = 0
g_knob_6_current_value = 0
g_knob_7_current_value = 0
g_knob_8_current_value = 0

g_mute_knob_1 = false
g_mute_knob_2 = false
g_mute_knob_3 = false
g_mute_knob_4 = false
g_mute_knob_5 = false
g_mute_knob_6 = false
g_mute_knob_7 = false
g_mute_knob_8 = false

g_input_is_positive = false
g_input_is_negative = false
g_last_input_time = 0
g_last_input_item = 0


local function mute_control(data_value, knob_current_value)

	-- check whether the control has passed through the parameter value point
	if data_value < knob_current_value then
		if g_input_is_positive then
			g_input_is_positive = false
			return false
		else
			g_input_is_negative = true
			return true
		end
	elseif data_value > knob_current_value then
		if g_input_is_negative then
			g_input_is_negative = false
			return false
		else
			g_input_is_positive = true
			return true
		end
	else
		g_input_is_positive = false
		g_input_is_negative = false
	end
end

function remote_on_auto_input(item_index)
	g_last_input_item=item_index
	g_last_input_time=remote.get_time_ms()

	if item_index == g_knob_1 then g_knob_1_last_value = remote.get_item_value(g_knob_1)
	elseif item_index == g_knob_2 then g_knob_2_last_value = remote.get_item_value(g_knob_2)
	elseif item_index == g_knob_3 then g_knob_3_last_value = remote.get_item_value(g_knob_3)
	elseif item_index == g_knob_4 then g_knob_4_last_value = remote.get_item_value(g_knob_4)
	elseif item_index == g_knob_5 then g_knob_5_last_value = remote.get_item_value(g_knob_5)
	elseif item_index == g_knob_6 then g_knob_6_last_value = remote.get_item_value(g_knob_6)
	elseif item_index == g_knob_7 then g_knob_7_last_value = remote.get_item_value(g_knob_7)
	elseif item_index == g_knob_8 then g_knob_8_last_value = remote.get_item_value(g_knob_8)
	end

end

function remote_set_state(changed_items)

	for i,item_index in ipairs(changed_items) do

		if item_index == g_knob_1 then	g_knob_1_current_value = remote.get_item_value(g_knob_1)
		elseif item_index == g_knob_2 then	g_knob_2_current_value = remote.get_item_value(g_knob_2)
		elseif item_index == g_knob_3 then	g_knob_3_current_value = remote.get_item_value(g_knob_3)
		elseif item_index == g_knob_4 then	g_knob_4_current_value = remote.get_item_value(g_knob_4)
		elseif item_index == g_knob_5 then	g_knob_5_current_value = remote.get_item_value(g_knob_5)
		elseif item_index == g_knob_6 then	g_knob_6_current_value = remote.get_item_value(g_knob_6)
		elseif item_index == g_knob_7 then	g_knob_7_current_value = remote.get_item_value(g_knob_7)
		elseif item_index == g_knob_8 then	g_knob_8_current_value = remote.get_item_value(g_knob_8)
		end


		if item_index == g_device_name or item_index == g_patch_name then

			g_knob_1_current_value = remote.get_item_value(g_knob_1)
			if g_knob_1_last_value ~= g_knob_1_current_value then
				g_mute_knob_1 = true
			end

			g_knob_2_current_value = remote.get_item_value(g_knob_2)
			if g_knob_2_last_value ~= g_knob_2_current_value then
				g_mute_knob_2 = true
			end

			g_knob_3_current_value = remote.get_item_value(g_knob_3)
			if g_knob_3_last_value ~= g_knob_3_current_value then
				g_mute_knob_3 = true
			end

			g_knob_4_current_value = remote.get_item_value(g_knob_4)
			if g_knob_4_last_value ~= g_knob_4_current_value then
				g_mute_knob_4 = true
			end

			g_knob_5_current_value = remote.get_item_value(g_knob_5)
			if g_knob_5_last_value ~= g_knob_5_current_value then
				g_mute_knob_5 = true
			end

			g_knob_6_current_value = remote.get_item_value(g_knob_6)
			if g_knob_6_last_value ~= g_knob_6_current_value then
				g_mute_knob_6 = true
			end

			g_knob_7_current_value = remote.get_item_value(g_knob_7)
			if g_knob_7_last_value ~= g_knob_7_current_value then
				g_mute_knob_7 = true
			end

			g_knob_8_current_value = remote.get_item_value(g_knob_8)
			if g_knob_8_last_value ~= g_knob_8_current_value then
				g_mute_knob_8 = true
			end

		end
	end

end


function remote_process_midi(event)

	-- determine if a pad was hit
	local pad = 0

	if event[1] == 144 then

		if ((event[2] >= 96) and (event[2] <= 103)) then pad = (event[2]-95)
		elseif ((event[2] >= 112) and (event[2] <= 119)) then pad = (event[2]-103)
		else return false
		end

		if event[3] ~= 0 then
			local msg={ time_stamp = event.time_stamp, item = pad+g_pad_1-1, value = 1 }
			remote.handle_input(msg)
			g_last_input_time=remote.get_time_ms()

			g_mute_knob_1 = true
			g_mute_knob_2 = true
			g_mute_knob_3 = true
			g_mute_knob_4 = true
			g_mute_knob_5 = true
			g_mute_knob_6 = true
			g_mute_knob_7 = true
			g_mute_knob_8 = true

			return true

		else
			local msg = { time_stamp = event.time_stamp, item = pad+g_pad_1-1, value = 0 }
			remote.handle_input(msg)
			g_last_input_time = remote.get_time_ms()

			return true
		end
	end

	return false
end
