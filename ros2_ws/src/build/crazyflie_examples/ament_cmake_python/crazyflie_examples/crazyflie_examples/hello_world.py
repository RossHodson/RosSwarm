"""Takeoff-hover-land for one CF. Useful to validate hardware config."""

from crazyflie_py import Crazyswarm


TAKEOFF_DURATION = 2.5
HOVER_DURATION = 20


def main():
    
    swarm = Crazyswarm()
    timeHelper = swarm.timeHelper
    cf = swarm.allcfs.crazyflies[0]

    cf.takeoff(targetHeight=1.9, duration=TAKEOFF_DURATION)
    
    timeHelper.sleep(TAKEOFF_DURATION)
    #cf.land(targetHeight=0.04, duration=2.5)
    #timeHelper.sleep(TAKEOFF_DURATION)
    
    
    cf.goTo([0.5,0.0,0.0], yaw=0.0, duration=1.0, relative=True, groupMask=0)
    timeHelper.sleep(1)
    cf.goTo([0.0,0.5,0.0], yaw=0.0, duration=1.0, relative=True, groupMask=0)
    timeHelper.sleep(1)
    cf.goTo([-0.8,0.0,0.0], yaw=0.0, duration=1.0, relative=True, groupMask=0)
    timeHelper.sleep(1)
    cf.goTo([-0.8,0.0,0.0], yaw=0.0, duration=1.0, relative=True, groupMask=0)
   # timeHelper.sleep(2)
   # cf.goTo([-1.0,0.0,0.0], yaw=0.0, duration=2.0, relative=True, groupMask=0)
    #timeHelper.sleep(3)
    
    
    #cf.land(targetHeight=0.04, duration=2.5)


if __name__ == '__main__':
    main()
