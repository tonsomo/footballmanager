/************************************************************************/
/*																		*/
/*		Name:		MENU.C												*/
/*		Project:	Football Manager Remake								*/
/*		Purpose:	Main Menu part										*/
/*		Author:		Paul Robson											*/
/*		Created:	12th December 2001									*/
/*		Updated:	17th December 2001									*/
/*																		*/
/************************************************************************/

#include "fm.h"                                   /* Standard header */

static void _MENURefresh(GAME *g,int n,int Highlight);
static void _MENUSellList(GAME *g);
static void _MENUScore(GAME *g);
static void _MENUObtainLoan(GAME *g);
static void _MENURepayLoan(GAME *g);

/************************************************************************/
/*																		*/
/*								Main menu								*/
/*																		*/
/************************************************************************/

int MENUMain(GAME *g)
{
    int i;
    #ifdef GP2X
    int choice=0;
    bool finish=false;    
    #endif
    
    do                                            /* Keep going till save or quit */
    {
        #ifdef GP2X
        {
             int lasttime=SDL_GetTicks();
             while(SDL_GetTicks()-lasttime<500) {}
        }
        #endif

        IOClear(COL_BLACK);
        IOText(-1,8,COL_YELLOW,COL_RED," Main Menu ");
        IOText(-1,158,COL_RED,COL_BLACK,"Football Manager by Paul Robson");
        IOText(-1,168,COL_RED,COL_BLACK,"Original version by Kevin Toms");
        IOText(-1,178,COL_RED,COL_BLACK,"GP2X version by Jonn Blanchard");
        for (i = 0;i < 256;i++)
        {
            IOPut(i,0,COL_YELLOW);IOPut(i,191,COL_YELLOW);
            if (i < 192)
                { IOPut(0,i,COL_YELLOW);IOPut(255,i,COL_YELLOW); }
        }
        #ifdef GP2X
        finish=false;
        while(!finish) {
        #endif
        for (i = 0;i < 10;i++) 
        #ifdef GP2X
            if(choice==i)
                _MENURefresh(g,i,1);
            else
        #endif
                _MENURefresh(g,i,0);
        #ifdef GP2X
               int butt=IOJoy();
               
               if(butt==VK_UP) choice--;
               if(butt==VK_DOWN) choice++;
               if(choice<0) choice=0;
               if(choice>9) choice=9;
               if(butt==VK_FX) {
                    i=choice;
                    finish=true;
               }
        }
        #else
        do
        {
            i = rand();                           /* Randomises */
            i = IOInkey()-'0';                    /* Get command */
        }
        #endif
        while (i < 0 || i > 9);
        switch(i)                                 /* Execute it */
        {
            case 0: INITFixtureList(g);break;
            case 1: INITDisplayDivision(g);break;
            case 2: _MENUSellList(g);break;
            case 3: _MENUScore(g);break;
            case 4: _MENUObtainLoan(g);break;
            case 5: _MENURepayLoan(g);break;
            case 6: MENUSkillLevel(g);break;
            case 7: break;
            case 8: g->Sound = 1-g->Sound;break;
        }
    } while (i != 7 && i != 9);
    return (i == 7);
}


/************************************************************************/
/*																		*/
/*				Refresh a menu item, optional highlight					*/
/*																		*/
/************************************************************************/

static void _MENURefresh(GAME *g,int n,int Highlight)
{
    char *Msg,_Temp[32];
    switch(n)
    {
        case 0:
            Msg = "View Fixture List";break;
        case 1:
            Msg = "Display Division";break;
        case 2:
            Msg = "Sell or List Players";break;
        case 3:
            Msg = "Print Score";break;
        case 4:
            Msg = "Obtain a Loan";break;
        case 5:
            Msg = "Pay off a Loan";break;
        case 6:
            Msg = "Change Skill Level";break;
        case 7:
            Msg = "Save and Quit Game";break;
        case 8:
            Msg = "Toggle Sound (now on)";
            if (g->Sound == 0)
                Msg = "Toggle Sound (now off)";
            break;
        case 9:
            Msg = "Continue Game";break;
        default:
            return;
    }
    sprintf(_Temp,"%d - %s",n,Msg);
    IOText(40,n*12+34,Highlight ? COL_WHITE:COL_GREEN,COL_BLACK,_Temp);
}


/************************************************************************/
/*																		*/
/*					Sell/List your players section						*/
/*																		*/
/************************************************************************/

static void _MENUSellList(GAME *g)
{
    int d,i,y,Team;
    long Bid;
    char _Msg[33];
    #ifdef GP2X
    int choice=0;
    bool finish=false;

    #endif
    int playcount=0;
    PLAYER *p;
    do
    {
        IOClear(COL_BLACK);
        IOText(-1,4,COL_RED,COL_YELLOW," Sell or List Players ");
        {
             int lasttime=SDL_GetTicks();
             while(SDL_GetTicks()-lasttime<500) {}
        }
        #ifdef GP2X
        finish=false;
        while(!finish) {
        #endif
        y = 24;MENUPlayer(g,-1,&y);
        playcount=0;
        for (i = 0; i < g->PlayerCount;i++)
            if (g->Player[i].InOurTeam) {
                #ifdef GP2X
                MENUPlayer(g,i,&y,choice==playcount?1:0);
                #else
                MENUPlayer(g,i,&y);
                #endif
                playcount++;
            }
        #ifdef GP2X
            IOText(0,170,COL_CYAN,COL_BLACK,"X to Select A to Cancel");
            int butt=IOJoy();
            if(butt==VK_UP) choice--;
            if(butt==VK_DOWN) choice++;
            if(choice<0) choice=0;
            if(choice>playcount-1) choice=playcount-1;
            if(butt==VK_FA) {
                i=-1;
                finish=true;
            }
            if(butt==VK_FX) {
                playcount=0;
                for (i = 0; i < g->PlayerCount;i++)
                    if (g->Player[i].InOurTeam) {
                        if(playcount==choice) {
                             break;
                        }
                        playcount++;
                    }
                finish=true;
            }
        }
        #else
        IOText(0,170,COL_CYAN,COL_BLACK,"Nmber of player to sell ?");
        i = (int)MENUGetInt(240,170,2)-1;
        #endif
        
        if (i >= 0 && i < g->PlayerCount)
            if (g->Player[i].InOurTeam)
        {
            IOClear(COL_BLACK);
            p = &(g->Player[i]);
            if (p->Status == INJURED)
            {
                IOText(-1,16,COL_MAGENTA,COL_BLACK,"He is injured-nobody wants him");
                INITPressEnter();
            }
            else
            {
                Bid = ((long)(rand()%5+8))*(p->Value)/10;
                d = rand()%(g->DivCount);
                do
                Team = rand()%(g->Division[d].NoTeams);
                while (Team == g->Division[d].Team);
                sprintf(_Msg,"%s have bid %c%ld for",
                    g->Division[d].Teams[Team].Name,96,Bid);
                IOText(-1,24,COL_YELLOW,COL_BLACK,_Msg);
                IOText(-1,36,COL_YELLOW,COL_BLACK,g->Player[i].Name);
                sprintf(_Msg,"He is worth %c%ld",96,p->Value);
                IOText(-1,64,COL_CYAN,COL_BLACK,_Msg);
                IOText(-1,80,COL_MAGENTA,COL_BLACK,"Do you accept ?");
                if (MENUYesNo())
                {
                    g->Player[i].InOurTeam = 0;
                    g->Cash += Bid;
                    sprintf(_Msg,"Player %s has been sold",g->Player[i].Name);
                    IOText(-1,112,COL_YELLOW,COL_BLACK,_Msg);
                    INITPressEnter();
                }
                else
                {
                    if (rand()%3 == 0)
                        g->Player[i].Status = INJURED;
                }
            }
        }
    } while (i >= 0);
}


/************************************************************************/
/*																		*/
/*							Draw player entry, or header				*/
/*																		*/
/************************************************************************/

#ifdef GP2X
void MENUPlayer(GAME *g,int n,int *y,int hl)
{
    PLAYER *p;
    int Col,Ch;
    char _Temp[42];
    if (n == -1)
    {
        IOText(0,*y,COL_BLACK,COL_YELLOW,"  Name     No Skl  Eng  Value   ");
        *y += 8;return;
    }
    if (n == -2)
    {
        sprintf(_Temp,"Available %d Picked %d Injured %d",
            g->Available,g->Picked,g->Injured);
        IOText(0,*y,COL_GREEN,COL_BLACK,_Temp);
        *y += 8;return;
    }

    p = &(g->Player[n]);
    Col = COL_WHITE;Ch = 'D';
    if (p->Pos == MIDFIELD) Col = COL_BLUE,Ch = 'M';
    if (p->Pos == ATTACK) Col = COL_RED,Ch = 'A';
    IOChar(0,*y,COL_BLACK,Col,Ch);
    IOText(16,*y,hl==1?COL_BLACK:Col,hl==0?COL_BLACK:Col,p->Name);
    sprintf(_Temp,"%-4d%-5d%-4d%c%-5ld",n+1,p->Skill,p->Energy,96,p->Value);
    IOText(88,*y,Col,COL_BLACK,_Temp);
    if (p->InOurTeam)
    {
        switch(p->Status)
        {
            case AVAILABLE: IOChar(248,*y,COL_BLACK,COL_YELLOW,' ');break;
            case PICKED:    IOChar(248,*y,COL_BLACK,COL_MAGENTA,'p');break;
            case INJURED:   IOChar(248,*y,COL_BLACK,COL_GREEN,'i');break;
        }
    }
    *y += 8;
}
#endif
void MENUPlayer(GAME *g,int n,int *y)
{
    PLAYER *p;
    int Col,Ch;
    char _Temp[42];
    if (n == -1)
    {
        IOText(0,*y,COL_BLACK,COL_YELLOW,"  Name     No Skl  Eng  Value   ");
        *y += 8;return;
    }
    if (n == -2)
    {
        sprintf(_Temp,"Available %d Picked %d Injured %d",
            g->Available,g->Picked,g->Injured);
        IOText(0,*y,COL_GREEN,COL_BLACK,_Temp);
        *y += 8;return;
    }

    p = &(g->Player[n]);
    Col = COL_WHITE;Ch = 'D';
    if (p->Pos == MIDFIELD) Col = COL_BLUE,Ch = 'M';
    if (p->Pos == ATTACK) Col = COL_RED,Ch = 'A';
    IOChar(0,*y,COL_BLACK,Col,Ch);
    IOText(16,*y,Col,COL_BLACK,p->Name);
    sprintf(_Temp,"%-4d%-5d%-4d%c%-5ld",n+1,p->Skill,p->Energy,96,p->Value);
    IOText(88,*y,Col,COL_BLACK,_Temp);
    if (p->InOurTeam)
    {
        switch(p->Status)
        {
            case AVAILABLE: IOChar(248,*y,COL_BLACK,COL_YELLOW,' ');break;
            case PICKED:    IOChar(248,*y,COL_BLACK,COL_MAGENTA,'p');break;
            case INJURED:   IOChar(248,*y,COL_BLACK,COL_GREEN,'i');break;
        }
    }
    *y += 8;
}


/************************************************************************/
/*																		*/
/*							 Input an integer							*/
/*																		*/
/************************************************************************/

long MENUGetInt(int x,int y,int Size)
{
    int c,s;
    #ifdef GP2X
    bool finish=false;
    char num[Size];
    int choice=Size-1;
    #endif
    long i,n = 0;
    char _Temp[16];
    
    #ifndef GP2X
    do
    {
        sprintf(_Temp,"%ld",n);s = strlen(_Temp);
        if (n == 0) strcpy(_Temp,"");
        strcat(_Temp,"......");_Temp[Size] = '\0';
        IOText(x,y,COL_YELLOW,COL_BLACK,_Temp);
        do c = IOInkey(); while (c == 0);
        if (isdigit(c))
        {
            i = n * 10L + (long)(c - '0');
            if (s < Size) n = i;
        }
        if (c == 8) n = n / 10;
    } while (c != 13);
    #else
         int lasttime=SDL_GetTicks();
         {
               while(SDL_GetTicks()-lasttime<500) {}
         }
    
        for(i=0;i<Size;i++) num[i]='0';

        lasttime=0;
        while(!finish) {
             for(i=0;i<Size;i++)
                 if(choice==i)
                      IOChar(x+(i*8),y,COL_BLACK,COL_YELLOW,num[i]);
                 else
                      IOChar(x+(i*8),y,COL_YELLOW,COL_BLACK,num[i]);
                      
             if(SDL_GetTicks()-lasttime>50) {
                  int butt=IOJoy();
                  if(butt==VK_LEFT) choice--;
                  if(butt==VK_RIGHT) choice++;
                  if(choice<0) choice=0;
                  if(choice>=Size) choice=Size-1;
                  if(butt==VK_UP) num[choice]++;
                  if(butt==VK_DOWN) num[choice]--;
                  if(num[choice]<'0') num[choice]='9';
                  if(num[choice]>'9') num[choice]='0';
                  if(butt==VK_FX) {
                       n=atol(num);
                       finish=true;
                  }
                  if(butt==VK_FA) {
                        n=0;
                        finish=true;
                  }
                  lasttime=SDL_GetTicks();
             }
        }
    #endif
    return n;
}


/************************************************************************/
/*																		*/
/*							Input a Yes/No value						*/
/*																		*/
/************************************************************************/

int MENUYesNo(void)
{
    int c;
    #ifndef GP2X
    do
    {
        c = IOInkey();
        c = toupper(c);
    }
    while (c != 'Y' && c != 'N');
    #else
    int choice=0;
    int lastime=0;
    bool finish=false;

        {
              int lasttime=SDL_GetTicks();
              while(SDL_GetTicks()-lasttime<500) {}
        }
    
    while(!finish) {
        if(choice==0) {
              IOText(-1,120,COL_BLACK,COL_WHITE,"Yes");
              IOText(-1,130,COL_WHITE,COL_BLACK,"No");
        } else {
              IOText(-1,120,COL_WHITE,COL_BLACK,"Yes");
              IOText(-1,130,COL_BLACK,COL_WHITE,"No");
        }

        int butt=IOJoy();
        //if(SDL_GetTicks()-lastime>25) {
              if(butt==VK_UP) choice=0;
              if(butt==VK_DOWN) choice=1;
              if(butt==VK_FX) {
                    if(choice==0)
                          c='Y';
                    else
                          c='N';
                    finish=true;
              }
        //}
    }
    #endif
    return c == 'Y';
}


/************************************************************************/
/*																		*/
/*							Display your score							*/
/*																		*/
/************************************************************************/

static void _MENUScore(GAME *g)
{
    char _Msg[32];
    long s1;
    IOClear(COL_BLACK);

    if (g->Seasons != 0)
    {
        s1 = g->Score*2/g->Seasons;
        if (s1 > 100) s1 = 100;
        sprintf(_Msg,"Managerial Rating (Max 100) = %ld",s1);
        IOText(-1,32,COL_CYAN,COL_BLACK,_Msg);
        sprintf(_Msg,"Number of Seasons = %ld",g->Seasons);
        IOText(-1,48,COL_YELLOW,COL_BLACK,_Msg);
    }
    else
    {
        IOText(-1,32,COL_YELLOW,COL_BLACK,"You have not completed a season");
    }
    sprintf(_Msg,"Skill Level = %d",g->Skill);
    IOText(-1,64,COL_YELLOW,COL_BLACK,_Msg);
    sprintf(_Msg,"Morale = %d",g->Morale);
    IOText(-1,80,COL_YELLOW,COL_BLACK,_Msg);
    MENUFinances(g,96);
    INITPressEnter();
}


/************************************************************************/
/*																		*/
/*						Display Financial Information					*/
/*																		*/
/************************************************************************/

void MENUFinances(GAME *g,int y)
{
    char _Msg[32];
    sprintf(_Msg,"You have %c%ld cash.",96,g->Cash);
    IOText(-1,y,COL_GREEN,COL_BLACK,_Msg);
    sprintf(_Msg,"You owe %c%ld in loans.",96,g->Loans);
    IOText(-1,y+16,COL_GREEN,COL_BLACK,_Msg);
}


/************************************************************************/
/*																		*/
/*								Obtain a loan							*/
/*																		*/
/************************************************************************/

static void _MENUObtainLoan(GAME *g)
{
    int y = 40;
    long n;
    IOClear(COL_BLACK);
    IOText(-1,8,COL_YELLOW,COL_RED," Obtain a loan ");
    MENUFinances(g,y);
    IOText(-1,96,COL_GREEN,COL_BLACK,"How much do you want to borrow ?");
    n = MENUGetInt(112,112,6);
    if (n <= 0) return;
    if (n + g->Loans > 250000L*g->FinancialScaler)
    {
        IOText(-1,144,COL_CYAN,COL_BLACK,"Exceeds your credit limit");
        INITPressEnter();
        return;
    }
    g->Cash += n;
    g->Loans += n;
    IOClear(COL_BLACK);
    y = 24;MENUFinances(g,y);INITPressEnter();
}


/************************************************************************/
/*																		*/
/*								Repay a loan							*/
/*																		*/
/************************************************************************/

static void _MENURepayLoan(GAME *g)
{
    int y = 40;
    long n;
    IOClear(COL_BLACK);
    IOText(-1,8,COL_YELLOW,COL_RED," Repay a loan ");
    MENUFinances(g,y);
    IOText(-1,96,COL_GREEN,COL_BLACK,"How much do you want to repay ?");
    n = MENUGetInt(112,112,6);
    if (n <= 0) return;
    if (n > g->Loans)
    {
        IOText(-1,144,COL_CYAN,COL_BLACK,"You do not owe that much money");
        INITPressEnter();
        return;
    }
    if (n > g->Cash)
    {
        IOText(-1,144,COL_CYAN,COL_BLACK,"You do not have that much money");
        INITPressEnter();
        return;
    }
    g->Cash -= n;
    g->Loans -= n;
    IOClear(COL_BLACK);
    y = 24;MENUFinances(g,y);INITPressEnter();
}


/************************************************************************/
/*																		*/
/*							Select Skill Level							*/
/*																		*/
/************************************************************************/

static char *Skills[7] =
{ "Beginner","Novice","Average","Good","Expert","Super Expert","Genius" };

void MENUSkillLevel(GAME *g)
{
    int y,i;
    #ifdef GP2X
    int choice=0;
    bool finish=false;
    {
         int lasttime=SDL_GetTicks();
         while(SDL_GetTicks()-lasttime<500) {}
    }
    #endif
    g->Skill = -1;
    IOClear(COL_BLACK);
    IOText(-1,16,COL_YELLOW,COL_RED," Please select a skill level ");

    #ifdef GP2X
    while(!finish) {
    #endif
    for (i = 0;i < 7;i++)
    {
        y = 48 + i * 14;
        IOChar(80,y,COL_YELLOW,COL_BLACK,i+49);
        #ifdef GP2X
        if(choice==i)
             IOText(96,y,COL_BLACK,COL_CYAN,Skills[i]);
        else
        #endif
             IOText(96,y,COL_CYAN,COL_BLACK,Skills[i]);        
    }
    #ifdef GP2X
           int butt=IOJoy();
           if(butt==VK_UP) choice--;
           if(butt==VK_DOWN) choice++;
           if(choice<0) choice=0;
           if(choice>6) choice=6;
           if(butt==VK_FX) {
               g->Skill=choice+1;
               finish=true;
           }
    }
    #endif
    while (g->Skill < 0)
    {
        while (i = IOInkey(),i == 0);
        if (i >= '1' && i <= '7') g->Skill = i-'0';
    }
}
