Here is the documentation related to the implementation of the therbligs code.

## mico_client.py:
  The scripts creates a local socket get connected to the mico master, sends over a json-format therbigs for execution.
  
## mico_parser.py:
  The class is used by the mico master parse the json-format message sent from the front-end or mico_client.
  
## mico_planner.py:
  The mico planner is the class used to interact with the mico arm. 
  The list of operations includes:
  1. Transport_Empty()
  2. Grasp()
  3. Transport_Loaded()
  4. Transport_Home()
  5. Read_Position()

