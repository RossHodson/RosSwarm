# RosSwarm
Hopefully this confused documentation is helpful, Crazyswarm2 is very confusing


# HOW TO CONFIGURE EACH CRAZYFLIE
    Use this for adding a new crazyflie to the swarm, or looking at internal parameters

    Use the Bitcraze Crazyflie Client
        Location: RosSwarm/crazyflie-clients-python
        (Sometimes python wont recognize the modules.packages, just reclone from GIT)
        (^ also could be a sourcing issue idk)

        git clone https://github.com/bitcraze/crazyflie-clients-python

        python3 bin/cfclient

    Uploading New Parameters / Changing Address
        Plug in crazyradio
        Scan to connect to 1 crazyflie (DONT HAVE OTHERS ON (messes up radio connection))
        Upload new info
        Restart Crazyflie
        Rescan and connect to make sure changes worked


# HOW TO TELEOPERATE CRAZYFLIES
    (Im still a bit confused on this one myself)

    Option 1: Bitcraze Client Xbox Control

    Plug in xbox controller
        sudo rmxpad
        sudo xboxdrv
    HOLD DOWN RIGHT TRIGGER (it defaults to 100% throttle if you don't)

    

    Option 2: Use xboxFly node with ros2    #DOESNT WORK VERY WELL#
    
    Plug in xbox controller
        sudo rmxpad
        sudo xboxdrv
    Launch the xboxFly node (talks between controller and vel_mux)
        ros2 run crazyflie_examples xboxFly
    Launch the server to connect crazyflie
        ros2 launch crazyflie_examples keyboard_velmux_launch.py ros2 node 
    

    Option 3: Use Crazyswarm2 built in teleop with controller
    (Haven't figured out how to do that yet)
        Involves changing teleop.yaml
        Maybe involves different server in /crazyflie


    Option 4: Use Crazyswarm2 built in teleop with keyboard

    Launch the server
        ros2 launch crazyflie_examples keyboard_velmux_launch.py
    Launch the teleop node
        ros2 run teleop_twist_keyboard teleop_twist_keyboard


#      
    





