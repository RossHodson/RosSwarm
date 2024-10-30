from crazyflie_py import Crazyswarm
import numpy as np

SWARM_SIZE = 2

def main():
    # Set up the swarm
    swarm = Crazyswarm()
    timeHelper = swarm.timeHelper
    allCrazyflies = swarm.allcfs
    ids = []
    for id in range(SWARM_SIZE):   # Give each drone their id (can be preset instead of loop)
        ids[id] = id
    #Hardcode in initial positions
    initialPositions = [np.array([1.0, 1.0, 1.0]),np.array([0.0, 0.0, 0.0])]

    #Start movement algorithm
    goToInitialPositions(allCrazyflies,timeHelper,ids,initialPositions)

def goToInitialPositions(allCrazyflies,timeHelper):
    #Editable parameters (experiment)
    Height1 = 0.4;


    #Initial takeoff
    allCrazyflies.takeoff(targetHeight=Height1, duration=3.0)
    timeHelper.sleep(3.5)

    # go to initial positions
    for drone in allCrazyflies:
        # how do you reference them all in this for loop?
    allCrazyflies.crazyfliesById[Id1].goTo(Pos1 + np.array([0, 0, Height1]), 0, 3.0)
    allCrazyflies.crazyfliesById[Id2].goTo(Pos2 + np.array([0, 0, Height2]), 0, 3.0)
    timeHelper.sleep(3.5)
