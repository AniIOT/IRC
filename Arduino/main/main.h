#include <Stepper.h>

/*pin declarations*/
//black left  (A ) - A1
//green left  (A') - 7
//red left    (B ) - A0
//blue left   (B') - A2

//black right (A ) - 8
//green right (A') - 5
//red right   (B ) - 6
//blue right  (B') - 9

Stepper sLeft(200,A0,A2,A1,7);
Stepper sRight(200,8,5,6,9);

const int cs[4]   = {4,3,A4,A3};                      //colour sensor select pins [s0,s1,s2,s3]
const int co      = A5;                               //colour sensor output
const int ce      = 2;                                //colour sensor enable
const int sig     = 13;                               //signal to camera module
const int wsen[3] = {12,11,10};                       //wall sensors 0,1,2 => right, front, left

/*function declaration*/
char choose(void);
void decodes(int x,int y,int fields[][4]);
void forward(void);
int iswall(int r, int f, int l, int x, int y, int a);
int reqang(int x,int y,int a,int x1,int y1);
void turnback(void);
void turnleft(void);
void turnright(void);
void wall(int r, int f, int l, int x, int y, int a,int visited[][4]);

/*variable declarations*/
int visited[9][4];                                //visited cells matrix
int rw = 0, fw = 0, lw = 0;                       //output of wall function
int r = digitalRead(wsen[0]);                     //rightrange=0 ie wall on right
int f = digitalRead(wsen[1]);                     //frontrange=0 ie wall on front
int l = digitalRead(wsen[2]);                     //leftrange=0 ie wall on left
int x = 0;                                        //x-position
int y = 0;                                        //y-position
int a = 90;                                       //angle
char dir;                                         //direction to go to
int fields[9][4];                                 // detected walls matrix
int walld[4] = {0,0,0,0};                         //walls detected [N,S,E,W]
