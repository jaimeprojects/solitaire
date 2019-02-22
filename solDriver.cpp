#include <iostream>
#include <vector>
#include "deck.h"
#include "foundationPile.h"
#include "tableau.h"
#include "card.h"
#include "pile.h"

using namespace std;
//using std::vector;
//variables
int numGames = 0;
vector<foundationPile> foundation;
vector<tableau> table; //group of 7 tableaus
vector<card> playerDeck; //game cards

int deckIndex = 0;
int timesCycled;
int gamesWon = 0;
//bool gameWon = false;
double winPercentage;

class solDriver{
    
    public:
    //initialize a new game each time
    solDriver(){
        
    }
 void newGame(){
    cout << "new game started";
    deck gameCards;
    
    playerDeck = gameCards.generateDeck();
    playerDeck = gameCards.shuffle();
    
}
    
    //check times cycled.
    bool checkTimesCycled(){
    if(timesCycled==3){
        return true;
    }
    return false;
    }
    
    // check card
 void checkCardFromDeck(){
     if(deckIndex<-1){
         timesCycled++;
         deckIndex = 0;
     }
     else{
        deckIndex++;
     }
     //Check Foundation
     for(int i = 0;i<4;i++){
         if(foundation.at(i).canReceieve(playerDeck.at(deckIndex),foundation.at(i))){
             foundation.at(i).push(playerDeck.at(deckIndex));
             playerDeck.erase(playerDeck.begin()+deckIndex);
             deckIndex--;
         }
     }
    //CHECK TABLEAU
     for(int j = 0; j<7;j++){
         if(table.at(j).canRecieve(playerDeck.at(deckIndex))){
             table.at(j).push(playerDeck.at(deckIndex));
             playerDeck.erase(playerDeck.begin()+deckIndex);
             deckIndex--;
            }
        }
    }
    // check if current card from draw pile can go to foundation
 void scanDrawPileToFoundation(){
     for(int i = 0; i<4;i++){
        if(foundation.at(i).canReceieve(playerDeck.at(deckIndex),foundation.at(i)))
        {
            card singleCard = playerDeck.at(deckIndex);
            playerDeck.erase(playerDeck.begin()+deckIndex);
            foundation.at(i).push(singleCard);
        }
     }
 }
    // check if a tableau is open to recieve a card
 bool checkOpenTableau(){
     int size;
     int x=0;
     bool faceUp = true;
     bool moveCard = false;
     //LOOP THROUGH WHOLE TABLE
     for(int i = 0; i < 7; i++){
         vector<card> cards = table.at(i).getCards();
         size = cards.size();
         //FINDS # OF FACEUP IN COLUMN
         for(int j = 0;j<size;j++){
             if(cards.at(j).isFaceUp()){
                x++;
             }
             else
                break;
         }
         //FOR EACH FACEUP CARD
        for(int k = x; k >= 0; --k){
            //FOR EACH 'OTHER COLUMN'
            for(int q = 0;q<7;q++){
                //not equal column
                if(i!=q){
                    //
                    if(table.at(q).canRecieve(cards.at(size-k)))
                    {
                        //vector<Card> toAdd = vector<Card>(cards.begin()+size-k, cards.begin()+size-1);
                        moveStackOfCards(size-k,size-1,q,i);
                        flipTopCards();
                        k=-1;
                        q=7;
                        //yikes
                        moveCard = true;
                    }
                }
            }
        }
     }
     return moveCard;
 }
 
 // moving stacks of cards between tableaus
// from - location of target card | tableauIndexFrom location in its tableau
// to - destination of target card | tableauIndexTo destination of new tableau
 void moveStackOfCards(int from, int to, int tableauIndexTo, int tableauIndexFrom){
        //WHAT WE WANT TO MOVE
        vector<card> cardsFrom = table.at(tableauIndexFrom).getCards();
        //WHERE
        vector<card> cards = table.at(tableauIndexTo).getCards();
        for(int i = 0; i<to;i++){
            cards.push_back(cardsFrom.at(from+i));
        }
         cardsFrom.erase(cards.begin()+from,cards.begin()+to);


 }
 
 void flipTopCards(){
    for(int i = 0;i<7;i++){
        vector<card> cards = table.at(i).getCards();
        if(!cards.at(cards.size()-1).isFaceUp()){
            cards.at(cards.size()-1).flip();
         }
    }
}
//distribute cards for each of the games
void setupTable(){
  //create all tableau's
  cout << "setting up table\n";
  
  //flip cards for setup
  int makefaceup [] = {0, 7, 13, 18, 22, 25, 27};
  for (const int& i : makefaceup) { 
         playerDeck.at(i).flip();
        //temp.flip();
    }
  //make tableaus hete and add to table
  for( int i = 0; i < 7; ++i){
    for( int k = i; < 7; ++k){
      table.get(k).push(gameDeck.at(deckIndex));
	// access each table and add card at current index
	++deckIndex; //increment to move to next working card
    }
  }
  /*
  //Tableau 1
    int tab1 [] = {0};
    tableau slot1;
    for (const int& i : tab1) { 
        card temp = playerDeck.at(i);
        cout << "Tableau 1: Card" << i << " = " << temp.getCardValue() << "\n";
        slot1.push(temp);
    }
  //Tableau 2  
  int tab2 [] = {1, 7};
  tableau slot2;
    for (const int& i : tab2) { 
        card temp = playerDeck.at(i);
        cout << "Tableau 2: Card" << i << " = " << temp.getCardValue() << "\n";
        slot2.push(temp);
    }
  //Tableau 3  
  int tab3 [] = {2, 8, 13};
  tableau slot3;
  table.push_back(slot3);
    for (const int& i : tab3) { 
        card temp = playerDeck.at(i);
       cout << "Tableau 3: Card" << i << " = " << temp.getCardValue() << "\n";
        slot3.push(temp);
    }
  //Tableau 4  
  int tab4 [] = {3, 9, 14, 18};
  tableau slot4;
    for (const int& i : tab4) { 
        card temp = playerDeck.at(i);
       cout << "Tableau 4: Card" << i << " = " << temp.getCardValue() << "\n";
        slot4.push(temp);
    }
    
  //Tableau 5   
  int tab5 [] = {4, 10, 15, 19, 22};
  tableau slot5;
    for (const int& i : tab5) { 
        card temp = playerDeck.at(i);
        cout << "Tableau 5: Card" << i << " = " << temp.getCardValue() << "\n";
        slot5.push(temp);
    }
    
  //Tableau 6 
  int tab6 [] = {5, 11, 16, 20, 23, 25};
  tableau slot6;
    for (const int& i : tab6) { 
        card temp = playerDeck.at(i);
       cout << "Tableau 6: Card" << i << " = " << temp.getCardValue() << "\n";
        slot6.push(temp);
    }
    
  //Tableau 7  
  int tab7 [] = {6, 12, 17, 21, 24, 26, 27};
  tableau slo;
    for (const int& i : tab7) { 
        card temp = playerDeck.at(i);
        cout << "Tableau 7: Card" << i << " = " << temp.getCardValue() << "\n";
        slot7.push(temp);
   */
    //removes first 28 cards that were used for making tableaus
    for(int i = 0; i < 28; ++i)
    { 
        playerDeck.erase(playerDeck.begin()); 
    }
    
    cout << "table is set up\n";
}

//return if the game was completed before cycling 3 times thru deck
 bool checkWin(){
     int count = 0;
      for(int i = 0; i<4;i++){
          vector<card> cards = foundation.at(i).getCards();
          if(cards.at(cards.size()-1).getCardValue() == 13)
                count++;
      }
      if(count == 4){
        return true;
      }
      return false;
 }
 // check if cards from tableaus can go to foundation
 void scanTableauToFoundation(){
     int size;
     for(int i = 0; i<7;i++){
         vector<card> cards = table.at(i).getCards();

            
         size = cards.size()-1;
        for(int j = 0; j<4;j++){
            if(foundation.at(j).canReceieve(cards.at(size),foundation.at(j))){
                card singleCard = cards.at(size);
                cards.pop_back();
                foundation.at(j).push(singleCard);
                flipTopCards();
            }
        }
     }
 }
 
 
 
};

int main(int argc, char *argv[]){
    cout << "Solitaire initialized\n";
    cout << "beginning new game\n";
    solDriver game;
    game.newGame();
    game.setupTable();
    
    deckIndex = playerDeck.size()-1;
    cout << "deck index " << deckIndex << "\n";
    while(game.checkTimesCycled()){
        cout << "start whhile \n";
        if(game.checkWin())
        {
            gamesWon++;
            cout << "games won";
        }
        game.flipTopCards();
        game.scanTableauToFoundation();
        game.scanDrawPileToFoundation();
        game.checkOpenTableau();
        game.checkCardFromDeck();
        cout << "endof whhile \n";
    }
    cout << "games won" << gamesWon << "\n";
    return 0; 
}
