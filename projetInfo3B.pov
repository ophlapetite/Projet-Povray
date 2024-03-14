#include "colors.inc"  
#include "textures.inc"    
#include"shapes3.inc"
//lumières et background
camera {
	angle 35
   location <35,10,35>
   look_at<8,2,0>  
	//look_at<0,2,0>  
   sky<0,8,0>   
//rotate <0,-360*(clock+10),0>   
   rotate<0,-50,0>
 	         
   
}
light_source{ <0,500,1000> color White //rotate <0,-360*(clock+0.10),0>
 	}   


    //sol
plane {
    y
    0
    texture{ pigment{color ForestGreen}
               normal {bumps 0.5 scale 0.05}
               //finish {diffuse 0.9 phong 1.0}
             } 
  }        
    //ciel
plane{<0,1,0>,1 hollow
       texture{
        pigment{ bozo turbulence 0.92
          color_map {
           [0.00 rgb <0.2, 0.3, 1>*0.5]
           [0.50 rgb <0.2, 0.3, 1>*0.8]
           [0.70 rgb <1,1,1>]
           [0.85 rgb <0.25,0.25,0.25>]
           [1.0 rgb <0.5,0.5,0.5>]}
          scale<1,1,1.5>*2.5
          translate<1.0,0,-1>
          }
        finish {ambient 1 diffuse 0}
        }
        scale 10000
     }     
     
          
//triedre          
/*                                    
cylinder{ <0, 0, 0>, <3, 0, 0>, 0.1

pigment {color Red}

}

cylinder{ <0, 0, 0>, <0, 3, 0>, 0.1

pigment {color Green}

}

cylinder{ <0, 0, 0>, <0, 0, 3>, 0.1

pigment {color Blue}

}   */   


      
        
     
     // tracteur
#declare Tracteur =  
union {  
difference{
union {   
     // barre qui relie les roues arrières
     cylinder {<0,0,0>, <0,0,6> 0.1
            pigment{Orange}    
            translate<6,2.45,-5.7>
   
            } 
   
   
     // roues arrières
      cylinder {<0,0,0>, <0,0,1> 1.5
            pigment{Blue}    
            
              translate<6,2.45,0.1>
            } 
            
              
              
              cylinder {<0,0,0>, <0,0,1> 1.5
            pigment{Blue}    
            
              translate<6,2.45,-6.5>
            }    
            
           // cylindre intérieur roue
             
             cylinder {<0,0,0>, <0,0,1> 1.5
            pigment{Orange}    
               scale 0.25
              translate<6,2.45,1>
            }         
            
            cylinder {<0,0,0>, <0,0,1> 1.5
            pigment{Orange}    
               scale 0.25
              translate<6,2.45,-6.7>
            }      
            
            
    // garde boue roues arrières   
    
    
    difference{
		 
		
           cylinder {<0,0,0>, <0,0,1.2> 1.5
            pigment{Red}    
            
              translate<6,2.85,-0.1>
            }  
        
            
               
           cylinder {<0,0,0>, <0,0,4> 1.5
            pigment{Black}    
            
              translate<6,2.75,0.1>
           } 
            
            
            
               }  
                                                 
              
              



            difference{
            
             cylinder {<0,0,0>, <0,0,1.2> 1.51
            pigment{Red}    
            
              translate<6,2.85,-6.4>
            }                
              cylinder {<0,0,0>, <0,0,4> 1.5
            pigment{Black}    
            
              translate<6,2.75,-10>
            }  
            }
   		                                   
       
       // base tracteur  
       // box{<0,0,0>, <5,0.8,-5>     
       superellipsoid{<0.3,0.3>
		pigment{Orange}   
		scale<3,0.3,-2>
		translate<7.5,2.4,-3>
		
		} 
		
		  //box{<0,0,0>, <3,0.9,-5> 
		  superellipsoid{<0.3,0.3>
		pigment{Orange} 
		scale<1.3,0.3,-2>
		translate<6.5,3.2,-3>
		
		}
		    
		    
		 // siege
		  difference{
		   superellipsoid{<0.3,0.3>
		  //box{<0,0,0>, <1.7,1.7,-1.7>
		pigment{Blue}
		translate<6.7,4.25,-3.1>
		
		}   
		    
		     box{<0,0,0>, <1.7,1.7,-2> scale 1.2
		pigment{Blue}
		translate<6.2,4,-1.9>
		
		}                           
		}                                          
    
       // déco sur les côtés
  
		cylinder {<0,0,0>, <3.5,0,0> 0.1
            pigment{Blue}    
            translate<6.5,2.7,-1.4>
            }
         
         
         
         cylinder {<0,0,0>, <3.5,0,0> 0.1
            pigment{Blue}    
            translate<6.5,2.7,-4.8>
            }
                                               
		
  }
  union {   
  
  
  
torus{ 1,0.5  scale <0.45,0.45,0.45>     scale 1.6
       texture{ pigment{ Orange}
                
              }
       rotate<90,0,0> translate<6,2.45,1>
     }     
     
     
     torus{ 1,0.5 scale <0.45,0.45,0.45>     scale 1.6
       texture{ pigment{ Orange}
                
              }
       rotate<90,0,0> translate<6,2.45,-6.5>}                              
 }        
  } 
   
   
   
  // Capot
difference{
union{
lathe{

bezier_spline
4,
<0.0,3.8> <1.6,4><1.6,3.8><1.6,2.7>


pigment {Orange}

}


lathe{

bezier_spline
4,
<1.6,2.7><1.6,2> <1.6,1.2> <1.5,0>


pigment {Orange}

}
 



rotate<0,0,90>
translate<0,2.1,0.2>
rotate<0,180,0>
scale <1,1.1,1.7>  


}





union{ 
// trou côtés du capot
union{
lathe{
bezier_spline
4,
<0.0,4.0> <1.3,4.0><1.1,3.1><1.1,2.6>


pigment {Orange}

}


lathe{

bezier_spline
4,
<1.1,2.6><1.1,2.0> <1.3,1.3> <0,1.4>


pigment {Orange}

}
scale 0.5
rotate<0,0,90>
translate<0,2.3,-2>
rotate<0,180,0>
}




union {

lathe{

bezier_spline
4,
<0.0,4.0> <1.3,4.0><1.1,3.1><1.1,2.6>


pigment {Orange}

}


lathe{

bezier_spline
4,
<1.1,2.6><1.1,2.0> <1.3,1.3> <0,1.4>


pigment {Orange}

}
scale 0.5
rotate<0,0,90>
translate<0,2.3,2.7>
rotate<0,180,0>
}

// bouche tracteur

difference {
cylinder { <3.6,2.4,-0.3> <3.9,2.4,-0.3>  0.6
pigment {Red}}	 


cylinder { <3.6,2.8,-0.3> <4.1,2.8,-0.3>  0.7
pigment {Red}}
}	       



pigment {Orange}
}
translate <9.9,1,-2.5>
}


// Roues avant
difference{
union{
 // barre qui relie les roues
     cylinder {<0,0,0>, <0,0,6> 0.1
            pigment{Orange}    
            translate<2.6,2,-5.7>
   
            } 
            
   // roues charette   
              
              cylinder {<0,0,0>, <0,0,1> 1
            pigment{Blue}    
            
              translate<2.6,2,0.1>
            } 
            
              
              
              cylinder {<0,0,0>, <0,0,1> 1
            pigment{Blue}    
            
              translate<2.6,2,-6.5>
            }    
            
            
            // cylindre intÃ©rieur roue
             
             cylinder {<0,0,0>, <0,0,1> 1
            pigment{Orange}    
               scale 0.25
              translate<2.6,2,1>
            }         
            
            cylinder {<0,0,0>, <0,0,1> 1
            pigment{Orange}    
               scale 0.25
              translate<2.6,2,-6.7>
            }                                                           
                                                                                             
               }

union {
// creux roues
   torus{ 1.0,0.5 scale <0.45,0.45,0.45>
       texture{ pigment{ Orange}
                
              }
       rotate<90,0,0> translate<2.6,2,1>
     }     
     
     
     torus{ 1,0.5 scale <0.45,0.45,0.45>
       texture{ pigment{ Orange}
                
              }
       rotate<90,0,0> translate<2.6,2,-6.5>}                              
 }
translate <10,0,0>   
    
}                                                                                
                         



//barres côtés capot 

cylinder {<0,0,0>, <1.3,0,0> 0.1
            pigment{Blue}    
           translate<10.6,3,-0.35>
   
            } 
		
cylinder {<0,0,0>, <1.3,0,0> 0.1
            pigment{Blue}    
           translate<10.6,3.3,-0.35>
   
            } 
		
		
cylinder {<0,0,0>, <1.3,0,0> 0.1
            pigment{Blue}    
           translate<10.6,3.6,-0.35>
   
            } 
		
		        
cylinder {<0,0,0>, <1.2,0,0> 0.1
            pigment{Blue}    
           translate<10.6,3,-5.25>
   
            } 
		
cylinder {<0,0,0>, <1.3,0,0> 0.1
            pigment{Blue}    
           translate<10.6,3.3,-5.25>
   
            } 
		
		
cylinder {<0,0,0>, <1.3,0,0> 0.1
            pigment{Blue}    
           translate<10.6,3.6,-5.25>
   
            } 
		
// yeux tracteur 
sphere{ <13.5,3.8,-2> 0.4

        pigment{White}}       

sphere{ <13.5,3.8,-3.5> 0.4

        pigment{White}} 
        
        
intersection {   
        
sphere{ <13.75,3.8,-2> 0.2}       
sphere{ <13.5,3.8,-2> 0.4 }
pigment {Black} } 

intersection {   
        
sphere{ <13.75,3.8,-3.5> 0.2}       
sphere{ <13.5,3.8,-3.5> 0.4}
pigment {Black} }   




// machin rouge devant tracteur


//box{<0,0,0>, <1,0.65,-5>   
superellipsoid{ <0.3,0.3>
		pigment{Red}   
		scale<0.8,0.5,-2.7>
		translate<13.05,2.1,-2.75>
		
		}   		
box{<0,0,0>, <0.2,0.65,-0.6>
		pigment{Red}   
		
		translate<13.6,2.2,-1.3>
		
		} 
		
box{<0,0,0>, <0.2,0.65,-0.6>
		pigment{Red}   
		
		translate<13.6,2.2,-3.8>
		
		}   		      
		
// boucher trou surface de revolution du capot 		
sphere{ <8.45,3.0,-1.65> 1.5 scale <0.2,1.1,1.7>
translate <8.3,0,0>  
pigment {Orange }}


		 
		
// boite sous le volant  		
box{<0,0,0>, <2,2,3>
		pigment{Red}  
		rotate <0,0,20> 
		scale 0.9
		translate<9,2.2,-4.5>
		
		} 	
		
box{<0,0,0>, <2,2,2>
		pigment{Red}  
		rotate <0,0,20> 
		scale 0.5
		translate<9.3,3.5,-3.5>
		
		} 		 
		
		
// volant 

cylinder {<0,0,0>, <0,0,2> 0.1
            pigment{Orange}   
            rotate <90,0,20> 
            translate<9.1,5.2,-3>
            }         
            
torus{ 0.9,0.3  scale <0.45,0.45,0.45>     scale 1
    rotate <0,0,20>    
     translate<9.1,5.2,-3>
       texture{ pigment{ Orange}
                }     }   
 
            
  // pot d'échappement    
            
  cylinder {<0,0,0>, <0,0,0.5> 0.2
            pigment{Blue}    
            
              translate<10.2,3.2,-5.7>
            }   
            
union {
 difference {              
 torus{ 1,0.25 scale <0.45,0.45,0.45>
       texture{ pigment{ Red} }
       rotate <90,90,0>
       translate <0,3,1>}
                             
                             
  box{<0,0,0>, <1,1,2>  
        pigment{Black}  
        rotate <60,0,0>
		
		translate<-0.5,3.4,0.42>   
		
	}	translate <10.2,0.53,-6.4>}    
	
	
	cylinder {<0,0,0>, <0,0,2> 0.1
            pigment{Red}  
            rotate <90,0,0>  
            translate<10.21,5.6,-5.9>  
            
            }}            
       
       
  
    
  
 //pare brise     
    difference{          
  superellipsoid{<0.6,0.3>	  
  scale <0.3,1.65,-2.3>
  translate <10.2,5,-2.85>        
  pigment {Red}
  
         
  }	
  
   superellipsoid{<0.6,0.3>	  
  scale <0.9,0.8,-2>
  translate <9.8,5.8,-2.85>        
  pigment {Red}
  
         
  }	  
  
  }  
  
  
  superellipsoid{<0.6,0.3>	  
  scale <0.3,0.8,-2>
  translate <10.2,5.8,-2.85>        
  texture {Glass}
  
         
  }	                        
  
  
  }
object {Tracteur 
//rotate<0,90*clock,0>
translate <-3,-1,0>}











               
 // charette rouge   
#declare Charette =
difference{
 union {    
 
 // base charette
 //box{<0,0,0>, <5,0.8,-5> 
 superellipsoid{ 
        <0.4,0.2>
		pigment{Red} 
		scale <2.8,0.55,-2.5>
		translate<2.35,2.4,-2.8>
		
		} 
		

 
 // debut barrières charette 
 cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<0.4,2,-0.6>
            
            }       
            
 cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<1.5,2,-0.6>
            
            } 
            
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<2.6,2,-0.6>
            
            }                     
            
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<3.7,2,-0.6>
            
            }    
            
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<4.8,2,-0.6>
            
            }  
            
            
            
            
  
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<4.8,2,-2>
            
            }        
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<4.8,2,-3.4>
            
            }                            
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<4.8,2,-4.8>
            
            }
            
            
             
             
             
             
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<3.7,2,-4.8>
            
            }      
             
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<2.6,2,-4.8>
            
            }      
  cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<1.5,2,-4.8>
            
            }           
            
 cylinder {<0,0,0>, <0,2.5,0> 0.1
            pigment{Orange}    
            translate<0.4,2,-4.8>
                      }   
                      
                      
                      
                      
  cylinder {<0,0,0>, <5,0,0> 0.1
            pigment{Orange}    
            translate<0,3.5,-0.6>
            
            }
            
   cylinder {<0,0,0>, <5,0,0> 0.1
            pigment{Orange}    
            translate<0,4.2,-0.6>
            }
       
       
       
   cylinder {<0,0,0>, <5,0,0> 0.1
            pigment{Orange}    
            translate<0,3.5,-4.8>
            }                     
             
   cylinder {<0,0,0>, <5,0,0> 0.1
            pigment{Orange}    
            translate<0,4.2,-4.8>
            }   
            
            
            
            
    cylinder {<0,0,0>, <0,0,5> 0.1
            pigment{Orange}    
            translate<4.8,3.5,-5.2>
            }    
            
     cylinder {<0,0,0>, <0,0,5> 0.1
            pigment{Orange}    
            translate<4.8,4.2,-5.2>
   
            }        
            
   // fin barrières charette 
   
   
   // barre qui relie les roues
     cylinder {<0,0,0>, <0,0,6> 0.1
            pigment{Orange}    
            translate<2.6,2,-5.7>
   
            } 
            
   // roues charette   
              
              cylinder {<0,0,0>, <0,0,1> 1
            pigment{Blue}    
            
              translate<2.6,2,0.1>
            } 
            
              
              
              cylinder {<0,0,0>, <0,0,1> 1
            pigment{Blue}    
            
              translate<2.6,2,-6.5>
            }    
            
            
            // cylindre intérieur roue
             
             cylinder {<0,0,0>, <0,0,1> 1
            pigment{Orange}    
               scale 0.25
              translate<2.6,2,1>
            }         
            
            cylinder {<0,0,0>, <0,0,1> 1
            pigment{Orange}    
               scale 0.25
              translate<2.6,2,-6.7>
            }                                                           
                                                                                             
                                                                                                
                         
  }  
  
  //creux base charette    
  
  union {
  box{<0,0,0>, <5,0.8,-3.8>  
        pigment{Red}
		
		translate<-0.5,2.2,-0.8>   
		
		}   
		
// creux roues
   torus{ 1.0,0.5 scale <0.45,0.45,0.45>
       texture{ pigment{ Orange}
                
              }
       rotate<90,0,0> translate<2.6,2,1>
     }     
     
     
     torus{ 1,0.5 scale <0.45,0.45,0.45>
       texture{ pigment{ Orange}
                
              }
       rotate<90,0,0> translate<2.6,2,-6.5>}                              
 }        
 }
      
      
  object { Charette
            translate <-4.4,-1,0>
		//rotate<0,90*clock,0>
//translate <50*clock,0,2*clock>
} 	  
                                   
                                   
                                   
                                   
 // liaison charette tracteur                                   
  cylinder {<0,0,0>, <1.5,0,0> 0.1
            pigment{Red}    
            translate<0.5,1.5,-3.2>
	//rotate<0,90*clock,0>
//translate <50*clock,0,1*clock>
            
            }


//petits cochons  

 
     
#declare O1=<-1.5,-0.45,0>;
#declare O1a=<-1.5,1.5,0>;   

#declare A=<0.5, -0.5, 1>;
#declare B=<-0.5, 0,0>;  
#declare A2=<-3.3, -0.5,1>;
#declare B2=<-2.3, 0, 0>;   
#declare A3=<-1, -3, 0>; 
#declare B3=<-1, -1,0>;  
#declare A4=<-2, -3,0>;     
#declare B4=<-2, -1, 0>;

#declare r=0.4;

#declare cochonAnim= //Animation
difference{
	blob {
		threshold 0.5             
		//corps
		sphere {O1, 1.5, 3.8} 
		//tete
		sphere {O1a, 1.2, 2}
		//bras
		cylinder{A,B,r,2 translate <-0.2,0.15,-0.25> //rotate<90*cos(clock*2*pi),0,0>
} 
		cylinder{A2,B2,r,2 translate <0.2,0.15,-0.25> //rotate<90*cos(clock*2*pi),0,0>
}  
		//jambes
		cylinder{A3,B3,r,2}
		cylinder{A4,B4,r,2} 
		//groin
		cylinder{O1a,<-1.5,1.5,1>,0.3,2}    
		//trou de nez
		sphere{<-1.355,1.5,1.2>,0.1,-120 pigment {Black}}
		sphere{<-1.655,1.5,1.2>,0.1,-120 pigment {Black}}
		   
 
    
	//oreilles
		
		sphere { <0.4,3,-8.2>, 1.5, 1 scale <0.6,  1.8,  0.6>  scale 0.4 rotate <45,-10,45> }  
		
		sphere { <-9,0.4,-5>, 1.5, 1 scale <0.6,  1.7,  0.5> scale 0.4 rotate <45,20,-45> }  

    //pieds

		cylinder{<-2,-2.8,0>,<-1,-2.8,0>,0.6,2 pigment{Brown}}
	
	
	//yeux  	                             
		sphere{<-1.9,1.7,0.6>,0.2,125 pigment{White transmit -1.5}}
		sphere{<-1.1,1.7,0.6>,0.2,125 pigment{White transmit -1.5}}    
		
    //yeux(pupille)	                             
		sphere{<-1.95,1.7,0.7>,0.125,2 pigment{Black transmit -10}}
		sphere{<-1.05,1.7,0.7>,0.125, 2 pigment{Black transmit -10}}
		
		
		
    // mains
		
         sphere {<0.2, -0.5, 0.7>,0.4,1 pigment {Brown} //rotate<90*cos(clock*2*pi),0,0>
}
         sphere {<-3.1, -0.5,0.7>,0.4,1 pigment {Brown} //rotate<90*cos(clock*2*pi),0,0>
}  
         
         
     // queue de cochon   
        #declare Amplitude = 0.60 ;
        #declare Minimal_Length   = 0.80 ;
        #declare Middle_Length    = Amplitude + Minimal_Length ;
        
        
        //---------------------------------------------- time ----------------------
        #declare Time_test = 0.25; // 0.25/0.75 shows maximum/minimal extention!!!
        
        #declare Sp_Length = Middle_Length+Amplitude;
        //------------------------------------------------------ -------------------
        
         #local N_per_Rev = 500;   // Number of Elements per revolutions
         #local N_of_Rev  = 8.00;  // Total number of revolutions
         #local H_per_Ref = Sp_Length / N_of_Rev;// Height per revolution
         #local Nr = 0;                          // start loop
         #while (Nr< N_per_Rev*N_of_Rev)
           sphere{ <0,0,0>,0.025,1
                   translate<0.25, -Nr*H_per_Ref/N_per_Rev, 0>
                   rotate<0,  Nr * 360/N_per_Rev,0>
        
                   pigment{SpicyPink}
                   translate< -2.5,-1,2> scale 0.6 rotate<90,0,0>
                 }
         #local Nr = Nr + 1;    // next Nr
         #end // --------------------------------- end of loop

 



		translate <0,3,0>  
		}

	
	union{
		// trou entre les pieds
		cylinder{<-1.5,0,0>,<-1.5,-2,0>,4}  
		cylinder{<-1.3,0,0>,<-1.7,0,0>,1}   

		
		//bouche
		difference{
		torus{ 1.0,0.1 scale <1,1,1>
       	texture{ pigment{Black}
                
              }
       rotate<100,0,0> translate <3,3,0>
     	}
	
		box{<0,0,0>, <3,3,-3>
		pigment{Blue}
		translate <1.5,2.5,1>
		}
		translate<-8.1,11.7,2.7>
		scale <0.3,0.3,0.3>
		}
        
         // trou des sabots  pieds
         box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-1.8,0,0.5>  
		rotate<0,45,0>
		}

        box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-2.6,0,-0.3>  
		rotate<0,45,0>
		}
        
        // trou des sabots mains
            box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-1.5, 2.2, -3.35> 
		rotate<0,95,0>

		}

        
        
        box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-1.85, 2, 1.25> 
		rotate<0,95,0>

		}

                
        
		}//fin union	
pigment{color SpicyPink}	
		}//fin diff





#declare cochonFixe=
difference{
	blob {
		threshold 0.5             
		//corps
		sphere {O1, 1.5, 3.8} 
		//tete
		sphere {O1a, 1.2, 2}
		//bras
		cylinder{A,B,r,2 translate <-0.2,0.15,-0.25>} 
		cylinder{A2,B2,r,2 translate <0.2,0.15,-0.25>}  
		//jambes
		cylinder{A3,B3,r,2}
		cylinder{A4,B4,r,2} 
		//groin
		cylinder{O1a,<-1.5,1.5,1>,0.3,2}    
		//trou de nez
		sphere{<-1.355,1.5,1.2>,0.1,-120 pigment {Black}}
		sphere{<-1.655,1.5,1.2>,0.1,-120 pigment {Black}}
		   
 
    
	//oreilles
		
		sphere { <0.4,3,-8.2>, 1.5, 1 scale <0.6,  1.8,  0.6>  scale 0.4 rotate <45,-10,45> }  
		
		sphere { <-9,0.4,-5>, 1.5, 1 scale <0.6,  1.7,  0.5> scale 0.4 rotate <45,20,-45> }  

    //pieds

		cylinder{<-2,-2.8,0>,<-1,-2.8,0>,0.6,2 pigment{Brown}}
	
	
	//yeux  	                             
		sphere{<-1.9,1.7,0.6>,0.2,125 pigment{White transmit -1.5}}
		sphere{<-1.1,1.7,0.6>,0.2,125 pigment{White transmit -1.5}}    
		
    //yeux(pupille)	                             
		sphere{<-1.95,1.7,0.7>,0.125,2 pigment{Black transmit -10}}
		sphere{<-1.05,1.7,0.7>,0.125, 2 pigment{Black transmit -10}}
		
		
		
    // mains
		
         sphere {<0.2, -0.5, 0.7>,0.4,1 pigment {Brown}}
         sphere {<-3.1, -0.5,0.7>,0.4,1 pigment {Brown}}  
         
         
     // queue de cochon   
        #declare Amplitude = 0.60 ;
        #declare Minimal_Length   = 0.80 ;
        #declare Middle_Length    = Amplitude + Minimal_Length ;
        
        
        
        #declare Sp_Length = Middle_Length+Amplitude;
        //------------------------------------------------------ -------------------
        
         #local N_per_Rev = 500;   // Number of Elements per revolutions
         #local N_of_Rev  = 8.00;  // Total number of revolutions
         #local H_per_Ref = Sp_Length / N_of_Rev;// Height per revolution
         #local Nr = 0;                          // start loop
         #while (Nr< N_per_Rev*N_of_Rev)
           sphere{ <0,0,0>,0.025,1
                   translate<0.25, -Nr*H_per_Ref/N_per_Rev, 0>
                   rotate<0,  Nr * 360/N_per_Rev,0>
        
                   pigment{SpicyPink}
                   translate< -2.5,-1,2> scale 0.6 rotate<90,0,0>
                 }
         #local Nr = Nr + 1;    // next Nr
         #end // --------------------------------- end of loop

 



		translate <0,3,0>  
		}

	
	union{
		// trou entre les pieds
		cylinder{<-1.5,0,0>,<-1.5,-2,0>,4}  
		cylinder{<-1.3,0,0>,<-1.7,0,0>,1}   

		
		//bouche
		difference{
		torus{ 1.0,0.1 scale <1,1,1>
       	texture{ pigment{Black}
                
              }
       rotate<100,0,0> translate <3,3,0>
     	}
	
		box{<0,0,0>, <3,3,-3>
		pigment{Blue}
		translate <1.5,2.5,1>
		}
		translate<-8.1,11.7,2.7>
		scale <0.3,0.3,0.3>
		}
        
         // trou des sabots  pieds
         box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-1.8,0,0.5>  
		rotate<0,45,0>
		}

        box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-2.6,0,-0.3>  
		rotate<0,45,0>
		}
        
        // trou des sabots mains
            box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-1.5, 2.2, -3.35> 
		rotate<0,95,0>

		}

        
        
        box{<0,0,0>, <0.9,0.9,-0.9>
		pigment{Black}
		translate <-1.85, 2, 1.25> 
		rotate<0,95,0>

		}

                
        
		}//fin union	
pigment{color SpicyPink}	
		}//fin diff






object{ // papa Cochon charrette
cochonFixe
//cochonAnim
//translate<0,cos(clock*2*pi)+2,-2>  
translate<0,1,-2>
}

object{ //Petit cochon derriere
cochonFixe
scale 0.5
translate<7,0,-1>
rotate<0,180,0>
} 
  


object{ // Petit Cochon devant
cochonFixe
scale 0.5
translate<14,0,-1>
rotate<0,-45,0>
}                    
                   
                   
object{ // Cochon derriere charrette
cochonFixe 


translate<0,0,13>
rotate<0,180,0>
scale 0.5
//translate<0,cos(clock*2*pi)+1,-2> 
translate<0,0,-2>     

} 
// chapeau papa cochon 

union {                 

cylinder{ <-1.5,1.5,0> <-1.5,1.7,0> 1 }       
cylinder{ <-1.5,1.5,0> <-1.5,2.2,0> 0.6 }  
pigment {Black}
translate<0,4.5,-1.9>

//translate<0,cos(clock*2*pi)+1,0>  
}


object{ //Gros Cochon maman
cochonFixe
translate<15,0,-1>
rotate<0,-45,0>
scale 1.2
}                   
        

// fleur maman cochon  
union {
sphere{<0,4,2> 0.14
pigment {Yellow}   
translate<12.4,2,9.5> 
     
}     
sphere{<0,4,2> 0.18
pigment {Orchid}   

translate<12.4,2.2,9.35>  

 }   
 sphere{<0,4,2> 0.18
pigment {Orchid}   

translate<12.5,2.2,9.5>  

 }
      
 sphere{<0,4,2> 0.18
pigment {Orchid}   

translate<12.6,2,9.4>  

 }
                          
 sphere{<0,4,2> 0.18
pigment {Orchid}   

translate<12.5,1.8,9.4>  

 }        
 
  sphere{<0,4,2> 0.18
pigment {Orchid}   

translate<12.3,1.8,9.4>  

 }  
 
  sphere{<0,4,2> 0.18
pigment {Orchid}   

translate<12.3,2,9.35>  

 }
  }
     
     
     
     
     
         

  
                                                 
