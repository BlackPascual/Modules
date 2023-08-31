import pygame
from pygame.locals import*
from OpenGL.GL import*
from OpenGL.GLU import*

pygame.init()

display = (800,600)
pygame.display.set_mode(display, DOUBLEBUF|OPENGL)
pygame.display.set_caption("05 Performance Task 1/Pre-final Exam - ARG_Lonzanida")
gluPerspective(45, (display[0]/display[1]),0.1, 50.0)
glTranslatef(0,0,-5)

triggerRotation = True


def Draw():
    glBegin(GL_TRIANGLES)

    glVertex3f(-1,1,1), #4
    glVertex3f(1,1,1), #0
    glVertex3f(1,1,-1), #1
    glVertex3f(-1,1,1), #4
    glVertex3f(-1,1,-1),#7
    glVertex3f(1,1,-1), #1

    glVertex3f(1,1,1), #0
    glVertex3f(1,1,-1), #1
    glVertex3f(1,-1,-1),#2
    glVertex3f(1,1,1), #0
    glVertex3f(1,-1,1), #3
    glVertex3f(1,-1,-1),#2

    glVertex3f(-1,1,1), #4
    glVertex3f(1,1,1), #0
    glVertex3f(1,-1,1),#3
    glVertex3f(-1,1,1), #4
    glVertex3f(-1,-1,1), #6
    glVertex3f(1,-1,1),#3

    glVertex3f(-1,-1,1), #6
    glVertex3f(-1,-1,-1), #5
    glVertex3f(1,-1,-1),#2
    glVertex3f(-1,-1,1), #6
    glVertex3f(1,-1,1), #3
    glVertex3f(1,-1,-1),#2

    glVertex3f(-1,-1,-1), #5
    glVertex3f(-1,1,-1),#7
    glVertex3f(1,1,-1), #1
    glVertex3f(-1,-1,-1), #5
    glVertex3f(1,-1,-1),#2
    glVertex3f(1,1,-1), #1

    glVertex3f(-1,-1,1), #6
    glVertex3f(-1,-1,-1), #5
    glVertex3f(-1,1,-1),#7
    glVertex3f(-1,-1,1), #6
    glVertex3f(-1,1,1), #4
    glVertex3f(-1,1,-1),#7

    glEnd()

def draw_object():

    glPushMatrix()
    glScalef(1, 1, 1)
    glColor3f(1,1,0)
    glTranslatef(0,0,0)
    Draw()
    glPopMatrix()
    
    glPushMatrix()
    glScalef(1, 1, 1)
    glColor3f(1,0,0)
    glTranslatef(-2,0,0)
    Draw()
    glPopMatrix()
    
    glPushMatrix()
    glScalef(1, 1, 1)
    glColor3f(0,1,0)
    glTranslatef(-4,0,0)
    Draw()
    glPopMatrix()
    
    glPushMatrix()
    glScalef(1, 1, 1)
    glColor3f(0,0,1)
    glTranslatef(-6,0,0)
    Draw()
    glPopMatrix()
    
    glPushMatrix()
    glScalef(1, 1, 1)
    glColor3f(0,1,1)
    glTranslatef(-8,0,0)
    Draw()
    glPopMatrix()


while True:
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            pygame.quit()
            quit()
        if event.type == pygame.KEYDOWN:
            if event.key == pygame.K_s:
                glScalef(0.5,0.5,0.5)
            if event.key == pygame.K_w:
                glScalef(1.5,1.5,1.5)
            if event.key == pygame.K_a:
                glScalef(-1,0,0)
            if event.key == pygame.K_d:
                glScalef(-1,0,0)
    keys = pygame.key.get_pressed()
    glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
    if keys[K_UP]:
        glRotatef(1,1,0,0)
    if keys[K_DOWN]:
        glRotatef(1,0,1,0)
    draw_object()
    pygame.display.flip()
    pygame.time.wait(10)


