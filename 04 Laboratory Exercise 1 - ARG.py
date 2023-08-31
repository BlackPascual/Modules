import pygame
from pygame.locals import*
from OpenGL.GL import*
from OpenGL.GLU import*

pygame.init()

display = (800,600)
pygame.display.set_mode(display, DOUBLEBUF|OPENGL)
pygame.display.set_caption("Lab 04 BSIT704_Lonzanida")
glEnable(GL_DEPTH_TEST)
gluPerspective(45, (display[0]/display[1]),0.1, 50.0)
glTranslatef(0,0,-5)


def Draw():
    glBegin(GL_TRIANGLES)
    
    glColor3f(1,0,0), #RED
    glVertex3f(-1,1,1), #4
    glVertex3f(1,1,1),#0
    glVertex3f(1,1,-1),#1
    glVertex3f(-1,1,1), #4
    glVertex3f(-1,1,-1), #7
    glVertex3f(1,1,-1),#1

    glColor3f(1,0.5,0) #ORANGE
    glVertex3f(1,1,1),#0
    glVertex3f(1,-1,1),#3
    glVertex3f(1,-1,-1),#2
    glVertex3f(1,1,1),#0
    glVertex3f(1,1,-1),#1
    glVertex3f(1,-1,-1),#2

    glColor3f(1,1,0) #YELLOW
    glVertex3f(-1,-1,1),#6
    glVertex3f(1,-1,1),#3
    glVertex3f(1,-1,-1),#2
    glVertex3f(-1,-1,1),#6
    glVertex3f(-1,-1,-1),#5
    glVertex3f(1,-1,-1),#2
    
    glColor3f(0,1,0) #GREEN
    glVertex3f(-1,1,1), #4
    glVertex3f(-1,-1,1),#6
    glVertex3f(-1,-1,-1),#5
    glVertex3f(-1,1,1), #4
    glVertex3f(-1,1,-1), #7
    glVertex3f(-1,-1,-1),#5

    glColor3f(0,0,1) #BLUE
    glVertex3f(-1,1,-1), #7
    glVertex3f(-1,-1,-1),#5
    glVertex3f(1,-1,-1),#2
    glVertex3f(-1,1,-1), #7
    glVertex3f(1,1,-1),#1
    glVertex3f(1,-1,-1),#2

    glColor3f(0.5,0,1) #VIOLET
    glVertex3f(-1,1,1), #4
    glVertex3f(-1,-1,1),#6
    glVertex3f(1,-1,1),#3
    glVertex3f(-1,1,1), #4
    glVertex3f(1,1,1),#0
    glVertex3f(1,-1,1),#3
    
    glEnd()
    



while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            quit()
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
    glRotatef(1,1,1,1)
    Draw()
    pygame.display.flip()
    pygame.time.wait(10)
