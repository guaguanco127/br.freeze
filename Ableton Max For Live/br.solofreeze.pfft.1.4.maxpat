{
	"patcher": {
"description" : "br.solofreeze.pfft.1.4 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: the spectral freeze is built on Jean-François Charles' freeze-frame technique (one FFT frame captured with jit.catch~ inside pfft~), from \"A Tutorial on Spectral Sound Processing Using Max/MSP and Jitter\", Computer Music Journal 32(3), 2008. Retrigger, Insert/Gate, the attack detector, Feedback blending and the low-CPU switching are by Brian Riordan.",
		"fileversion": 1,
		"appversion": {
			"major": 9,
			"minor": 0,
			"revision": 7,
			"architecture": "x64",
			"modernui": 1
		},
		"classnamespace": "box",
		"rect": [
			446.0,
			177.0,
			691.0,
			366.0
		],
		"gridsize": [
			15.0,
			15.0
		],
		"boxes": [
{"box": {"id": "obj-signature", "maxclass": "comment", "numinlets": 1, "numoutlets": 0, "patching_rect": [640.0, 0.0, 520.0, 140.0], "text": "br.solofreeze.pfft.1.4 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: the spectral freeze is built on Jean-François Charles' freeze-frame technique (one FFT frame captured with jit.catch~ inside pfft~), from \"A Tutorial on Spectral Sound Processing Using Max/MSP and Jitter\", Computer Music Journal 32(3), 2008. Retrigger, Insert/Gate, the attack detector, Feedback blending and the low-CPU switching are by Brian Riordan.", "linecount": 2}},

			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-1",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						233.0,
						167.0,
						64.0,
						19.0
					],
					"text": "phasewrap~"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-2",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						239.0,
						59.0,
						190.0,
						17.0
					],
					"text": "Write amplitude and phase in a matrix"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-3",
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						442.0,
						148.0,
						165.0,
						17.0
					],
					"text": "Read the matrix and Inverse FFT"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-4",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
					"patching_rect": [
						428.0,
						254.0,
						53.0,
						19.0
					],
					"text": "poltocar~"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-5",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						446.0,
						219.0,
						71.0,
						19.0
					],
					"text": "frameaccum~"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-6",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"patching_rect": [
						446.0,
						200.0,
						171.0,
						19.0
					],
					"text": "jit.peek~ #0-1062-oneframespectrum 1 1"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-7",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						""
					],
					"patching_rect": [
						428.0,
						171.0,
						171.0,
						19.0
					],
					"text": "jit.peek~ #0-1062-oneframespectrum 1 0"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-8",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						87.0,
						203.0,
						64.0,
						19.0
					],
					"text": "prepend dim"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-9",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						"signal"
					],
					"patching_rect": [
						233.0,
						146.0,
						65.0,
						19.0
					],
					"text": "framedelta~"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-10",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 0,
					"patching_rect": [
						428.0,
						277.0,
						51.0,
						19.0
					],
					"text": "fftout~ 1"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-11",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"jit_matrix",
						""
					],
					"patching_rect": [
						185.0,
						197.0,
						106.0,
						19.0
					],
					"text": "jit.catch~ 2 @mode 2"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-12",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						96.0,
						174.0,
						93.0,
						19.0
					],
					"text": "prepend framesize"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-13",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						185.0,
						277.0,
						33.0,
						19.0
					],
					"saved_object_attributes": {
						"attr_comment": ""
					},
					"text": "out 1"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-14",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						156.0,
						59.0,
						25.0,
						19.0
					],
					"saved_object_attributes": {
						"attr_comment": [
							"bang",
							"the",
							"jit.catch~"
						]
					},
					"text": "in 1"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-15",
					"maxclass": "newobj",
					"numinlets": 2,
					"numoutlets": 2,
					"outlettype": [
						"signal",
						"signal"
					],
					"patching_rect": [
						185.0,
						123.0,
						58.0,
						19.0
					],
					"text": "cartopol~"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-16",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 4,
					"outlettype": [
						"int",
						"int",
						"int",
						"int"
					],
					"patching_rect": [
						79.0,
						136.0,
						61.0,
						19.0
					],
					"text": "fftinfo~"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-17",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"signal",
						"signal",
						"signal"
					],
					"patching_rect": [
						185.0,
						59.0,
						44.0,
						19.0
					],
					"text": "fftin~ 1"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-18",
					"maxclass": "newobj",
					"numinlets": 1,
					"numoutlets": 2,
					"outlettype": [
						"jit_matrix",
						""
					],
					"patching_rect": [
						185.0,
						235.0,
						215.0,
						19.0
					],
					"text": "jit.matrix #0-1062-oneframespectrum 2 float32 2048"
				}
			},
			{
				"box": {
					"fontname": "Arial",
					"fontsize": 9.0,
					"id": "obj-19",
					"linecount": 3,
					"maxclass": "comment",
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						291.0,
						197.0,
						120.0,
						37.0
					],
					"text": "<- outputs the data of the last complete fft frame in a 2-plane matrix"
				}
			},
			{
				"box": {
					"bgcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"border": 2,
					"bordercolor": [
						0.83921568627451,
						0.0,
						0.686274509803922,
						1.0
					],
					"id": "obj-20",
					"maxclass": "panel",
					"mode": 0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						425.0,
						146.0,
						204.0,
						160.0
					],
					"rounded": 12
				}
			},
			{
				"box": {
					"bgcolor": [
						1.0,
						1.0,
						1.0,
						1.0
					],
					"border": 2,
					"bordercolor": [
						0.83921568627451,
						0.0,
						0.686274509803922,
						1.0
					],
					"id": "obj-21",
					"maxclass": "panel",
					"mode": 0,
					"numinlets": 1,
					"numoutlets": 0,
					"patching_rect": [
						75.0,
						54.0,
						347.0,
						217.0
					],
					"rounded": 12
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"id": "obj-22",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						""
					],
					"patching_rect": [
						156,
						82,
						128.0,
						22.0
					],
					"text": "route blend bang",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"maxclass": "message",
					"id": "obj-23",
					"numinlets": 2,
					"numoutlets": 1,
					"outlettype": [
						""
					],
					"patching_rect": [
						300,
						82,
						40.0,
						22.0
					],
					"text": "0.",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"id": "obj-24",
					"numinlets": 1,
					"numoutlets": 3,
					"outlettype": [
						"",
						"",
						""
					],
					"patching_rect": [
						156,
						300,
						65.0,
						22.0
					],
					"text": "t b b f",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"maxclass": "newobj",
					"id": "obj-25",
					"numinlets": 3,
					"numoutlets": 2,
					"outlettype": [
						"",
						""
					],
					"patching_rect": [
						185,
						320,
						1017.0,
						22.0
					],
					"text": "jit.expr @inputs 3 @expr \"in[0].p[0]*(1.-in[1])+in[2].p[0]*in[1]\" \"in[0].p[1]+(in[2].p[0]*in[1]>in[0].p[0]*(1.-in[1]))*(in[2].p[1]-in[0].p[1])\"",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			},
			{
				"box": {
					"maxclass": "comment",
					"id": "obj-26",
					"numinlets": 1,
					"numoutlets": 0,
					"outlettype": [],
					"patching_rect": [
						420,
						300,
						300,
						60
					],
					"text": "Feedback: blend <fb> -> new = in*(1-fb) + old*fb (amplitude); each bin keeps the phase step of whichever weighted side is louder. bang = replace (fb 0). in[1] = fb (float), in[2] = stored frame.",
					"fontname": "Arial",
					"fontsize": 12.0
				}
			}
		],
		"lines": [
			{
				"patchline": {
					"destination": [
						"obj-11",
						1
					],
					"midpoints": [
						242.5,
						190.0,
						281.5,
						190.0
					],
					"source": [
						"obj-1",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-11",
						0
					],
					"midpoints": [
						105.5,
						193.0,
						194.5,
						193.0
					],
					"source": [
						"obj-12",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-11",
						0
					],
					"source": [
						"obj-15",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-9",
						0
					],
					"source": [
						"obj-15",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-12",
						0
					],
					"order": 0,
					"source": [
						"obj-16",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-8",
						0
					],
					"midpoints": [
						102.5,
						165.0,
						96.5,
						165.0
					],
					"order": 1,
					"source": [
						"obj-16",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-15",
						1
					],
					"midpoints": [
						207.0,
						113.0,
						233.5,
						113.0
					],
					"source": [
						"obj-17",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-15",
						0
					],
					"source": [
						"obj-17",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-6",
						0
					],
					"midpoints": [
						219.5,
						85.0,
						608.0,
						85.0,
						608.0,
						193.0,
						455.5,
						193.0
					],
					"order": 0,
					"source": [
						"obj-17",
						2
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-7",
						0
					],
					"midpoints": [
						219.5,
						92.0,
						437.5,
						92.0
					],
					"order": 1,
					"source": [
						"obj-17",
						2
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-10",
						1
					],
					"midpoints": [
						471.5,
						274.0,
						469.5,
						274.0
					],
					"source": [
						"obj-4",
						1
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-10",
						0
					],
					"source": [
						"obj-4",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-4",
						1
					],
					"midpoints": [
						455.5,
						240.0,
						471.5,
						240.0
					],
					"source": [
						"obj-5",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-5",
						0
					],
					"source": [
						"obj-6",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-4",
						0
					],
					"source": [
						"obj-7",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-18",
						0
					],
					"midpoints": [
						96.5,
						222.0,
						194.5,
						222.0
					],
					"source": [
						"obj-8",
						0
					]
				}
			},
			{
				"patchline": {
					"destination": [
						"obj-1",
						0
					],
					"source": [
						"obj-9",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-14",
						0
					],
					"destination": [
						"obj-22",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-22",
						0
					],
					"destination": [
						"obj-24",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-22",
						1
					],
					"destination": [
						"obj-23",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-23",
						0
					],
					"destination": [
						"obj-24",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-22",
						2
					],
					"destination": [
						"obj-11",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-24",
						2
					],
					"destination": [
						"obj-25",
						1
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-24",
						1
					],
					"destination": [
						"obj-18",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-24",
						0
					],
					"destination": [
						"obj-11",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-11",
						0
					],
					"destination": [
						"obj-25",
						0
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-18",
						0
					],
					"destination": [
						"obj-25",
						2
					]
				}
			},
			{
				"patchline": {
					"source": [
						"obj-25",
						0
					],
					"destination": [
						"obj-18",
						0
					]
				}
			}
		]
	}
}
