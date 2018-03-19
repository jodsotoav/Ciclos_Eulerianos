boolean flag=true;
int xinicial;
int yinicial;
boolean menu=true;
boolean jds= true;
boolean jd=true;
boolean jdsa=true;
boolean nivel1 = false;
boolean nivel2= false;
boolean nivel3=false;
boolean nivel4=false;
boolean ganar1=true;
boolean ganar2=true;
boolean ganar3=true;
boolean M1=true;
int [][] reiniciar_matriz(int a [][] ) {    
  for (int i=0; i<a.length; i++) {
    for (int j=0; j<a[0].length; j++) {//funcion que reinicia la matrices camino a su condicion inicial
      a[i][j]=0;
    }
  }
  return  a;
}

int[] posX={50, 450, 50, 450, 250};
int[] posY={50, 50, 450, 450, 250};
int[] posX2={50, 250, 450, 50, 250, 450, 250, 200, 300, 250};
int[] posY2={50, 50, 50, 450, 450, 450, 200, 250, 250, 300};
int[] posX3={250, 150, 350, 120, 370, 250};
int[] posY3={50, 150, 150, 300, 300, 450};
int[][] conexiones={{0, 1, 1, 0, 1 }, 
  {1, 0, 0, 1, 1 }, 
  {1, 0, 0, 1, 0 }, 
  {0, 1, 1, 0, 0 }, 
  {1, 1, 0, 0, 0 }, 
};
int[][] camino={{0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0 }, 
}; 
int[][] conexiones2={{0, 1, 0, 1, 0, 0, 0, 0, 0, 0, }, 
  {1, 0, 1, 0, 0, 0, 1, 0, 0, 0 }, 
  {0, 1, 0, 0, 0, 1, 0, 0, 0, 0 }, 
  {1, 0, 0, 0, 1, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 1, 0, 1, 0, 0, 0, 1 }, 
  {0, 0, 1, 0, 1, 0, 0, 0, 0, 0 }, 
  {0, 1, 0, 0, 0, 0, 0, 1, 1, 1 }, 
  {0, 0, 0, 0, 0, 0, 1, 0, 0, 1 }, 
  {0, 0, 0, 0, 0, 0, 1, 0, 0, 1 }, 
  {0, 0, 0, 0, 1, 0, 1, 1, 1, 0 }
};
int[][] camino2={{0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0, 0, 0, 0, 0 }, 
};
int[][] conexiones3={{0, 1, 1, 0, 0, 1 }, 
  {1, 0, 1, 1, 0, 1 }, 
  {1, 1, 0, 0, 1, 1 }, 
  {0, 1, 0, 0, 1, 0 }, 
  {0, 0, 1, 1, 0, 0 }, 
  {1, 1, 1, 0, 0, 0 }, 
};
int[][] camino3={{0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0 }, 
  {0, 0, 0, 0, 0, 0 }, 
};


void setup() {
  size(600, 600);
  background(0);
}
void draw() {
  if (menu) {
    if (M1) {
      background(0);
    }

    textAlign(CENTER);
    textSize(40);
    text("MENÚ", 250, 50);
    text("Nivel 1", 70, 200);
    text("Nivel 2", 70, 250);
    text("Nivel 3", 70, 300);
  }
  if (nivel4) { 
    background(0);
  }   
  if (nivel3) {
    if (nivel3==jdsa) {
      jdsa=false;

      background(0);
    }
    stroke(500, 500, 0);
    strokeWeight(3);
    line(posX3[0], posY3[0], posX3[1], posY3[1]);
    line(posX3[0], posY3[0], posX3[2], posY3[2]);
    line(posX3[0], posY3[0], posX3[5], posY3[5]);
    line(posX3[1], posY3[1], posX3[2], posY3[2]);
    line(posX3[1], posY3[1], posX3[5], posY3[5]);
    line(posX3[1], posY3[1], posX3[3], posY3[3]);
    line(posX3[2], posY3[2], posX3[4], posY3[4]);
    line(posX3[2], posY3[2], posX3[5], posY3[5]);
    line(posX3[3], posY3[3], posX3[4], posY3[4]); 
    ellipse(250, 50, 30, 30);
    ellipse(150, 150, 30, 30);
    ellipse(350, 150, 30, 30);
    ellipse(370, 300, 30, 30);
    ellipse(120, 300, 30, 30);
    ellipse(250, 450, 30, 30);
    text("REINICIAR", 100, 550);
  }

  if (nivel1) {
    if (nivel1==jd) {
      jd=false;
      background(0);
    }

    stroke(500, 500, 0);
    strokeWeight(3);
    line(50, 50, 50, 450);
    line(50, 450, 450, 450);
    line(450, 450, 450, 50);
    line(450, 50, 250, 50);
    line(50, 50, 250, 50);
    line(50, 50, 250, 250);
    line(450, 50, 250, 250);
    stroke(10000, 100000, 100000);
    ellipse(50, 50, 30, 30);
    ellipse(50, 450, 30, 30);
    ellipse(450, 50, 30, 30);
    ellipse(450, 450, 30, 30);
    ellipse(250, 250, 30, 30);
    text("REINICIAR", 100, 550);
  }
  if (nivel2) {
    if (nivel2==jds) {
      jds=false;
      background(0);
    }

    stroke(500, 500, 0);
    strokeWeight(3);
    line(50, 50, 50, 450);
    line(50, 450, 450, 450);
    line(450, 450, 450, 50);
    line(450, 50, 250, 50);
    line(50, 50, 250, 50);
    line(250, 50, 250, 200);
    line(250, 200, 200, 250);
    line(200, 250, 250, 300);
    line(250, 300, 300, 250);
    line(300, 250, 250, 200);
    line(250, 200, 250, 450);
    stroke(10000, 100000, 100000);
    ellipse(50, 50, 30, 30);
    ellipse(50, 450, 30, 30);
    ellipse(250, 50, 30, 30);
    ellipse(250, 450, 30, 30);
    ellipse(450, 50, 30, 30);
    ellipse(450, 450, 30, 30);
    ellipse(250, 200, 30, 30);
    ellipse(250, 300, 30, 30);
    ellipse(200, 250, 30, 30);
    ellipse(300, 250, 30, 30);
    text("REINICIAR", 100, 550);
  }
//permiten evaluar cada vez que se haga click el estado de la matriz
  for (int i=0; i<5 ; i++) {
    for (int j=0; j<5 ; j++) {
      if (conexiones [i][j] != camino [i][j]  ) {
        ganar1=false;
      }
    }
  }
  for (int i=0; i<10 ; i++) {
    for (int j=0; j<10 ; j++) {
      if (conexiones2 [i][j] != camino2 [i][j]  ) {
        ganar2=false;
      }
    }
  }
  for (int i=0; i<6 ; i++) {
    for (int j=0; j<6 ; j++) {
      if (conexiones3 [i][j] != camino3 [i][j]  ) {
        ganar3=false;
      }
    }
  }
// se ejecutan cuando la matriz caminos se ha verificado que es  igual a la matriz conexiones
  if (ganar1) {
    ganar1=false;
    menu=false;
    flag=true;
    nivel1=false;
    nivel2=true;
    reiniciar_matriz(camino);
  }
  if (ganar2) {
    ganar2=false;
    nivel2=false;
    flag=true;
    nivel3=true;
    reiniciar_matriz(camino2);
  }
  if (ganar3) {
    ganar3=false;
    nivel4=true;
    flag=true;
    nivel3=false;
    reiniciar_matriz(camino3);
  }
}
void mousePressed() {
  stroke(500, 500, 0);
  strokeWeight(10);

// perimite dar el clik inicial en cualquier nodo
  if (flag) {
    flag=false;

    if (nivel1) {

      if (mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25) {
        xinicial = posX[0];
        yinicial= posY[0];
      }
      if (mouseX>425 & mouseX<475 & mouseY<75 & mouseY>25) {
        xinicial =posX [1];
        yinicial= posY [1];
      }

      if (mouseX>25 & mouseX<75 & mouseY<475 & mouseY>425) {
        xinicial =posX [2];
        yinicial=posY [2];
      }

      if (mouseX>425 & mouseX<475 & mouseY<475 & mouseY>425) {
        xinicial =posX [3];
        yinicial=posY [3];
      }
      if (mouseX>225 & mouseX<275 & mouseY<275 & mouseY>225) {
        xinicial = posX [4];
        yinicial= posY [4];
      }
    }


    if (nivel2) {
      if (mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25) {
        xinicial = posX2[0];
        yinicial= posY2[0];
      }
      if (mouseX>225 & mouseX<275 & mouseY<75 & mouseY>25) {
        xinicial =posX2 [1];
        yinicial= posY2 [1];
      }

      if (mouseX>425 & mouseX<475 & mouseY<475 & mouseY>425) {
        xinicial =posX2 [5];
        yinicial=posY2 [5];
      }

      if (mouseX>425 & mouseX<475 & mouseY<75 & mouseY>25) {
        xinicial =posX2 [2];
        yinicial=posY2 [2];
      }
      if (mouseX>25 & mouseX<75 & mouseY<475 & mouseY>425) {
        xinicial =posX2 [3];
        yinicial=posY2 [3];
      }
      if (mouseX>225 & mouseX<275 & mouseY<475 & mouseY>425) {
        xinicial =posX2 [4];
        yinicial=posY2 [4];
      }
      if (mouseX>425 & mouseX<475 & mouseY<475 & mouseY>425) {
        xinicial =posX2 [5];
        yinicial=posY2 [5];
      }
      if (mouseX>225 & mouseX<275 & mouseY<225 & mouseY>175) {
        xinicial =posX2 [6];
        yinicial=posY2 [6];
      }
      if (mouseX>175 & mouseX<225 & mouseY<275 & mouseY>225) {
        xinicial =posX2 [7];
        yinicial=posY2 [7];
      }
      if (mouseX>275 & mouseX<325 & mouseY<275 & mouseY>225) {
        xinicial =posX2 [8];
        yinicial=posY2 [8];
      }
      if (mouseX>225 & mouseX<275 & mouseY<325 & mouseY>275) {
        xinicial =posX2 [9];
        yinicial=posY2 [9];
      }
    }
    if (nivel3) {

      if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
        xinicial = posX3[0];
        yinicial= posY3[0];
      }
      if (mouseX>125 & mouseX<175 & mouseY<175 & mouseY>125) {
        xinicial =posX3 [1];
        yinicial= posY3 [1];
      }

      if (mouseX>325 & mouseX<375 & mouseY<175 & mouseY>125) {
        xinicial =posX3 [2];
        yinicial=posY3 [2];
      }

      if (mouseX>95 & mouseX<145 & mouseY<325 & mouseY>275) {
        xinicial =posX3 [3];
        yinicial=posY3 [3];
      }
      if (mouseX>345 & mouseX<395 & mouseY<325 & mouseY>275) {
        xinicial = posX3 [4];
        yinicial= posY3 [4];
      }
      if (mouseX>225 & mouseX<275 & mouseY<475 & mouseY>425) {
        xinicial = posX3 [5];
        yinicial= posY3 [5];
      }
    }
  } else {//codiciones para ir de un nodo a otro cada vez que se da click actualiza la matriz
    if (nivel1) {


      if (xinicial==250 & yinicial==250) {

        if (mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25) {
          if (conexiones [4][0]==1 ) {
            if (camino  [4][0]==0 & camino  [4][0]==0) {
              line(xinicial, yinicial, 50, 50);
              xinicial=50;
              yinicial=50;
              camino[4][0]++;
              camino[0][4]++;
              ganar1=true;
            }
          }
        }

        if (mouseX<475 & mouseX>425 & mouseY<75 & mouseY>25) {
          if (conexiones [4][1]==1) {
            if (camino  [4][1]==0 & camino  [1][4]==0) {
              line(xinicial, yinicial, 450, 50);
              xinicial=450;
              yinicial=50;
              camino [4][1]++;
              camino [1][4]++;
              ganar1=true;
            }
          }
        }
      }


      if (xinicial==50 && yinicial==50) {
        if (mouseX<475 & mouseX>425 & mouseY<75 & mouseY>25) {
          if (conexiones [0][1]==1) {
            if (camino  [0][1]==0 & camino  [1][0]==0) {

              line(xinicial, yinicial, 450, 50);
              xinicial=450;
              yinicial=50;
              camino[0][1]++;
              camino [1][0]++;
              ganar1=true;
            }
          }
        }

        if (mouseX<75 & mouseX>25 & mouseY<475 & mouseY>225) {
          line(xinicial, yinicial, 50, 450);
          if (conexiones [0][2]==1) {
            if (camino  [0][2]==0 & camino  [2][0]==0) {
              xinicial=50;
              yinicial=450;
              camino [0][2]++;
              camino [2][0]++;
              ganar1=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<275 & mouseY>225) {
          if (conexiones [0][4]==1) {
            if (camino  [0][4]==0 & camino  [4][0]==0) {
              line(xinicial, yinicial, 250, 250);
              xinicial=250;
              yinicial=250;
              camino [0][4]++;
              camino [4][0]++;
              ganar1=true;
            }
          }
        }
      }

      if (xinicial==450 && yinicial==50) {
        if (mouseX<475 & mouseX>425 & mouseY<475 & mouseY>425) {
          if (conexiones [1][3]==1) {
            if (camino  [1][3]==0 & camino  [3][1]==0) {
              line(xinicial, yinicial, 450, 450);
              xinicial=450;
              yinicial=450;
              camino[1][3]++;
              camino[3][1]++;
              ganar1=true;
            }
          }
        }
        if (mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25) {
          if (conexiones [1][0]==1) {
            if (camino  [1][0]==0 & camino  [0][1]==0) {
              line(xinicial, yinicial, 50, 50);
              xinicial=50;
              yinicial=50;
              camino  [1][0]++;
              camino  [0][1]++;
              ganar1=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<275 & mouseY>225) {
          if (conexiones [1][4]==1) {
            if (camino  [1][4]==0 & camino  [4][1]==0) {
              line(xinicial, yinicial, 250, 250);
              xinicial=250;
              yinicial=250;
              camino  [1][4]++;
              camino  [4][1]++;
              ganar1=true;
            }
          }
        }
      }
      if (xinicial==50 && yinicial==450) {
        if (mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25) {
          if (conexiones [2][0]==1) {
            if (camino  [2][0]==0 & camino  [0][2]==0) {
              line(xinicial, yinicial, 50, 50);
              xinicial=50;
              yinicial=50;
              camino  [2][0]++;
              camino  [0][2]++;
              ganar1=true;
            }
          }
        }
        if (mouseX<475 & mouseX>425 & mouseY<475 & mouseY>425) {
          if (conexiones [2][3]==1) {
            if (camino  [2][3]==0 & camino  [3][2]==0) {
              line(xinicial, yinicial, 450, 450);
              xinicial=450;
              yinicial=450;
              camino  [2][3]++;
              camino  [3][2]++;
              ganar1=true;
            }
          }
        }
      }
      if (xinicial==450 && yinicial==450) {
        if (mouseX<475 & mouseX>425 & mouseY<75 & mouseY>25) {
          if (conexiones [3][1]==1) {
            if (camino  [3][1]==0 & camino  [1][3]==0) {
              line(xinicial, yinicial, 450, 50);
              xinicial=450;
              yinicial=50;
              camino  [3][1]++;
              camino  [1][3]++;
              ganar1=true;
            }
          }
        }

        if (mouseX<75 & mouseX>25 & mouseY<475 & mouseY>425) {
          if (conexiones [3][2]==1) {
            if (camino  [2][3]==0 & camino  [3][2]==0) {
              line(xinicial, yinicial, 50, 450);
              xinicial=50;
              yinicial=450;
              camino  [2][3]++;
              camino  [3][2]++;
              ganar1=true;
            }
          }
        }
      }
    }
    if (nivel2) {
      if (xinicial==50 && yinicial==50) {
        if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
          if (conexiones2 [0][1]==1) {
            if (camino2  [0][1]==0 & camino2  [1][0]==0) {

              line(xinicial, yinicial, 250, 50);
              xinicial=250;
              yinicial=50;
              camino2[0][1]++;
              camino2[1][0]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<75 & mouseX>25 & mouseY<475 & mouseY>225) {
          if (conexiones2 [0][3]==1) {
            if (camino2  [0][3]==0 & camino2  [3][0]==0) {
              line(xinicial, yinicial, 50, 450);
              xinicial=50;
              yinicial=450;
              camino2 [0][3]++;
              camino2 [3][0]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==50 && yinicial==450) {
        if (mouseX<275 & mouseX>225 & mouseY<475 & mouseY>425) {
          if (conexiones2 [3][4]==1) {
            if (camino2  [3][4]==0 & camino2  [4][3]==0) {

              line(xinicial, yinicial, 250, 450);
              xinicial=250;
              yinicial=450;
              camino2[3][4]++;
              camino2[4][3]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25) {

          if (conexiones2 [0][3]==1) {
            if (camino2  [0][3]==0 & camino2  [3][0]==0) {
              line(xinicial, yinicial, 50, 50);
              xinicial=50;
              yinicial=50;
              camino2 [0][3]++;
              camino2 [3][0]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==250 && yinicial==450) {
        if (mouseX<75 & mouseX>25 & mouseY<475 & mouseY>425) {
          if (conexiones2 [3][4]==1) {
            if (camino2  [3][4]==0 & camino2  [4][3]==0) {

              line(xinicial, yinicial, 50, 450);
              xinicial=50;
              yinicial=450;
              camino2[3][4]++;
              camino2[4][3]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<475 & mouseX>425 & mouseY<475 & mouseY>425) {

          if (conexiones2 [4][5]==1) {
            if (camino2  [4][5]==0 & camino2  [5][4]==0) {
              line(xinicial, yinicial, 450, 450);
              xinicial=450;
              yinicial=450;
              camino2 [4][5]++;
              camino2 [5][4]++;
              ganar2=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<325 & mouseY>275) {

          if (conexiones2 [4][9]==1) {
            if (camino2  [4][9]==0 & camino2  [9][4]==0) {
              line(xinicial, yinicial, 250, 300);
              xinicial=250;
              yinicial=300;
              camino2 [4][9]++;
              camino2 [9][4]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==450 && yinicial==450) {
        if (mouseX<275 & mouseX>225 & mouseY<475 & mouseY>425) {
          if (conexiones2 [5][4]==1) {
            if (camino2  [5][4]==0 & camino2  [4][5]==0) {

              line(xinicial, yinicial, 250, 450);
              xinicial=250;
              yinicial=450;
              camino2[5][4]++;
              camino2[4][5]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<475 & mouseX>425 & mouseY<75 & mouseY>25) {

          if (conexiones2 [2][5]==1) {
            if (camino2  [5][2]==0 & camino2  [2][5]==0) {
              line(xinicial, yinicial, 450, 50);
              xinicial=450;
              yinicial=50;
              camino2 [2][5]++;
              camino2 [5][2]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==450 && yinicial==50) {
        if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
          if (conexiones2 [2][1]==1) {
            if (camino2  [1][2]==0 & camino2  [2][1]==0) {

              line(xinicial, yinicial, 250, 50);
              xinicial=250;
              yinicial=50;
              camino2[2][1]++;
              camino2[1][2]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<475 & mouseX>425 & mouseY<475 & mouseY>425) {

          if (conexiones2 [2][5]==1) {
            if (camino2  [5][2]==0 & camino2  [2][5]==0) {
              line(xinicial, yinicial, 450, 450);
              xinicial=450;
              yinicial=450;
              camino2 [2][5]++;
              camino2 [5][2]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==250 && yinicial==50) {
        if (mouseX<75 & mouseX>25 & mouseY<75 & mouseY>25) {
          if (conexiones2 [0][1]==1) {
            if (camino2  [1][0]==0 & camino2  [0][1]==0) {

              line(xinicial, yinicial, 50, 50);
              xinicial=50;
              yinicial=50;
              camino2[0][1]++;
              camino2[1][0]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<475 & mouseX>425 & mouseY<75 & mouseY>25) {

          if (conexiones2 [1][2]==1) {
            if (camino2  [2][1]==0 & camino2  [1][2]==0) {
              line(xinicial, yinicial, 450, 50);
              xinicial=450;
              yinicial=50;
              camino2 [1][2]++;
              camino2 [2][1]++;
              ganar2=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<225 & mouseY>175) {

          if (conexiones2 [1][6]==1) {
            if (camino2  [6][1]==0 & camino2  [1][6]==0) {
              line(xinicial, yinicial, 250, 200);
              xinicial=250;
              yinicial=200;
              camino2 [1][6]++;
              camino2 [6][1]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==250 && yinicial==200) {
        if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
          if (conexiones2 [6][1]==1) {
            if (camino2  [1][6]==0 & camino2  [6][1]==0) {

              line(xinicial, yinicial, 250, 50);
              xinicial=250;
              yinicial=50;
              camino2[6][1]++;
              camino2[1][6]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<225 & mouseX>175 & mouseY<275 & mouseY>225) {

          if (conexiones2 [6][7]==1) {
            if (camino2  [7][6]==0 & camino2  [6][7]==0) {
              line(xinicial, yinicial, 200, 250);
              xinicial=200;
              yinicial=250;
              camino2 [6][7]++;
              camino2 [7][6]++;
              ganar2=true;
            }
          }
        }
        if (mouseX<325 & mouseX>275 & mouseY<275 & mouseY>225) {

          if (conexiones2 [6][8]==1) {
            if (camino2  [8][6]==0 & camino2  [6][8]==0) {
              line(xinicial, yinicial, 300, 250);
              xinicial=300;
              yinicial=250;
              camino2 [6][8]++;
              camino2 [8][6]++;
              ganar2=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<325 & mouseY>275) {

          if (conexiones2 [6][9]==1) {
            if (camino2  [9][6]==0 & camino2  [6][9]==0) {
              line(xinicial, yinicial, 250, 300);
              xinicial=250;
              yinicial=300;
              camino2 [6][9]++;
              camino2 [9][6]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==200 && yinicial==250) {
        if (mouseX<275 & mouseX>225 & mouseY<225 & mouseY>175) {
          if (conexiones2 [6][7]==1) {
            if (camino2  [7][6]==0 & camino2  [6][7]==0) {

              line(xinicial, yinicial, 250, 200);
              xinicial=250;
              yinicial=200;
              camino2[6][7]++;
              camino2[7][6]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<275 & mouseX>225 & mouseY<325 & mouseY>275) {

          if (conexiones2 [7][9]==1) {
            if (camino2  [7][9]==0 & camino2  [9][7]==0) {
              line(xinicial, yinicial, 250, 300);
              xinicial=250;
              yinicial=300;
              camino2 [7][9]++;
              camino2 [9][7]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==300 && yinicial==250) {
        if (mouseX<275 & mouseX>225 & mouseY<225 & mouseY>175) {

          if (conexiones2 [8][6]==1) {
            if (camino2  [8][6]==0 & camino2  [6][8]==0) {
              line(xinicial, yinicial, 250, 200);
              xinicial=250;
              yinicial=200;
              camino2 [8][6]++;
              camino2 [6][8]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<275 & mouseX>225 & mouseY<325 & mouseY>275) {

          if (conexiones2 [8][9]==1) {
            if (camino2  [8][9]==0 & camino2  [9][8]==0) {
              line(xinicial, yinicial, 250, 300);
              xinicial=250;
              yinicial=300;
              camino2 [8][9]++;
              camino2 [9][8]++;
              ganar2=true;
            }
          }
        }
      }
      if (xinicial==250 && yinicial==300) {
        if (mouseX<275 & mouseX>225 & mouseY<475 & mouseY>425) {

          if (conexiones2 [9][4]==1) {
            if (camino2  [4][9]==0 & camino2  [9][4]==0) {
              line(xinicial, yinicial, 250, 450);
              xinicial=250;
              yinicial=450;
              camino2 [9][4]++;
              camino2 [4][9]++;
              ganar2=true;
            }
          }
        }

        if (mouseX<325 & mouseX>275 & mouseY<275 & mouseY>225) {

          if (conexiones2 [8][9]==1) {
            if (camino2  [8][9]==0 & camino2  [9][8]==0) {
              line(xinicial, yinicial, 300, 250);
              xinicial=300;
              yinicial=250;
              camino2 [8][9]++;
              camino2 [9][8]++;
              ganar2=true;
            }
          }
        }
        if (mouseX<225 & mouseX>175 & mouseY<275 & mouseY>225) {

          if (conexiones2 [7][9]==1) {
            if (camino2  [7][9]==0 & camino2  [9][7]==0) {
              line(xinicial, yinicial, 200, 250);
              xinicial=200;
              yinicial=250;
              camino2 [7][9]++;
              camino2 [9][7]++;
              ganar2=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<225 & mouseY>175) {
          if (conexiones2 [6][9]==1) {
            if (camino2  [6][9]==0 & camino2  [9][6]==0) {
              line(xinicial, yinicial, 250, 200);
              xinicial=250;
              yinicial=200;
              camino2 [6][9]++;
              camino2 [9][6]++;
              ganar2=true;
            }
          }
        }
      }
    }
    if (nivel3) {


      if (xinicial==posX3[0] & yinicial==posY3[0]) {

        if (mouseX<175 & mouseX>125 & mouseY<175 & mouseY>125) {
          if (conexiones3 [0][1]==1 ) {
            if (camino3  [0][1]==0 & camino3  [1][0]==0) {
              line(xinicial, yinicial, 150, 150);
              xinicial=150;
              yinicial=150;
              camino3[1][0]++;
              camino3[0][1]++;
              ganar3=true;
            }
          }
        }

        if (mouseX<375 & mouseX>325 & mouseY<175 & mouseY>125) {
          if (conexiones3 [0][2]==1) {
            if (camino3  [0][2]==0 & camino3  [2][0]==0) {
              line(xinicial, yinicial, 350, 150);
              xinicial=350;
              yinicial=150;
              camino3 [0][2]++;
              camino3 [2][0]++;
              ganar3=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<475 & mouseY>425) {
          if (conexiones3 [0][5]==1) {
            if (camino3  [0][5]==0 & camino3  [5][0]==0) {
              line(xinicial, yinicial, 250, 450);
              xinicial=250;
              yinicial=450;
              camino3 [0][5]++;
              camino3 [5][0]++;
              ganar3=true;
            }
          }
        }
      }
      if (xinicial==posX3[1] & yinicial==posY3[1]) {

        if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
          if (conexiones3 [1][0]==1 ) {
            if (camino3  [0][1]==0 & camino3  [1][0]==0) {
              line(xinicial, yinicial, 250, 50);
              xinicial=250;
              yinicial=50;
              camino3[1][0]++;
              camino3[0][1]++;
              ganar3=true;
            }
          }
        }

        if (mouseX<375 & mouseX>325 & mouseY<175 & mouseY>125) {
          if (conexiones3 [1][2]==1) {
            if (camino3  [1][2]==0 & camino3  [2][1]==0) {
              line(xinicial, yinicial, 350, 150);
              xinicial=350;
              yinicial=150;
              camino3 [1][2]++;
              camino3 [2][1]++;
              ganar3=true;
            }
          }
        }
        if (mouseX<145 & mouseX>95 & mouseY<325 & mouseY>275) {
          if (conexiones3 [1][3]==1) {
            if (camino3  [1][3]==0 & camino3  [3][1]==0) {
              line(xinicial, yinicial, 120, 300);
              xinicial=120;
              yinicial=300;
              camino3 [1][3]++;
              camino3 [3][1]++;
              ganar3=true;
            }
          }
        }
        if (mouseX<275 & mouseX>225 & mouseY<475 & mouseY>425) {
          if (conexiones3 [5][1]==1) {
            if (camino3  [5][1]==0 & camino3  [1][5]==0) {
              line(xinicial, yinicial, 250, 450);
              xinicial=250;
              yinicial=450;
              camino3 [5][1]++;
              camino3 [1][5]++;
              ganar3=true;
            }
          }
        }
      }
      if (xinicial==posX3[3] & yinicial==posY3[3]) {

        if (mouseX<175 & mouseX>125 & mouseY<175 & mouseY>125) {
          if (conexiones3 [3][1]==1 ) {
            if (camino3  [3][1]==0 & camino3  [1][3]==0) {
              line(xinicial, yinicial, 150, 150);
              xinicial=150;
              yinicial=150;
              camino3[1][3]++;
              camino3[3][1]++;
              ganar3=true;
            }
          }
        }

        if (mouseX<395 & mouseX>345 & mouseY<325 & mouseY>275) {
          if (conexiones3 [3][4]==1) {
            if (camino3  [4][3]==0 & camino3  [3][4]==0) {
              line(xinicial, yinicial, 370, 300);
              xinicial=370;
              yinicial=300;
              camino3 [3][4]++;
              camino3 [4][3]++;
              ganar3=true;
            }
          }
        }
      }
      if (xinicial==posX3[5] & yinicial==posY3[5]) {

        if (mouseX<175 & mouseX>125 & mouseY<175 & mouseY>125) {
          if (conexiones3 [5][1]==1 ) {
            if (camino3  [5][1]==0 & camino3  [5][3]==0) {
              line(xinicial, yinicial, 150, 150);
              xinicial=150;
              yinicial=150;
              camino3[1][5]++;
              camino3[5][1]++;
              ganar3=true;
            }
          }
        }

        if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
          if (conexiones3 [5][0]==1) {
            if (camino3  [5][0]==0 & camino3  [0][5]==0) {
              line(xinicial, yinicial, 250, 50);
              xinicial=250;
              yinicial=50;
              camino3 [5][0]++;
              camino3 [0][5]++;
              ganar3=true;
            }
          }
        }
        if (mouseX<375 & mouseX>325 & mouseY<175 & mouseY>125) {
          if (conexiones3 [5][2]==1) {
            if (camino3  [5][2]==0 & camino3  [2][5]==0) {
              line(xinicial, yinicial, 350, 150);
              xinicial=350;
              yinicial=150;
              camino3 [5][2]++;
              camino3 [2][5]++;
              ganar3=true;
            }
          }
        }
      }
      if (xinicial==posX3[4] & yinicial==posY3[4]) {

        if (mouseX<375 & mouseX>325 & mouseY<175 & mouseY>125) {
          if (conexiones3 [4][2]==1 ) {
            if (camino3  [4][2]==0 & camino3  [2][4]==0) {
              line(xinicial, yinicial, 350, 150);
              xinicial=350;
              yinicial=150;
              camino3[2][4]++;
              camino3[4][2]++;
              ganar3=true;
            }
          }
        }

        if (mouseX<145 & mouseX>95 & mouseY<325 & mouseY>275) {
          if (conexiones3 [3][4]==1) {
            if (camino3  [4][3]==0 & camino3  [3][4]==0) {
              line(xinicial, yinicial, 120, 300);
              xinicial=120;
              yinicial=300;
              camino3 [3][4]++;
              camino3 [4][3]++;
              ganar3=true;
            }
          }
        }
      }
      if (xinicial==posX3[5] & yinicial==posY3[5]) {

        if (mouseX<375 & mouseX>325 & mouseY<175 & mouseY>125) {
          if (conexiones3 [5][2]==1 ) {
            if (camino3  [5][2]==0 & camino3  [2][5]==0) {
              line(xinicial, yinicial, 350, 150);
              xinicial=350;
              yinicial=150;
              camino3[2][5]++;
              camino3[5][2]++;
              ganar3=true;
            }
          }
        }

        if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
          if (conexiones3 [5][0]==1) {
            if (camino3  [5][0]==0 & camino3  [0][5]==0) {
              line(xinicial, yinicial, 250, 50);
              xinicial=250;
              yinicial=50;
              camino3 [5][0]++;
              camino3 [0][5]++;
              ganar3=true;
            }
          }
        }
        if (mouseX<175 & mouseX>125 & mouseY<175 & mouseY>125) {
          if (conexiones3 [5][1]==1) {
            if (camino3  [5][1]==0 & camino3  [1][5]==0) {
              line(xinicial, yinicial, 150, 150);
              xinicial=150;
              yinicial=150;
              camino3 [5][1]++;
              camino3 [1][5]++;
              ganar3=true;
            }
          }
        }
      }
      if (xinicial==posX3[2] & yinicial==posY3[2]) {

        if (mouseX<275 & mouseX>225 & mouseY<475 & mouseY>425) {
          if (conexiones3 [5][2]==1 ) {
            if (camino3  [5][2]==0 & camino3  [2][5]==0) {
              line(xinicial, yinicial, 250, 450);
              xinicial=250;
              yinicial=450;
              camino3[2][5]++;
              camino3[5][2]++;
              ganar3=true;
            }
          }
        }

        if (mouseX<275 & mouseX>225 & mouseY<75 & mouseY>25) {
          if (conexiones3 [2][0]==1) {
            if (camino3  [2][0]==0 & camino3  [0][2]==0) {
              line(xinicial, yinicial, 250, 50);
              xinicial=250;
              yinicial=50;
              camino3 [2][0]++;
              camino3 [0][2]++;
              ganar3=true;
            }
          }
        }
        if (mouseX<175 & mouseX>125 & mouseY<175 & mouseY>125) {
          if (conexiones3 [2][1]==1) {
            if (camino3  [2][1]==0 & camino3  [1][2]==0) {
              line(xinicial, yinicial, 150, 150);
              xinicial=150;
              yinicial=150;
              camino3 [2][1]++;
              camino3 [1][2]++;
              ganar3=true;
            }
          }
        }
        if (mouseX<395 & mouseX>345 & mouseY<325 & mouseY>175) {
          if (conexiones3 [2][4]==1 ) {
            if (camino3  [2][4]==0 & camino3  [4][2]==0) {
              line(xinicial, yinicial, 370, 300);
              xinicial=370;
              yinicial=300;
              camino3[2][4]++;
              camino3[4][2]++;
              ganar3=true;
            }
          }
        }
      }
    }
  }
}


void mouseClicked() {
  if (menu) {
    if (mouseX<120 & mouseX>20 & mouseY<200 & mouseY>170) {
      nivel1=true;
      menu=false;
      flag=true;
    }
    if (mouseX<120 & mouseX>20 & mouseY<300 & mouseY>250) {
      nivel3=true;
      menu=false;
      flag=true;
    }
    if (mouseX<120 & mouseX>20 & mouseY<250 & mouseY>200) {
      nivel2=true;
      menu=false;
      flag=true;
    }
  }
  if (nivel1) {
    if (mouseX<120 & mouseX>20 & mouseY<600 & mouseY>500) {
      nivel1=true;
      jd=true;
      flag=true;
      reiniciar_matriz(camino);
    }
  }
  if (nivel2) {
    if (mouseX<120 & mouseX>20 & mouseY<600 & mouseY>500) {
      nivel2=true;
      jds=true;
      flag=true;
      reiniciar_matriz(camino2);
    }
  }
  if (nivel3) {
    if (mouseX<120 & mouseX>20 & mouseY<600 & mouseY>500) {
      nivel3=true;
      jdsa=true;
      flag=true;
      reiniciar_matriz(camino3);
    }
  }
}