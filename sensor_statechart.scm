{
  "graph": {
    "cells": [
      {
        "position": {
          "x": 0,
          "y": 0
        },
        "size": {
          "height": 10,
          "width": 10
        },
        "angle": 0,
        "type": "Statechart",
        "id": "78749915-0da0-40a2-862f-9e8d94c7c68e",
        "linkable": false,
        "z": 1,
        "attrs": {
          "name": {
            "text": "sensor_statechart Export"
          },
          "specification": {
            "text": "@EventDriven\n@SuperSteps(no)\n\ninterface: \n    //evento my first statechart\n    in event myEvent\n    \n    //eventos sensor\n    in event EV_BTN_01_PRESSED\n    in event EV_BTN_01_NOT_PRESSED\n    \n    //eventos sistema\n    in event EV_SYST_DETECTED_CAR\n    in event EV_SYST_NO_CAR_DETECTED\n    \n    in event EV_SYST_BUTTON_PRESSED\n    in event EV_SYST_BUTTON_NOT_PRESSED\n    \n    in event EV_SYST_TICKET_TAKEN\n    in event EV_SYST_TICKET_NOT_TAKEN\n    \n    in event EV_SYST_BARRIER_UP\n    in event EV_SYST_BARRIER_NOT_UP\n    \n    in event EV_SYST_CAR_PASSED\n    in event EV_SYST_CAR_NOT_PASSED\n    \n    in event EV_SYST_BARRIER_DOWN\n    in event EV_SYST_BARRIER_NOT_DOWN\n    \n    \n    \ninternal:\n    var tick:integer\n    const DEL_BTN_01_MAX:integer = 50"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 222.5,
          "y": 130
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "z": 2,
        "embeds": [
          "f70f632c-e54d-4002-9ec5-7baec620de10"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 222.5,
          "y": 145
        },
        "id": "f70f632c-e54d-4002-9ec5-7baec620de10",
        "z": 3,
        "parent": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb",
        "attrs": {
          "label": {
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 200,
          "y": 200
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "36b8548a-74b1-4925-ae23-291c03231ee6",
        "z": 4,
        "attrs": {
          "name": {
            "text": "StateA"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 400,
          "y": 300
        },
        "size": {
          "height": 60,
          "width": 60
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "db372094-acc6-467b-b44d-495606208445",
        "z": 5,
        "attrs": {
          "name": {
            "text": "StateB"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "a4d257fe-72cb-4334-9a1f-b5a8b4f886fb"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "9b5ce41b-0116-46a8-a603-ea4119c6e5d7",
        "z": 6,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "target": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "after 1 s"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "f4fdd1fd-fc69-42a9-a51b-34aeb2fd7fe4",
        "z": 7,
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "db372094-acc6-467b-b44d-495606208445"
        },
        "target": {
          "id": "36b8548a-74b1-4925-ae23-291c03231ee6"
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "myEvent"
              }
            },
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "7197094a-c890-4098-9170-1701f27ac3cb",
        "z": 8,
        "attrs": {}
      },
      {
        "type": "Region",
        "position": {
          "x": 635,
          "y": -33
        },
        "size": {
          "height": 1142.09375,
          "width": 1079
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "z": 103,
        "marker": [
          "Region must have a 'default' entry."
        ],
        "embeds": [
          "6ecf3911-3c90-4e1e-a221-cf5afa291479",
          "5220ab56-ddc9-4f86-899d-f27a86d1a19a",
          "5b0db4c6-62fa-428f-a0f1-5449b93ee466",
          "3dcfbdc8-dd4f-408e-b1b0-9ea465a21297",
          "2e6d601a-3b9a-4de3-b12e-ec48b90e0966",
          "154e0a4e-f273-4dbf-9c2f-e097c7399f91",
          "fc4896fb-14d1-4132-9f52-e3d8cde5eac6",
          "3126b148-3bc9-4a77-9160-f312941b3dc0",
          "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "9c24709e-0629-496f-9e50-097025edec0a",
          "146dbcde-f855-4fe1-9fc5-795e77730e92",
          "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e"
        ],
        "attrs": {
          "priority": {
            "text": 1
          },
          "name": {
            "text": "sensor"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1070.140625,
          "y": 946
        },
        "size": {
          "height": 60,
          "width": 144.03125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "3126b148-3bc9-4a77-9160-f312941b3dc0",
        "z": 104,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "d7adb6b2-111c-48d7-a50d-4faaaa25dcf8"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_INCREASING"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1560.171875,
          "y": 264.5
        },
        "size": {
          "height": 60,
          "width": 100.828125
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
        "z": 105,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "282de0f6-ac67-4d62-8897-5f58348755c1"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_DOWN"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 687,
          "y": 491.5
        },
        "size": {
          "height": 60,
          "width": 86.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "9c24709e-0629-496f-9e50-097025edec0a",
        "z": 106,
        "marker": [
          "This state's completion transition results in an infinite cycle."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "fc104bc2-1ea4-412e-895a-5843ed2c4e8c"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_UP"
          }
        }
      },
      {
        "type": "State",
        "position": {
          "x": 1113.2890625,
          "y": 40
        },
        "size": {
          "height": 120.59375,
          "width": 122.42500305175781
        },
        "angle": 0,
        "fixedRatio": false,
        "embedable": true,
        "linkable": true,
        "id": "146dbcde-f855-4fe1-9fc5-795e77730e92",
        "z": 107,
        "marker": [
          "Node is not reachable."
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "82da15ce-1e4b-4b93-96cc-5cdabf7662de"
        ],
        "attrs": {
          "name": {
            "text": "ST_BTN_01_FALLING"
          }
        }
      },
      {
        "type": "Entry",
        "position": {
          "x": 651,
          "y": 509.5
        },
        "size": {
          "height": 15,
          "width": 15
        },
        "angle": 0,
        "fixedRatio": true,
        "embedable": false,
        "linkable": true,
        "id": "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e",
        "z": 108,
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "embeds": [
          "8155ec82-7f85-4c0d-844f-e82b8c99d370"
        ],
        "attrs": {}
      },
      {
        "type": "NodeLabel",
        "label": true,
        "size": {
          "width": 15,
          "height": 15
        },
        "position": {
          "x": 651,
          "y": 524.5
        },
        "id": "8155ec82-7f85-4c0d-844f-e82b8c99d370",
        "z": 120,
        "parent": "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e",
        "attrs": {
          "label": {
            "fill": "#C5C8C6",
            "refX": "50%",
            "textAnchor": "middle",
            "refY": "50%",
            "textVerticalAnchor": "middle"
          }
        }
      },
      {
        "type": "Transition",
        "source": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92"
        },
        "target": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 90.98126220703125,
              "dy": 5,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n[tick > 0]\n/ tick--"
              }
            },
            "position": {
              "distance": 0.12810647058215494,
              "offset": -23.43896484375,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "id": "82da15ce-1e4b-4b93-96cc-5cdabf7662de",
        "z": 121,
        "marker": [
          "Could not find declaration of tick"
        ],
        "vertices": [
          {
            "x": 1114,
            "y": -17.953125
          }
        ],
        "parent": "146dbcde-f855-4fe1-9fc5-795e77730e92",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 53.01092529296875,
              "dy": 36,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n/ tick = 0"
              }
            },
            "position": {
              "distance": 0.43809081608549827,
              "offset": 24.55731201171875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "5b0db4c6-62fa-428f-a0f1-5449b93ee466",
        "z": 121,
        "vertices": [
          {
            "x": 1150,
            "y": 410
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "dca5c13f-88c3-4cf0-b4ca-5f3c84c6cc1e"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 6.0109405517578125,
              "dy": 30,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {},
            "position": {}
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "6ecf3911-3c90-4e1e-a221-cf5afa291479",
        "z": 121,
        "marker": [
          "Entry target must be child of the region.\nSource and target of a transition must not be located in orthogonal regions!"
        ],
        "vertices": [],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 66.98124694824219,
              "dy": 35,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED"
              }
            },
            "position": {
              "distance": 0.6496881013970627,
              "offset": 73.3826904296875,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "fc104bc2-1ea4-412e-895a-5843ed2c4e8c",
        "z": 121,
        "marker": [
          "Could not find declaration of EV_BTN_01_NOT_PRESSED\nTrigger 'EV_BTN_01_NOT_PRESSED' is no event."
        ],
        "vertices": [
          {
            "x": 811.96875,
            "y": 592.5
          }
        ],
        "parent": "9c24709e-0629-496f-9e50-097025edec0a",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a"
        },
        "target": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.01092529296875,
              "dy": 29,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n/ tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.691256835106195,
              "offset": 45.003120681260974,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "5220ab56-ddc9-4f86-899d-f27a86d1a19a",
        "z": 121,
        "vertices": [
          {
            "x": 752,
            "y": 174
          }
        ],
        "marker": [
          "Could not find declaration of DEL_BTN_01_MAX\nCould not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "146dbcde-f855-4fe1-9fc5-795e77730e92"
        },
        "target": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 49.8421630859375,
              "dy": 9,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n[tick <= 0] / raise EV_SYST_BARRIER_DOWN;\nraise EV_SYST_CAR_PASSED;\nraise EV_SYST_BARRIER_UP;\nraise EV_SYST_TICKET_TAKEN;\nraise EV_SYST_BUTTON_PRESSED;\nraise EV_SYST_DETECTED_CAR"
              }
            },
            "position": {
              "distance": 0.5020499260436657,
              "offset": -68,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "3dcfbdc8-dd4f-408e-b1b0-9ea465a21297",
        "z": 121,
        "marker": [
          "Could not find declaration of tick"
        ],
        "vertices": [
          {
            "x": 1436,
            "y": 67.046875
          }
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b"
        },
        "target": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 94.80938720703125,
              "dy": 49,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED"
              }
            },
            "position": {
              "distance": 0.6302253931548908,
              "offset": -19.574783325195312,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "282de0f6-ac67-4d62-8897-5f58348755c1",
        "z": 121,
        "marker": [
          "Could not find declaration of EV_BTN_01_PRESSED\nTrigger 'EV_BTN_01_PRESSED' is no event."
        ],
        "vertices": [
          {
            "x": 1718.96875,
            "y": 293.5
          }
        ],
        "parent": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b"
        },
        "target": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 141.015625,
              "dy": 37,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n/ tick = DEL_BTN_01_MAX"
              }
            },
            "position": {
              "distance": 0.6518070671907874,
              "offset": -25,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "fc4896fb-14d1-4132-9f52-e3d8cde5eac6",
        "z": 121,
        "vertices": [
          {
            "x": 1625,
            "y": 864
          }
        ],
        "marker": [
          "Could not find declaration of DEL_BTN_01_MAX\nCould not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0"
        },
        "target": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 101.98126220703125,
              "dy": 49,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n[tick > 0]\n/ tick--"
              }
            },
            "position": {
              "distance": 0.3163668932086741,
              "offset": 54.45968325601663,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "3"
              }
            }
          }
        ],
        "id": "d7adb6b2-111c-48d7-a50d-4faaaa25dcf8",
        "z": 121,
        "vertices": [
          {
            "x": 1142.1606250000004,
            "y": 1056
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "3126b148-3bc9-4a77-9160-f312941b3dc0",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0"
        },
        "target": {
          "id": "49d4aa07-3e01-488a-944c-32bdfd3b696b",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 3.8421630859375,
              "dy": 33,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_PRESSED\n/ tick = 0\n"
              }
            },
            "position": {
              "distance": 0.6825630626577118,
              "offset": 31,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "2"
              }
            }
          }
        ],
        "id": "154e0a4e-f273-4dbf-9c2f-e097c7399f91",
        "z": 121,
        "vertices": [
          {
            "x": 1303,
            "y": 598
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      },
      {
        "type": "Transition",
        "source": {
          "id": "3126b148-3bc9-4a77-9160-f312941b3dc0"
        },
        "target": {
          "id": "9c24709e-0629-496f-9e50-097025edec0a",
          "anchor": {
            "name": "topLeft",
            "args": {
              "dx": 40.01094055175781,
              "dy": 60,
              "rotate": true
            }
          },
          "priority": true
        },
        "router": {
          "name": "orthogonal",
          "args": {
            "padding": 8
          }
        },
        "connector": {
          "name": "rounded"
        },
        "labels": [
          {
            "attrs": {
              "text": {
                "text": "EV_BTN_01_NOT_PRESSED\n[tick <= 0] /\nraise EV_SYST_BARRIER_NOT_DOWN;\nraise EV_SYST_CAR_NOT_PASSED;\nraise EV_SYST_TICKET_NOT_TAKEN;\nraise EV_SYST_BUTTON_NOT_PRESSED;\nraise EV_SYST_NO_CAR_DETECTED"
              }
            },
            "position": {
              "distance": 0.22986503027600388,
              "offset": 55.16973551356649,
              "angle": 0
            }
          },
          {
            "attrs": {
              "label": {
                "text": "1"
              }
            }
          }
        ],
        "id": "2e6d601a-3b9a-4de3-b12e-ec48b90e0966",
        "z": 121,
        "vertices": [
          {
            "x": 695,
            "y": 969
          }
        ],
        "marker": [
          "Could not find declaration of tick"
        ],
        "parent": "8dc46e1b-3aea-46ca-b984-605bf8ebf3b1",
        "attrs": {}
      }
    ]
  },
  "genModel": {
    "generator": {
      "schemaKey": "yakindu::c",
      "LicenseHeader": {
        "licenseText": ""
      },
      "FunctionInlining": {
        "inlineReactions": false,
        "inlineEntryActions": false,
        "inlineExitActions": false,
        "inlineEnterSequences": false,
        "inlineExitSequences": false,
        "inlineChoices": false,
        "inlineEnterRegion": false,
        "inlineExitRegion": false,
        "inlineEntries": false
      },
      "OutEventAPI": {
        "observables": false,
        "getters": false
      },
      "IdentifierSettings": {
        "moduleName": "MyFirstStatechart",
        "statemachinePrefix": "myFirstStatechart",
        "separator": "_",
        "headerFilenameExtension": "h",
        "sourceFilenameExtension": "c"
      },
      "Tracing": {
        "enterState": false,
        "exitState": false,
        "generic": false
      },
      "Includes": {
        "useRelativePaths": false
      },
      "GeneratorOptions": {
        "userAllocatedQueue": false,
        "metaSource": false
      },
      "GeneralFeatures": {
        "timerService": false
      }
    }
  }
}